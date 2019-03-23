package org.apache.http.conn;

import java.io.InputStream;
import org.apache.http.annotation.NotThreadSafe;

@NotThreadSafe
public class BasicEofSensorWatcher implements EofSensorWatcher {
    protected final boolean attemptReuse;
    protected final ManagedClientConnection managedConn;

    public BasicEofSensorWatcher(ManagedClientConnection managedClientConnection, boolean z) {
        if (managedClientConnection == null) {
            throw new IllegalArgumentException("Connection may not be null.");
        }
        this.managedConn = managedClientConnection;
        this.attemptReuse = z;
    }

    public boolean eofDetected(InputStream inputStream) {
        try {
            if (this.attemptReuse) {
                inputStream.close();
                this.managedConn.markReusable();
            }
            this.managedConn.releaseConnection();
            return false;
        } catch (Throwable th) {
            this.managedConn.releaseConnection();
        }
    }

    public boolean streamAbort(InputStream inputStream) {
        this.managedConn.abortConnection();
        return false;
    }

    public boolean streamClosed(InputStream inputStream) {
        try {
            if (this.attemptReuse) {
                inputStream.close();
                this.managedConn.markReusable();
            }
            this.managedConn.releaseConnection();
            return false;
        } catch (Throwable th) {
            this.managedConn.releaseConnection();
        }
    }
}
