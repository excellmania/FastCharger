package com.google.android.gms.c;

import android.annotation.TargetApi;
import android.app.AlertDialog.Builder;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.content.res.Resources;
import android.provider.CalendarContract.Events;
import android.text.TextUtils;
import com.google.android.gms.a.b;
import com.google.android.gms.ads.internal.v;
import java.util.Map;
import org.apache.http.HttpHeaders;

@pa
public class nf extends nl {
    private final Map<String, String> a;
    private final Context b;
    private String c;
    private long d;
    private long e;
    private String f;
    private String g;

    public nf(tr trVar, Map<String, String> map) {
        super(trVar, "createCalendarEvent");
        this.a = map;
        this.b = trVar.f();
        c();
    }

    private String a(String str) {
        return TextUtils.isEmpty((CharSequence) this.a.get(str)) ? "" : (String) this.a.get(str);
    }

    private void c() {
        this.c = a("description");
        this.f = a("summary");
        this.d = e("start_ticks");
        this.e = e("end_ticks");
        this.g = a("location");
    }

    private long e(String str) {
        String str2 = (String) this.a.get(str);
        if (str2 == null) {
            return -1;
        }
        try {
            return Long.parseLong(str2);
        } catch (NumberFormatException e) {
            return -1;
        }
    }

    public void a() {
        if (this.b == null) {
            b("Activity context is not available.");
        } else if (v.e().e(this.b).e()) {
            Builder d = v.e().d(this.b);
            Resources s = v.i().s();
            d.setTitle(s != null ? s.getString(b.create_calendar_title) : "Create calendar event");
            d.setMessage(s != null ? s.getString(b.create_calendar_message) : "Allow Ad to create a calendar event?");
            d.setPositiveButton(s != null ? s.getString(b.accept) : HttpHeaders.ACCEPT, new OnClickListener() {
                public void onClick(DialogInterface dialogInterface, int i) {
                    v.e().a(nf.this.b, nf.this.b());
                }
            });
            d.setNegativeButton(s != null ? s.getString(b.decline) : "Decline", new OnClickListener() {
                public void onClick(DialogInterface dialogInterface, int i) {
                    nf.this.b("Operation denied by user.");
                }
            });
            d.create().show();
        } else {
            b("This feature is not available on the device.");
        }
    }

    /* Access modifiers changed, original: 0000 */
    @TargetApi(14)
    public Intent b() {
        Intent data = new Intent("android.intent.action.EDIT").setData(Events.CONTENT_URI);
        data.putExtra("title", this.c);
        data.putExtra("eventLocation", this.g);
        data.putExtra("description", this.f);
        if (this.d > -1) {
            data.putExtra("beginTime", this.d);
        }
        if (this.e > -1) {
            data.putExtra("endTime", this.e);
        }
        data.setFlags(268435456);
        return data;
    }
}
