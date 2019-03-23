package org.apache.http.impl.conn.tsccm;

import org.apache.http.conn.ClientConnectionManager;
import org.apache.http.impl.conn.AbstractPoolEntry;
import org.apache.http.impl.conn.AbstractPooledConnAdapter;

public class BasicPooledConnAdapter extends AbstractPooledConnAdapter {
    protected BasicPooledConnAdapter(ThreadSafeClientConnManager threadSafeClientConnManager, AbstractPoolEntry abstractPoolEntry) {
        super(threadSafeClientConnManager, abstractPoolEntry);
        markReusable();
    }

    /* Access modifiers changed, original: protected */
    public void detach() {
        super.detach();
    }

    /* Access modifiers changed, original: protected */
    public ClientConnectionManager getManager() {
        return super.getManager();
    }

    /* Access modifiers changed, original: protected */
    public AbstractPoolEntry getPoolEntry() {
        return super.getPoolEntry();
    }
}
