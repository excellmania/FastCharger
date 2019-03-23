package org.apache.http.client.entity;

import java.io.InputStream;
import java.util.zip.GZIPInputStream;
import org.apache.http.Header;
import org.apache.http.HttpEntity;

public class GzipDecompressingEntity extends DecompressingEntity {
    public GzipDecompressingEntity(HttpEntity httpEntity) {
        super(httpEntity);
    }

    public Header getContentEncoding() {
        return null;
    }

    public long getContentLength() {
        return -1;
    }

    /* Access modifiers changed, original: 0000 */
    public InputStream getDecompressingInputStream(InputStream inputStream) {
        return new GZIPInputStream(inputStream);
    }
}
