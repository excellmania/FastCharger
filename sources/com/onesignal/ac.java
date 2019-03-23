package com.onesignal;

import android.content.Context;
import com.amazon.device.iap.PurchasingListener;
import com.amazon.device.iap.PurchasingService;
import com.amazon.device.iap.model.ProductDataResponse.RequestStatus;
import java.lang.reflect.Field;

class ac {
    private Context a;
    private boolean b = false;
    private a c;
    private Class<?> d;
    private Object e;
    private Field f;

    /* renamed from: com.onesignal.ac$1 */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] a = new int[RequestStatus.values().length];

        static {
            try {
                a[RequestStatus.SUCCESSFUL.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
        }
    }

    private class a implements PurchasingListener {
        public PurchasingListener a;

        private a() {
        }

        /* synthetic */ a(ac acVar, AnonymousClass1 anonymousClass1) {
            this();
        }
    }

    ac(Context context) {
        this.a = context;
        try {
            this.d = Class.forName("com.amazon.device.iap.internal.d");
            this.e = this.d.getMethod("d", new Class[0]).invoke(null, new Object[0]);
            this.f = this.d.getDeclaredField("f");
            this.f.setAccessible(true);
            this.c = new a(this, null);
            this.c.a = (PurchasingListener) this.f.get(this.e);
            this.b = true;
            b();
        } catch (Throwable th) {
        }
    }

    private void b() {
        PurchasingService.registerListener(this.a, this.c);
    }

    public void a() {
        if (this.b) {
            try {
                PurchasingListener purchasingListener = (PurchasingListener) this.f.get(this.e);
                if (purchasingListener != this.c) {
                    this.c.a = purchasingListener;
                    b();
                }
            } catch (Throwable th) {
            }
        }
    }
}
