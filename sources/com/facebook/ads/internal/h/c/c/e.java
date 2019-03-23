package com.facebook.ads.internal.h.c.c;

import android.net.Uri;
import android.view.View;

public interface e {
    void a();

    int getCurrentPosition();

    int getDuration();

    long getInitialBufferTime();

    g getState();

    g getTargetState();

    void pause();

    void seekTo(int i);

    void setControlsAnchorView(View view);

    void setFullScreen(boolean z);

    void setRequestedVolume(float f);

    void setVideoMPD(String str);

    void setVideoStateChangeListener(h hVar);

    void setup(Uri uri);

    void start();
}
