package com.google.android.gms.c;

import java.io.IOException;
import java.text.Normalizer;
import java.text.Normalizer.Form;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Locale;

@pa
public class gg {
    private final ga a;
    private final int b;
    private String c;
    private String d;
    private final boolean e = false;
    private final int f;
    private final int g;

    public class a implements Comparator<fz> {
        public a(gg ggVar) {
        }

        /* renamed from: a */
        public int compare(fz fzVar, fz fzVar2) {
            if (fzVar.b() < fzVar2.b()) {
                return -1;
            }
            if (fzVar.b() > fzVar2.b()) {
                return 1;
            }
            if (fzVar.a() < fzVar2.a()) {
                return -1;
            }
            if (fzVar.a() > fzVar2.a()) {
                return 1;
            }
            float d = (fzVar.d() - fzVar.b()) * (fzVar.c() - fzVar.a());
            float d2 = (fzVar2.d() - fzVar2.b()) * (fzVar2.c() - fzVar2.a());
            return d <= d2 ? d < d2 ? 1 : 0 : -1;
        }
    }

    public gg(int i, int i2, int i3) {
        this.b = i;
        if (i2 > 64 || i2 < 0) {
            this.f = 64;
        } else {
            this.f = i2;
        }
        if (i3 < 1) {
            this.g = 1;
        } else {
            this.g = i3;
        }
        this.a = new gf(this.f);
    }

    /* Access modifiers changed, original: 0000 */
    public String a(String str, char c) {
        StringBuilder stringBuilder = new StringBuilder(str);
        Object obj = null;
        int i = 1;
        while (i + 2 <= stringBuilder.length()) {
            if (stringBuilder.charAt(i) == '\'') {
                if (stringBuilder.charAt(i - 1) == c || !((stringBuilder.charAt(i + 1) == 's' || stringBuilder.charAt(i + 1) == 'S') && (i + 2 == stringBuilder.length() || stringBuilder.charAt(i + 2) == c))) {
                    stringBuilder.setCharAt(i, c);
                } else {
                    stringBuilder.insert(i, c);
                    i += 2;
                }
                obj = 1;
            }
            i++;
        }
        return obj != null ? stringBuilder.toString() : null;
    }

    public String a(ArrayList<String> arrayList, ArrayList<fz> arrayList2) {
        a aVar;
        Iterator it;
        Collections.sort(arrayList2, new a(this));
        HashSet hashSet = new HashSet();
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 >= arrayList2.size() || !a(Normalizer.normalize((CharSequence) arrayList.get(((fz) arrayList2.get(i2)).e()), Form.NFKC).toLowerCase(Locale.US), hashSet)) {
                aVar = new a();
                this.c = "";
                it = hashSet.iterator();
            } else {
                i = i2 + 1;
            }
        }
        aVar = new a();
        this.c = "";
        it = hashSet.iterator();
        while (it.hasNext()) {
            try {
                aVar.a(this.a.a((String) it.next()));
            } catch (IOException e) {
                sz.b("Error while writing hash to byteStream", e);
            }
        }
        return aVar.toString();
    }

    /* Access modifiers changed, original: 0000 */
    /* JADX WARNING: Removed duplicated region for block: B:14:0x0032  */
    /* JADX WARNING: Removed duplicated region for block: B:42:0x002f A:{SYNTHETIC} */
    public boolean a(java.lang.String r11, java.util.HashSet<java.lang.String> r12) {
        /*
        r10 = this;
        r5 = 1;
        r1 = 0;
        r0 = "\n";
        r6 = r11.split(r0);
        r0 = r6.length;
        if (r0 != 0) goto L_0x000d;
    L_0x000b:
        r1 = r5;
    L_0x000c:
        return r1;
    L_0x000d:
        r0 = r1;
    L_0x000e:
        r2 = r6.length;
        if (r0 >= r2) goto L_0x0087;
    L_0x0011:
        r3 = r6[r0];
        r2 = "'";
        r2 = r3.indexOf(r2);
        r4 = -1;
        if (r2 == r4) goto L_0x008b;
    L_0x001c:
        r2 = 32;
        r2 = r10.a(r3, r2);
        if (r2 == 0) goto L_0x008b;
    L_0x0024:
        r10.d = r2;
    L_0x0026:
        r7 = com.google.android.gms.c.gc.a(r2, r5);
        r2 = r7.length;
        r3 = r10.g;
        if (r2 >= r3) goto L_0x0032;
    L_0x002f:
        r0 = r0 + 1;
        goto L_0x000e;
    L_0x0032:
        r2 = r1;
    L_0x0033:
        r3 = r7.length;
        if (r2 >= r3) goto L_0x0045;
    L_0x0036:
        r3 = "";
        r4 = r1;
    L_0x0039:
        r8 = r10.g;
        if (r4 >= r8) goto L_0x0089;
    L_0x003d:
        r8 = r2 + r4;
        r9 = r7.length;
        if (r8 < r9) goto L_0x004e;
    L_0x0042:
        r4 = r1;
    L_0x0043:
        if (r4 != 0) goto L_0x0079;
    L_0x0045:
        r2 = r12.size();
        r3 = r10.b;
        if (r2 < r3) goto L_0x002f;
    L_0x004d:
        goto L_0x000c;
    L_0x004e:
        if (r4 <= 0) goto L_0x005a;
    L_0x0050:
        r3 = java.lang.String.valueOf(r3);
        r8 = " ";
        r3 = r3.concat(r8);
    L_0x005a:
        r8 = java.lang.String.valueOf(r3);
        r3 = r2 + r4;
        r3 = r7[r3];
        r3 = java.lang.String.valueOf(r3);
        r9 = r3.length();
        if (r9 == 0) goto L_0x0073;
    L_0x006c:
        r3 = r8.concat(r3);
    L_0x0070:
        r4 = r4 + 1;
        goto L_0x0039;
    L_0x0073:
        r3 = new java.lang.String;
        r3.<init>(r8);
        goto L_0x0070;
    L_0x0079:
        r12.add(r3);
        r3 = r12.size();
        r4 = r10.b;
        if (r3 >= r4) goto L_0x000c;
    L_0x0084:
        r2 = r2 + 1;
        goto L_0x0033;
    L_0x0087:
        r1 = r5;
        goto L_0x000c;
    L_0x0089:
        r4 = r5;
        goto L_0x0043;
    L_0x008b:
        r2 = r3;
        goto L_0x0026;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.c.gg.a(java.lang.String, java.util.HashSet):boolean");
    }
}
