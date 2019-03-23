package org.apache.http.conn;

import java.io.IOException;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.net.SocketTimeoutException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import org.apache.http.annotation.Immutable;
import org.apache.http.conn.scheme.SocketFactory;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.params.HttpParams;

@Immutable
@Deprecated
public final class MultihomePlainSocketFactory implements SocketFactory {
    private static final MultihomePlainSocketFactory DEFAULT_FACTORY = new MultihomePlainSocketFactory();

    private MultihomePlainSocketFactory() {
    }

    public static MultihomePlainSocketFactory getSocketFactory() {
        return DEFAULT_FACTORY;
    }

    public Socket connectSocket(Socket socket, String str, int i, InetAddress inetAddress, int i2, HttpParams httpParams) {
        if (str == null) {
            throw new IllegalArgumentException("Target host may not be null.");
        } else if (httpParams == null) {
            throw new IllegalArgumentException("Parameters may not be null.");
        } else {
            Socket socket2;
            IOException iOException;
            Socket createSocket = socket == null ? createSocket() : socket;
            if (inetAddress != null || i2 > 0) {
                if (i2 < 0) {
                    i2 = 0;
                }
                createSocket.bind(new InetSocketAddress(inetAddress, i2));
            }
            int connectionTimeout = HttpConnectionParams.getConnectionTimeout(httpParams);
            InetAddress[] allByName = InetAddress.getAllByName(str);
            ArrayList arrayList = new ArrayList(allByName.length);
            arrayList.addAll(Arrays.asList(allByName));
            Collections.shuffle(arrayList);
            IOException e = null;
            Iterator it = arrayList.iterator();
            while (true) {
                socket2 = createSocket;
                iOException = e;
                if (!it.hasNext()) {
                    break;
                }
                InetAddress inetAddress2 = (InetAddress) it.next();
                try {
                    socket2.connect(new InetSocketAddress(inetAddress2, i), connectionTimeout);
                    break;
                } catch (SocketTimeoutException e2) {
                    throw new ConnectTimeoutException("Connect to " + inetAddress2 + " timed out");
                } catch (IOException e3) {
                    e = e3;
                    createSocket = new Socket();
                }
            }
            if (iOException == null) {
                return socket2;
            }
            throw iOException;
        }
    }

    public Socket createSocket() {
        return new Socket();
    }

    public final boolean isSecure(Socket socket) {
        if (socket == null) {
            throw new IllegalArgumentException("Socket may not be null.");
        } else if (socket.getClass() != Socket.class) {
            throw new IllegalArgumentException("Socket not created by this factory.");
        } else if (!socket.isClosed()) {
            return false;
        } else {
            throw new IllegalArgumentException("Socket is closed.");
        }
    }
}
