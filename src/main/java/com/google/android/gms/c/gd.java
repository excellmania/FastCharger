package com.google.android.gms.c;

import android.support.v4.internal.view.SupportMenu;
import android.support.v4.view.MotionEventCompat;
import android.support.v4.view.ViewCompat;
import java.security.MessageDigest;

@pa
public class gd extends ga {
    private MessageDigest b;

    /* Access modifiers changed, original: 0000 */
    public byte a(int i) {
        return (byte) ((((i & 255) ^ ((MotionEventCompat.ACTION_POINTER_INDEX_MASK & i) >> 8)) ^ ((16711680 & i) >> 16)) ^ ((ViewCompat.MEASURED_STATE_MASK & i) >> 24));
    }

    public byte[] a(String str) {
        byte[] bArr;
        int i = 4;
        byte[] a = a(str.split(" "));
        this.b = a();
        synchronized (this.a) {
            if (this.b == null) {
                bArr = new byte[0];
            } else {
                this.b.reset();
                this.b.update(a);
                a = this.b.digest();
                if (a.length <= 4) {
                    i = a.length;
                }
                bArr = new byte[i];
                System.arraycopy(a, 0, bArr, 0, bArr.length);
            }
        }
        return bArr;
    }

    /* Access modifiers changed, original: 0000 */
    public byte[] a(String[] strArr) {
        int i = 0;
        if (strArr.length == 1) {
            return gc.b(gc.a(strArr[0]));
        }
        if (strArr.length < 5) {
            byte[] bArr = new byte[(strArr.length * 2)];
            for (int i2 = 0; i2 < strArr.length; i2++) {
                byte[] b = b(gc.a(strArr[i2]));
                bArr[i2 * 2] = b[0];
                bArr[(i2 * 2) + 1] = b[1];
            }
            return bArr;
        }
        byte[] bArr2 = new byte[strArr.length];
        while (i < strArr.length) {
            bArr2[i] = a(gc.a(strArr[i]));
            i++;
        }
        return bArr2;
    }

    /* Access modifiers changed, original: 0000 */
    public byte[] b(int i) {
        int i2 = (SupportMenu.USER_MASK & i) ^ ((SupportMenu.CATEGORY_MASK & i) >> 16);
        return new byte[]{(byte) i2, (byte) (i2 >> 8)};
    }
}
