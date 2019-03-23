package org.apache.http.impl.cookie;

import java.util.Collection;
import java.util.HashMap;
import java.util.Map;
import org.apache.http.annotation.NotThreadSafe;
import org.apache.http.cookie.CookieAttributeHandler;
import org.apache.http.cookie.CookieSpec;

@NotThreadSafe
public abstract class AbstractCookieSpec implements CookieSpec {
    private final Map<String, CookieAttributeHandler> attribHandlerMap = new HashMap(10);

    /* Access modifiers changed, original: protected */
    public CookieAttributeHandler findAttribHandler(String str) {
        return (CookieAttributeHandler) this.attribHandlerMap.get(str);
    }

    /* Access modifiers changed, original: protected */
    public CookieAttributeHandler getAttribHandler(String str) {
        CookieAttributeHandler findAttribHandler = findAttribHandler(str);
        if (findAttribHandler != null) {
            return findAttribHandler;
        }
        throw new IllegalStateException("Handler not registered for " + str + " attribute.");
    }

    /* Access modifiers changed, original: protected */
    public Collection<CookieAttributeHandler> getAttribHandlers() {
        return this.attribHandlerMap.values();
    }

    public void registerAttribHandler(String str, CookieAttributeHandler cookieAttributeHandler) {
        if (str == null) {
            throw new IllegalArgumentException("Attribute name may not be null");
        } else if (cookieAttributeHandler == null) {
            throw new IllegalArgumentException("Attribute handler may not be null");
        } else {
            this.attribHandlerMap.put(str, cookieAttributeHandler);
        }
    }
}
