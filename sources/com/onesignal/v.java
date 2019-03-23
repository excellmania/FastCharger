package com.onesignal;

import org.apache.http.client.methods.HttpPost;
import org.apache.http.client.methods.HttpPut;
import org.json.JSONObject;

class v {

    static class a {
        a() {
        }

        /* Access modifiers changed, original: 0000 */
        public void a(int i, String str, Throwable th) {
        }

        /* Access modifiers changed, original: 0000 */
        public void a(String str) {
        }
    }

    static void a(final String str, final a aVar) {
        new Thread(new Runnable() {
            public void run() {
                v.b(str, null, null, aVar);
            }
        }).start();
    }

    static void a(final String str, final JSONObject jSONObject, final a aVar) {
        new Thread(new Runnable() {
            public void run() {
                v.b(str, HttpPut.METHOD_NAME, jSONObject, aVar);
            }
        }).start();
    }

    static void b(String str, a aVar) {
        b(str, null, null, aVar);
    }

    /* JADX WARNING: Removed duplicated region for block: B:43:0x0159 A:{Catch:{ all -> 0x01ac }} */
    /* JADX WARNING: Removed duplicated region for block: B:63:? A:{SYNTHETIC, RETURN} */
    /* JADX WARNING: Removed duplicated region for block: B:45:0x015f  */
    /* JADX WARNING: Removed duplicated region for block: B:52:0x018f  */
    private static void b(java.lang.String r8, java.lang.String r9, org.json.JSONObject r10, com.onesignal.v.a r11) {
        /*
        r1 = 0;
        r2 = -1;
        r0 = com.onesignal.t.d.DEBUG;	 Catch:{ Throwable -> 0x01b1, all -> 0x01ae }
        r3 = new java.lang.StringBuilder;	 Catch:{ Throwable -> 0x01b1, all -> 0x01ae }
        r3.<init>();	 Catch:{ Throwable -> 0x01b1, all -> 0x01ae }
        r4 = "https://onesignal.com/api/v1/";
        r3 = r3.append(r4);	 Catch:{ Throwable -> 0x01b1, all -> 0x01ae }
        r3 = r3.append(r8);	 Catch:{ Throwable -> 0x01b1, all -> 0x01ae }
        r3 = r3.toString();	 Catch:{ Throwable -> 0x01b1, all -> 0x01ae }
        com.onesignal.t.a(r0, r3);	 Catch:{ Throwable -> 0x01b1, all -> 0x01ae }
        r0 = new java.net.URL;	 Catch:{ Throwable -> 0x01b1, all -> 0x01ae }
        r3 = new java.lang.StringBuilder;	 Catch:{ Throwable -> 0x01b1, all -> 0x01ae }
        r3.<init>();	 Catch:{ Throwable -> 0x01b1, all -> 0x01ae }
        r4 = "https://onesignal.com/api/v1/";
        r3 = r3.append(r4);	 Catch:{ Throwable -> 0x01b1, all -> 0x01ae }
        r3 = r3.append(r8);	 Catch:{ Throwable -> 0x01b1, all -> 0x01ae }
        r3 = r3.toString();	 Catch:{ Throwable -> 0x01b1, all -> 0x01ae }
        r0.<init>(r3);	 Catch:{ Throwable -> 0x01b1, all -> 0x01ae }
        r0 = r0.openConnection();	 Catch:{ Throwable -> 0x01b1, all -> 0x01ae }
        r0 = (java.net.HttpURLConnection) r0;	 Catch:{ Throwable -> 0x01b1, all -> 0x01ae }
        r3 = 0;
        r0.setUseCaches(r3);	 Catch:{ Throwable -> 0x012a, all -> 0x018a }
        r3 = 120000; // 0x1d4c0 float:1.68156E-40 double:5.9288E-319;
        r0.setConnectTimeout(r3);	 Catch:{ Throwable -> 0x012a, all -> 0x018a }
        r3 = 120000; // 0x1d4c0 float:1.68156E-40 double:5.9288E-319;
        r0.setReadTimeout(r3);	 Catch:{ Throwable -> 0x012a, all -> 0x018a }
        if (r10 == 0) goto L_0x004e;
    L_0x004a:
        r3 = 1;
        r0.setDoInput(r3);	 Catch:{ Throwable -> 0x012a, all -> 0x018a }
    L_0x004e:
        if (r9 == 0) goto L_0x005e;
    L_0x0050:
        r3 = "Content-Type";
        r4 = "application/json; charset=UTF-8";
        r0.setRequestProperty(r3, r4);	 Catch:{ Throwable -> 0x012a, all -> 0x018a }
        r0.setRequestMethod(r9);	 Catch:{ Throwable -> 0x012a, all -> 0x018a }
        r3 = 1;
        r0.setDoOutput(r3);	 Catch:{ Throwable -> 0x012a, all -> 0x018a }
    L_0x005e:
        if (r10 == 0) goto L_0x0091;
    L_0x0060:
        r3 = r10.toString();	 Catch:{ Throwable -> 0x012a, all -> 0x018a }
        r4 = com.onesignal.t.d.DEBUG;	 Catch:{ Throwable -> 0x012a, all -> 0x018a }
        r5 = new java.lang.StringBuilder;	 Catch:{ Throwable -> 0x012a, all -> 0x018a }
        r5.<init>();	 Catch:{ Throwable -> 0x012a, all -> 0x018a }
        r5 = r5.append(r9);	 Catch:{ Throwable -> 0x012a, all -> 0x018a }
        r6 = " SEND JSON: ";
        r5 = r5.append(r6);	 Catch:{ Throwable -> 0x012a, all -> 0x018a }
        r5 = r5.append(r3);	 Catch:{ Throwable -> 0x012a, all -> 0x018a }
        r5 = r5.toString();	 Catch:{ Throwable -> 0x012a, all -> 0x018a }
        com.onesignal.t.a(r4, r5);	 Catch:{ Throwable -> 0x012a, all -> 0x018a }
        r4 = "UTF-8";
        r3 = r3.getBytes(r4);	 Catch:{ Throwable -> 0x012a, all -> 0x018a }
        r4 = r3.length;	 Catch:{ Throwable -> 0x012a, all -> 0x018a }
        r0.setFixedLengthStreamingMode(r4);	 Catch:{ Throwable -> 0x012a, all -> 0x018a }
        r4 = r0.getOutputStream();	 Catch:{ Throwable -> 0x012a, all -> 0x018a }
        r4.write(r3);	 Catch:{ Throwable -> 0x012a, all -> 0x018a }
    L_0x0091:
        r2 = r0.getResponseCode();	 Catch:{ Throwable -> 0x012a, all -> 0x018a }
        r3 = 200; // 0xc8 float:2.8E-43 double:9.9E-322;
        if (r2 != r3) goto L_0x00e1;
    L_0x0099:
        r1 = r0.getInputStream();	 Catch:{ Throwable -> 0x012a, all -> 0x018a }
        r3 = new java.util.Scanner;	 Catch:{ Throwable -> 0x012a, all -> 0x018a }
        r4 = "UTF-8";
        r3.<init>(r1, r4);	 Catch:{ Throwable -> 0x012a, all -> 0x018a }
        r1 = "\\A";
        r1 = r3.useDelimiter(r1);	 Catch:{ Throwable -> 0x012a, all -> 0x018a }
        r1 = r1.hasNext();	 Catch:{ Throwable -> 0x012a, all -> 0x018a }
        if (r1 == 0) goto L_0x00de;
    L_0x00b0:
        r1 = r3.next();	 Catch:{ Throwable -> 0x012a, all -> 0x018a }
    L_0x00b4:
        r3.close();	 Catch:{ Throwable -> 0x012a, all -> 0x018a }
        r3 = com.onesignal.t.d.DEBUG;	 Catch:{ Throwable -> 0x012a, all -> 0x018a }
        r4 = new java.lang.StringBuilder;	 Catch:{ Throwable -> 0x012a, all -> 0x018a }
        r4.<init>();	 Catch:{ Throwable -> 0x012a, all -> 0x018a }
        r4 = r4.append(r9);	 Catch:{ Throwable -> 0x012a, all -> 0x018a }
        r5 = " RECEIVED JSON: ";
        r4 = r4.append(r5);	 Catch:{ Throwable -> 0x012a, all -> 0x018a }
        r4 = r4.append(r1);	 Catch:{ Throwable -> 0x012a, all -> 0x018a }
        r4 = r4.toString();	 Catch:{ Throwable -> 0x012a, all -> 0x018a }
        com.onesignal.t.a(r3, r4);	 Catch:{ Throwable -> 0x012a, all -> 0x018a }
        if (r11 == 0) goto L_0x00d8;
    L_0x00d5:
        r11.a(r1);	 Catch:{ Throwable -> 0x012a, all -> 0x018a }
    L_0x00d8:
        if (r0 == 0) goto L_0x00dd;
    L_0x00da:
        r0.disconnect();
    L_0x00dd:
        return;
    L_0x00de:
        r1 = "";
        goto L_0x00b4;
    L_0x00e1:
        r3 = r0.getErrorStream();	 Catch:{ Throwable -> 0x012a, all -> 0x018a }
        if (r3 != 0) goto L_0x00eb;
    L_0x00e7:
        r3 = r0.getInputStream();	 Catch:{ Throwable -> 0x012a, all -> 0x018a }
    L_0x00eb:
        if (r3 == 0) goto L_0x0167;
    L_0x00ed:
        r4 = new java.util.Scanner;	 Catch:{ Throwable -> 0x012a, all -> 0x018a }
        r1 = "UTF-8";
        r4.<init>(r3, r1);	 Catch:{ Throwable -> 0x012a, all -> 0x018a }
        r1 = "\\A";
        r1 = r4.useDelimiter(r1);	 Catch:{ Throwable -> 0x012a, all -> 0x018a }
        r1 = r1.hasNext();	 Catch:{ Throwable -> 0x012a, all -> 0x018a }
        if (r1 == 0) goto L_0x0164;
    L_0x0100:
        r1 = r4.next();	 Catch:{ Throwable -> 0x012a, all -> 0x018a }
    L_0x0104:
        r4.close();	 Catch:{ Throwable -> 0x012a, all -> 0x018a }
        r3 = com.onesignal.t.d.WARN;	 Catch:{ Throwable -> 0x012a, all -> 0x018a }
        r4 = new java.lang.StringBuilder;	 Catch:{ Throwable -> 0x012a, all -> 0x018a }
        r4.<init>();	 Catch:{ Throwable -> 0x012a, all -> 0x018a }
        r4 = r4.append(r9);	 Catch:{ Throwable -> 0x012a, all -> 0x018a }
        r5 = " RECEIVED JSON: ";
        r4 = r4.append(r5);	 Catch:{ Throwable -> 0x012a, all -> 0x018a }
        r4 = r4.append(r1);	 Catch:{ Throwable -> 0x012a, all -> 0x018a }
        r4 = r4.toString();	 Catch:{ Throwable -> 0x012a, all -> 0x018a }
        com.onesignal.t.a(r3, r4);	 Catch:{ Throwable -> 0x012a, all -> 0x018a }
    L_0x0123:
        if (r11 == 0) goto L_0x00d8;
    L_0x0125:
        r3 = 0;
        r11.a(r2, r1, r3);	 Catch:{ Throwable -> 0x012a, all -> 0x018a }
        goto L_0x00d8;
    L_0x012a:
        r1 = move-exception;
        r7 = r1;
        r1 = r2;
        r2 = r0;
        r0 = r7;
    L_0x012f:
        r3 = r0 instanceof java.net.ConnectException;	 Catch:{ all -> 0x01ac }
        if (r3 != 0) goto L_0x0137;
    L_0x0133:
        r3 = r0 instanceof java.net.UnknownHostException;	 Catch:{ all -> 0x01ac }
        if (r3 == 0) goto L_0x0193;
    L_0x0137:
        r3 = com.onesignal.t.d.INFO;	 Catch:{ all -> 0x01ac }
        r4 = new java.lang.StringBuilder;	 Catch:{ all -> 0x01ac }
        r4.<init>();	 Catch:{ all -> 0x01ac }
        r5 = "Could not send last request, device is offline. Throwable: ";
        r4 = r4.append(r5);	 Catch:{ all -> 0x01ac }
        r5 = r0.getClass();	 Catch:{ all -> 0x01ac }
        r5 = r5.getName();	 Catch:{ all -> 0x01ac }
        r4 = r4.append(r5);	 Catch:{ all -> 0x01ac }
        r4 = r4.toString();	 Catch:{ all -> 0x01ac }
        com.onesignal.t.a(r3, r4);	 Catch:{ all -> 0x01ac }
    L_0x0157:
        if (r11 == 0) goto L_0x015d;
    L_0x0159:
        r3 = 0;
        r11.a(r1, r3, r0);	 Catch:{ all -> 0x01ac }
    L_0x015d:
        if (r2 == 0) goto L_0x00dd;
    L_0x015f:
        r2.disconnect();
        goto L_0x00dd;
    L_0x0164:
        r1 = "";
        goto L_0x0104;
    L_0x0167:
        r3 = com.onesignal.t.d.WARN;	 Catch:{ Throwable -> 0x012a, all -> 0x018a }
        r4 = new java.lang.StringBuilder;	 Catch:{ Throwable -> 0x012a, all -> 0x018a }
        r4.<init>();	 Catch:{ Throwable -> 0x012a, all -> 0x018a }
        r4 = r4.append(r9);	 Catch:{ Throwable -> 0x012a, all -> 0x018a }
        r5 = " HTTP Code: ";
        r4 = r4.append(r5);	 Catch:{ Throwable -> 0x012a, all -> 0x018a }
        r4 = r4.append(r2);	 Catch:{ Throwable -> 0x012a, all -> 0x018a }
        r5 = " No response body!";
        r4 = r4.append(r5);	 Catch:{ Throwable -> 0x012a, all -> 0x018a }
        r4 = r4.toString();	 Catch:{ Throwable -> 0x012a, all -> 0x018a }
        com.onesignal.t.a(r3, r4);	 Catch:{ Throwable -> 0x012a, all -> 0x018a }
        goto L_0x0123;
    L_0x018a:
        r1 = move-exception;
        r2 = r0;
        r0 = r1;
    L_0x018d:
        if (r2 == 0) goto L_0x0192;
    L_0x018f:
        r2.disconnect();
    L_0x0192:
        throw r0;
    L_0x0193:
        r3 = com.onesignal.t.d.WARN;	 Catch:{ all -> 0x01ac }
        r4 = new java.lang.StringBuilder;	 Catch:{ all -> 0x01ac }
        r4.<init>();	 Catch:{ all -> 0x01ac }
        r4 = r4.append(r9);	 Catch:{ all -> 0x01ac }
        r5 = " Error thrown from network stack. ";
        r4 = r4.append(r5);	 Catch:{ all -> 0x01ac }
        r4 = r4.toString();	 Catch:{ all -> 0x01ac }
        com.onesignal.t.a(r3, r4, r0);	 Catch:{ all -> 0x01ac }
        goto L_0x0157;
    L_0x01ac:
        r0 = move-exception;
        goto L_0x018d;
    L_0x01ae:
        r0 = move-exception;
        r2 = r1;
        goto L_0x018d;
    L_0x01b1:
        r0 = move-exception;
        r7 = r2;
        r2 = r1;
        r1 = r7;
        goto L_0x012f;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.onesignal.v.b(java.lang.String, java.lang.String, org.json.JSONObject, com.onesignal.v$a):void");
    }

    static void b(final String str, final JSONObject jSONObject, final a aVar) {
        new Thread(new Runnable() {
            public void run() {
                v.b(str, HttpPost.METHOD_NAME, jSONObject, aVar);
            }
        }).start();
    }

    static void c(String str, JSONObject jSONObject, a aVar) {
        b(str, HttpPut.METHOD_NAME, jSONObject, aVar);
    }

    static void d(String str, JSONObject jSONObject, a aVar) {
        b(str, HttpPost.METHOD_NAME, jSONObject, aVar);
    }
}
