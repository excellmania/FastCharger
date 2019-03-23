package com.google.android.gms.c;

import android.support.annotation.Nullable;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

@pa
public abstract class ga {
    @Nullable
    private static MessageDigest b = null;
    protected Object a = new Object();

    /* Access modifiers changed, original: protected */
    @Nullable
    public MessageDigest a() {
        MessageDigest messageDigest;
        synchronized (this.a) {
            if (b != null) {
                messageDigest = b;
            } else {
                for (int i = 0; i < 2; i++) {
                    try {
                        b = MessageDigest.getInstance("MD5");
                    } catch (NoSuchAlgorithmException e) {
                    }
                }
                messageDigest = b;
            }
        }
        return messageDigest;
    }

    public abstract byte[] a(String str);
}
