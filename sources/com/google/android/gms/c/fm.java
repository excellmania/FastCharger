package com.google.android.gms.c;

import android.app.KeyguardManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.graphics.Rect;
import android.os.PowerManager;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;
import android.view.ViewTreeObserver.OnScrollChangedListener;
import android.view.WindowManager;
import com.google.android.gms.ads.internal.v;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.UUID;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@pa
public class fm implements OnGlobalLayoutListener, OnScrollChangedListener {
    protected final Object a = new Object();
    protected final fk b;
    @Nullable
    BroadcastReceiver c;
    private final WeakReference<rv> d;
    private WeakReference<ViewTreeObserver> e;
    private final ft f;
    private final Context g;
    private final WindowManager h;
    private final PowerManager i;
    private final KeyguardManager j;
    @Nullable
    private fn k;
    private boolean l;
    private boolean m = false;
    private boolean n = false;
    private boolean o;
    private boolean p;
    private boolean q;
    private final HashSet<Object> r = new HashSet();
    private su s;
    private final HashSet<fq> t = new HashSet();

    public static class a implements ft {
        private WeakReference<jq> a;

        public a(jq jqVar) {
            this.a = new WeakReference(jqVar);
        }

        @Nullable
        public View a() {
            jq jqVar = (jq) this.a.get();
            return jqVar != null ? jqVar.d() : null;
        }

        public boolean b() {
            return this.a.get() == null;
        }

        public ft c() {
            return new b((jq) this.a.get());
        }
    }

    public static class b implements ft {
        private jq a;

        public b(jq jqVar) {
            this.a = jqVar;
        }

        public View a() {
            return this.a != null ? this.a.d() : null;
        }

        public boolean b() {
            return this.a == null;
        }

        public ft c() {
            return this;
        }
    }

    public static class c implements ft {
        @Nullable
        private final View a;
        @Nullable
        private final rv b;

        public c(View view, rv rvVar) {
            this.a = view;
            this.b = rvVar;
        }

        public View a() {
            return this.a;
        }

        public boolean b() {
            return this.b == null || this.a == null;
        }

        public ft c() {
            return this;
        }
    }

    public static class d implements ft {
        private final WeakReference<View> a;
        private final WeakReference<rv> b;

        public d(View view, rv rvVar) {
            this.a = new WeakReference(view);
            this.b = new WeakReference(rvVar);
        }

        public View a() {
            return (View) this.a.get();
        }

        public boolean b() {
            return this.a.get() == null || this.b.get() == null;
        }

        public ft c() {
            return new c((View) this.a.get(), (rv) this.b.get());
        }
    }

    public fm(Context context, ha haVar, rv rvVar, tc tcVar, ft ftVar) {
        this.d = new WeakReference(rvVar);
        this.f = ftVar;
        this.e = new WeakReference(null);
        this.o = true;
        this.q = false;
        this.s = new su(200);
        this.b = new fk(UUID.randomUUID().toString(), tcVar, haVar.b, rvVar.j, rvVar.a(), haVar.i);
        this.h = (WindowManager) context.getSystemService("window");
        this.i = (PowerManager) context.getApplicationContext().getSystemService("power");
        this.j = (KeyguardManager) context.getSystemService("keyguard");
        this.g = context;
    }

    /* Access modifiers changed, original: protected */
    public int a(int i, DisplayMetrics displayMetrics) {
        return (int) (((float) i) / displayMetrics.density);
    }

