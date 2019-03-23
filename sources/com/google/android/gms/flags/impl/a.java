package com.google.android.gms.flags.impl;

import android.content.SharedPreferences;
import com.google.android.gms.c.be;
import java.util.concurrent.Callable;

public abstract class a<T> {

    public static class a extends a<Boolean> {
        public static Boolean a(final SharedPreferences sharedPreferences, final String str, final Boolean bool) {
            return (Boolean) be.a(new Callable<Boolean>() {
                /* renamed from: a */
                public Boolean call() {
                    return Boolean.valueOf(sharedPreferences.getBoolean(str, bool.booleanValue()));
                }
            });
        }
    }

    public static class b extends a<Integer> {
        public static Integer a(final SharedPreferences sharedPreferences, final String str, final Integer num) {
            return (Integer) be.a(new Callable<Integer>() {
                /* renamed from: a */
                public Integer call() {
                    return Integer.valueOf(sharedPreferences.getInt(str, num.intValue()));
                }
            });
        }
    }

    public static class c extends a<Long> {
        public static Long a(final SharedPreferences sharedPreferences, final String str, final Long l) {
            return (Long) be.a(new Callable<Long>() {
                /* renamed from: a */
                public Long call() {
                    return Long.valueOf(sharedPreferences.getLong(str, l.longValue()));
                }
            });
        }
    }

    public static class d extends a<String> {
        public static String a(final SharedPreferences sharedPreferences, final String str, final String str2) {
            return (String) be.a(new Callable<String>() {
                /* renamed from: a */
                public String call() {
                    return sharedPreferences.getString(str, str2);
                }
            });
        }
    }
}
