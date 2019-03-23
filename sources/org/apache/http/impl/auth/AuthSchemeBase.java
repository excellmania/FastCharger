package org.apache.http.impl.auth;

import org.apache.http.FormattedHeader;
import org.apache.http.Header;
import org.apache.http.HttpRequest;
import org.apache.http.annotation.NotThreadSafe;
import org.apache.http.auth.ContextAwareAuthScheme;
import org.apache.http.auth.Credentials;
import org.apache.http.auth.MalformedChallengeException;
import org.apache.http.protocol.HTTP;
import org.apache.http.protocol.HttpContext;
import org.apache.http.util.CharArrayBuffer;

@NotThreadSafe
public abstract class AuthSchemeBase implements ContextAwareAuthScheme {
    private boolean proxy;

    public Header authenticate(Credentials credentials, HttpRequest httpRequest, HttpContext httpContext) {
        return authenticate(credentials, httpRequest);
    }

    public boolean isProxy() {
        return this.proxy;
    }

    public abstract void parseChallenge(CharArrayBuffer charArrayBuffer, int i, int i2);

    public void processChallenge(Header header) {
        int i = 0;
        if (header == null) {
            throw new IllegalArgumentException("Header may not be null");
        }
        CharArrayBuffer buffer;
        String name = header.getName();
        if (name.equalsIgnoreCase("WWW-Authenticate")) {
            this.proxy = false;
        } else if (name.equalsIgnoreCase("Proxy-Authenticate")) {
            this.proxy = true;
        } else {
            throw new MalformedChallengeException("Unexpected header name: " + name);
        }
        if (header instanceof FormattedHeader) {
            buffer = ((FormattedHeader) header).getBuffer();
            i = ((FormattedHeader) header).getValuePos();
        } else {
            String value = header.getValue();
            if (value == null) {
                throw new MalformedChallengeException("Header value is null");
            }
            buffer = new CharArrayBuffer(value.length());
            buffer.append(value);
        }
        while (i < buffer.length() && HTTP.isWhitespace(buffer.charAt(i))) {
            i++;
        }
        int i2 = i;
        while (i2 < buffer.length() && !HTTP.isWhitespace(buffer.charAt(i2))) {
            i2++;
        }
        String substring = buffer.substring(i, i2);
        if (substring.equalsIgnoreCase(getSchemeName())) {
            parseChallenge(buffer, i2, buffer.length());
            return;
        }
        throw new MalformedChallengeException("Invalid scheme identifier: " + substring);
    }

    public String toString() {
        return getSchemeName();
    }
}
