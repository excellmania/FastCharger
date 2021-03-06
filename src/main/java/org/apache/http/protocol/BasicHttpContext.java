package org.apache.http.protocol;

import java.util.HashMap;
import java.util.Map;

public class BasicHttpContext implements HttpContext {
    private Map map;
    private final HttpContext parentContext;

    public BasicHttpContext() {
        this(null);
    }

    public BasicHttpContext(HttpContext httpContext) {
        this.map = null;
        this.parentContext = httpContext;
    }

    public Object getAttribute(String str) {
        if (str == null) {
            throw new IllegalArgumentException("Id may not be null");
        }
        Object obj = null;
        if (this.map != null) {
            obj = this.map.get(str);
        }
        return (obj != null || this.parentContext == null) ? obj : this.parentContext.getAttribute(str);
    }

    public Object removeAttribute(String str) {
        if (str != null) {
            return this.map != null ? this.map.remove(str) : null;
        } else {
            throw new IllegalArgumentException("Id may not be null");
        }
    }

    public void setAttribute(String str, Object obj) {
        if (str == null) {
            throw new IllegalArgumentException("Id may not be null");
        }
        if (this.map == null) {
            this.map = new HashMap();
        }
        this.map.put(str, obj);
    }
}
