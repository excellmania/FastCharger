package com.onesignal;

import android.R.drawable;
import android.app.Activity;
import android.app.AlertDialog;
import android.app.PendingIntent;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.os.Build.VERSION;
import android.support.v4.app.NotificationCompat.BigPictureStyle;
import android.support.v4.app.NotificationCompat.BigTextStyle;
import android.support.v4.app.NotificationCompat.Builder;
import android.support.v4.app.NotificationManagerCompat;
import android.widget.RemoteViews;
import com.facebook.ads.AdError;
import com.onesignal.aa.b;
import com.onesignal.k.a;
import com.onesignal.t.d;
import java.math.BigInteger;
import java.net.URL;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;
import org.json.JSONArray;
import org.json.JSONObject;

class g {
    private static Context a = null;
    private static String b = null;
    private static Resources c = null;
    private static Class<?> d;
    private static boolean e;

    private static PendingIntent a(int i, Intent intent) {
        return e ? PendingIntent.getBroadcast(a, i, intent, 134217728) : PendingIntent.getActivity(a, i, intent, 134217728);
    }

    private static Integer a(JSONObject jSONObject, String str) {
        if (jSONObject != null) {
            try {
                if (jSONObject.has(str)) {
                    return Integer.valueOf(new BigInteger(jSONObject.optString(str), 16).intValue());
                }
            } catch (Throwable th) {
            }
        }
        return null;
    }

    static void a(int i, boolean z, JSONObject jSONObject, a aVar) {
        Random random = new Random();
        String optString = jSONObject.optString("grp", null);
        Builder c = c(jSONObject);
        a(jSONObject, c, i, null);
        try {
            a(jSONObject, c);
        } catch (Throwable th) {
            t.a(d.ERROR, "Could not set background notification image!", th);
        }
        if (!(aVar == null || aVar.a == null)) {
            c.extend(aVar.a);
        }
        if (optString != null) {
            c.setContentIntent(a(random.nextInt(), b(i).putExtra("onesignal_data", jSONObject.toString()).putExtra("grp", optString)));
            c.setDeleteIntent(a(random.nextInt(), c(i).putExtra("grp", optString)));
            c.setGroup(optString);
            a(z, jSONObject);
        } else {
            c.setContentIntent(a(random.nextInt(), b(i).putExtra("onesignal_data", jSONObject.toString())));
            c.setDeleteIntent(a(random.nextInt(), c(i)));
        }
        if (z) {
            a(c);
        }
        if (optString == null || VERSION.SDK_INT > 17) {
            NotificationManagerCompat.from(a).notify(i, c.build());
        }
    }

    static void a(Context context) {
        a = context;
        b = a.getPackageName();
        c = a.getResources();
        PackageManager packageManager = a.getPackageManager();
        Intent intent = new Intent(a, NotificationOpenedReceiver.class);
        intent.setPackage(a.getPackageName());
        if (packageManager.queryBroadcastReceivers(intent, 0).size() > 0) {
            e = true;
            d = NotificationOpenedReceiver.class;
            return;
        }
        d = l.class;
    }

