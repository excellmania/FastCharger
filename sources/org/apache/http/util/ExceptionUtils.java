package org.apache.http.util;

import java.lang.reflect.Method;

public final class ExceptionUtils {
    private static final Method INIT_CAUSE_METHOD = getInitCauseMethod();
    static Class class$java$lang$Throwable;

    private ExceptionUtils() {
    }

    static Class class$(String str) {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException e) {
            throw new NoClassDefFoundError(e.getMessage());
        }
    }

    private static Method getInitCauseMethod() {
        try {
            Class class$;
            Class[] clsArr = new Class[1];
            if (class$java$lang$Throwable == null) {
                class$ = class$("java.lang.Throwable");
                class$java$lang$Throwable = class$;
            } else {
                class$ = class$java$lang$Throwable;
            }
            clsArr[0] = class$;
            if (class$java$lang$Throwable == null) {
                class$ = class$("java.lang.Throwable");
                class$java$lang$Throwable = class$;
            } else {
                class$ = class$java$lang$Throwable;
            }
            return class$.getMethod("initCause", clsArr);
        } catch (NoSuchMethodException e) {
            return null;
        }
    }

    public static void initCause(Throwable th, Throwable th2) {
        if (INIT_CAUSE_METHOD != null) {
            try {
                INIT_CAUSE_METHOD.invoke(th, new Object[]{th2});
            } catch (Exception e) {
            }
        }
    }
}
