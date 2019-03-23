package com.google.android.gms.c;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import android.support.annotation.Nullable;
import com.google.android.gms.common.internal.safeparcel.a;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@pa
public final class pl extends a {
    public static final Creator<pl> CREATOR = new pm();
    public final int a;
    public final boolean b;
    @Nullable
    public final List<String> c;

    public pl() {
        this(1, false, Collections.emptyList());
    }

    public pl(int i, boolean z, List<String> list) {
        this.a = i;
        this.b = z;
        this.c = list;
    }

    public pl(boolean z) {
        this(1, z, Collections.emptyList());
    }

    public pl(boolean z, List<String> list) {
        this(1, z, list);
    }

    @Nullable
    public static pl a(JSONObject jSONObject) {
        if (jSONObject == null) {
            return new pl();
        }
        JSONArray optJSONArray = jSONObject.optJSONArray("reporting_urls");
        ArrayList arrayList = new ArrayList();
        if (optJSONArray != null) {
            for (int i = 0; i < optJSONArray.length(); i++) {
                try {
                    arrayList.add(optJSONArray.getString(i));
                } catch (JSONException e) {
                    sz.c("Error grabbing url from json.", e);
                }
            }
        }
        return new pl(jSONObject.optBoolean("enable_protection"), arrayList);
    }

    public void writeToParcel(Parcel parcel, int i) {
        pm.a(this, parcel, i);
    }
}
