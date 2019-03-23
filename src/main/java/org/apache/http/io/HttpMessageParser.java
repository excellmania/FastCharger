package org.apache.http.io;

import org.apache.http.HttpMessage;

public interface HttpMessageParser {
    HttpMessage parse();
}
