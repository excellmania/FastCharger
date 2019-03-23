package org.apache.http.message;

import java.util.NoSuchElementException;
import org.apache.http.HeaderIterator;
import org.apache.http.ParseException;
import org.apache.http.TokenIterator;

public class BasicTokenIterator implements TokenIterator {
    public static final String HTTP_SEPARATORS = " ,;=()<>@:\\\"/[]?{}\t";
    protected String currentHeader;
    protected String currentToken;
    protected final HeaderIterator headerIt;
    protected int searchPos;

    public BasicTokenIterator(HeaderIterator headerIterator) {
        if (headerIterator == null) {
            throw new IllegalArgumentException("Header iterator must not be null.");
        }
        this.headerIt = headerIterator;
        this.searchPos = findNext(-1);
    }

    /* Access modifiers changed, original: protected */
    public String createToken(String str, int i, int i2) {
        return str.substring(i, i2);
    }

    /* Access modifiers changed, original: protected */
    public int findNext(int i) {
        int findTokenSeparator;
        if (i >= 0) {
            findTokenSeparator = findTokenSeparator(i);
        } else if (!this.headerIt.hasNext()) {
            return -1;
        } else {
            this.currentHeader = this.headerIt.nextHeader().getValue();
            findTokenSeparator = 0;
        }
        int findTokenStart = findTokenStart(findTokenSeparator);
        if (findTokenStart < 0) {
            this.currentToken = null;
            return -1;
        }
        findTokenSeparator = findTokenEnd(findTokenStart);
        this.currentToken = createToken(this.currentHeader, findTokenStart, findTokenSeparator);
        return findTokenSeparator;
    }

    /* Access modifiers changed, original: protected */
    public int findTokenEnd(int i) {
        if (i < 0) {
            throw new IllegalArgumentException(new StringBuffer().append("Token start position must not be negative: ").append(i).toString());
        }
        int length = this.currentHeader.length();
        int i2 = i + 1;
        while (i2 < length && isTokenChar(this.currentHeader.charAt(i2))) {
            i2++;
        }
        return i2;
    }

    /* Access modifiers changed, original: protected */
    public int findTokenSeparator(int i) {
        if (i < 0) {
            throw new IllegalArgumentException(new StringBuffer().append("Search position must not be negative: ").append(i).toString());
        }
        Object obj = null;
        int length = this.currentHeader.length();
        int i2 = i;
        while (obj == null && i2 < length) {
            char charAt = this.currentHeader.charAt(i2);
            if (isTokenSeparator(charAt)) {
                obj = 1;
            } else if (isWhitespace(charAt)) {
                i2++;
            } else if (isTokenChar(charAt)) {
                throw new ParseException(new StringBuffer().append("Tokens without separator (pos ").append(i2).append("): ").append(this.currentHeader).toString());
            } else {
                throw new ParseException(new StringBuffer().append("Invalid character after token (pos ").append(i2).append("): ").append(this.currentHeader).toString());
            }
        }
        return i2;
    }

    /* Access modifiers changed, original: protected */
    public int findTokenStart(int i) {
        if (i < 0) {
            throw new IllegalArgumentException(new StringBuffer().append("Search position must not be negative: ").append(i).toString());
        }
        Object obj = null;
        int i2 = i;
        while (obj == null && this.currentHeader != null) {
            int length = this.currentHeader.length();
            Object obj2 = obj;
            int i3 = i2;
            Object obj3 = obj2;
            while (obj3 == null && i3 < length) {
                char charAt = this.currentHeader.charAt(i3);
                if (isTokenSeparator(charAt) || isWhitespace(charAt)) {
                    i3++;
                } else if (isTokenChar(this.currentHeader.charAt(i3))) {
                    obj3 = 1;
                } else {
                    throw new ParseException(new StringBuffer().append("Invalid character before token (pos ").append(i3).append("): ").append(this.currentHeader).toString());
                }
            }
            if (obj3 == null) {
                if (this.headerIt.hasNext()) {
                    this.currentHeader = this.headerIt.nextHeader().getValue();
                    i3 = 0;
                } else {
                    this.currentHeader = null;
                }
            }
            obj2 = obj3;
            i2 = i3;
            obj = obj2;
        }
        return obj != null ? i2 : -1;
    }

    public boolean hasNext() {
        return this.currentToken != null;
    }

    /* Access modifiers changed, original: protected */
    public boolean isHttpSeparator(char c) {
        return HTTP_SEPARATORS.indexOf(c) >= 0;
    }

    /* Access modifiers changed, original: protected */
    public boolean isTokenChar(char c) {
        return Character.isLetterOrDigit(c) ? true : Character.isISOControl(c) ? false : !isHttpSeparator(c);
    }

    /* Access modifiers changed, original: protected */
    public boolean isTokenSeparator(char c) {
        return c == ',';
    }

    /* Access modifiers changed, original: protected */
    public boolean isWhitespace(char c) {
        return c == 9 || Character.isSpaceChar(c);
    }

    public final Object next() {
        return nextToken();
    }

    public String nextToken() {
        if (this.currentToken == null) {
            throw new NoSuchElementException("Iteration already finished.");
        }
        String str = this.currentToken;
        this.searchPos = findNext(this.searchPos);
        return str;
    }

    public final void remove() {
        throw new UnsupportedOperationException("Removing tokens is not supported.");
    }
}
