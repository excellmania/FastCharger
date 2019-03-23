package com.onesignal;

import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.support.v4.app.NotificationManagerCompat;
import com.onesignal.t.d;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class m {
    private static Context a;
    private static Intent b;

    private static ContentValues a() {
        ContentValues contentValues = new ContentValues();
        if (b.getBooleanExtra("dismissed", false)) {
            contentValues.put("dismissed", Integer.valueOf(1));
        } else {
            contentValues.put("opened", Integer.valueOf(1));
        }
        return contentValues;
    }

    public static void a(Context context, Intent intent) {
        if (intent.getBooleanExtra("action_button", false)) {
            NotificationManagerCompat.from(context).cancel(intent.getIntExtra("notificationId", 0));
            context.sendBroadcast(new Intent("android.intent.action.CLOSE_SYSTEM_DIALOGS"));
        }
        b(context, intent);
    }

    private static void a(SQLiteDatabase sQLiteDatabase) {
        String str;
        String[] strArr = null;
        if (b.getStringExtra("summary") != null) {
            str = "group_id = ?";
            strArr = new String[]{b.getStringExtra("summary")};
        } else {
            str = "android_notification_id = " + b.getIntExtra("notificationId", 0);
        }
        sQLiteDatabase.update("notification", a(), str, strArr);
        f.a(sQLiteDatabase, a);
    }

    private static void a(JSONArray jSONArray, String str, SQLiteDatabase sQLiteDatabase) {
        SQLiteDatabase sQLiteDatabase2 = sQLiteDatabase;
        Cursor query = sQLiteDatabase2.query("notification", new String[]{"full_data"}, "group_id = ? AND dismissed = 0 AND opened = 0 AND is_summary = 0", new String[]{str}, null, null, null);
        if (query.getCount() > 1) {
            query.moveToFirst();
            do {
                try {
                    jSONArray.put(new JSONObject(query.getString(query.getColumnIndex("full_data"))));
                } catch (Throwable th) {
                    t.a(d.ERROR, "Could not parse JSON of sub notification in group: " + str);
                }
            } while (query.moveToNext());
        }
        query.close();
    }

    static void b(Context context, Intent intent) {
        a = context;
        b = intent;
        String stringExtra = b.getStringExtra("summary");
        boolean booleanExtra = b.getBooleanExtra("dismissed", false);
        JSONArray jSONArray = null;
        if (!booleanExtra) {
            try {
                JSONObject jSONObject = new JSONObject(b.getStringExtra("onesignal_data"));
                jSONObject.put("notificationId", intent.getIntExtra("notificationId", 0));
                b.putExtra("onesignal_data", jSONObject.toString());
                jSONArray = j.b(new JSONObject(b.getStringExtra("onesignal_data")));
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
        SQLiteDatabase writableDatabase = u.a(a).getWritableDatabase();
        writableDatabase.beginTransaction();
        if (!(booleanExtra || stringExtra == null)) {
            try {
                a(jSONArray, stringExtra, writableDatabase);
            } catch (Exception th2) {
                t.a(d.ERROR, "Error processing notification open or dismiss record! ", th2);
            } finally {
                writableDatabase.endTransaction();
            }
        }
        a(writableDatabase);
        if (stringExtra == null && b.getStringExtra("grp") != null) {
            b(writableDatabase);
        }
        writableDatabase.setTransactionSuccessful();
        writableDatabase.endTransaction();
        if (!booleanExtra) {
            t.a(a, jSONArray, intent.getBooleanExtra("from_alert", false));
        }
    }

    private static void b(SQLiteDatabase sQLiteDatabase) {
        SQLiteDatabase sQLiteDatabase2 = sQLiteDatabase;
        Cursor query = sQLiteDatabase2.query("notification", new String[]{"android_notification_id"}, "group_id = ? AND dismissed = 0 AND opened = 0 AND is_summary = 0", new String[]{b.getStringExtra("grp")}, null, null, null);
        if (query.getCount() == 0) {
            sQLiteDatabase.update("notification", a(), "group_id = ?", new String[]{r8});
        } else {
            try {
                g.a(a, true, new JSONObject("{\"grp\": \"" + r8 + "\"}"));
            } catch (JSONException e) {
            }
        }
        query.close();
    }
}
