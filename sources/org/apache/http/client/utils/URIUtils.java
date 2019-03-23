package org.apache.http.client.utils;

import java.net.URI;
import java.net.URISyntaxException;
import java.util.Iterator;
import java.util.Stack;
import org.apache.http.HttpHost;
import org.apache.http.annotation.Immutable;

@Immutable
public class URIUtils {
    private URIUtils() {
    }

    public static URI createURI(String str, String str2, int i, String str3, String str4, String str5) {
        StringBuilder stringBuilder = new StringBuilder();
        if (str2 != null) {
            if (str != null) {
                stringBuilder.append(str);
                stringBuilder.append("://");
            }
            stringBuilder.append(str2);
            if (i > 0) {
                stringBuilder.append(':');
                stringBuilder.append(i);
            }
        }
        if (str3 == null || !str3.startsWith("/")) {
            stringBuilder.append('/');
        }
        if (str3 != null) {
            stringBuilder.append(str3);
        }
        if (str4 != null) {
            stringBuilder.append('?');
            stringBuilder.append(str4);
        }
        if (str5 != null) {
            stringBuilder.append('#');
            stringBuilder.append(str5);
        }
        return new URI(stringBuilder.toString());
    }

    /* JADX WARNING: Removed duplicated region for block: B:22:0x005a  */
    public static org.apache.http.HttpHost extractHost(java.net.URI r7) {
        /*
        r2 = 0;
        if (r7 != 0) goto L_0x0004;
    L_0x0003:
        return r2;
    L_0x0004:
        r0 = r7.isAbsolute();
        if (r0 == 0) goto L_0x0064;
    L_0x000a:
        r0 = r7.getPort();
        r1 = r7.getHost();
        if (r1 != 0) goto L_0x0066;
    L_0x0014:
        r1 = r7.getAuthority();
        if (r1 == 0) goto L_0x0066;
    L_0x001a:
        r3 = 64;
        r3 = r1.indexOf(r3);
        if (r3 < 0) goto L_0x0030;
    L_0x0022:
        r4 = r1.length();
        r5 = r3 + 1;
        if (r4 <= r5) goto L_0x0062;
    L_0x002a:
        r3 = r3 + 1;
        r1 = r1.substring(r3);
    L_0x0030:
        if (r1 == 0) goto L_0x0066;
    L_0x0032:
        r3 = 58;
        r3 = r1.indexOf(r3);
        if (r3 < 0) goto L_0x0066;
    L_0x003a:
        r4 = r3 + 1;
        r5 = r1.length();
        if (r4 >= r5) goto L_0x004c;
    L_0x0042:
        r0 = r3 + 1;
        r0 = r1.substring(r0);
        r0 = java.lang.Integer.parseInt(r0);
    L_0x004c:
        r4 = 0;
        r1 = r1.substring(r4, r3);
        r6 = r1;
        r1 = r0;
        r0 = r6;
    L_0x0054:
        r3 = r7.getScheme();
        if (r0 == 0) goto L_0x0064;
    L_0x005a:
        r2 = new org.apache.http.HttpHost;
        r2.<init>(r0, r1, r3);
        r0 = r2;
    L_0x0060:
        r2 = r0;
        goto L_0x0003;
    L_0x0062:
        r1 = r2;
        goto L_0x0030;
    L_0x0064:
        r0 = r2;
        goto L_0x0060;
    L_0x0066:
        r6 = r1;
        r1 = r0;
        r0 = r6;
        goto L_0x0054;
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.http.client.utils.URIUtils.extractHost(java.net.URI):org.apache.http.HttpHost");
    }

    private static String normalizePath(String str) {
        if (str == null) {
            return null;
        }
        int i = 0;
        while (i < str.length() && str.charAt(i) == '/') {
            i++;
        }
        return i > 1 ? str.substring(i - 1) : str;
    }

    private static URI removeDotSegments(URI uri) {
        String path = uri.getPath();
        if (path == null || path.indexOf("/.") == -1) {
            return uri;
        }
        String[] split = path.split("/");
        Stack stack = new Stack();
        int i = 0;
        while (i < split.length) {
            if (!(split[i].length() == 0 || ".".equals(split[i]))) {
                if (!"..".equals(split[i])) {
                    stack.push(split[i]);
                } else if (!stack.isEmpty()) {
                    stack.pop();
                }
            }
            i++;
        }
        StringBuilder stringBuilder = new StringBuilder();
        Iterator it = stack.iterator();
        while (it.hasNext()) {
            stringBuilder.append('/').append((String) it.next());
        }
        try {
            return new URI(uri.getScheme(), uri.getAuthority(), stringBuilder.toString(), uri.getQuery(), uri.getFragment());
        } catch (URISyntaxException e) {
            throw new IllegalArgumentException(e);
        }
    }

    public static URI resolve(URI uri, String str) {
        return resolve(uri, URI.create(str));
    }

    public static URI resolve(URI uri, URI uri2) {
        if (uri == null) {
            throw new IllegalArgumentException("Base URI may nor be null");
        } else if (uri2 == null) {
            throw new IllegalArgumentException("Reference URI may nor be null");
        } else {
            String uri3 = uri2.toString();
            if (uri3.startsWith("?")) {
                return resolveReferenceStartingWithQueryString(uri, uri2);
            }
            int i = uri3.length() == 0 ? 1 : 0;
            if (i != 0) {
                uri2 = URI.create("#");
            }
            URI resolve = uri.resolve(uri2);
            if (i != 0) {
                uri3 = resolve.toString();
                resolve = URI.create(uri3.substring(0, uri3.indexOf(35)));
            }
            return removeDotSegments(resolve);
        }
    }

    private static URI resolveReferenceStartingWithQueryString(URI uri, URI uri2) {
        String uri3 = uri.toString();
        if (uri3.indexOf(63) > -1) {
            uri3 = uri3.substring(0, uri3.indexOf(63));
        }
        return URI.create(uri3 + uri2.toString());
    }

    public static URI rewriteURI(URI uri, HttpHost httpHost) {
        return rewriteURI(uri, httpHost, false);
    }

    public static URI rewriteURI(URI uri, HttpHost httpHost, boolean z) {
        if (uri == null) {
            throw new IllegalArgumentException("URI may nor be null");
        } else if (httpHost != null) {
            return createURI(httpHost.getSchemeName(), httpHost.getHostName(), httpHost.getPort(), normalizePath(uri.getRawPath()), uri.getRawQuery(), z ? null : uri.getRawFragment());
        } else {
            return createURI(null, null, -1, normalizePath(uri.getRawPath()), uri.getRawQuery(), z ? null : uri.getRawFragment());
        }
    }
}
