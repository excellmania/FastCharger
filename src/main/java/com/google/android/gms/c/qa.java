package com.google.android.gms.c;

import android.content.Context;
import android.graphics.Color;
import android.location.Location;
import android.os.Build;
import android.os.Bundle;
import android.os.Debug.MemoryInfo;
import android.support.annotation.Nullable;
import android.support.v4.view.ViewCompat;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.v;
import com.google.android.gms.c.qj.a;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import org.apache.http.client.methods.HttpHead;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@pa
public final class qa {
    private static final SimpleDateFormat a = new SimpleDateFormat("yyyyMMdd", Locale.US);

    private static Bundle a(Bundle bundle) {
        Bundle bundle2 = new Bundle();
        bundle2.putString("runtime_free", Long.toString(bundle.getLong("runtime_free_memory", -1)));
        bundle2.putString("runtime_max", Long.toString(bundle.getLong("runtime_max_memory", -1)));
        bundle2.putString("runtime_total", Long.toString(bundle.getLong("runtime_total_memory", -1)));
        MemoryInfo memoryInfo = (MemoryInfo) bundle.getParcelable("debug_memory_info");
        if (memoryInfo != null) {
            bundle2.putString("debug_info_dalvik_private_dirty", Integer.toString(memoryInfo.dalvikPrivateDirty));
            bundle2.putString("debug_info_dalvik_pss", Integer.toString(memoryInfo.dalvikPss));
            bundle2.putString("debug_info_dalvik_shared_dirty", Integer.toString(memoryInfo.dalvikSharedDirty));
            bundle2.putString("debug_info_native_private_dirty", Integer.toString(memoryInfo.nativePrivateDirty));
            bundle2.putString("debug_info_native_pss", Integer.toString(memoryInfo.nativePss));
            bundle2.putString("debug_info_native_shared_dirty", Integer.toString(memoryInfo.nativeSharedDirty));
            bundle2.putString("debug_info_other_private_dirty", Integer.toString(memoryInfo.otherPrivateDirty));
            bundle2.putString("debug_info_other_pss", Integer.toString(memoryInfo.otherPss));
            bundle2.putString("debug_info_other_shared_dirty", Integer.toString(memoryInfo.otherSharedDirty));
        }
        return bundle2;
    }

