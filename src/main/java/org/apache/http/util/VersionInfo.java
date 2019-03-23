package org.apache.http.util;

import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Map;
import java.util.Properties;

public class VersionInfo {
    public static final String PROPERTY_MODULE = "info.module";
    public static final String PROPERTY_RELEASE = "info.release";
    public static final String PROPERTY_TIMESTAMP = "info.timestamp";
    public static final String UNAVAILABLE = "UNAVAILABLE";
    public static final String VERSION_PROPERTY_FILE = "version.properties";
    private final String infoClassloader;
    private final String infoModule;
    private final String infoPackage;
    private final String infoRelease;
    private final String infoTimestamp;

    protected VersionInfo(String str, String str2, String str3, String str4, String str5) {
        if (str == null) {
            throw new IllegalArgumentException("Package identifier must not be null.");
        }
        this.infoPackage = str;
        if (str2 == null) {
            str2 = UNAVAILABLE;
        }
        this.infoModule = str2;
        if (str3 == null) {
            str3 = UNAVAILABLE;
        }
        this.infoRelease = str3;
        if (str4 == null) {
            str4 = UNAVAILABLE;
        }
        this.infoTimestamp = str4;
        if (str5 == null) {
            str5 = UNAVAILABLE;
        }
        this.infoClassloader = str5;
    }

    protected static final VersionInfo fromMap(String str, Map map, ClassLoader classLoader) {
        String str2 = null;
        if (str == null) {
            throw new IllegalArgumentException("Package identifier must not be null.");
        }
        String str3;
        String str4;
        String str5;
        if (map != null) {
            String str6 = (String) map.get(PROPERTY_MODULE);
            String str7 = (str6 == null || str6.length() >= 1) ? str6 : null;
            str6 = (String) map.get(PROPERTY_RELEASE);
            str3 = (str6 == null || (str6.length() >= 1 && !str6.equals("${pom.version}"))) ? str6 : null;
            str6 = (String) map.get(PROPERTY_TIMESTAMP);
            if (str6 == null || (str6.length() >= 1 && !str6.equals("${mvn.timestamp}"))) {
                str4 = str6;
                str5 = str3;
                str3 = str7;
            } else {
                str4 = null;
                str5 = str3;
                str3 = str7;
            }
        } else {
            str4 = null;
            str5 = null;
            str3 = null;
        }
        if (classLoader != null) {
            str2 = classLoader.toString();
        }
        return new VersionInfo(str, str3, str5, str4, str2);
    }

    public static final VersionInfo loadVersionInfo(String str, ClassLoader classLoader) {
        if (str == null) {
            throw new IllegalArgumentException("Package identifier must not be null.");
        }
        Map properties;
        if (classLoader == null) {
            classLoader = Thread.currentThread().getContextClassLoader();
        }
        InputStream resourceAsStream;
        try {
            resourceAsStream = classLoader.getResourceAsStream(new StringBuffer().append(str.replace('.', '/')).append("/").append(VERSION_PROPERTY_FILE).toString());
            if (resourceAsStream != null) {
                properties = new Properties();
                properties.load(resourceAsStream);
                try {
                    resourceAsStream.close();
                } catch (IOException e) {
                }
            } else {
                properties = null;
            }
        } catch (IOException e2) {
            properties = null;
        } catch (Throwable th) {
            resourceAsStream.close();
        }
        return properties != null ? fromMap(str, properties, classLoader) : null;
    }

    public static final VersionInfo[] loadVersionInfo(String[] strArr, ClassLoader classLoader) {
        if (strArr == null) {
            throw new IllegalArgumentException("Package identifier list must not be null.");
        }
        ArrayList arrayList = new ArrayList(strArr.length);
        for (String loadVersionInfo : strArr) {
            VersionInfo loadVersionInfo2 = loadVersionInfo(loadVersionInfo, classLoader);
            if (loadVersionInfo2 != null) {
                arrayList.add(loadVersionInfo2);
            }
        }
        return (VersionInfo[]) arrayList.toArray(new VersionInfo[arrayList.size()]);
    }

    public final String getClassloader() {
        return this.infoClassloader;
    }

    public final String getModule() {
        return this.infoModule;
    }

    public final String getPackage() {
        return this.infoPackage;
    }

    public final String getRelease() {
        return this.infoRelease;
    }

    public final String getTimestamp() {
        return this.infoTimestamp;
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer(((((this.infoPackage.length() + 20) + this.infoModule.length()) + this.infoRelease.length()) + this.infoTimestamp.length()) + this.infoClassloader.length());
        stringBuffer.append("VersionInfo(").append(this.infoPackage).append(':').append(this.infoModule);
        if (!UNAVAILABLE.equals(this.infoRelease)) {
            stringBuffer.append(':').append(this.infoRelease);
        }
        if (!UNAVAILABLE.equals(this.infoTimestamp)) {
            stringBuffer.append(':').append(this.infoTimestamp);
        }
        stringBuffer.append(')');
        if (!UNAVAILABLE.equals(this.infoClassloader)) {
            stringBuffer.append('@').append(this.infoClassloader);
        }
        return stringBuffer.toString();
    }
}
