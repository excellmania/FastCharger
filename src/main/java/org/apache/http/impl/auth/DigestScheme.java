package org.apache.http.impl.auth;

import java.security.MessageDigest;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.Formatter;
import java.util.Locale;
import java.util.StringTokenizer;
import org.apache.http.Header;
import org.apache.http.HttpRequest;
import org.apache.http.NameValuePair;
import org.apache.http.annotation.NotThreadSafe;
import org.apache.http.auth.AuthenticationException;
import org.apache.http.auth.Credentials;
import org.apache.http.auth.MalformedChallengeException;
import org.apache.http.auth.params.AuthParams;
import org.apache.http.message.BasicHeaderValueFormatter;
import org.apache.http.message.BasicNameValuePair;
import org.apache.http.message.BufferedHeader;
import org.apache.http.util.CharArrayBuffer;
import org.apache.http.util.EncodingUtils;

@NotThreadSafe
public class DigestScheme extends RFC2617Scheme {
    private static final char[] HEXADECIMAL = new char[]{'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};
    private static final int QOP_AUTH = 2;
    private static final int QOP_AUTH_INT = 1;
    private static final int QOP_MISSING = 0;
    private static final int QOP_UNKNOWN = -1;
    private String a1;
    private String a2;
    private String cnonce;
    private boolean complete = false;
    private String lastNonce;
    private long nounceCount;

    public static String createCnonce() {
        byte[] bArr = new byte[8];
        new SecureRandom().nextBytes(bArr);
        return encode(bArr);
    }

    private Header createDigestHeader(Credentials credentials) {
        String parameter = getParameter("uri");
        String parameter2 = getParameter("realm");
        String parameter3 = getParameter("nonce");
        String parameter4 = getParameter("opaque");
        String parameter5 = getParameter("methodname");
        String parameter6 = getParameter("algorithm");
        if (parameter == null) {
            throw new IllegalStateException("URI may not be null");
        } else if (parameter2 == null) {
            throw new IllegalStateException("Realm may not be null");
        } else if (parameter3 == null) {
            throw new IllegalStateException("Nonce may not be null");
        } else {
            int i;
            int i2 = -1;
            String parameter7 = getParameter("qop");
            if (parameter7 != null) {
                StringTokenizer stringTokenizer = new StringTokenizer(parameter7, ",");
                while (stringTokenizer.hasMoreTokens()) {
                    if (stringTokenizer.nextToken().trim().equals("auth")) {
                        i2 = 2;
                        break;
                    }
                }
                i = i2;
            } else {
                i = 0;
            }
            if (i == -1) {
                throw new AuthenticationException("None of the qop methods is supported: " + parameter7);
            }
            String str = parameter6 == null ? "MD5" : parameter6;
            parameter6 = getParameter("charset");
            if (parameter6 == null) {
                parameter6 = "ISO-8859-1";
            }
            parameter7 = str.equalsIgnoreCase("MD5-sess") ? "MD5" : str;
            try {
                MessageDigest createMessageDigest = createMessageDigest(parameter7);
                String name = credentials.getUserPrincipal().getName();
                String password = credentials.getPassword();
                if (parameter3.equals(this.lastNonce)) {
                    this.nounceCount++;
                } else {
                    this.nounceCount = 1;
                    this.cnonce = null;
                    this.lastNonce = parameter3;
                }
                StringBuilder stringBuilder = new StringBuilder(256);
                new Formatter(stringBuilder, Locale.US).format("%08x", new Object[]{Long.valueOf(this.nounceCount)});
                String stringBuilder2 = stringBuilder.toString();
                if (this.cnonce == null) {
                    this.cnonce = createCnonce();
                }
                this.a1 = null;
                this.a2 = null;
                if (str.equalsIgnoreCase("MD5-sess")) {
                    stringBuilder.setLength(0);
                    stringBuilder.append(name).append(':').append(parameter2).append(':').append(password);
                    password = encode(createMessageDigest.digest(EncodingUtils.getBytes(stringBuilder.toString(), parameter6)));
                    stringBuilder.setLength(0);
                    stringBuilder.append(password).append(':').append(parameter3).append(':').append(this.cnonce);
                    this.a1 = stringBuilder.toString();
                } else {
                    stringBuilder.setLength(0);
                    stringBuilder.append(name).append(':').append(parameter2).append(':').append(password);
                    this.a1 = stringBuilder.toString();
                }
                password = encode(createMessageDigest.digest(EncodingUtils.getBytes(this.a1, parameter6)));
                if (i == 2) {
                    this.a2 = parameter5 + ':' + parameter;
                } else if (i == 1) {
                    throw new AuthenticationException("qop-int method is not suppported");
                } else {
                    this.a2 = parameter5 + ':' + parameter;
                }
                parameter5 = encode(createMessageDigest.digest(EncodingUtils.getBytes(this.a2, parameter6)));
                if (i == 0) {
                    stringBuilder.setLength(0);
                    stringBuilder.append(password).append(':').append(parameter3).append(':').append(parameter5);
                    parameter6 = stringBuilder.toString();
                } else {
                    stringBuilder.setLength(0);
                    stringBuilder.append(password).append(':').append(parameter3).append(':').append(stringBuilder2).append(':').append(this.cnonce).append(':').append(i == 1 ? "auth-int" : "auth").append(':').append(parameter5);
                    parameter6 = stringBuilder.toString();
                }
                parameter6 = encode(createMessageDigest.digest(EncodingUtils.getAsciiBytes(parameter6)));
                CharArrayBuffer charArrayBuffer = new CharArrayBuffer(128);
                if (isProxy()) {
                    charArrayBuffer.append("Proxy-Authorization");
                } else {
                    charArrayBuffer.append("Authorization");
                }
                charArrayBuffer.append(": Digest ");
                ArrayList arrayList = new ArrayList(20);
                arrayList.add(new BasicNameValuePair("username", name));
                arrayList.add(new BasicNameValuePair("realm", parameter2));
                arrayList.add(new BasicNameValuePair("nonce", parameter3));
                arrayList.add(new BasicNameValuePair("uri", parameter));
                arrayList.add(new BasicNameValuePair("response", parameter6));
                if (i != 0) {
                    arrayList.add(new BasicNameValuePair("qop", i == 1 ? "auth-int" : "auth"));
                    arrayList.add(new BasicNameValuePair("nc", stringBuilder2));
                    arrayList.add(new BasicNameValuePair("cnonce", this.cnonce));
                }
                if (str != null) {
                    arrayList.add(new BasicNameValuePair("algorithm", str));
                }
                if (parameter4 != null) {
                    arrayList.add(new BasicNameValuePair("opaque", parameter4));
                }
                i2 = 0;
                while (true) {
                    int i3 = i2;
                    if (i3 >= arrayList.size()) {
                        return new BufferedHeader(charArrayBuffer);
                    }
                    NameValuePair nameValuePair = (BasicNameValuePair) arrayList.get(i3);
                    if (i3 > 0) {
                        charArrayBuffer.append(", ");
                    }
                    Object obj = ("nc".equals(nameValuePair.getName()) || "qop".equals(nameValuePair.getName())) ? 1 : null;
                    BasicHeaderValueFormatter.DEFAULT.formatNameValuePair(charArrayBuffer, nameValuePair, obj == null);
                    i2 = i3 + 1;
                }
            } catch (UnsupportedDigestAlgorithmException e) {
                throw new AuthenticationException("Unsuppported digest algorithm: " + parameter7);
            }
        }
    }

    private static MessageDigest createMessageDigest(String str) {
        try {
            return MessageDigest.getInstance(str);
        } catch (Exception e) {
            throw new UnsupportedDigestAlgorithmException("Unsupported algorithm in HTTP Digest authentication: " + str);
        }
    }

    private static String encode(byte[] bArr) {
        int length = bArr.length;
        char[] cArr = new char[(length * 2)];
        for (int i = 0; i < length; i++) {
            int i2 = bArr[i] & 15;
            cArr[i * 2] = HEXADECIMAL[(bArr[i] & 240) >> 4];
            cArr[(i * 2) + 1] = HEXADECIMAL[i2];
        }
        return new String(cArr);
    }

    public Header authenticate(Credentials credentials, HttpRequest httpRequest) {
        if (credentials == null) {
            throw new IllegalArgumentException("Credentials may not be null");
        } else if (httpRequest == null) {
            throw new IllegalArgumentException("HTTP request may not be null");
        } else {
            getParameters().put("methodname", httpRequest.getRequestLine().getMethod());
            getParameters().put("uri", httpRequest.getRequestLine().getUri());
            if (getParameter("charset") == null) {
                getParameters().put("charset", AuthParams.getCredentialCharset(httpRequest.getParams()));
            }
            return createDigestHeader(credentials);
        }
    }

    /* Access modifiers changed, original: 0000 */
    public String getA1() {
        return this.a1;
    }

    /* Access modifiers changed, original: 0000 */
    public String getA2() {
        return this.a2;
    }

    /* Access modifiers changed, original: 0000 */
    public String getCnonce() {
        return this.cnonce;
    }

    public String getSchemeName() {
        return "digest";
    }

    public boolean isComplete() {
        return "true".equalsIgnoreCase(getParameter("stale")) ? false : this.complete;
    }

    public boolean isConnectionBased() {
        return false;
    }

    public void overrideParamter(String str, String str2) {
        getParameters().put(str, str2);
    }

    public void processChallenge(Header header) {
        super.processChallenge(header);
        if (getParameter("realm") == null) {
            throw new MalformedChallengeException("missing realm in challenge");
        } else if (getParameter("nonce") == null) {
            throw new MalformedChallengeException("missing nonce in challenge");
        } else {
            this.complete = true;
        }
    }
}