    /* Access modifiers changed, original: protected */
    public JSONObject a(@Nullable View view) {
        if (view == null) {
            return l();
        }
        boolean a = v.g().a(view);
        int[] iArr = new int[2];
        int[] iArr2 = new int[2];
        try {
            view.getLocationOnScreen(iArr);
            view.getLocationInWindow(iArr2);
        } catch (Exception e) {
            sz.b("Failure getting view location.", e);
        }
        DisplayMetrics displayMetrics = view.getContext().getResources().getDisplayMetrics();
        Rect rect = new Rect();
        rect.left = iArr[0];
        rect.top = iArr[1];
        rect.right = rect.left + view.getWidth();
        rect.bottom = rect.top + view.getHeight();
        Rect rect2 = new Rect();
        rect2.right = this.h.getDefaultDisplay().getWidth();
        rect2.bottom = this.h.getDefaultDisplay().getHeight();
        Rect rect3 = new Rect();
        boolean globalVisibleRect = view.getGlobalVisibleRect(rect3, null);
        Rect rect4 = new Rect();
        boolean localVisibleRect = view.getLocalVisibleRect(rect4);
        Rect rect5 = new Rect();
        view.getHitRect(rect5);
        JSONObject i = i();
        i.put("windowVisibility", view.getWindowVisibility()).put("isAttachedToWindow", a).put("viewBox", new JSONObject().put("top", a(rect2.top, displayMetrics)).put("bottom", a(rect2.bottom, displayMetrics)).put("left", a(rect2.left, displayMetrics)).put("right", a(rect2.right, displayMetrics))).put("adBox", new JSONObject().put("top", a(rect.top, displayMetrics)).put("bottom", a(rect.bottom, displayMetrics)).put("left", a(rect.left, displayMetrics)).put("right", a(rect.right, displayMetrics))).put("globalVisibleBox", new JSONObject().put("top", a(rect3.top, displayMetrics)).put("bottom", a(rect3.bottom, displayMetrics)).put("left", a(rect3.left, displayMetrics)).put("right", a(rect3.right, displayMetrics))).put("globalVisibleBoxVisible", globalVisibleRect).put("localVisibleBox", new JSONObject().put("top", a(rect4.top, displayMetrics)).put("bottom", a(rect4.bottom, displayMetrics)).put("left", a(rect4.left, displayMetrics)).put("right", a(rect4.right, displayMetrics))).put("localVisibleBoxVisible", localVisibleRect).put("hitBox", new JSONObject().put("top", a(rect5.top, displayMetrics)).put("bottom", a(rect5.bottom, displayMetrics)).put("left", a(rect5.left, displayMetrics)).put("right", a(rect5.right, displayMetrics))).put("screenDensity", (double) displayMetrics.density).put("isVisible", v.e().a(view, this.i, this.j));
        return i;
    }

    /* Access modifiers changed, original: 0000 */
    public JSONObject a(JSONObject jSONObject) {
        JSONArray jSONArray = new JSONArray();
        JSONObject jSONObject2 = new JSONObject();
        jSONArray.put(jSONObject);
        jSONObject2.put("units", jSONArray);
        return jSONObject2;
    }

    /* Access modifiers changed, original: protected */
    public void a() {
        synchronized (this.a) {
            if (this.c != null) {
                return;
            }
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.intent.action.SCREEN_ON");
            intentFilter.addAction("android.intent.action.SCREEN_OFF");
            this.c = new BroadcastReceiver() {
                public void onReceive(Context context, Intent intent) {
                    fm.this.a(3);
                }
            };
            this.g.registerReceiver(this.c, intentFilter);
        }
    }

