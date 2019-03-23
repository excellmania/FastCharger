package com.google.ads.mediation;

import com.google.android.gms.c.sz;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.lang.reflect.Field;
import java.util.HashMap;
import java.util.Map;
import java.util.Map.Entry;

@Deprecated
public abstract class h {

    public static final class a extends Exception {
        public a(String str) {
            super(str);
        }
    }

    @Target({ElementType.FIELD})
    @Retention(RetentionPolicy.RUNTIME)
    protected @interface b {
        String a();

        boolean b() default true;
    }

    public void a(Map<String, String> map) {
        Field field;
        String str;
        String str2;
        HashMap hashMap = new HashMap();
        for (Field field2 : getClass().getFields()) {
            b bVar = (b) field2.getAnnotation(b.class);
            if (bVar != null) {
                hashMap.put(bVar.a(), field2);
            }
        }
        if (hashMap.isEmpty()) {
            sz.e("No server options fields detected. To suppress this message either add a field with the @Parameter annotation, or override the load() method.");
        }
        for (Entry entry : map.entrySet()) {
            field = (Field) hashMap.remove(entry.getKey());
            if (field != null) {
                try {
                    field.set(this, entry.getValue());
                } catch (IllegalAccessException e) {
                    str = (String) entry.getKey();
                    sz.e(new StringBuilder(String.valueOf(str).length() + 49).append("Server option \"").append(str).append("\" could not be set: Illegal Access").toString());
                } catch (IllegalArgumentException e2) {
                    str = (String) entry.getKey();
                    sz.e(new StringBuilder(String.valueOf(str).length() + 43).append("Server option \"").append(str).append("\" could not be set: Bad Type").toString());
                }
            } else {
                str = (String) entry.getKey();
                str2 = (String) entry.getValue();
                sz.b(new StringBuilder((String.valueOf(str).length() + 31) + String.valueOf(str2).length()).append("Unexpected server option: ").append(str).append(" = \"").append(str2).append("\"").toString());
            }
        }
        StringBuilder stringBuilder = new StringBuilder();
        for (Field field3 : hashMap.values()) {
            if (((b) field3.getAnnotation(b.class)).b()) {
                String str3 = "Required server option missing: ";
                str2 = String.valueOf(((b) field3.getAnnotation(b.class)).a());
                sz.e(str2.length() != 0 ? str3.concat(str2) : new String(str3));
                if (stringBuilder.length() > 0) {
                    stringBuilder.append(", ");
                }
                stringBuilder.append(((b) field3.getAnnotation(b.class)).a());
            }
        }
        if (stringBuilder.length() > 0) {
            String str4 = "Required server option(s) missing: ";
            str = String.valueOf(stringBuilder.toString());
            throw new a(str.length() != 0 ? str4.concat(str) : new String(str4));
        }
    }
}
