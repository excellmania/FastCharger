package org.apache.http.message;

import org.apache.http.HeaderElement;
import org.apache.http.NameValuePair;
import org.apache.http.util.CharArrayBuffer;
import org.apache.http.util.LangUtils;

public class BasicHeaderElement implements Cloneable, HeaderElement {
    private final String name;
    private final NameValuePair[] parameters;
    private final String value;

    public BasicHeaderElement(String str, String str2) {
        this(str, str2, null);
    }

    public BasicHeaderElement(String str, String str2, NameValuePair[] nameValuePairArr) {
        if (str == null) {
            throw new IllegalArgumentException("Name may not be null");
        }
        this.name = str;
        this.value = str2;
        if (nameValuePairArr != null) {
            this.parameters = nameValuePairArr;
        } else {
            this.parameters = new NameValuePair[0];
        }
    }

    public Object clone() {
        return super.clone();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof HeaderElement)) {
            return false;
        }
        BasicHeaderElement basicHeaderElement = (BasicHeaderElement) obj;
        return this.name.equals(basicHeaderElement.name) && LangUtils.equals(this.value, basicHeaderElement.value) && LangUtils.equals(this.parameters, basicHeaderElement.parameters);
    }

    public String getName() {
        return this.name;
    }

    public NameValuePair getParameter(int i) {
        return this.parameters[i];
    }

    public NameValuePair getParameterByName(String str) {
        if (str == null) {
            throw new IllegalArgumentException("Name may not be null");
        }
        for (NameValuePair nameValuePair : this.parameters) {
            if (nameValuePair.getName().equalsIgnoreCase(str)) {
                return nameValuePair;
            }
        }
        return null;
    }

    public int getParameterCount() {
        return this.parameters.length;
    }

    public NameValuePair[] getParameters() {
        return (NameValuePair[]) this.parameters.clone();
    }

    public String getValue() {
        return this.value;
    }

    public int hashCode() {
        int hashCode = LangUtils.hashCode(LangUtils.hashCode(17, this.name), this.value);
        for (Object hashCode2 : this.parameters) {
            hashCode = LangUtils.hashCode(hashCode, hashCode2);
        }
        return hashCode;
    }

    public String toString() {
        CharArrayBuffer charArrayBuffer = new CharArrayBuffer(64);
        charArrayBuffer.append(this.name);
        if (this.value != null) {
            charArrayBuffer.append("=");
            charArrayBuffer.append(this.value);
        }
        for (Object append : this.parameters) {
            charArrayBuffer.append("; ");
            charArrayBuffer.append(append);
        }
        return charArrayBuffer.toString();
    }
}
