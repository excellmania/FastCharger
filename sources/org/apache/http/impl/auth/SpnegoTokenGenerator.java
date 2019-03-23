package org.apache.http.impl.auth;

public interface SpnegoTokenGenerator {
    byte[] generateSpnegoDERObject(byte[] bArr);
}
