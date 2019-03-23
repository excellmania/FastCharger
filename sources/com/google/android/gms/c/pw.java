package com.google.android.gms.c;

import android.location.Location;
import android.os.Bundle;
import android.support.annotation.Nullable;
import com.google.android.gms.c.qj.a;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONObject;

@pa
public class pw {
    @Nullable
    public Bundle a;
    @Nullable
    public Bundle b;
    @Nullable
    public List<String> c = new ArrayList();
    @Nullable
    public Location d;
    @Nullable
    public a e;
    @Nullable
    public String f;
    @Nullable
    public String g;
    public pg h;
    public qf i;
    public JSONObject j = new JSONObject();

    public pw a(Location location) {
        this.d = location;
        return this;
    }

    public pw a(Bundle bundle) {
        this.b = bundle;
        return this;
    }

    public pw a(pg pgVar) {
        this.h = pgVar;
        return this;
    }

    public pw a(qf qfVar) {
        this.i = qfVar;
        return this;
    }

    public pw a(a aVar) {
        this.e = aVar;
        return this;
    }

    public pw a(String str) {
        this.g = str;
        return this;
    }

    public pw a(List<String> list) {
        if (list == null) {
            this.c.clear();
        }
        this.c = list;
        return this;
    }

    public pw a(JSONObject jSONObject) {
        this.j = jSONObject;
        return this;
    }

    public pw b(Bundle bundle) {
        this.a = bundle;
        return this;
    }

    public pw b(String str) {
        this.f = str;
        return this;
    }
}
