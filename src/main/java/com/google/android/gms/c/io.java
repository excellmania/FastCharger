package com.google.android.gms.c;

import android.content.SharedPreferences;
import com.google.android.gms.ads.internal.v;

@pa
public abstract class io<T> {
    private final int a;
    private final String b;
    private final T c;

    private io(int i, String str, T t) {
        this.a = i;
        this.b = str;
        this.c = t;
        v.p().a(this);
    }

    /* synthetic */ io(int i, String str, Object obj, AnonymousClass1 anonymousClass1) {
        this(i, str, obj);
    }

    public static io<String> a(int i, String str) {
        io a = a(i, str, null);
        v.p().b(a);
        return a;
    }

    public static io<Float> a(int i, String str, float f) {
        return new io<Float>(i, str, Float.valueOf(f)) {
            /* renamed from: b */
            public Float a(SharedPreferences sharedPreferences) {
                return Float.valueOf(sharedPreferences.getFloat(a(), ((Float) b()).floatValue()));
            }
        };
    }

    public static io<Integer> a(int i, String str, int i2) {
        return new io<Integer>(i, str, Integer.valueOf(i2)) {
            /* renamed from: b */
            public Integer a(SharedPreferences sharedPreferences) {
                return Integer.valueOf(sharedPreferences.getInt(a(), ((Integer) b()).intValue()));
            }
        };
    }

    public static io<Long> a(int i, String str, long j) {
        return new io<Long>(i, str, Long.valueOf(j)) {
            /* renamed from: b */
            public Long a(SharedPreferences sharedPreferences) {
                return Long.valueOf(sharedPreferences.getLong(a(), ((Long) b()).longValue()));
            }
        };
    }

    public static io<Boolean> a(int i, String str, Boolean bool) {
        return new io<Boolean>(i, str, bool) {
            /* renamed from: b */
            public Boolean a(SharedPreferences sharedPreferences) {
                return Boolean.valueOf(sharedPreferences.getBoolean(a(), ((Boolean) b()).booleanValue()));
            }
        };
    }

    public static io<String> a(int i, String str, String str2) {
        return new io<String>(i, str, str2) {
            /* renamed from: b */
            public String a(SharedPreferences sharedPreferences) {
                return sharedPreferences.getString(a(), (String) b());
            }
        };
    }

    public static io<String> b(int i, String str) {
        io a = a(i, str, null);
        v.p().c(a);
        return a;
    }

    public abstract T a(SharedPreferences sharedPreferences);

    public String a() {
        return this.b;
    }

    public T b() {
        return this.c;
    }

    public T c() {
        return v.q().a(this);
    }
}
