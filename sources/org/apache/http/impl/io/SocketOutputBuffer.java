package org.apache.http.impl.io;

import java.net.Socket;
import org.apache.http.params.HttpParams;

public class SocketOutputBuffer extends AbstractSessionOutputBuffer {
    public SocketOutputBuffer(Socket socket, int i, HttpParams httpParams) {
        int i2 = 1024;
        if (socket == null) {
            throw new IllegalArgumentException("Socket may not be null");
        }
        int sendBufferSize = i < 0 ? socket.getSendBufferSize() : i;
        if (sendBufferSize >= 1024) {
            i2 = sendBufferSize;
        }
        init(socket.getOutputStream(), i2, httpParams);
    }
}
