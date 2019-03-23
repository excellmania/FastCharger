package org.apache.http.impl.cookie;

import java.util.ArrayList;
import org.apache.http.HeaderElement;
import org.apache.http.NameValuePair;
import org.apache.http.annotation.Immutable;
import org.apache.http.message.BasicHeaderElement;
import org.apache.http.message.BasicNameValuePair;
import org.apache.http.message.ParserCursor;
import org.apache.http.protocol.HTTP;
import org.apache.http.util.CharArrayBuffer;

@Immutable
public class NetscapeDraftHeaderParser {
    public static final NetscapeDraftHeaderParser DEFAULT = new NetscapeDraftHeaderParser();

    private NameValuePair parseNameValuePair(CharArrayBuffer charArrayBuffer, ParserCursor parserCursor) {
        int i;
        String substringTrimmed;
        Object obj;
        String substringTrimmed2;
        Object obj2 = 1;
        Object i2 = null;
        int pos = parserCursor.getPos();
        int pos2 = parserCursor.getPos();
        int upperBound = parserCursor.getUpperBound();
        while (pos < upperBound) {
            char charAt = charArrayBuffer.charAt(pos);
            if (charAt == '=') {
                break;
            } else if (charAt == ';') {
                i2 = 1;
                break;
            } else {
                pos++;
            }
        }
        if (pos == upperBound) {
            substringTrimmed = charArrayBuffer.substringTrimmed(pos2, upperBound);
            obj = 1;
        } else {
            substringTrimmed2 = charArrayBuffer.substringTrimmed(pos2, pos);
            pos++;
            substringTrimmed = substringTrimmed2;
            obj = i2;
        }
        if (obj != null) {
            parserCursor.updatePos(pos);
            return new BasicNameValuePair(substringTrimmed, null);
        }
        i2 = pos;
        while (i2 < upperBound) {
            if (charArrayBuffer.charAt(i2) == ';') {
                break;
            }
            i2++;
        }
        obj2 = obj;
        while (pos < i2 && HTTP.isWhitespace(charArrayBuffer.charAt(pos))) {
            pos++;
        }
        pos2 = i2;
        while (pos2 > pos && HTTP.isWhitespace(charArrayBuffer.charAt(pos2 - 1))) {
            pos2--;
        }
        substringTrimmed2 = charArrayBuffer.substring(pos, pos2);
        parserCursor.updatePos(obj2 != null ? i2 + 1 : i2);
        return new BasicNameValuePair(substringTrimmed, substringTrimmed2);
    }

    public HeaderElement parseHeader(CharArrayBuffer charArrayBuffer, ParserCursor parserCursor) {
        if (charArrayBuffer == null) {
            throw new IllegalArgumentException("Char array buffer may not be null");
        } else if (parserCursor == null) {
            throw new IllegalArgumentException("Parser cursor may not be null");
        } else {
            NameValuePair parseNameValuePair = parseNameValuePair(charArrayBuffer, parserCursor);
            ArrayList arrayList = new ArrayList();
            while (!parserCursor.atEnd()) {
                arrayList.add(parseNameValuePair(charArrayBuffer, parserCursor));
            }
            return new BasicHeaderElement(parseNameValuePair.getName(), parseNameValuePair.getValue(), (NameValuePair[]) arrayList.toArray(new NameValuePair[arrayList.size()]));
        }
    }
}
