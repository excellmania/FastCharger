package org.apache.http.impl.auth;

import org.apache.commons.codec.binary.Base64;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.apache.http.Header;
import org.apache.http.HttpRequest;
import org.apache.http.auth.Credentials;
import org.apache.http.util.CharArrayBuffer;
import org.ietf.jgss.GSSContext;
import org.ietf.jgss.GSSManager;
import org.ietf.jgss.Oid;

public class NegotiateScheme extends AuthSchemeBase {
    private static final String KERBEROS_OID = "1.2.840.113554.1.2.2";
    private static final String SPNEGO_OID = "1.3.6.1.5.5.2";
    private GSSContext gssContext;
    private final Log log;
    private Oid negotiationOid;
    private final SpnegoTokenGenerator spengoGenerator;
    private State state;
    private final boolean stripPort;
    private byte[] token;

    enum State {
        UNINITIATED,
        CHALLENGE_RECEIVED,
        TOKEN_GENERATED,
        FAILED
    }

    public NegotiateScheme() {
        this(null, false);
    }

    public NegotiateScheme(SpnegoTokenGenerator spnegoTokenGenerator) {
        this(spnegoTokenGenerator, false);
    }

    public NegotiateScheme(SpnegoTokenGenerator spnegoTokenGenerator, boolean z) {
        this.log = LogFactory.getLog(getClass());
        this.gssContext = null;
        this.negotiationOid = null;
        this.state = State.UNINITIATED;
        this.spengoGenerator = spnegoTokenGenerator;
        this.stripPort = z;
    }

    @Deprecated
    public Header authenticate(Credentials credentials, HttpRequest httpRequest) {
        return authenticate(credentials, httpRequest, null);
    }

