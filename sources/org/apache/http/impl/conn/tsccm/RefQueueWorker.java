package org.apache.http.impl.conn.tsccm;

import java.lang.ref.ReferenceQueue;

@Deprecated
public class RefQueueWorker implements Runnable {
    protected final RefQueueHandler refHandler;
    protected final ReferenceQueue<?> refQueue;
    protected volatile Thread workerThread;

    public RefQueueWorker(ReferenceQueue<?> referenceQueue, RefQueueHandler refQueueHandler) {
        if (referenceQueue == null) {
            throw new IllegalArgumentException("Queue must not be null.");
        } else if (refQueueHandler == null) {
            throw new IllegalArgumentException("Handler must not be null.");
        } else {
            this.refQueue = referenceQueue;
            this.refHandler = refQueueHandler;
        }
    }

    public void run() {
        if (this.workerThread == null) {
            this.workerThread = Thread.currentThread();
        }
        while (this.workerThread == Thread.currentThread()) {
            try {
                this.refHandler.handleReference(this.refQueue.remove());
            } catch (InterruptedException e) {
            }
        }
    }

    public void shutdown() {
        Thread thread = this.workerThread;
        if (thread != null) {
            this.workerThread = null;
            thread.interrupt();
        }
    }

    public String toString() {
        return "RefQueueWorker::" + this.workerThread;
    }
}
