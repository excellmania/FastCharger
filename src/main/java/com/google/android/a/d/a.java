package com.google.android.a.d;

import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

public interface a {

    public static final class a implements a {
        private final Map<UUID, b> a = new HashMap();

        public void a(UUID uuid, b bVar) {
            this.a.put(uuid, bVar);
        }
    }

    public static final class b {
        public final String a;
        public final byte[] b;

        public b(String str, byte[] bArr) {
            this.a = (String) com.google.android.a.h.b.a((Object) str);
            this.b = (byte[]) com.google.android.a.h.b.a((Object) bArr);
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof b)) {
                return false;
            }
            if (obj == this) {
                return true;
            }
            b bVar = (b) obj;
            return this.a.equals(bVar.a) && Arrays.equals(this.b, bVar.b);
        }

        public int hashCode() {
            return this.a.hashCode() + (Arrays.hashCode(this.b) * 31);
        }
    }

    public static final class c implements a {
        private b a;

        public c(b bVar) {
            this.a = bVar;
        }
    }
}
