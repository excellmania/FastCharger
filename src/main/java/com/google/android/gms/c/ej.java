package com.google.android.gms.c;

import android.support.v4.media.TransportMediator;
import java.io.IOException;
import java.nio.BufferOverflowException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.ReadOnlyBufferException;

public final class ej {
    private final ByteBuffer a;

    public static class a extends IOException {
        a(int i, int i2) {
            super("CodedOutputStream was writing to a flat byte array and ran out of space (pos " + i + " limit " + i2 + ").");
        }
    }

    private ej(ByteBuffer byteBuffer) {
        this.a = byteBuffer;
        this.a.order(ByteOrder.LITTLE_ENDIAN);
    }

    private ej(byte[] bArr, int i, int i2) {
        this(ByteBuffer.wrap(bArr, i, i2));
    }

    private static int a(CharSequence charSequence) {
        int length = charSequence.length();
        int i = 0;
        while (i < length && charSequence.charAt(i) < 128) {
            i++;
        }
        int i2 = i;
        i = length;
        while (i2 < length) {
            char charAt = charSequence.charAt(i2);
            if (charAt >= 2048) {
                i += a(charSequence, i2);
                break;
            }
            i2++;
            i = ((127 - charAt) >>> 31) + i;
        }
        if (i >= length) {
            return i;
        }
        throw new IllegalArgumentException("UTF-8 length does not fit in int: " + (((long) i) + 4294967296L));
    }

    private static int a(CharSequence charSequence, int i) {
        int length = charSequence.length();
        int i2 = 0;
        int i3 = i;
        while (i3 < length) {
            char charAt = charSequence.charAt(i3);
            if (charAt < 2048) {
                i2 += (127 - charAt) >>> 31;
            } else {
                i2 += 2;
                if (55296 <= charAt && charAt <= 57343) {
                    if (Character.codePointAt(charSequence, i3) < 65536) {
                        throw new IllegalArgumentException("Unpaired surrogate at index " + i3);
                    }
                    i3++;
                }
            }
            i3++;
        }
        return i2;
    }

    private static int a(CharSequence charSequence, byte[] bArr, int i, int i2) {
        char charAt;
        int length = charSequence.length();
        int i3 = 0;
        int i4 = i + i2;
        while (i3 < length && i3 + i < i4) {
            charAt = charSequence.charAt(i3);
            if (charAt >= 128) {
                break;
            }
            bArr[i + i3] = (byte) charAt;
            i3++;
        }
        if (i3 == length) {
            return i + length;
        }
        int i5 = i + i3;
        while (i3 < length) {
            int i6;
            char charAt2 = charSequence.charAt(i3);
            int i7;
            if (charAt2 < 128 && i5 < i4) {
                i6 = i5 + 1;
                bArr[i5] = (byte) charAt2;
            } else if (charAt2 < 2048 && i5 <= i4 - 2) {
                i7 = i5 + 1;
                bArr[i5] = (byte) ((charAt2 >>> 6) | 960);
                i6 = i7 + 1;
                bArr[i7] = (byte) ((charAt2 & 63) | 128);
            } else if ((charAt2 < 55296 || 57343 < charAt2) && i5 <= i4 - 3) {
                i6 = i5 + 1;
                bArr[i5] = (byte) ((charAt2 >>> 12) | 480);
                i5 = i6 + 1;
                bArr[i6] = (byte) (((charAt2 >>> 6) & 63) | 128);
                i6 = i5 + 1;
                bArr[i5] = (byte) ((charAt2 & 63) | 128);
            } else if (i5 <= i4 - 4) {
                if (i3 + 1 != charSequence.length()) {
                    i3++;
                    charAt = charSequence.charAt(i3);
                    if (Character.isSurrogatePair(charAt2, charAt)) {
                        int toCodePoint = Character.toCodePoint(charAt2, charAt);
                        i6 = i5 + 1;
                        bArr[i5] = (byte) ((toCodePoint >>> 18) | 240);
                        i5 = i6 + 1;
                        bArr[i6] = (byte) (((toCodePoint >>> 12) & 63) | 128);
                        i7 = i5 + 1;
                        bArr[i5] = (byte) (((toCodePoint >>> 6) & 63) | 128);
                        i6 = i7 + 1;
                        bArr[i7] = (byte) ((toCodePoint & 63) | 128);
                    }
                }
                throw new IllegalArgumentException("Unpaired surrogate at index " + (i3 - 1));
            } else {
                throw new ArrayIndexOutOfBoundsException("Failed writing " + charAt2 + " at index " + i5);
            }
            i3++;
            i5 = i6;
        }
        return i5;
    }

