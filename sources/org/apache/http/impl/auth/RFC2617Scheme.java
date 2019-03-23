package org.apache.http.impl.auth;

import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import org.apache.http.HeaderElement;
import org.apache.http.annotation.NotThreadSafe;
import org.apache.http.auth.MalformedChallengeException;
import org.apache.http.message.BasicHeaderValueParser;
import org.apache.http.message.ParserCursor;
import org.apache.http.util.CharArrayBuffer;

@NotThreadSafe
public abstract class RFC2617Scheme extends AuthSchemeBase {
    private Map<String, String> params;

    public String getParameter(String str) {
        if (str != null) {
            return this.params == null ? null : (String) this.params.get(str.toLowerCase(Locale.ENGLISH));
        } else {
            throw new IllegalArgumentException("Parameter name may not be null");
        }
    }

    /* Access modifiers changed, original: protected */
    public Map<String, String> getParameters() {
        if (this.params == null) {
            this.params = new HashMap();
        }
        return this.params;
    }

    public String getRealm() {
        return getParameter("realm");
    }

    /* Access modifiers changed, original: protected */
    public void parseChallenge(CharArrayBuffer charArrayBuffer, int i, int i2) {
        HeaderElement[] parseElements = BasicHeaderValueParser.DEFAULT.parseElements(charArrayBuffer, new ParserCursor(i, charArrayBuffer.length()));
        if (parseElements.length == 0) {
            throw new MalformedChallengeException("Authentication challenge is empty");
        }
        this.params = new HashMap(parseElements.length);
        for (HeaderElement headerElement : parseElements) {
            this.params.put(headerElement.getName(), headerElement.getValue());
        }
    }
}
