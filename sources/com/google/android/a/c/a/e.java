package com.google.android.a.c.a;

import android.text.TextUtils;
import android.util.Base64;
import android.util.Log;
import android.util.Pair;
import com.google.android.a.b.i;
import com.google.android.a.c.a.i.c;
import com.google.android.a.c.a.i.d;
import com.google.android.a.e.c.g;
import com.google.android.a.h.b;
import com.google.android.a.h.k;
import com.google.android.a.h.p;
import com.google.android.a.h.w;
import com.google.android.a.h.x;
import com.google.android.a.t;
import java.io.InputStream;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.UUID;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.xml.sax.helpers.DefaultHandler;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlPullParserFactory;

public class e extends DefaultHandler implements com.google.android.a.g.s.a<d> {
    private static final Pattern a = Pattern.compile("(\\d+)(?:/(\\d+))?");
    private final String b;
    private final XmlPullParserFactory c;

    protected static final class a implements Comparator<b> {
        private ArrayList<b> a;
        private ArrayList<b> b;
        private ArrayList<b> c;
        private boolean d;

        protected a() {
        }

        private void a(List<b> list, b bVar) {
            if (!list.contains(bVar)) {
                for (int i = 0; i < list.size(); i++) {
                    b.b(!((b) list.get(i)).a.equals(bVar.a));
                }
                list.add(bVar);
            }
        }

        /* renamed from: a */
        public int compare(b bVar, b bVar2) {
            return bVar.a.compareTo(bVar2.a);
        }

        public void a() {
            boolean z = true;
            if (!this.d) {
                if (this.c != null) {
                    Collections.sort(this.c, this);
                }
                this.b = this.c;
                this.d = true;
            } else if (this.c == null) {
                if (this.b != null) {
                    z = false;
                }
                b.b(z);
            } else {
                Collections.sort(this.c, this);
                b.b(this.c.equals(this.b));
            }
            this.c = null;
        }

        public void a(b bVar) {
            if (this.a == null) {
                this.a = new ArrayList();
            }
            a(this.a, bVar);
        }

