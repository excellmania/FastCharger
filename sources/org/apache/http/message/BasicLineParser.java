package org.apache.http.message;

import org.apache.http.Header;
import org.apache.http.HttpVersion;
import org.apache.http.ParseException;
import org.apache.http.ProtocolVersion;
import org.apache.http.RequestLine;
import org.apache.http.StatusLine;
import org.apache.http.protocol.HTTP;
import org.apache.http.util.CharArrayBuffer;

public class BasicLineParser implements LineParser {
    public static final BasicLineParser DEFAULT = new BasicLineParser();
    protected final ProtocolVersion protocol;

    public BasicLineParser() {
        this(null);
    }

    public BasicLineParser(ProtocolVersion protocolVersion) {
        if (protocolVersion == null) {
            protocolVersion = HttpVersion.HTTP_1_1;
        }
        this.protocol = protocolVersion;
    }

    public static final Header parseHeader(String str, LineParser lineParser) {
        if (str == null) {
            throw new IllegalArgumentException("Value to parse may not be null");
        }
        if (lineParser == null) {
            lineParser = DEFAULT;
        }
        CharArrayBuffer charArrayBuffer = new CharArrayBuffer(str.length());
        charArrayBuffer.append(str);
        return lineParser.parseHeader(charArrayBuffer);
    }

    public static final ProtocolVersion parseProtocolVersion(String str, LineParser lineParser) {
        if (str == null) {
            throw new IllegalArgumentException("Value to parse may not be null.");
        }
        if (lineParser == null) {
            lineParser = DEFAULT;
        }
        CharArrayBuffer charArrayBuffer = new CharArrayBuffer(str.length());
        charArrayBuffer.append(str);
        return lineParser.parseProtocolVersion(charArrayBuffer, new ParserCursor(0, str.length()));
    }

    public static final RequestLine parseRequestLine(String str, LineParser lineParser) {
        if (str == null) {
            throw new IllegalArgumentException("Value to parse may not be null.");
        }
        if (lineParser == null) {
            lineParser = DEFAULT;
        }
        CharArrayBuffer charArrayBuffer = new CharArrayBuffer(str.length());
        charArrayBuffer.append(str);
        return lineParser.parseRequestLine(charArrayBuffer, new ParserCursor(0, str.length()));
    }

    public static final StatusLine parseStatusLine(String str, LineParser lineParser) {
        if (str == null) {
            throw new IllegalArgumentException("Value to parse may not be null.");
        }
        if (lineParser == null) {
            lineParser = DEFAULT;
        }
        CharArrayBuffer charArrayBuffer = new CharArrayBuffer(str.length());
        charArrayBuffer.append(str);
        return lineParser.parseStatusLine(charArrayBuffer, new ParserCursor(0, str.length()));
    }

    /* Access modifiers changed, original: protected */
    public ProtocolVersion createProtocolVersion(int i, int i2) {
        return this.protocol.forVersion(i, i2);
    }

    /* Access modifiers changed, original: protected */
    public RequestLine createRequestLine(String str, String str2, ProtocolVersion protocolVersion) {
        return new BasicRequestLine(str, str2, protocolVersion);
    }

    /* Access modifiers changed, original: protected */
    public StatusLine createStatusLine(ProtocolVersion protocolVersion, int i, String str) {
        return new BasicStatusLine(protocolVersion, i, str);
    }

