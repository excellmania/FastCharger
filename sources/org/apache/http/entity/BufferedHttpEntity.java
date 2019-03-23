package org.apache.http.entity;

import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.io.OutputStream;
import org.apache.http.HttpEntity;
import org.apache.http.util.EntityUtils;

public class BufferedHttpEntity extends HttpEntityWrapper {
    private final byte[] buffer;

    public BufferedHttpEntity(HttpEntity httpEntity) {
        super(httpEntity);
        if (!httpEntity.isRepeatable() || httpEntity.getContentLength() < 0) {
            this.buffer = EntityUtils.toByteArray(httpEntity);
        } else {
            this.buffer = null;
        }
    }

    public InputStream getContent() {
        return this.buffer != null ? new ByteArrayInputStream(this.buffer) : this.wrappedEntity.getContent();
    }

    public long getContentLength() {
        return this.buffer != null ? (long) this.buffer.length : this.wrappedEntity.getContentLength();
    }

    public boolean isChunked() {
        return this.buffer == null && this.wrappedEntity.isChunked();
    }

    public boolean isRepeatable() {
        return true;
    }

    public boolean isStreaming() {
        return this.buffer == null && this.wrappedEntity.isStreaming();
    }

    public void writeTo(OutputStream outputStream) {
        if (outputStream == null) {
            throw new IllegalArgumentException("Output stream may not be null");
        } else if (this.buffer != null) {
            outputStream.write(this.buffer);
        } else {
            this.wrappedEntity.writeTo(outputStream);
        }
    }
}
