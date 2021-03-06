package org.apache.http.impl.conn;

import android.support.v4.media.TransportMediator;
import java.io.ByteArrayInputStream;
import java.io.InputStream;
import org.apache.commons.logging.Log;
import org.apache.http.annotation.Immutable;

@Immutable
public class Wire {
    private final Log log;

    public Wire(Log log) {
        this.log = log;
    }

    private void wire(String str, InputStream inputStream) {
        StringBuilder stringBuilder = new StringBuilder();
        while (true) {
            int read = inputStream.read();
            if (read == -1) {
                break;
            } else if (read == 13) {
                stringBuilder.append("[\\r]");
            } else if (read == 10) {
                stringBuilder.append("[\\n]\"");
                stringBuilder.insert(0, "\"");
                stringBuilder.insert(0, str);
                this.log.debug(stringBuilder.toString());
                stringBuilder.setLength(0);
            } else if (read < 32 || read > TransportMediator.KEYCODE_MEDIA_PAUSE) {
                stringBuilder.append("[0x");
                stringBuilder.append(Integer.toHexString(read));
                stringBuilder.append("]");
            } else {
                stringBuilder.append((char) read);
            }
        }
        if (stringBuilder.length() > 0) {
            stringBuilder.append('\"');
            stringBuilder.insert(0, '\"');
            stringBuilder.insert(0, str);
            this.log.debug(stringBuilder.toString());
        }
    }

    public boolean enabled() {
        return this.log.isDebugEnabled();
    }

    public void input(int i) {
        input(new byte[]{(byte) i});
    }

    public void input(InputStream inputStream) {
        if (inputStream == null) {
            throw new IllegalArgumentException("Input may not be null");
        }
        wire("<< ", inputStream);
    }

    @Deprecated
    public void input(String str) {
        if (str == null) {
            throw new IllegalArgumentException("Input may not be null");
        }
        input(str.getBytes());
    }

    public void input(byte[] bArr) {
        if (bArr == null) {
            throw new IllegalArgumentException("Input may not be null");
        }
        wire("<< ", new ByteArrayInputStream(bArr));
    }

    public void input(byte[] bArr, int i, int i2) {
        if (bArr == null) {
            throw new IllegalArgumentException("Input may not be null");
        }
        wire("<< ", new ByteArrayInputStream(bArr, i, i2));
    }

    public void output(int i) {
        output(new byte[]{(byte) i});
    }

    public void output(InputStream inputStream) {
        if (inputStream == null) {
            throw new IllegalArgumentException("Output may not be null");
        }
        wire(">> ", inputStream);
    }

    @Deprecated
    public void output(String str) {
        if (str == null) {
            throw new IllegalArgumentException("Output may not be null");
        }
        output(str.getBytes());
    }

    public void output(byte[] bArr) {
        if (bArr == null) {
            throw new IllegalArgumentException("Output may not be null");
        }
        wire(">> ", new ByteArrayInputStream(bArr));
    }

    public void output(byte[] bArr, int i, int i2) {
        if (bArr == null) {
            throw new IllegalArgumentException("Output may not be null");
        }
        wire(">> ", new ByteArrayInputStream(bArr, i, i2));
    }
}
