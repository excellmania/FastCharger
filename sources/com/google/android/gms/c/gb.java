package com.google.android.gms.c;

import android.util.Base64OutputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.Iterator;
import java.util.Locale;
import java.util.PriorityQueue;

@pa
public class gb {
    private final int a;
    private final int b;
    private final int c;
    private final ga d = new gd();

    static class a {
        ByteArrayOutputStream a = new ByteArrayOutputStream(4096);
        Base64OutputStream b = new Base64OutputStream(this.a, 10);

        public void a(byte[] bArr) {
            this.b.write(bArr);
        }

        public String toString() {
            String byteArrayOutputStream;
            try {
                this.b.close();
            } catch (IOException e) {
                sz.b("HashManager: Unable to convert to Base64.", e);
            }
            try {
                this.a.close();
                byteArrayOutputStream = this.a.toString();
            } catch (IOException e2) {
                sz.b("HashManager: Unable to convert to Base64.", e2);
                byteArrayOutputStream = "";
            } finally {
                this.a = null;
                this.b = null;
            }
            return byteArrayOutputStream;
        }
    }

    public gb(int i) {
        this.b = i;
        this.a = 6;
        this.c = 0;
    }

    /* Access modifiers changed, original: 0000 */
    public a a() {
        return new a();
    }

    /* Access modifiers changed, original: 0000 */
    public String a(String str) {
        String[] split = str.split("\n");
        if (split.length == 0) {
            return "";
        }
        a a = a();
        PriorityQueue priorityQueue = new PriorityQueue(this.b, new Comparator<com.google.android.gms.c.ge.a>(this) {
            /* renamed from: a */
            public int compare(com.google.android.gms.c.ge.a aVar, com.google.android.gms.c.ge.a aVar2) {
                int i = aVar.c - aVar2.c;
                return i != 0 ? i : (int) (aVar.a - aVar2.a);
            }
        });
        for (String b : split) {
            String[] b2 = gc.b(b);
            if (b2.length != 0) {
                ge.a(b2, this.b, this.a, priorityQueue);
            }
        }
        Iterator it = priorityQueue.iterator();
        while (it.hasNext()) {
            try {
                a.a(this.d.a(((com.google.android.gms.c.ge.a) it.next()).b));
            } catch (IOException e) {
                sz.b("Error while writing hash to byteStream", e);
            }
        }
        return a.toString();
    }

    public String a(ArrayList<String> arrayList) {
        StringBuffer stringBuffer = new StringBuffer();
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            stringBuffer.append(((String) it.next()).toLowerCase(Locale.US));
            stringBuffer.append(10);
        }
        return a(stringBuffer.toString());
    }
}
