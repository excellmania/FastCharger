package org.apache.http.util;

import java.io.InputStream;
import java.io.InputStreamReader;
import org.apache.http.HeaderElement;
import org.apache.http.HttpEntity;
import org.apache.http.NameValuePair;

public final class EntityUtils {
    private EntityUtils() {
    }

    public static void consume(HttpEntity httpEntity) {
        if (httpEntity != null && httpEntity.isStreaming()) {
            InputStream content = httpEntity.getContent();
            if (content != null) {
                content.close();
            }
        }
    }

    public static String getContentCharSet(HttpEntity httpEntity) {
        if (httpEntity == null) {
            throw new IllegalArgumentException("HTTP entity may not be null");
        } else if (httpEntity.getContentType() == null) {
            return null;
        } else {
            HeaderElement[] elements = httpEntity.getContentType().getElements();
            if (elements.length <= 0) {
                return null;
            }
            NameValuePair parameterByName = elements[0].getParameterByName("charset");
            return parameterByName != null ? parameterByName.getValue() : null;
        }
    }

    public static String getContentMimeType(HttpEntity httpEntity) {
        if (httpEntity == null) {
            throw new IllegalArgumentException("HTTP entity may not be null");
        } else if (httpEntity.getContentType() == null) {
            return null;
        } else {
            HeaderElement[] elements = httpEntity.getContentType().getElements();
            return elements.length > 0 ? elements[0].getName() : null;
        }
    }

    public static byte[] toByteArray(HttpEntity httpEntity) {
        int i = 4096;
        if (httpEntity == null) {
            throw new IllegalArgumentException("HTTP entity may not be null");
        }
        InputStream content = httpEntity.getContent();
        if (content == null) {
            return null;
        }
        try {
            if (httpEntity.getContentLength() > 2147483647L) {
                throw new IllegalArgumentException("HTTP entity too large to be buffered in memory");
            }
            int contentLength = (int) httpEntity.getContentLength();
            if (contentLength >= 0) {
                i = contentLength;
            }
            ByteArrayBuffer byteArrayBuffer = new ByteArrayBuffer(i);
            byte[] bArr = new byte[4096];
            while (true) {
                int read = content.read(bArr);
                if (read == -1) {
                    break;
                }
                byteArrayBuffer.append(bArr, 0, read);
            }
            bArr = byteArrayBuffer.toByteArray();
            return bArr;
        } finally {
            content.close();
        }
    }

    public static String toString(HttpEntity httpEntity) {
        return toString(httpEntity, null);
    }

    public static String toString(HttpEntity httpEntity, String str) {
        if (httpEntity == null) {
            throw new IllegalArgumentException("HTTP entity may not be null");
        }
        InputStream content = httpEntity.getContent();
        if (content == null) {
            return null;
        }
        try {
            if (httpEntity.getContentLength() > 2147483647L) {
                throw new IllegalArgumentException("HTTP entity too large to be buffered in memory");
            }
            int contentLength = (int) httpEntity.getContentLength();
            int i = contentLength < 0 ? 4096 : contentLength;
            String contentCharSet = getContentCharSet(httpEntity);
            if (contentCharSet == null) {
                contentCharSet = str;
            }
            if (contentCharSet == null) {
                contentCharSet = "ISO-8859-1";
            }
            InputStreamReader inputStreamReader = new InputStreamReader(content, contentCharSet);
            CharArrayBuffer charArrayBuffer = new CharArrayBuffer(i);
            char[] cArr = new char[1024];
            while (true) {
                int read = inputStreamReader.read(cArr);
                if (read == -1) {
                    break;
                }
                charArrayBuffer.append(cArr, 0, read);
            }
            contentCharSet = charArrayBuffer.toString();
            return contentCharSet;
        } finally {
            content.close();
        }
    }
}
