package com.google.android.a.c.a;

import java.util.Locale;

public final class j {
    private final String[] a;
    private final int[] b;
    private final String[] c;
    private final int d;

    private j(String[] strArr, int[] iArr, String[] strArr2, int i) {
        this.a = strArr;
        this.b = iArr;
        this.c = strArr2;
        this.d = i;
    }

    private static int a(String str, String[] strArr, int[] iArr, String[] strArr2) {
        strArr[0] = "";
        int i = 0;
        int i2 = 0;
        while (i2 < str.length()) {
            int indexOf = str.indexOf("$", i2);
            if (indexOf == -1) {
                strArr[i] = strArr[i] + str.substring(i2);
                i2 = str.length();
            } else if (indexOf != i2) {
                strArr[i] = strArr[i] + str.substring(i2, indexOf);
                i2 = indexOf;
            } else if (str.startsWith("$$", i2)) {
                strArr[i] = strArr[i] + "$";
                i2 += 2;
            } else {
                int indexOf2 = str.indexOf("$", i2 + 1);
                String substring = str.substring(i2 + 1, indexOf2);
                if (substring.equals("RepresentationID")) {
                    iArr[i] = 1;
                } else {
                    int indexOf3 = substring.indexOf("%0");
                    String str2 = "%01d";
                    if (indexOf3 != -1) {
                        str2 = substring.substring(indexOf3);
                        if (!str2.endsWith("d")) {
                            str2 = str2 + "d";
                        }
                        substring = substring.substring(0, indexOf3);
                    }
                    if (substring.equals("Number")) {
                        iArr[i] = 2;
                    } else if (substring.equals("Bandwidth")) {
                        iArr[i] = 3;
                    } else if (substring.equals("Time")) {
                        iArr[i] = 4;
                    } else {
                        throw new IllegalArgumentException("Invalid template: " + str);
                    }
                    strArr2[i] = str2;
                }
                i++;
                strArr[i] = "";
                i2 = indexOf2 + 1;
            }
        }
        return i;
    }

    public static j a(String str) {
        String[] strArr = new String[5];
        int[] iArr = new int[4];
        String[] strArr2 = new String[4];
        return new j(strArr, iArr, strArr2, a(str, strArr, iArr, strArr2));
    }

    public String a(String str, int i, int i2, long j) {
        StringBuilder stringBuilder = new StringBuilder();
        for (int i3 = 0; i3 < this.d; i3++) {
            stringBuilder.append(this.a[i3]);
            if (this.b[i3] == 1) {
                stringBuilder.append(str);
            } else if (this.b[i3] == 2) {
                stringBuilder.append(String.format(Locale.US, this.c[i3], new Object[]{Integer.valueOf(i)}));
            } else if (this.b[i3] == 3) {
                stringBuilder.append(String.format(Locale.US, this.c[i3], new Object[]{Integer.valueOf(i2)}));
            } else if (this.b[i3] == 4) {
                stringBuilder.append(String.format(Locale.US, this.c[i3], new Object[]{Long.valueOf(j)}));
            }
        }
        stringBuilder.append(this.a[this.d]);
        return stringBuilder.toString();
    }
}
