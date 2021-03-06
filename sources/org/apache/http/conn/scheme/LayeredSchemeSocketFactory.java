package org.apache.http.conn.scheme;

import java.net.Socket;

public interface LayeredSchemeSocketFactory extends SchemeSocketFactory {
    Socket createLayeredSocket(Socket socket, String str, int i, boolean z);
}
