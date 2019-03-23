package com.google.android.gms.dynamite;

import android.content.Context;
import android.os.IBinder;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.common.internal.c;
import com.google.android.gms.common.util.DynamiteApi;
import dalvik.system.PathClassLoader;
import java.lang.reflect.Field;
import java.util.HashMap;

public final class DynamiteModule {
    public static final b a = new b() {
        public b a(Context context, String str, a aVar) {
            b bVar = new b();
            bVar.b = aVar.a(context, str, true);
            if (bVar.b != 0) {
                bVar.c = 1;
            } else {
                bVar.a = aVar.a(context, str);
                if (bVar.a != 0) {
                    bVar.c = -1;
                }
            }
            return bVar;
        }
    };
    public static final b b = new b() {
        public b a(Context context, String str, a aVar) {
            b bVar = new b();
            bVar.a = aVar.a(context, str);
            if (bVar.a != 0) {
                bVar.c = -1;
            } else {
                bVar.b = aVar.a(context, str, true);
                if (bVar.b != 0) {
                    bVar.c = 1;
                }
            }
            return bVar;
        }
    };
    public static final b c = new b() {
        public b a(Context context, String str, a aVar) {
            b bVar = new b();
            bVar.a = aVar.a(context, str);
            bVar.b = aVar.a(context, str, true);
            if (bVar.a == 0 && bVar.b == 0) {
                bVar.c = 0;
            } else if (bVar.a >= bVar.b) {
                bVar.c = -1;
            } else {
                bVar.c = 1;
            }
            return bVar;
        }
    };
    public static final b d = new b() {
        public b a(Context context, String str, a aVar) {
            b bVar = new b();
            bVar.a = aVar.a(context, str);
            bVar.b = aVar.a(context, str, true);
            if (bVar.a == 0 && bVar.b == 0) {
                bVar.c = 0;
            } else if (bVar.b >= bVar.a) {
                bVar.c = 1;
            } else {
                bVar.c = -1;
            }
            return bVar;
        }
    };
    public static final b e = new b() {
        public b a(Context context, String str, a aVar) {
            b bVar = new b();
            bVar.a = aVar.a(context, str);
            if (bVar.a != 0) {
                bVar.b = aVar.a(context, str, false);
            } else {
                bVar.b = aVar.a(context, str, true);
            }
            if (bVar.a == 0 && bVar.b == 0) {
                bVar.c = 0;
            } else if (bVar.b >= bVar.a) {
                bVar.c = 1;
            } else {
                bVar.c = -1;
            }
            return bVar;
        }
    };
    private static a f;
    private static final HashMap<String, byte[]> g = new HashMap();
    private static String h;
    private static final a i = new a() {
        public int a(Context context, String str) {
            return DynamiteModule.a(context, str);
        }

        public int a(Context context, String str, boolean z) {
            return DynamiteModule.a(context, str, z);
        }

        public DynamiteModule a(Context context, String str, int i) {
            return DynamiteModule.c(context, str, i);
        }
    };
    private static final a j = new a() {
        public int a(Context context, String str) {
            return DynamiteModule.a(context, str);
        }

        public int a(Context context, String str, boolean z) {
            return DynamiteModule.b(context, str, z);
        }

        public DynamiteModule a(Context context, String str, int i) {
            return DynamiteModule.d(context, str, i);
        }
    };
    private final Context k;

    public interface b {

        public interface a {
            int a(Context context, String str);

            int a(Context context, String str, boolean z);

            DynamiteModule a(Context context, String str, int i);
        }

        public static class b {
            public int a = 0;
            public int b = 0;
            public int c = 0;
        }

        b a(Context context, String str, a aVar);
    }

    @DynamiteApi
    public static class DynamiteLoaderClassLoader {
        public static ClassLoader sClassLoader;
    }

    public static class a extends Exception {
        private a(String str) {
            super(str);
        }

        private a(String str, Throwable th) {
            super(str, th);
        }

