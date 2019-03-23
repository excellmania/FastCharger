package hizli.batarya.sarjetme.app.prefrence;

import android.content.Context;
import android.graphics.Color;
import android.preference.PreferenceCategory;
import android.util.AttributeSet;
import android.view.View;
import android.widget.TextView;

public class mPreferenceCatagory extends PreferenceCategory {
    public mPreferenceCatagory(Context context) {
        super(context);
    }

    public mPreferenceCatagory(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public mPreferenceCatagory(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    /* Access modifiers changed, original: protected */
    public void onBindView(View view) {
        super.onBindView(view);
        ((TextView) view.findViewById(16908310)).setTextColor(Color.parseColor("#FF9800"));
    }
}