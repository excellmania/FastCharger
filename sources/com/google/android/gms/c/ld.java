package com.google.android.gms.c;

import android.text.TextUtils;
import com.google.android.gms.ads.internal.v;
import java.util.Map;

@pa
class ld implements kr {
    ld() {
    }

    private int a(Map<String, String> map) {
        int parseInt = Integer.parseInt((String) map.get("playbackState"));
        return (parseInt < 0 || 3 < parseInt) ? 0 : parseInt;
    }

    public void a(tr trVar, Map<String, String> map) {
        if (((Boolean) is.bi.c()).booleanValue()) {
            tw twVar;
            tw z = trVar.z();
            if (z == null) {
                try {
                    z = new tw(trVar, Float.parseFloat((String) map.get("duration")));
                    trVar.a(z);
                    twVar = z;
                } catch (NullPointerException | NumberFormatException e) {
                    sz.b("Unable to parse videoMeta message.", e);
                    v.i().a(e, "VideoMetaGmsgHandler.onGmsg");
                    return;
                }
            }
            twVar = z;
            boolean equals = "1".equals(map.get("muted"));
            float parseFloat = Float.parseFloat((String) map.get("currentTime"));
            int a = a(map);
            String str = (String) map.get("aspectRatio");
            float parseFloat2 = TextUtils.isEmpty(str) ? 0.0f : Float.parseFloat(str);
            if (sz.a(3)) {
                sz.b(new StringBuilder(String.valueOf(str).length() + 79).append("Video Meta GMSG: isMuted : ").append(equals).append(" , playbackState : ").append(a).append(" , aspectRatio : ").append(str).toString());
            }
            twVar.a(parseFloat, a, equals, parseFloat2);
        }
    }
}
