package org.apache.http.impl.entity;

import org.apache.http.Header;
import org.apache.http.HeaderElement;
import org.apache.http.HttpMessage;
import org.apache.http.ParseException;
import org.apache.http.ProtocolException;
import org.apache.http.entity.ContentLengthStrategy;
import org.apache.http.params.CoreProtocolPNames;
import org.apache.http.protocol.HTTP;

public class LaxContentLengthStrategy implements ContentLengthStrategy {
    public long determineLength(HttpMessage httpMessage) {
        if (httpMessage == null) {
            throw new IllegalArgumentException("HTTP message may not be null");
        }
        boolean isParameterTrue = httpMessage.getParams().isParameterTrue(CoreProtocolPNames.STRICT_TRANSFER_ENCODING);
        Header firstHeader = httpMessage.getFirstHeader("Transfer-Encoding");
        Header firstHeader2 = httpMessage.getFirstHeader("Content-Length");
        int i;
        if (firstHeader != null) {
            try {
                HeaderElement[] elements = firstHeader.getElements();
                if (isParameterTrue) {
                    i = 0;
                    while (i < elements.length) {
                        String name = elements[i].getName();
                        if (name == null || name.length() <= 0 || name.equalsIgnoreCase(HTTP.CHUNK_CODING) || name.equalsIgnoreCase(HTTP.IDENTITY_CODING)) {
                            i++;
                        } else {
                            throw new ProtocolException(new StringBuffer().append("Unsupported transfer encoding: ").append(name).toString());
                        }
                    }
                }
                i = elements.length;
                if (HTTP.IDENTITY_CODING.equalsIgnoreCase(firstHeader.getValue())) {
                    return -1;
                }
                if (i > 0 && HTTP.CHUNK_CODING.equalsIgnoreCase(elements[i - 1].getName())) {
                    return -2;
                }
                if (!isParameterTrue) {
                    return -1;
                }
                throw new ProtocolException("Chunk-encoding must be the last one applied");
            } catch (ParseException e) {
                throw new ProtocolException(new StringBuffer().append("Invalid Transfer-Encoding header value: ").append(firstHeader).toString(), e);
            }
        } else if (firstHeader2 == null) {
            return -1;
        } else {
            Header[] headers = httpMessage.getHeaders("Content-Length");
            if (!isParameterTrue || headers.length <= 1) {
                long parseLong;
                i = headers.length - 1;
                while (i >= 0) {
                    Header header = headers[i];
                    try {
                        parseLong = Long.parseLong(header.getValue());
                        break;
                    } catch (NumberFormatException e2) {
                        if (isParameterTrue) {
                            throw new ProtocolException(new StringBuffer().append("Invalid content length: ").append(header.getValue()).toString());
                        }
                        i--;
                    }
                }
                parseLong = -1;
                return parseLong < 0 ? -1 : parseLong;
            } else {
                throw new ProtocolException("Multiple content length headers");
            }
        }
    }
}
