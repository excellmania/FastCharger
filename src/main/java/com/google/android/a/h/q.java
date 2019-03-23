package com.google.android.a.h;

import android.widget.MediaController.MediaPlayerControl;
import com.google.android.a.h;

public class q implements MediaPlayerControl {
    private final h a;

    public q(h hVar) {
        this.a = hVar;
    }

    public boolean canPause() {
        return true;
    }

    public boolean canSeekBackward() {
        return true;
    }

    public boolean canSeekForward() {
        return true;
    }

    public int getAudioSessionId() {
        throw new UnsupportedOperationException();
    }

    public int getBufferPercentage() {
        return this.a.e();
    }

    public int getCurrentPosition() {
        return this.a.c() == -1 ? 0 : (int) this.a.d();
    }

    public int getDuration() {
        return this.a.c() == -1 ? 0 : (int) this.a.c();
    }

    public boolean isPlaying() {
        return this.a.a();
    }

    public void pause() {
        this.a.a(false);
    }

    public void seekTo(int i) {
        this.a.a(this.a.c() == -1 ? 0 : (long) Math.min(Math.max(0, i), getDuration()));
    }

    public void start() {
        this.a.a(true);
    }
}
