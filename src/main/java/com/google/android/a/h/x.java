package com.google.android.a.h;

import android.content.Context;
import android.content.pm.PackageManager.NameNotFoundException;
import android.net.Uri;
import android.os.Build;
import android.os.Build.VERSION;
import android.support.v4.media.session.PlaybackStateCompat;
import android.text.TextUtils;
import com.google.android.a.g.h;
import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.Method;
import java.math.BigDecimal;
import java.net.HttpURLConnection;
import java.text.ParseException;
import java.util.Arrays;
import java.util.GregorianCalendar;
import java.util.List;
import java.util.Locale;
import java.util.TimeZone;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public final class x {
    public static final int a;
    public static final String b = Build.DEVICE;
    public static final String c = Build.MANUFACTURER;
    public static final String d = Build.MODEL;
    private static final Pattern e = Pattern.compile("(\\d\\d\\d\\d)\\-(\\d\\d)\\-(\\d\\d)[Tt](\\d\\d):(\\d\\d):(\\d\\d)(\\.(\\d+))?([Zz]|((\\+|\\-)(\\d\\d):(\\d\\d)))?");
    private static final Pattern f = Pattern.compile("^(-)?P(([0-9]*)Y)?(([0-9]*)M)?(([0-9]*)D)?(T(([0-9]*)H)?(([0-9]*)M)?(([0-9.]*)S)?)?$");
    private static final Pattern g = Pattern.compile("%([A-Fa-f0-9]{2})");

    static {
        int i = (VERSION.SDK_INT == 23 && VERSION.CODENAME.charAt(0) == 'N') ? 24 : VERSION.SDK_INT;
        a = i;
    }

    public static int a(int i, int i2) {
        return ((i + i2) - 1) / i2;
    }

    public static int a(long j) {
        return (int) (j >>> 32);
    }

    public static int a(long[] jArr, long j, boolean z, boolean z2) {
        int binarySearch = Arrays.binarySearch(jArr, j);
        if (binarySearch < 0) {
            binarySearch = -(binarySearch + 2);
        } else if (!z) {
            binarySearch--;
        }
        return z2 ? Math.max(0, binarySearch) : binarySearch;
    }

    public static long a(long j, long j2) {
        return ((j + j2) - 1) / j2;
    }

    public static long a(long j, long j2, long j3) {
        return (j3 < j2 || j3 % j2 != 0) ? (j3 >= j2 || j2 % j3 != 0) ? (long) ((((double) j2) / ((double) j3)) * ((double) j)) : (j2 / j3) * j : j / (j3 / j2);
    }

    public static h a(h hVar, int i) {
        long j = -1;
        if (i == 0) {
            return hVar;
        }
        if (hVar.e != -1) {
            j = hVar.e - ((long) i);
        }
        return new h(hVar.a, hVar.d + ((long) i), j, hVar.f, hVar.g);
    }

    public static String a(Context context, String str) {
        String str2;
        try {
            str2 = context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionName;
        } catch (NameNotFoundException e) {
            str2 = "?";
        }
        return str + "/" + str2 + " (Linux;Android " + VERSION.RELEASE + ") " + "ExoPlayerLib/" + "1.5.8";
    }

    public static <T> String a(T[] tArr) {
        StringBuilder stringBuilder = new StringBuilder();
        for (int i = 0; i < tArr.length; i++) {
            stringBuilder.append(tArr[i].getClass().getSimpleName());
            if (i < tArr.length - 1) {
                stringBuilder.append(", ");
            }
        }
        return stringBuilder.toString();
    }

    public static ExecutorService a(final String str) {
        return Executors.newSingleThreadExecutor(new ThreadFactory() {
            public Thread newThread(Runnable runnable) {
                return new Thread(runnable, str);
            }
        });
    }

    public static void a(HttpURLConnection httpURLConnection, long j) {
        if (a == 19 || a == 20) {
            try {
                InputStream inputStream = httpURLConnection.getInputStream();
                if (j == -1) {
                    if (inputStream.read() == -1) {
                        return;
                    }
                } else if (j <= PlaybackStateCompat.ACTION_PLAY_FROM_SEARCH) {
                    return;
                }
                String name = inputStream.getClass().getName();
                if (name.equals("com.android.okhttp.internal.http.HttpTransport$ChunkedInputStream") || name.equals("com.android.okhttp.internal.http.HttpTransport$FixedLengthInputStream")) {
                    Method declaredMethod = inputStream.getClass().getSuperclass().getDeclaredMethod("unexpectedEndOfInput", new Class[0]);
                    declaredMethod.setAccessible(true);
                    declaredMethod.invoke(inputStream, new Object[0]);
                }
            } catch (IOException | Exception e) {
            }
        }
    }

    public static void a(long[] jArr, long j, long j2) {
        int i = 0;
        long j3;
        if (j2 >= j && j2 % j == 0) {
            j3 = j2 / j;
            while (i < jArr.length) {
                jArr[i] = jArr[i] / j3;
                i++;
            }
        } else if (j2 >= j || j % j2 != 0) {
            double d = ((double) j) / ((double) j2);
            while (i < jArr.length) {
                jArr[i] = (long) (((double) jArr[i]) * d);
                i++;
            }
        } else {
            j3 = j / j2;
            while (i < jArr.length) {
                jArr[i] = jArr[i] * j3;
                i++;
            }
        }
    }

    public static boolean a(Uri uri) {
        String scheme = uri.getScheme();
        return TextUtils.isEmpty(scheme) || scheme.equals("file");
    }

    public static boolean a(Object obj, Object obj2) {
        return obj == null ? obj2 == null : obj.equals(obj2);
    }

    public static boolean a(Object[] objArr, Object obj) {
        for (Object a : objArr) {
            if (a(a, obj)) {
                return true;
            }
        }
        return false;
    }

    public static int[] a(int i) {
        int[] iArr = new int[i];
        for (int i2 = 0; i2 < i; i2++) {
            iArr[i2] = i2;
        }
        return iArr;
    }

    public static int[] a(List<Integer> list) {
        if (list == null) {
            return null;
        }
        int size = list.size();
        int[] iArr = new int[size];
        for (int i = 0; i < size; i++) {
            iArr[i] = ((Integer) list.get(i)).intValue();
        }
        return iArr;
    }

    public static int b(int i) {
        switch (i) {
            case 8:
                return 3;
            case 16:
                return 2;
            case 24:
                return Integer.MIN_VALUE;
            case 32:
                return 1073741824;
            default:
                return 0;
        }
    }

    public static int b(long j) {
        return (int) j;
    }

    public static int b(long[] jArr, long j, boolean z, boolean z2) {
        int binarySearch = Arrays.binarySearch(jArr, j);
        if (binarySearch < 0) {
            binarySearch ^= -1;
        } else if (!z) {
            binarySearch++;
        }
        return z2 ? Math.min(jArr.length - 1, binarySearch) : binarySearch;
    }

    public static long b(int i, int i2) {
        return (((long) i) << 32) | (((long) i2) & 4294967295L);
    }

    public static String b(String str) {
        return str == null ? null : str.toLowerCase(Locale.US);
    }

    public static long c(String str) {
        int i = 1;
        double d = 0.0d;
        Matcher matcher = f.matcher(str);
        if (!matcher.matches()) {
            return (long) ((Double.parseDouble(str) * 3600.0d) * 1000.0d);
        }
        if (TextUtils.isEmpty(matcher.group(1))) {
            i = 0;
        }
        String group = matcher.group(3);
        double parseDouble = group != null ? Double.parseDouble(group) * 3.1556908E7d : 0.0d;
        String group2 = matcher.group(5);
        double parseDouble2 = (group2 != null ? Double.parseDouble(group2) * 2629739.0d : 0.0d) + parseDouble;
        group = matcher.group(7);
        parseDouble2 += group != null ? Double.parseDouble(group) * 86400.0d : 0.0d;
        group = matcher.group(10);
        parseDouble2 += group != null ? Double.parseDouble(group) * 3600.0d : 0.0d;
        group = matcher.group(12);
        parseDouble = (group != null ? Double.parseDouble(group) * 60.0d : 0.0d) + parseDouble2;
        String group3 = matcher.group(14);
        if (group3 != null) {
            d = Double.parseDouble(group3);
        }
        long j = (long) ((parseDouble + d) * 1000.0d);
        return i != 0 ? -j : j;
    }

    public static long d(String str) {
        Matcher matcher = e.matcher(str);
        if (matcher.matches()) {
            int i;
            if (matcher.group(9) == null) {
                i = 0;
            } else if (matcher.group(9).equalsIgnoreCase("Z")) {
                i = 0;
            } else {
                int parseInt = (Integer.parseInt(matcher.group(12)) * 60) + Integer.parseInt(matcher.group(13));
                i = matcher.group(11).equals("-") ? parseInt * -1 : parseInt;
            }
            GregorianCalendar gregorianCalendar = new GregorianCalendar(TimeZone.getTimeZone("GMT"));
            gregorianCalendar.clear();
            gregorianCalendar.set(Integer.parseInt(matcher.group(1)), Integer.parseInt(matcher.group(2)) - 1, Integer.parseInt(matcher.group(3)), Integer.parseInt(matcher.group(4)), Integer.parseInt(matcher.group(5)), Integer.parseInt(matcher.group(6)));
            if (!TextUtils.isEmpty(matcher.group(8))) {
                gregorianCalendar.set(14, new BigDecimal("0." + matcher.group(8)).movePointRight(3).intValue());
            }
            long timeInMillis = gregorianCalendar.getTimeInMillis();
            return i != 0 ? timeInMillis - ((long) (60000 * i)) : timeInMillis;
        } else {
            throw new ParseException("Invalid date/time format: " + str, 0);
        }
    }

    public static int e(String str) {
        int i = 0;
        int length = str.length();
        b.a(length <= 4);
        int i2 = 0;
        while (i < length) {
            i2 = (i2 << 8) | str.charAt(i);
            i++;
        }
        return i2;
    }
}
