package org.apache.http.conn.ssl;

import java.security.cert.X509Certificate;

public class TrustSelfSignedStrategy implements TrustStrategy {
    public boolean isTrusted(X509Certificate[] x509CertificateArr, String str) {
        return x509CertificateArr.length == 1;
    }
}
