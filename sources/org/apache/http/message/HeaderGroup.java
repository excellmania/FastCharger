package org.apache.http.message;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import org.apache.http.Header;
import org.apache.http.HeaderIterator;
import org.apache.http.util.CharArrayBuffer;

public class HeaderGroup implements Serializable, Cloneable {
    private static final long serialVersionUID = 2608834160639271617L;
    private final List headers = new ArrayList(16);

    public void addHeader(Header header) {
        if (header != null) {
            this.headers.add(header);
        }
    }

    public void clear() {
        this.headers.clear();
    }

    public Object clone() {
        HeaderGroup headerGroup = (HeaderGroup) super.clone();
        headerGroup.headers.clear();
        headerGroup.headers.addAll(this.headers);
        return headerGroup;
    }

    public boolean containsHeader(String str) {
        for (int i = 0; i < this.headers.size(); i++) {
            if (((Header) this.headers.get(i)).getName().equalsIgnoreCase(str)) {
                return true;
            }
        }
        return false;
    }

    public HeaderGroup copy() {
        HeaderGroup headerGroup = new HeaderGroup();
        headerGroup.headers.addAll(this.headers);
        return headerGroup;
    }

    public Header[] getAllHeaders() {
        return (Header[]) this.headers.toArray(new Header[this.headers.size()]);
    }

    public Header getCondensedHeader(String str) {
        int i = 1;
        Header[] headers = getHeaders(str);
        if (headers.length == 0) {
            return null;
        }
        if (headers.length == 1) {
            return headers[0];
        }
        CharArrayBuffer charArrayBuffer = new CharArrayBuffer(128);
        charArrayBuffer.append(headers[0].getValue());
        while (i < headers.length) {
            charArrayBuffer.append(", ");
            charArrayBuffer.append(headers[i].getValue());
            i++;
        }
        return new BasicHeader(str.toLowerCase(Locale.ENGLISH), charArrayBuffer.toString());
    }

    public Header getFirstHeader(String str) {
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 >= this.headers.size()) {
                return null;
            }
            Header header = (Header) this.headers.get(i2);
            if (header.getName().equalsIgnoreCase(str)) {
                return header;
            }
            i = i2 + 1;
        }
    }

    public Header[] getHeaders(String str) {
        ArrayList arrayList = new ArrayList();
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 >= this.headers.size()) {
                return (Header[]) arrayList.toArray(new Header[arrayList.size()]);
            }
            Header header = (Header) this.headers.get(i2);
            if (header.getName().equalsIgnoreCase(str)) {
                arrayList.add(header);
            }
            i = i2 + 1;
        }
    }

    public Header getLastHeader(String str) {
        for (int size = this.headers.size() - 1; size >= 0; size--) {
            Header header = (Header) this.headers.get(size);
            if (header.getName().equalsIgnoreCase(str)) {
                return header;
            }
        }
        return null;
    }

    public HeaderIterator iterator() {
        return new BasicListHeaderIterator(this.headers, null);
    }

    public HeaderIterator iterator(String str) {
        return new BasicListHeaderIterator(this.headers, str);
    }

    public void removeHeader(Header header) {
        if (header != null) {
            this.headers.remove(header);
        }
    }

    public void setHeaders(Header[] headerArr) {
        clear();
        if (headerArr != null) {
            for (Object add : headerArr) {
                this.headers.add(add);
            }
        }
    }

    public String toString() {
        return this.headers.toString();
    }

    public void updateHeader(Header header) {
        if (header != null) {
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 >= this.headers.size()) {
                    this.headers.add(header);
                    return;
                } else if (((Header) this.headers.get(i2)).getName().equalsIgnoreCase(header.getName())) {
                    this.headers.set(i2, header);
                    return;
                } else {
                    i = i2 + 1;
                }
            }
        }
    }
}
