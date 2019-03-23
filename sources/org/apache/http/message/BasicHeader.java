package org.apache.http.message;

import java.io.Serializable;
import org.apache.http.Header;
import org.apache.http.HeaderElement;

public class BasicHeader implements Serializable, Cloneable, Header {
    private static final long serialVersionUID = -5427236326487562174L;
    private final String name;
    private final String value;

    public BasicHeader(String str, String str2) {
        if (str == null) {
            throw new IllegalArgumentException("Name may not be null");
        }
        this.name = str;
        this.value = str2;
    }

    public Object clone() {
        return super.clone();
    }

    public HeaderElement[] getElements() {
        return this.value != null ? BasicHeaderValueParser.parseElements(this.value, null) : new HeaderElement[0];
    }

    public String getName() {
        return this.name;
    }

    public String getValue() {
        return this.value;
    }

    public String toString() {
        return BasicLineFormatter.DEFAULT.formatHeader(null, (Header) this).toString();
    }
}
