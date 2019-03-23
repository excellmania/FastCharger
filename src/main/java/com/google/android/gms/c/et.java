package com.google.android.gms.c;

public final class et {
    public static final int[] a = new int[0];
    public static final long[] b = new long[0];
    public static final float[] c = new float[0];
    public static final double[] d = new double[0];
    public static final boolean[] e = new boolean[0];
    public static final String[] f = new String[0];
    public static final byte[][] g = new byte[0][];
    public static final byte[] h = new byte[0];

    static int a(int i) {
        return i & 7;
    }

    public static int a(int i, int i2) {
        return (i << 3) | i2;
    }

    public static boolean a(ei eiVar, int i) {
        return eiVar.b(i);
    }

    public static int b(int i) {
        return i >>> 3;
    }

    public static final int b(ei eiVar, int i) {
        int i2 = 1;
        int p = eiVar.p();
        eiVar.b(i);
        while (eiVar.a() == i) {
            eiVar.b(i);
            i2++;
        }
        eiVar.e(p);
        return i2;
    }
}
