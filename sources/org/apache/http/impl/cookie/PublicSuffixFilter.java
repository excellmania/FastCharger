package org.apache.http.impl.cookie;

import java.util.Collection;
import java.util.HashSet;
import java.util.Set;
import org.apache.http.client.utils.Punycode;
import org.apache.http.cookie.Cookie;
import org.apache.http.cookie.CookieAttributeHandler;
import org.apache.http.cookie.CookieOrigin;
import org.apache.http.cookie.SetCookie;

public class PublicSuffixFilter implements CookieAttributeHandler {
    private Set<String> exceptions;
    private Set<String> suffixes;
    private final CookieAttributeHandler wrapped;

    public PublicSuffixFilter(CookieAttributeHandler cookieAttributeHandler) {
        this.wrapped = cookieAttributeHandler;
    }

    private boolean isForPublicSuffix(Cookie cookie) {
        String domain = cookie.getDomain();
        if (domain.startsWith(".")) {
            domain = domain.substring(1);
        }
        domain = Punycode.toUnicode(domain);
        if (this.exceptions != null && this.exceptions.contains(domain)) {
            return false;
        }
        if (this.suffixes == null) {
            return false;
        }
        while (!this.suffixes.contains(domain)) {
            if (domain.startsWith("*.")) {
                domain = domain.substring(2);
            }
            int indexOf = domain.indexOf(46);
            if (indexOf != -1) {
                domain = "*" + domain.substring(indexOf);
                if (domain.length() <= 0) {
                }
            }
            return false;
        }
        return true;
    }

    public boolean match(Cookie cookie, CookieOrigin cookieOrigin) {
        return isForPublicSuffix(cookie) ? false : this.wrapped.match(cookie, cookieOrigin);
    }

    public void parse(SetCookie setCookie, String str) {
        this.wrapped.parse(setCookie, str);
    }

    public void setExceptions(Collection<String> collection) {
        this.exceptions = new HashSet(collection);
    }

    public void setPublicSuffixes(Collection<String> collection) {
        this.suffixes = new HashSet(collection);
    }

    public void validate(Cookie cookie, CookieOrigin cookieOrigin) {
        this.wrapped.validate(cookie, cookieOrigin);
    }
}
