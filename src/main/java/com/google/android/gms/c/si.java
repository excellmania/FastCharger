package com.google.android.gms.c;

import android.os.Process;
import com.google.android.gms.ads.internal.v;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;

@pa
public final class si {
    private static final ThreadPoolExecutor a = new ThreadPoolExecutor(10, 10, 1, TimeUnit.MINUTES, new LinkedBlockingQueue(), a("Default"));
    private static final ThreadPoolExecutor b = new ThreadPoolExecutor(5, 5, 1, TimeUnit.MINUTES, new LinkedBlockingQueue(), a("Loader"));

    static {
        a.allowCoreThreadTimeOut(true);
        b.allowCoreThreadTimeOut(true);
    }

    public static th<Void> a(int i, final Runnable runnable) {
        return i == 1 ? a(b, new Callable<Void>() {
            /* renamed from: a */
            public Void call() {
                runnable.run();
                return null;
            }
        }) : a(a, new Callable<Void>() {
            /* renamed from: a */
            public Void call() {
                runnable.run();
                return null;
            }
        });
    }

    public static th<Void> a(Runnable runnable) {
        return a(0, runnable);
    }

    public static <T> th<T> a(Callable<T> callable) {
        return a(a, (Callable) callable);
    }

    public static <T> th<T> a(ExecutorService executorService, final Callable<T> callable) {
        final te teVar = new te();
        try {
            final Future submit = executorService.submit(new Runnable() {
                public void run() {
                    try {
                        Process.setThreadPriority(10);
                        teVar.b(callable.call());
                    } catch (Exception e) {
                        v.i().a(e, "AdThreadPool.submit");
                        teVar.a(e);
                    }
                }
            });
            teVar.b(new Runnable() {
                public void run() {
                    if (teVar.isCancelled()) {
                        submit.cancel(true);
                    }
                }
            });
        } catch (RejectedExecutionException e) {
            sz.c("Thread execution is rejected.", e);
            teVar.cancel(true);
        }
        return teVar;
    }

    private static ThreadFactory a(final String str) {
        return new ThreadFactory() {
            private final AtomicInteger b = new AtomicInteger(1);

            public Thread newThread(Runnable runnable) {
                String str = str;
                return new Thread(runnable, new StringBuilder(String.valueOf(str).length() + 23).append("AdWorker(").append(str).append(") #").append(this.b.getAndIncrement()).toString());
            }
        };
    }
}
