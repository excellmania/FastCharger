package com.google.android.gms.c;

import android.content.Context;
import android.net.Uri;
import android.view.MotionEvent;
import com.google.android.gms.a.a;
import com.google.android.gms.a.b;

@pa
public final class fd {
    private final fh a;

    public fd(String str, Context context, boolean z) {
        this.a = fg.a(str, context, z);
    }

    public Uri a(Uri uri, Context context) {
        a a = this.a.a(b.a((Object) uri), b.a((Object) context));
        if (a != null) {
            return (Uri) b.a(a);
        }
        throw new fe();
    }

    public void a(MotionEvent motionEvent) {
        this.a.d(b.a((Object) motionEvent));
    }

    public Uri b(Uri uri, Context context) {
        a b = this.a.b(b.a((Object) uri), b.a((Object) context));
        if (b != null) {
            return (Uri) b.a(b);
        }
        throw new fe();
    }
}
