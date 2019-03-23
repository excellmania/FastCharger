package org.apache.http.entity;

import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.io.OutputStream;
import org.apache.http.protocol.HTTP;

public class StringEntity extends AbstractHttpEntity implements Cloneable {
    protected final byte[] content;

    public StringEntity(String str) {
        this(str, null);
    }

    public StringEntity(String str, String str2) {
        this(str, null, str2);
    }

    public StringEntity(String str, String str2, String str3) {
        if (str == null) {
            throw new IllegalArgumentException("Source string may not be null");
        }
        if (str2 == null) {
            str2 = HTTP.PLAIN_TEXT_TYPE;
        }
        if (str3 == null) {
            str3 = "ISO-8859-1";
        }
        this.content = str.getBytes(str3);
        setContentType(new StringBuffer().append(str2).append(HTTP.CHARSET_PARAM).append(str3).toString());
    }

    public Object clone() {
        return super.clone();
    }

    public InputStream getContent() {
        return new ByteArrayInputStream(this.content);
    }

    public long getContentLength() {
        return (long) this.content.length;
    }

    public boolean isRepeatable() {
        return true;
    }

    public boolean isStreaming() {
        return false;
    }

    public void writeTo(OutputStream outputStream) {
        if (outputStream == null) {
            throw new IllegalArgumentException("Output stream may not be null");
        }
        outputStream.write(this.content);
        outputStream.flush();
    }
}
