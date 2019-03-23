package org.apache.http.message;

import java.util.NoSuchElementException;
import org.apache.http.Header;
import org.apache.http.HeaderIterator;

public class BasicHeaderIterator implements HeaderIterator {
    protected final Header[] allHeaders;
    protected int currentIndex;
    protected String headerName;

    public BasicHeaderIterator(Header[] headerArr, String str) {
        if (headerArr == null) {
            throw new IllegalArgumentException("Header array must not be null.");
        }
        this.allHeaders = headerArr;
        this.headerName = str;
        this.currentIndex = findNext(-1);
    }

    /* Access modifiers changed, original: protected */
    public boolean filterHeader(int i) {
        return this.headerName == null || this.headerName.equalsIgnoreCase(this.allHeaders[i].getName());
    }

    /* Access modifiers changed, original: protected */
    public int findNext(int i) {
        if (i < -1) {
            return -1;
        }
        int length = this.allHeaders.length - 1;
        boolean z = false;
        int i2 = i;
        while (!z && i2 < length) {
            i = i2 + 1;
            z = filterHeader(i);
            i2 = i;
        }
        if (!z) {
            i2 = -1;
        }
        return i2;
    }

    public boolean hasNext() {
        return this.currentIndex >= 0;
    }

    public final Object next() {
        return nextHeader();
    }

    public Header nextHeader() {
        int i = this.currentIndex;
        if (i < 0) {
            throw new NoSuchElementException("Iteration already finished.");
        }
        this.currentIndex = findNext(i);
        return this.allHeaders[i];
    }

    public void remove() {
        throw new UnsupportedOperationException("Removing headers is not supported.");
    }
}