        public ArrayList<b> b() {
            if (this.a == null) {
                return this.b;
            }
            if (this.b == null) {
                return this.a;
            }
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 >= this.b.size()) {
                    return this.a;
                }
                a(this.a, (b) this.b.get(i2));
                i = i2 + 1;
            }
        }
    }

    public e() {
        this(null);
    }

    public e(String str) {
        this.b = str;
        try {
            this.c = XmlPullParserFactory.newInstance();
        } catch (XmlPullParserException e) {
            throw new RuntimeException("Couldn't create XmlPullParserFactory instance", e);
        }
    }

    protected static float a(XmlPullParser xmlPullParser, float f) {
        String attributeValue = xmlPullParser.getAttributeValue(null, "frameRate");
        if (attributeValue == null) {
            return f;
        }
        Matcher matcher = a.matcher(attributeValue);
        if (!matcher.matches()) {
            return f;
        }
        int parseInt = Integer.parseInt(matcher.group(1));
        attributeValue = matcher.group(2);
        return !TextUtils.isEmpty(attributeValue) ? ((float) parseInt) / ((float) Integer.parseInt(attributeValue)) : (float) parseInt;
    }

    private static int a(int i, int i2) {
        if (i == -1) {
            return i2;
        }
        if (i2 == -1) {
            return i;
        }
        b.b(i == i2);
        return i;
    }

    protected static int a(XmlPullParser xmlPullParser, String str, int i) {
        String attributeValue = xmlPullParser.getAttributeValue(null, str);
        return attributeValue == null ? i : Integer.parseInt(attributeValue);
    }

    protected static String a(XmlPullParser xmlPullParser, String str, String str2) {
        String attributeValue = xmlPullParser.getAttributeValue(null, str);
        return attributeValue == null ? str2 : attributeValue;
    }

    protected static long b(XmlPullParser xmlPullParser, String str, long j) {
        String attributeValue = xmlPullParser.getAttributeValue(null, str);
        return attributeValue == null ? j : x.c(attributeValue);
    }

    private static String b(String str, String str2) {
        if (str == null) {
            return str2;
        }
        if (str2 == null) {
            return str;
        }
        b.b(str.equals(str2));
        return str;
    }

    protected static long c(XmlPullParser xmlPullParser, String str, long j) {
        String attributeValue = xmlPullParser.getAttributeValue(null, str);
        return attributeValue == null ? j : x.d(attributeValue);
    }

    protected static long d(XmlPullParser xmlPullParser, String str, long j) {
        String attributeValue = xmlPullParser.getAttributeValue(null, str);
        return attributeValue == null ? j : Long.parseLong(attributeValue);
    }

    protected static String d(XmlPullParser xmlPullParser, String str) {
        xmlPullParser.next();
        return w.b(str, xmlPullParser.getText());
    }

    protected static int e(XmlPullParser xmlPullParser, String str) {
        return a(xmlPullParser, str, -1);
    }

    protected static long f(XmlPullParser xmlPullParser, String str) {
        return d(xmlPullParser, str, -1);
    }

    /* Access modifiers changed, original: protected */
    public int a(h hVar) {
        String str = hVar.c.b;
        if (TextUtils.isEmpty(str)) {
            return -1;
        }
        if (k.b(str)) {
            return 0;
        }
        if (k.a(str)) {
            return 1;
        }
        if (k.c(str) || "application/ttml+xml".equals(str)) {
            return 2;
        }
        if (!"application/mp4".equals(str)) {
            return -1;
        }
        str = hVar.c.i;
        return ("stpp".equals(str) || "wvtt".equals(str)) ? 2 : -1;
    }

    /* Access modifiers changed, original: protected */
    public Pair<f, Long> a(XmlPullParser xmlPullParser, String str, long j) {
        String attributeValue = xmlPullParser.getAttributeValue(null, "id");
        long b = b(xmlPullParser, "start", j);
        long b2 = b(xmlPullParser, "duration", -1);
        List arrayList = new ArrayList();
        Object obj = null;
        i iVar = null;
        String str2 = str;
        do {
            xmlPullParser.next();
            if (p.b(xmlPullParser, "BaseURL")) {
                if (obj == null) {
                    str2 = d(xmlPullParser, str2);
                    obj = 1;
                }
            } else if (p.b(xmlPullParser, "AdaptationSet")) {
                arrayList.add(a(xmlPullParser, str2, iVar));
            } else if (p.b(xmlPullParser, "SegmentBase")) {
                iVar = a(xmlPullParser, str2, null);
            } else if (p.b(xmlPullParser, "SegmentList")) {
                iVar = a(xmlPullParser, str2, null);
            } else if (p.b(xmlPullParser, "SegmentTemplate")) {
                iVar = a(xmlPullParser, str2, null);
            }
        } while (!p.a(xmlPullParser, "Period"));
        return Pair.create(a(attributeValue, b, arrayList), Long.valueOf(b2));
    }

    /* Access modifiers changed, original: protected */
    public i a(String str, String str2, int i, int i2, float f, int i3, int i4, int i5, String str3, String str4) {
        return new i(str, str2, i, i2, f, i3, i4, i5, str3, str4);
    }

    /* Access modifiers changed, original: protected */
    public a a(int i, int i2, List<h> list, List<b> list2) {
        return new a(i, i2, list, list2);
    }

    /* Access modifiers changed, original: protected */
    public a a(XmlPullParser xmlPullParser, String str, i iVar) {
        int a = a(xmlPullParser, "id", -1);
        int b = b(xmlPullParser);
        String attributeValue = xmlPullParser.getAttributeValue(null, "mimeType");
        String attributeValue2 = xmlPullParser.getAttributeValue(null, "codecs");
        int a2 = a(xmlPullParser, "width", -1);
        int a3 = a(xmlPullParser, "height", -1);
        float a4 = a(xmlPullParser, -1.0f);
        int i = -1;
        int a5 = a(xmlPullParser, "audioSamplingRate", -1);
        String attributeValue3 = xmlPullParser.getAttributeValue(null, "lang");
        a aVar = new a();
        ArrayList arrayList = new ArrayList();
        Object obj = null;
        i iVar2 = iVar;
        String str2 = str;
        while (true) {
            Object obj2;
            int i2;
            xmlPullParser.next();
            if (p.b(xmlPullParser, "BaseURL")) {
                if (obj == null) {
                    str2 = d(xmlPullParser, str2);
                    obj2 = 1;
                    i2 = b;
                }
                obj2 = obj;
                i2 = b;
            } else {
                if (p.b(xmlPullParser, "ContentProtection")) {
                    b c = c(xmlPullParser);
                    if (c != null) {
                        aVar.a(c);
                    }
                    obj2 = obj;
                    i2 = b;
                } else {
                    if (p.b(xmlPullParser, "ContentComponent")) {
                        attributeValue3 = b(attributeValue3, xmlPullParser.getAttributeValue(null, "lang"));
                        i2 = a(b, b(xmlPullParser));
                        obj2 = obj;
                    } else {
                        if (p.b(xmlPullParser, "Representation")) {
                            h a6 = a(xmlPullParser, str2, attributeValue, attributeValue2, a2, a3, a4, i, a5, attributeValue3, iVar2, aVar);
                            aVar.a();
                            int a7 = a(b, a(a6));
                            arrayList.add(a6);
                            i2 = a7;
                            obj2 = obj;
                        } else {
                            if (p.b(xmlPullParser, "AudioChannelConfiguration")) {
                                i = f(xmlPullParser);
                                obj2 = obj;
                                i2 = b;
                            } else {
                                if (p.b(xmlPullParser, "SegmentBase")) {
                                    iVar2 = a(xmlPullParser, str2, (com.google.android.a.c.a.i.e) iVar2);
                                    obj2 = obj;
                                    i2 = b;
                                } else {
                                    if (p.b(xmlPullParser, "SegmentList")) {
                                        iVar2 = a(xmlPullParser, str2, (i.b) iVar2);
                                        obj2 = obj;
                                        i2 = b;
                                    } else {
                                        if (p.b(xmlPullParser, "SegmentTemplate")) {
                                            iVar2 = a(xmlPullParser, str2, (c) iVar2);
                                            obj2 = obj;
                                            i2 = b;
                                        } else {
                                            if (p.b(xmlPullParser)) {
                                                d(xmlPullParser);
                                            }
                                            obj2 = obj;
                                            i2 = b;
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
            if (p.a(xmlPullParser, "AdaptationSet")) {
                return a(a, i2, (List) arrayList, aVar.b());
            }
            obj = obj2;
            b = i2;
        }
    }

    /* Access modifiers changed, original: protected */
    public b a(String str, UUID uuid, com.google.android.a.d.a.b bVar) {
        return new b(str, uuid, bVar);
    }

    /* Access modifiers changed, original: protected */
    public d a(long j, long j2, long j3, boolean z, long j4, long j5, k kVar, String str, List<f> list) {
        return new d(j, j2, j3, z, j4, j5, kVar, str, list);
    }

    /* renamed from: a */
    public d b(String str, InputStream inputStream) {
        try {
            XmlPullParser newPullParser = this.c.newPullParser();
            newPullParser.setInput(inputStream, null);
            if (newPullParser.next() == 2 && "MPD".equals(newPullParser.getName())) {
                return a(newPullParser, str);
            }
            throw new t("inputStream does not contain a valid media presentation description");
        } catch (XmlPullParserException e) {
            throw new t(e);
        } catch (ParseException e2) {
            throw new t(e2);
        }
    }

    /* Access modifiers changed, original: protected */
    /* JADX WARNING: Removed duplicated region for block: B:53:0x0151  */
    /* JADX WARNING: Removed duplicated region for block: B:23:0x0098  */
    public com.google.android.a.c.a.d a(org.xmlpull.v1.XmlPullParser r34, java.lang.String r35) {
        /*
        r33 = this;
        r6 = "availabilityStartTime";
        r8 = -1;
        r0 = r34;
        r8 = c(r0, r6, r8);
        r6 = "mediaPresentationDuration";
        r10 = -1;
        r0 = r34;
        r26 = b(r0, r6, r10);
        r6 = "minBufferTime";
        r10 = -1;
        r0 = r34;
        r12 = b(r0, r6, r10);
        r6 = 0;
        r7 = "type";
        r0 = r34;
        r6 = r0.getAttributeValue(r6, r7);
        if (r6 == 0) goto L_0x00a0;
    L_0x0029:
        r7 = "dynamic";
        r14 = r6.equals(r7);
    L_0x002f:
        if (r14 == 0) goto L_0x00a2;
    L_0x0031:
        r6 = "minimumUpdatePeriod";
        r10 = -1;
        r0 = r34;
        r15 = b(r0, r6, r10);
    L_0x003b:
        if (r14 == 0) goto L_0x00a5;
    L_0x003d:
        r6 = "timeShiftBufferDepth";
        r10 = -1;
        r0 = r34;
        r17 = b(r0, r6, r10);
    L_0x0047:
        r19 = 0;
        r20 = 0;
        r21 = new java.util.ArrayList;
        r21.<init>();
        if (r14 == 0) goto L_0x00a8;
    L_0x0052:
        r6 = -1;
    L_0x0054:
        r11 = 0;
        r10 = 0;
        r22 = r6;
        r24 = r35;
    L_0x005a:
        r34.next();
        r6 = "BaseURL";
        r0 = r34;
        r6 = com.google.android.a.h.p.b(r0, r6);
        if (r6 == 0) goto L_0x00ab;
    L_0x0067:
        if (r10 != 0) goto L_0x0138;
    L_0x0069:
        r0 = r34;
        r1 = r24;
        r7 = d(r0, r1);
        r6 = 1;
        r32 = r11;
        r10 = r22;
        r22 = r7;
        r7 = r32;
    L_0x007a:
        r23 = "MPD";
        r0 = r34;
        r1 = r23;
        r23 = com.google.android.a.h.p.a(r0, r1);
        if (r23 == 0) goto L_0x015c;
    L_0x0086:
        r6 = -1;
        r6 = (r26 > r6 ? 1 : (r26 == r6 ? 0 : -1));
        if (r6 != 0) goto L_0x0158;
    L_0x008c:
        r6 = -1;
        r6 = (r10 > r6 ? 1 : (r10 == r6 ? 0 : -1));
        if (r6 == 0) goto L_0x0147;
    L_0x0092:
        r6 = r21.isEmpty();
        if (r6 == 0) goto L_0x0151;
    L_0x0098:
        r6 = new com.google.android.a.t;
        r7 = "No periods found.";
        r6.<init>(r7);
        throw r6;
    L_0x00a0:
        r14 = 0;
        goto L_0x002f;
    L_0x00a2:
        r15 = -1;
        goto L_0x003b;
    L_0x00a5:
        r17 = -1;
        goto L_0x0047;
    L_0x00a8:
        r6 = 0;
        goto L_0x0054;
    L_0x00ab:
        r6 = "UTCTiming";
        r0 = r34;
        r6 = com.google.android.a.h.p.b(r0, r6);
        if (r6 == 0) goto L_0x00c0;
    L_0x00b5:
        r19 = r33.a(r34);
        r6 = r10;
        r7 = r11;
        r10 = r22;
        r22 = r24;
        goto L_0x007a;
    L_0x00c0:
        r6 = "Location";
        r0 = r34;
        r6 = com.google.android.a.h.p.b(r0, r6);
        if (r6 == 0) goto L_0x00d5;
    L_0x00ca:
        r20 = r34.nextText();
        r6 = r10;
        r7 = r11;
        r10 = r22;
        r22 = r24;
        goto L_0x007a;
    L_0x00d5:
        r6 = "Period";
        r0 = r34;
        r6 = com.google.android.a.h.p.b(r0, r6);
        if (r6 == 0) goto L_0x0138;
    L_0x00df:
        if (r11 != 0) goto L_0x0138;
    L_0x00e1:
        r0 = r33;
        r1 = r34;
        r2 = r24;
        r3 = r22;
        r7 = r0.a(r1, r2, r3);
        r6 = r7.first;
        r6 = (com.google.android.a.c.a.f) r6;
        r0 = r6.b;
        r28 = r0;
        r30 = -1;
        r25 = (r28 > r30 ? 1 : (r28 == r30 ? 0 : -1));
        if (r25 != 0) goto L_0x0123;
    L_0x00fb:
        if (r14 == 0) goto L_0x0106;
    L_0x00fd:
        r6 = 1;
        r7 = r6;
        r6 = r10;
        r10 = r22;
        r22 = r24;
        goto L_0x007a;
    L_0x0106:
        r6 = new com.google.android.a.t;
        r7 = new java.lang.StringBuilder;
        r7.<init>();
        r8 = "Unable to determine start of period ";
        r7 = r7.append(r8);
        r8 = r21.size();
        r7 = r7.append(r8);
        r7 = r7.toString();
        r6.<init>(r7);
        throw r6;
    L_0x0123:
        r7 = r7.second;
        r7 = (java.lang.Long) r7;
        r22 = r7.longValue();
        r28 = -1;
        r7 = (r22 > r28 ? 1 : (r22 == r28 ? 0 : -1));
        if (r7 != 0) goto L_0x0140;
    L_0x0131:
        r22 = -1;
    L_0x0133:
        r0 = r21;
        r0.add(r6);
    L_0x0138:
        r6 = r10;
        r7 = r11;
        r10 = r22;
        r22 = r24;
        goto L_0x007a;
    L_0x0140:
        r0 = r6.b;
        r28 = r0;
        r22 = r22 + r28;
        goto L_0x0133;
    L_0x0147:
        if (r14 != 0) goto L_0x0158;
    L_0x0149:
        r6 = new com.google.android.a.t;
        r7 = "Unable to determine duration of static manifest.";
        r6.<init>(r7);
        throw r6;
    L_0x0151:
        r7 = r33;
        r6 = r7.a(r8, r10, r12, r14, r15, r17, r19, r20, r21);
        return r6;
    L_0x0158:
        r10 = r26;
        goto L_0x0092;
    L_0x015c:
        r24 = r22;
        r22 = r10;
        r11 = r7;
        r10 = r6;
        goto L_0x005a;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.a.c.a.e.a(org.xmlpull.v1.XmlPullParser, java.lang.String):com.google.android.a.c.a.d");
    }

    /* Access modifiers changed, original: protected */
    public f a(String str, long j, List<a> list) {
        return new f(str, j, list);
    }

    /* Access modifiers changed, original: protected */
    public g a(String str, String str2, long j, long j2) {
        return new g(str, str2, j, j2);
    }

    /* Access modifiers changed, original: protected */
    public g a(XmlPullParser xmlPullParser, String str, String str2, String str3) {
        String attributeValue = xmlPullParser.getAttributeValue(null, str2);
        long j = 0;
        long j2 = -1;
        String attributeValue2 = xmlPullParser.getAttributeValue(null, str3);
        if (attributeValue2 != null) {
            String[] split = attributeValue2.split("-");
            j = Long.parseLong(split[0]);
            if (split.length == 2) {
                j2 = 1 + (Long.parseLong(split[1]) - j);
            }
        }
        return a(str, attributeValue, j, j2);
    }

    /* Access modifiers changed, original: protected */
    public h a(String str, int i, i iVar, i iVar2) {
        return h.a(str, (long) i, iVar, iVar2);
    }

    /* Access modifiers changed, original: protected */
    public h a(XmlPullParser xmlPullParser, String str, String str2, String str3, int i, int i2, float f, int i3, int i4, String str4, i iVar, a aVar) {
        String d;
        i iVar2;
        int i5;
        String attributeValue = xmlPullParser.getAttributeValue(null, "id");
        int e = e(xmlPullParser, "bandwidth");
        String a = a(xmlPullParser, "mimeType", str2);
        String a2 = a(xmlPullParser, "codecs", str3);
        int a3 = a(xmlPullParser, "width", i);
        int a4 = a(xmlPullParser, "height", i2);
        float a5 = a(xmlPullParser, f);
        int a6 = a(xmlPullParser, "audioSamplingRate", i4);
        Object obj = null;
        int i6 = i3;
        i iVar3 = iVar;
        String str5 = str;
        while (true) {
            Object obj2;
            xmlPullParser.next();
            if (p.b(xmlPullParser, "BaseURL")) {
                if (obj == null) {
                    d = d(xmlPullParser, str5);
                    iVar2 = iVar3;
                    obj2 = 1;
                    i5 = i6;
                }
                d = str5;
                iVar2 = iVar3;
                obj2 = obj;
                i5 = i6;
            } else if (p.b(xmlPullParser, "AudioChannelConfiguration")) {
                d = str5;
                iVar2 = iVar3;
                obj2 = obj;
                i5 = f(xmlPullParser);
            } else if (p.b(xmlPullParser, "SegmentBase")) {
                d = str5;
                iVar2 = a(xmlPullParser, str5, (com.google.android.a.c.a.i.e) iVar3);
                obj2 = obj;
                i5 = i6;
            } else if (p.b(xmlPullParser, "SegmentList")) {
                d = str5;
                iVar2 = a(xmlPullParser, str5, (i.b) iVar3);
                obj2 = obj;
                i5 = i6;
            } else if (p.b(xmlPullParser, "SegmentTemplate")) {
                d = str5;
                iVar2 = a(xmlPullParser, str5, (c) iVar3);
                obj2 = obj;
                i5 = i6;
            } else {
                if (p.b(xmlPullParser, "ContentProtection")) {
                    b c = c(xmlPullParser);
                    if (c != null) {
                        aVar.a(c);
                    }
                }
                d = str5;
                iVar2 = iVar3;
                obj2 = obj;
                i5 = i6;
            }
            if (p.a(xmlPullParser, "Representation")) {
                break;
            }
            i6 = i5;
            obj = obj2;
            iVar3 = iVar2;
            str5 = d;
        }
        i a7 = a(attributeValue, a, a3, a4, a5, i5, a6, e, str4, a2);
        attributeValue = this.b;
        if (iVar2 == null) {
            iVar2 = new com.google.android.a.c.a.i.e(d);
        }
        return a(attributeValue, -1, a7, iVar2);
    }

    /* Access modifiers changed, original: protected */
    public i.b a(g gVar, long j, long j2, int i, long j3, List<d> list, List<g> list2) {
        return new i.b(gVar, j, j2, i, j3, list, list2);
    }

    /* Access modifiers changed, original: protected */
    public i.b a(XmlPullParser xmlPullParser, String str, i.b bVar) {
        List list;
        g gVar;
        List list2;
        g gVar2 = null;
        long d = d(xmlPullParser, "timescale", bVar != null ? bVar.b : 1);
        long d2 = d(xmlPullParser, "presentationTimeOffset", bVar != null ? bVar.c : 0);
        long d3 = d(xmlPullParser, "duration", bVar != null ? bVar.e : -1);
        int a = a(xmlPullParser, "startNumber", bVar != null ? bVar.d : 1);
        List list3 = null;
        List list4 = null;
        do {
            xmlPullParser.next();
            if (p.b(xmlPullParser, "Initialization")) {
                gVar2 = b(xmlPullParser, str);
            } else if (p.b(xmlPullParser, "SegmentTimeline")) {
                list4 = e(xmlPullParser);
            } else if (p.b(xmlPullParser, "SegmentURL")) {
                if (list3 == null) {
                    list3 = new ArrayList();
                }
                list3.add(c(xmlPullParser, str));
            }
        } while (!p.a(xmlPullParser, "SegmentList"));
        if (bVar != null) {
            g gVar3 = gVar2 != null ? gVar2 : bVar.a;
            list = list4 != null ? list4 : bVar.f;
            if (list3 == null) {
                list3 = bVar.g;
            }
            gVar = gVar3;
            list2 = list3;
        } else {
            list2 = list3;
            List list5 = list4;
            gVar = gVar2;
            list = list5;
        }
        return a(gVar, d, d2, a, d3, list, list2);
    }

    /* Access modifiers changed, original: protected */
    public c a(g gVar, long j, long j2, int i, long j3, List<d> list, j jVar, j jVar2, String str) {
        return new c(gVar, j, j2, i, j3, list, jVar, jVar2, str);
    }

    /* Access modifiers changed, original: protected */
    public c a(XmlPullParser xmlPullParser, String str, c cVar) {
        List list;
        long d = d(xmlPullParser, "timescale", cVar != null ? cVar.b : 1);
        long d2 = d(xmlPullParser, "presentationTimeOffset", cVar != null ? cVar.c : 0);
        long d3 = d(xmlPullParser, "duration", cVar != null ? cVar.e : -1);
        int a = a(xmlPullParser, "startNumber", cVar != null ? cVar.d : 1);
        j a2 = a(xmlPullParser, "media", cVar != null ? cVar.h : null);
        j a3 = a(xmlPullParser, "initialization", cVar != null ? cVar.g : null);
        g gVar = null;
        List list2 = null;
        do {
            xmlPullParser.next();
            if (p.b(xmlPullParser, "Initialization")) {
                gVar = b(xmlPullParser, str);
            } else {
                if (p.b(xmlPullParser, "SegmentTimeline")) {
                    list2 = e(xmlPullParser);
                }
            }
        } while (!p.a(xmlPullParser, "SegmentTemplate"));
        if (cVar != null) {
            if (gVar == null) {
                gVar = cVar.a;
            }
            if (list2 == null) {
                list2 = cVar.f;
            }
            list = list2;
        } else {
            list = list2;
        }
        return a(gVar, d, d2, a, d3, list, a3, a2, str);
    }

    /* Access modifiers changed, original: protected */
    public d a(long j, long j2) {
        return new d(j, j2);
    }

    /* Access modifiers changed, original: protected */
    public com.google.android.a.c.a.i.e a(g gVar, long j, long j2, String str, long j3, long j4) {
        return new com.google.android.a.c.a.i.e(gVar, j, j2, str, j3, j4);
    }

    /* Access modifiers changed, original: protected */
    public com.google.android.a.c.a.i.e a(XmlPullParser xmlPullParser, String str, com.google.android.a.c.a.i.e eVar) {
        long parseLong;
        long d = d(xmlPullParser, "timescale", eVar != null ? eVar.b : 1);
        long d2 = d(xmlPullParser, "presentationTimeOffset", eVar != null ? eVar.c : 0);
        long j = eVar != null ? eVar.e : 0;
        long j2 = eVar != null ? eVar.f : -1;
        String attributeValue = xmlPullParser.getAttributeValue(null, "indexRange");
        if (attributeValue != null) {
            String[] split = attributeValue.split("-");
            j = Long.parseLong(split[0]);
            parseLong = (Long.parseLong(split[1]) - j) + 1;
        } else {
            parseLong = j2;
        }
        g gVar = eVar != null ? eVar.a : null;
        while (true) {
            xmlPullParser.next();
            g b = p.b(xmlPullParser, "Initialization") ? b(xmlPullParser, str) : gVar;
            if (p.a(xmlPullParser, "SegmentBase")) {
                return a(b, d, d2, str, j, parseLong);
            }
            gVar = b;
        }
    }

    /* Access modifiers changed, original: protected */
    public j a(XmlPullParser xmlPullParser, String str, j jVar) {
        String attributeValue = xmlPullParser.getAttributeValue(null, str);
        return attributeValue != null ? j.a(attributeValue) : jVar;
    }

    /* Access modifiers changed, original: protected */
    public k a(String str, String str2) {
        return new k(str, str2);
    }

    /* Access modifiers changed, original: protected */
    public k a(XmlPullParser xmlPullParser) {
        return a(xmlPullParser.getAttributeValue(null, "schemeIdUri"), xmlPullParser.getAttributeValue(null, "value"));
    }

    /* Access modifiers changed, original: protected */
    public int b(XmlPullParser xmlPullParser) {
        String attributeValue = xmlPullParser.getAttributeValue(null, "contentType");
        return TextUtils.isEmpty(attributeValue) ? -1 : "audio".equals(attributeValue) ? 1 : "video".equals(attributeValue) ? 0 : "text".equals(attributeValue) ? 2 : -1;
    }

    /* Access modifiers changed, original: protected */
    public g b(XmlPullParser xmlPullParser, String str) {
        return a(xmlPullParser, str, "sourceURL", "range");
    }

    /* Access modifiers changed, original: protected */
    public b c(XmlPullParser xmlPullParser) {
        String attributeValue = xmlPullParser.getAttributeValue(null, "schemeIdUri");
        int i = 0;
        com.google.android.a.d.a.b bVar = null;
        UUID uuid = null;
        do {
            xmlPullParser.next();
            if (p.b(xmlPullParser, "cenc:pssh") && xmlPullParser.next() == 4) {
                i = 1;
                bVar = new com.google.android.a.d.a.b("video/mp4", Base64.decode(xmlPullParser.getText(), 0));
                uuid = g.a(bVar.b);
            }
        } while (!p.a(xmlPullParser, "ContentProtection"));
        if (i == 0 || uuid != null) {
            return a(attributeValue, uuid, bVar);
        }
        Log.w("MediaPresentationDescriptionParser", "Skipped unsupported ContentProtection element");
        return null;
    }

    /* Access modifiers changed, original: protected */
    public g c(XmlPullParser xmlPullParser, String str) {
        return a(xmlPullParser, str, "media", "mediaRange");
    }

    /* Access modifiers changed, original: protected */
    public void d(XmlPullParser xmlPullParser) {
    }

    /* Access modifiers changed, original: protected */
    public List<d> e(XmlPullParser xmlPullParser) {
        ArrayList arrayList = new ArrayList();
        long j = 0;
        do {
            xmlPullParser.next();
            if (p.b(xmlPullParser, "S")) {
                j = d(xmlPullParser, "t", j);
                long f = f(xmlPullParser, "d");
                int a = a(xmlPullParser, "r", 0) + 1;
                int i = 0;
                while (i < a) {
                    arrayList.add(a(j, f));
                    i++;
                    j += f;
                }
            }
        } while (!p.a(xmlPullParser, "SegmentTimeline"));
        return arrayList;
    }

    /* Access modifiers changed, original: protected */
    public int f(XmlPullParser xmlPullParser) {
        int e = "urn:mpeg:dash:23003:3:audio_channel_configuration:2011".equals(a(xmlPullParser, "schemeIdUri", null)) ? e(xmlPullParser, "value") : -1;
        do {
            xmlPullParser.next();
        } while (!p.a(xmlPullParser, "AudioChannelConfiguration"));
        return e;
    }
}
