package cn.fanrunqi.waveprogress;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Paint.Align;
import android.graphics.Paint.Style;
import android.graphics.Path;
import android.graphics.PorterDuff.Mode;
import android.graphics.PorterDuffXfermode;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.os.Message;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.MeasureSpec;

public class WaveProgressView extends View {
    private int a;
    private int b;
    private Bitmap c;
    private Path d;
    private Paint e;
    private float f;
    private float g;
    private String h;
    private int i;
    private Paint j;
    private String k;
    private String l;
    private int m;
    private int n;
    private int o;
    private float p;
    private float q;
    private int r;
    private Handler s;

    public WaveProgressView(Context context) {
        this(context, null, 0);
    }

    public WaveProgressView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public WaveProgressView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f = 20.0f;
        this.g = 100.0f;
        this.h = "#5be4ef";
        this.i = 30;
        this.k = "";
        this.l = "#FFFFFF";
        this.m = 41;
        this.n = 100;
        this.o = 0;
        this.q = 0.0f;
        this.r = 10;
        this.s = new Handler() {
            public void handleMessage(Message message) {
                super.handleMessage(message);
                switch (message.what) {
                    case 1911:
                        WaveProgressView.this.invalidate();
                        sendEmptyMessageDelayed(1911, (long) WaveProgressView.this.r);
                        return;
                    default:
                        return;
                }
            }
        };
        a();
    }

    private Bitmap a(Drawable drawable) {
        if (drawable == null) {
            return null;
        }
        if (drawable instanceof BitmapDrawable) {
            return ((BitmapDrawable) drawable).getBitmap();
        }
        try {
            Bitmap createBitmap = Bitmap.createBitmap(drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight(), Config.ARGB_8888);
            Canvas canvas = new Canvas(createBitmap);
            drawable.setBounds(0, 0, canvas.getWidth(), canvas.getHeight());
            drawable.draw(canvas);
            return createBitmap;
        } catch (OutOfMemoryError e) {
            return null;
        }
    }

    private void a() {
        if (getBackground() == null) {
            throw new IllegalArgumentException(String.format("background is null.", new Object[0]));
        }
        this.c = a(getBackground());
        this.d = new Path();
        this.e = new Paint();
        this.e.setAntiAlias(true);
        this.e.setStyle(Style.FILL);
        this.j = new Paint();
        this.j.setAntiAlias(true);
        this.j.setTextAlign(Align.CENTER);
        this.s.sendEmptyMessageDelayed(1911, 100);
    }

    private Bitmap b() {
        int i;
        this.e.setColor(Color.parseColor(this.h));
        this.j.setColor(Color.parseColor(this.l));
        this.j.setTextSize((float) this.m);
        Paint paint = new Paint();
        paint.setAntiAlias(true);
        Bitmap createBitmap = Bitmap.createBitmap(this.a, this.b, Config.ARGB_8888);
        Canvas canvas = new Canvas(createBitmap);
        float f = (float) ((this.b * (this.n - this.o)) / this.n);
        if (this.p > f) {
            this.p -= (this.p - f) / 10.0f;
        }
        this.d.reset();
        this.d.moveTo(0.0f - this.q, this.p);
        int i2 = (this.a / (((int) this.g) * 4)) + 1;
        int i3 = 0;
        for (i = 0; i < i2 * 3; i++) {
            this.d.quadTo((this.g * ((float) (i3 + 1))) - this.q, this.p - this.f, (this.g * ((float) (i3 + 2))) - this.q, this.p);
            this.d.quadTo((this.g * ((float) (i3 + 3))) - this.q, this.p + this.f, (this.g * ((float) (i3 + 4))) - this.q, this.p);
            i3 += 4;
        }
        this.q += this.g / ((float) this.i);
        this.q %= this.g * 4.0f;
        this.d.lineTo((float) this.a, (float) this.b);
        this.d.lineTo(0.0f, (float) this.b);
        this.d.close();
        canvas.drawPath(this.d, this.e);
        i = Math.min(this.a, this.b);
        this.c = Bitmap.createScaledBitmap(this.c, i, i, false);
        paint.setXfermode(new PorterDuffXfermode(Mode.DST_ATOP));
        canvas.drawBitmap(this.c, 0.0f, 0.0f, paint);
        canvas.drawText(this.k, (float) (this.a / 2), (float) (this.b / 2), this.j);
        return createBitmap;
    }

    public void a(float f, float f2) {
        this.f = f;
        this.g = f2 / 2.0f;
    }

    public void a(int i, String str) {
        this.o = i;
        this.k = str;
    }

    public void a(String str, int i) {
        this.l = str;
        this.m = i;
    }

    /* Access modifiers changed, original: protected */
    public void onDraw(Canvas canvas) {
        if (this.c != null) {
            canvas.drawBitmap(b(), 0.0f, 0.0f, null);
        }
    }

    /* Access modifiers changed, original: protected */
    public void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        this.a = MeasureSpec.getSize(i);
        int size = MeasureSpec.getSize(i2);
        this.b = size;
        this.p = (float) size;
    }

    public void setMaxProgress(int i) {
        this.n = i;
    }

    public void setWaveColor(String str) {
        this.h = str;
    }

    public void setmWaveSpeed(int i) {
        this.i = i;
    }
}
