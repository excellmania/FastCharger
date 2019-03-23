package com.google.android.gms.c;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.os.Bundle;
import java.util.concurrent.Future;

@pa
public final class sh {

    public interface b {
        void a(Bundle bundle);
    }

    private static abstract class a extends se {
        private a() {
        }

        /* synthetic */ a(AnonymousClass1 anonymousClass1) {
            this();
        }

        public void b() {
        }
    }

    public static SharedPreferences a(Context context) {
        return context.getSharedPreferences("admob", 0);
    }

    public static Future a(final Context context, final int i) {
        return (Future) new a() {
            public void a() {
                Editor edit = sh.a(context).edit();
                edit.putInt("request_in_session_count", i);
                edit.apply();
            }
        }.e();
    }

    public static Future a(final Context context, final long j) {
        return (Future) new a() {
            public void a() {
                Editor edit = sh.a(context).edit();
                edit.putLong("app_last_background_time_ms", j);
                edit.apply();
            }
        }.e();
    }

    public static Future a(final Context context, final b bVar) {
        return (Future) new a() {
            public void a() {
                SharedPreferences a = sh.a(context);
                Bundle bundle = new Bundle();
                bundle.putBoolean("use_https", a.getBoolean("use_https", true));
                if (bVar != null) {
                    bVar.a(bundle);
                }
            }
        }.e();
    }

    public static Future a(final Context context, final String str) {
        return (Future) new a() {
            public void a() {
                Editor edit = sh.a(context).edit();
                edit.putString("content_url_hashes", str);
                edit.apply();
            }
        }.e();
    }

    public static Future a(final Context context, final String str, final long j) {
        return (Future) new a() {
            public void a() {
                Editor edit = sh.a(context).edit();
                edit.putString("app_settings_json", str);
                edit.putLong("app_settings_last_update_ms", j);
                edit.apply();
            }
        }.e();
    }

    public static Future a(final Context context, final boolean z) {
        return (Future) new a() {
            public void a() {
                Editor edit = sh.a(context).edit();
                edit.putBoolean("use_https", z);
                edit.apply();
            }
        }.e();
    }

    public static Future b(final Context context, final b bVar) {
        return (Future) new a() {
            public void a() {
                SharedPreferences a = sh.a(context);
                Bundle bundle = new Bundle();
                bundle.putInt("webview_cache_version", a.getInt("webview_cache_version", 0));
                if (bVar != null) {
                    bVar.a(bundle);
                }
            }
        }.e();
    }

    public static Future b(final Context context, final String str) {
        return (Future) new a() {
            public void a() {
                Editor edit = sh.a(context).edit();
                edit.putString("content_vertical_hashes", str);
                edit.apply();
            }
        }.e();
    }

    public static Future b(final Context context, final boolean z) {
        return (Future) new a() {
            public void a() {
                Editor edit = sh.a(context).edit();
                edit.putBoolean("content_url_opted_out", z);
                edit.apply();
            }
        }.e();
    }

    public static Future c(final Context context, final b bVar) {
        return (Future) new a() {
            public void a() {
                SharedPreferences a = sh.a(context);
                Bundle bundle = new Bundle();
                bundle.putBoolean("content_url_opted_out", a.getBoolean("content_url_opted_out", true));
                if (bVar != null) {
                    bVar.a(bundle);
                }
            }
        }.e();
    }

    public static Future c(final Context context, final boolean z) {
        return (Future) new a() {
            public void a() {
                Editor edit = sh.a(context).edit();
                edit.putBoolean("auto_collect_location", z);
                edit.apply();
            }
        }.e();
    }

    public static Future d(final Context context, final b bVar) {
        return (Future) new a() {
            public void a() {
                SharedPreferences a = sh.a(context);
                Bundle bundle = new Bundle();
                bundle.putString("content_url_hashes", a.getString("content_url_hashes", ""));
                if (bVar != null) {
                    bVar.a(bundle);
                }
            }
        }.e();
    }

    public static Future e(final Context context, final b bVar) {
        return (Future) new a() {
            public void a() {
                SharedPreferences a = sh.a(context);
                Bundle bundle = new Bundle();
                bundle.putBoolean("auto_collect_location", a.getBoolean("auto_collect_location", false));
                if (bVar != null) {
                    bVar.a(bundle);
                }
            }
        }.e();
    }

    public static Future f(final Context context, final b bVar) {
        return (Future) new a() {
            public void a() {
                SharedPreferences a = sh.a(context);
                Bundle bundle = new Bundle();
                bundle.putString("app_settings_json", a.getString("app_settings_json", ""));
                bundle.putLong("app_settings_last_update_ms", a.getLong("app_settings_last_update_ms", 0));
                if (bVar != null) {
                    bVar.a(bundle);
                }
            }
        }.e();
    }

    public static Future g(final Context context, final b bVar) {
        return (Future) new a() {
            public void a() {
                SharedPreferences a = sh.a(context);
                Bundle bundle = new Bundle();
                bundle.putLong("app_last_background_time_ms", a.getLong("app_last_background_time_ms", 0));
                if (bVar != null) {
                    bVar.a(bundle);
                }
            }
        }.e();
    }
}