    static void a(Context context, boolean z, int i, JSONObject jSONObject, boolean z2, a aVar) {
        a(context);
        if (z || !z2 || a.b == null) {
            a(i, z, jSONObject, aVar);
        } else {
            a(jSONObject, a.b, i);
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:73:0x0222 A:{REMOVE} */
    static void a(android.content.Context r15, boolean r16, org.json.JSONObject r17) {
        /*
        if (r16 == 0) goto L_0x0007;
    L_0x0002:
        if (r15 == 0) goto L_0x0007;
    L_0x0004:
        a(r15);
    L_0x0007:
        r1 = "grp";
        r2 = 0;
        r0 = r17;
        r9 = r0.optString(r1, r2);
        r10 = new java.util.Random;
        r10.<init>();
        r1 = r10.nextInt();
        r2 = 0;
        r2 = c(r2);
        r3 = "summary";
        r2 = r2.putExtra(r3, r9);
        r11 = a(r1, r2);
        r1 = a;
        r12 = com.onesignal.u.a(r1);
        r1 = r12.getReadableDatabase();
        r2 = 5;
        r3 = new java.lang.String[r2];
        r2 = 0;
        r4 = "android_notification_id";
        r3[r2] = r4;
        r2 = 1;
        r4 = "full_data";
        r3[r2] = r4;
        r2 = 2;
        r4 = "is_summary";
        r3[r2] = r4;
        r2 = 3;
        r4 = "title";
        r3[r2] = r4;
        r2 = 4;
        r4 = "message";
        r3[r2] = r4;
        r2 = 1;
        r5 = new java.lang.String[r2];
        r2 = 0;
        r5[r2] = r9;
        r2 = "notification";
        r4 = "group_id = ? AND dismissed = 0 AND opened = 0";
        r6 = 0;
        r7 = 0;
        r8 = "_id DESC";
        r5 = r1.query(r2, r3, r4, r5, r6, r7, r8);
        r3 = r10.nextInt();
        r4 = 0;
        r1 = 0;
        r2 = r5.moveToFirst();	 Catch:{ all -> 0x0216 }
        if (r2 == 0) goto L_0x0301;
    L_0x006c:
        r2 = new java.util.ArrayList;	 Catch:{ all -> 0x0216 }
        r2.<init>();	 Catch:{ all -> 0x0216 }
        r14 = r4;
        r4 = r3;
        r3 = r14;
    L_0x0074:
        r1 = "is_summary";
        r1 = r5.getColumnIndex(r1);	 Catch:{ all -> 0x0216 }
        r1 = r5.getInt(r1);	 Catch:{ all -> 0x0216 }
        r6 = 1;
        if (r1 != r6) goto L_0x01a3;
    L_0x0081:
        r1 = "android_notification_id";
        r1 = r5.getColumnIndex(r1);	 Catch:{ all -> 0x0216 }
        r4 = r5.getInt(r1);	 Catch:{ all -> 0x0216 }
        r14 = r3;
        r3 = r4;
        r4 = r14;
    L_0x008e:
        r1 = r5.moveToNext();	 Catch:{ all -> 0x0216 }
        if (r1 != 0) goto L_0x02fc;
    L_0x0094:
        if (r16 == 0) goto L_0x0212;
    L_0x0096:
        if (r4 == 0) goto L_0x0212;
    L_0x0098:
        r1 = new org.json.JSONObject;	 Catch:{ JSONException -> 0x020e }
        r1.<init>(r4);	 Catch:{ JSONException -> 0x020e }
        r4 = r3;
        r17 = r1;
        r3 = r2;
    L_0x00a1:
        if (r5 == 0) goto L_0x00ac;
    L_0x00a3:
        r1 = r5.isClosed();
        if (r1 != 0) goto L_0x00ac;
    L_0x00a9:
        r5.close();
    L_0x00ac:
        if (r3 == 0) goto L_0x0271;
    L_0x00ae:
        if (r16 == 0) goto L_0x00b7;
    L_0x00b0:
        r1 = r3.size();
        r2 = 1;
        if (r1 <= r2) goto L_0x0271;
    L_0x00b7:
        r2 = r3.size();
        if (r16 == 0) goto L_0x0223;
    L_0x00bd:
        r1 = 0;
    L_0x00be:
        r5 = r2 + r1;
        r1 = "grp_msg";
        r2 = 0;
        r0 = r17;
        r1 = r0.optString(r1, r2);
        if (r1 != 0) goto L_0x0226;
    L_0x00cb:
        r1 = new java.lang.StringBuilder;
        r1.<init>();
        r1 = r1.append(r5);
        r2 = " new messages";
        r1 = r1.append(r2);
        r1 = r1.toString();
        r2 = r1;
    L_0x00df:
        r6 = new org.json.JSONObject;
        r6.<init>();
        r1 = "alert";
        r6.put(r1, r2);	 Catch:{ JSONException -> 0x0242 }
    L_0x00e9:
        r1 = b(r4);
        r7 = "summary";
        r1 = r1.putExtra(r7, r9);
        r7 = "onesignal_data";
        r6 = r6.toString();
        r1 = r1.putExtra(r7, r6);
        r6 = r10.nextInt();
        r1 = a(r6, r1);
        r6 = c(r17);
        if (r16 == 0) goto L_0x010e;
    L_0x010b:
        a(r6);
    L_0x010e:
        r1 = r6.setContentIntent(r1);
        r1 = r1.setDeleteIntent(r11);
        r7 = a;
        r7 = r7.getPackageManager();
        r8 = a;
        r8 = r8.getApplicationInfo();
        r7 = r7.getApplicationLabel(r8);
        r1 = r1.setContentTitle(r7);
        r1 = r1.setContentText(r2);
        r1 = r1.setNumber(r5);
        r0 = r16;
        r1 = r1.setOnlyAlertOnce(r0);
        r1 = r1.setGroup(r9);
        r5 = 1;
        r1.setGroupSummary(r5);
        if (r16 != 0) goto L_0x0145;
    L_0x0142:
        r6.setTicker(r2);
    L_0x0145:
        r5 = new android.support.v4.app.NotificationCompat$InboxStyle;
        r5.<init>();
        if (r16 != 0) goto L_0x018f;
    L_0x014c:
        r1 = "title";
        r7 = 0;
        r0 = r17;
        r1 = r0.optString(r1, r7);
        if (r1 != 0) goto L_0x0248;
    L_0x0157:
        r1 = "";
    L_0x0159:
        r7 = "alert";
        r0 = r17;
        r7 = r0.optString(r7);
        r8 = new android.text.SpannableString;
        r9 = new java.lang.StringBuilder;
        r9.<init>();
        r9 = r9.append(r1);
        r7 = r9.append(r7);
        r7 = r7.toString();
        r8.<init>(r7);
        r7 = r1.length();
        if (r7 <= 0) goto L_0x018c;
    L_0x017d:
        r7 = new android.text.style.StyleSpan;
        r9 = 1;
        r7.<init>(r9);
        r9 = 0;
        r1 = r1.length();
        r10 = 0;
        r8.setSpan(r7, r9, r1, r10);
    L_0x018c:
        r5.addLine(r8);
    L_0x018f:
        r3 = r3.iterator();
    L_0x0193:
        r1 = r3.hasNext();
        if (r1 == 0) goto L_0x025d;
    L_0x0199:
        r1 = r3.next();
        r1 = (android.text.SpannableString) r1;
        r5.addLine(r1);
        goto L_0x0193;
    L_0x01a3:
        r1 = "title";
        r1 = r5.getColumnIndex(r1);	 Catch:{ all -> 0x0216 }
        r1 = r5.getString(r1);	 Catch:{ all -> 0x0216 }
        if (r1 != 0) goto L_0x01fa;
    L_0x01af:
        r1 = "";
    L_0x01b1:
        r6 = "message";
        r6 = r5.getColumnIndex(r6);	 Catch:{ all -> 0x0216 }
        r6 = r5.getString(r6);	 Catch:{ all -> 0x0216 }
        r7 = new android.text.SpannableString;	 Catch:{ all -> 0x0216 }
        r8 = new java.lang.StringBuilder;	 Catch:{ all -> 0x0216 }
        r8.<init>();	 Catch:{ all -> 0x0216 }
        r8 = r8.append(r1);	 Catch:{ all -> 0x0216 }
        r6 = r8.append(r6);	 Catch:{ all -> 0x0216 }
        r6 = r6.toString();	 Catch:{ all -> 0x0216 }
        r7.<init>(r6);	 Catch:{ all -> 0x0216 }
        r6 = r1.length();	 Catch:{ all -> 0x0216 }
        if (r6 <= 0) goto L_0x01e6;
    L_0x01d7:
        r6 = new android.text.style.StyleSpan;	 Catch:{ all -> 0x0216 }
        r8 = 1;
        r6.<init>(r8);	 Catch:{ all -> 0x0216 }
        r8 = 0;
        r1 = r1.length();	 Catch:{ all -> 0x0216 }
        r13 = 0;
        r7.setSpan(r6, r8, r1, r13);	 Catch:{ all -> 0x0216 }
    L_0x01e6:
        r2.add(r7);	 Catch:{ all -> 0x0216 }
        if (r3 != 0) goto L_0x02f7;
    L_0x01eb:
        r1 = "full_data";
        r1 = r5.getColumnIndex(r1);	 Catch:{ all -> 0x0216 }
        r3 = r5.getString(r1);	 Catch:{ all -> 0x0216 }
        r14 = r3;
        r3 = r4;
        r4 = r14;
        goto L_0x008e;
    L_0x01fa:
        r6 = new java.lang.StringBuilder;	 Catch:{ all -> 0x0216 }
        r6.<init>();	 Catch:{ all -> 0x0216 }
        r1 = r6.append(r1);	 Catch:{ all -> 0x0216 }
        r6 = " ";
        r1 = r1.append(r6);	 Catch:{ all -> 0x0216 }
        r1 = r1.toString();	 Catch:{ all -> 0x0216 }
        goto L_0x01b1;
    L_0x020e:
        r1 = move-exception;
        r1.printStackTrace();	 Catch:{ all -> 0x0216 }
    L_0x0212:
        r4 = r3;
        r3 = r2;
        goto L_0x00a1;
    L_0x0216:
        r1 = move-exception;
        if (r5 == 0) goto L_0x0222;
    L_0x0219:
        r2 = r5.isClosed();
        if (r2 != 0) goto L_0x0222;
    L_0x021f:
        r5.close();
    L_0x0222:
        throw r1;
    L_0x0223:
        r1 = 1;
        goto L_0x00be;
    L_0x0226:
        r2 = "$[notif_count]";
        r6 = new java.lang.StringBuilder;
        r6.<init>();
        r7 = "";
        r6 = r6.append(r7);
        r6 = r6.append(r5);
        r6 = r6.toString();
        r1 = r1.replace(r2, r6);
        r2 = r1;
        goto L_0x00df;
    L_0x0242:
        r1 = move-exception;
        r1.printStackTrace();
        goto L_0x00e9;
    L_0x0248:
        r7 = new java.lang.StringBuilder;
        r7.<init>();
        r1 = r7.append(r1);
        r7 = " ";
        r1 = r1.append(r7);
        r1 = r1.toString();
        goto L_0x0159;
    L_0x025d:
        r5.setBigContentTitle(r2);
        r6.setStyle(r5);
        r1 = r6.build();
    L_0x0267:
        r2 = a;
        r2 = android.support.v4.app.NotificationManagerCompat.from(r2);
        r2.notify(r4, r1);
        return;
    L_0x0271:
        r2 = r12.getWritableDatabase();
        r2.beginTransaction();
        r1 = new android.content.ContentValues;	 Catch:{ Exception -> 0x02e6 }
        r1.<init>();	 Catch:{ Exception -> 0x02e6 }
        r3 = "android_notification_id";
        r5 = java.lang.Integer.valueOf(r4);	 Catch:{ Exception -> 0x02e6 }
        r1.put(r3, r5);	 Catch:{ Exception -> 0x02e6 }
        r3 = "group_id";
        r1.put(r3, r9);	 Catch:{ Exception -> 0x02e6 }
        r3 = "is_summary";
        r5 = 1;
        r5 = java.lang.Integer.valueOf(r5);	 Catch:{ Exception -> 0x02e6 }
        r1.put(r3, r5);	 Catch:{ Exception -> 0x02e6 }
        r3 = "notification";
        r5 = 0;
        r2.insertOrThrow(r3, r5, r1);	 Catch:{ Exception -> 0x02e6 }
        r2.setTransactionSuccessful();	 Catch:{ Exception -> 0x02e6 }
        r2.endTransaction();
    L_0x02a1:
        r1 = c(r17);
        if (r16 == 0) goto L_0x02aa;
    L_0x02a7:
        a(r1);
    L_0x02aa:
        r2 = r10.nextInt();
        r3 = b(r4);
        r5 = "onesignal_data";
        r6 = r17.toString();
        r3 = r3.putExtra(r5, r6);
        r5 = "summary";
        r3 = r3.putExtra(r5, r9);
        r2 = a(r2, r3);
        r0 = r17;
        a(r0, r1, r4, r9);
        r2 = r1.setContentIntent(r2);
        r2 = r2.setDeleteIntent(r11);
        r0 = r16;
        r2 = r2.setOnlyAlertOnce(r0);
        r2 = r2.setGroup(r9);
        r3 = 1;
        r2.setGroupSummary(r3);
        r1 = r1.build();
        goto L_0x0267;
    L_0x02e6:
        r1 = move-exception;
        r3 = com.onesignal.t.d.ERROR;	 Catch:{ all -> 0x02f2 }
        r5 = "Error adding summary notification record! ";
        com.onesignal.t.a(r3, r5, r1);	 Catch:{ all -> 0x02f2 }
        r2.endTransaction();
        goto L_0x02a1;
    L_0x02f2:
        r1 = move-exception;
        r2.endTransaction();
        throw r1;
    L_0x02f7:
        r14 = r3;
        r3 = r4;
        r4 = r14;
        goto L_0x008e;
    L_0x02fc:
        r14 = r4;
        r4 = r3;
        r3 = r14;
        goto L_0x0074;
    L_0x0301:
        r4 = r3;
        r3 = r1;
        goto L_0x00a1;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.onesignal.g.a(android.content.Context, boolean, org.json.JSONObject):void");
    }

    private static void a(Builder builder) {
        builder.setDefaults(0).setSound(null).setVibrate(null).setTicker(null);
    }

    private static void a(RemoteViews remoteViews, JSONObject jSONObject, int i, String str, String str2) {
        Integer a = a(jSONObject, str);
        if (a != null) {
            remoteViews.setTextColor(i, a.intValue());
            return;
        }
        int identifier = c.getIdentifier(str2, "color", b);
        if (identifier != 0) {
            remoteViews.setTextColor(i, c.a(a, identifier));
        }
    }

    private static void a(final JSONObject jSONObject, final Activity activity, final int i) {
        activity.runOnUiThread(new Runnable() {
            public void run() {
                AlertDialog.Builder builder = new AlertDialog.Builder(activity);
                builder.setTitle(g.b(jSONObject));
                builder.setMessage(jSONObject.optString("alert"));
                List arrayList = new ArrayList();
                final List arrayList2 = new ArrayList();
                g.b(activity, jSONObject, arrayList, arrayList2);
                final Intent a = g.b(i);
                a.putExtra("action_button", true);
                a.putExtra("from_alert", true);
                a.putExtra("onesignal_data", jSONObject.toString());
                if (jSONObject.has("grp")) {
                    a.putExtra("grp", jSONObject.optString("grp"));
                }
                AnonymousClass1 anonymousClass1 = new OnClickListener() {
                    public void onClick(DialogInterface dialogInterface, int i) {
                        int i2 = i + 3;
                        if (arrayList2.size() > 1) {
                            try {
                                JSONObject jSONObject = new JSONObject(jSONObject.toString());
                                jSONObject.put("actionSelected", arrayList2.get(i2));
                                a.putExtra("onesignal_data", jSONObject.toString());
                                m.b(activity, a);
                                return;
                            } catch (Throwable th) {
                                return;
                            }
                        }
                        m.b(activity, a);
                    }
                };
                builder.setOnCancelListener(new OnCancelListener() {
                    public void onCancel(DialogInterface dialogInterface) {
                        m.b(activity, a);
                    }
                });
                for (int i = 0; i < arrayList.size(); i++) {
                    if (i == 0) {
                        builder.setNeutralButton((CharSequence) arrayList.get(i), anonymousClass1);
                    } else if (i == 1) {
                        builder.setNegativeButton((CharSequence) arrayList.get(i), anonymousClass1);
                    } else if (i == 2) {
                        builder.setPositiveButton((CharSequence) arrayList.get(i), anonymousClass1);
                    }
                }
                AlertDialog create = builder.create();
                create.setCanceledOnTouchOutside(false);
                create.show();
            }
        });
    }

    private static void a(JSONObject jSONObject, Builder builder) {
        if (VERSION.SDK_INT >= 16) {
            Bitmap d;
            JSONObject jSONObject2;
            String optString = jSONObject.optString("bg_img", null);
            if (optString != null) {
                JSONObject jSONObject3 = new JSONObject(optString);
                JSONObject jSONObject4 = jSONObject3;
                d = d(jSONObject3.optString("img", null));
                jSONObject2 = jSONObject4;
            } else {
                jSONObject2 = null;
                Object d2 = null;
            }
            Bitmap b = d2 == null ? b("onesignal_bgimage_default_image") : d2;
            if (b != null) {
                Object string;
                RemoteViews remoteViews = new RemoteViews(a.getPackageName(), b.onesignal_bgimage_notif_layout);
                remoteViews.setTextViewText(aa.a.os_bgimage_notif_title, b(jSONObject));
                remoteViews.setTextViewText(aa.a.os_bgimage_notif_body, jSONObject.optString("alert"));
                a(remoteViews, jSONObject2, aa.a.os_bgimage_notif_title, "tc", "onesignal_bgimage_notif_title_color");
                a(remoteViews, jSONObject2, aa.a.os_bgimage_notif_body, "bc", "onesignal_bgimage_notif_body_color");
                if (jSONObject2 == null || !jSONObject2.has("img_align")) {
                    int identifier = c.getIdentifier("onesignal_bgimage_notif_image_align", "string", b);
                    string = identifier != 0 ? c.getString(identifier) : null;
                } else {
                    string = jSONObject2.getString("img_align");
                }
                if ("right".equals(string)) {
                    remoteViews.setViewPadding(aa.a.os_bgimage_notif_bgimage_align_layout, -5000, 0, 0, 0);
                    remoteViews.setImageViewBitmap(aa.a.os_bgimage_notif_bgimage_right_aligned, b);
                    remoteViews.setViewVisibility(aa.a.os_bgimage_notif_bgimage_right_aligned, 0);
                    remoteViews.setViewVisibility(aa.a.os_bgimage_notif_bgimage, 2);
                } else {
                    remoteViews.setImageViewBitmap(aa.a.os_bgimage_notif_bgimage, b);
                }
                builder.setContent(remoteViews);
                builder.setStyle(null);
            }
        }
    }

    private static void a(JSONObject jSONObject, Builder builder, int i, String str) {
        try {
            JSONObject jSONObject2 = new JSONObject(jSONObject.optString("custom"));
            if (jSONObject2.has("a")) {
                jSONObject2 = jSONObject2.getJSONObject("a");
                if (jSONObject2.has("actionButtons")) {
                    JSONArray jSONArray = jSONObject2.getJSONArray("actionButtons");
                    for (int i2 = 0; i2 < jSONArray.length(); i2++) {
                        JSONObject optJSONObject = jSONArray.optJSONObject(i2);
                        jSONObject2 = new JSONObject(jSONObject.toString());
                        Intent b = b(i);
                        b.setAction("" + i2);
                        b.putExtra("action_button", true);
                        jSONObject2.put("actionSelected", optJSONObject.optString("id"));
                        b.putExtra("onesignal_data", jSONObject2.toString());
                        if (str != null) {
                            b.putExtra("summary", str);
                        } else if (jSONObject.has("grp")) {
                            b.putExtra("grp", jSONObject.optString("grp"));
                        }
                        builder.addAction(optJSONObject.has("icon") ? e(optJSONObject.optString("icon")) : 0, optJSONObject.optString("text"), a(i, b));
                    }
                }
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    private static void a(boolean z, JSONObject jSONObject) {
        a(null, z, jSONObject);
    }

    private static boolean a(String str) {
        return (str == null || str.matches("^[0-9]")) ? false : true;
    }

    private static Intent b(int i) {
        Intent putExtra = new Intent(a, d).putExtra("notificationId", i);
        return e ? putExtra : putExtra.addFlags(603979776);
    }

    /* JADX WARNING: Missing block: B:19:?, code skipped:
            r0 = e(r6);
     */
    /* JADX WARNING: Missing block: B:20:0x0070, code skipped:
            if (r0 == 0) goto L_0x007a;
     */
    /* JADX WARNING: Missing block: B:27:?, code skipped:
            return android.graphics.BitmapFactory.decodeResource(c, r0);
     */
    private static android.graphics.Bitmap b(java.lang.String r6) {
        /*
        r1 = 0;
        r0 = a;	 Catch:{ Throwable -> 0x0012 }
        r0 = r0.getAssets();	 Catch:{ Throwable -> 0x0012 }
        r0 = r0.open(r6);	 Catch:{ Throwable -> 0x0012 }
        r0 = android.graphics.BitmapFactory.decodeStream(r0);	 Catch:{ Throwable -> 0x0012 }
    L_0x000f:
        if (r0 == 0) goto L_0x0015;
    L_0x0011:
        return r0;
    L_0x0012:
        r0 = move-exception;
        r0 = r1;
        goto L_0x000f;
    L_0x0015:
        r2 = 5;
        r2 = new java.lang.String[r2];	 Catch:{ Throwable -> 0x0079 }
        r3 = 0;
        r4 = ".png";
        r2[r3] = r4;	 Catch:{ Throwable -> 0x0079 }
        r3 = 1;
        r4 = ".webp";
        r2[r3] = r4;	 Catch:{ Throwable -> 0x0079 }
        r3 = 2;
        r4 = ".jpg";
        r2[r3] = r4;	 Catch:{ Throwable -> 0x0079 }
        r3 = 3;
        r4 = ".gif";
        r2[r3] = r4;	 Catch:{ Throwable -> 0x0079 }
        r3 = 4;
        r4 = ".bmp";
        r2[r3] = r4;	 Catch:{ Throwable -> 0x0079 }
        r2 = java.util.Arrays.asList(r2);	 Catch:{ Throwable -> 0x0079 }
        r3 = r2.iterator();	 Catch:{ Throwable -> 0x0079 }
        r2 = r0;
    L_0x003a:
        r0 = r3.hasNext();	 Catch:{ Throwable -> 0x0079 }
        if (r0 == 0) goto L_0x006c;
    L_0x0040:
        r0 = r3.next();	 Catch:{ Throwable -> 0x0079 }
        r0 = (java.lang.String) r0;	 Catch:{ Throwable -> 0x0079 }
        r4 = a;	 Catch:{ Throwable -> 0x0069 }
        r4 = r4.getAssets();	 Catch:{ Throwable -> 0x0069 }
        r5 = new java.lang.StringBuilder;	 Catch:{ Throwable -> 0x0069 }
        r5.<init>();	 Catch:{ Throwable -> 0x0069 }
        r5 = r5.append(r6);	 Catch:{ Throwable -> 0x0069 }
        r0 = r5.append(r0);	 Catch:{ Throwable -> 0x0069 }
        r0 = r0.toString();	 Catch:{ Throwable -> 0x0069 }
        r0 = r4.open(r0);	 Catch:{ Throwable -> 0x0069 }
        r0 = android.graphics.BitmapFactory.decodeStream(r0);	 Catch:{ Throwable -> 0x0069 }
    L_0x0065:
        if (r0 != 0) goto L_0x0011;
    L_0x0067:
        r2 = r0;
        goto L_0x003a;
    L_0x0069:
        r0 = move-exception;
        r0 = r2;
        goto L_0x0065;
    L_0x006c:
        r0 = e(r6);	 Catch:{ Throwable -> 0x0079 }
        if (r0 == 0) goto L_0x007a;
    L_0x0072:
        r2 = c;	 Catch:{ Throwable -> 0x0079 }
        r0 = android.graphics.BitmapFactory.decodeResource(r2, r0);	 Catch:{ Throwable -> 0x0079 }
        goto L_0x0011;
    L_0x0079:
        r0 = move-exception;
    L_0x007a:
        r0 = r1;
        goto L_0x0011;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.onesignal.g.b(java.lang.String):android.graphics.Bitmap");
    }

    private static CharSequence b(JSONObject jSONObject) {
        String optString = jSONObject.optString("title", null);
        return optString != null ? optString : a.getPackageManager().getApplicationLabel(a.getApplicationInfo());
    }

    private static void b(Context context, JSONObject jSONObject, List<String> list, List<String> list2) {
        try {
            JSONObject jSONObject2 = new JSONObject(jSONObject.optString("custom"));
            if (jSONObject2.has("a")) {
                jSONObject2 = jSONObject2.getJSONObject("a");
                if (jSONObject2.has("actionButtons")) {
                    JSONArray optJSONArray = jSONObject2.optJSONArray("actionButtons");
                    for (int i = 0; i < optJSONArray.length(); i++) {
                        JSONObject jSONObject3 = optJSONArray.getJSONObject(i);
                        list.add(jSONObject3.optString("text"));
                        list2.add(jSONObject3.optString("id"));
                    }
                }
            }
            if (list.size() < 3) {
                list.add(s.a(context, "onesignal_in_app_alert_ok_button_text", "Ok"));
                list2.add("__DEFAULT__");
            }
        } catch (Throwable th) {
            t.a(d.ERROR, "Failed to parse buttons for alert dialog.", th);
        }
    }

    private static Intent c(int i) {
        Intent putExtra = new Intent(a, d).putExtra("notificationId", i).putExtra("dismissed", true);
        return e ? putExtra : putExtra.addFlags(402718720);
    }

    private static Bitmap c(String str) {
        try {
            return BitmapFactory.decodeStream(new URL(str).openConnection().getInputStream());
        } catch (Throwable th) {
            return null;
        }
    }

    private static Builder c(JSONObject jSONObject) {
        int i = 1;
        int e = e(jSONObject);
        int i2 = t.b(a) ? 2 : 0;
        String optString = jSONObject.optString("alert", null);
        Builder ticker = new Builder(a).setAutoCancel(true).setSmallIcon(e).setContentTitle(b(jSONObject)).setStyle(new BigTextStyle().bigText(optString)).setContentText(optString).setTicker(optString);
        try {
            BigInteger h = h(jSONObject);
            if (h != null) {
                ticker.setColor(h.intValue());
            }
        } catch (Throwable th) {
        }
        if (jSONObject.has("ledc")) {
            try {
                ticker.setLights(new BigInteger(jSONObject.optString("ledc"), 16).intValue(), AdError.SERVER_ERROR_CODE, 5000);
            } catch (Throwable th2) {
                i2 |= 4;
            }
        } else {
            i2 |= 4;
        }
        try {
            if (jSONObject.has("vis")) {
                i = Integer.parseInt(jSONObject.optString("vis"));
            }
            ticker.setVisibility(i);
        } catch (Throwable th3) {
        }
        Bitmap d = d(jSONObject);
        if (d != null) {
            ticker.setLargeIcon(d);
        }
        d = d(jSONObject.optString("bicon", null));
        if (d != null) {
            ticker.setStyle(new BigPictureStyle().bigPicture(d).setSummaryText(optString));
        }
        if (f(jSONObject)) {
            Uri g = g(jSONObject);
            if (g != null) {
                ticker.setSound(g);
            } else {
                i2 |= 1;
            }
        }
        ticker.setDefaults(i2);
        if (jSONObject.optInt("pri", 0) > 9) {
            ticker.setPriority(2);
        }
        return ticker;
    }

    private static Bitmap d(String str) {
        return str == null ? null : (str.startsWith("http://") || str.startsWith("https://")) ? c(str) : b(str);
    }

    private static Bitmap d(JSONObject jSONObject) {
        if (VERSION.SDK_INT < 11) {
            return null;
        }
        Bitmap d = d(jSONObject.optString("licon"));
        if (d == null) {
            d = b("ic_onesignal_large_icon_default");
        }
        if (d == null) {
            return null;
        }
        try {
            int dimension = (int) c.getDimension(17104902);
            int dimension2 = (int) c.getDimension(17104901);
            int height = d.getHeight();
            int width = d.getWidth();
            if (width > dimension2 || height > dimension) {
                if (height > width) {
                    dimension2 = (int) ((((float) width) / ((float) height)) * ((float) dimension));
                } else if (width > height) {
                    dimension = (int) ((((float) height) / ((float) width)) * ((float) dimension2));
                }
                return Bitmap.createScaledBitmap(d, dimension2, dimension, true);
            }
        } catch (Throwable th) {
        }
        return d;
    }

    private static int e(String str) {
        int i = 0;
        if (!a(str)) {
            return i;
        }
        int f = f(str);
        if (f != 0) {
            return f;
        }
        try {
            return drawable.class.getField(str).getInt(null);
        } catch (Throwable th) {
            return i;
        }
    }

    private static int e(JSONObject jSONObject) {
        int e = e(jSONObject.optString("sicon", null));
        if (e != 0) {
            return e;
        }
        e = f("ic_stat_onesignal_default");
        if (e != 0) {
            return e;
        }
        e = f("corona_statusbar_icon_default");
        if (e != 0) {
            return e;
        }
        e = f("ic_os_notification_fallback_white_24dp");
        return e == 0 ? 17301598 : e;
    }

    private static int f(String str) {
        return c.getIdentifier(str, "drawable", b);
    }

    private static boolean f(JSONObject jSONObject) {
        String optString = jSONObject.optString("sound", null);
        return ("null".equals(optString) || "nil".equals(optString)) ? false : t.c(a);
    }

    private static Uri g(JSONObject jSONObject) {
        int identifier;
        String optString = jSONObject.optString("sound", null);
        if (a(optString)) {
            identifier = c.getIdentifier(optString, "raw", b);
            if (identifier != 0) {
                return Uri.parse("android.resource://" + b + "/" + identifier);
            }
        }
        identifier = c.getIdentifier("onesignal_default_sound", "raw", b);
        return identifier != 0 ? Uri.parse("android.resource://" + b + "/" + identifier) : null;
    }

    private static BigInteger h(JSONObject jSONObject) {
        try {
            if (jSONObject.has("bgac")) {
                return new BigInteger(jSONObject.optString("bgac", null), 16);
            }
        } catch (Throwable th) {
        }
        try {
            String a = s.a(a, "com.onesignal.NotificationAccentColor.DEFAULT");
            if (a != null) {
                return new BigInteger(a, 16);
            }
        } catch (Throwable th2) {
        }
        return null;
    }
}
