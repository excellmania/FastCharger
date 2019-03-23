package com.google.android.gms.c;

import android.support.annotation.Nullable;
import java.util.PriorityQueue;

@pa
public class ge {

    public static class a {
        final long a;
        final String b;
        final int c;

        a(long j, String str, int i) {
            this.a = j;
            this.b = str;
            this.c = i;
        }

        public boolean equals(@Nullable Object obj) {
            return (obj == null || !(obj instanceof a)) ? false : ((a) obj).a == this.a && ((a) obj).c == this.c;
        }

        public int hashCode() {
            return (int) this.a;
        }
    }

    static long a(int i, int i2, long j, long j2, long j3) {
        return ((((((j + 1073807359) - ((((((long) i) + 2147483647L) % 1073807359) * j2) % 1073807359)) % 1073807359) * j3) % 1073807359) + ((((long) i2) + 2147483647L) % 1073807359)) % 1073807359;
    }

    static long a(long j, int i) {
        return i == 0 ? 1 : i != 1 ? i % 2 == 0 ? a((j * j) % 1073807359, i / 2) % 1073807359 : ((a((j * j) % 1073807359, i / 2) % 1073807359) * j) % 1073807359 : j;
    }

    static String a(String[] strArr, int i, int i2) {
        if (strArr.length < i + i2) {
            sz.c("Unable to construct shingle");
            return "";
        }
        StringBuffer stringBuffer = new StringBuffer();
        for (int i3 = i; i3 < (i + i2) - 1; i3++) {
            stringBuffer.append(strArr[i3]);
            stringBuffer.append(' ');
        }
        stringBuffer.append(strArr[(i + i2) - 1]);
        return stringBuffer.toString();
    }

    static void a(int i, long j, String str, int i2, PriorityQueue<a> priorityQueue) {
        a aVar = new a(j, str, i2);
        if ((priorityQueue.size() != i || (((a) priorityQueue.peek()).c <= aVar.c && ((a) priorityQueue.peek()).a <= aVar.a)) && !priorityQueue.contains(aVar)) {
            priorityQueue.add(aVar);
            if (priorityQueue.size() > i) {
                priorityQueue.poll();
            }
        }
    }

    public static void a(String[] strArr, int i, int i2, PriorityQueue<a> priorityQueue) {
        if (strArr.length < i2) {
            int i3 = i;
            a(i3, b(strArr, 0, strArr.length), a(strArr, 0, strArr.length), strArr.length, (PriorityQueue) priorityQueue);
            return;
        }
        long b = b(strArr, 0, i2);
        a(i, b, a(strArr, 0, i2), i2, (PriorityQueue) priorityQueue);
        long a = a(16785407, i2 - 1);
        int i4 = 1;
        while (i4 < (strArr.length - i2) + 1) {
            long a2 = a(gc.a(strArr[i4 - 1]), gc.a(strArr[(i4 + i2) - 1]), b, a, 16785407);
            a(i, a2, a(strArr, i4, i2), strArr.length, (PriorityQueue) priorityQueue);
            i4++;
            b = a2;
        }
    }

    private static long b(String[] strArr, int i, int i2) {
        long a = (((long) gc.a(strArr[i])) + 2147483647L) % 1073807359;
        for (int i3 = i + 1; i3 < i + i2; i3++) {
            a = (((a * 16785407) % 1073807359) + ((((long) gc.a(strArr[i3])) + 2147483647L) % 1073807359)) % 1073807359;
        }
        return a;
    }
}