    public boolean hasProtocolVersion(CharArrayBuffer charArrayBuffer, ParserCursor parserCursor) {
        boolean z = true;
        if (charArrayBuffer == null) {
            throw new IllegalArgumentException("Char array buffer may not be null");
        } else if (parserCursor == null) {
            throw new IllegalArgumentException("Parser cursor may not be null");
        } else {
            int pos = parserCursor.getPos();
            String protocol = this.protocol.getProtocol();
            int length = protocol.length();
            if (charArrayBuffer.length() < length + 4) {
                return false;
            }
            if (pos < 0) {
                pos = (charArrayBuffer.length() - 4) - length;
            } else if (pos == 0) {
                while (pos < charArrayBuffer.length() && HTTP.isWhitespace(charArrayBuffer.charAt(pos))) {
                    pos++;
                }
            }
            if ((pos + length) + 4 > charArrayBuffer.length()) {
                return false;
            }
            int i = 0;
            boolean z2 = true;
            while (z2 && i < length) {
                z2 = charArrayBuffer.charAt(pos + i) == protocol.charAt(i);
                i++;
            }
            if (!z2) {
                z = z2;
            } else if (charArrayBuffer.charAt(pos + length) != '/') {
                z = false;
            }
            return z;
        }
    }

    public Header parseHeader(CharArrayBuffer charArrayBuffer) {
        return new BufferedHeader(charArrayBuffer);
    }

    public ProtocolVersion parseProtocolVersion(CharArrayBuffer charArrayBuffer, ParserCursor parserCursor) {
        Object obj = 1;
        if (charArrayBuffer == null) {
            throw new IllegalArgumentException("Char array buffer may not be null");
        } else if (parserCursor == null) {
            throw new IllegalArgumentException("Parser cursor may not be null");
        } else {
            String protocol = this.protocol.getProtocol();
            int length = protocol.length();
            int pos = parserCursor.getPos();
            int upperBound = parserCursor.getUpperBound();
            skipWhitespace(charArrayBuffer, parserCursor);
            int pos2 = parserCursor.getPos();
            if ((pos2 + length) + 4 > upperBound) {
                throw new ParseException(new StringBuffer().append("Not a valid protocol version: ").append(charArrayBuffer.substring(pos, upperBound)).toString());
            }
            int i = 0;
            Object obj2 = 1;
            while (obj2 != null && i < length) {
                obj2 = charArrayBuffer.charAt(pos2 + i) == protocol.charAt(i) ? 1 : null;
                i++;
            }
            if (obj2 == null) {
                obj = obj2;
            } else if (charArrayBuffer.charAt(pos2 + length) != '/') {
                obj = null;
            }
            if (obj == null) {
                throw new ParseException(new StringBuffer().append("Not a valid protocol version: ").append(charArrayBuffer.substring(pos, upperBound)).toString());
            }
            int i2 = (length + 1) + pos2;
            int indexOf = charArrayBuffer.indexOf(46, i2, upperBound);
            if (indexOf == -1) {
                throw new ParseException(new StringBuffer().append("Invalid protocol version number: ").append(charArrayBuffer.substring(pos, upperBound)).toString());
            }
            try {
                int parseInt = Integer.parseInt(charArrayBuffer.substringTrimmed(i2, indexOf));
                indexOf++;
                i2 = charArrayBuffer.indexOf(32, indexOf, upperBound);
                if (i2 == -1) {
                    i2 = upperBound;
                }
                try {
                    indexOf = Integer.parseInt(charArrayBuffer.substringTrimmed(indexOf, i2));
                    parserCursor.updatePos(i2);
                    return createProtocolVersion(parseInt, indexOf);
                } catch (NumberFormatException e) {
                    throw new ParseException(new StringBuffer().append("Invalid protocol minor version number: ").append(charArrayBuffer.substring(pos, upperBound)).toString());
                }
            } catch (NumberFormatException e2) {
                throw new ParseException(new StringBuffer().append("Invalid protocol major version number: ").append(charArrayBuffer.substring(pos, upperBound)).toString());
            }
        }
    }

