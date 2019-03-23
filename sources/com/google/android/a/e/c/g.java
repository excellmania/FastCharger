package com.google.android.a.e.c;

import android.util.Log;
import android.util.Pair;
import com.google.android.a.h.o;
import java.util.UUID;

public final class g {
    public static UUID a(byte[] bArr) {
        Pair b = b(bArr);
        return b == null ? null : (UUID) b.first;
    }

    private static Pair<UUID, byte[]> b(byte[] bArr) {
        o oVar = new o(bArr);
        if (oVar.c() < 32) {
            return null;
        }
        oVar.b(0);
        if (oVar.m() != oVar.b() + 4 || oVar.m() != a.S) {
            return null;
        }
        int a = a.a(oVar.m());
        if (a > 1) {
            Log.w("PsshAtomUtil", "Unsupported pssh version: " + a);
            return null;
        }
        UUID uuid = new UUID(oVar.o(), oVar.o());
        if (a == 1) {
            oVar.c(oVar.s() * 16);
        }
        a = oVar.s();
        if (a != oVar.b()) {
            return null;
        }
        byte[] bArr2 = new byte[a];
        oVar.a(bArr2, 0, a);
        return Pair.create(uuid, bArr2);
    }
}
