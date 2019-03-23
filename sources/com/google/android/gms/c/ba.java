package com.google.android.gms.c;

import android.support.v4.media.session.PlaybackStateCompat;
import com.google.android.gms.c.aw.c;
import com.google.android.gms.c.aw.f;
import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Vector;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import org.apache.http.protocol.HTTP;

final class ba {
    static boolean a = false;
    static CountDownLatch b = new CountDownLatch(1);
    private static MessageDigest c = null;
    private static final Object d = new Object();
    private static final Object e = new Object();

    private static final class a implements Runnable {
        private a() {
        }

        public void run() {
            try {
                ba.c = MessageDigest.getInstance("MD5");
            } catch (NoSuchAlgorithmException e) {
            } finally {
                ba.b.countDown();
            }
        }
    }

    private static int a(boolean z) {
        return z ? 239 : 255;
    }

    static com.google.android.gms.c.aw.a a(long j) {
        com.google.android.gms.c.aw.a aVar = new com.google.android.gms.c.aw.a();
        aVar.t = Long.valueOf(j);
        return aVar;
    }

    static String a(com.google.android.gms.c.aw.a aVar, String str, boolean z) {
        return a(eq.a((eq) aVar), str, z);
    }

    static String a(String str, String str2, boolean z) {
        byte[] b = b(str, str2, z);
        return b != null ? ay.a(b, true) : Integer.toString(7);
    }

    static String a(byte[] bArr, String str, boolean z) {
        return ay.a(z ? b(bArr, str) : a(bArr, str), true);
    }

    static Vector<byte[]> a(byte[] bArr, int i) {
        if (bArr == null || bArr.length <= 0) {
            return null;
        }
        int length = ((bArr.length + i) - 1) / i;
        Vector<byte[]> vector = new Vector();
        int i2 = 0;
        while (i2 < length) {
            int i3 = i2 * i;
            try {
                vector.add(Arrays.copyOfRange(bArr, i3, bArr.length - i3 > i ? i3 + i : bArr.length));
                i2++;
            } catch (IndexOutOfBoundsException e) {
                return null;
            }
        }
        return vector;
    }

    static void a() {
        synchronized (e) {
            if (!a) {
                a = true;
                new Thread(new a()).start();
            }
        }
    }

    static void a(String str, byte[] bArr) {
        if (str.length() > 32) {
            str = str.substring(0, 32);
        }
        new eg(str.getBytes(HTTP.UTF_8)).a(bArr);
    }

    public static byte[] a(byte[] bArr) {
        byte[] digest;
        synchronized (d) {
            MessageDigest b = b();
            if (b == null) {
                throw new NoSuchAlgorithmException("Cannot compute hash");
            }
            b.reset();
            b.update(bArr);
            digest = c.digest();
        }
        return digest;
    }

    static byte[] a(byte[] bArr, String str) {
        Vector a = a(bArr, 255);
        if (a == null || a.size() == 0) {
            return b(eq.a(a((long) PlaybackStateCompat.ACTION_SKIP_TO_QUEUE_ITEM)), str);
        }
        eq fVar = new f();
        fVar.a = new byte[a.size()][];
        Iterator it = a.iterator();
        int i = 0;
        while (it.hasNext()) {
            int i2 = i + 1;
            fVar.a[i] = b((byte[]) it.next(), str, false);
            i = i2;
        }
        fVar.b = a(bArr);
        return eq.a(fVar);
    }

    static MessageDigest b() {
        a();
        boolean z = false;
        try {
            z = b.await(2, TimeUnit.SECONDS);
        } catch (InterruptedException e) {
        }
        return (z && c != null) ? c : null;
    }

    static byte[] b(String str, String str2, boolean z) {
        eq cVar = new c();
        try {
            cVar.a = str.length() < 3 ? str.getBytes("ISO-8859-1") : ay.a(str, true);
            byte[] bytes = z ? str2.length() < 3 ? str2.getBytes("ISO-8859-1") : ay.a(str2, true) : (str2 == null || str2.length() == 0) ? Integer.toString(5).getBytes("ISO-8859-1") : ay.a(a(str2.getBytes("ISO-8859-1"), null, ((Boolean) is.bs.c()).booleanValue()), true);
            cVar.b = bytes;
            return eq.a(cVar);
        } catch (UnsupportedEncodingException | NoSuchAlgorithmException e) {
            return null;
        }
    }

    static byte[] b(byte[] bArr, String str) {
        return b(bArr, str, true);
    }

    private static byte[] b(byte[] bArr, String str, boolean z) {
        byte[] bArr2;
        byte[] array;
        int a = a(z);
        if (bArr.length > a) {
            bArr = eq.a(a((long) PlaybackStateCompat.ACTION_SKIP_TO_QUEUE_ITEM));
        }
        if (bArr.length < a) {
            bArr2 = new byte[(a - bArr.length)];
            new SecureRandom().nextBytes(bArr2);
            array = ByteBuffer.allocate(a + 1).put((byte) bArr.length).put(bArr).put(bArr2).array();
        } else {
            array = ByteBuffer.allocate(a + 1).put((byte) bArr.length).put(bArr).array();
        }
        if (z) {
            array = ByteBuffer.allocate(256).put(a(array)).put(array).array();
        }
        bArr2 = new byte[256];
        new bb().a(array, bArr2);
        if (str != null && str.length() > 0) {
            a(str, bArr2);
        }
        return bArr2;
    }
}
