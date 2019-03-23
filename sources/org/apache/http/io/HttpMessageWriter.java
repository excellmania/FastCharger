package org.apache.http.io;

import org.apache.http.HttpMessage;

public interface HttpMessageWriter {
    void write(HttpMessage httpMessage);
}