    /* JADX WARNING: Removed duplicated region for block: B:47:0x0138 A:{ExcHandler: IOException (r0_51 'e' java.io.IOException), Splitter:B:8:0x001a} */
    /* JADX WARNING: Missing block: B:47:0x0138, code skipped:
            r0 = move-exception;
     */
    /* JADX WARNING: Missing block: B:48:0x0139, code skipped:
            r8.state = org.apache.http.impl.auth.NegotiateScheme.State.FAILED;
     */
    /* JADX WARNING: Missing block: B:49:0x0146, code skipped:
            throw new org.apache.http.auth.AuthenticationException(r0.getMessage());
     */
    public org.apache.http.Header authenticate(org.apache.http.auth.Credentials r9, org.apache.http.HttpRequest r10, org.apache.http.protocol.HttpContext r11) {
        /*
        r8 = this;
        r2 = 1;
        r1 = 0;
        if (r10 != 0) goto L_0x000c;
    L_0x0004:
        r0 = new java.lang.IllegalArgumentException;
        r1 = "HTTP request may not be null";
        r0.<init>(r1);
        throw r0;
    L_0x000c:
        r0 = r8.state;
        r3 = org.apache.http.impl.auth.NegotiateScheme.State.CHALLENGE_RECEIVED;
        if (r0 == r3) goto L_0x001a;
    L_0x0012:
        r0 = new java.lang.IllegalStateException;
        r1 = "Negotiation authentication process has not been initiated";
        r0.<init>(r1);
        throw r0;
    L_0x001a:
        r0 = r8.isProxy();	 Catch:{ GSSException -> 0x0032, IOException -> 0x0138 }
        if (r0 == 0) goto L_0x0051;
    L_0x0020:
        r0 = "http.proxy_host";
    L_0x0022:
        r0 = r11.getAttribute(r0);	 Catch:{ GSSException -> 0x0032, IOException -> 0x0138 }
        r0 = (org.apache.http.HttpHost) r0;	 Catch:{ GSSException -> 0x0032, IOException -> 0x0138 }
        if (r0 != 0) goto L_0x0054;
    L_0x002a:
        r0 = new org.apache.http.auth.AuthenticationException;	 Catch:{ GSSException -> 0x0032, IOException -> 0x0138 }
        r1 = "Authentication host is not set in the execution context";
        r0.<init>(r1);	 Catch:{ GSSException -> 0x0032, IOException -> 0x0138 }
        throw r0;	 Catch:{ GSSException -> 0x0032, IOException -> 0x0138 }
    L_0x0032:
        r0 = move-exception;
        r1 = org.apache.http.impl.auth.NegotiateScheme.State.FAILED;
        r8.state = r1;
        r1 = r0.getMajor();
        r2 = 9;
        if (r1 == r2) goto L_0x0047;
    L_0x003f:
        r1 = r0.getMajor();
        r2 = 8;
        if (r1 != r2) goto L_0x01ce;
    L_0x0047:
        r1 = new org.apache.http.auth.InvalidCredentialsException;
        r2 = r0.getMessage();
        r1.<init>(r2, r0);
        throw r1;
    L_0x0051:
        r0 = "http.target_host";
        goto L_0x0022;
    L_0x0054:
        r3 = r8.stripPort;	 Catch:{ GSSException -> 0x0032, IOException -> 0x0138 }
        if (r3 != 0) goto L_0x0147;
    L_0x0058:
        r3 = r0.getPort();	 Catch:{ GSSException -> 0x0032, IOException -> 0x0138 }
        if (r3 <= 0) goto L_0x0147;
    L_0x005e:
        r0 = r0.toHostString();	 Catch:{ GSSException -> 0x0032, IOException -> 0x0138 }
        r3 = r0;
    L_0x0063:
        r0 = r8.log;	 Catch:{ GSSException -> 0x0032, IOException -> 0x0138 }
        r0 = r0.isDebugEnabled();	 Catch:{ GSSException -> 0x0032, IOException -> 0x0138 }
        if (r0 == 0) goto L_0x0083;
    L_0x006b:
        r0 = r8.log;	 Catch:{ GSSException -> 0x0032, IOException -> 0x0138 }
        r4 = new java.lang.StringBuilder;	 Catch:{ GSSException -> 0x0032, IOException -> 0x0138 }
        r4.<init>();	 Catch:{ GSSException -> 0x0032, IOException -> 0x0138 }
        r5 = "init ";
        r4 = r4.append(r5);	 Catch:{ GSSException -> 0x0032, IOException -> 0x0138 }
        r4 = r4.append(r3);	 Catch:{ GSSException -> 0x0032, IOException -> 0x0138 }
        r4 = r4.toString();	 Catch:{ GSSException -> 0x0032, IOException -> 0x0138 }
        r0.debug(r4);	 Catch:{ GSSException -> 0x0032, IOException -> 0x0138 }
    L_0x0083:
        r0 = new org.ietf.jgss.Oid;	 Catch:{ GSSException -> 0x0032, IOException -> 0x0138 }
        r4 = "1.3.6.1.5.5.2";
        r0.<init>(r4);	 Catch:{ GSSException -> 0x0032, IOException -> 0x0138 }
        r8.negotiationOid = r0;	 Catch:{ GSSException -> 0x0032, IOException -> 0x0138 }
        r0 = r8.getManager();	 Catch:{ GSSException -> 0x014e, IOException -> 0x0138 }
        r4 = new java.lang.StringBuilder;	 Catch:{ GSSException -> 0x014e, IOException -> 0x0138 }
        r4.<init>();	 Catch:{ GSSException -> 0x014e, IOException -> 0x0138 }
        r5 = "HTTP@";
        r4 = r4.append(r5);	 Catch:{ GSSException -> 0x014e, IOException -> 0x0138 }
        r4 = r4.append(r3);	 Catch:{ GSSException -> 0x014e, IOException -> 0x0138 }
        r4 = r4.toString();	 Catch:{ GSSException -> 0x014e, IOException -> 0x0138 }
        r5 = org.ietf.jgss.GSSName.NT_HOSTBASED_SERVICE;	 Catch:{ GSSException -> 0x014e, IOException -> 0x0138 }
        r4 = r0.createName(r4, r5);	 Catch:{ GSSException -> 0x014e, IOException -> 0x0138 }
        r5 = r8.negotiationOid;	 Catch:{ GSSException -> 0x014e, IOException -> 0x0138 }
        r4 = r4.canonicalize(r5);	 Catch:{ GSSException -> 0x014e, IOException -> 0x0138 }
        r5 = r8.negotiationOid;	 Catch:{ GSSException -> 0x014e, IOException -> 0x0138 }
        r6 = 0;
        r7 = 0;
        r0 = r0.createContext(r4, r5, r6, r7);	 Catch:{ GSSException -> 0x014e, IOException -> 0x0138 }
        r8.gssContext = r0;	 Catch:{ GSSException -> 0x014e, IOException -> 0x0138 }
        r0 = r8.gssContext;	 Catch:{ GSSException -> 0x014e, IOException -> 0x0138 }
        r4 = 1;
        r0.requestMutualAuth(r4);	 Catch:{ GSSException -> 0x014e, IOException -> 0x0138 }
        r0 = r8.gssContext;	 Catch:{ GSSException -> 0x014e, IOException -> 0x0138 }
        r4 = 1;
        r0.requestCredDeleg(r4);	 Catch:{ GSSException -> 0x014e, IOException -> 0x0138 }
        r0 = r1;
    L_0x00c6:
        if (r0 == 0) goto L_0x0111;
    L_0x00c8:
        r0 = r8.log;	 Catch:{ GSSException -> 0x0032, IOException -> 0x0138 }
        r1 = "Using Kerberos MECH 1.2.840.113554.1.2.2";
        r0.debug(r1);	 Catch:{ GSSException -> 0x0032, IOException -> 0x0138 }
        r0 = new org.ietf.jgss.Oid;	 Catch:{ GSSException -> 0x0032, IOException -> 0x0138 }
        r1 = "1.2.840.113554.1.2.2";
        r0.<init>(r1);	 Catch:{ GSSException -> 0x0032, IOException -> 0x0138 }
        r8.negotiationOid = r0;	 Catch:{ GSSException -> 0x0032, IOException -> 0x0138 }
        r0 = r8.getManager();	 Catch:{ GSSException -> 0x0032, IOException -> 0x0138 }
        r1 = new java.lang.StringBuilder;	 Catch:{ GSSException -> 0x0032, IOException -> 0x0138 }
        r1.<init>();	 Catch:{ GSSException -> 0x0032, IOException -> 0x0138 }
        r2 = "HTTP@";
        r1 = r1.append(r2);	 Catch:{ GSSException -> 0x0032, IOException -> 0x0138 }
        r1 = r1.append(r3);	 Catch:{ GSSException -> 0x0032, IOException -> 0x0138 }
        r1 = r1.toString();	 Catch:{ GSSException -> 0x0032, IOException -> 0x0138 }
        r2 = org.ietf.jgss.GSSName.NT_HOSTBASED_SERVICE;	 Catch:{ GSSException -> 0x0032, IOException -> 0x0138 }
        r1 = r0.createName(r1, r2);	 Catch:{ GSSException -> 0x0032, IOException -> 0x0138 }
        r2 = r8.negotiationOid;	 Catch:{ GSSException -> 0x0032, IOException -> 0x0138 }
        r1 = r1.canonicalize(r2);	 Catch:{ GSSException -> 0x0032, IOException -> 0x0138 }
        r2 = r8.negotiationOid;	 Catch:{ GSSException -> 0x0032, IOException -> 0x0138 }
        r3 = 0;
        r4 = 0;
        r0 = r0.createContext(r1, r2, r3, r4);	 Catch:{ GSSException -> 0x0032, IOException -> 0x0138 }
        r8.gssContext = r0;	 Catch:{ GSSException -> 0x0032, IOException -> 0x0138 }
        r0 = r8.gssContext;	 Catch:{ GSSException -> 0x0032, IOException -> 0x0138 }
        r1 = 1;
        r0.requestMutualAuth(r1);	 Catch:{ GSSException -> 0x0032, IOException -> 0x0138 }
        r0 = r8.gssContext;	 Catch:{ GSSException -> 0x0032, IOException -> 0x0138 }
        r1 = 1;
        r0.requestCredDeleg(r1);	 Catch:{ GSSException -> 0x0032, IOException -> 0x0138 }
    L_0x0111:
        r0 = r8.token;	 Catch:{ GSSException -> 0x0032, IOException -> 0x0138 }
        if (r0 != 0) goto L_0x011a;
    L_0x0115:
        r0 = 0;
        r0 = new byte[r0];	 Catch:{ GSSException -> 0x0032, IOException -> 0x0138 }
        r8.token = r0;	 Catch:{ GSSException -> 0x0032, IOException -> 0x0138 }
    L_0x011a:
        r0 = r8.gssContext;	 Catch:{ GSSException -> 0x0032, IOException -> 0x0138 }
        r1 = r8.token;	 Catch:{ GSSException -> 0x0032, IOException -> 0x0138 }
        r2 = 0;
        r3 = r8.token;	 Catch:{ GSSException -> 0x0032, IOException -> 0x0138 }
        r3 = r3.length;	 Catch:{ GSSException -> 0x0032, IOException -> 0x0138 }
        r0 = r0.initSecContext(r1, r2, r3);	 Catch:{ GSSException -> 0x0032, IOException -> 0x0138 }
        r8.token = r0;	 Catch:{ GSSException -> 0x0032, IOException -> 0x0138 }
        r0 = r8.token;	 Catch:{ GSSException -> 0x0032, IOException -> 0x0138 }
        if (r0 != 0) goto L_0x0161;
    L_0x012c:
        r0 = org.apache.http.impl.auth.NegotiateScheme.State.FAILED;	 Catch:{ GSSException -> 0x0032, IOException -> 0x0138 }
        r8.state = r0;	 Catch:{ GSSException -> 0x0032, IOException -> 0x0138 }
        r0 = new org.apache.http.auth.AuthenticationException;	 Catch:{ GSSException -> 0x0032, IOException -> 0x0138 }
        r1 = "GSS security context initialization failed";
        r0.<init>(r1);	 Catch:{ GSSException -> 0x0032, IOException -> 0x0138 }
        throw r0;	 Catch:{ GSSException -> 0x0032, IOException -> 0x0138 }
    L_0x0138:
        r0 = move-exception;
        r1 = org.apache.http.impl.auth.NegotiateScheme.State.FAILED;
        r8.state = r1;
        r1 = new org.apache.http.auth.AuthenticationException;
        r0 = r0.getMessage();
        r1.<init>(r0);
        throw r1;
    L_0x0147:
        r0 = r0.getHostName();	 Catch:{ GSSException -> 0x0032, IOException -> 0x0138 }
        r3 = r0;
        goto L_0x0063;
    L_0x014e:
        r0 = move-exception;
        r1 = r0.getMajor();	 Catch:{ GSSException -> 0x0032, IOException -> 0x0138 }
        r4 = 2;
        if (r1 != r4) goto L_0x0160;
    L_0x0156:
        r0 = r8.log;	 Catch:{ GSSException -> 0x0032, IOException -> 0x0138 }
        r1 = "GSSException BAD_MECH, retry with Kerberos MECH";
        r0.debug(r1);	 Catch:{ GSSException -> 0x0032, IOException -> 0x0138 }
        r0 = r2;
        goto L_0x00c6;
    L_0x0160:
        throw r0;	 Catch:{ GSSException -> 0x0032, IOException -> 0x0138 }
    L_0x0161:
        r0 = r8.spengoGenerator;	 Catch:{ GSSException -> 0x0032, IOException -> 0x0138 }
        if (r0 == 0) goto L_0x017d;
    L_0x0165:
        r0 = r8.negotiationOid;	 Catch:{ GSSException -> 0x0032, IOException -> 0x0138 }
        r0 = r0.toString();	 Catch:{ GSSException -> 0x0032, IOException -> 0x0138 }
        r1 = "1.2.840.113554.1.2.2";
        r0 = r0.equals(r1);	 Catch:{ GSSException -> 0x0032, IOException -> 0x0138 }
        if (r0 == 0) goto L_0x017d;
    L_0x0173:
        r0 = r8.spengoGenerator;	 Catch:{ GSSException -> 0x0032, IOException -> 0x0138 }
        r1 = r8.token;	 Catch:{ GSSException -> 0x0032, IOException -> 0x0138 }
        r0 = r0.generateSpnegoDERObject(r1);	 Catch:{ GSSException -> 0x0032, IOException -> 0x0138 }
        r8.token = r0;	 Catch:{ GSSException -> 0x0032, IOException -> 0x0138 }
    L_0x017d:
        r0 = org.apache.http.impl.auth.NegotiateScheme.State.TOKEN_GENERATED;	 Catch:{ GSSException -> 0x0032, IOException -> 0x0138 }
        r8.state = r0;	 Catch:{ GSSException -> 0x0032, IOException -> 0x0138 }
        r0 = new java.lang.String;	 Catch:{ GSSException -> 0x0032, IOException -> 0x0138 }
        r1 = r8.token;	 Catch:{ GSSException -> 0x0032, IOException -> 0x0138 }
        r2 = 0;
        r1 = org.apache.commons.codec.binary.Base64.encodeBase64(r1, r2);	 Catch:{ GSSException -> 0x0032, IOException -> 0x0138 }
        r0.<init>(r1);	 Catch:{ GSSException -> 0x0032, IOException -> 0x0138 }
        r1 = r8.log;	 Catch:{ GSSException -> 0x0032, IOException -> 0x0138 }
        r1 = r1.isDebugEnabled();	 Catch:{ GSSException -> 0x0032, IOException -> 0x0138 }
        if (r1 == 0) goto L_0x01b3;
    L_0x0195:
        r1 = r8.log;	 Catch:{ GSSException -> 0x0032, IOException -> 0x0138 }
        r2 = new java.lang.StringBuilder;	 Catch:{ GSSException -> 0x0032, IOException -> 0x0138 }
        r2.<init>();	 Catch:{ GSSException -> 0x0032, IOException -> 0x0138 }
        r3 = "Sending response '";
        r2 = r2.append(r3);	 Catch:{ GSSException -> 0x0032, IOException -> 0x0138 }
        r2 = r2.append(r0);	 Catch:{ GSSException -> 0x0032, IOException -> 0x0138 }
        r3 = "' back to the auth server";
        r2 = r2.append(r3);	 Catch:{ GSSException -> 0x0032, IOException -> 0x0138 }
        r2 = r2.toString();	 Catch:{ GSSException -> 0x0032, IOException -> 0x0138 }
        r1.debug(r2);	 Catch:{ GSSException -> 0x0032, IOException -> 0x0138 }
    L_0x01b3:
        r1 = new org.apache.http.message.BasicHeader;	 Catch:{ GSSException -> 0x0032, IOException -> 0x0138 }
        r2 = "Authorization";
        r3 = new java.lang.StringBuilder;	 Catch:{ GSSException -> 0x0032, IOException -> 0x0138 }
        r3.<init>();	 Catch:{ GSSException -> 0x0032, IOException -> 0x0138 }
        r4 = "Negotiate ";
        r3 = r3.append(r4);	 Catch:{ GSSException -> 0x0032, IOException -> 0x0138 }
        r0 = r3.append(r0);	 Catch:{ GSSException -> 0x0032, IOException -> 0x0138 }
        r0 = r0.toString();	 Catch:{ GSSException -> 0x0032, IOException -> 0x0138 }
        r1.<init>(r2, r0);	 Catch:{ GSSException -> 0x0032, IOException -> 0x0138 }
        return r1;
    L_0x01ce:
        r1 = r0.getMajor();
        r2 = 13;
        if (r1 != r2) goto L_0x01e0;
    L_0x01d6:
        r1 = new org.apache.http.auth.InvalidCredentialsException;
        r2 = r0.getMessage();
        r1.<init>(r2, r0);
        throw r1;
    L_0x01e0:
        r1 = r0.getMajor();
        r2 = 10;
        if (r1 == r2) goto L_0x01f8;
    L_0x01e8:
        r1 = r0.getMajor();
        r2 = 19;
        if (r1 == r2) goto L_0x01f8;
    L_0x01f0:
        r1 = r0.getMajor();
        r2 = 20;
        if (r1 != r2) goto L_0x0202;
    L_0x01f8:
        r1 = new org.apache.http.auth.AuthenticationException;
        r2 = r0.getMessage();
        r1.<init>(r2, r0);
        throw r1;
    L_0x0202:
        r1 = new org.apache.http.auth.AuthenticationException;
        r0 = r0.getMessage();
        r1.<init>(r0);
        throw r1;
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.http.impl.auth.NegotiateScheme.authenticate(org.apache.http.auth.Credentials, org.apache.http.HttpRequest, org.apache.http.protocol.HttpContext):org.apache.http.Header");
    }

    /* Access modifiers changed, original: protected */
    public GSSManager getManager() {
        return GSSManager.getInstance();
    }

    public String getParameter(String str) {
        if (str != null) {
            return null;
        }
        throw new IllegalArgumentException("Parameter name may not be null");
    }

    public String getRealm() {
        return null;
    }

    public String getSchemeName() {
        return "Negotiate";
    }

    public boolean isComplete() {
        return this.state == State.TOKEN_GENERATED || this.state == State.FAILED;
    }

    public boolean isConnectionBased() {
        return true;
    }

    /* Access modifiers changed, original: protected */
    public void parseChallenge(CharArrayBuffer charArrayBuffer, int i, int i2) {
        String substringTrimmed = charArrayBuffer.substringTrimmed(i, i2);
        if (this.log.isDebugEnabled()) {
            this.log.debug("Received challenge '" + substringTrimmed + "' from the auth server");
        }
        if (this.state == State.UNINITIATED) {
            this.token = new Base64().decode(substringTrimmed.getBytes());
            this.state = State.CHALLENGE_RECEIVED;
            return;
        }
        this.log.debug("Authentication already attempted");
        this.state = State.FAILED;
    }
}
