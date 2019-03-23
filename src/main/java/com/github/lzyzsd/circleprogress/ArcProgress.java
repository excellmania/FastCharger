package com.github.lzyzsd.circleprogress;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Paint.Cap;
import android.graphics.Paint.Style;
import android.graphics.RectF;
import android.os.Bundle;
import android.os.Parcelable;
import android.text.TextPaint;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.MeasureSpec;
import com.github.lzyzsd.circleprogress.a.a;

public class ArcProgress extends View {
    private final float A;
    private float B;
    private final int C;
    protected Paint a;
    private Paint b;
    private RectF c;
    private float d;
    private float e;
    private float f;
    private String g;
    private float h;
    private int i;
    private int j;
    private int k;
    private int l;
    private int m;
    private float n;
    private String o;
    private float p;
    private float q;
    private final int r;
    private final int s;
    private final int t;
    private final float u;
    private final float v;
    private final float w;
    private final float x;
    private final String y;
    private final int z;

    public ArcProgress(Context context) {
        this(context, null);
    }

    public ArcProgress(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ArcProgress(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.c = new RectF();
        this.j = 0;
        this.o = "%";
        this.r = -1;
        this.s = Color.rgb(72, 106, 176);
        this.t = Color.rgb(66, 145, 241);
        this.z = 100;
        this.A = 288.0f;
        this.B = b.b(getResources(), 18.0f);
        this.C = (int) b.a(getResources(), 100.0f);
        this.B = b.b(getResources(), 40.0f);
        this.u = b.b(getResources(), 15.0f);
        this.v = b.a(getResources(), 4.0f);
        this.y = "%";
        this.w = b.b(getResources(), 10.0f);
        this.x = b.a(getResources(), 4.0f);
        TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, a.ArcProgress, i, 0);
        a(obtainStyledAttributes);
        obtainStyledAttributes.recycle();
        a();
    }

    /* Access modifiers changed, original: protected */
    public void a() {
        this.a = new TextPaint();
        this.a.setColor(this.i);
        this.a.setTextSize(this.h);
        this.a.setAntiAlias(true);
        this.b = new Paint();
        this.b.setColor(this.s);
        this.b.setAntiAlias(true);
        this.b.setStrokeWidth(this.d);
        this.b.setStyle(Style.STROKE);
        this.b.setStrokeCap(Cap.ROUND);
    }

    /* Access modifiers changed, original: protected */
    public void a(TypedArray typedArray) {
        this.l = typedArray.getColor(a.ArcProgress_arc_finished_color, -1);
        this.m = typedArray.getColor(a.ArcProgress_arc_unfinished_color, this.s);
        this.i = typedArray.getColor(a.ArcProgress_arc_text_color, this.t);
        this.h = typedArray.getDimension(a.ArcProgress_arc_text_size, this.B);
        this.n = typedArray.getDimension(a.ArcProgress_arc_angle, 288.0f);
        setMax(typedArray.getInt(a.ArcProgress_arc_max, 100));
        setProgress(typedArray.getInt(a.ArcProgress_arc_progress, 0));
        this.d = typedArray.getDimension(a.ArcProgress_arc_stroke_width, this.x);
        this.e = typedArray.getDimension(a.ArcProgress_arc_suffix_text_size, this.u);
        this.o = TextUtils.isEmpty(typedArray.getString(a.ArcProgress_arc_suffix_text)) ? this.y : typedArray.getString(a.ArcProgress_arc_suffix_text);
        this.p = typedArray.getDimension(a.ArcProgress_arc_suffix_text_padding, this.v);
        this.f = typedArray.getDimension(a.ArcProgress_arc_bottom_text_size, this.w);
        this.g = typedArray.getString(a.ArcProgress_arc_bottom_text);
    }

    public float getArcAngle() {
        return this.n;
    }

    public String getBottomText() {
        return this.g;
    }

    public float getBottomTextSize() {
        return this.f;
    }

    public int getFinishedStrokeColor() {
        return this.l;
    }

    public int getMax() {
        return this.k;
    }

    public int getProgress() {
        return this.j;
    }

    public float getStrokeWidth() {
        return this.d;
    }

    public String getSuffixText() {
        return this.o;
    }

    public float getSuffixTextPadding() {
        return this.p;
    }

    public float getSuffixTextSize() {
        return this.e;
    }

    /* Access modifiers changed, original: protected */
    public int getSuggestedMinimumHeight() {
        return this.C;
    }

    /* Access modifiers changed, original: protected */
    public int getSuggestedMinimumWidth() {
        return this.C;
    }

    public int getTextColor() {
        return this.i;
    }

    public float getTextSize() {
        return this.h;
    }

    public int getUnfinishedStrokeColor() {
        return this.m;
    }

    public void invalidate() {
        a();
        super.invalidate();
    }

