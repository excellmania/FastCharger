package com.google.android.gms.c;

import android.content.Context;
import android.net.Uri.Builder;
import android.os.Build.VERSION;
import android.os.Looper;
import android.support.v4.os.EnvironmentCompat;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.v;
import com.google.android.gms.c.oz.a;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.lang.Thread.UncaughtExceptionHandler;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;
import java.util.WeakHashMap;

@pa
public class ox implements oz {
    private static final Object a = new Object();
    private static oz b = null;
    private final Object c = new Object();
    private final String d;
    private final tc e;
    private final WeakHashMap<Thread, Boolean> f = new WeakHashMap();

    ox(String str, tc tcVar) {
        this.d = str;
        this.e = tcVar;
        b();
        a();
    }

    public static oz a(Context context, tc tcVar) {
        synchronized (a) {
            if (b == null) {
                if (((Boolean) is.g.c()).booleanValue()) {
                    String str = EnvironmentCompat.MEDIA_UNKNOWN;
                    try {
                        str = context.getApplicationContext().getPackageName();
                    } catch (Throwable th) {
                        sz.e("Cannot obtain package name, proceeding.");
                    }
                    b = new ox(str, tcVar);
                } else {
                    b = new a();
                }
            }
        }
        return b;
    }

    private void a() {
        final UncaughtExceptionHandler defaultUncaughtExceptionHandler = Thread.getDefaultUncaughtExceptionHandler();
        Thread.setDefaultUncaughtExceptionHandler(new UncaughtExceptionHandler() {
            /* JADX WARNING: Failed to extract finally block: empty outs */
            public void uncaughtException(java.lang.Thread r3, java.lang.Throwable r4) {
                /*
                r2 = this;
                r0 = com.google.android.gms.c.ox.this;	 Catch:{ Throwable -> 0x000f }
                r0.a(r3, r4);	 Catch:{ Throwable -> 0x000f }
                r0 = r0;
                if (r0 == 0) goto L_0x000e;
            L_0x0009:
                r0 = r0;
                r0.uncaughtException(r3, r4);
            L_0x000e:
                return;
            L_0x000f:
                r0 = move-exception;
                r0 = "AdMob exception reporter failed reporting the exception.";
                com.google.android.gms.c.sz.c(r0);	 Catch:{ all -> 0x001f }
                r0 = r0;
                if (r0 == 0) goto L_0x000e;
            L_0x0019:
                r0 = r0;
                r0.uncaughtException(r3, r4);
                goto L_0x000e;
            L_0x001f:
                r0 = move-exception;
                r1 = r0;
                if (r1 == 0) goto L_0x0029;
            L_0x0024:
                r1 = r0;
                r1.uncaughtException(r3, r4);
            L_0x0029:
                throw r0;
                */
                throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.c.ox$AnonymousClass1.uncaughtException(java.lang.Thread, java.lang.Throwable):void");
            }
        });
    }

    private void b() {
        a(Looper.getMainLooper().getThread());
    }

    private Throwable c(Throwable th) {
        if (((Boolean) is.h.c()).booleanValue()) {
            return th;
        }
        LinkedList linkedList = new LinkedList();
        Object th2;
        while (th2 != null) {
            linkedList.push(th2);
            th2 = th2.getCause();
        }
        Throwable th3 = null;
        while (!linkedList.isEmpty()) {
            Throwable th4;
            Throwable th5 = (Throwable) linkedList.pop();
            StackTraceElement[] stackTrace = th5.getStackTrace();
            ArrayList arrayList = new ArrayList();
            arrayList.add(new StackTraceElement(th5.getClass().getName(), "<filtered>", "<filtered>", 1));
            int i = 0;
            for (StackTraceElement stackTraceElement : stackTrace) {
                if (a(stackTraceElement.getClassName())) {
                    arrayList.add(stackTraceElement);
                    i = 1;
                } else if (b(stackTraceElement.getClassName())) {
                    arrayList.add(stackTraceElement);
                } else {
                    arrayList.add(new StackTraceElement("<filtered>", "<filtered>", "<filtered>", 1));
                }
            }
            if (i != 0) {
                th4 = th3 == null ? new Throwable(th5.getMessage()) : new Throwable(th5.getMessage(), th3);
                th4.setStackTrace((StackTraceElement[]) arrayList.toArray(new StackTraceElement[0]));
            } else {
                th4 = th3;
            }
            th3 = th4;
        }
        return th3;
    }

