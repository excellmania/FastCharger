package com.google.android.gms.c;

import android.os.Build.VERSION;
import android.os.ConditionVariable;
import com.google.android.gms.c.av.a;
import java.util.Random;
import java.util.concurrent.Executor;
import java.util.concurrent.ThreadLocalRandom;

public class bc {
    protected static volatile up a = null;
    private static final ConditionVariable d = new ConditionVariable();
    private static volatile Random e = null;
    protected Boolean b;
    private dn c;

    public bc(dn dnVar) {
        this.c = dnVar;
        a(dnVar.c());
    }

    private void a(Executor executor) {
        executor.execute(new Runnable() {
            public void run() {
                if (bc.this.b == null) {
                    synchronized (bc.d) {
                        if (bc.this.b != null) {
                            return;
                        }
                        boolean booleanValue = ((Boolean) is.bp.c()).booleanValue();
                        if (booleanValue) {
                            bc.a = new up(bc.this.c.a(), "ADSHIELD", null);
                        }
                        bc.this.b = Boolean.valueOf(booleanValue);
                        bc.d.open();
                    }
                }
            }
        });
    }

    private static Random c() {
        if (e == null) {
            synchronized (bc.class) {
                if (e == null) {
                    e = new Random();
                }
            }
        }
        return e;
    }

    public int a() {
        try {
            return VERSION.SDK_INT >= 21 ? ThreadLocalRandom.current().nextInt() : c().nextInt();
        } catch (RuntimeException e) {
            return c().nextInt();
        }
    }

    public void a(int i, int i2, long j) {
        try {
            d.block();
            if (this.b.booleanValue() && a != null && this.c.i()) {
                eq aVar = new a();
                aVar.a = this.c.a().getPackageName();
                aVar.b = Long.valueOf(j);
                up.a a = a.a(eq.a(aVar));
                a.b(i2);
                a.a(i);
                a.a(this.c.g());
            }
        } catch (Exception e) {
        }
    }
}
