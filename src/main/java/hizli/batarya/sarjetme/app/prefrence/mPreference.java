package hizli.batarya.sarjetme.app.prefrence;

import android.content.Context;
import android.preference.Preference;
import android.util.AttributeSet;
import android.view.View;
import android.widget.TextView;

public class mPreference extends Preference {
    public mPreference(Context context) {
        super(context);
    }

    public mPreference(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public mPreference(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    /* Access modifiers changed, original: protected */
    public void onBindView(View view) {
        super.onBindView(view);
        TextView textView = (TextView) view.findViewById(16908304);
        ((TextView) view.findViewById(16908310)).setTextColor(-1);
        textView.setTextColor(-1);
    }
}
