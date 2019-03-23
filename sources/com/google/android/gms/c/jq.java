package com.google.android.gms.c;

import android.content.Context;
import android.view.MotionEvent;
import android.view.View;
import java.lang.ref.WeakReference;
import java.util.Map;
import org.json.JSONObject;

public interface jq {

    public interface a {
        void a(jq jqVar);

        String k();

        String l();

        ji m();
    }

    void a(MotionEvent motionEvent);

    void a(View view);

    void a(View view, String str, JSONObject jSONObject, Map<String, WeakReference<View>> map, View view2);

    void a(View view, Map<String, WeakReference<View>> map);

    void a(View view, Map<String, WeakReference<View>> map, JSONObject jSONObject, View view2);

    void b(View view, Map<String, WeakReference<View>> map);

    void c(View view, Map<String, WeakReference<View>> map);

    View d();

    Context e();
}
