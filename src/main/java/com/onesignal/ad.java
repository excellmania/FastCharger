package com.onesignal;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.os.Bundle;
import android.os.IBinder;
import com.onesignal.t.c;
import com.onesignal.t.d;
import java.lang.reflect.Method;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

class ad {
    private static int a = -99;
    private static Class<?> c;
    private ServiceConnection b;
    private Object d;
    private Method e;
    private Method f;
    private Context g;
    private ArrayList<String> h;
    private Editor i;
    private boolean j = true;
    private boolean k = false;

    ad(Context context) {
        boolean z = true;
        this.g = context;
        SharedPreferences sharedPreferences = this.g.getSharedPreferences("GTPlayerPurchases", 0);
        this.i = sharedPreferences.edit();
        this.h = new ArrayList();
        try {
            JSONArray jSONArray = new JSONArray(sharedPreferences.getString("purchaseTokens", "[]"));
            for (int i = 0; i < jSONArray.length(); i++) {
                this.h.add(jSONArray.get(i).toString());
            }
            if (jSONArray.length() != 0) {
                z = false;
            }
            this.j = z;
            if (this.j) {
                this.j = sharedPreferences.getBoolean("ExistingPurchases", true);
            }
        } catch (JSONException e) {
            e.printStackTrace();
        }
        a();
    }

    private void a(ArrayList<String> arrayList, final ArrayList<String> arrayList2) {
        try {
            if (this.f == null) {
                this.f = e(c);
                this.f.setAccessible(true);
            }
            new Bundle().putStringArrayList("ITEM_ID_LIST", arrayList);
            Bundle bundle = (Bundle) this.f.invoke(this.d, new Object[]{Integer.valueOf(3), this.g.getPackageName(), "inapp", bundle});
            if (bundle.getInt("RESPONSE_CODE") == 0) {
                String string;
                ArrayList stringArrayList = bundle.getStringArrayList("DETAILS_LIST");
                HashMap hashMap = new HashMap();
                Iterator it = stringArrayList.iterator();
                while (it.hasNext()) {
                    JSONObject jSONObject = new JSONObject((String) it.next());
                    string = jSONObject.getString("productId");
                    BigDecimal divide = new BigDecimal(jSONObject.getString("price_amount_micros")).divide(new BigDecimal(1000000));
                    JSONObject jSONObject2 = new JSONObject();
                    jSONObject2.put("sku", string);
                    jSONObject2.put("iso", jSONObject.getString("price_currency_code"));
                    jSONObject2.put("amount", divide.toString());
                    hashMap.put(string, jSONObject2);
                }
                final JSONArray jSONArray = new JSONArray();
                Iterator it2 = arrayList.iterator();
                while (it2.hasNext()) {
                    string = (String) it2.next();
                    if (hashMap.containsKey(string)) {
                        jSONArray.put(hashMap.get(string));
                    }
                }
                if (jSONArray.length() > 0) {
                    t.a(new c() {
                        public void a(String str, String str2) {
                            t.a(jSONArray, ad.this.j, new a() {
                                public void a(String str) {
                                    ad.this.h.addAll(arrayList2);
                                    ad.this.i.putString("purchaseTokens", ad.this.h.toString());
                                    ad.this.i.remove("ExistingPurchases");
                                    ad.this.i.commit();
                                    ad.this.j = false;
                                    ad.this.k = false;
                                }
                            });
                        }
                    });
                }
            }
        } catch (Throwable th) {
            t.a(d.WARN, "Failed to track IAP purchases", th);
        }
    }

    static boolean a(Context context) {
        if (a == -99) {
            a = context.checkCallingOrSelfPermission("com.android.vending.BILLING");
        }
        try {
            if (a == 0) {
                c = Class.forName("com.android.vending.billing.IInAppBillingService");
            }
            return a == 0;
        } catch (Throwable th) {
            a = 0;
            return false;
        }
    }

    private static Method c(Class cls) {
        for (Method method : cls.getMethods()) {
            Class[] parameterTypes = method.getParameterTypes();
            if (parameterTypes.length == 1 && parameterTypes[0] == IBinder.class) {
                return method;
            }
        }
        return null;
    }

    private void c() {
        if (!this.k) {
            new Thread(new Runnable() {
                public void run() {
                    ad.this.k = true;
                    try {
                        if (ad.this.e == null) {
                            ad.this.e = ad.d(ad.c);
                            ad.this.e.setAccessible(true);
                        }
                        Bundle bundle = (Bundle) ad.this.e.invoke(ad.this.d, new Object[]{Integer.valueOf(3), ad.this.g.getPackageName(), "inapp", null});
                        if (bundle.getInt("RESPONSE_CODE") == 0) {
                            ArrayList arrayList = new ArrayList();
                            ArrayList arrayList2 = new ArrayList();
                            ArrayList stringArrayList = bundle.getStringArrayList("INAPP_PURCHASE_ITEM_LIST");
                            ArrayList stringArrayList2 = bundle.getStringArrayList("INAPP_PURCHASE_DATA_LIST");
                            for (int i = 0; i < stringArrayList2.size(); i++) {
                                String str = (String) stringArrayList.get(i);
                                String string = new JSONObject((String) stringArrayList2.get(i)).getString("purchaseToken");
                                if (!(ad.this.h.contains(string) || arrayList2.contains(string))) {
                                    arrayList2.add(string);
                                    arrayList.add(str);
                                }
                            }
                            if (arrayList.size() > 0) {
                                ad.this.a(arrayList, arrayList2);
                            } else if (stringArrayList2.size() == 0) {
                                ad.this.j = false;
                                ad.this.i.putBoolean("ExistingPurchases", false);
                                ad.this.i.commit();
                            }
                        }
                    } catch (Throwable th) {
                        th.printStackTrace();
                    }
                    ad.this.k = false;
                }
            }).start();
        }
    }

    private static Method d(Class cls) {
        for (Method method : cls.getMethods()) {
            Class[] parameterTypes = method.getParameterTypes();
            if (parameterTypes.length == 4 && parameterTypes[0] == Integer.TYPE && parameterTypes[1] == String.class && parameterTypes[2] == String.class && parameterTypes[3] == String.class) {
                return method;
            }
        }
        return null;
    }

    private static Method e(Class cls) {
        for (Method method : cls.getMethods()) {
            Class[] parameterTypes = method.getParameterTypes();
            Class returnType = method.getReturnType();
            if (parameterTypes.length == 4 && parameterTypes[0] == Integer.TYPE && parameterTypes[1] == String.class && parameterTypes[2] == String.class && parameterTypes[3] == Bundle.class && returnType == Bundle.class) {
                return method;
            }
        }
        return null;
    }

    /* Access modifiers changed, original: 0000 */
    public void a() {
        if (this.b == null) {
            this.b = new ServiceConnection() {
                public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
                    try {
                        Method a = ad.c(Class.forName("com.android.vending.billing.IInAppBillingService$Stub"));
                        a.setAccessible(true);
                        ad.this.d = a.invoke(null, new Object[]{iBinder});
                        ad.this.c();
                    } catch (Throwable th) {
                        th.printStackTrace();
                    }
                }

                public void onServiceDisconnected(ComponentName componentName) {
                    ad.a = -99;
                    ad.this.d = null;
                }
            };
            Intent intent = new Intent("com.android.vending.billing.InAppBillingService.BIND");
            intent.setPackage("com.android.vending");
            this.g.bindService(intent, this.b, 1);
        } else if (this.d != null) {
            c();
        }
    }
}