    /* Access modifiers changed, original: protected */
    /* JADX WARNING: No exception handlers in catch block: Catch:{  } */
    /* JADX WARNING: Missing block: B:47:?, code skipped:
            return;
     */
    public void a(int r8) {
        /*
        r7 = this;
        r0 = 0;
        r1 = 1;
        r3 = r7.a;
        monitor-enter(r3);
        r2 = r7.k();	 Catch:{ all -> 0x0041 }
        if (r2 == 0) goto L_0x000f;
    L_0x000b:
        r2 = r7.o;	 Catch:{ all -> 0x0041 }
        if (r2 != 0) goto L_0x0011;
    L_0x000f:
        monitor-exit(r3);	 Catch:{ all -> 0x0041 }
    L_0x0010:
        return;
    L_0x0011:
        r2 = r7.f;	 Catch:{ all -> 0x0041 }
        r4 = r2.a();	 Catch:{ all -> 0x0041 }
        if (r4 == 0) goto L_0x0044;
    L_0x0019:
        r2 = com.google.android.gms.ads.internal.v.e();	 Catch:{ all -> 0x0041 }
        r5 = r7.i;	 Catch:{ all -> 0x0041 }
        r6 = r7.j;	 Catch:{ all -> 0x0041 }
        r2 = r2.a(r4, r5, r6);	 Catch:{ all -> 0x0041 }
        if (r2 == 0) goto L_0x0044;
    L_0x0027:
        r2 = new android.graphics.Rect;	 Catch:{ all -> 0x0041 }
        r2.<init>();	 Catch:{ all -> 0x0041 }
        r5 = 0;
        r2 = r4.getGlobalVisibleRect(r2, r5);	 Catch:{ all -> 0x0041 }
        if (r2 == 0) goto L_0x0044;
    L_0x0033:
        r2 = r1;
    L_0x0034:
        r5 = r7.f;	 Catch:{ all -> 0x0041 }
        r5 = r5.b();	 Catch:{ all -> 0x0041 }
        if (r5 == 0) goto L_0x0046;
    L_0x003c:
        r7.d();	 Catch:{ all -> 0x0041 }
        monitor-exit(r3);	 Catch:{ all -> 0x0041 }
        goto L_0x0010;
    L_0x0041:
        r0 = move-exception;
        monitor-exit(r3);	 Catch:{ all -> 0x0041 }
        throw r0;
    L_0x0044:
        r2 = r0;
        goto L_0x0034;
    L_0x0046:
        if (r8 != r1) goto L_0x0049;
    L_0x0048:
        r0 = r1;
    L_0x0049:
        if (r0 == 0) goto L_0x0059;
    L_0x004b:
        r0 = r7.s;	 Catch:{ all -> 0x0041 }
        r0 = r0.a();	 Catch:{ all -> 0x0041 }
        if (r0 != 0) goto L_0x0059;
    L_0x0053:
        r0 = r7.q;	 Catch:{ all -> 0x0041 }
        if (r2 != r0) goto L_0x0059;
    L_0x0057:
        monitor-exit(r3);	 Catch:{ all -> 0x0041 }
        goto L_0x0010;
    L_0x0059:
        if (r2 != 0) goto L_0x0063;
    L_0x005b:
        r0 = r7.q;	 Catch:{ all -> 0x0041 }
        if (r0 != 0) goto L_0x0063;
    L_0x005f:
        if (r8 != r1) goto L_0x0063;
    L_0x0061:
        monitor-exit(r3);	 Catch:{ all -> 0x0041 }
        goto L_0x0010;
    L_0x0063:
        r0 = r7.a(r4);	 Catch:{ JSONException -> 0x007c, RuntimeException | JSONException -> 0x0075 }
        r1 = 0;
        r7.a(r0, r1);	 Catch:{ JSONException -> 0x007c, RuntimeException | JSONException -> 0x0075 }
        r7.q = r2;	 Catch:{ JSONException -> 0x007c, RuntimeException | JSONException -> 0x0075 }
    L_0x006d:
        r7.g();	 Catch:{ all -> 0x0041 }
        r7.e();	 Catch:{ all -> 0x0041 }
        monitor-exit(r3);	 Catch:{ all -> 0x0041 }
        goto L_0x0010;
    L_0x0075:
        r0 = move-exception;
    L_0x0076:
        r1 = "Active view update failed.";
        com.google.android.gms.c.sz.a(r1, r0);	 Catch:{ all -> 0x0041 }
        goto L_0x006d;
    L_0x007c:
        r0 = move-exception;
        goto L_0x0076;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.c.fm.a(int):void");
    }

    /* Access modifiers changed, original: protected */
    public void a(View view, Map<String, String> map) {
        a(3);
    }

    public void a(fn fnVar) {
        synchronized (this.a) {
            this.k = fnVar;
        }
    }

    public void a(fq fqVar) {
        if (this.t.isEmpty()) {
            a();
            a(3);
        }
        this.t.add(fqVar);
        try {
            fqVar.a(a(a(this.f.a())), false);
        } catch (JSONException e) {
            sz.b("Skipping measurement update for new client.", e);
        }
    }

    /* Access modifiers changed, original: 0000 */
    public void a(fq fqVar, Map<String, String> map) {
        String str = "Received request to untrack: ";
        String valueOf = String.valueOf(this.b.d());
        sz.b(valueOf.length() != 0 ? str.concat(valueOf) : new String(str));
        b(fqVar);
    }

    /* Access modifiers changed, original: 0000 */
    public void a(tr trVar, Map<String, String> map) {
        a(trVar.b(), (Map) map);
    }

    /* Access modifiers changed, original: protected */
    public void a(JSONObject jSONObject, boolean z) {
        try {
            b(a(jSONObject), z);
        } catch (Throwable th) {
            sz.b("Skipping active view message.", th);
        }
    }

    /* Access modifiers changed, original: protected */
    public void a(boolean z) {
        Iterator it = this.r.iterator();
        while (it.hasNext()) {
            it.next();
        }
    }

    /* Access modifiers changed, original: 0000 */
    public boolean a(@Nullable Map<String, String> map) {
        if (map == null) {
            return false;
        }
        String str = (String) map.get("hashCode");
        boolean z = !TextUtils.isEmpty(str) && str.equals(this.b.d());
        return z;
    }

    /* Access modifiers changed, original: protected */
    public void b() {
        synchronized (this.a) {
            if (this.c != null) {
                try {
                    this.g.unregisterReceiver(this.c);
                } catch (IllegalStateException e) {
                    sz.b("Failed trying to unregister the receiver", e);
                } catch (Exception e2) {
                    v.i().a(e2, "ActiveViewUnit.stopScreenStatusMonitoring");
                }
                this.c = null;
            }
        }
        return;
    }

    public void b(fq fqVar) {
        this.t.remove(fqVar);
        fqVar.b();
        if (this.t.isEmpty()) {
            c();
        }
    }

    /* Access modifiers changed, original: 0000 */
    public void b(Map<String, String> map) {
        if (map.containsKey("isVisible")) {
            boolean z = "1".equals(map.get("isVisible")) || "true".equals(map.get("isVisible"));
            a(z);
        }
    }

    /* Access modifiers changed, original: protected */
    public void b(JSONObject jSONObject, boolean z) {
        Iterator it = new ArrayList(this.t).iterator();
        while (it.hasNext()) {
            ((fq) it.next()).a(jSONObject, z);
        }
    }

    /* Access modifiers changed, original: protected */
    public void c() {
        synchronized (this.a) {
            h();
            b();
            this.o = false;
            e();
            j();
        }
    }

    public void d() {
        synchronized (this.a) {
            if (this.o) {
                this.p = true;
                try {
                    a(n(), true);
                } catch (JSONException e) {
                    sz.b("JSON failure while processing active view data.", e);
                } catch (RuntimeException e2) {
                    sz.b("Failure while processing active view data.", e2);
                }
                String str = "Untracking ad unit: ";
                String valueOf = String.valueOf(this.b.d());
                sz.b(valueOf.length() != 0 ? str.concat(valueOf) : new String(str));
            }
        }
    }

    /* Access modifiers changed, original: protected */
    public void e() {
        if (this.k != null) {
            this.k.a(this);
        }
    }

    public boolean f() {
        boolean z;
        synchronized (this.a) {
            z = this.o;
        }
        return z;
    }

    /* Access modifiers changed, original: protected */
    public void g() {
        View a = this.f.c().a();
        if (a != null) {
            ViewTreeObserver viewTreeObserver = (ViewTreeObserver) this.e.get();
            ViewTreeObserver viewTreeObserver2 = a.getViewTreeObserver();
            if (viewTreeObserver2 != viewTreeObserver) {
                h();
                if (!this.l || (viewTreeObserver != null && viewTreeObserver.isAlive())) {
                    this.l = true;
                    viewTreeObserver2.addOnScrollChangedListener(this);
                    viewTreeObserver2.addOnGlobalLayoutListener(this);
                }
                this.e = new WeakReference(viewTreeObserver2);
            }
        }
    }

    /* Access modifiers changed, original: protected */
    public void h() {
        ViewTreeObserver viewTreeObserver = (ViewTreeObserver) this.e.get();
        if (viewTreeObserver != null && viewTreeObserver.isAlive()) {
            viewTreeObserver.removeOnScrollChangedListener(this);
            viewTreeObserver.removeGlobalOnLayoutListener(this);
        }
    }

    /* Access modifiers changed, original: protected */
    public JSONObject i() {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("afmaVersion", this.b.b()).put("activeViewJSON", this.b.c()).put("timestamp", v.k().b()).put("adFormat", this.b.a()).put("hashCode", this.b.d()).put("isMraid", this.b.e()).put("isStopped", this.n).put("isPaused", this.m).put("isScreenOn", m()).put("isNative", this.b.f()).put("appMuted", v.e().h()).put("appVolume", (double) v.e().g()).put("deviceVolume", (double) v.e().j(this.g));
        return jSONObject;
    }

    /* Access modifiers changed, original: protected */
    public void j() {
        Iterator it = new ArrayList(this.t).iterator();
        while (it.hasNext()) {
            b((fq) it.next());
        }
    }

    /* Access modifiers changed, original: protected */
    public boolean k() {
        Iterator it = this.t.iterator();
        while (it.hasNext()) {
            if (((fq) it.next()).a()) {
                return true;
            }
        }
        return false;
    }

    /* Access modifiers changed, original: protected */
    public JSONObject l() {
        return i().put("isAttachedToWindow", false).put("isScreenOn", m()).put("isVisible", false);
    }

    /* Access modifiers changed, original: 0000 */
    public boolean m() {
        return this.i.isScreenOn();
    }

    /* Access modifiers changed, original: protected */
    public JSONObject n() {
        JSONObject i = i();
        i.put("doneReasonCode", "u");
        return i;
    }

    public void o() {
        synchronized (this.a) {
            this.n = true;
            a(3);
        }
    }

    public void onGlobalLayout() {
        a(2);
    }

    public void onScrollChanged() {
        a(1);
    }

    public void p() {
        synchronized (this.a) {
            this.m = true;
            a(3);
        }
    }

    public void q() {
        synchronized (this.a) {
            this.m = false;
            a(3);
        }
    }

    public fk r() {
        return this.b;
    }
}
