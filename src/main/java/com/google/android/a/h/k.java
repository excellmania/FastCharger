package com.google.android.a.h;

public final class k {
    public static boolean a(String str) {
        return f(str).equals("audio");
    }

    public static boolean b(String str) {
        return f(str).equals("video");
    }

    public static boolean c(String str) {
        return f(str).equals("text");
    }

    public static String d(String str) {
        if (str == null) {
            return "video/x-unknown";
        }
        for (String trim : str.split(",")) {
            String trim2 = trim2.trim();
            if (trim2.startsWith("avc1") || trim2.startsWith("avc3")) {
                return "video/avc";
            }
            if (trim2.startsWith("hev1") || trim2.startsWith("hvc1")) {
                return "video/hevc";
            }
            if (trim2.startsWith("vp9")) {
                return "video/x-vnd.on2.vp9";
            }
            if (trim2.startsWith("vp8")) {
                return "video/x-vnd.on2.vp8";
            }
        }
        return "video/x-unknown";
    }

    public static String e(String str) {
        if (str == null) {
            return "audio/x-unknown";
        }
        for (String trim : str.split(",")) {
            String trim2 = trim2.trim();
            if (trim2.startsWith("mp4a")) {
                return "audio/mp4a-latm";
            }
            if (trim2.startsWith("ac-3") || trim2.startsWith("dac3")) {
                return "audio/ac3";
            }
            if (trim2.startsWith("ec-3") || trim2.startsWith("dec3")) {
                return "audio/eac3";
            }
            if (trim2.startsWith("dtsc")) {
                return "audio/vnd.dts";
            }
            if (trim2.startsWith("dtsh") || trim2.startsWith("dtsl")) {
                return "audio/vnd.dts.hd";
            }
            if (trim2.startsWith("dtse")) {
                return "audio/vnd.dts.hd;profile=lbr";
            }
            if (trim2.startsWith("opus")) {
                return "audio/opus";
            }
            if (trim2.startsWith("vorbis")) {
                return "audio/vorbis";
            }
        }
        return "audio/x-unknown";
    }

    private static String f(String str) {
        int indexOf = str.indexOf(47);
        if (indexOf != -1) {
            return str.substring(0, indexOf);
        }
        throw new IllegalArgumentException("Invalid mime type: " + str);
    }
}
