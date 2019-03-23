package com.google.android.gms.c;

import android.os.Bundle;
import com.google.android.gms.c.os.a;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import org.json.JSONObject;

@pa
public class ou implements a<jl> {
    private final boolean a;
    private final boolean b;

    public ou(boolean z, boolean z2) {
        this.a = z;
        this.b = z2;
    }

    private tr a(th<tr> thVar) {
        try {
            return (tr) thVar.get((long) ((Integer) is.ci.c()).intValue(), TimeUnit.SECONDS);
        } catch (InterruptedException e) {
            sz.c("InterruptedException occurred while waiting for video to load", e);
            Thread.currentThread().interrupt();
        } catch (CancellationException | ExecutionException | TimeoutException e2) {
            sz.c("Exception occurred while waiting for video to load", e2);
        }
        return null;
    }

    /* renamed from: b */
    public jl a(os osVar, JSONObject jSONObject) {
        List<th> a = osVar.a(jSONObject, "images", true, this.a, this.b);
        th a2 = osVar.a(jSONObject, "app_icon", true, this.a);
        th a3 = osVar.a(jSONObject, "video");
        th b = osVar.b(jSONObject);
        ArrayList arrayList = new ArrayList();
        for (th thVar : a) {
            arrayList.add((jk) thVar.get());
        }
        tr a4 = a(a3);
        return new jl(jSONObject.getString("headline"), arrayList, jSONObject.getString("body"), (jv) a2.get(), jSONObject.getString("call_to_action"), jSONObject.optDouble("rating", -1.0d), jSONObject.optString("store"), jSONObject.optString("price"), (ji) b.get(), new Bundle(), a4 != null ? a4.z() : null, a4 != null ? a4.b() : null);
    }
}
