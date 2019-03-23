package com.google.android.gms.common.internal;

import android.content.Context;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.res.Resources;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.v4.util.SimpleArrayMap;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.a.b;
import com.google.android.gms.c.at;
import com.google.android.gms.common.f;

public final class p {
    private static final SimpleArrayMap<String, String> a = new SimpleArrayMap();

    public static String a(Context context) {
        String str = context.getApplicationInfo().name;
        if (!TextUtils.isEmpty(str)) {
            return str;
        }
        str = context.getPackageName();
        try {
            return at.b(context).a(context.getPackageName()).toString();
        } catch (NameNotFoundException e) {
            return str;
        }
    }

    @Nullable
    public static String a(Context context, int i) {
        Resources resources = context.getResources();
        switch (i) {
            case 1:
                return resources.getString(b.common_google_play_services_install_title);
            case 2:
                return resources.getString(b.common_google_play_services_update_title);
            case 3:
                return resources.getString(b.common_google_play_services_enable_title);
            case 4:
            case 6:
            case 18:
                return null;
            case 5:
                Log.e("GoogleApiAvailability", "An invalid account was specified when connecting. Please provide a valid account.");
                return a(context, "common_google_play_services_invalid_account_title");
            case 7:
                Log.e("GoogleApiAvailability", "Network error occurred. Please retry request later.");
                return a(context, "common_google_play_services_network_error_title");
            case 8:
                Log.e("GoogleApiAvailability", "Internal error occurred. Please see logs for detailed information");
                return null;
            case 9:
                Log.e("GoogleApiAvailability", "Google Play services is invalid. Cannot recover.");
                return null;
            case 10:
                Log.e("GoogleApiAvailability", "Developer error occurred. Please see logs for detailed information");
                return null;
            case 11:
                Log.e("GoogleApiAvailability", "The application is not licensed to the user.");
                return null;
            case 16:
                Log.e("GoogleApiAvailability", "One of the API components you attempted to connect to is not available.");
                return null;
            case 17:
                Log.e("GoogleApiAvailability", "The specified account could not be signed in.");
                return a(context, "common_google_play_services_sign_in_failed_title");
            case 20:
                Log.e("GoogleApiAvailability", "The current user profile is restricted and could not use authenticated features.");
                return a(context, "common_google_play_services_restricted_profile_title");
            default:
                Log.e("GoogleApiAvailability", "Unexpected error code " + i);
                return null;
        }
    }

    @Nullable
    private static String a(Context context, String str) {
        synchronized (a) {
            String str2 = (String) a.get(str);
            if (str2 != null) {
                return str2;
            }
            Resources b = f.b(context);
            if (b == null) {
                return null;
            }
            int identifier = b.getIdentifier(str, "string", "com.google.android.gms");
            String str3;
            String str4;
            if (identifier == 0) {
                str3 = "GoogleApiAvailability";
                str4 = "Missing resource: ";
                str2 = String.valueOf(str);
                Log.w(str3, str2.length() != 0 ? str4.concat(str2) : new String(str4));
                return null;
            }
            str2 = b.getString(identifier);
            if (TextUtils.isEmpty(str2)) {
                str3 = "GoogleApiAvailability";
                str4 = "Got empty resource: ";
                str2 = String.valueOf(str);
                Log.w(str3, str2.length() != 0 ? str4.concat(str2) : new String(str4));
                return null;
            }
            a.put(str, str2);
            return str2;
        }
    }

    private static String a(Context context, String str, String str2) {
        Resources resources = context.getResources();
        String a = a(context, str);
        if (a == null) {
            a = resources.getString(b.common_google_play_services_unknown_issue);
        }
        return String.format(resources.getConfiguration().locale, a, new Object[]{str2});
    }

    @NonNull
    public static String b(Context context, int i) {
        String a = i == 6 ? a(context, "common_google_play_services_resolution_required_title") : a(context, i);
        return a == null ? context.getResources().getString(b.common_google_play_services_notification_ticker) : a;
    }

    @NonNull
    public static String c(Context context, int i) {
        Resources resources = context.getResources();
        String a = a(context);
        switch (i) {
            case 1:
                return resources.getString(b.common_google_play_services_install_text, new Object[]{a});
            case 2:
                if (com.google.android.gms.common.util.f.b(context)) {
                    return resources.getString(b.common_google_play_services_wear_update_text);
                }
                return resources.getString(b.common_google_play_services_update_text, new Object[]{a});
            case 3:
                return resources.getString(b.common_google_play_services_enable_text, new Object[]{a});
            case 5:
                return a(context, "common_google_play_services_invalid_account_text", a);
            case 7:
                return a(context, "common_google_play_services_network_error_text", a);
            case 9:
                return resources.getString(b.common_google_play_services_unsupported_text, new Object[]{a});
            case 16:
                return a(context, "common_google_play_services_api_unavailable_text", a);
            case 17:
                return a(context, "common_google_play_services_sign_in_failed_text", a);
            case 18:
                return resources.getString(b.common_google_play_services_updating_text, new Object[]{a});
            case 20:
                return a(context, "common_google_play_services_restricted_profile_text", a);
            default:
                return resources.getString(b.common_google_play_services_unknown_issue, new Object[]{a});
        }
    }

    @NonNull
    public static String d(Context context, int i) {
        return i == 6 ? a(context, "common_google_play_services_resolution_required_text", a(context)) : c(context, i);
    }

    @NonNull
    public static String e(Context context, int i) {
        Resources resources = context.getResources();
        switch (i) {
            case 1:
                return resources.getString(b.common_google_play_services_install_button);
            case 2:
                return resources.getString(b.common_google_play_services_update_button);
            case 3:
                return resources.getString(b.common_google_play_services_enable_button);
            default:
                return resources.getString(17039370);
        }
    }
}
