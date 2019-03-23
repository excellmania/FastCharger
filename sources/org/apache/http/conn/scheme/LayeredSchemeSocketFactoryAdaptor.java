package org.apache.http.conn.scheme;

import java.net.Socket;

@Deprecated
class LayeredSchemeSocketFactoryAdaptor extends SchemeSocketFactoryAdaptor implements LayeredSchemeSocketFactory {
    private final LayeredSocketFactory factory;

    LayeredSchemeSocketFactoryAdaptor(LayeredSocketFactory layeredSocketFactory) {
        super(layeredSocketFactory);
        this.factory = layeredSocketFactory;
    }

    public Socket createLayeredSocket(Socket socket, String str, int i, boolean z) {
        return this.factory.createSocket(socket, str, i, z);
    }
}
