package com.google.android.gms.c;

import org.json.JSONException;
import org.json.JSONObject;

@pa
public class nl {
    private final tr a;
    private final String b;

    public nl(tr trVar) {
        this(trVar, "");
    }

    public nl(tr trVar, String str) {
        this.a = trVar;
        this.b = str;
    }

    public void a(int i, int i2, int i3, int i4) {
        try {
            this.a.b("onSizeChanged", new JSONObject().put("x", i).put("y", i2).put("width", i3).put("height", i4));
        } catch (JSONException e) {
            sz.b("Error occured while dispatching size change.", e);
        }
    }

    public void a(int i, int i2, int i3, int i4, float f, int i5) {
        try {
            this.a.b("onScreenInfoChanged", new JSONObject().put("width", i).put("height", i2).put("maxSizeWidth", i3).put("maxSizeHeight", i4).put("density", (double) f).put("rotation", i5));
        } catch (JSONException e) {
            sz.b("Error occured while obtaining screen information.", e);
        }
    }

    public void b(int i, int i2, int i3, int i4) {
        try {
            this.a.b("onDefaultPositionReceived", new JSONObject().put("x", i).put("y", i2).put("width", i3).put("height", i4));
        } catch (JSONException e) {
            sz.b("Error occured while dispatching default position.", e);
        }
    }

    public void b(String str) {
        try {
            this.a.b("onError", new JSONObject().put("message", str).put("action", this.b));
        } catch (JSONException e) {
            sz.b("Error occurred while dispatching error event.", e);
        }
    }

    public void c(String str) {
        try {
            this.a.b("onReadyEventReceived", new JSONObject().put("js", str));
        } catch (JSONException e) {
            sz.b("Error occured while dispatching ready Event.", e);
        }
    }

    public void d(String str) {
        try {
            this.a.b("onStateChanged", new JSONObject().put("state", str));
        } catch (JSONException e) {
            sz.b("Error occured while dispatching state change.", e);
        }
    }
}
