package org.apache.http.impl;

import java.net.InetAddress;
import java.net.Socket;
import java.net.SocketException;
import org.apache.http.HttpInetConnection;
import org.apache.http.impl.io.SocketInputBuffer;
import org.apache.http.impl.io.SocketOutputBuffer;
import org.apache.http.io.SessionInputBuffer;
import org.apache.http.io.SessionOutputBuffer;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.params.HttpParams;

public class SocketHttpServerConnection extends AbstractHttpServerConnection implements HttpInetConnection {
    private volatile boolean open;
    private volatile Socket socket = null;

    /* Access modifiers changed, original: protected */
    public void assertNotOpen() {
        if (this.open) {
            throw new IllegalStateException("Connection is already open");
        }
    }

    /* Access modifiers changed, original: protected */
    public void assertOpen() {
        if (!this.open) {
            throw new IllegalStateException("Connection is not open");
        }
    }

    /* Access modifiers changed, original: protected */
    public void bind(Socket socket, HttpParams httpParams) {
        if (socket == null) {
            throw new IllegalArgumentException("Socket may not be null");
        } else if (httpParams == null) {
            throw new IllegalArgumentException("HTTP parameters may not be null");
        } else {
            this.socket = socket;
            int socketBufferSize = HttpConnectionParams.getSocketBufferSize(httpParams);
            init(createHttpDataReceiver(socket, socketBufferSize, httpParams), createHttpDataTransmitter(socket, socketBufferSize, httpParams), httpParams);
            this.open = true;
        }
    }

    /*  JADX ERROR: NullPointerException in pass: RegionMakerVisitor
        java.lang.NullPointerException
        	at java.base/java.util.BitSet.and(BitSet.java:917)
        	at jadx.core.utils.BlockUtils.getPathCross(BlockUtils.java:434)
        	at jadx.core.dex.visitors.regions.RegionMaker.processTryCatchBlocks(RegionMaker.java:925)
        	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:52)
        	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:27)
        	at jadx.core.dex.visitors.DepthTraversal.lambda$visit$1(DepthTraversal.java:14)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1540)
        	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:14)
        	at jadx.core.ProcessClass.process(ProcessClass.java:32)
        	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:292)
        	at jadx.api.JavaClass.decompile(JavaClass.java:62)
        	at jadx.api.JadxDecompiler.lambda$appendSourcesSave$0(JadxDecompiler.java:200)
        */
    public void close() {
        /*
        r2 = this;
        r1 = 0;
        r0 = r2.open;
        if (r0 != 0) goto L_0x0006;
    L_0x0005:
        return;
    L_0x0006:
        r2.open = r1;
        r2.open = r1;
        r1 = r2.socket;
        r2.doFlush();	 Catch:{ all -> 0x0019 }
        r1.shutdownOutput();	 Catch:{ IOException -> 0x001e, UnsupportedOperationException -> 0x0022 }
    L_0x0012:
        r1.shutdownInput();	 Catch:{ IOException | UnsupportedOperationException -> 0x0020, UnsupportedOperationException -> 0x0022 }
    L_0x0015:
        r1.close();
        goto L_0x0005;
    L_0x0019:
        r0 = move-exception;
        r1.close();
        throw r0;
    L_0x001e:
        r0 = move-exception;
        goto L_0x0012;
    L_0x0020:
        r0 = move-exception;
        goto L_0x0015;
    L_0x0022:
        r0 = move-exception;
        goto L_0x0015;
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.http.impl.SocketHttpServerConnection.close():void");
    }

    /* Access modifiers changed, original: protected */
    public SessionInputBuffer createHttpDataReceiver(Socket socket, int i, HttpParams httpParams) {
        return createSessionInputBuffer(socket, i, httpParams);
    }

    /* Access modifiers changed, original: protected */
    public SessionOutputBuffer createHttpDataTransmitter(Socket socket, int i, HttpParams httpParams) {
        return createSessionOutputBuffer(socket, i, httpParams);
    }

    /* Access modifiers changed, original: protected */
    public SessionInputBuffer createSessionInputBuffer(Socket socket, int i, HttpParams httpParams) {
        return new SocketInputBuffer(socket, i, httpParams);
    }

    /* Access modifiers changed, original: protected */
    public SessionOutputBuffer createSessionOutputBuffer(Socket socket, int i, HttpParams httpParams) {
        return new SocketOutputBuffer(socket, i, httpParams);
    }

    public InetAddress getLocalAddress() {
        return this.socket != null ? this.socket.getLocalAddress() : null;
    }

    public int getLocalPort() {
        return this.socket != null ? this.socket.getLocalPort() : -1;
    }

    public InetAddress getRemoteAddress() {
        return this.socket != null ? this.socket.getInetAddress() : null;
    }

    public int getRemotePort() {
        return this.socket != null ? this.socket.getPort() : -1;
    }

    /* Access modifiers changed, original: protected */
    public Socket getSocket() {
        return this.socket;
    }

    public int getSocketTimeout() {
        int i = -1;
        if (this.socket == null) {
            return i;
        }
        try {
            return this.socket.getSoTimeout();
        } catch (SocketException e) {
            return i;
        }
    }

    public boolean isOpen() {
        return this.open;
    }

    public void setSocketTimeout(int i) {
        assertOpen();
        if (this.socket != null) {
            try {
                this.socket.setSoTimeout(i);
            } catch (SocketException e) {
            }
        }
    }

    public void shutdown() {
        this.open = false;
        Socket socket = this.socket;
        if (socket != null) {
            socket.close();
        }
    }
}
