package com.google.android.gms.common.util;

import android.support.v4.util.ArrayMap;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

public final class d {
    public static <K, V> Map<K, V> a(K k, V v, K k2, V v2, K k3, V v3, K k4, V v4, K k5, V v5, K k6, V v6) {
        ArrayMap arrayMap = new ArrayMap(6);
        arrayMap.put(k, v);
        arrayMap.put(k2, v2);
        arrayMap.put(k3, v3);
        arrayMap.put(k4, v4);
        arrayMap.put(k5, v5);
        arrayMap.put(k6, v6);
        return Collections.unmodifiableMap(arrayMap);
    }

    public static <T> Set<T> a() {
        return Collections.emptySet();
    }

    public static <T> Set<T> a(T t) {
        return Collections.singleton(t);
    }

    public static <T> Set<T> a(T t, T t2) {
        a aVar = new a(2);
        aVar.add(t);
        aVar.add(t2);
        return Collections.unmodifiableSet(aVar);
    }

    public static <T> Set<T> a(T t, T t2, T t3) {
        a aVar = new a(3);
        aVar.add(t);
        aVar.add(t2);
        aVar.add(t3);
        return Collections.unmodifiableSet(aVar);
    }

    public static <T> Set<T> a(T t, T t2, T t3, T t4) {
        a aVar = new a(4);
        aVar.add(t);
        aVar.add(t2);
        aVar.add(t3);
        aVar.add(t4);
        return Collections.unmodifiableSet(aVar);
    }

    public static <T> Set<T> a(T... tArr) {
        switch (tArr.length) {
            case 0:
                return a();
            case 1:
                return a(tArr[0]);
            case 2:
                return a(tArr[0], tArr[1]);
            case 3:
                return a(tArr[0], tArr[1], tArr[2]);
            case 4:
                return a(tArr[0], tArr[1], tArr[2], tArr[3]);
            default:
                return Collections.unmodifiableSet(tArr.length <= 32 ? new a(Arrays.asList(tArr)) : new HashSet(Arrays.asList(tArr)));
        }
    }

    public static <K, V> Map<K, V> b(K k, V v) {
        return Collections.singletonMap(k, v);
    }
}