        /* synthetic */ a(String str, Throwable th, AnonymousClass1 anonymousClass1) {
            this(str, th);
        }
    }

    private DynamiteModule(Context context) {
        this.k = (Context) c.a((Object) context);
    }

    public static int a(Context context, String str) {
        String valueOf;
        String valueOf2;
        try {
            ClassLoader classLoader = context.getApplicationContext().getClassLoader();
            valueOf = String.valueOf("com.google.android.gms.dynamite.descriptors.");
            valueOf2 = String.valueOf("ModuleDescriptor");
            Class loadClass = classLoader.loadClass(new StringBuilder(((String.valueOf(valueOf).length() + 1) + String.valueOf(str).length()) + String.valueOf(valueOf2).length()).append(valueOf).append(str).append(".").append(valueOf2).toString());
            Field declaredField = loadClass.getDeclaredField("MODULE_ID");
            Field declaredField2 = loadClass.getDeclaredField("MODULE_VERSION");
            if (declaredField.get(null).equals(str)) {
                return declaredField2.getInt(null);
            }
            valueOf = String.valueOf(declaredField.get(null));
            Log.e("DynamiteModule", new StringBuilder((String.valueOf(valueOf).length() + 51) + String.valueOf(str).length()).append("Module descriptor id '").append(valueOf).append("' didn't match expected id '").append(str).append("'").toString());
            return 0;
        } catch (ClassNotFoundException e) {
            Log.w("DynamiteModule", new StringBuilder(String.valueOf(str).length() + 45).append("Local module descriptor class for ").append(str).append(" not found.").toString());
            return 0;
        } catch (Exception e2) {
            valueOf = "DynamiteModule";
            valueOf2 = "Failed to load module descriptor class: ";
            String valueOf3 = String.valueOf(e2.getMessage());
            Log.e(valueOf, valueOf3.length() != 0 ? valueOf2.concat(valueOf3) : new String(valueOf2));
            return 0;
        }
    }

    public static int a(Context context, String str, boolean z) {
        a a = a(context);
        if (a == null) {
            return 0;
        }
        try {
            return a.a(com.google.android.gms.a.b.a((Object) context), str, z);
        } catch (RemoteException e) {
            String str2 = "DynamiteModule";
            String str3 = "Failed to retrieve remote module version: ";
            String valueOf = String.valueOf(e.getMessage());
            Log.w(str2, valueOf.length() != 0 ? str3.concat(valueOf) : new String(str3));
            return 0;
        }
    }

    private static Context a(Context context, String str, byte[] bArr, String str2) {
        if (str2 == null || str2.isEmpty()) {
            Log.e("DynamiteModule", "No valid DynamiteLoader APK path");
            return null;
        }
        try {
            return (Context) com.google.android.gms.a.b.a(com.google.android.gms.dynamite.b.a.a((IBinder) c(context, str2).loadClass("com.google.android.gms.dynamiteloader.DynamiteLoaderV2").getConstructor(new Class[0]).newInstance(new Object[0])).a(com.google.android.gms.a.b.a((Object) context), str, bArr));
        } catch (Exception e) {
            String str3 = "DynamiteModule";
            String str4 = "Failed to load DynamiteLoader: ";
            String valueOf = String.valueOf(e.toString());
            Log.e(str3, valueOf.length() != 0 ? str4.concat(valueOf) : new String(str4));
            return null;
        }
    }

    public static DynamiteModule a(Context context, b bVar, String str) {
        if ("com.google.android.gms".equals(context.getApplicationContext().getPackageName())) {
            return a(context, bVar, str, i);
        }
        try {
            return a(context, bVar, str, j);
        } catch (a e) {
            String str2 = "DynamiteModule";
            String str3 = "Failed to load module via fast route";
            String valueOf = String.valueOf(e.toString());
            Log.w(str2, valueOf.length() != 0 ? str3.concat(valueOf) : new String(str3));
            return a(context, bVar, str, i);
        }
    }

