package com.google.android.gms.c;

import android.app.Activity;
import android.app.AlertDialog.Builder;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.content.res.Resources;
import android.net.Uri;
import android.text.TextUtils;
import android.view.MotionEvent;
import com.google.android.gms.a.b;
import com.google.android.gms.ads.internal.v;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import org.apache.http.protocol.HTTP;

@pa
public class sm {
    private final Context a;
    private String b;
    private String c;
    private final float d;
    private float e;
    private float f;
    private float g;
    private int h;

    public sm(Context context) {
        this.h = 0;
        this.a = context;
        this.d = context.getResources().getDisplayMetrics().density;
    }

    public sm(Context context, String str) {
        this(context);
        this.b = str;
    }

    private int a(List<String> list, String str, boolean z) {
        if (!z) {
            return -1;
        }
        list.add(str);
        return list.size() - 1;
    }

    private void b() {
        if (this.a instanceof Activity) {
            CharSequence string;
            Resources s = v.i().s();
            if (s != null) {
                string = s.getString(b.debug_menu_title);
            } else {
                Object string2 = "Select a Debug Mode";
            }
            String string3 = s != null ? s.getString(b.debug_menu_ad_information) : "Ad Information";
            String string4 = s != null ? s.getString(b.debug_menu_creative_preview) : "Creative Preview";
            String string5 = s != null ? s.getString(b.debug_menu_troubleshooting) : "Troubleshooting";
            List arrayList = new ArrayList();
            final int a = a(arrayList, string3, true);
            final int a2 = a(arrayList, string4, ((Boolean) is.da.c()).booleanValue());
            final int a3 = a(arrayList, string5, ((Boolean) is.db.c()).booleanValue());
            new Builder(this.a).setTitle(string2).setItems((CharSequence[]) arrayList.toArray(new String[0]), new OnClickListener() {
                public void onClick(DialogInterface dialogInterface, int i) {
                    if (i == a) {
                        sm.this.c();
                    } else if (i == a2 && ((Boolean) is.da.c()).booleanValue()) {
                        sm.this.d();
                    } else if (i == a3 && ((Boolean) is.db.c()).booleanValue()) {
                        sm.this.e();
                    }
                }
            }).create().show();
            return;
        }
        sz.d("Can not create dialog without Activity Context");
    }

    static String c(String str) {
        if (TextUtils.isEmpty(str)) {
            return "No debug information";
        }
        Uri build = new Uri.Builder().encodedQuery(str.replaceAll("\\+", "%20")).build();
        StringBuilder stringBuilder = new StringBuilder();
        Map a = v.e().a(build);
        for (String str2 : a.keySet()) {
            stringBuilder.append(str2).append(" = ").append((String) a.get(str2)).append("\n\n");
        }
        String str22 = stringBuilder.toString().trim();
        return TextUtils.isEmpty(str22) ? "No debug information" : str22;
    }

    private void c() {
        if (this.a instanceof Activity) {
            final String c = c(this.b);
            Builder builder = new Builder(this.a);
            builder.setMessage(c);
            builder.setTitle("Ad Information");
            builder.setPositiveButton("Share", new OnClickListener() {
                public void onClick(DialogInterface dialogInterface, int i) {
                    v.e().a(sm.this.a, Intent.createChooser(new Intent("android.intent.action.SEND").setType(HTTP.PLAIN_TEXT_TYPE).putExtra("android.intent.extra.TEXT", c), "Share via"));
                }
            });
            builder.setNegativeButton(HTTP.CONN_CLOSE, new OnClickListener(this) {
                public void onClick(DialogInterface dialogInterface, int i) {
                }
            });
            builder.create().show();
            return;
        }
        sz.d("Can not create dialog without Activity Context");
    }

    private void d() {
        sz.b("Debug mode [Creative Preview] selected.");
        si.a(new Runnable() {
            public void run() {
                v.m().a(sm.this.a, sm.this.c);
            }
        });
    }

    private void e() {
        sz.b("Debug mode [Troubleshooting] selected.");
        si.a(new Runnable() {
            public void run() {
                v.m().b(sm.this.a, sm.this.c);
            }
        });
    }

    public void a() {
        if (((Boolean) is.db.c()).booleanValue() || ((Boolean) is.da.c()).booleanValue()) {
            b();
        } else {
            c();
        }
    }

    /* Access modifiers changed, original: 0000 */
    public void a(int i, float f, float f2) {
        if (i == 0) {
            this.h = 0;
            this.e = f;
            this.f = f2;
            this.g = f2;
        } else if (this.h == -1) {
        } else {
            if (i == 2) {
                if (f2 > this.f) {
                    this.f = f2;
                } else if (f2 < this.g) {
                    this.g = f2;
                }
                if (this.f - this.g > 30.0f * this.d) {
                    this.h = -1;
                    return;
                }
                if (this.h == 0 || this.h == 2) {
                    if (f - this.e >= 50.0f * this.d) {
                        this.e = f;
                        this.h++;
                    }
                } else if ((this.h == 1 || this.h == 3) && f - this.e <= -50.0f * this.d) {
                    this.e = f;
                    this.h++;
                }
                if (this.h == 1 || this.h == 3) {
                    if (f > this.e) {
                        this.e = f;
                    }
                } else if (this.h == 2 && f < this.e) {
                    this.e = f;
                }
            } else if (i == 1 && this.h == 4) {
                a();
            }
        }
    }

    public void a(MotionEvent motionEvent) {
        int historySize = motionEvent.getHistorySize();
        for (int i = 0; i < historySize; i++) {
            a(motionEvent.getActionMasked(), motionEvent.getHistoricalX(0, i), motionEvent.getHistoricalY(0, i));
        }
        a(motionEvent.getActionMasked(), motionEvent.getX(), motionEvent.getY());
    }

    public void a(String str) {
        this.c = str;
    }

    public void b(String str) {
        this.b = str;
    }
}
