package com.google.android.gms.c;

import android.os.SystemClock;
import java.io.EOFException;
import java.io.File;
import java.io.FileOutputStream;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Map.Entry;
import org.apache.http.protocol.HTTP;

public class uk implements dk {
    private final Map<String, a> a;
    private long b;
    private final File c;
    private final int d;

    static class a {
        public long a;
        public String b;
        public String c;
        public long d;
        public long e;
        public long f;
        public long g;
        public Map<String, String> h;

        private a() {
        }

        public a(String str, com.google.android.gms.c.dk.a aVar) {
            this.b = str;
            this.a = (long) aVar.a.length;
            this.c = aVar.b;
            this.d = aVar.c;
            this.e = aVar.d;
            this.f = aVar.e;
            this.g = aVar.f;
            this.h = aVar.g;
        }

        public static a a(InputStream inputStream) {
            a aVar = new a();
            if (uk.a(inputStream) != 538247942) {
                throw new IOException();
            }
            aVar.b = uk.c(inputStream);
            aVar.c = uk.c(inputStream);
            if (aVar.c.equals("")) {
                aVar.c = null;
            }
            aVar.d = uk.b(inputStream);
            aVar.e = uk.b(inputStream);
            aVar.f = uk.b(inputStream);
            aVar.g = uk.b(inputStream);
            aVar.h = uk.d(inputStream);
            return aVar;
        }

        public com.google.android.gms.c.dk.a a(byte[] bArr) {
            com.google.android.gms.c.dk.a aVar = new com.google.android.gms.c.dk.a();
            aVar.a = bArr;
            aVar.b = this.c;
            aVar.c = this.d;
            aVar.d = this.e;
            aVar.e = this.f;
            aVar.f = this.g;
            aVar.g = this.h;
            return aVar;
        }

        public boolean a(OutputStream outputStream) {
            try {
                uk.a(outputStream, 538247942);
                uk.a(outputStream, this.b);
                uk.a(outputStream, this.c == null ? "" : this.c);
                uk.a(outputStream, this.d);
                uk.a(outputStream, this.e);
                uk.a(outputStream, this.f);
                uk.a(outputStream, this.g);
                uk.a(this.h, outputStream);
                outputStream.flush();
                return true;
            } catch (IOException e) {
                uh.b("%s", e.toString());
                return false;
            }
        }
    }

    private static class b extends FilterInputStream {
        private int a;

        private b(InputStream inputStream) {
            super(inputStream);
            this.a = 0;
        }

        public int read() {
            int read = super.read();
            if (read != -1) {
                this.a++;
            }
            return read;
        }

        public int read(byte[] bArr, int i, int i2) {
            int read = super.read(bArr, i, i2);
            if (read != -1) {
                this.a += read;
            }
            return read;
        }
    }

    public uk(File file) {
        this(file, 5242880);
    }

    public uk(File file, int i) {
        this.a = new LinkedHashMap(16, 0.75f, true);
        this.b = 0;
        this.c = file;
        this.d = i;
    }

    static int a(InputStream inputStream) {
        return ((((e(inputStream) << 0) | 0) | (e(inputStream) << 8)) | (e(inputStream) << 16)) | (e(inputStream) << 24);
    }

    private void a(int i) {
        if (this.b + ((long) i) >= ((long) this.d)) {
            int i2;
            if (uh.b) {
                uh.a("Pruning old cache entries.", new Object[0]);
            }
            long j = this.b;
            long elapsedRealtime = SystemClock.elapsedRealtime();
            Iterator it = this.a.entrySet().iterator();
            int i3 = 0;
            while (it.hasNext()) {
                a aVar = (a) ((Entry) it.next()).getValue();
                if (c(aVar.b).delete()) {
                    this.b -= aVar.a;
                } else {
                    uh.b("Could not delete cache entry for key=%s, filename=%s", aVar.b, d(aVar.b));
                }
                it.remove();
                i2 = i3 + 1;
                if (((float) (this.b + ((long) i))) < ((float) this.d) * 0.9f) {
                    break;
                }
                i3 = i2;
            }
            i2 = i3;
            if (uh.b) {
                uh.a("pruned %d files, %d bytes, %d ms", Integer.valueOf(i2), Long.valueOf(this.b - j), Long.valueOf(SystemClock.elapsedRealtime() - elapsedRealtime));
            }
        }
    }

