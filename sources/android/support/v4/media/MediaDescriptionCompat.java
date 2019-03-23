package android.support.v4.media;

import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.support.annotation.Nullable;
import android.text.TextUtils;

public final class MediaDescriptionCompat implements Parcelable {
    public static final long BT_FOLDER_TYPE_ALBUMS = 2;
    public static final long BT_FOLDER_TYPE_ARTISTS = 3;
    public static final long BT_FOLDER_TYPE_GENRES = 4;
    public static final long BT_FOLDER_TYPE_MIXED = 0;
    public static final long BT_FOLDER_TYPE_PLAYLISTS = 5;
    public static final long BT_FOLDER_TYPE_TITLES = 1;
    public static final long BT_FOLDER_TYPE_YEARS = 6;
    public static final Creator<MediaDescriptionCompat> CREATOR = new Creator<MediaDescriptionCompat>() {
        public MediaDescriptionCompat createFromParcel(Parcel parcel) {
            return VERSION.SDK_INT < 21 ? new MediaDescriptionCompat(parcel, null) : MediaDescriptionCompat.fromMediaDescription(MediaDescriptionCompatApi21.fromParcel(parcel));
        }

        public MediaDescriptionCompat[] newArray(int i) {
            return new MediaDescriptionCompat[i];
        }
    };
    public static final String DESCRIPTION_KEY_MEDIA_URI = "android.support.v4.media.description.MEDIA_URI";
    public static final String DESCRIPTION_KEY_NULL_BUNDLE_FLAG = "android.support.v4.media.description.NULL_BUNDLE_FLAG";
    public static final String EXTRA_BT_FOLDER_TYPE = "android.media.extra.BT_FOLDER_TYPE";
    private final CharSequence mDescription;
    private Object mDescriptionObj;
    private final Bundle mExtras;
    private final Bitmap mIcon;
    private final Uri mIconUri;
    private final String mMediaId;
    private final Uri mMediaUri;
    private final CharSequence mSubtitle;
    private final CharSequence mTitle;

    public static final class Builder {
        private CharSequence mDescription;
        private Bundle mExtras;
        private Bitmap mIcon;
        private Uri mIconUri;
        private String mMediaId;
        private Uri mMediaUri;
        private CharSequence mSubtitle;
        private CharSequence mTitle;

        public MediaDescriptionCompat build() {
            return new MediaDescriptionCompat(this.mMediaId, this.mTitle, this.mSubtitle, this.mDescription, this.mIcon, this.mIconUri, this.mExtras, this.mMediaUri, null);
        }

        public Builder setDescription(@Nullable CharSequence charSequence) {
            this.mDescription = charSequence;
            return this;
        }

        public Builder setExtras(@Nullable Bundle bundle) {
            this.mExtras = bundle;
            return this;
        }

        public Builder setIconBitmap(@Nullable Bitmap bitmap) {
            this.mIcon = bitmap;
            return this;
        }

        public Builder setIconUri(@Nullable Uri uri) {
            this.mIconUri = uri;
            return this;
        }

        public Builder setMediaId(@Nullable String str) {
            this.mMediaId = str;
            return this;
        }

        public Builder setMediaUri(@Nullable Uri uri) {
            this.mMediaUri = uri;
            return this;
        }

        public Builder setSubtitle(@Nullable CharSequence charSequence) {
            this.mSubtitle = charSequence;
            return this;
        }

        public Builder setTitle(@Nullable CharSequence charSequence) {
            this.mTitle = charSequence;
            return this;
        }
    }

    private MediaDescriptionCompat(Parcel parcel) {
        this.mMediaId = parcel.readString();
        this.mTitle = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        this.mSubtitle = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        this.mDescription = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        this.mIcon = (Bitmap) parcel.readParcelable(null);
        this.mIconUri = (Uri) parcel.readParcelable(null);
        this.mExtras = parcel.readBundle();
        this.mMediaUri = (Uri) parcel.readParcelable(null);
    }

    /* synthetic */ MediaDescriptionCompat(Parcel parcel, AnonymousClass1 anonymousClass1) {
        this(parcel);
    }

    private MediaDescriptionCompat(String str, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, Bitmap bitmap, Uri uri, Bundle bundle, Uri uri2) {
        this.mMediaId = str;
        this.mTitle = charSequence;
        this.mSubtitle = charSequence2;
        this.mDescription = charSequence3;
        this.mIcon = bitmap;
        this.mIconUri = uri;
        this.mExtras = bundle;
        this.mMediaUri = uri2;
    }

    /* synthetic */ MediaDescriptionCompat(String str, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, Bitmap bitmap, Uri uri, Bundle bundle, Uri uri2, AnonymousClass1 anonymousClass1) {
        this(str, charSequence, charSequence2, charSequence3, bitmap, uri, bundle, uri2);
    }