    /* Access modifiers changed, original: 0000 */
    public String a(Class cls, Throwable th, String str) {
        StringWriter stringWriter = new StringWriter();
        th.printStackTrace(new PrintWriter(stringWriter));
        return new Builder().scheme("https").path("//pagead2.googlesyndication.com/pagead/gen_204").appendQueryParameter("id", "gmob-apps-report-exception").appendQueryParameter("os", VERSION.RELEASE).appendQueryParameter("api", String.valueOf(VERSION.SDK_INT)).appendQueryParameter("device", v.e().e()).appendQueryParameter("js", this.e.b).appendQueryParameter("appid", this.d).appendQueryParameter("exceptiontype", cls.getName()).appendQueryParameter("stacktrace", stringWriter.toString()).appendQueryParameter("eids", TextUtils.join(",", is.a())).appendQueryParameter("exceptionkey", str).appendQueryParameter("cl", "139965458").appendQueryParameter("rc", "dev").toString();
    }

    public void a(Thread thread) {
        if (thread != null) {
            synchronized (this.c) {
                this.f.put(thread, Boolean.valueOf(true));
            }
            final UncaughtExceptionHandler uncaughtExceptionHandler = thread.getUncaughtExceptionHandler();
            thread.setUncaughtExceptionHandler(new UncaughtExceptionHandler() {
                /* JADX WARNING: Failed to extract finally block: empty outs */
                public void uncaughtException(java.lang.Thread r3, java.lang.Throwable r4) {
                    /*
                    r2 = this;
                    r0 = com.google.android.gms.c.ox.this;	 Catch:{ Throwable -> 0x000f }
                    r0.a(r3, r4);	 Catch:{ Throwable -> 0x000f }
                    r0 = r0;
                    if (r0 == 0) goto L_0x000e;
                L_0x0009:
                    r0 = r0;
                    r0.uncaughtException(r3, r4);
                L_0x000e:
                    return;
                L_0x000f:
                    r0 = move-exception;
                    r0 = "AdMob exception reporter failed reporting the exception.";
                    com.google.android.gms.c.sz.c(r0);	 Catch:{ all -> 0x001f }
                    r0 = r0;
                    if (r0 == 0) goto L_0x000e;
                L_0x0019:
                    r0 = r0;
                    r0.uncaughtException(r3, r4);
                    goto L_0x000e;
                L_0x001f:
                    r0 = move-exception;
                    r1 = r0;
                    if (r1 == 0) goto L_0x0029;
                L_0x0024:
                    r1 = r0;
                    r1.uncaughtException(r3, r4);
                L_0x0029:
                    throw r0;
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.c.ox$AnonymousClass2.uncaughtException(java.lang.Thread, java.lang.Throwable):void");
                }
            });
        }
    }

    /* Access modifiers changed, original: protected */
    public void a(Thread thread, Throwable th) {
        if (a(th)) {
            b(th);
        }
    }

    public void a(Throwable th, String str) {
        Throwable c = c(th);
        if (c != null) {
            Class cls = th.getClass();
            List arrayList = new ArrayList();
            arrayList.add(a(cls, c, str));
            v.e().a(arrayList, v.i().i());
        }
    }

    /* Access modifiers changed, original: protected */
    public boolean a(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        if (str.startsWith((String) is.i.c())) {
            return true;
        }
        try {
            return Class.forName(str).isAnnotationPresent(pa.class);
        } catch (Exception e) {
            Throwable th = e;
            String str2 = "Fail to check class type for class ";
            String valueOf = String.valueOf(str);
            sz.a(valueOf.length() != 0 ? str2.concat(valueOf) : new String(str2), th);
            return false;
        }
    }

    /* Access modifiers changed, original: protected */
    public boolean a(Throwable th) {
        boolean z = true;
        if (th == null) {
            return false;
        }
        boolean z2 = false;
        boolean z3 = false;
        while (th != null) {
            for (StackTraceElement stackTraceElement : th.getStackTrace()) {
                if (a(stackTraceElement.getClassName())) {
                    z3 = true;
                }
                if (getClass().getName().equals(stackTraceElement.getClassName())) {
                    z2 = true;
                }
            }
            th = th.getCause();
        }
        if (!z3 || z2) {
            z = false;
        }
        return z;
    }

    public void b(Throwable th) {
        a(th, "");
    }

    /* Access modifiers changed, original: protected */
    public boolean b(String str) {
        return TextUtils.isEmpty(str) ? false : str.startsWith("android.") || str.startsWith("java.");
    }
}
