package com.google.android.gms.c;

import java.util.Map;

@pa
public final class km implements kr {
    private final kn a;

    public km(kn knVar) {
        this.a = knVar;
    }

    public void a(tr trVar, Map<String, String> map) {
        String str = (String) map.get("name");
        if (str == null) {
            sz.e("App event with no name parameter.");
        } else {
            this.a.a(str, (String) map.get("info"));
        }
    }
}