    public static ej a(byte[] bArr) {
        return a(bArr, 0, bArr.length);
    }

    public static ej a(byte[] bArr, int i, int i2) {
        return new ej(bArr, i, i2);
    }

    private static void a(CharSequence charSequence, ByteBuffer byteBuffer) {
        if (byteBuffer.isReadOnly()) {
            throw new ReadOnlyBufferException();
        } else if (byteBuffer.hasArray()) {
            try {
                byteBuffer.position(a(charSequence, byteBuffer.array(), byteBuffer.arrayOffset() + byteBuffer.position(), byteBuffer.remaining()) - byteBuffer.arrayOffset());
            } catch (ArrayIndexOutOfBoundsException e) {
                BufferOverflowException bufferOverflowException = new BufferOverflowException();
                bufferOverflowException.initCause(e);
                throw bufferOverflowException;
            }
        } else {
            b(charSequence, byteBuffer);
        }
    }

    public static int b(int i) {
        return i >= 0 ? f(i) : 10;
    }

    public static int b(int i, int i2) {
        return d(i) + b(i2);
    }

    public static int b(int i, eq eqVar) {
        return (d(i) * 2) + c(eqVar);
    }

    public static int b(int i, String str) {
        return d(i) + b(str);
    }

    public static int b(int i, boolean z) {
        return d(i) + 1;
    }

    public static int b(int i, byte[] bArr) {
        return d(i) + c(bArr);
    }

    public static int b(String str) {
        int a = a((CharSequence) str);
        return a + f(a);
    }

    private static void b(CharSequence charSequence, ByteBuffer byteBuffer) {
        int length = charSequence.length();
        int i = 0;
        while (i < length) {
            char charAt = charSequence.charAt(i);
            if (charAt < 128) {
                byteBuffer.put((byte) charAt);
            } else if (charAt < 2048) {
                byteBuffer.put((byte) ((charAt >>> 6) | 960));
                byteBuffer.put((byte) ((charAt & 63) | 128));
            } else if (charAt < 55296 || 57343 < charAt) {
                byteBuffer.put((byte) ((charAt >>> 12) | 480));
                byteBuffer.put((byte) (((charAt >>> 6) & 63) | 128));
                byteBuffer.put((byte) ((charAt & 63) | 128));
            } else {
                if (i + 1 != charSequence.length()) {
                    i++;
                    char charAt2 = charSequence.charAt(i);
                    if (Character.isSurrogatePair(charAt, charAt2)) {
                        int toCodePoint = Character.toCodePoint(charAt, charAt2);
                        byteBuffer.put((byte) ((toCodePoint >>> 18) | 240));
                        byteBuffer.put((byte) (((toCodePoint >>> 12) & 63) | 128));
                        byteBuffer.put((byte) (((toCodePoint >>> 6) & 63) | 128));
                        byteBuffer.put((byte) ((toCodePoint & 63) | 128));
                    }
                }
                throw new IllegalArgumentException("Unpaired surrogate at index " + (i - 1));
            }
            i++;
        }
    }

    public static int c(int i, eq eqVar) {
        return d(i) + d(eqVar);
    }

    public static int c(eq eqVar) {
        return eqVar.f();
    }

    public static int c(byte[] bArr) {
        return f(bArr.length) + bArr.length;
    }

    public static int d(int i) {
        return f(et.a(i, 0));
    }

    public static int d(int i, long j) {
        return d(i) + d(j);
    }

    public static int d(long j) {
        return h(j);
    }

    public static int d(eq eqVar) {
        int f = eqVar.f();
        return f + f(f);
    }

    public static int e(int i, long j) {
        return d(i) + e(j);
    }

    public static int e(long j) {
        return h(j);
    }