    public RequestLine parseRequestLine(CharArrayBuffer charArrayBuffer, ParserCursor parserCursor) {
        if (charArrayBuffer == null) {
            throw new IllegalArgumentException("Char array buffer may not be null");
        } else if (parserCursor == null) {
            throw new IllegalArgumentException("Parser cursor may not be null");
        } else {
            int pos = parserCursor.getPos();
            int upperBound = parserCursor.getUpperBound();
            try {
                skipWhitespace(charArrayBuffer, parserCursor);
                int pos2 = parserCursor.getPos();
                int indexOf = charArrayBuffer.indexOf(32, pos2, upperBound);
                if (indexOf < 0) {
                    throw new ParseException(new StringBuffer().append("Invalid request line: ").append(charArrayBuffer.substring(pos, upperBound)).toString());
                }
                String substringTrimmed = charArrayBuffer.substringTrimmed(pos2, indexOf);
                parserCursor.updatePos(indexOf);
                skipWhitespace(charArrayBuffer, parserCursor);
                indexOf = parserCursor.getPos();
                int indexOf2 = charArrayBuffer.indexOf(32, indexOf, upperBound);
                if (indexOf2 < 0) {
                    throw new ParseException(new StringBuffer().append("Invalid request line: ").append(charArrayBuffer.substring(pos, upperBound)).toString());
                }
                String substringTrimmed2 = charArrayBuffer.substringTrimmed(indexOf, indexOf2);
                parserCursor.updatePos(indexOf2);
                ProtocolVersion parseProtocolVersion = parseProtocolVersion(charArrayBuffer, parserCursor);
                skipWhitespace(charArrayBuffer, parserCursor);
                if (parserCursor.atEnd()) {
                    return createRequestLine(substringTrimmed, substringTrimmed2, parseProtocolVersion);
                }
                throw new ParseException(new StringBuffer().append("Invalid request line: ").append(charArrayBuffer.substring(pos, upperBound)).toString());
            } catch (IndexOutOfBoundsException e) {
                throw new ParseException(new StringBuffer().append("Invalid request line: ").append(charArrayBuffer.substring(pos, upperBound)).toString());
            }
        }
    }

    public StatusLine parseStatusLine(CharArrayBuffer charArrayBuffer, ParserCursor parserCursor) {
        if (charArrayBuffer == null) {
            throw new IllegalArgumentException("Char array buffer may not be null");
        } else if (parserCursor == null) {
            throw new IllegalArgumentException("Parser cursor may not be null");
        } else {
            int pos = parserCursor.getPos();
            int upperBound = parserCursor.getUpperBound();
            try {
                ProtocolVersion parseProtocolVersion = parseProtocolVersion(charArrayBuffer, parserCursor);
                skipWhitespace(charArrayBuffer, parserCursor);
                int pos2 = parserCursor.getPos();
                int indexOf = charArrayBuffer.indexOf(32, pos2, upperBound);
                int i = indexOf < 0 ? upperBound : indexOf;
                String substringTrimmed = charArrayBuffer.substringTrimmed(pos2, i);
                indexOf = 0;
                while (indexOf < substringTrimmed.length()) {
                    if (Character.isDigit(substringTrimmed.charAt(indexOf))) {
                        indexOf++;
                    } else {
                        throw new ParseException(new StringBuffer().append("Status line contains invalid status code: ").append(charArrayBuffer.substring(pos, upperBound)).toString());
                    }
                }
                return createStatusLine(parseProtocolVersion, Integer.parseInt(substringTrimmed), i < upperBound ? charArrayBuffer.substringTrimmed(i, upperBound) : "");
            } catch (NumberFormatException e) {
                throw new ParseException(new StringBuffer().append("Status line contains invalid status code: ").append(charArrayBuffer.substring(pos, upperBound)).toString());
            } catch (IndexOutOfBoundsException e2) {
                throw new ParseException(new StringBuffer().append("Invalid status line: ").append(charArrayBuffer.substring(pos, upperBound)).toString());
            }
        }
    }

    /* Access modifiers changed, original: protected */
    public void skipWhitespace(CharArrayBuffer charArrayBuffer, ParserCursor parserCursor) {
        int pos = parserCursor.getPos();
        int upperBound = parserCursor.getUpperBound();
        while (pos < upperBound && HTTP.isWhitespace(charArrayBuffer.charAt(pos))) {
            pos++;
        }
        parserCursor.updatePos(pos);
    }
}
