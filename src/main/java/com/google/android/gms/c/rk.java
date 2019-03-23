package com.google.android.gms.c;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import com.google.android.gms.common.internal.b;
import com.google.android.gms.common.internal.safeparcel.a;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@pa
public final class rk extends a {
    public static final Creator<rk> CREATOR = new rl();
    public final int a;
    public final String b;
    public final int c;

    public rk(int i, String str, int i2) {
        this.a = i;
        this.b = str;
        this.c = i2;
    }

    public rk(com.google.android.gms.ads.d.a aVar) {
        this(1, aVar.a(), aVar.b());
    }

    public rk(String str, int i) {
        this(1, str, i);
    }

    @Nullable
    public static rk a(@Nullable String str) {
        rk rkVar = null;
        if (TextUtils.isEmpty(str)) {
            return rkVar;
        }
        try {
            return a(new JSONArray(str));
        } catch (JSONException e) {
            return rkVar;
        }
    }

    @Nullable
    public static rk a(JSONArray jSONArray) {
        return (jSONArray == null || jSONArray.length() == 0) ? null : new rk(jSONArray.getJSONObject(0).optString("rb_type"), jSONArray.getJSONObject(0).optInt("rb_amount"));
    }

    public JSONArray a() {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("rb_type", this.b);
        jSONObject.put("rb_amount", this.c);
        JSONArray jSONArray = new JSONArray();
        jSONArray.put(jSONObject);
        return jSONArray;
    }

    public boolean equals(Object obj) {
        if (obj == null || !(obj instanceof rk)) {
            return false;
        }
        rk rkVar = (rk) obj;
        return b.a(this.b, rkVar.b) && b.a(Integer.valueOf(this.c), Integer.valueOf(rkVar.c));
    }

    public int hashCode() {
        return b.a(this.b, Integer.valueOf(this.c));
    }

    public void writeToParcel(Parcel parcel, int i) {
        rl.a(this, parcel, i);
    }
}
