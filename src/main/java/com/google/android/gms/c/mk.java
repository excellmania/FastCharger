package com.google.android.gms.c;

import android.content.Context;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.v;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

@pa
public class mk {
    public List<String> a(JSONObject jSONObject, String str) {
        JSONArray optJSONArray = jSONObject.optJSONArray(str);
        if (optJSONArray == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList(optJSONArray.length());
        for (int i = 0; i < optJSONArray.length(); i++) {
            arrayList.add(optJSONArray.getString(i));
        }
        return Collections.unmodifiableList(arrayList);
    }

    public void a(Context context, String str, rv rvVar, String str2, boolean z, List<String> list) {
        if (list != null && !list.isEmpty()) {
            String str3 = z ? "1" : "0";
            for (String replaceAll : list) {
                String replaceAll2 = replaceAll2.replaceAll("@gw_adlocid@", str2).replaceAll("@gw_adnetrefresh@", str3).replaceAll("@gw_qdata@", rvVar.r.h).replaceAll("@gw_sdkver@", str).replaceAll("@gw_sessid@", v.i().a()).replaceAll("@gw_seqnum@", rvVar.i);
                if (!TextUtils.isEmpty(rvVar.u)) {
                    replaceAll2 = replaceAll2.replaceAll("@gw_adnetstatus@", rvVar.u);
                }
                if (rvVar.o != null) {
                    replaceAll2 = replaceAll2.replaceAll("@gw_adnetid@", rvVar.o.b).replaceAll("@gw_allocid@", rvVar.o.d);
                }
                new st(context, str, replaceAll2).e();
            }
        }
    }
}