    static void a(OutputStream outputStream, int i) {
        outputStream.write((i >> 0) & 255);
        outputStream.write((i >> 8) & 255);
        outputStream.write((i >> 16) & 255);
        outputStream.write((i >> 24) & 255);
    }

    static void a(OutputStream outputStream, long j) {
        outputStream.write((byte) ((int) (j >>> null)));
        outputStream.write((byte) ((int) (j >>> 8)));
        outputStream.write((byte) ((int) (j >>> 16)));
        outputStream.write((byte) ((int) (j >>> 24)));
        outputStream.write((byte) ((int) (j >>> 32)));
        outputStream.write((byte) ((int) (j >>> 40)));
        outputStream.write((byte) ((int) (j >>> 48)));
        outputStream.write((byte) ((int) (j >>> 56)));
    }

    static void a(OutputStream outputStream, String str) {
        byte[] bytes = str.getBytes(HTTP.UTF_8);
        a(outputStream, (long) bytes.length);
        outputStream.write(bytes, 0, bytes.length);
    }

    private void a(String str, a aVar) {
        if (this.a.containsKey(str)) {
            a aVar2 = (a) this.a.get(str);
            this.b = (aVar.a - aVar2.a) + this.b;
        } else {
            this.b += aVar.a;
        }
        this.a.put(str, aVar);
    }

    static void a(Map<String, String> map, OutputStream outputStream) {
        if (map != null) {
            a(outputStream, map.size());
            for (Entry entry : map.entrySet()) {
                a(outputStream, (String) entry.getKey());
                a(outputStream, (String) entry.getValue());
            }
            return;
        }
        a(outputStream, 0);
    }

    private static byte[] a(InputStream inputStream, int i) {
        byte[] bArr = new byte[i];
        int i2 = 0;
        while (i2 < i) {
            int read = inputStream.read(bArr, i2, i - i2);
            if (read == -1) {
                break;
            }
            i2 += read;
        }
        if (i2 == i) {
            return bArr;
        }
        throw new IOException("Expected " + i + " bytes, read " + i2 + " bytes");
    }

    static long b(InputStream inputStream) {
        return (((((((0 | ((((long) e(inputStream)) & 255) << null)) | ((((long) e(inputStream)) & 255) << 8)) | ((((long) e(inputStream)) & 255) << 16)) | ((((long) e(inputStream)) & 255) << 24)) | ((((long) e(inputStream)) & 255) << 32)) | ((((long) e(inputStream)) & 255) << 40)) | ((((long) e(inputStream)) & 255) << 48)) | ((((long) e(inputStream)) & 255) << 56);
    }

    static String c(InputStream inputStream) {
        return new String(a(inputStream, (int) b(inputStream)), HTTP.UTF_8);
    }

    private String d(String str) {
        int length = str.length() / 2;
        String valueOf = String.valueOf(String.valueOf(str.substring(0, length).hashCode()));
        String valueOf2 = String.valueOf(String.valueOf(str.substring(length).hashCode()));
        return valueOf2.length() != 0 ? valueOf.concat(valueOf2) : new String(valueOf);
    }

    static Map<String, String> d(InputStream inputStream) {
        int a = a(inputStream);
        Map emptyMap = a == 0 ? Collections.emptyMap() : new HashMap(a);
        for (int i = 0; i < a; i++) {
            emptyMap.put(c(inputStream).intern(), c(inputStream).intern());
        }
        return emptyMap;
    }

    private static int e(InputStream inputStream) {
        int read = inputStream.read();
        if (read != -1) {
            return read;
        }
        throw new EOFException();
    }

