package com.google.android.gms.c;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import com.google.android.gms.common.internal.safeparcel.a;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import org.json.JSONArray;
import org.json.JSONObject;

@pa
public class rn extends a {
    public static final Creator<rn> CREATOR = new ro();
    public final int a;
    public final String b;
    public final String c;
    public final boolean d;
    public final boolean e;
    public final List<String> f;

    public rn(int i, String str, String str2, boolean z, boolean z2, List<String> list) {
        this.a = i;
        this.b = str;
        this.c = str2;
        this.d = z;
        this.e = z2;
        this.f = list;
    }

    @Nullable
    public static rn a(JSONObject jSONObject) {
        int i = 0;
        if (jSONObject == null) {
            return null;
        }
        String optString = jSONObject.optString("click_string", "");
        String optString2 = jSONObject.optString("report_url", "");
        boolean optBoolean = jSONObject.optBoolean("rendered_ad_enabled", false);
        boolean optBoolean2 = jSONObject.optBoolean("non_malicious_reporting_enabled", false);
        JSONArray optJSONArray = jSONObject.optJSONArray("allowed_headers");
        if (optJSONArray == null) {
            optJSONArray = new JSONArray();
        }
        ArrayList arrayList = new ArrayList();
        while (i < optJSONArray.length()) {
            String optString3 = optJSONArray.optString(i);
            if (!TextUtils.isEmpty(optString3)) {
                arrayList.add(optString3.toLowerCase(Locale.ENGLISH));
            }
            i++;
        }
        return new rn(2, optString, optString2, optBoolean, optBoolean2, arrayList);
    }

    public void writeToParcel(Parcel parcel, int i) {
        ro.a(this, parcel, i);
    }
}
