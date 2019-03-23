package com.google.android.a.e;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

public final class i {
    private static final Pattern c = Pattern.compile("^ [0-9a-fA-F]{8} ([0-9a-fA-F]{8}) ([0-9a-fA-F]{8})");
    public final int a;
    public final int b;

    private i(int i, int i2) {
        this.a = i;
        this.b = i2;
    }

    public static i a(int i) {
        int i2 = i >> 12;
        int i3 = i & 4095;
        return (i2 == 0 && i3 == 0) ? null : new i(i2, i3);
    }

    public static i a(String str, String str2) {
        if (!"iTunSMPB".equals(str)) {
            return null;
        }
        Matcher matcher = c.matcher(str2);
        if (!matcher.find()) {
            return null;
        }
        try {
            int parseInt = Integer.parseInt(matcher.group(1), 16);
            int parseInt2 = Integer.parseInt(matcher.group(2), 16);
            return (parseInt == 0 && parseInt2 == 0) ? null : new i(parseInt, parseInt2);
        } catch (NumberFormatException e) {
            return null;
        }
    }
}
