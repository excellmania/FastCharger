package com.google.android.gms.c;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.AlertDialog.Builder;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import android.content.DialogInterface.OnClickListener;
import android.os.Message;
import android.support.v4.media.session.PlaybackStateCompat;
import android.view.View;
import android.view.WindowManager.BadTokenException;
import android.webkit.ConsoleMessage;
import android.webkit.ConsoleMessage.MessageLevel;
import android.webkit.GeolocationPermissions.Callback;
import android.webkit.JsPromptResult;
import android.webkit.JsResult;
import android.webkit.WebChromeClient;
import android.webkit.WebChromeClient.CustomViewCallback;
import android.webkit.WebStorage.QuotaUpdater;
import android.webkit.WebView;
import android.webkit.WebView.WebViewTransport;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.google.android.gms.ads.internal.overlay.g;
import com.google.android.gms.ads.internal.v;

@TargetApi(11)
@pa
public class ty extends WebChromeClient {
    private final tr a;

    /* renamed from: com.google.android.gms.c.ty$7 */
    static /* synthetic */ class AnonymousClass7 {
        static final /* synthetic */ int[] a = new int[MessageLevel.values().length];

        static {
            try {
                a[MessageLevel.ERROR.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                a[MessageLevel.WARNING.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                a[MessageLevel.LOG.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                a[MessageLevel.TIP.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                a[MessageLevel.DEBUG.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
        }
    }

    public ty(tr trVar) {
        this.a = trVar;
    }

    private final Context a(WebView webView) {
        if (!(webView instanceof tr)) {
            return webView.getContext();
        }
        tr trVar = (tr) webView;
        Activity f = trVar.f();
        return f == null ? trVar.getContext() : f;
    }

    private static void a(Builder builder, String str, final JsResult jsResult) {
        builder.setMessage(str).setPositiveButton(17039370, new OnClickListener() {
            public void onClick(DialogInterface dialogInterface, int i) {
                jsResult.confirm();
            }
        }).setNegativeButton(17039360, new OnClickListener() {
            public void onClick(DialogInterface dialogInterface, int i) {
                jsResult.cancel();
            }
        }).setOnCancelListener(new OnCancelListener() {
            public void onCancel(DialogInterface dialogInterface) {
                jsResult.cancel();
            }
        }).create().show();
    }

    private static void a(Context context, Builder builder, String str, String str2, final JsPromptResult jsPromptResult) {
        LinearLayout linearLayout = new LinearLayout(context);
        linearLayout.setOrientation(1);
        TextView textView = new TextView(context);
        textView.setText(str);
        final EditText editText = new EditText(context);
        editText.setText(str2);
        linearLayout.addView(textView);
        linearLayout.addView(editText);
        builder.setView(linearLayout).setPositiveButton(17039370, new OnClickListener() {
            public void onClick(DialogInterface dialogInterface, int i) {
                jsPromptResult.confirm(editText.getText().toString());
            }
        }).setNegativeButton(17039360, new OnClickListener() {
            public void onClick(DialogInterface dialogInterface, int i) {
                jsPromptResult.cancel();
            }
        }).setOnCancelListener(new OnCancelListener() {
            public void onCancel(DialogInterface dialogInterface) {
                jsPromptResult.cancel();
            }
        }).create().show();
    }

    private final boolean a() {
        return v.e().a(this.a.getContext().getPackageManager(), this.a.getContext().getPackageName(), "android.permission.ACCESS_FINE_LOCATION") || v.e().a(this.a.getContext().getPackageManager(), this.a.getContext().getPackageName(), "android.permission.ACCESS_COARSE_LOCATION");
    }

    /* Access modifiers changed, original: protected|final */
    public final void a(View view, int i, CustomViewCallback customViewCallback) {
        g i2 = this.a.i();
        if (i2 == null) {
            sz.e("Could not get ad overlay when showing custom view.");
            customViewCallback.onCustomViewHidden();
            return;
        }
        i2.a(view, customViewCallback);
        i2.a(i);
    }

    /* Access modifiers changed, original: protected */
    public boolean a(Context context, String str, String str2, String str3, JsResult jsResult, JsPromptResult jsPromptResult, boolean z) {
        try {
            Builder builder = new Builder(context);
            builder.setTitle(str);
            if (z) {
                a(context, builder, str2, str3, jsPromptResult);
            } else {
                a(builder, str2, jsResult);
            }
        } catch (BadTokenException e) {
            sz.c("Fail to display Dialog.", e);
        }
        return true;
    }

    public final void onCloseWindow(WebView webView) {
        if (webView instanceof tr) {
            g i = ((tr) webView).i();
            if (i == null) {
                sz.e("Tried to close an AdWebView not associated with an overlay.");
                return;
            } else {
                i.a();
                return;
            }
        }
        sz.e("Tried to close a WebView that wasn't an AdWebView.");
    }

    public final boolean onConsoleMessage(ConsoleMessage consoleMessage) {
        String valueOf = String.valueOf(consoleMessage.message());
        String valueOf2 = String.valueOf(consoleMessage.sourceId());
        valueOf = new StringBuilder((String.valueOf(valueOf).length() + 19) + String.valueOf(valueOf2).length()).append("JS: ").append(valueOf).append(" (").append(valueOf2).append(":").append(consoleMessage.lineNumber()).append(")").toString();
        if (valueOf.contains("Application Cache")) {
            return super.onConsoleMessage(consoleMessage);
        }
        switch (AnonymousClass7.a[consoleMessage.messageLevel().ordinal()]) {
            case 1:
                sz.c(valueOf);
                break;
            case 2:
                sz.e(valueOf);
                break;
            case 3:
            case 4:
                sz.d(valueOf);
                break;
            case 5:
                sz.b(valueOf);
                break;
            default:
                sz.d(valueOf);
                break;
        }
        return super.onConsoleMessage(consoleMessage);
    }

    public final boolean onCreateWindow(WebView webView, boolean z, boolean z2, Message message) {
        WebViewTransport webViewTransport = (WebViewTransport) message.obj;
        WebView webView2 = new WebView(webView.getContext());
        webView2.setWebViewClient(this.a.l());
        webViewTransport.setWebView(webView2);
        message.sendToTarget();
        return true;
    }

    public final void onExceededDatabaseQuota(String str, String str2, long j, long j2, long j3, QuotaUpdater quotaUpdater) {
        long j4 = 5242880 - j3;
        if (j4 <= 0) {
            quotaUpdater.updateQuota(j);
            return;
        }
        if (j == 0) {
            if (j2 > j4 || j2 > 1048576) {
                j2 = 0;
            }
        } else if (j2 == 0) {
            j2 = Math.min(Math.min(PlaybackStateCompat.ACTION_PREPARE_FROM_URI, j4) + j, 1048576);
        } else {
            if (j2 <= Math.min(1048576 - j, j4)) {
                j += j2;
            }
            j2 = j;
        }
        quotaUpdater.updateQuota(j2);
    }

    public final void onGeolocationPermissionsShowPrompt(String str, Callback callback) {
        if (callback != null) {
            callback.invoke(str, a(), true);
        }
    }

    public final void onHideCustomView() {
        g i = this.a.i();
        if (i == null) {
            sz.e("Could not get ad overlay when hiding custom view.");
        } else {
            i.b();
        }
    }

    public final boolean onJsAlert(WebView webView, String str, String str2, JsResult jsResult) {
        return a(a(webView), str, str2, null, jsResult, null, false);
    }

    public final boolean onJsBeforeUnload(WebView webView, String str, String str2, JsResult jsResult) {
        return a(a(webView), str, str2, null, jsResult, null, false);
    }

    public final boolean onJsConfirm(WebView webView, String str, String str2, JsResult jsResult) {
        return a(a(webView), str, str2, null, jsResult, null, false);
    }

    public final boolean onJsPrompt(WebView webView, String str, String str2, String str3, JsPromptResult jsPromptResult) {
        return a(a(webView), str, str2, str3, null, jsPromptResult, true);
    }

    public final void onReachedMaxAppCacheSize(long j, long j2, QuotaUpdater quotaUpdater) {
        long j3 = PlaybackStateCompat.ACTION_PREPARE_FROM_URI + j;
        if (5242880 - j2 < j3) {
            quotaUpdater.updateQuota(0);
        } else {
            quotaUpdater.updateQuota(j3);
        }
    }

    public final void onShowCustomView(View view, CustomViewCallback customViewCallback) {
        a(view, -1, customViewCallback);
    }
}