    public static DynamiteModule a(Context context, b bVar, String str, a aVar) {
        b a = bVar.a(context, str, aVar);
        Log.i("DynamiteModule", new StringBuilder((String.valueOf(str).length() + 68) + String.valueOf(str).length()).append("Considering local module ").append(str).append(":").append(a.a).append(" and remote module ").append(str).append(":").append(a.b).toString());
        if (a.c == 0 || ((a.c == -1 && a.a == 0) || (a.c == 1 && a.b == 0))) {
            throw new a("No acceptable module found. Local version is " + a.a + " and remote version is " + a.b + ".", null);
        } else if (a.c == -1) {
            return b(context, str);
        } else {
            if (a.c == 1) {
                try {
                    return aVar.a(context, str, a.b);
                } catch (a e) {
                    a aVar2 = e;
                    String str2 = "DynamiteModule";
                    String str3 = "Failed to load remote module: ";
                    String valueOf = String.valueOf(aVar2.getMessage());
                    Log.w(str2, valueOf.length() != 0 ? str3.concat(valueOf) : new String(str3));
                    if (a.a != 0) {
                        final int i = a.a;
                        if (bVar.a(context, str, new a() {
                            public int a(Context context, String str) {
                                return i;
                            }

                            public int a(Context context, String str, boolean z) {
                                return 0;
                            }

                            public DynamiteModule a(Context context, String str, int i) {
                                throw new a("local only VersionPolicy should not load from remote", null);
                            }
                        }).c == -1) {
                            return b(context, str);
                        }
                    }
                    throw new a("Remote load failed. No local fallback found.", aVar2, null);
                }
            }
            throw new a("VersionPolicy returned invalid code:" + a.c, null);
        }
    }

