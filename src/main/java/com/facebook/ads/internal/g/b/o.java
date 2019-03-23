package com.facebook.ads.internal.g.b;

import android.content.Context;
import android.os.Environment;
import android.util.Log;
import java.io.File;

final class o {
    public static File a(Context context) {
        return new File(a(context, true), "video-cache");
    }

    private static File a(Context context, boolean z) {
        File file = null;
        Object externalStorageState;
        try {
            externalStorageState = Environment.getExternalStorageState();
        } catch (NullPointerException e) {
            externalStorageState = "";
        }
        if (z && "mounted".equals(externalStorageState)) {
            file = b(context);
        }
        if (file == null) {
            file = context.getCacheDir();
        }
        if (file != null) {
            return file;
        }
        String str = "/data/data/" + context.getPackageName() + "/cache/";
        Log.w("ProxyCache", "Can't define system cache directory! '" + str + "%s' will be used.");
        return new File(str);
    }

    private static File b(Context context) {
        File file = new File(new File(new File(new File(Environment.getExternalStorageDirectory(), "Android"), "data"), context.getPackageName()), "cache");
        if (file.exists() || file.mkdirs()) {
            return file;
        }
        Log.w("ProxyCache", "Unable to create external cache directory");
        return null;
    }
}