    private void e(String str) {
        a aVar = (a) this.a.get(str);
        if (aVar != null) {
            this.b -= aVar.a;
            this.a.remove(str);
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:31:0x0064 A:{SYNTHETIC, Splitter:B:31:0x0064} */
    public synchronized com.google.android.gms.c.dk.a a(java.lang.String r9) {
        /*
        r8 = this;
        r1 = 0;
        monitor-enter(r8);
        r0 = r8.a;	 Catch:{ all -> 0x0068 }
        r0 = r0.get(r9);	 Catch:{ all -> 0x0068 }
        r0 = (com.google.android.gms.c.uk.a) r0;	 Catch:{ all -> 0x0068 }
        if (r0 != 0) goto L_0x000f;
    L_0x000c:
        r0 = r1;
    L_0x000d:
        monitor-exit(r8);
        return r0;
    L_0x000f:
        r3 = r8.c(r9);	 Catch:{ all -> 0x0068 }
        r2 = new com.google.android.gms.c.uk$b;	 Catch:{ IOException -> 0x003b, all -> 0x0060 }
        r4 = new java.io.FileInputStream;	 Catch:{ IOException -> 0x003b, all -> 0x0060 }
        r4.<init>(r3);	 Catch:{ IOException -> 0x003b, all -> 0x0060 }
        r5 = 0;
        r2.<init>(r4);	 Catch:{ IOException -> 0x003b, all -> 0x0060 }
        com.google.android.gms.c.uk.a.a(r2);	 Catch:{ IOException -> 0x0070 }
        r4 = r3.length();	 Catch:{ IOException -> 0x0070 }
        r6 = r2.a;	 Catch:{ IOException -> 0x0070 }
        r6 = (long) r6;	 Catch:{ IOException -> 0x0070 }
        r4 = r4 - r6;
        r4 = (int) r4;	 Catch:{ IOException -> 0x0070 }
        r4 = a(r2, r4);	 Catch:{ IOException -> 0x0070 }
        r0 = r0.a(r4);	 Catch:{ IOException -> 0x0070 }
        r2.close();	 Catch:{ IOException -> 0x0038 }
        goto L_0x000d;
    L_0x0038:
        r0 = move-exception;
        r0 = r1;
        goto L_0x000d;
    L_0x003b:
        r0 = move-exception;
        r2 = r1;
    L_0x003d:
        r4 = "%s: %s";
        r5 = 2;
        r5 = new java.lang.Object[r5];	 Catch:{ all -> 0x006e }
        r6 = 0;
        r3 = r3.getAbsolutePath();	 Catch:{ all -> 0x006e }
        r5[r6] = r3;	 Catch:{ all -> 0x006e }
        r3 = 1;
        r0 = r0.toString();	 Catch:{ all -> 0x006e }
        r5[r3] = r0;	 Catch:{ all -> 0x006e }
        com.google.android.gms.c.uh.b(r4, r5);	 Catch:{ all -> 0x006e }
        r8.b(r9);	 Catch:{ all -> 0x006e }
        if (r2 == 0) goto L_0x005b;
    L_0x0058:
        r2.close();	 Catch:{ IOException -> 0x005d }
    L_0x005b:
        r0 = r1;
        goto L_0x000d;
    L_0x005d:
        r0 = move-exception;
        r0 = r1;
        goto L_0x000d;
    L_0x0060:
        r0 = move-exception;
        r2 = r1;
    L_0x0062:
        if (r2 == 0) goto L_0x0067;
    L_0x0064:
        r2.close();	 Catch:{ IOException -> 0x006b }
    L_0x0067:
        throw r0;	 Catch:{ all -> 0x0068 }
    L_0x0068:
        r0 = move-exception;
        monitor-exit(r8);
        throw r0;
    L_0x006b:
        r0 = move-exception;
        r0 = r1;
        goto L_0x000d;
    L_0x006e:
        r0 = move-exception;
        goto L_0x0062;
    L_0x0070:
        r0 = move-exception;
        goto L_0x003d;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.c.uk.a(java.lang.String):com.google.android.gms.c.dk$a");
    }

    /* JADX WARNING: Removed duplicated region for block: B:27:0x0058 A:{SYNTHETIC, Splitter:B:27:0x0058} */
    /* JADX WARNING: Removed duplicated region for block: B:49:0x0050 A:{SYNTHETIC} */
    /* JADX WARNING: Removed duplicated region for block: B:30:0x005d A:{SYNTHETIC, Splitter:B:30:0x005d} */
    /* JADX WARNING: Removed duplicated region for block: B:35:0x0066 A:{SYNTHETIC, Splitter:B:35:0x0066} */
    public synchronized void a() {
        /*
        r9 = this;
        r0 = 0;
        monitor-enter(r9);
        r1 = r9.c;	 Catch:{ all -> 0x006a }
        r1 = r1.exists();	 Catch:{ all -> 0x006a }
        if (r1 != 0) goto L_0x0025;
    L_0x000a:
        r0 = r9.c;	 Catch:{ all -> 0x006a }
        r0 = r0.mkdirs();	 Catch:{ all -> 0x006a }
        if (r0 != 0) goto L_0x0023;
    L_0x0012:
        r0 = "Unable to create cache dir %s";
        r1 = 1;
        r1 = new java.lang.Object[r1];	 Catch:{ all -> 0x006a }
        r2 = 0;
        r3 = r9.c;	 Catch:{ all -> 0x006a }
        r3 = r3.getAbsolutePath();	 Catch:{ all -> 0x006a }
        r1[r2] = r3;	 Catch:{ all -> 0x006a }
        com.google.android.gms.c.uh.c(r0, r1);	 Catch:{ all -> 0x006a }
    L_0x0023:
        monitor-exit(r9);
        return;
    L_0x0025:
        r1 = r9.c;	 Catch:{ all -> 0x006a }
        r3 = r1.listFiles();	 Catch:{ all -> 0x006a }
        if (r3 == 0) goto L_0x0023;
    L_0x002d:
        r4 = r3.length;	 Catch:{ all -> 0x006a }
        r2 = r0;
    L_0x002f:
        if (r2 >= r4) goto L_0x0023;
    L_0x0031:
        r5 = r3[r2];	 Catch:{ all -> 0x006a }
        r1 = 0;
        r0 = new java.io.BufferedInputStream;	 Catch:{ IOException -> 0x0054, all -> 0x0063 }
        r6 = new java.io.FileInputStream;	 Catch:{ IOException -> 0x0054, all -> 0x0063 }
        r6.<init>(r5);	 Catch:{ IOException -> 0x0054, all -> 0x0063 }
        r0.<init>(r6);	 Catch:{ IOException -> 0x0054, all -> 0x0063 }
        r1 = com.google.android.gms.c.uk.a.a(r0);	 Catch:{ IOException -> 0x0076 }
        r6 = r5.length();	 Catch:{ IOException -> 0x0076 }
        r1.a = r6;	 Catch:{ IOException -> 0x0076 }
        r6 = r1.b;	 Catch:{ IOException -> 0x0076 }
        r9.a(r6, r1);	 Catch:{ IOException -> 0x0076 }
        r0.close();	 Catch:{ IOException -> 0x006d }
    L_0x0050:
        r0 = r2 + 1;
        r2 = r0;
        goto L_0x002f;
    L_0x0054:
        r0 = move-exception;
        r0 = r1;
    L_0x0056:
        if (r5 == 0) goto L_0x005b;
    L_0x0058:
        r5.delete();	 Catch:{ all -> 0x0071 }
    L_0x005b:
        if (r0 == 0) goto L_0x0050;
    L_0x005d:
        r0.close();	 Catch:{ IOException -> 0x0061 }
        goto L_0x0050;
    L_0x0061:
        r0 = move-exception;
        goto L_0x0050;
    L_0x0063:
        r0 = move-exception;
    L_0x0064:
        if (r1 == 0) goto L_0x0069;
    L_0x0066:
        r1.close();	 Catch:{ IOException -> 0x006f }
    L_0x0069:
        throw r0;	 Catch:{ all -> 0x006a }
    L_0x006a:
        r0 = move-exception;
        monitor-exit(r9);
        throw r0;
    L_0x006d:
        r0 = move-exception;
        goto L_0x0050;
    L_0x006f:
        r1 = move-exception;
        goto L_0x0069;
    L_0x0071:
        r1 = move-exception;
        r8 = r1;
        r1 = r0;
        r0 = r8;
        goto L_0x0064;
    L_0x0076:
        r1 = move-exception;
        goto L_0x0056;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.c.uk.a():void");
    }

    public synchronized void a(String str, com.google.android.gms.c.dk.a aVar) {
        a(aVar.a.length);
        File c = c(str);
        try {
            OutputStream fileOutputStream = new FileOutputStream(c);
            a aVar2 = new a(str, aVar);
            if (aVar2.a(fileOutputStream)) {
                fileOutputStream.write(aVar.a);
                fileOutputStream.close();
                a(str, aVar2);
            } else {
                fileOutputStream.close();
                uh.b("Failed to write header for %s", c.getAbsolutePath());
                throw new IOException();
            }
        } catch (IOException e) {
            if (!c.delete()) {
                uh.b("Could not clean up file %s", c.getAbsolutePath());
            }
        }
    }

    public synchronized void b(String str) {
        boolean delete = c(str).delete();
        e(str);
        if (!delete) {
            uh.b("Could not delete cache entry for key=%s, filename=%s", str, d(str));
        }
    }

    public File c(String str) {
        return new File(this.c, d(str));
    }
}
