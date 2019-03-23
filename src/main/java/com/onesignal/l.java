package com.onesignal;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;

public class l extends Activity {
    /* Access modifiers changed, original: protected */
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        m.a(this, getIntent());
        finish();
    }

    /* Access modifiers changed, original: protected */
    public void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        m.a(this, getIntent());
        finish();
    }
}
