package com.google.android.gms.ads.c;

public class b {
    /* JADX WARNING: No exception handlers in catch block: Catch:{  } */
    @android.support.annotation.WorkerThread
    public void a(java.lang.String r7) {
        /*
        r6 = this;
        r0 = new java.net.URL;	 Catch:{ IndexOutOfBoundsException -> 0x004c, IOException -> 0x00cb, IOException | RuntimeException -> 0x008b }
        r0.<init>(r7);	 Catch:{ IndexOutOfBoundsException -> 0x004c, IOException -> 0x00cb, IOException | RuntimeException -> 0x008b }
        r0 = r0.openConnection();	 Catch:{ IndexOutOfBoundsException -> 0x004c, IOException -> 0x00cb, IOException | RuntimeException -> 0x008b }
        r0 = (java.net.HttpURLConnection) r0;	 Catch:{ IndexOutOfBoundsException -> 0x004c, IOException -> 0x00cb, IOException | RuntimeException -> 0x008b }
        r1 = r0.getResponseCode();	 Catch:{ all -> 0x0047 }
        r2 = 200; // 0xc8 float:2.8E-43 double:9.9E-322;
        if (r1 < r2) goto L_0x0017;
    L_0x0013:
        r2 = 300; // 0x12c float:4.2E-43 double:1.48E-321;
        if (r1 < r2) goto L_0x0043;
    L_0x0017:
        r2 = "HttpUrlPinger";
        r3 = new java.lang.StringBuilder;	 Catch:{ all -> 0x0047 }
        r4 = java.lang.String.valueOf(r7);	 Catch:{ all -> 0x0047 }
        r4 = r4.length();	 Catch:{ all -> 0x0047 }
        r4 = r4 + 65;
        r3.<init>(r4);	 Catch:{ all -> 0x0047 }
        r4 = "Received non-success response code ";
        r3 = r3.append(r4);	 Catch:{ all -> 0x0047 }
        r1 = r3.append(r1);	 Catch:{ all -> 0x0047 }
        r3 = " from pinging URL: ";
        r1 = r1.append(r3);	 Catch:{ all -> 0x0047 }
        r1 = r1.append(r7);	 Catch:{ all -> 0x0047 }
        r1 = r1.toString();	 Catch:{ all -> 0x0047 }
        android.util.Log.w(r2, r1);	 Catch:{ all -> 0x0047 }
    L_0x0043:
        r0.disconnect();	 Catch:{ IndexOutOfBoundsException -> 0x004c, IOException -> 0x00cb, IOException | RuntimeException -> 0x008b }
    L_0x0046:
        return;
    L_0x0047:
        r1 = move-exception;
        r0.disconnect();	 Catch:{ IndexOutOfBoundsException -> 0x004c, IOException -> 0x00cb, IOException | RuntimeException -> 0x008b }
        throw r1;	 Catch:{ IndexOutOfBoundsException -> 0x004c, IOException -> 0x00cb, IOException | RuntimeException -> 0x008b }
    L_0x004c:
        r0 = move-exception;
        r1 = "HttpUrlPinger";
        r2 = r0.getMessage();
        r2 = java.lang.String.valueOf(r2);
        r3 = new java.lang.StringBuilder;
        r4 = java.lang.String.valueOf(r7);
        r4 = r4.length();
        r4 = r4 + 32;
        r5 = java.lang.String.valueOf(r2);
        r5 = r5.length();
        r4 = r4 + r5;
        r3.<init>(r4);
        r4 = "Error while parsing ping URL: ";
        r3 = r3.append(r4);
        r3 = r3.append(r7);
        r4 = ". ";
        r3 = r3.append(r4);
        r2 = r3.append(r2);
        r2 = r2.toString();
        android.util.Log.w(r1, r2, r0);
        goto L_0x0046;
    L_0x008b:
        r0 = move-exception;
    L_0x008c:
        r1 = "HttpUrlPinger";
        r2 = r0.getMessage();
        r2 = java.lang.String.valueOf(r2);
        r3 = new java.lang.StringBuilder;
        r4 = java.lang.String.valueOf(r7);
        r4 = r4.length();
        r4 = r4 + 27;
        r5 = java.lang.String.valueOf(r2);
        r5 = r5.length();
        r4 = r4 + r5;
        r3.<init>(r4);
        r4 = "Error while pinging URL: ";
        r3 = r3.append(r4);
        r3 = r3.append(r7);
        r4 = ". ";
        r3 = r3.append(r4);
        r2 = r3.append(r2);
        r2 = r2.toString();
        android.util.Log.w(r1, r2, r0);
        goto L_0x0046;
    L_0x00cb:
        r0 = move-exception;
        goto L_0x008c;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.ads.c.b.a(java.lang.String):void");
    }
}
