package hizli.batarya.sarjetme.app;

import android.app.Activity;
import android.support.v7.widget.CardView;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.ImageView;
import android.widget.TextView;

public class a extends ArrayAdapter<String> {
    private final Activity a;
    private final String[] b;
    private final String[] c;
    private final Integer[] d;

    public a(Activity activity, String[] strArr, String[] strArr2, Integer[] numArr) {
        super(activity, R.layout.detail_list_row, strArr);
        this.a = activity;
        this.b = strArr;
        this.d = numArr;
        this.c = strArr2;
    }

    public View getView(int i, View view, ViewGroup viewGroup) {
        View inflate = this.a.getLayoutInflater().inflate(R.layout.detail_list_row, null, true);
        ImageView imageView = (ImageView) inflate.findViewById(R.id.detailImageView);
        TextView textView = (TextView) inflate.findViewById(R.id.text_detail_value);
        CardView cardView = (CardView) inflate.findViewById(R.id.about_1);
        ((TextView) inflate.findViewById(R.id.text_detail_name)).setText(this.b[i]);
        textView.setText(this.c[i]);
        imageView.setImageResource(this.d[i].intValue());
        cardView.setCardBackgroundColor(this.a.getResources().getColor(R.color.cardcolor));
        cardView.setCardElevation(0.0f);
        return inflate;
    }
}
