package com.google.android.gms.common.api;

import android.support.v4.util.ArrayMap;
import android.text.TextUtils;
import com.google.android.gms.c.vc;
import com.google.android.gms.common.a;
import java.util.ArrayList;

public class l extends Exception {
    private final ArrayMap<vc<?>, a> a;

    public l(ArrayMap<vc<?>, a> arrayMap) {
        this.a = arrayMap;
    }

    public ArrayMap<vc<?>, a> a() {
        return this.a;
    }

    public String getMessage() {
        ArrayList arrayList = new ArrayList();
        Object obj = 1;
        for (vc vcVar : this.a.keySet()) {
            a aVar = (a) this.a.get(vcVar);
            if (aVar.b()) {
                obj = null;
            }
            String valueOf = String.valueOf(vcVar.a());
            String valueOf2 = String.valueOf(aVar);
            arrayList.add(new StringBuilder((String.valueOf(valueOf).length() + 2) + String.valueOf(valueOf2).length()).append(valueOf).append(": ").append(valueOf2).toString());
        }
        StringBuilder stringBuilder = new StringBuilder();
        if (obj != null) {
            stringBuilder.append("None of the queried APIs are available. ");
        } else {
            stringBuilder.append("Some of the queried APIs are unavailable. ");
        }
        stringBuilder.append(TextUtils.join("; ", arrayList));
        return stringBuilder.toString();
    }
}
