package com.onesignal;

import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import com.onesignal.shortcutbadger.c;
import com.onesignal.t.d;

class f {
    private static int a = -1;

    static void a(int i, Context context) {
        if (a(context)) {
            try {
                c.a(context, i);
            } catch (Throwable th) {
            }
        }
    }

    static void a(SQLiteDatabase sQLiteDatabase, Context context) {
        if (a(context)) {
            Cursor query = sQLiteDatabase.query("notification", null, "dismissed = 0 AND opened = 0 AND is_summary = 0 ", null, null, null, null);
            a(query.getCount(), context);
            query.close();
        }
    }

    private static boolean a(Context context) {
        if (a != -1) {
            return a == 1;
        } else {
            try {
                a = "DISABLE".equals(context.getPackageManager().getApplicationInfo(context.getPackageName(), 128).metaData.getString("com.onesignal.BadgeCount")) ? 0 : 1;
            } catch (Throwable th) {
                a = 1;
                t.a(d.ERROR, "", th);
            }
            return a == 1;
        }
    }
}