    public static int f(int i) {
        return (i & -128) == 0 ? 1 : (i & -16384) == 0 ? 2 : (-2097152 & i) == 0 ? 3 : (-268435456 & i) == 0 ? 4 : 5;
    }

    public static int f(int i, long j) {
        return d(i) + f(j);
    }

    public static int f(long j) {
        return h(i(j));
    }

    public static int h(long j) {
        return (-128 & j) == 0 ? 1 : (-16384 & j) == 0 ? 2 : (-2097152 & j) == 0 ? 3 : (-268435456 & j) == 0 ? 4 : (-34359738368L & j) == 0 ? 5 : (-4398046511104L & j) == 0 ? 6 : (-562949953421312L & j) == 0 ? 7 : (-72057594037927936L & j) == 0 ? 8 : (Long.MIN_VALUE & j) == 0 ? 9 : 10;
    }

    public static long i(long j) {
        return (j << 1) ^ (j >> 63);
    }

    public int a() {
        return this.a.remaining();
    }

    public void a(byte b) {
        if (this.a.hasRemaining()) {
            this.a.put(b);
            return;
        }
        throw new a(this.a.position(), this.a.limit());
    }

    public void a(int i) {
        if (i >= 0) {
            e(i);
        } else {
            g((long) i);
        }
    }

    public void a(int i, int i2) {
        c(i, 0);
        a(i2);
    }

    public void a(int i, long j) {
        c(i, 0);
        a(j);
    }

    public void a(int i, eq eqVar) {
        c(i, 2);
        b(eqVar);
    }

    public void a(int i, String str) {
        c(i, 2);
        a(str);
    }

    public void a(int i, boolean z) {
        c(i, 0);
        a(z);
    }

    public void a(int i, byte[] bArr) {
        c(i, 2);
        b(bArr);
    }

    public void a(long j) {
        g(j);
    }

    public void a(eq eqVar) {
        eqVar.a(this);
    }

    public void a(String str) {
        try {
            int f = f(str.length());
            if (f == f(str.length() * 3)) {
                int position = this.a.position();
                if (this.a.remaining() < f) {
                    throw new a(f + position, this.a.limit());
                }
                this.a.position(position + f);
                a((CharSequence) str, this.a);
                int position2 = this.a.position();
                this.a.position(position);
                e((position2 - position) - f);
                this.a.position(position2);
                return;
            }
            e(a((CharSequence) str));
            a((CharSequence) str, this.a);
        } catch (BufferOverflowException e) {
            a aVar = new a(this.a.position(), this.a.limit());
            aVar.initCause(e);
            throw aVar;
        }
    }

    public void a(boolean z) {
        c(z ? 1 : 0);
    }

    public void b() {
        if (a() != 0) {
            throw new IllegalStateException("Did not write as much data as expected.");
        }
    }

    public void b(int i, long j) {
        c(i, 0);
        b(j);
    }

    public void b(long j) {
        g(j);
    }

    public void b(eq eqVar) {
        e(eqVar.e());
        eqVar.a(this);
    }

    public void b(byte[] bArr) {
        e(bArr.length);
        d(bArr);
    }

    public void b(byte[] bArr, int i, int i2) {
        if (this.a.remaining() >= i2) {
            this.a.put(bArr, i, i2);
            return;
        }
        throw new a(this.a.position(), this.a.limit());
    }

    public void c(int i) {
        a((byte) i);
    }

    public void c(int i, int i2) {
        e(et.a(i, i2));
    }

    public void c(int i, long j) {
        c(i, 0);
        c(j);
    }

    public void c(long j) {
        g(i(j));
    }

    public void d(byte[] bArr) {
        b(bArr, 0, bArr.length);
    }

    public void e(int i) {
        while ((i & -128) != 0) {
            c((i & TransportMediator.KEYCODE_MEDIA_PAUSE) | 128);
            i >>>= 7;
        }
        c(i);
    }

    public void g(long j) {
        while ((-128 & j) != 0) {
            c((((int) j) & TransportMediator.KEYCODE_MEDIA_PAUSE) | 128);
            j >>>= 7;
        }
        c((int) j);
    }
}
