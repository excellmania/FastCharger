package com.facebook.ads.internal.g.a;

import android.os.AsyncTask;

public class h extends AsyncTask<l, Void, n> implements c {
    private a a;
    private b b;
    private Exception c;

    public h(a aVar, b bVar) {
        this.a = aVar;
        this.b = bVar;
    }

    /* Access modifiers changed, original: protected|varargs */
    /* renamed from: a */
    public n doInBackground(l... lVarArr) {
        if (lVarArr != null) {
            try {
                if (lVarArr.length > 0) {
                    return this.a.a(lVarArr[0]);
                }
            } catch (Exception e) {
                this.c = e;
                cancel(true);
                return null;
            }
        }
        throw new IllegalArgumentException("DoHttpRequestTask takes exactly one argument of type HttpRequest");
    }

    public void a(l lVar) {
        super.execute(new l[]{lVar});
    }

    /* Access modifiers changed, original: protected */
    /* renamed from: a */
    public void onPostExecute(n nVar) {
        this.b.a(nVar);
    }

    /* Access modifiers changed, original: protected */
    public void onCancelled() {
        this.b.a(this.c);
    }
}
