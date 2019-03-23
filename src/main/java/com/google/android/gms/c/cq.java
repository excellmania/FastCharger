package com.google.android.gms.c;

import java.nio.ByteBuffer;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

public class cq {
    private static Cipher b = null;
    private static final Object c = new Object();
    private static final Object d = new Object();
    private final SecureRandom a;

    public class a extends Exception {
        public a(Throwable th) {
            super(th);
        }
    }

    public cq(SecureRandom secureRandom) {
        this.a = secureRandom;
    }

    private Cipher a() {
        Cipher cipher;
        synchronized (d) {
            if (b == null) {
                b = Cipher.getInstance("AES/CBC/PKCS5Padding");
            }
            cipher = b;
        }
        return cipher;
    }

    static void a(byte[] bArr) {
        for (int i = 0; i < bArr.length; i++) {
            bArr[i] = (byte) (bArr[i] ^ 68);
        }
    }

    public String a(byte[] bArr, byte[] bArr2) {
        if (bArr.length != 16) {
            throw new a();
        }
        try {
            byte[] doFinal;
            byte[] iv;
            SecretKeySpec secretKeySpec = new SecretKeySpec(bArr, "AES");
            synchronized (c) {
                a().init(1, secretKeySpec, this.a);
                doFinal = a().doFinal(bArr2);
                iv = a().getIV();
            }
            int length = doFinal.length + iv.length;
            ByteBuffer allocate = ByteBuffer.allocate(length);
            allocate.put(iv).put(doFinal);
            allocate.flip();
            doFinal = new byte[length];
            allocate.get(doFinal);
            return ay.a(doFinal, false);
        } catch (NoSuchAlgorithmException e) {
            throw new a(e);
        } catch (InvalidKeyException e2) {
            throw new a(e2);
        } catch (IllegalBlockSizeException e3) {
            throw new a(e3);
        } catch (NoSuchPaddingException e4) {
            throw new a(e4);
        } catch (BadPaddingException e5) {
            throw new a(e5);
        }
    }

    public byte[] a(String str) {
        try {
            byte[] a = ay.a(str, false);
            if (a.length != 32) {
                throw new a();
            }
            byte[] bArr = new byte[16];
            ByteBuffer.wrap(a, 4, 16).get(bArr);
            a(bArr);
            return bArr;
        } catch (IllegalArgumentException e) {
            throw new a(e);
        }
    }

    public byte[] a(byte[] bArr, String str) {
        if (bArr.length != 16) {
            throw new a();
        }
        try {
            byte[] a = ay.a(str, false);
            if (a.length <= 16) {
                throw new a();
            }
            ByteBuffer allocate = ByteBuffer.allocate(a.length);
            allocate.put(a);
            allocate.flip();
            byte[] bArr2 = new byte[16];
            a = new byte[(a.length - 16)];
            allocate.get(bArr2);
            allocate.get(a);
            SecretKeySpec secretKeySpec = new SecretKeySpec(bArr, "AES");
            synchronized (c) {
                a().init(2, secretKeySpec, new IvParameterSpec(bArr2));
                a = a().doFinal(a);
            }
            return a;
        } catch (NoSuchAlgorithmException e) {
            throw new a(e);
        } catch (InvalidKeyException e2) {
            throw new a(e2);
        } catch (IllegalBlockSizeException e3) {
            throw new a(e3);
        } catch (NoSuchPaddingException e4) {
            throw new a(e4);
        } catch (BadPaddingException e5) {
            throw new a(e5);
        } catch (InvalidAlgorithmParameterException e6) {
            throw new a(e6);
        } catch (IllegalArgumentException e7) {
            throw new a(e7);
        }
    }
}
