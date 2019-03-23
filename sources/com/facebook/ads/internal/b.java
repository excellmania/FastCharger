package com.facebook.ads.internal;

import android.text.TextUtils;
import com.facebook.ads.AdError;

public class b {
    private final AdErrorType a;
    private final String b;

    public b(int i, String str) {
        this(AdErrorType.adErrorTypeFromCode(i), str);
    }

    public b(AdErrorType adErrorType, String str) {
        if (TextUtils.isEmpty(str)) {
            str = adErrorType.getDefaultErrorMessage();
        }
        this.a = adErrorType;
        this.b = str;
    }

    public AdErrorType a() {
        return this.a;
    }

    public AdError b() {
        return this.a.a() ? new AdError(this.a.getErrorCode(), this.b) : new AdError(AdErrorType.UNKNOWN_ERROR.getErrorCode(), AdErrorType.UNKNOWN_ERROR.getDefaultErrorMessage());
    }
}
