package org.apache.http.protocol;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.apache.http.HttpRequest;
import org.apache.http.HttpRequestInterceptor;
import org.apache.http.HttpResponse;
import org.apache.http.HttpResponseInterceptor;

public final class BasicHttpProcessor implements Cloneable, HttpProcessor, HttpRequestInterceptorList, HttpResponseInterceptorList {
    protected final List requestInterceptors = new ArrayList();
    protected final List responseInterceptors = new ArrayList();

    public final void addInterceptor(HttpRequestInterceptor httpRequestInterceptor) {
        addRequestInterceptor(httpRequestInterceptor);
    }

    public final void addInterceptor(HttpRequestInterceptor httpRequestInterceptor, int i) {
        addRequestInterceptor(httpRequestInterceptor, i);
    }

    public final void addInterceptor(HttpResponseInterceptor httpResponseInterceptor) {
        addResponseInterceptor(httpResponseInterceptor);
    }

    public final void addInterceptor(HttpResponseInterceptor httpResponseInterceptor, int i) {
        addResponseInterceptor(httpResponseInterceptor, i);
    }

    public void addRequestInterceptor(HttpRequestInterceptor httpRequestInterceptor) {
        if (httpRequestInterceptor != null) {
            this.requestInterceptors.add(httpRequestInterceptor);
        }
    }

    public void addRequestInterceptor(HttpRequestInterceptor httpRequestInterceptor, int i) {
        if (httpRequestInterceptor != null) {
            this.requestInterceptors.add(i, httpRequestInterceptor);
        }
    }

    public void addResponseInterceptor(HttpResponseInterceptor httpResponseInterceptor) {
        if (httpResponseInterceptor != null) {
            this.responseInterceptors.add(httpResponseInterceptor);
        }
    }

    public void addResponseInterceptor(HttpResponseInterceptor httpResponseInterceptor, int i) {
        if (httpResponseInterceptor != null) {
            this.responseInterceptors.add(i, httpResponseInterceptor);
        }
    }

    public void clearInterceptors() {
        clearRequestInterceptors();
        clearResponseInterceptors();
    }

    public void clearRequestInterceptors() {
        this.requestInterceptors.clear();
    }

    public void clearResponseInterceptors() {
        this.responseInterceptors.clear();
    }

    public Object clone() {
        BasicHttpProcessor basicHttpProcessor = (BasicHttpProcessor) super.clone();
        copyInterceptors(basicHttpProcessor);
        return basicHttpProcessor;
    }

    public BasicHttpProcessor copy() {
        BasicHttpProcessor basicHttpProcessor = new BasicHttpProcessor();
        copyInterceptors(basicHttpProcessor);
        return basicHttpProcessor;
    }

    /* Access modifiers changed, original: protected */
    public void copyInterceptors(BasicHttpProcessor basicHttpProcessor) {
        basicHttpProcessor.requestInterceptors.clear();
        basicHttpProcessor.requestInterceptors.addAll(this.requestInterceptors);
        basicHttpProcessor.responseInterceptors.clear();
        basicHttpProcessor.responseInterceptors.addAll(this.responseInterceptors);
    }

    public HttpRequestInterceptor getRequestInterceptor(int i) {
        return (i < 0 || i >= this.requestInterceptors.size()) ? null : (HttpRequestInterceptor) this.requestInterceptors.get(i);
    }

    public int getRequestInterceptorCount() {
        return this.requestInterceptors.size();
    }

    public HttpResponseInterceptor getResponseInterceptor(int i) {
        return (i < 0 || i >= this.responseInterceptors.size()) ? null : (HttpResponseInterceptor) this.responseInterceptors.get(i);
    }

    public int getResponseInterceptorCount() {
        return this.responseInterceptors.size();
    }

    public void process(HttpRequest httpRequest, HttpContext httpContext) {
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 < this.requestInterceptors.size()) {
                ((HttpRequestInterceptor) this.requestInterceptors.get(i2)).process(httpRequest, httpContext);
                i = i2 + 1;
            } else {
                return;
            }
        }
    }

    public void process(HttpResponse httpResponse, HttpContext httpContext) {
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 < this.responseInterceptors.size()) {
                ((HttpResponseInterceptor) this.responseInterceptors.get(i2)).process(httpResponse, httpContext);
                i = i2 + 1;
            } else {
                return;
            }
        }
    }

    public void removeRequestInterceptorByClass(Class cls) {
        Iterator it = this.requestInterceptors.iterator();
        while (it.hasNext()) {
            if (it.next().getClass().equals(cls)) {
                it.remove();
            }
        }
    }

    public void removeResponseInterceptorByClass(Class cls) {
        Iterator it = this.responseInterceptors.iterator();
        while (it.hasNext()) {
            if (it.next().getClass().equals(cls)) {
                it.remove();
            }
        }
    }

    public void setInterceptors(List list) {
        if (list == null) {
            throw new IllegalArgumentException("List must not be null.");
        }
        this.requestInterceptors.clear();
        this.responseInterceptors.clear();
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 < list.size()) {
                Object obj = list.get(i2);
                if (obj instanceof HttpRequestInterceptor) {
                    addInterceptor((HttpRequestInterceptor) obj);
                }
                if (obj instanceof HttpResponseInterceptor) {
                    addInterceptor((HttpResponseInterceptor) obj);
                }
                i = i2 + 1;
            } else {
                return;
            }
        }
    }
}
