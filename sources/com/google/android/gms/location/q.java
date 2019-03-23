package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import android.support.annotation.Nullable;
import com.google.android.gms.c.bp;
import com.google.android.gms.common.internal.b;
import com.google.android.gms.common.internal.c;
import com.google.android.gms.common.internal.safeparcel.a;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.TreeSet;

public class q extends a {
    public static final Creator<q> CREATOR = new r();
    public static final Comparator<o> a = new Comparator<o>() {
        /* renamed from: a */
        public int compare(o oVar, o oVar2) {
            int b = oVar.b();
            int b2 = oVar2.b();
            if (b != b2) {
                return b < b2 ? -1 : 1;
            } else {
                b = oVar.c();
                b2 = oVar2.c();
                return b == b2 ? 0 : b >= b2 ? 1 : -1;
            }
        }
    };
    private final int b;
    private final List<o> c;
    @Nullable
    private final String d;
    private final List<bp> e;

    q(int i, List<o> list, @Nullable String str, @Nullable List<bp> list2) {
        c.a((Object) list, (Object) "transitions can't be null");
        c.b(list.size() > 0, "transitions can't be empty.");
        a(list);
        this.b = i;
        this.c = Collections.unmodifiableList(list);
        this.d = str;
        this.e = list2 == null ? Collections.emptyList() : Collections.unmodifiableList(list2);
    }

    private static void a(List<o> list) {
        TreeSet treeSet = new TreeSet(a);
        for (o add : list) {
            c.b(treeSet.add(add), String.format("Found duplicated transition: %s.", new Object[]{add}));
        }
    }

    public int a() {
        return this.b;
    }

    public List<o> b() {
        return this.c;
    }

    @Nullable
    public String c() {
        return this.d;
    }

    public List<bp> d() {
        return this.e;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        q qVar = (q) obj;
        return b.a(this.c, qVar.c) && b.a(this.d, qVar.d) && b.a(this.e, qVar.e);
    }

    public int hashCode() {
        int i = 0;
        int hashCode = ((this.d != null ? this.d.hashCode() : 0) + (this.c.hashCode() * 31)) * 31;
        if (this.e != null) {
            i = this.e.hashCode();
        }
        return hashCode + i;
    }

    public String toString() {
        String valueOf = String.valueOf(this.c);
        String str = this.d;
        String valueOf2 = String.valueOf(this.e);
        return new StringBuilder(((String.valueOf(valueOf).length() + 61) + String.valueOf(str).length()) + String.valueOf(valueOf2).length()).append("ActivityTransitionRequest [mTransitions=").append(valueOf).append(", mTag='").append(str).append("'").append(", mClients=").append(valueOf2).append("]").toString();
    }

    public void writeToParcel(Parcel parcel, int i) {
        r.a(this, parcel, i);
    }
}
