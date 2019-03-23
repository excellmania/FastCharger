package com.facebook.ads.internal.util;

import android.content.Context;
import android.graphics.Bitmap;
import android.os.AsyncTask;
import android.util.Log;
import android.widget.ImageView;
import com.facebook.ads.internal.c.c;
import com.facebook.ads.internal.h.e;

public class l extends AsyncTask<String, Void, Bitmap[]> {
    private static final String a = l.class.getSimpleName();
    private final Context b;
    private final ImageView c;
    private final e d;
    private m e;

    public l(ImageView imageView) {
        this.b = imageView.getContext();
        this.d = null;
        this.c = imageView;
    }

    public l(e eVar) {
        this.b = eVar.getContext();
        this.d = eVar;
        this.c = null;
    }

    public l a(m mVar) {
        this.e = mVar;
        return this;
    }

    /* Access modifiers changed, original: protected */
    /* renamed from: a */
    public void onPostExecute(Bitmap[] bitmapArr) {
        if (this.c != null) {
            this.c.setImageBitmap(bitmapArr[0]);
        }
        if (this.d != null) {
            this.d.a(bitmapArr[0], bitmapArr[1]);
        }
        if (this.e != null) {
            this.e.a();
        }
    }

    public void a(String... strArr) {
        executeOnExecutor(THREAD_POOL_EXECUTOR, strArr);
    }

    /* Access modifiers changed, original: protected|varargs */
    /* renamed from: b */
    public Bitmap[] doInBackground(String... strArr) {
        Bitmap a;
        Throwable th;
        Object obj;
        String obj2;
        String str = null;
        String str2 = strArr[0];
        try {
            a = c.a(this.b).a(str2);
            try {
                if (!(this.d == null || a == null)) {
                    try {
                        t tVar = new t(a);
                        tVar.a(Math.round(((float) a.getWidth()) / 40.0f));
                        str = tVar.a();
                    } catch (Throwable th2) {
                        th = th2;
                        obj2 = a;
                    }
                }
            } catch (Throwable th22) {
                th = th22;
                obj2 = a;
                Object a2 = str;
                Log.e(a, "Error downloading image: " + str2, th);
                c.a(b.a(th, str));
                Object str3 = a2;
                a2 = obj2;
                return new Bitmap[]{a2, str3};
            }
        } catch (Throwable th3) {
            th = th3;
            obj2 = str3;
            a2 = str3;
        }
        return new Bitmap[]{a2, str3};
    }
}
