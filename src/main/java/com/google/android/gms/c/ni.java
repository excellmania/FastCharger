package com.google.android.gms.c;

import android.app.AlertDialog.Builder;
import android.app.DownloadManager;
import android.app.DownloadManager.Request;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.res.Resources;
import android.net.Uri;
import android.os.Environment;
import android.text.TextUtils;
import android.webkit.URLUtil;
import com.google.android.gms.a.b;
import com.google.android.gms.ads.internal.v;
import java.util.Map;
import org.apache.http.HttpHeaders;

@pa
public class ni extends nl {
    private final Map<String, String> a;
    private final Context b;

    public ni(tr trVar, Map<String, String> map) {
        super(trVar, "storePicture");
        this.a = map;
        this.b = trVar.f();
    }

    /* Access modifiers changed, original: 0000 */
    public Request a(String str, String str2) {
        Request request = new Request(Uri.parse(str));
        request.setDestinationInExternalPublicDir(Environment.DIRECTORY_PICTURES, str2);
        v.g().a(request);
        return request;
    }

    /* Access modifiers changed, original: 0000 */
    public String a(String str) {
        return Uri.parse(str).getLastPathSegment();
    }

    public void a() {
        if (this.b == null) {
            b("Activity context is not available");
        } else if (v.e().e(this.b).c()) {
            final String str = (String) this.a.get("iurl");
            String str2;
            if (TextUtils.isEmpty(str)) {
                b("Image url cannot be empty.");
            } else if (URLUtil.isValidUrl(str)) {
                final String a = a(str);
                if (v.e().c(a)) {
                    Resources s = v.i().s();
                    Builder d = v.e().d(this.b);
                    d.setTitle(s != null ? s.getString(b.store_picture_title) : "Save image");
                    d.setMessage(s != null ? s.getString(b.store_picture_message) : "Allow Ad to store image in Picture gallery?");
                    d.setPositiveButton(s != null ? s.getString(b.accept) : HttpHeaders.ACCEPT, new OnClickListener() {
                        public void onClick(DialogInterface dialogInterface, int i) {
                            try {
                                ((DownloadManager) ni.this.b.getSystemService("download")).enqueue(ni.this.a(str, a));
                            } catch (IllegalStateException e) {
                                ni.this.b("Could not store picture.");
                            }
                        }
                    });
                    d.setNegativeButton(s != null ? s.getString(b.decline) : "Decline", new OnClickListener() {
                        public void onClick(DialogInterface dialogInterface, int i) {
                            ni.this.b("User canceled the download.");
                        }
                    });
                    d.create().show();
                    return;
                }
                str2 = "Image type not recognized: ";
                str = String.valueOf(a);
                b(str.length() != 0 ? str2.concat(str) : new String(str2));
            } else {
                str2 = "Invalid image url: ";
                str = String.valueOf(str);
                b(str.length() != 0 ? str2.concat(str) : new String(str2));
            }
        } else {
            b("Feature is not supported by the device.");
        }
    }
}
