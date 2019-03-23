package com.google.android.gms.iid;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.util.Base64;
import android.util.Log;
import com.google.android.gms.common.util.l;
import java.io.File;
import java.io.IOException;
import java.security.KeyFactory;
import java.security.KeyPair;
import java.security.NoSuchAlgorithmException;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.PKCS8EncodedKeySpec;
import java.security.spec.X509EncodedKeySpec;

public class f {
    SharedPreferences a;
    Context b;

    public f(Context context) {
        this(context, "com.google.android.gms.appid");
    }

    public f(Context context, String str) {
        this.b = context;
        this.a = context.getSharedPreferences(str, 4);
        String valueOf = String.valueOf(str);
        String valueOf2 = String.valueOf("-no-backup");
        g(valueOf2.length() != 0 ? valueOf.concat(valueOf2) : new String(valueOf));
    }

    private String b(String str, String str2, String str3) {
        String valueOf = String.valueOf("|T|");
        return new StringBuilder((((String.valueOf(str).length() + 1) + String.valueOf(valueOf).length()) + String.valueOf(str2).length()) + String.valueOf(str3).length()).append(str).append(valueOf).append(str2).append("|").append(str3).toString();
    }

    private void g(String str) {
        File file = new File(l.a(this.b), str);
        if (!file.exists()) {
            try {
                if (file.createNewFile() && !a()) {
                    Log.i("InstanceID/Store", "App restored, clearing state");
                    b.a(this.b, this);
                }
            } catch (IOException e) {
                if (Log.isLoggable("InstanceID/Store", 3)) {
                    String str2 = "InstanceID/Store";
                    String str3 = "Error creating file in no backup dir: ";
                    String valueOf = String.valueOf(e.getMessage());
                    Log.d(str2, valueOf.length() != 0 ? str3.concat(valueOf) : new String(str3));
                }
            }
        }
    }

    /* Access modifiers changed, original: declared_synchronized */
    public synchronized String a(String str) {
        return this.a.getString(str, null);
    }

    /* Access modifiers changed, original: declared_synchronized */
    public synchronized String a(String str, String str2) {
        SharedPreferences sharedPreferences;
        String valueOf;
        sharedPreferences = this.a;
        valueOf = String.valueOf("|S|");
        return sharedPreferences.getString(new StringBuilder(((String.valueOf(str).length() + 0) + String.valueOf(valueOf).length()) + String.valueOf(str2).length()).append(str).append(valueOf).append(str2).toString(), null);
    }

    public synchronized String a(String str, String str2, String str3) {
        return this.a.getString(b(str, str2, str3), null);
    }

    /* Access modifiers changed, original: declared_synchronized */
    public synchronized KeyPair a(String str, long j) {
        KeyPair a;
        a = c.a();
        Editor edit = this.a.edit();
        a(edit, str, "|P|", a.a(a.getPublic().getEncoded()));
        a(edit, str, "|K|", a.a(a.getPrivate().getEncoded()));
        a(edit, str, "cre", Long.toString(j));
        edit.commit();
        return a;
    }

    /* Access modifiers changed, original: declared_synchronized */
    public synchronized void a(Editor editor, String str, String str2, String str3) {
        String valueOf = String.valueOf("|S|");
        editor.putString(new StringBuilder(((String.valueOf(str).length() + 0) + String.valueOf(valueOf).length()) + String.valueOf(str2).length()).append(str).append(valueOf).append(str2).toString(), str3);
    }

    public synchronized void a(String str, String str2, String str3, String str4, String str5) {
        String b = b(str, str2, str3);
        Editor edit = this.a.edit();
        edit.putString(b, str4);
        edit.putString("appVersion", str5);
        edit.putString("lastToken", Long.toString(System.currentTimeMillis() / 1000));
        edit.commit();
    }

    public boolean a() {
        return this.a.getAll().isEmpty();
    }

    public synchronized void b() {
        this.a.edit().clear().commit();
    }

    public synchronized void b(String str) {
        Editor edit = this.a.edit();
        for (String str2 : this.a.getAll().keySet()) {
            if (str2.startsWith(str)) {
                edit.remove(str2);
            }
        }
        edit.commit();
    }

    public KeyPair c(String str) {
        return f(str);
    }

    /* Access modifiers changed, original: 0000 */
    public void d(String str) {
        b(String.valueOf(str).concat("|"));
    }

    public void e(String str) {
        b(String.valueOf(str).concat("|T|"));
    }

    /* Access modifiers changed, original: 0000 */
    public KeyPair f(String str) {
        String a = a(str, "|P|");
        String a2 = a(str, "|K|");
        if (a == null || a2 == null) {
            return null;
        }
        try {
            byte[] decode = Base64.decode(a, 8);
            byte[] decode2 = Base64.decode(a2, 8);
            KeyFactory instance = KeyFactory.getInstance("RSA");
            return new KeyPair(instance.generatePublic(new X509EncodedKeySpec(decode)), instance.generatePrivate(new PKCS8EncodedKeySpec(decode2)));
        } catch (NoSuchAlgorithmException | InvalidKeySpecException e) {
            a = String.valueOf(e);
            Log.w("InstanceID/Store", new StringBuilder(String.valueOf(a).length() + 19).append("Invalid key stored ").append(a).toString());
            b.a(this.b, this);
            return null;
        }
    }
}
