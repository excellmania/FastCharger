package org.apache.http.protocol;

import java.util.HashMap;
import java.util.Map;

public class UriPatternMatcher {
    private final Map map = new HashMap();

    public synchronized Object lookup(String str) {
        Object obj;
        if (str == null) {
            throw new IllegalArgumentException("Request URI may not be null");
        }
        Object str2;
        int indexOf = str2.indexOf("?");
        if (indexOf != -1) {
            str2 = str2.substring(0, indexOf);
        }
        obj = this.map.get(str2);
        if (obj == null) {
            String str3 = null;
            for (String str4 : this.map.keySet()) {
                String str42;
                Object obj2;
                if (matchUriRequestPattern(str42, str2) && (str3 == null || str3.length() < str42.length() || (str3.length() == str42.length() && str42.endsWith("*")))) {
                    obj2 = this.map.get(str42);
                } else {
                    str42 = str3;
                    obj2 = obj;
                }
                obj = obj2;
                str3 = str42;
            }
        }
        return obj;
    }

    /* Access modifiers changed, original: protected */
    public boolean matchUriRequestPattern(String str, String str2) {
        boolean z = false;
        if (str.equals("*")) {
            return true;
        }
        if ((str.endsWith("*") && str2.startsWith(str.substring(0, str.length() - 1))) || (str.startsWith("*") && str2.endsWith(str.substring(1, str.length())))) {
            z = true;
        }
        return z;
    }

    public synchronized void register(String str, Object obj) {
        if (str == null) {
            throw new IllegalArgumentException("URI request pattern may not be null");
        }
        this.map.put(str, obj);
    }

    public synchronized void setHandlers(Map map) {
        if (map == null) {
            throw new IllegalArgumentException("Map of handlers may not be null");
        }
        this.map.clear();
        this.map.putAll(map);
    }

    public synchronized void setObjects(Map map) {
        if (map == null) {
            throw new IllegalArgumentException("Map of handlers may not be null");
        }
        this.map.clear();
        this.map.putAll(map);
    }

    public synchronized void unregister(String str) {
        if (str != null) {
            this.map.remove(str);
        }
    }
}