    /* JADX WARNING: Removed duplicated region for block: B:20:0x0077  */
    /* JADX WARNING: Removed duplicated region for block: B:15:0x0057  */
    public static android.support.v4.media.MediaDescriptionCompat fromMediaDescription(java.lang.Object r6) {
        /*
        r1 = 0;
        if (r6 == 0) goto L_0x0009;
    L_0x0003:
        r0 = android.os.Build.VERSION.SDK_INT;
        r2 = 21;
        if (r0 >= r2) goto L_0x000a;
    L_0x0009:
        return r1;
    L_0x000a:
        r4 = new android.support.v4.media.MediaDescriptionCompat$Builder;
        r4.<init>();
        r0 = android.support.v4.media.MediaDescriptionCompatApi21.getMediaId(r6);
        r4.setMediaId(r0);
        r0 = android.support.v4.media.MediaDescriptionCompatApi21.getTitle(r6);
        r4.setTitle(r0);
        r0 = android.support.v4.media.MediaDescriptionCompatApi21.getSubtitle(r6);
        r4.setSubtitle(r0);
        r0 = android.support.v4.media.MediaDescriptionCompatApi21.getDescription(r6);
        r4.setDescription(r0);
        r0 = android.support.v4.media.MediaDescriptionCompatApi21.getIconBitmap(r6);
        r4.setIconBitmap(r0);
        r0 = android.support.v4.media.MediaDescriptionCompatApi21.getIconUri(r6);
        r4.setIconUri(r0);
        r2 = android.support.v4.media.MediaDescriptionCompatApi21.getExtras(r6);
        if (r2 != 0) goto L_0x0061;
    L_0x003f:
        r3 = r1;
    L_0x0040:
        if (r3 == 0) goto L_0x0075;
    L_0x0042:
        r0 = "android.support.v4.media.description.NULL_BUNDLE_FLAG";
        r0 = r2.containsKey(r0);
        if (r0 == 0) goto L_0x006b;
    L_0x004a:
        r0 = r2.size();
        r5 = 2;
        if (r0 != r5) goto L_0x006b;
    L_0x0051:
        r0 = r1;
    L_0x0052:
        r4.setExtras(r0);
        if (r3 == 0) goto L_0x0077;
    L_0x0057:
        r4.setMediaUri(r3);
    L_0x005a:
        r1 = r4.build();
        r1.mDescriptionObj = r6;
        goto L_0x0009;
    L_0x0061:
        r0 = "android.support.v4.media.description.MEDIA_URI";
        r0 = r2.getParcelable(r0);
        r0 = (android.net.Uri) r0;
        r3 = r0;
        goto L_0x0040;
    L_0x006b:
        r0 = "android.support.v4.media.description.MEDIA_URI";
        r2.remove(r0);
        r0 = "android.support.v4.media.description.NULL_BUNDLE_FLAG";
        r2.remove(r0);
    L_0x0075:
        r0 = r2;
        goto L_0x0052;
    L_0x0077:
        r0 = android.os.Build.VERSION.SDK_INT;
        r1 = 23;
        if (r0 < r1) goto L_0x005a;
    L_0x007d:
        r0 = android.support.v4.media.MediaDescriptionCompatApi23.getMediaUri(r6);
        r4.setMediaUri(r0);
        goto L_0x005a;
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v4.media.MediaDescriptionCompat.fromMediaDescription(java.lang.Object):android.support.v4.media.MediaDescriptionCompat");
    }

    public int describeContents() {
        return 0;
    }

    @Nullable
    public CharSequence getDescription() {
        return this.mDescription;
    }

    @Nullable
    public Bundle getExtras() {
        return this.mExtras;
    }

    @Nullable
    public Bitmap getIconBitmap() {
        return this.mIcon;
    }

    @Nullable
    public Uri getIconUri() {
        return this.mIconUri;
    }

    public Object getMediaDescription() {
        if (this.mDescriptionObj != null || VERSION.SDK_INT < 21) {
            return this.mDescriptionObj;
        }
        Object newInstance = Builder.newInstance();
        Builder.setMediaId(newInstance, this.mMediaId);
        Builder.setTitle(newInstance, this.mTitle);
        Builder.setSubtitle(newInstance, this.mSubtitle);
        Builder.setDescription(newInstance, this.mDescription);
        Builder.setIconBitmap(newInstance, this.mIcon);
        Builder.setIconUri(newInstance, this.mIconUri);
        Bundle bundle = this.mExtras;
        if (VERSION.SDK_INT < 23 && this.mMediaUri != null) {
            if (bundle == null) {
                bundle = new Bundle();
                bundle.putBoolean(DESCRIPTION_KEY_NULL_BUNDLE_FLAG, true);
            }
            bundle.putParcelable(DESCRIPTION_KEY_MEDIA_URI, this.mMediaUri);
        }
        Builder.setExtras(newInstance, bundle);
        if (VERSION.SDK_INT >= 23) {
            Builder.setMediaUri(newInstance, this.mMediaUri);
        }
        this.mDescriptionObj = Builder.build(newInstance);
        return this.mDescriptionObj;
    }

    @Nullable
    public String getMediaId() {
        return this.mMediaId;
    }

    @Nullable
    public Uri getMediaUri() {
        return this.mMediaUri;
    }

    @Nullable
    public CharSequence getSubtitle() {
        return this.mSubtitle;
    }

    @Nullable
    public CharSequence getTitle() {
        return this.mTitle;
    }

    public String toString() {
        return this.mTitle + ", " + this.mSubtitle + ", " + this.mDescription;
    }

    public void writeToParcel(Parcel parcel, int i) {
        if (VERSION.SDK_INT < 21) {
            parcel.writeString(this.mMediaId);
            TextUtils.writeToParcel(this.mTitle, parcel, i);
            TextUtils.writeToParcel(this.mSubtitle, parcel, i);
            TextUtils.writeToParcel(this.mDescription, parcel, i);
            parcel.writeParcelable(this.mIcon, i);
            parcel.writeParcelable(this.mIconUri, i);
            parcel.writeBundle(this.mExtras);
            parcel.writeParcelable(this.mMediaUri, i);
            return;
        }
        MediaDescriptionCompatApi21.writeToParcel(getMediaDescription(), parcel, i);
    }
}
