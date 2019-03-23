package com.google.android.gms.c;

import android.support.annotation.Nullable;
import com.google.android.gms.c.sy.a;

@pa
public class ta implements a {
    @Nullable
    private final String a;

    public ta() {
        this(null);
    }

    public ta(@Nullable String str) {
        this.a = str;
    }

    /* JADX WARNING: No exception handlers in catch block: Catch:{  } */
    @android.support.annotation.WorkerThread
    public void a(java.lang.String r5) {
        /*
        r4 = this;
        r1 = "Pinging URL: ";
        r0 = java.lang.String.valueOf(r5);	 Catch:{ IndexOutOfBoundsException -> 0x0068, IOException -> 0x00aa, RuntimeException -> 0x00e8 }
        r2 = r0.length();	 Catch:{ IndexOutOfBoundsException -> 0x0068, IOException -> 0x00aa, RuntimeException -> 0x00e8 }
        if (r2 == 0) goto L_0x0062;
    L_0x000c:
        r0 = r1.concat(r0);	 Catch:{ IndexOutOfBoundsException -> 0x0068, IOException -> 0x00aa, RuntimeException -> 0x00e8 }
    L_0x0010:
        com.google.android.gms.c.sz.b(r0);	 Catch:{ IndexOutOfBoundsException -> 0x0068, IOException -> 0x00aa, RuntimeException -> 0x00e8 }
        r0 = new java.net.URL;	 Catch:{ IndexOutOfBoundsException -> 0x0068, IOException -> 0x00aa, RuntimeException -> 0x00e8 }
        r0.<init>(r5);	 Catch:{ IndexOutOfBoundsException -> 0x0068, IOException -> 0x00aa, RuntimeException -> 0x00e8 }
        r0 = r0.openConnection();	 Catch:{ IndexOutOfBoundsException -> 0x0068, IOException -> 0x00aa, RuntimeException -> 0x00e8 }
        r0 = (java.net.HttpURLConnection) r0;	 Catch:{ IndexOutOfBoundsException -> 0x0068, IOException -> 0x00aa, RuntimeException -> 0x00e8 }
        r1 = com.google.android.gms.c.hf.a();	 Catch:{ all -> 0x00a5 }
        r2 = 1;
        r3 = r4.a;	 Catch:{ all -> 0x00a5 }
        r1.a(r2, r0, r3);	 Catch:{ all -> 0x00a5 }
        r1 = r0.getResponseCode();	 Catch:{ all -> 0x00a5 }
        r2 = 200; // 0xc8 float:2.8E-43 double:9.9E-322;
        if (r1 < r2) goto L_0x0034;
    L_0x0030:
        r2 = 300; // 0x12c float:4.2E-43 double:1.48E-321;
        if (r1 < r2) goto L_0x005e;
    L_0x0034:
        r2 = new java.lang.StringBuilder;	 Catch:{ all -> 0x00a5 }
        r3 = java.lang.String.valueOf(r5);	 Catch:{ all -> 0x00a5 }
        r3 = r3.length();	 Catch:{ all -> 0x00a5 }
        r3 = r3 + 65;
        r2.<init>(r3);	 Catch:{ all -> 0x00a5 }
        r3 = "Received non-success response code ";
        r2 = r2.append(r3);	 Catch:{ all -> 0x00a5 }
        r1 = r2.append(r1);	 Catch:{ all -> 0x00a5 }
        r2 = " from pinging URL: ";
        r1 = r1.append(r2);	 Catch:{ all -> 0x00a5 }
        r1 = r1.append(r5);	 Catch:{ all -> 0x00a5 }
        r1 = r1.toString();	 Catch:{ all -> 0x00a5 }
        com.google.android.gms.c.sz.e(r1);	 Catch:{ all -> 0x00a5 }
    L_0x005e:
        r0.disconnect();	 Catch:{ IndexOutOfBoundsException -> 0x0068, IOException -> 0x00aa, RuntimeException -> 0x00e8 }
    L_0x0061:
        return;
    L_0x0062:
        r0 = new java.lang.String;	 Catch:{ IndexOutOfBoundsException -> 0x0068, IOException -> 0x00aa, RuntimeException -> 0x00e8 }
        r0.<init>(r1);	 Catch:{ IndexOutOfBoundsException -> 0x0068, IOException -> 0x00aa, RuntimeException -> 0x00e8 }
        goto L_0x0010;
    L_0x0068:
        r0 = move-exception;
        r0 = r0.getMessage();
        r0 = java.lang.String.valueOf(r0);
        r1 = new java.lang.StringBuilder;
        r2 = java.lang.String.valueOf(r5);
        r2 = r2.length();
        r2 = r2 + 32;
        r3 = java.lang.String.valueOf(r0);
        r3 = r3.length();
        r2 = r2 + r3;
        r1.<init>(r2);
        r2 = "Error while parsing ping URL: ";
        r1 = r1.append(r2);
        r1 = r1.append(r5);
        r2 = ". ";
        r1 = r1.append(r2);
        r0 = r1.append(r0);
        r0 = r0.toString();
        com.google.android.gms.c.sz.e(r0);
        goto L_0x0061;
    L_0x00a5:
        r1 = move-exception;
        r0.disconnect();	 Catch:{ IndexOutOfBoundsException -> 0x0068, IOException -> 0x00aa, RuntimeException -> 0x00e8 }
        throw r1;	 Catch:{ IndexOutOfBoundsException -> 0x0068, IOException -> 0x00aa, RuntimeException -> 0x00e8 }
    L_0x00aa:
        r0 = move-exception;
        r0 = r0.getMessage();
        r0 = java.lang.String.valueOf(r0);
        r1 = new java.lang.StringBuilder;
        r2 = java.lang.String.valueOf(r5);
        r2 = r2.length();
        r2 = r2 + 27;
        r3 = java.lang.String.valueOf(r0);
        r3 = r3.length();
        r2 = r2 + r3;
        r1.<init>(r2);
        r2 = "Error while pinging URL: ";
        r1 = r1.append(r2);
        r1 = r1.append(r5);
        r2 = ". ";
        r1 = r1.append(r2);
        r0 = r1.append(r0);
        r0 = r0.toString();
        com.google.android.gms.c.sz.e(r0);
        goto L_0x0061;
    L_0x00e8:
        r0 = move-exception;
        r0 = r0.getMessage();
        r0 = java.lang.String.valueOf(r0);
        r1 = new java.lang.StringBuilder;
        r2 = java.lang.String.valueOf(r5);
        r2 = r2.length();
        r2 = r2 + 27;
        r3 = java.lang.String.valueOf(r0);
        r3 = r3.length();
        r2 = r2 + r3;
        r1.<init>(r2);
        r2 = "Error while pinging URL: ";
        r1 = r1.append(r2);
        r1 = r1.append(r5);
        r2 = ". ";
        r1 = r1.append(r2);
        r0 = r1.append(r0);
        r0 = r0.toString();
        com.google.android.gms.c.sz.e(r0);
        goto L_0x0061;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.c.ta.a(java.lang.String):void");
    }
}
