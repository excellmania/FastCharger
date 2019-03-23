package com.google.android.gms.c;

import android.os.Bundle;
import android.support.annotation.Nullable;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
import java.util.TreeSet;

@pa
class lo {
    private final Object[] a;

    lo(gv gvVar, String str, int i) {
        this.a = a(gvVar, str, i);
    }

    private static String a(@Nullable Bundle bundle) {
        if (bundle == null) {
            return null;
        }
        StringBuilder stringBuilder = new StringBuilder();
        Iterator it = new TreeSet(bundle.keySet()).iterator();
        while (it.hasNext()) {
            Object obj = bundle.get((String) it.next());
            String a = obj == null ? "null" : obj instanceof Bundle ? a((Bundle) obj) : obj.toString();
            stringBuilder.append(a);
        }
        return stringBuilder.toString();
    }

    private static Object[] a(gv gvVar, String str, int i) {
        HashSet hashSet = new HashSet(Arrays.asList(((String) is.aM.c()).split(",")));
        ArrayList arrayList = new ArrayList();
        arrayList.add(str);
        if (hashSet.contains("networkType")) {
            arrayList.add(Integer.valueOf(i));
        }
        if (hashSet.contains("birthday")) {
            arrayList.add(Long.valueOf(gvVar.b));
        }
        if (hashSet.contains("extras")) {
            arrayList.add(a(gvVar.c));
        }
        if (hashSet.contains("gender")) {
            arrayList.add(Integer.valueOf(gvVar.d));
        }
        if (hashSet.contains("keywords")) {
            if (gvVar.e != null) {
                arrayList.add(gvVar.e.toString());
            } else {
                arrayList.add(null);
            }
        }
        if (hashSet.contains("isTestDevice")) {
            arrayList.add(Boolean.valueOf(gvVar.f));
        }
        if (hashSet.contains("tagForChildDirectedTreatment")) {
            arrayList.add(Integer.valueOf(gvVar.g));
        }
        if (hashSet.contains("manualImpressionsEnabled")) {
            arrayList.add(Boolean.valueOf(gvVar.h));
        }
        if (hashSet.contains("publisherProvidedId")) {
            arrayList.add(gvVar.i);
        }
        if (hashSet.contains("location")) {
            if (gvVar.k != null) {
                arrayList.add(gvVar.k.toString());
            } else {
                arrayList.add(null);
            }
        }
        if (hashSet.contains("contentUrl")) {
            arrayList.add(gvVar.l);
        }
        if (hashSet.contains("networkExtras")) {
            arrayList.add(a(gvVar.m));
        }
        if (hashSet.contains("customTargeting")) {
            arrayList.add(a(gvVar.n));
        }
        if (hashSet.contains("categoryExclusions")) {
            if (gvVar.o != null) {
                arrayList.add(gvVar.o.toString());
            } else {
                arrayList.add(null);
            }
        }
        if (hashSet.contains("requestAgent")) {
            arrayList.add(gvVar.p);
        }
        if (hashSet.contains("requestPackage")) {
            arrayList.add(gvVar.q);
        }
        return arrayList.toArray();
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof lo)) {
            return false;
        }
        return Arrays.equals(this.a, ((lo) obj).a);
    }

    public int hashCode() {
        return Arrays.hashCode(this.a);
    }

    public String toString() {
        String valueOf = String.valueOf(Arrays.toString(this.a));
        return new StringBuilder(String.valueOf(valueOf).length() + 24).append("[InterstitialAdPoolKey ").append(valueOf).append("]").toString();
    }
}
