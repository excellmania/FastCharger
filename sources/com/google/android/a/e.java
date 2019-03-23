package com.google.android.a;

import android.annotation.TargetApi;
import android.media.MediaCodecInfo.CodecCapabilities;
import com.google.android.a.h.x;

@TargetApi(16)
public final class e {
    public final String a;
    public final CodecCapabilities b;
    public final boolean c;

    e(String str, CodecCapabilities codecCapabilities) {
        this.a = str;
        this.b = codecCapabilities;
        this.c = a(codecCapabilities);
    }

    private static boolean a(CodecCapabilities codecCapabilities) {
        return codecCapabilities != null && x.a >= 19 && b(codecCapabilities);
    }

    @TargetApi(19)
    private static boolean b(CodecCapabilities codecCapabilities) {
        return codecCapabilities.isFeatureSupported("adaptive-playback");
    }
}
