package com.google.android.gms.c;

import android.os.Handler;
import android.os.Message;

public final class y<L> {
    private final a a;
    private volatile L b;

    public interface c<L> {
        void a();

        void a(L l);
    }

    private final class a extends Handler {
        final /* synthetic */ y a;

        public void handleMessage(Message message) {
            boolean z = true;
            if (message.what != 1) {
                z = false;
            }
            com.google.android.gms.common.internal.c.b(z);
            this.a.b((c) message.obj);
        }
    }

    public static final class b<L> {
        private final L a;
        private final String b;

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof b)) {
                return false;
            }
            b bVar = (b) obj;
            return this.a == bVar.a && this.b.equals(bVar.b);
        }

        public int hashCode() {
            return (System.identityHashCode(this.a) * 31) + this.b.hashCode();
        }
    }

    public void a() {
        this.b = null;
    }

    public void a(c<? super L> cVar) {
        com.google.android.gms.common.internal.c.a((Object) cVar, (Object) "Notifier must not be null");
        this.a.sendMessage(this.a.obtainMessage(1, cVar));
    }

    /* Access modifiers changed, original: 0000 */
    public void b(c<? super L> cVar) {
        Object obj = this.b;
        if (obj == null) {
            cVar.a();
            return;
        }
        try {
            cVar.a(obj);
        } catch (RuntimeException e) {
            cVar.a();
            throw e;
        }
    }
}