    /* JADX WARNING: Removed duplicated region for block: B:53:0x0144 A:{Catch:{ JSONException -> 0x0236 }} */
    public static com.google.android.gms.c.pj a(android.content.Context r47, com.google.android.gms.c.pg r48, java.lang.String r49) {
        /*
        r28 = new org.json.JSONObject;	 Catch:{ JSONException -> 0x0236 }
        r0 = r28;
        r1 = r49;
        r0.<init>(r1);	 Catch:{ JSONException -> 0x0236 }
        r4 = "ad_base_url";
        r5 = 0;
        r0 = r28;
        r6 = r0.optString(r4, r5);	 Catch:{ JSONException -> 0x0236 }
        r4 = "ad_url";
        r5 = 0;
        r0 = r28;
        r7 = r0.optString(r4, r5);	 Catch:{ JSONException -> 0x0236 }
        r4 = "ad_size";
        r5 = 0;
        r0 = r28;
        r19 = r0.optString(r4, r5);	 Catch:{ JSONException -> 0x0236 }
        r4 = "ad_slot_size";
        r0 = r28;
        r1 = r19;
        r43 = r0.optString(r4, r1);	 Catch:{ JSONException -> 0x0236 }
        if (r48 == 0) goto L_0x00cf;
    L_0x0030:
        r0 = r48;
        r4 = r0.m;	 Catch:{ JSONException -> 0x0236 }
        if (r4 == 0) goto L_0x00cf;
    L_0x0036:
        r27 = 1;
    L_0x0038:
        r4 = "ad_json";
        r5 = 0;
        r0 = r28;
        r5 = r0.optString(r4, r5);	 Catch:{ JSONException -> 0x0236 }
        if (r5 != 0) goto L_0x004c;
    L_0x0043:
        r4 = "ad_html";
        r5 = 0;
        r0 = r28;
        r5 = r0.optString(r4, r5);	 Catch:{ JSONException -> 0x0236 }
    L_0x004c:
        if (r5 != 0) goto L_0x0057;
    L_0x004e:
        r4 = "body";
        r5 = 0;
        r0 = r28;
        r5 = r0.optString(r4, r5);	 Catch:{ JSONException -> 0x0236 }
    L_0x0057:
        r20 = -1;
        r4 = "debug_dialog";
        r8 = 0;
        r0 = r28;
        r22 = r0.optString(r4, r8);	 Catch:{ JSONException -> 0x0236 }
        r4 = "debug_signals";
        r8 = 0;
        r0 = r28;
        r45 = r0.optString(r4, r8);	 Catch:{ JSONException -> 0x0236 }
        r4 = "interstitial_timeout";
        r0 = r28;
        r4 = r0.has(r4);	 Catch:{ JSONException -> 0x0236 }
        if (r4 == 0) goto L_0x00d3;
    L_0x0075:
        r4 = "interstitial_timeout";
        r0 = r28;
        r8 = r0.getDouble(r4);	 Catch:{ JSONException -> 0x0236 }
        r10 = 4652007308841189376; // 0x408f400000000000 float:0.0 double:1000.0;
        r8 = r8 * r10;
        r12 = (long) r8;	 Catch:{ JSONException -> 0x0236 }
    L_0x0084:
        r4 = "orientation";
        r8 = 0;
        r0 = r28;
        r4 = r0.optString(r4, r8);	 Catch:{ JSONException -> 0x0236 }
        r18 = -1;
        r8 = "portrait";
        r8 = r8.equals(r4);	 Catch:{ JSONException -> 0x0236 }
        if (r8 == 0) goto L_0x00d6;
    L_0x0097:
        r4 = com.google.android.gms.ads.internal.v.g();	 Catch:{ JSONException -> 0x0236 }
        r18 = r4.b();	 Catch:{ JSONException -> 0x0236 }
    L_0x009f:
        r4 = 0;
        r8 = android.text.TextUtils.isEmpty(r5);	 Catch:{ JSONException -> 0x0236 }
        if (r8 == 0) goto L_0x026b;
    L_0x00a6:
        r8 = android.text.TextUtils.isEmpty(r7);	 Catch:{ JSONException -> 0x0236 }
        if (r8 != 0) goto L_0x026b;
    L_0x00ac:
        r0 = r48;
        r4 = r0.k;	 Catch:{ JSONException -> 0x0236 }
        r6 = r4.b;	 Catch:{ JSONException -> 0x0236 }
        r8 = 0;
        r9 = 0;
        r10 = 0;
        r11 = 0;
        r4 = r48;
        r5 = r47;
        r4 = com.google.android.gms.c.py.a(r4, r5, r6, r7, r8, r9, r10, r11);	 Catch:{ JSONException -> 0x0236 }
        r6 = r4.b;	 Catch:{ JSONException -> 0x0236 }
        r7 = r4.c;	 Catch:{ JSONException -> 0x0236 }
        r0 = r4.n;	 Catch:{ JSONException -> 0x0236 }
        r20 = r0;
    L_0x00c6:
        if (r7 != 0) goto L_0x00e7;
    L_0x00c8:
        r4 = new com.google.android.gms.c.pj;	 Catch:{ JSONException -> 0x0236 }
        r5 = 0;
        r4.<init>(r5);	 Catch:{ JSONException -> 0x0236 }
    L_0x00ce:
        return r4;
    L_0x00cf:
        r27 = 0;
        goto L_0x0038;
    L_0x00d3:
        r12 = -1;
        goto L_0x0084;
    L_0x00d6:
        r8 = "landscape";
        r4 = r8.equals(r4);	 Catch:{ JSONException -> 0x0236 }
        if (r4 == 0) goto L_0x009f;
    L_0x00de:
        r4 = com.google.android.gms.ads.internal.v.g();	 Catch:{ JSONException -> 0x0236 }
        r18 = r4.a();	 Catch:{ JSONException -> 0x0236 }
        goto L_0x009f;
    L_0x00e7:
        r5 = "click_urls";
        r0 = r28;
        r5 = r0.optJSONArray(r5);	 Catch:{ JSONException -> 0x0236 }
        if (r4 != 0) goto L_0x0256;
    L_0x00f1:
        r8 = 0;
    L_0x00f2:
        if (r5 == 0) goto L_0x00f8;
    L_0x00f4:
        r8 = a(r5, r8);	 Catch:{ JSONException -> 0x0236 }
    L_0x00f8:
        r5 = "impression_urls";
        r0 = r28;
        r5 = r0.optJSONArray(r5);	 Catch:{ JSONException -> 0x0236 }
        if (r4 != 0) goto L_0x025a;
    L_0x0102:
        r9 = 0;
    L_0x0103:
        if (r5 == 0) goto L_0x0109;
    L_0x0105:
        r9 = a(r5, r9);	 Catch:{ JSONException -> 0x0236 }
    L_0x0109:
        r5 = "manual_impression_urls";
        r0 = r28;
        r5 = r0.optJSONArray(r5);	 Catch:{ JSONException -> 0x0236 }
        if (r4 != 0) goto L_0x025e;
    L_0x0113:
        r15 = 0;
    L_0x0114:
        if (r5 == 0) goto L_0x011a;
    L_0x0116:
        r15 = a(r5, r15);	 Catch:{ JSONException -> 0x0236 }
    L_0x011a:
        if (r4 == 0) goto L_0x0268;
    L_0x011c:
        r5 = r4.l;	 Catch:{ JSONException -> 0x0236 }
        r10 = -1;
        if (r5 == r10) goto L_0x0125;
    L_0x0121:
        r0 = r4.l;	 Catch:{ JSONException -> 0x0236 }
        r18 = r0;
    L_0x0125:
        r10 = r4.g;	 Catch:{ JSONException -> 0x0236 }
        r16 = 0;
        r5 = (r10 > r16 ? 1 : (r10 == r16 ? 0 : -1));
        if (r5 <= 0) goto L_0x0268;
    L_0x012d:
        r10 = r4.g;	 Catch:{ JSONException -> 0x0236 }
    L_0x012f:
        r4 = "active_view";
        r0 = r28;
        r25 = r0.optString(r4);	 Catch:{ JSONException -> 0x0236 }
        r24 = 0;
        r4 = "ad_is_javascript";
        r5 = 0;
        r0 = r28;
        r23 = r0.optBoolean(r4, r5);	 Catch:{ JSONException -> 0x0236 }
        if (r23 == 0) goto L_0x014d;
    L_0x0144:
        r4 = "ad_passback_url";
        r5 = 0;
        r0 = r28;
        r24 = r0.optString(r4, r5);	 Catch:{ JSONException -> 0x0236 }
    L_0x014d:
        r4 = "mediation";
        r5 = 0;
        r0 = r28;
        r12 = r0.optBoolean(r4, r5);	 Catch:{ JSONException -> 0x0236 }
        r4 = "custom_render_allowed";
        r5 = 0;
        r0 = r28;
        r26 = r0.optBoolean(r4, r5);	 Catch:{ JSONException -> 0x0236 }
        r4 = "content_url_opted_out";
        r5 = 1;
        r0 = r28;
        r29 = r0.optBoolean(r4, r5);	 Catch:{ JSONException -> 0x0236 }
        r4 = "content_vertical_opted_out";
        r5 = 1;
        r0 = r28;
        r46 = r0.optBoolean(r4, r5);	 Catch:{ JSONException -> 0x0236 }
        r4 = "prefetch";
        r5 = 0;
        r0 = r28;
        r30 = r0.optBoolean(r4, r5);	 Catch:{ JSONException -> 0x0236 }
        r4 = "refresh_interval_milliseconds";
        r16 = -1;
        r0 = r28;
        r1 = r16;
        r16 = r0.optLong(r4, r1);	 Catch:{ JSONException -> 0x0236 }
        r4 = "mediation_config_cache_time_milliseconds";
        r32 = -1;
        r0 = r28;
        r1 = r32;
        r13 = r0.optLong(r4, r1);	 Catch:{ JSONException -> 0x0236 }
        r4 = "gws_query_id";
        r5 = "";
        r0 = r28;
        r31 = r0.optString(r4, r5);	 Catch:{ JSONException -> 0x0236 }
        r4 = "height";
        r5 = "fluid";
        r32 = "";
        r0 = r28;
        r1 = r32;
        r5 = r0.optString(r5, r1);	 Catch:{ JSONException -> 0x0236 }
        r32 = r4.equals(r5);	 Catch:{ JSONException -> 0x0236 }
        r4 = "native_express";
        r5 = 0;
        r0 = r28;
        r33 = r0.optBoolean(r4, r5);	 Catch:{ JSONException -> 0x0236 }
        r4 = "video_start_urls";
        r0 = r28;
        r4 = r0.optJSONArray(r4);	 Catch:{ JSONException -> 0x0236 }
        r5 = 0;
        r35 = a(r4, r5);	 Catch:{ JSONException -> 0x0236 }
        r4 = "video_complete_urls";
        r0 = r28;
        r4 = r0.optJSONArray(r4);	 Catch:{ JSONException -> 0x0236 }
        r5 = 0;
        r36 = a(r4, r5);	 Catch:{ JSONException -> 0x0236 }
        r4 = "rewards";
        r0 = r28;
        r4 = r0.optJSONArray(r4);	 Catch:{ JSONException -> 0x0236 }
        r34 = com.google.android.gms.c.rk.a(r4);	 Catch:{ JSONException -> 0x0236 }
        r4 = "use_displayed_impression";
        r5 = 0;
        r0 = r28;
        r37 = r0.optBoolean(r4, r5);	 Catch:{ JSONException -> 0x0236 }
        r4 = "auto_protection_configuration";
        r0 = r28;
        r4 = r0.optJSONObject(r4);	 Catch:{ JSONException -> 0x0236 }
        r38 = com.google.android.gms.c.pl.a(r4);	 Catch:{ JSONException -> 0x0236 }
        r4 = "set_cookie";
        r5 = "";
        r0 = r28;
        r40 = r0.optString(r4, r5);	 Catch:{ JSONException -> 0x0236 }
        r4 = "remote_ping_urls";
        r0 = r28;
        r4 = r0.optJSONArray(r4);	 Catch:{ JSONException -> 0x0236 }
        r5 = 0;
        r41 = a(r4, r5);	 Catch:{ JSONException -> 0x0236 }
        r4 = "safe_browsing";
        r0 = r28;
        r4 = r0.optJSONObject(r4);	 Catch:{ JSONException -> 0x0236 }
        r44 = com.google.android.gms.c.rn.a(r4);	 Catch:{ JSONException -> 0x0236 }
        r4 = "render_in_browser";
        r0 = r48;
        r5 = r0.M;	 Catch:{ JSONException -> 0x0236 }
        r0 = r28;
        r42 = r0.optBoolean(r4, r5);	 Catch:{ JSONException -> 0x0236 }
        r4 = new com.google.android.gms.c.pj;	 Catch:{ JSONException -> 0x0236 }
        r0 = r48;
        r0 = r0.p;	 Catch:{ JSONException -> 0x0236 }
        r28 = r0;
        r0 = r48;
        r0 = r0.I;	 Catch:{ JSONException -> 0x0236 }
        r39 = r0;
        r5 = r48;
        r4.<init>(r5, r6, r7, r8, r9, r10, r12, r13, r15, r16, r18, r19, r20, r22, r23, r24, r25, r26, r27, r28, r29, r30, r31, r32, r33, r34, r35, r36, r37, r38, r39, r40, r41, r42, r43, r44, r45, r46);	 Catch:{ JSONException -> 0x0236 }
        goto L_0x00ce;
    L_0x0236:
        r4 = move-exception;
        r5 = "Could not parse the inline ad response: ";
        r4 = r4.getMessage();
        r4 = java.lang.String.valueOf(r4);
        r6 = r4.length();
        if (r6 == 0) goto L_0x0262;
    L_0x0247:
        r4 = r5.concat(r4);
    L_0x024b:
        com.google.android.gms.c.sz.e(r4);
        r4 = new com.google.android.gms.c.pj;
        r5 = 0;
        r4.<init>(r5);
        goto L_0x00ce;
    L_0x0256:
        r8 = r4.d;	 Catch:{ JSONException -> 0x0236 }
        goto L_0x00f2;
    L_0x025a:
        r9 = r4.f;	 Catch:{ JSONException -> 0x0236 }
        goto L_0x0103;
    L_0x025e:
        r15 = r4.j;	 Catch:{ JSONException -> 0x0236 }
        goto L_0x0114;
    L_0x0262:
        r4 = new java.lang.String;
        r4.<init>(r5);
        goto L_0x024b;
    L_0x0268:
        r10 = r12;
        goto L_0x012f;
    L_0x026b:
        r7 = r5;
        goto L_0x00c6;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.c.qa.a(android.content.Context, com.google.android.gms.c.pg, java.lang.String):com.google.android.gms.c.pj");
    }

    private static Integer a(boolean z) {
        return Integer.valueOf(z ? 1 : 0);
    }

    private static String a(int i) {
        return String.format(Locale.US, "#%06x", new Object[]{Integer.valueOf(ViewCompat.MEASURED_SIZE_MASK & i)});
    }

    private static String a(js jsVar) {
        switch (jsVar != null ? jsVar.c : 0) {
            case 1:
                return "portrait";
            case 2:
                return "landscape";
            default:
                return "any";
        }
    }

    @Nullable
    private static List<String> a(@Nullable JSONArray jSONArray, @Nullable List<String> list) {
        if (jSONArray == null) {
            return null;
        }
        List list2;
        if (list2 == null) {
            list2 = new LinkedList();
        }
        for (int i = 0; i < jSONArray.length(); i++) {
            list2.add(jSONArray.getString(i));
        }
        return list2;
    }

    @Nullable
    static JSONArray a(List<String> list) {
        JSONArray jSONArray = new JSONArray();
        for (String put : list) {
            jSONArray.put(put);
        }
        return jSONArray;
    }

    @Nullable
    public static JSONObject a(Context context, pw pwVar) {
        Object obj;
        String str;
        String valueOf;
        pg pgVar = pwVar.h;
        Location location = pwVar.d;
        qf qfVar = pwVar.i;
        Bundle bundle = pwVar.a;
        JSONObject jSONObject = pwVar.j;
        HashMap hashMap = new HashMap();
        hashMap.put("extra_caps", is.bX.c());
        if (pwVar.c.size() > 0) {
            hashMap.put("eid", TextUtils.join(",", pwVar.c));
        }
        if (pgVar.b != null) {
            hashMap.put("ad_pos", pgVar.b);
        }
        a(hashMap, pgVar.c);
        if (pgVar.d.h != null) {
            obj = null;
            Object obj2 = null;
            for (ha haVar : pgVar.d.h) {
                if (!haVar.j && obj2 == null) {
                    hashMap.put("format", haVar.b);
                    obj2 = 1;
                }
                if (haVar.j && obj == null) {
                    hashMap.put("fluid", "height");
                    obj = 1;
                }
                if (obj2 != null && obj != null) {
                    break;
                }
            }
        } else {
            hashMap.put("format", pgVar.d.b);
            if (pgVar.d.j) {
                hashMap.put("fluid", "height");
            }
        }
        if (pgVar.d.f == -1) {
            hashMap.put("smart_w", "full");
        }
        if (pgVar.d.c == -2) {
            hashMap.put("smart_h", "auto");
        }
        if (pgVar.d.h != null) {
            StringBuilder stringBuilder = new StringBuilder();
            obj = null;
            for (ha haVar2 : pgVar.d.h) {
                if (haVar2.j) {
                    obj = 1;
                } else {
                    if (stringBuilder.length() != 0) {
                        stringBuilder.append("|");
                    }
                    stringBuilder.append(haVar2.f == -1 ? (int) (((float) haVar2.g) / qfVar.r) : haVar2.f);
                    stringBuilder.append("x");
                    stringBuilder.append(haVar2.c == -2 ? (int) (((float) haVar2.d) / qfVar.r) : haVar2.c);
                }
            }
            if (obj != null) {
                if (stringBuilder.length() != 0) {
                    stringBuilder.insert(0, "|");
                }
                stringBuilder.insert(0, "320x50");
            }
            hashMap.put("sz", stringBuilder);
        }
        if (pgVar.m != 0) {
            hashMap.put("native_version", Integer.valueOf(pgVar.m));
            hashMap.put("native_templates", pgVar.n);
            hashMap.put("native_image_orientation", a(pgVar.z));
            if (!pgVar.A.isEmpty()) {
                hashMap.put("native_custom_templates", pgVar.A);
            }
        }
        if (pgVar.d.k) {
            hashMap.put("ene", Boolean.valueOf(true));
        }
        hashMap.put("slotname", pgVar.e);
        hashMap.put("pn", pgVar.f.packageName);
        if (pgVar.g != null) {
            hashMap.put("vc", Integer.valueOf(pgVar.g.versionCode));
        }
        hashMap.put("ms", pwVar.g);
        hashMap.put("seq_num", pgVar.i);
        hashMap.put("session_id", pgVar.j);
        hashMap.put("js", pgVar.k.b);
        a(hashMap, qfVar, pwVar.e, pgVar.O, pwVar.b);
        a(hashMap, pwVar.f);
        hashMap.put("platform", Build.MANUFACTURER);
        hashMap.put("submodel", Build.MODEL);
        if (location != null) {
            a(hashMap, location);
        } else if (pgVar.c.a >= 2 && pgVar.c.k != null) {
            a(hashMap, pgVar.c.k);
        }
        if (pgVar.a >= 2) {
            hashMap.put("quality_signals", pgVar.l);
        }
        if (pgVar.a >= 4 && pgVar.p) {
            hashMap.put("forceHttps", Boolean.valueOf(pgVar.p));
        }
        if (bundle != null) {
            hashMap.put("content_info", bundle);
        }
        if (pgVar.a >= 5) {
            hashMap.put("u_sd", Float.valueOf(pgVar.t));
            hashMap.put("sh", Integer.valueOf(pgVar.s));
            hashMap.put("sw", Integer.valueOf(pgVar.r));
        } else {
            hashMap.put("u_sd", Float.valueOf(qfVar.r));
            hashMap.put("sh", Integer.valueOf(qfVar.t));
            hashMap.put("sw", Integer.valueOf(qfVar.s));
        }
        if (pgVar.a >= 6) {
            if (!TextUtils.isEmpty(pgVar.u)) {
                try {
                    hashMap.put("view_hierarchy", new JSONObject(pgVar.u));
                } catch (JSONException e) {
                    sz.c("Problem serializing view hierarchy to JSON", e);
                }
            }
            try {
                hashMap.put("correlation_id", Long.valueOf(pgVar.v));
            } catch (JSONException e2) {
                str = "Problem serializing ad request to JSON: ";
                valueOf = String.valueOf(e2.getMessage());
                sz.e(valueOf.length() != 0 ? str.concat(valueOf) : new String(str));
                return null;
            }
        }
        if (pgVar.a >= 7) {
            hashMap.put("request_id", pgVar.w);
        }
        if (pgVar.a >= 11 && pgVar.C != null) {
            hashMap.put("capability", pgVar.C.a());
        }
        if (pgVar.a >= 12 && !TextUtils.isEmpty(pgVar.D)) {
            hashMap.put("anchor", pgVar.D);
        }
        if (pgVar.a >= 13) {
            hashMap.put("android_app_volume", Float.valueOf(pgVar.E));
        }
        if (pgVar.a >= 18) {
            hashMap.put("android_app_muted", Boolean.valueOf(pgVar.K));
        }
        if (pgVar.a >= 14 && pgVar.F > 0) {
            hashMap.put("target_api", Integer.valueOf(pgVar.F));
        }
        if (pgVar.a >= 15) {
            hashMap.put("scroll_index", Integer.valueOf(pgVar.G == -1 ? -1 : pgVar.G));
        }
        if (pgVar.a >= 16) {
            hashMap.put("_activity_context", Boolean.valueOf(pgVar.H));
        }
        if (pgVar.a >= 18) {
            if (!TextUtils.isEmpty(pgVar.L)) {
                try {
                    hashMap.put("app_settings", new JSONObject(pgVar.L));
                } catch (JSONException e22) {
                    sz.c("Problem creating json from app settings", e22);
                }
            }
            hashMap.put("render_in_browser", Boolean.valueOf(pgVar.M));
        }
        if (pgVar.a >= 18) {
            hashMap.put("android_num_video_cache_tasks", Integer.valueOf(pgVar.N));
        }
        a(hashMap);
        hashMap.put("cache_state", jSONObject);
        if (pgVar.a >= 19) {
            hashMap.put("gct", pgVar.P);
        }
        if (sz.a(2)) {
            str = "Ad Request JSON: ";
            valueOf = String.valueOf(v.e().a((Map) hashMap).toString(2));
            sf.a(valueOf.length() != 0 ? str.concat(valueOf) : new String(str));
        }
        return v.e().a((Map) hashMap);
    }

    public static JSONObject a(pj pjVar) {
        JSONObject jSONObject = new JSONObject();
        if (pjVar.b != null) {
            jSONObject.put("ad_base_url", pjVar.b);
        }
        if (pjVar.m != null) {
            jSONObject.put("ad_size", pjVar.m);
        }
        jSONObject.put("native", pjVar.t);
        if (pjVar.t) {
            jSONObject.put("ad_json", pjVar.c);
        } else {
            jSONObject.put("ad_html", pjVar.c);
        }
        if (pjVar.o != null) {
            jSONObject.put("debug_dialog", pjVar.o);
        }
        if (pjVar.N != null) {
            jSONObject.put("debug_signals", pjVar.N);
        }
        if (pjVar.g != -1) {
            jSONObject.put("interstitial_timeout", ((double) pjVar.g) / 1000.0d);
        }
        if (pjVar.l == v.g().b()) {
            jSONObject.put("orientation", "portrait");
        } else if (pjVar.l == v.g().a()) {
            jSONObject.put("orientation", "landscape");
        }
        if (pjVar.d != null) {
            jSONObject.put("click_urls", a(pjVar.d));
        }
        if (pjVar.f != null) {
            jSONObject.put("impression_urls", a(pjVar.f));
        }
        if (pjVar.j != null) {
            jSONObject.put("manual_impression_urls", a(pjVar.j));
        }
        if (pjVar.r != null) {
            jSONObject.put("active_view", pjVar.r);
        }
        jSONObject.put("ad_is_javascript", pjVar.p);
        if (pjVar.q != null) {
            jSONObject.put("ad_passback_url", pjVar.q);
        }
        jSONObject.put("mediation", pjVar.h);
        jSONObject.put("custom_render_allowed", pjVar.s);
        jSONObject.put("content_url_opted_out", pjVar.v);
        jSONObject.put("content_vertical_opted_out", pjVar.O);
        jSONObject.put("prefetch", pjVar.w);
        if (pjVar.k != -1) {
            jSONObject.put("refresh_interval_milliseconds", pjVar.k);
        }
        if (pjVar.i != -1) {
            jSONObject.put("mediation_config_cache_time_milliseconds", pjVar.i);
        }
        if (!TextUtils.isEmpty(pjVar.z)) {
            jSONObject.put("gws_query_id", pjVar.z);
        }
        jSONObject.put("fluid", pjVar.A ? "height" : "");
        jSONObject.put("native_express", pjVar.B);
        if (pjVar.D != null) {
            jSONObject.put("video_start_urls", a(pjVar.D));
        }
        if (pjVar.E != null) {
            jSONObject.put("video_complete_urls", a(pjVar.E));
        }
        if (pjVar.C != null) {
            jSONObject.put("rewards", pjVar.C.a());
        }
        jSONObject.put("use_displayed_impression", pjVar.F);
        jSONObject.put("auto_protection_configuration", pjVar.G);
        jSONObject.put("render_in_browser", pjVar.K);
        return jSONObject;
    }

    private static void a(HashMap<String, Object> hashMap) {
        Bundle bundle = new Bundle();
        Bundle bundle2 = new Bundle();
        bundle2.putString("cl", "139965458");
        bundle2.putString("rapid_rc", "dev");
        bundle2.putString("rapid_rollup", HttpHead.METHOD_NAME);
        bundle.putBundle("build_meta", bundle2);
        bundle.putString("mf", Boolean.toString(((Boolean) is.bZ.c()).booleanValue()));
        hashMap.put("sdk_env", bundle);
    }

    private static void a(HashMap<String, Object> hashMap, Location location) {
        HashMap hashMap2 = new HashMap();
        Float valueOf = Float.valueOf(location.getAccuracy() * 1000.0f);
        Long valueOf2 = Long.valueOf(location.getTime() * 1000);
        Long valueOf3 = Long.valueOf((long) (location.getLatitude() * 1.0E7d));
        Long valueOf4 = Long.valueOf((long) (location.getLongitude() * 1.0E7d));
        hashMap2.put("radius", valueOf);
        hashMap2.put("lat", valueOf3);
        hashMap2.put("long", valueOf4);
        hashMap2.put("time", valueOf2);
        hashMap.put("uule", hashMap2);
    }

    private static void a(HashMap<String, Object> hashMap, gv gvVar) {
        String a = sd.a();
        if (a != null) {
            hashMap.put("abf", a);
        }
        if (gvVar.b != -1) {
            hashMap.put("cust_age", a.format(new Date(gvVar.b)));
        }
        if (gvVar.c != null) {
            hashMap.put("extras", gvVar.c);
        }
        if (gvVar.d != -1) {
            hashMap.put("cust_gender", Integer.valueOf(gvVar.d));
        }
        if (gvVar.e != null) {
            hashMap.put("kw", gvVar.e);
        }
        if (gvVar.g != -1) {
            hashMap.put("tag_for_child_directed_treatment", Integer.valueOf(gvVar.g));
        }
        if (gvVar.f) {
            hashMap.put("adtest", "on");
        }
        if (gvVar.a >= 2) {
            if (gvVar.h) {
                hashMap.put("d_imp_hdr", Integer.valueOf(1));
            }
            if (!TextUtils.isEmpty(gvVar.i)) {
                hashMap.put("ppid", gvVar.i);
            }
            if (gvVar.j != null) {
                a((HashMap) hashMap, gvVar.j);
            }
        }
        if (gvVar.a >= 3 && gvVar.l != null) {
            hashMap.put("url", gvVar.l);
        }
        if (gvVar.a >= 5) {
            if (gvVar.n != null) {
                hashMap.put("custom_targeting", gvVar.n);
            }
            if (gvVar.o != null) {
                hashMap.put("category_exclusions", gvVar.o);
            }
            if (gvVar.p != null) {
                hashMap.put("request_agent", gvVar.p);
            }
        }
        if (gvVar.a >= 6 && gvVar.q != null) {
            hashMap.put("request_pkg", gvVar.q);
        }
        if (gvVar.a >= 7) {
            hashMap.put("is_designed_for_families", Boolean.valueOf(gvVar.r));
        }
    }

    private static void a(HashMap<String, Object> hashMap, ie ieVar) {
        Object obj;
        Object obj2 = null;
        if (Color.alpha(ieVar.b) != 0) {
            hashMap.put("acolor", a(ieVar.b));
        }
        if (Color.alpha(ieVar.c) != 0) {
            hashMap.put("bgcolor", a(ieVar.c));
        }
        if (!(Color.alpha(ieVar.d) == 0 || Color.alpha(ieVar.e) == 0)) {
            hashMap.put("gradientto", a(ieVar.d));
            hashMap.put("gradientfrom", a(ieVar.e));
        }
        if (Color.alpha(ieVar.f) != 0) {
            hashMap.put("bcolor", a(ieVar.f));
        }
        hashMap.put("bthick", Integer.toString(ieVar.g));
        switch (ieVar.h) {
            case 0:
                obj = "none";
                break;
            case 1:
                obj = "dashed";
                break;
            case 2:
                obj = "dotted";
                break;
            case 3:
                obj = "solid";
                break;
            default:
                obj = null;
                break;
        }
        if (obj != null) {
            hashMap.put("btype", obj);
        }
        switch (ieVar.i) {
            case 0:
                obj2 = "light";
                break;
            case 1:
                obj2 = "medium";
                break;
            case 2:
                obj2 = "dark";
                break;
        }
        if (obj2 != null) {
            hashMap.put("callbuttoncolor", obj2);
        }
        if (ieVar.j != null) {
            hashMap.put("channel", ieVar.j);
        }
        if (Color.alpha(ieVar.k) != 0) {
            hashMap.put("dcolor", a(ieVar.k));
        }
        if (ieVar.l != null) {
            hashMap.put("font", ieVar.l);
        }
        if (Color.alpha(ieVar.m) != 0) {
            hashMap.put("hcolor", a(ieVar.m));
        }
        hashMap.put("headersize", Integer.toString(ieVar.n));
        if (ieVar.o != null) {
            hashMap.put("q", ieVar.o);
        }
    }

    private static void a(HashMap<String, Object> hashMap, qf qfVar, a aVar, Bundle bundle, Bundle bundle2) {
        hashMap.put("am", Integer.valueOf(qfVar.a));
        hashMap.put("cog", a(qfVar.b));
        hashMap.put("coh", a(qfVar.c));
        if (!TextUtils.isEmpty(qfVar.d)) {
            hashMap.put("carrier", qfVar.d);
        }
        hashMap.put("gl", qfVar.e);
        if (qfVar.f) {
            hashMap.put("simulator", Integer.valueOf(1));
        }
        if (qfVar.g) {
            hashMap.put("is_sidewinder", Integer.valueOf(1));
        }
        hashMap.put("ma", a(qfVar.h));
        hashMap.put("sp", a(qfVar.i));
        hashMap.put("hl", qfVar.j);
        if (!TextUtils.isEmpty(qfVar.k)) {
            hashMap.put("mv", qfVar.k);
        }
        hashMap.put("muv", Integer.valueOf(qfVar.l));
        if (qfVar.m != -2) {
            hashMap.put("cnt", Integer.valueOf(qfVar.m));
        }
        hashMap.put("gnt", Integer.valueOf(qfVar.n));
        hashMap.put("pt", Integer.valueOf(qfVar.o));
        hashMap.put("rm", Integer.valueOf(qfVar.p));
        hashMap.put("riv", Integer.valueOf(qfVar.q));
        Bundle bundle3 = new Bundle();
        bundle3.putString("build", qfVar.y);
        Bundle bundle4 = new Bundle();
        bundle4.putBoolean("is_charging", qfVar.v);
        bundle4.putDouble("battery_level", qfVar.u);
        bundle3.putBundle("battery", bundle4);
        bundle4 = new Bundle();
        bundle4.putInt("active_network_state", qfVar.x);
        bundle4.putBoolean("active_network_metered", qfVar.w);
        if (aVar != null) {
            Bundle bundle5 = new Bundle();
            bundle5.putInt("predicted_latency_micros", aVar.a);
            bundle5.putLong("predicted_down_throughput_bps", aVar.b);
            bundle5.putLong("predicted_up_throughput_bps", aVar.c);
            bundle4.putBundle("predictions", bundle5);
        }
        bundle3.putBundle("network", bundle4);
        bundle4 = new Bundle();
        bundle4.putBoolean("is_browser_custom_tabs_capable", qfVar.z);
        bundle3.putBundle("browser", bundle4);
        if (bundle != null) {
            bundle3.putBundle("android_mem_info", a(bundle));
        }
        bundle4 = new Bundle();
        bundle4.putBundle("parental_controls", bundle2);
        bundle3.putBundle("play_store", bundle4);
        hashMap.put("device", bundle3);
    }

    private static void a(HashMap<String, Object> hashMap, String str) {
        Bundle bundle = new Bundle();
        bundle.putString("doritos", str);
        hashMap.put("pii", bundle);
    }
}
