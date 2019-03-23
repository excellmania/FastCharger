package com.google.android.gms.c;

import android.content.Context;
import android.location.Location;
import android.os.Bundle;
import android.os.RemoteException;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.v;
import com.google.android.gms.c.lw.b;
import com.google.android.gms.c.lw.c;
import com.google.android.gms.c.pp.a;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import org.json.JSONException;
import org.json.JSONObject;

@pa
public final class py extends a {
    private static final Object a = new Object();
    private static py b;
    private final Context c;
    private final px d;
    private final il e;
    private final lw f;

    py(Context context, il ilVar, px pxVar) {
        this.c = context;
        this.d = pxVar;
        this.e = ilVar;
        this.f = new lw(context.getApplicationContext() != null ? context.getApplicationContext() : context, tc.a(), ilVar.a(), new so<ls>(this) {
            public void a(ls lsVar) {
                lsVar.a("/log", kq.i);
            }
        }, new b());
    }

    private static Location a(th<Location> thVar) {
        try {
            return (Location) thVar.get(((Long) is.cv.c()).longValue(), TimeUnit.MILLISECONDS);
        } catch (Exception e) {
            sz.c("Exception caught while getting location", e);
            return null;
        }
    }

    private static pj a(Context context, lw lwVar, il ilVar, px pxVar, pg pgVar) {
        Bundle bundle;
        Future future;
        final px pxVar2;
        final Context context2;
        final pg pgVar2;
        th a;
        sz.b("Starting ad request from service using: AFMA_getAd");
        is.a(context);
        th a2 = pxVar.i.a();
        final jb jbVar = new jb(((Boolean) is.U.c()).booleanValue(), "load_ad", pgVar.d.b);
        if (pgVar.a > 10 && pgVar.B != -1) {
            jbVar.a(jbVar.a(pgVar.B), "cts");
        }
        iz a3 = jbVar.a();
        Bundle bundle2 = (pgVar.a < 4 || pgVar.o == null) ? null : pgVar.o;
        if (!((Boolean) is.al.c()).booleanValue() || pxVar.a == null) {
            bundle = bundle2;
            future = null;
        } else {
            if (bundle2 == null && ((Boolean) is.am.c()).booleanValue()) {
                sf.a("contentInfo is not present, but we'll still launch the app index task");
                bundle2 = new Bundle();
            }
            if (bundle2 != null) {
                pxVar2 = pxVar;
                context2 = context;
                pgVar2 = pgVar;
                bundle = bundle2;
                future = si.a(new Callable<Void>() {
                    /* renamed from: a */
                    public Void call() {
                        String str = pgVar2.g.packageName;
                        return null;
                    }
                });
            } else {
                bundle = bundle2;
                future = null;
            }
        }
        tf tfVar = new tf(null);
        Bundle bundle3 = pgVar.c.c;
        Object obj = (bundle3 == null || bundle3.getString("_ad") == null) ? null : 1;
        if (pgVar.I && obj == null) {
            a = pxVar.f.a(pgVar.f);
        } else {
            Object a4 = tfVar;
        }
        qf a5 = v.n().a(context);
        if (a5.m == -1) {
            sz.b("Device is offline.");
            return new pj(2);
        }
        String string;
        String uuid = pgVar.a >= 7 ? pgVar.w : UUID.randomUUID().toString();
        final qb qbVar = new qb(uuid, pgVar.f.packageName);
        if (pgVar.c.c != null) {
            string = pgVar.c.c.getString("_ad");
            if (string != null) {
                return qa.a(context, pgVar, string);
            }
        }
        List a6 = pxVar.d.a(pgVar);
        String a7 = pxVar.j.a(pgVar);
        if (future != null) {
            try {
                sf.a("Waiting for app index fetching task.");
                future.get(((Long) is.an.c()).longValue(), TimeUnit.MILLISECONDS);
                sf.a("App index fetching task completed.");
            } catch (InterruptedException | ExecutionException e) {
                sz.c("Failed to fetch app index signal", e);
            } catch (TimeoutException e2) {
                sz.b("Timed out waiting for app index fetching task");
            }
        }
        string = pgVar.g.packageName;
        b(a2);
        JSONObject a8 = qa.a(context, new pw().a(pgVar).a(a5).a(null).a(a(a4)).a(b(a2)).a(a7).a(a6).b(bundle).b(null).a(pxVar.b.a(context)));
        if (a8 == null) {
            return new pj(0);
        }
        if (pgVar.a < 7) {
            try {
                a8.put("request_id", uuid);
            } catch (JSONException e3) {
            }
        }
        try {
            a8.put("prefetch_mode", "url");
        } catch (JSONException e4) {
            sz.c("Failed putting prefetch parameters to ad request.", e4);
        }
        final String jSONObject = a8.toString();
        jbVar.a(a3, "arc");
        final iz a9 = jbVar.a();
        final lw lwVar2 = lwVar;
        sj.a.post(new Runnable() {
            public void run() {
                c a = lwVar2.a();
                qbVar.a(a);
                jbVar.a(a9, "rwc");
                final iz a2 = jbVar.a();
                a.a(new tk.c<lx>() {
                    public void a(lx lxVar) {
                        jbVar.a(a2, "jsf");
                        jbVar.b();
                        lxVar.a("/invalidRequest", qbVar.b);
                        lxVar.a("/loadAdURL", qbVar.c);
                        lxVar.a("/loadAd", qbVar.d);
                        try {
                            lxVar.a("AFMA_getAd", jSONObject);
                        } catch (Exception e) {
                            sz.b("Error requesting an ad url", e);
                        }
                    }
                }, new tk.a(this) {
                    public void a() {
                    }
                });
            }
        });
        pj pjVar;
        try {
            qe qeVar = (qe) qbVar.b().get(10, TimeUnit.SECONDS);
            if (qeVar == null) {
                pjVar = new pj(0);
                return pjVar;
            } else if (qeVar.a() != -2) {
                pjVar = new pj(qeVar.a());
                pxVar2 = pxVar;
                context2 = context;
                pgVar2 = pgVar;
                sj.a.post(new Runnable() {
                    public void run() {
                        pxVar2.e.a(context2, qbVar, pgVar2.k);
                    }
                });
                return pjVar;
            } else {
                if (jbVar.e() != null) {
                    jbVar.a(jbVar.e(), "rur");
                }
                pjVar = null;
                if (!TextUtils.isEmpty(qeVar.i())) {
                    pjVar = qa.a(context, pgVar, qeVar.i());
                }
                if (pjVar == null && !TextUtils.isEmpty(qeVar.e())) {
                    pjVar = a(pgVar, context, pgVar.k.b, qeVar.e(), null, qeVar, jbVar, pxVar);
                }
                if (pjVar == null) {
                    pjVar = new pj(0);
                }
                jbVar.a(a3, "tts");
                pjVar.y = jbVar.c();
                pxVar2 = pxVar;
                context2 = context;
                pgVar2 = pgVar;
                sj.a.post(/* anonymous class already generated */);
                return pjVar;
            }
        } catch (Exception e5) {
            pjVar = new pj(0);
            return pjVar;
        } finally {
            pxVar2 = pxVar;
            context2 = context;
            pgVar2 = pgVar;
            sj.a.post(/* anonymous class already generated */);
        }
    }