    /* Access modifiers changed, original: protected */
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        float f = 270.0f - (this.n / 2.0f);
        float max = (((float) this.j) / ((float) getMax())) * this.n;
        this.b.setColor(this.m);
        canvas.drawArc(this.c, f, this.n, false, this.b);
        this.b.setColor(this.l);
        canvas.drawArc(this.c, f, max, false, this.b);
        String valueOf = String.valueOf(getProgress());
        if (!TextUtils.isEmpty(valueOf)) {
            this.a.setColor(this.i);
            this.a.setTextSize(this.h);
            float descent = this.a.descent() + this.a.ascent();
            f = (((float) getHeight()) - descent) / 2.0f;
            canvas.drawText(valueOf, (((float) getWidth()) - this.a.measureText(valueOf)) / 2.0f, f, this.a);
            this.a.setTextSize(this.e);
            float descent2 = this.a.descent() + this.a.ascent();
            canvas.drawText(this.o, (this.a.measureText(valueOf) + (((float) getWidth()) / 2.0f)) + this.p, (descent + f) - descent2, this.a);
        }
        if (!TextUtils.isEmpty(getBottomText())) {
            this.a.setTextSize(this.f);
            canvas.drawText(getBottomText(), (((float) getWidth()) - this.a.measureText(getBottomText())) / 2.0f, (((float) getHeight()) - this.q) - ((this.a.descent() + this.a.ascent()) / 2.0f), this.a);
        }
    }

    /* Access modifiers changed, original: protected */
    public void onMeasure(int i, int i2) {
        this.c.set(this.d / 2.0f, this.d / 2.0f, ((float) MeasureSpec.getSize(i)) - (this.d / 2.0f), ((float) MeasureSpec.getSize(i2)) - (this.d / 2.0f));
        this.q = (((float) getWidth()) / 2.0f) * ((float) (1.0d - Math.cos(((double) (((360.0f - this.n) / 2.0f) / 180.0f)) * 3.141592653589793d)));
        setMeasuredDimension(i, i2);
    }

    /* Access modifiers changed, original: protected */
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (parcelable instanceof Bundle) {
            Bundle bundle = (Bundle) parcelable;
            this.d = bundle.getFloat("stroke_width");
            this.e = bundle.getFloat("suffix_text_size");
            this.p = bundle.getFloat("suffix_text_padding");
            this.f = bundle.getFloat("bottom_text_size");
            this.g = bundle.getString("bottom_text");
            this.h = bundle.getFloat("text_size");
            this.i = bundle.getInt("text_color");
            setMax(bundle.getInt("max"));
            setProgress(bundle.getInt("progress"));
            this.l = bundle.getInt("finished_stroke_color");
            this.m = bundle.getInt("unfinished_stroke_color");
            this.o = bundle.getString("suffix");
            a();
            super.onRestoreInstanceState(bundle.getParcelable("saved_instance"));
            return;
        }
        super.onRestoreInstanceState(parcelable);
    }

    /* Access modifiers changed, original: protected */
    public Parcelable onSaveInstanceState() {
        Bundle bundle = new Bundle();
        bundle.putParcelable("saved_instance", super.onSaveInstanceState());
        bundle.putFloat("stroke_width", getStrokeWidth());
        bundle.putFloat("suffix_text_size", getSuffixTextSize());
        bundle.putFloat("suffix_text_padding", getSuffixTextPadding());
        bundle.putFloat("bottom_text_size", getBottomTextSize());
        bundle.putString("bottom_text", getBottomText());
        bundle.putFloat("text_size", getTextSize());
        bundle.putInt("text_color", getTextColor());
        bundle.putInt("progress", getProgress());
        bundle.putInt("max", getMax());
        bundle.putInt("finished_stroke_color", getFinishedStrokeColor());
        bundle.putInt("unfinished_stroke_color", getUnfinishedStrokeColor());
        bundle.putFloat("arc_angle", getArcAngle());
        bundle.putString("suffix", getSuffixText());
        return bundle;
    }

    public void setArcAngle(float f) {
        this.n = f;
        invalidate();
    }

    public void setBottomText(String str) {
        this.g = str;
        invalidate();
    }

    public void setBottomTextSize(float f) {
        this.f = f;
        invalidate();
    }

    public void setFinishedStrokeColor(int i) {
        this.l = i;
        invalidate();
    }

    public void setMax(int i) {
        if (i > 0) {
            this.k = i;
            invalidate();
        }
    }

    public void setProgress(int i) {
        this.j = i;
        if (this.j > getMax()) {
            this.j %= getMax();
        }
        invalidate();
    }

    public void setStrokeWidth(float f) {
        this.d = f;
        invalidate();
    }

    public void setSuffixText(String str) {
        this.o = str;
        invalidate();
    }

    public void setSuffixTextPadding(float f) {
        this.p = f;
        invalidate();
    }

    public void setSuffixTextSize(float f) {
        this.e = f;
        invalidate();
    }

    public void setTextColor(int i) {
        this.i = i;
        invalidate();
    }

    public void setTextSize(float f) {
        this.h = f;
        invalidate();
    }

    public void setUnfinishedStrokeColor(int i) {
        this.m = i;
        invalidate();
    }
}
