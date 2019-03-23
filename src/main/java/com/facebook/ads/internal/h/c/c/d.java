package com.facebook.ads.internal.h.c.c;

import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.SurfaceTexture;
import android.media.MediaPlayer;
import android.media.MediaPlayer.OnBufferingUpdateListener;
import android.media.MediaPlayer.OnCompletionListener;
import android.media.MediaPlayer.OnErrorListener;
import android.media.MediaPlayer.OnInfoListener;
import android.media.MediaPlayer.OnPreparedListener;
import android.media.MediaPlayer.OnVideoSizeChangedListener;
import android.net.Uri;
import android.support.annotation.Nullable;
import android.util.Log;
import android.view.MotionEvent;
import android.view.Surface;
import android.view.TextureView;
import android.view.TextureView.SurfaceTextureListener;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.View.OnTouchListener;
import android.widget.MediaController;
import android.widget.MediaController.MediaPlayerControl;

@TargetApi(14)
public class d extends TextureView implements OnBufferingUpdateListener, OnCompletionListener, OnErrorListener, OnInfoListener, OnPreparedListener, OnVideoSizeChangedListener, SurfaceTextureListener, MediaPlayerControl, e {
    private static final String p = d.class.getSimpleName();
    private Uri a;
    private h b;
    private Surface c;
    @Nullable
    private MediaPlayer d;
    private MediaController e;
    private g f = g.IDLE;
    private g g = g.IDLE;
    private View h;
    private int i;
    private long j;
    private long k;
    private int l = 0;
    private int m = 0;
    private float n = 1.0f;
    private boolean o = false;

    public d(Context context) {
        super(context);
    }

    private void setVideoState(g gVar) {
        if (gVar != this.f) {
            this.f = gVar;
            if (this.b != null) {
                this.b.a(gVar);
            }
        }
    }

    public void a() {
        this.g = g.IDLE;
        if (this.d != null) {
            int currentPosition = this.d.getCurrentPosition();
            if (currentPosition > 0) {
                this.i = currentPosition;
            }
            this.d.stop();
            this.d.reset();
            this.d.release();
            this.d = null;
            if (this.e != null) {
                this.e.hide();
                this.e.setEnabled(false);
            }
        }
        setVideoState(g.IDLE);
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
        return this.d.getAudioSessionId();
    }

    public int getBufferPercentage() {
        return 0;
    }

    public int getCurrentPosition() {
        return this.d != null ? this.d.getCurrentPosition() : 0;
    }

    public int getDuration() {
        return this.d == null ? 0 : this.d.getDuration();
    }

    public long getInitialBufferTime() {
        return this.k;
    }

    public g getState() {
        return this.f;
    }

    public g getTargetState() {
        return this.g;
    }

    public boolean isPlaying() {
        return this.d == null ? false : this.d.isPlaying();
    }

    public void onBufferingUpdate(MediaPlayer mediaPlayer, int i) {
    }

    public void onCompletion(MediaPlayer mediaPlayer) {
        setVideoState(g.PLAYBACK_COMPLETED);
        a();
        setup(this.a);
        this.i = 0;
    }

    public boolean onError(MediaPlayer mediaPlayer, int i, int i2) {
        setVideoState(g.ERROR);
        a();
        return true;
    }

    public boolean onInfo(MediaPlayer mediaPlayer, int i, int i2) {
        switch (i) {
            case 701:
                setVideoState(g.BUFFERING);
                break;
            case 702:
                setVideoState(g.STARTED);
                break;
        }
        return false;
    }

    /* Access modifiers changed, original: protected */
    public void onMeasure(int i, int i2) {
        int defaultSize = getDefaultSize(this.l, i);
        int defaultSize2 = getDefaultSize(this.m, i2);
        if (this.l > 0 && this.m > 0) {
            int mode = MeasureSpec.getMode(i);
            int size = MeasureSpec.getSize(i);
            int mode2 = MeasureSpec.getMode(i2);
            defaultSize2 = MeasureSpec.getSize(i2);
            if (mode == 1073741824 && mode2 == 1073741824) {
                if (this.l * defaultSize2 < this.m * size) {
                    defaultSize = (this.l * defaultSize2) / this.m;
                } else if (this.l * defaultSize2 > this.m * size) {
                    defaultSize2 = (this.m * size) / this.l;
                    defaultSize = size;
                } else {
                    defaultSize = size;
                }
            } else if (mode == 1073741824) {
                defaultSize = (this.m * size) / this.l;
                if (mode2 != Integer.MIN_VALUE || defaultSize <= defaultSize2) {
                    defaultSize2 = defaultSize;
                    defaultSize = size;
                } else {
                    defaultSize = size;
                }
            } else if (mode2 == 1073741824) {
                defaultSize = (this.l * defaultSize2) / this.m;
                if (mode == Integer.MIN_VALUE && defaultSize > size) {
                    defaultSize = size;
                }
            } else {
                int i3 = this.l;
                defaultSize = this.m;
                if (mode2 != Integer.MIN_VALUE || defaultSize <= defaultSize2) {
                    defaultSize2 = defaultSize;
                    defaultSize = i3;
                } else {
                    defaultSize = (this.l * defaultSize2) / this.m;
                }
                if (mode == Integer.MIN_VALUE && defaultSize > size) {
                    defaultSize2 = (this.m * size) / this.l;
                    defaultSize = size;
                }
            }
        }
        setMeasuredDimension(defaultSize, defaultSize2);
    }

