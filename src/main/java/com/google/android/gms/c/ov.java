package com.google.android.gms.c;

import android.os.Bundle;
import com.google.android.gms.c.os.a;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONObject;

@pa
public class ov implements a<jm> {
    private final boolean a;
    private final boolean b;

    public ov(boolean z, boolean z2) {
        this.a = z;
        this.b = z2;
    }

    /* renamed from: b */
    public jm a(os osVar, JSONObject jSONObject) {
        List<th> a = osVar.a(jSONObject, "images", true, this.a, this.b);
        th a2 = osVar.a(jSONObject, "secondary_image", false, this.a);
        th b = osVar.b(jSONObject);
        ArrayList arrayList = new ArrayList();
        for (th thVar : a) {
            arrayList.add((jk) thVar.get());
        }
        return new jm(jSONObject.getString("headline"), arrayList, jSONObject.getString("body"), (jv) a2.get(), jSONObject.getString("call_to_action"), jSONObject.getString("advertiser"), (ji) b.get(), new Bundle());
    }
}
