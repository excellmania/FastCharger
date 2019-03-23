package com.google.android.a;

import android.annotation.TargetApi;
import android.media.MediaCodecInfo;
import android.media.MediaCodecInfo.CodecCapabilities;
import android.media.MediaCodecInfo.CodecProfileLevel;
import android.media.MediaCodecInfo.VideoCapabilities;
import android.media.MediaCodecList;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.a.h.x;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@TargetApi(16)
public final class p {
    private static final Map<a, List<e>> a = new HashMap();
    private static int b = -1;

    private static final class a {
        public final String a;
        public final boolean b;

        public a(String str, boolean z) {
            this.a = str;
            this.b = z;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || obj.getClass() != a.class) {
                return false;
            }
            a aVar = (a) obj;
            return TextUtils.equals(this.a, aVar.a) && this.b == aVar.b;
        }

        public int hashCode() {
            return (this.b ? 1231 : 1237) + (((this.a == null ? 0 : this.a.hashCode()) + 31) * 31);
        }
    }

    public static class b extends IOException {
        private b(Throwable th) {
            super("Failed to query underlying media codecs", th);
        }
    }

    private interface c {
        int a();

        MediaCodecInfo a(int i);

        boolean a(String str, CodecCapabilities codecCapabilities);

        boolean b();
    }

    private static final class d implements c {
        private d() {
        }

        public int a() {
            return MediaCodecList.getCodecCount();
        }

        public MediaCodecInfo a(int i) {
            return MediaCodecList.getCodecInfoAt(i);
        }

        public boolean a(String str, CodecCapabilities codecCapabilities) {
            return "video/avc".equals(str);
        }

        public boolean b() {
            return false;
        }
    }

    @TargetApi(21)
    private static final class e implements c {
        private final int a;
        private MediaCodecInfo[] b;

        public e(boolean z) {
            this.a = z ? 1 : 0;
        }

        private void c() {
            if (this.b == null) {
                this.b = new MediaCodecList(this.a).getCodecInfos();
            }
        }

        public int a() {
            c();
            return this.b.length;
        }

        public MediaCodecInfo a(int i) {
            c();
            return this.b[i];
        }

        public boolean a(String str, CodecCapabilities codecCapabilities) {
            return codecCapabilities.isFeatureSupported("secure-playback");
        }

        public boolean b() {
            return true;
        }
    }

    public static int a() {
        int i = 0;
        if (b == -1) {
            e a = a("video/avc", false);
            if (a != null) {
                CodecProfileLevel[] codecProfileLevelArr = a.b.profileLevels;
                int length = codecProfileLevelArr.length;
                int i2 = 0;
                while (i2 < length) {
                    int max = Math.max(a(codecProfileLevelArr[i2].level), i);
                    i2++;
                    i = max;
                }
            }
            b = i;
        }
        return b;
    }

    private static int a(int i) {
        switch (i) {
            case 1:
            case 2:
                return 25344;
            case 8:
                return 101376;
            case 16:
                return 101376;
            case 32:
                return 101376;
            case 64:
                return 202752;
            case 128:
                return 414720;
            case 256:
                return 414720;
            case 512:
                return 921600;
            case 1024:
                return 1310720;
            case 2048:
                return 2097152;
            case 4096:
                return 2097152;
            case 8192:
                return 2228224;
            case 16384:
                return 5652480;
            case 32768:
                return 9437184;
            default:
                return -1;
        }
    }

    public static e a(String str, boolean z) {
        List b = b(str, z);
        return b.isEmpty() ? null : (e) b.get(0);
    }

    private static List<e> a(a aVar, c cVar) {
        try {
            ArrayList arrayList = new ArrayList();
            String str = aVar.a;
            int a = cVar.a();
            boolean b = cVar.b();
            loop0:
            for (int i = 0; i < a; i++) {
                MediaCodecInfo a2 = cVar.a(i);
                String name = a2.getName();
                if (a(a2, name, b)) {
                    for (String str2 : a2.getSupportedTypes()) {
                        if (str2.equalsIgnoreCase(str)) {
                            CodecCapabilities capabilitiesForType = a2.getCapabilitiesForType(str2);
                            boolean a3 = cVar.a(str, capabilitiesForType);
                            if ((!b || aVar.b != a3) && (b || aVar.b)) {
                                if (!b && a3) {
                                    arrayList.add(new e(name + ".secure", capabilitiesForType));
                                    break loop0;
                                }
                            }
                            arrayList.add(new e(name, capabilitiesForType));
                        }
                    }
                    continue;
                }
            }
            return arrayList;
        } catch (Exception e) {
            throw new b(e);
        }
    }

    private static boolean a(MediaCodecInfo mediaCodecInfo, String str, boolean z) {
        return !mediaCodecInfo.isEncoder() ? (z || !str.endsWith(".secure")) ? ((x.a < 21 && "CIPAACDecoder".equals(str)) || "CIPMP3Decoder".equals(str) || "CIPVorbisDecoder".equals(str) || "AACDecoder".equals(str) || "MP3Decoder".equals(str)) ? false : (x.a >= 18 || !"OMX.SEC.MP3.Decoder".equals(str)) ? (x.a == 16 && "OMX.qcom.audio.decoder.mp3".equals(str) && ("dlxu".equals(x.b) || "protou".equals(x.b) || "C6602".equals(x.b) || "C6603".equals(x.b) || "C6606".equals(x.b) || "C6616".equals(x.b) || "L36h".equals(x.b) || "SO-02E".equals(x.b))) ? false : (x.a == 16 && "OMX.qcom.audio.decoder.aac".equals(str) && ("C1504".equals(x.b) || "C1505".equals(x.b) || "C1604".equals(x.b) || "C1605".equals(x.b))) ? false : x.a > 19 || x.b == null || !((x.b.startsWith("d2") || x.b.startsWith("serrano")) && "samsung".equals(x.c) && str.equals("OMX.SEC.vp8.dec")) : false : false : false;
    }

    @TargetApi(21)
    public static boolean a(String str, boolean z, int i, int i2) {
        com.google.android.a.h.b.b(x.a >= 21);
        VideoCapabilities c = c(str, z);
        return c != null && c.isSizeSupported(i, i2);
    }

    @TargetApi(21)
    public static boolean a(String str, boolean z, int i, int i2, double d) {
        com.google.android.a.h.b.b(x.a >= 21);
        VideoCapabilities c = c(str, z);
        return c != null && c.areSizeAndRateSupported(i, i2, d);
    }

    public static synchronized List<e> b(String str, boolean z) {
        List<e> list;
        synchronized (p.class) {
            a aVar = new a(str, z);
            list = (List) a.get(aVar);
            if (list == null) {
                List a = a(aVar, x.a >= 21 ? new e(z) : new d());
                if (z && a.isEmpty() && 21 <= x.a && x.a <= 23) {
                    List a2 = a(aVar, new d());
                    if (!a2.isEmpty()) {
                        Log.w("MediaCodecUtil", "MediaCodecList API didn't list secure decoder for: " + str + ". Assuming: " + ((e) a2.get(0)).a);
                    }
                    a = a2;
                }
                list = Collections.unmodifiableList(a);
                a.put(aVar, list);
            }
        }
        return list;
    }

    @TargetApi(21)
    private static VideoCapabilities c(String str, boolean z) {
        e a = a(str, z);
        return a == null ? null : a.b.getVideoCapabilities();
    }
}
