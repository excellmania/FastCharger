package com.google.android.gms.c;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import org.json.JSONObject;

@pa
public class nt extends Handler {
    private final ns a;

    public nt(Context context) {
        if (context.getApplicationContext() != null) {
            context = context.getApplicationContext();
        }
        this(new nu(context));
    }

    public nt(ns nsVar) {
        this.a = nsVar;
    }

    private void a(JSONObject jSONObject) {
        try {
            this.a.a(jSONObject.getString("request_id"), jSONObject.getString("base_url"), jSONObject.getString("html"));
        } catch (Exception e) {
        }
    }

    public void handleMessage(Message message) {
        try {
            Bundle data = message.getData();
            if (data != null) {
                JSONObject jSONObject = new JSONObject(data.getString("data"));
                if ("fetch_html".equals(jSONObject.getString("message_name"))) {
                    a(jSONObject);
                }
            }
        } catch (Exception e) {
        }
    }
}