    /* JADX WARNING: No exception handlers in catch block: Catch:{  } */
    private static com.google.android.gms.dynamite.a a(android.content.Context r6) {
        /*
        r1 = 0;
        r2 = com.google.android.gms.dynamite.DynamiteModule.class;
        monitor-enter(r2);
        r0 = f;	 Catch:{ all -> 0x003a }
        if (r0 == 0) goto L_0x000c;
    L_0x0008:
        r0 = f;	 Catch:{ all -> 0x003a }
        monitor-exit(r2);	 Catch:{ all -> 0x003a }
    L_0x000b:
        return r0;
    L_0x000c:
        r0 = com.google.android.gms.common.k.b();	 Catch:{ all -> 0x003a }
        r0 = r0.a(r6);	 Catch:{ all -> 0x003a }
        if (r0 == 0) goto L_0x0019;
    L_0x0016:
        monitor-exit(r2);	 Catch:{ all -> 0x003a }
        r0 = r1;
        goto L_0x000b;
    L_0x0019:
        r0 = "com.google.android.gms";
        r3 = 3;
        r0 = r6.createPackageContext(r0, r3);	 Catch:{ Exception -> 0x003d }
        r0 = r0.getClassLoader();	 Catch:{ Exception -> 0x003d }
        r3 = "com.google.android.gms.chimera.container.DynamiteLoaderImpl";
        r0 = r0.loadClass(r3);	 Catch:{ Exception -> 0x003d }
        r0 = r0.newInstance();	 Catch:{ Exception -> 0x003d }
        r0 = (android.os.IBinder) r0;	 Catch:{ Exception -> 0x003d }
        r0 = com.google.android.gms.dynamite.a.a.a(r0);	 Catch:{ Exception -> 0x003d }
        if (r0 == 0) goto L_0x0057;
    L_0x0036:
        f = r0;	 Catch:{ Exception -> 0x003d }
        monitor-exit(r2);	 Catch:{ all -> 0x003a }
        goto L_0x000b;
    L_0x003a:
        r0 = move-exception;
        monitor-exit(r2);	 Catch:{ all -> 0x003a }
        throw r0;
    L_0x003d:
        r0 = move-exception;
        r3 = "DynamiteModule";
        r4 = "Failed to load IDynamiteLoader from GmsCore: ";
        r0 = r0.getMessage();	 Catch:{ all -> 0x003a }
        r0 = java.lang.String.valueOf(r0);	 Catch:{ all -> 0x003a }
        r5 = r0.length();	 Catch:{ all -> 0x003a }
        if (r5 == 0) goto L_0x005a;
    L_0x0050:
        r0 = r4.concat(r0);	 Catch:{ all -> 0x003a }
    L_0x0054:
        android.util.Log.e(r3, r0);	 Catch:{ all -> 0x003a }
    L_0x0057:
        monitor-exit(r2);	 Catch:{ all -> 0x003a }
        r0 = r1;
        goto L_0x000b;
    L_0x005a:
        r0 = new java.lang.String;	 Catch:{ all -> 0x003a }
        r0.<init>(r4);	 Catch:{ all -> 0x003a }
        goto L_0x0054;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.dynamite.DynamiteModule.a(android.content.Context):com.google.android.gms.dynamite.a");
    }

    /* JADX WARNING: Removed duplicated region for block: B:19:0x0062  */
    public static int b(android.content.Context r7, java.lang.String r8, boolean r9) {
        /*
        r6 = 0;
        if (r9 == 0) goto L_0x0066;
    L_0x0003:
        r0 = "api_force_staging";
    L_0x0005:
        r1 = "content://com.google.android.gms.chimera/";
        r1 = java.lang.String.valueOf(r1);	 Catch:{ Exception -> 0x0057, all -> 0x00df }
        r2 = new java.lang.StringBuilder;	 Catch:{ Exception -> 0x0057, all -> 0x00df }
        r3 = java.lang.String.valueOf(r1);	 Catch:{ Exception -> 0x0057, all -> 0x00df }
        r3 = r3.length();	 Catch:{ Exception -> 0x0057, all -> 0x00df }
        r3 = r3 + 1;
        r4 = java.lang.String.valueOf(r0);	 Catch:{ Exception -> 0x0057, all -> 0x00df }
        r4 = r4.length();	 Catch:{ Exception -> 0x0057, all -> 0x00df }
        r3 = r3 + r4;
        r4 = java.lang.String.valueOf(r8);	 Catch:{ Exception -> 0x0057, all -> 0x00df }
        r4 = r4.length();	 Catch:{ Exception -> 0x0057, all -> 0x00df }
        r3 = r3 + r4;
        r2.<init>(r3);	 Catch:{ Exception -> 0x0057, all -> 0x00df }
        r1 = r2.append(r1);	 Catch:{ Exception -> 0x0057, all -> 0x00df }
        r0 = r1.append(r0);	 Catch:{ Exception -> 0x0057, all -> 0x00df }
        r1 = "/";
        r0 = r0.append(r1);	 Catch:{ Exception -> 0x0057, all -> 0x00df }
        r0 = r0.append(r8);	 Catch:{ Exception -> 0x0057, all -> 0x00df }
        r0 = r0.toString();	 Catch:{ Exception -> 0x0057, all -> 0x00df }
        r1 = android.net.Uri.parse(r0);	 Catch:{ Exception -> 0x0057, all -> 0x00df }
        if (r7 == 0) goto L_0x004e;
    L_0x0048:
        r0 = r7.getContentResolver();	 Catch:{ Exception -> 0x0057, all -> 0x00df }
        if (r0 != 0) goto L_0x0069;
    L_0x004e:
        r0 = new com.google.android.gms.dynamite.DynamiteModule$a;	 Catch:{ Exception -> 0x0057, all -> 0x00df }
        r1 = "Failed to get dynamite module ContentResolver.";
        r2 = 0;
        r0.<init>(r1, r2);	 Catch:{ Exception -> 0x0057, all -> 0x00df }
        throw r0;	 Catch:{ Exception -> 0x0057, all -> 0x00df }
    L_0x0057:
        r0 = move-exception;
        r1 = r6;
    L_0x0059:
        r2 = r0 instanceof com.google.android.gms.dynamite.DynamiteModule.a;	 Catch:{ all -> 0x005e }
        if (r2 == 0) goto L_0x00d6;
    L_0x005d:
        throw r0;	 Catch:{ all -> 0x005e }
    L_0x005e:
        r0 = move-exception;
        r6 = r1;
    L_0x0060:
        if (r6 == 0) goto L_0x0065;
    L_0x0062:
        r6.close();
    L_0x0065:
        throw r0;
    L_0x0066:
        r0 = "api";
        goto L_0x0005;
    L_0x0069:
        r2 = 0;
        r3 = 0;
        r4 = 0;
        r5 = 0;
        r1 = r0.query(r1, r2, r3, r4, r5);	 Catch:{ Exception -> 0x0057, all -> 0x00df }
        if (r1 == 0) goto L_0x0079;
    L_0x0073:
        r0 = r1.moveToFirst();	 Catch:{ Exception -> 0x0089 }
        if (r0 != 0) goto L_0x008b;
    L_0x0079:
        r0 = "DynamiteModule";
        r2 = "Failed to retrieve remote module version.";
        android.util.Log.w(r0, r2);	 Catch:{ Exception -> 0x0089 }
        r0 = new com.google.android.gms.dynamite.DynamiteModule$a;	 Catch:{ Exception -> 0x0089 }
        r2 = "Failed to connect to dynamite module ContentResolver.";
        r3 = 0;
        r0.<init>(r2, r3);	 Catch:{ Exception -> 0x0089 }
        throw r0;	 Catch:{ Exception -> 0x0089 }
    L_0x0089:
        r0 = move-exception;
        goto L_0x0059;
    L_0x008b:
        r0 = 0;
        r0 = r1.getInt(r0);	 Catch:{ Exception -> 0x0089 }
        if (r0 <= 0) goto L_0x00cd;
    L_0x0092:
        r2 = com.google.android.gms.dynamite.DynamiteModule.class;
        monitor-enter(r2);	 Catch:{ Exception -> 0x0089 }
        r3 = 3;
        r3 = r1.getString(r3);	 Catch:{ all -> 0x00d3 }
        r4 = 0;
        r3 = android.util.Base64.decode(r3, r4);	 Catch:{ all -> 0x00d3 }
        r4 = g;	 Catch:{ all -> 0x00d3 }
        r5 = new java.lang.StringBuilder;	 Catch:{ all -> 0x00d3 }
        r6 = java.lang.String.valueOf(r8);	 Catch:{ all -> 0x00d3 }
        r6 = r6.length();	 Catch:{ all -> 0x00d3 }
        r6 = r6 + 12;
        r5.<init>(r6);	 Catch:{ all -> 0x00d3 }
        r5 = r5.append(r8);	 Catch:{ all -> 0x00d3 }
        r6 = ":";
        r5 = r5.append(r6);	 Catch:{ all -> 0x00d3 }
        r5 = r5.append(r0);	 Catch:{ all -> 0x00d3 }
        r5 = r5.toString();	 Catch:{ all -> 0x00d3 }
        r4.put(r5, r3);	 Catch:{ all -> 0x00d3 }
        r3 = 2;
        r3 = r1.getString(r3);	 Catch:{ all -> 0x00d3 }
        h = r3;	 Catch:{ all -> 0x00d3 }
        monitor-exit(r2);	 Catch:{ all -> 0x00d3 }
    L_0x00cd:
        if (r1 == 0) goto L_0x00d2;
    L_0x00cf:
        r1.close();
    L_0x00d2:
        return r0;
    L_0x00d3:
        r0 = move-exception;
        monitor-exit(r2);	 Catch:{ all -> 0x00d3 }
        throw r0;	 Catch:{ Exception -> 0x0089 }
    L_0x00d6:
        r2 = new com.google.android.gms.dynamite.DynamiteModule$a;	 Catch:{ all -> 0x005e }
        r3 = "V2 version check failed";
        r4 = 0;
        r2.<init>(r3, r0, r4);	 Catch:{ all -> 0x005e }
        throw r2;	 Catch:{ all -> 0x005e }
    L_0x00df:
        r0 = move-exception;
        goto L_0x0060;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.dynamite.DynamiteModule.b(android.content.Context, java.lang.String, boolean):int");
    }

    private static DynamiteModule b(Context context, String str) {
        String str2 = "DynamiteModule";
        String str3 = "Selected local version of ";
        String valueOf = String.valueOf(str);
        Log.i(str2, valueOf.length() != 0 ? str3.concat(valueOf) : new String(str3));
        return new DynamiteModule(context.getApplicationContext());
    }

    private static DynamiteModule c(Context context, String str, int i) {
        Log.i("DynamiteModule", new StringBuilder(String.valueOf(str).length() + 51).append("Selected remote version of ").append(str).append(", version >= ").append(i).toString());
        a a = a(context);
        if (a == null) {
            throw new a("Failed to create IDynamiteLoader.", null);
        }
        try {
            com.google.android.gms.a.a a2 = a.a(com.google.android.gms.a.b.a((Object) context), str, i);
            if (com.google.android.gms.a.b.a(a2) != null) {
                return new DynamiteModule((Context) com.google.android.gms.a.b.a(a2));
            }
            throw new a("Failed to load remote module.", null);
        } catch (RemoteException e) {
            throw new a("Failed to load remote module.", e, null);
        }
    }

    private static ClassLoader c(Context context, String str) {
        ClassLoader classLoader;
        synchronized (DynamiteLoaderClassLoader.class) {
            if (DynamiteLoaderClassLoader.sClassLoader != null) {
                classLoader = DynamiteLoaderClassLoader.sClassLoader;
            } else {
                Class loadClass = context.getApplicationContext().getClassLoader().loadClass(DynamiteLoaderClassLoader.class.getName());
                Field declaredField = loadClass.getDeclaredField("sClassLoader");
                synchronized (loadClass) {
                    DynamiteLoaderClassLoader.sClassLoader = (ClassLoader) declaredField.get(null);
                    if (DynamiteLoaderClassLoader.sClassLoader != null) {
                        classLoader = DynamiteLoaderClassLoader.sClassLoader;
                    } else {
                        DynamiteLoaderClassLoader.sClassLoader = new PathClassLoader(str, ClassLoader.getSystemClassLoader()) {
                            /* Access modifiers changed, original: protected */
                            public Class<?> loadClass(String str, boolean z) {
                                if (!(str.startsWith("java.") || str.startsWith("android."))) {
                                    try {
                                        return findClass(str);
                                    } catch (ClassNotFoundException e) {
                                    }
                                }
                                return super.loadClass(str, z);
                            }
                        };
                        declaredField.set(null, DynamiteLoaderClassLoader.sClassLoader);
                        classLoader = DynamiteLoaderClassLoader.sClassLoader;
                    }
                }
            }
        }
        return classLoader;
    }

    private static DynamiteModule d(Context context, String str, int i) {
        byte[] bArr;
        String str2;
        Log.i("DynamiteModule", new StringBuilder(String.valueOf(str).length() + 51).append("Selected remote version of ").append(str).append(", version >= ").append(i).toString());
        synchronized (DynamiteModule.class) {
            bArr = (byte[]) g.get(new StringBuilder(String.valueOf(str).length() + 12).append(str).append(":").append(i).toString());
            str2 = h;
        }
        if (bArr == null) {
            throw new a("Module implementation could not be found.", null);
        }
        Context a = a(context.getApplicationContext(), str, bArr, str2);
        if (a != null) {
            return new DynamiteModule(a);
        }
        throw new a("Failed to get module context", null);
    }

    public Context a() {
        return this.k;
    }
}