    public void onPrepared(MediaPlayer mediaPlayer) {
        this.k = System.currentTimeMillis() - this.j;
        setVideoState(g.PREPARED);
        if (this.o) {
            this.e = new MediaController(getContext());
            this.e.setAnchorView(this.h == null ? this : this.h);
            this.e.setMediaPlayer(this);
            this.e.setEnabled(true);
        }
        setRequestedVolume(this.n);
        this.l = mediaPlayer.getVideoWidth();
        this.m = mediaPlayer.getVideoHeight();
        if (this.i > 0) {
            if (this.i >= this.d.getDuration()) {
                this.i = 0;
            }
            this.d.seekTo(this.i);
            this.i = 0;
        }
        if (this.g == g.STARTED) {
            start();
        }
    }

    public void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i, int i2) {
        this.c = new Surface(surfaceTexture);
        if (this.d != null) {
            this.d.setSurface(this.c);
            return;
        }
        MediaPlayer mediaPlayer = new MediaPlayer();
        try {
            mediaPlayer.setDataSource(getContext(), this.a);
            mediaPlayer.setLooping(false);
            mediaPlayer.setOnBufferingUpdateListener(this);
            mediaPlayer.setOnCompletionListener(this);
            mediaPlayer.setOnErrorListener(this);
            mediaPlayer.setOnInfoListener(this);
            mediaPlayer.setOnPreparedListener(this);
            mediaPlayer.setSurface(this.c);
            mediaPlayer.setOnVideoSizeChangedListener(this);
            this.j = System.currentTimeMillis();
            mediaPlayer.prepareAsync();
            this.d = mediaPlayer;
            setVideoState(g.PREPARING);
        } catch (Exception e) {
            mediaPlayer.release();
            Log.e(p, "Cannot prepare media player with SurfaceTexture: " + e);
        }
    }

    public boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
        this.g = this.o ? g.STARTED : this.f;
        pause();
        return true;
    }

    public void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i, int i2) {
    }

    public void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
    }

    public void onVideoSizeChanged(MediaPlayer mediaPlayer, int i, int i2) {
        this.l = mediaPlayer.getVideoWidth();
        this.m = mediaPlayer.getVideoHeight();
        if (this.l != 0 && this.m != 0) {
            requestLayout();
        }
    }

    public void pause() {
        if (this.d != null) {
            this.d.pause();
            setVideoState(g.PAUSED);
            return;
        }
        setVideoState(g.IDLE);
    }

    public void seekTo(int i) {
        if (this.d == null) {
            this.i = i;
        } else if (i < getDuration() && i > 0) {
            this.d.seekTo(i);
        }
    }

    public void setControlsAnchorView(View view) {
        this.h = view;
        view.setOnTouchListener(new OnTouchListener() {
            public boolean onTouch(View view, MotionEvent motionEvent) {
                if (d.this.e != null && motionEvent.getAction() == 1) {
                    if (d.this.e.isShowing()) {
                        d.this.e.hide();
                    } else {
                        d.this.e.show();
                    }
                }
                return true;
            }
        });
    }

    public void setFullScreen(boolean z) {
        this.o = z;
        if (this.o) {
            setOnTouchListener(new OnTouchListener() {
                public boolean onTouch(View view, MotionEvent motionEvent) {
                    if (d.this.e != null && motionEvent.getAction() == 1) {
                        if (d.this.e.isShowing()) {
                            d.this.e.hide();
                        } else {
                            d.this.e.show();
                        }
                    }
                    return true;
                }
            });
        }
    }

    public void setRequestedVolume(float f) {
        this.n = f;
        if (this.d != null && this.f != g.PREPARING && this.f != g.IDLE) {
            this.d.setVolume(f, f);
        }
    }

    public void setVideoMPD(String str) {
    }

    public void setVideoStateChangeListener(h hVar) {
        this.b = hVar;
    }

    public void setup(Uri uri) {
        this.a = uri;
        setSurfaceTextureListener(this);
        if (isAvailable()) {
            onSurfaceTextureAvailable(getSurfaceTexture(), 0, 0);
        }
    }

    public void start() {
        this.g = g.STARTED;
        if (this.f == g.PREPARED || this.f == g.PAUSED || this.f == g.PLAYBACK_COMPLETED) {
            if (this.d == null) {
                setup(this.a);
            } else {
                if (this.i > 0) {
                    this.d.seekTo(this.i);
                    this.i = 0;
                }
                this.d.start();
                setVideoState(g.STARTED);
            }
        }
        if (isAvailable()) {
            onSurfaceTextureAvailable(getSurfaceTexture(), 0, 0);
        }
    }
}
