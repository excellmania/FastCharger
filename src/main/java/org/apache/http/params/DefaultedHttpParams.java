package org.apache.http.params;

public final class DefaultedHttpParams extends AbstractHttpParams {
    private final HttpParams defaults;
    private final HttpParams local;

    public DefaultedHttpParams(HttpParams httpParams, HttpParams httpParams2) {
        if (httpParams == null) {
            throw new IllegalArgumentException("HTTP parameters may not be null");
        }
        this.local = httpParams;
        this.defaults = httpParams2;
    }

    public HttpParams copy() {
        return new DefaultedHttpParams(this.local.copy(), this.defaults);
    }

    public HttpParams getDefaults() {
        return this.defaults;
    }

    public Object getParameter(String str) {
        Object parameter = this.local.getParameter(str);
        return (parameter != null || this.defaults == null) ? parameter : this.defaults.getParameter(str);
    }

    public boolean removeParameter(String str) {
        return this.local.removeParameter(str);
    }

    public HttpParams setParameter(String str, Object obj) {
        return this.local.setParameter(str, obj);
    }
}