    /* JADX WARNING: Unknown top exception splitter block from list: {B:63:0x0112=Splitter:B:63:0x0112, B:54:0x0107=Splitter:B:54:0x0107, B:83:0x015d=Splitter:B:83:0x015d} */
    /* JADX WARNING: No exception handlers in catch block: Catch:{  } */
    /* JADX WARNING: Missing block: B:32:0x00a4, code skipped:
            r6 = r7.toString();
     */
    /* JADX WARNING: Missing block: B:35:?, code skipped:
            r4 = new java.io.InputStreamReader(r2.getInputStream());
     */
    /* JADX WARNING: Missing block: B:37:?, code skipped:
            r5 = com.google.android.gms.ads.internal.v.e().a((java.io.InputStreamReader) r4);
     */
    /* JADX WARNING: Missing block: B:39:?, code skipped:
            com.google.android.gms.common.util.i.a(r4);
            a(r6, r12, r5, r9);
            r8.a(r6, r12, r5);
     */
    /* JADX WARNING: Missing block: B:40:0x00c3, code skipped:
            if (r19 == null) goto L_0x00d2;
     */
    /* JADX WARNING: Missing block: B:41:0x00c5, code skipped:
            r19.a(r3, "ufe");
     */
    /* JADX WARNING: Missing block: B:42:0x00d2, code skipped:
            r3 = r8.a(r10);
     */
    /* JADX WARNING: Missing block: B:44:?, code skipped:
            r2.disconnect();
     */
    /* JADX WARNING: Missing block: B:61:0x0110, code skipped:
            r3 = th;
     */
    /* JADX WARNING: Missing block: B:62:0x0111, code skipped:
            r4 = null;
     */
    /* JADX WARNING: Missing block: B:64:?, code skipped:
            com.google.android.gms.common.util.i.a(r4);
     */
    /* JADX WARNING: Missing block: B:65:0x0115, code skipped:
            throw r3;
     */
    /* JADX WARNING: Missing block: B:84:?, code skipped:
            com.google.android.gms.c.sz.e("Received error HTTP response code: " + r9);
            r3 = new com.google.android.gms.c.pj(0);
     */
    /* JADX WARNING: Missing block: B:86:?, code skipped:
            r2.disconnect();
     */
    /* JADX WARNING: Missing block: B:95:0x0194, code skipped:
            r3 = th;
     */
    /* JADX WARNING: Missing block: B:100:?, code skipped:
            return r3;
     */
    /* JADX WARNING: Missing block: B:104:?, code skipped:
            return r3;
     */
    public static com.google.android.gms.c.pj a(com.google.android.gms.c.pg r13, android.content.Context r14, java.lang.String r15, java.lang.String r16, java.lang.String r17, com.google.android.gms.c.qe r18, com.google.android.gms.c.jb r19, com.google.android.gms.c.px r20) {
        /*
        if (r19 == 0) goto L_0x00db;
    L_0x0002:
        r2 = r19.a();
        r3 = r2;
    L_0x0007:
        r8 = new com.google.android.gms.c.qc;	 Catch:{ IOException -> 0x00e6 }
        r2 = r18.c();	 Catch:{ IOException -> 0x00e6 }
        r8.<init>(r13, r2);	 Catch:{ IOException -> 0x00e6 }
        r4 = "AdRequestServiceImpl: Sending request: ";
        r2 = java.lang.String.valueOf(r16);	 Catch:{ IOException -> 0x00e6 }
        r5 = r2.length();	 Catch:{ IOException -> 0x00e6 }
        if (r5 == 0) goto L_0x00df;
    L_0x001c:
        r2 = r4.concat(r2);	 Catch:{ IOException -> 0x00e6 }
    L_0x0020:
        com.google.android.gms.c.sz.b(r2);	 Catch:{ IOException -> 0x00e6 }
        r4 = new java.net.URL;	 Catch:{ IOException -> 0x00e6 }
        r0 = r16;
        r4.<init>(r0);	 Catch:{ IOException -> 0x00e6 }
        r2 = 0;
        r5 = com.google.android.gms.ads.internal.v.k();	 Catch:{ IOException -> 0x00e6 }
        r10 = r5.b();	 Catch:{ IOException -> 0x00e6 }
        r6 = r2;
        r7 = r4;
    L_0x0035:
        r2 = r7.openConnection();	 Catch:{ IOException -> 0x00e6 }
        r2 = (java.net.HttpURLConnection) r2;	 Catch:{ IOException -> 0x00e6 }
        r4 = com.google.android.gms.ads.internal.v.e();	 Catch:{ all -> 0x010b }
        r5 = 0;
        r4.a(r14, r15, r5, r2);	 Catch:{ all -> 0x010b }
        r4 = android.text.TextUtils.isEmpty(r17);	 Catch:{ all -> 0x010b }
        if (r4 != 0) goto L_0x0056;
    L_0x0049:
        r4 = r18.g();	 Catch:{ all -> 0x010b }
        if (r4 == 0) goto L_0x0056;
    L_0x004f:
        r4 = "x-afma-drt-cookie";
        r0 = r17;
        r2.addRequestProperty(r4, r0);	 Catch:{ all -> 0x010b }
    L_0x0056:
        r4 = r13.J;	 Catch:{ all -> 0x010b }
        r5 = android.text.TextUtils.isEmpty(r4);	 Catch:{ all -> 0x010b }
        if (r5 != 0) goto L_0x0068;
    L_0x005e:
        r5 = "Sending webview cookie in ad request header.";
        com.google.android.gms.c.sz.b(r5);	 Catch:{ all -> 0x010b }
        r5 = "Cookie";
        r2.addRequestProperty(r5, r4);	 Catch:{ all -> 0x010b }
    L_0x0068:
        if (r18 == 0) goto L_0x0094;
    L_0x006a:
        r4 = r18.d();	 Catch:{ all -> 0x010b }
        r4 = android.text.TextUtils.isEmpty(r4);	 Catch:{ all -> 0x010b }
        if (r4 != 0) goto L_0x0094;
    L_0x0074:
        r4 = 1;
        r2.setDoOutput(r4);	 Catch:{ all -> 0x010b }
        r4 = r18.d();	 Catch:{ all -> 0x010b }
        r9 = r4.getBytes();	 Catch:{ all -> 0x010b }
        r4 = r9.length;	 Catch:{ all -> 0x010b }
        r2.setFixedLengthStreamingMode(r4);	 Catch:{ all -> 0x010b }
        r5 = 0;
        r4 = new java.io.BufferedOutputStream;	 Catch:{ all -> 0x0105 }
        r12 = r2.getOutputStream();	 Catch:{ all -> 0x0105 }
        r4.<init>(r12);	 Catch:{ all -> 0x0105 }
        r4.write(r9);	 Catch:{ all -> 0x0197 }
        com.google.android.gms.common.util.i.a(r4);	 Catch:{ all -> 0x010b }
    L_0x0094:
        r9 = r2.getResponseCode();	 Catch:{ all -> 0x010b }
        r12 = r2.getHeaderFields();	 Catch:{ all -> 0x010b }
        r4 = 200; // 0xc8 float:2.8E-43 double:9.9E-322;
        if (r9 < r4) goto L_0x0116;
    L_0x00a0:
        r4 = 300; // 0x12c float:4.2E-43 double:1.48E-321;
        if (r9 >= r4) goto L_0x0116;
    L_0x00a4:
        r6 = r7.toString();	 Catch:{ all -> 0x010b }
        r5 = 0;
        r4 = new java.io.InputStreamReader;	 Catch:{ all -> 0x0110 }
        r7 = r2.getInputStream();	 Catch:{ all -> 0x0110 }
        r4.<init>(r7);	 Catch:{ all -> 0x0110 }
        r5 = com.google.android.gms.ads.internal.v.e();	 Catch:{ all -> 0x0194 }
        r5 = r5.a(r4);	 Catch:{ all -> 0x0194 }
        com.google.android.gms.common.util.i.a(r4);	 Catch:{ all -> 0x010b }
        a(r6, r12, r5, r9);	 Catch:{ all -> 0x010b }
        r8.a(r6, r12, r5);	 Catch:{ all -> 0x010b }
        if (r19 == 0) goto L_0x00d2;
    L_0x00c5:
        r4 = 1;
        r4 = new java.lang.String[r4];	 Catch:{ all -> 0x010b }
        r5 = 0;
        r6 = "ufe";
        r4[r5] = r6;	 Catch:{ all -> 0x010b }
        r0 = r19;
        r0.a(r3, r4);	 Catch:{ all -> 0x010b }
    L_0x00d2:
        r3 = r8.a(r10);	 Catch:{ all -> 0x010b }
        r2.disconnect();	 Catch:{ IOException -> 0x00e6 }
        r2 = r3;
    L_0x00da:
        return r2;
    L_0x00db:
        r2 = 0;
        r3 = r2;
        goto L_0x0007;
    L_0x00df:
        r2 = new java.lang.String;	 Catch:{ IOException -> 0x00e6 }
        r2.<init>(r4);	 Catch:{ IOException -> 0x00e6 }
        goto L_0x0020;
    L_0x00e6:
        r2 = move-exception;
        r3 = "Error while connecting to ad server: ";
        r2 = r2.getMessage();
        r2 = java.lang.String.valueOf(r2);
        r4 = r2.length();
        if (r4 == 0) goto L_0x018d;
    L_0x00f7:
        r2 = r3.concat(r2);
    L_0x00fb:
        com.google.android.gms.c.sz.e(r2);
        r2 = new com.google.android.gms.c.pj;
        r3 = 2;
        r2.<init>(r3);
        goto L_0x00da;
    L_0x0105:
        r3 = move-exception;
        r4 = r5;
    L_0x0107:
        com.google.android.gms.common.util.i.a(r4);	 Catch:{ all -> 0x010b }
        throw r3;	 Catch:{ all -> 0x010b }
    L_0x010b:
        r3 = move-exception;
        r2.disconnect();	 Catch:{ IOException -> 0x00e6 }
        throw r3;	 Catch:{ IOException -> 0x00e6 }
    L_0x0110:
        r3 = move-exception;
        r4 = r5;
    L_0x0112:
        com.google.android.gms.common.util.i.a(r4);	 Catch:{ all -> 0x010b }
        throw r3;	 Catch:{ all -> 0x010b }
    L_0x0116:
        r4 = r7.toString();	 Catch:{ all -> 0x010b }
        r5 = 0;
        a(r4, r12, r5, r9);	 Catch:{ all -> 0x010b }
        r4 = 300; // 0x12c float:4.2E-43 double:1.48E-321;
        if (r9 < r4) goto L_0x015d;
    L_0x0122:
        r4 = 400; // 0x190 float:5.6E-43 double:1.976E-321;
        if (r9 >= r4) goto L_0x015d;
    L_0x0126:
        r4 = "Location";
        r4 = r2.getHeaderField(r4);	 Catch:{ all -> 0x010b }
        r5 = android.text.TextUtils.isEmpty(r4);	 Catch:{ all -> 0x010b }
        if (r5 == 0) goto L_0x0142;
    L_0x0132:
        r3 = "No location header to follow redirect.";
        com.google.android.gms.c.sz.e(r3);	 Catch:{ all -> 0x010b }
        r3 = new com.google.android.gms.c.pj;	 Catch:{ all -> 0x010b }
        r4 = 0;
        r3.<init>(r4);	 Catch:{ all -> 0x010b }
        r2.disconnect();	 Catch:{ IOException -> 0x00e6 }
        r2 = r3;
        goto L_0x00da;
    L_0x0142:
        r5 = new java.net.URL;	 Catch:{ all -> 0x010b }
        r5.<init>(r4);	 Catch:{ all -> 0x010b }
        r4 = r6 + 1;
        r6 = 5;
        if (r4 <= r6) goto L_0x0181;
    L_0x014c:
        r3 = "Too many redirects.";
        com.google.android.gms.c.sz.e(r3);	 Catch:{ all -> 0x010b }
        r3 = new com.google.android.gms.c.pj;	 Catch:{ all -> 0x010b }
        r4 = 0;
        r3.<init>(r4);	 Catch:{ all -> 0x010b }
        r2.disconnect();	 Catch:{ IOException -> 0x00e6 }
        r2 = r3;
        goto L_0x00da;
    L_0x015d:
        r3 = new java.lang.StringBuilder;	 Catch:{ all -> 0x010b }
        r4 = 46;
        r3.<init>(r4);	 Catch:{ all -> 0x010b }
        r4 = "Received error HTTP response code: ";
        r3 = r3.append(r4);	 Catch:{ all -> 0x010b }
        r3 = r3.append(r9);	 Catch:{ all -> 0x010b }
        r3 = r3.toString();	 Catch:{ all -> 0x010b }
        com.google.android.gms.c.sz.e(r3);	 Catch:{ all -> 0x010b }
        r3 = new com.google.android.gms.c.pj;	 Catch:{ all -> 0x010b }
        r4 = 0;
        r3.<init>(r4);	 Catch:{ all -> 0x010b }
        r2.disconnect();	 Catch:{ IOException -> 0x00e6 }
        r2 = r3;
        goto L_0x00da;
    L_0x0181:
        r8.a(r12);	 Catch:{ all -> 0x010b }
        r2.disconnect();	 Catch:{ IOException -> 0x00e6 }
        if (r20 == 0) goto L_0x0189;
    L_0x0189:
        r6 = r4;
        r7 = r5;
        goto L_0x0035;
    L_0x018d:
        r2 = new java.lang.String;
        r2.<init>(r3);
        goto L_0x00fb;
    L_0x0194:
        r3 = move-exception;
        goto L_0x0112;
    L_0x0197:
        r3 = move-exception;
        goto L_0x0107;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.c.py.a(com.google.android.gms.c.pg, android.content.Context, java.lang.String, java.lang.String, java.lang.String, com.google.android.gms.c.qe, com.google.android.gms.c.jb, com.google.android.gms.c.px):com.google.android.gms.c.pj");
    }

    public static py a(Context context, il ilVar, px pxVar) {
        py pyVar;
        synchronized (a) {
            if (b == null) {
                if (context.getApplicationContext() != null) {
                    context = context.getApplicationContext();
                }
                b = new py(context, ilVar, pxVar);
            }
            pyVar = b;
        }
        return pyVar;
    }

    private static void a(String str, Map<String, List<String>> map, String str2, int i) {
        if (sz.a(2)) {
            sf.a(new StringBuilder(String.valueOf(str).length() + 39).append("Http Response: {\n  URL:\n    ").append(str).append("\n  Headers:").toString());
            if (map != null) {
                for (String str3 : map.keySet()) {
                    String str32;
                    sf.a(new StringBuilder(String.valueOf(str32).length() + 5).append("    ").append(str32).append(":").toString());
                    for (String str322 : (List) map.get(str322)) {
                        String str4 = "      ";
                        str322 = String.valueOf(str322);
                        sf.a(str322.length() != 0 ? str4.concat(str322) : new String(str4));
                    }
                }
            }
            sf.a("  Body:");
            if (str2 != null) {
                for (int i2 = 0; i2 < Math.min(str2.length(), 100000); i2 += 1000) {
                    sf.a(str2.substring(i2, Math.min(str2.length(), i2 + 1000)));
                }
            } else {
                sf.a("    null");
            }
            sf.a("  Response Code:\n    " + i + "\n}");
        }
    }

    private static Bundle b(th<Bundle> thVar) {
        Bundle bundle = new Bundle();
        try {
            return (Bundle) thVar.get(((Long) is.cN.c()).longValue(), TimeUnit.MILLISECONDS);
        } catch (Exception e) {
            sz.c("Exception caught while getting parental controls.", e);
            return bundle;
        }
    }

    public pj a(pg pgVar) {
        return a(this.c, this.f, this.e, this.d, pgVar);
    }

    public void a(final pg pgVar, final pq pqVar) {
        v.i().a(this.c, pgVar.k);
        si.a(new Runnable() {
            public void run() {
                pj a;
                try {
                    a = py.this.a(pgVar);
                } catch (Exception e) {
                    v.i().a(e, "AdRequestServiceImpl.loadAdAsync");
                    sz.c("Could not fetch ad response due to an Exception.", e);
                    a = null;
                }
                if (a == null) {
                    a = new pj(0);
                }
                try {
                    pqVar.a(a);
                } catch (RemoteException e2) {
                    sz.c("Fail to forward ad response.", e2);
                }
            }
        });
    }
}
