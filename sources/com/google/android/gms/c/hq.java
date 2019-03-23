package com.google.android.gms.c;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

public interface hq extends IInterface {

    public static abstract class a extends Binder implements hq {

        private static class a implements hq {
            private IBinder a;

            a(IBinder iBinder) {
                this.a = iBinder;
            }

            public IBinder asBinder() {
                return this.a;
            }

            public hl createAdLoaderBuilder(com.google.android.gms.a.a aVar, String str, mo moVar, int i) {
                IBinder iBinder = null;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.ads.internal.client.IClientApi");
                    obtain.writeStrongBinder(aVar != null ? aVar.asBinder() : null);
                    obtain.writeString(str);
                    if (moVar != null) {
                        iBinder = moVar.asBinder();
                    }
                    obtain.writeStrongBinder(iBinder);
                    obtain.writeInt(i);
                    this.a.transact(3, obtain, obtain2, 0);
                    obtain2.readException();
                    hl a = com.google.android.gms.c.hl.a.a(obtain2.readStrongBinder());
                    return a;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public no createAdOverlay(com.google.android.gms.a.a aVar) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.ads.internal.client.IClientApi");
                    obtain.writeStrongBinder(aVar != null ? aVar.asBinder() : null);
                    this.a.transact(8, obtain, obtain2, 0);
                    obtain2.readException();
                    no a = com.google.android.gms.c.no.a.a(obtain2.readStrongBinder());
                    return a;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public hn createBannerAdManager(com.google.android.gms.a.a aVar, ha haVar, String str, mo moVar, int i) {
                IBinder iBinder = null;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.ads.internal.client.IClientApi");
                    obtain.writeStrongBinder(aVar != null ? aVar.asBinder() : null);
                    if (haVar != null) {
                        obtain.writeInt(1);
                        haVar.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeString(str);
                    if (moVar != null) {
                        iBinder = moVar.asBinder();
                    }
                    obtain.writeStrongBinder(iBinder);
                    obtain.writeInt(i);
                    this.a.transact(1, obtain, obtain2, 0);
                    obtain2.readException();
                    hn a = com.google.android.gms.c.hn.a.a(obtain2.readStrongBinder());
                    return a;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public ny createInAppPurchaseManager(com.google.android.gms.a.a aVar) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.ads.internal.client.IClientApi");
                    obtain.writeStrongBinder(aVar != null ? aVar.asBinder() : null);
                    this.a.transact(7, obtain, obtain2, 0);
                    obtain2.readException();
                    ny a = com.google.android.gms.c.ny.a.a(obtain2.readStrongBinder());
                    return a;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public hn createInterstitialAdManager(com.google.android.gms.a.a aVar, ha haVar, String str, mo moVar, int i) {
                IBinder iBinder = null;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.ads.internal.client.IClientApi");
                    obtain.writeStrongBinder(aVar != null ? aVar.asBinder() : null);
                    if (haVar != null) {
                        obtain.writeInt(1);
                        haVar.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeString(str);
                    if (moVar != null) {
                        iBinder = moVar.asBinder();
                    }
                    obtain.writeStrongBinder(iBinder);
                    obtain.writeInt(i);
                    this.a.transact(2, obtain, obtain2, 0);
                    obtain2.readException();
                    hn a = com.google.android.gms.c.hn.a.a(obtain2.readStrongBinder());
                    return a;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public jy createNativeAdViewDelegate(com.google.android.gms.a.a aVar, com.google.android.gms.a.a aVar2) {
                IBinder iBinder = null;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.ads.internal.client.IClientApi");
                    obtain.writeStrongBinder(aVar != null ? aVar.asBinder() : null);
                    if (aVar2 != null) {
                        iBinder = aVar2.asBinder();
                    }
                    obtain.writeStrongBinder(iBinder);
                    this.a.transact(5, obtain, obtain2, 0);
                    obtain2.readException();
                    jy a = com.google.android.gms.c.jy.a.a(obtain2.readStrongBinder());
                    return a;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public qr createRewardedVideoAd(com.google.android.gms.a.a aVar, mo moVar, int i) {
                IBinder iBinder = null;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.ads.internal.client.IClientApi");
                    obtain.writeStrongBinder(aVar != null ? aVar.asBinder() : null);
                    if (moVar != null) {
                        iBinder = moVar.asBinder();
                    }
                    obtain.writeStrongBinder(iBinder);
                    obtain.writeInt(i);
                    this.a.transact(6, obtain, obtain2, 0);
                    obtain2.readException();
                    qr a = com.google.android.gms.c.qr.a.a(obtain2.readStrongBinder());
                    return a;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public hn createSearchAdManager(com.google.android.gms.a.a aVar, ha haVar, String str, int i) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.ads.internal.client.IClientApi");
                    obtain.writeStrongBinder(aVar != null ? aVar.asBinder() : null);
                    if (haVar != null) {
                        obtain.writeInt(1);
                        haVar.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeString(str);
                    obtain.writeInt(i);
                    this.a.transact(10, obtain, obtain2, 0);
                    obtain2.readException();
                    hn a = com.google.android.gms.c.hn.a.a(obtain2.readStrongBinder());
                    return a;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public hs getMobileAdsSettingsManager(com.google.android.gms.a.a aVar) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.ads.internal.client.IClientApi");
                    obtain.writeStrongBinder(aVar != null ? aVar.asBinder() : null);
                    this.a.transact(4, obtain, obtain2, 0);
                    obtain2.readException();
                    hs a = com.google.android.gms.c.hs.a.a(obtain2.readStrongBinder());
                    return a;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public hs getMobileAdsSettingsManagerWithClientJarVersion(com.google.android.gms.a.a aVar, int i) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.ads.internal.client.IClientApi");
                    obtain.writeStrongBinder(aVar != null ? aVar.asBinder() : null);
                    obtain.writeInt(i);
                    this.a.transact(9, obtain, obtain2, 0);
                    obtain2.readException();
                    hs a = com.google.android.gms.c.hs.a.a(obtain2.readStrongBinder());
                    return a;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }

        public a() {
            attachInterface(this, "com.google.android.gms.ads.internal.client.IClientApi");
        }

        public static hq asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IClientApi");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof hq)) ? new a(iBinder) : (hq) queryLocalInterface;
        }

        public IBinder asBinder() {
            return this;
        }

        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
            IBinder iBinder = null;
            hn createBannerAdManager;
            hs mobileAdsSettingsManager;
            switch (i) {
                case 1:
                    parcel.enforceInterface("com.google.android.gms.ads.internal.client.IClientApi");
                    createBannerAdManager = createBannerAdManager(com.google.android.gms.a.a.a.a(parcel.readStrongBinder()), parcel.readInt() != 0 ? (ha) ha.CREATOR.createFromParcel(parcel) : null, parcel.readString(), com.google.android.gms.c.mo.a.a(parcel.readStrongBinder()), parcel.readInt());
                    parcel2.writeNoException();
                    if (createBannerAdManager != null) {
                        iBinder = createBannerAdManager.asBinder();
                    }
                    parcel2.writeStrongBinder(iBinder);
                    return true;
                case 2:
                    parcel.enforceInterface("com.google.android.gms.ads.internal.client.IClientApi");
                    createBannerAdManager = createInterstitialAdManager(com.google.android.gms.a.a.a.a(parcel.readStrongBinder()), parcel.readInt() != 0 ? (ha) ha.CREATOR.createFromParcel(parcel) : null, parcel.readString(), com.google.android.gms.c.mo.a.a(parcel.readStrongBinder()), parcel.readInt());
                    parcel2.writeNoException();
                    if (createBannerAdManager != null) {
                        iBinder = createBannerAdManager.asBinder();
                    }
                    parcel2.writeStrongBinder(iBinder);
                    return true;
                case 3:
                    parcel.enforceInterface("com.google.android.gms.ads.internal.client.IClientApi");
                    hl createAdLoaderBuilder = createAdLoaderBuilder(com.google.android.gms.a.a.a.a(parcel.readStrongBinder()), parcel.readString(), com.google.android.gms.c.mo.a.a(parcel.readStrongBinder()), parcel.readInt());
                    parcel2.writeNoException();
                    if (createAdLoaderBuilder != null) {
                        iBinder = createAdLoaderBuilder.asBinder();
                    }
                    parcel2.writeStrongBinder(iBinder);
                    return true;
                case 4:
                    parcel.enforceInterface("com.google.android.gms.ads.internal.client.IClientApi");
                    mobileAdsSettingsManager = getMobileAdsSettingsManager(com.google.android.gms.a.a.a.a(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    if (mobileAdsSettingsManager != null) {
                        iBinder = mobileAdsSettingsManager.asBinder();
                    }
                    parcel2.writeStrongBinder(iBinder);
                    return true;
                case 5:
                    parcel.enforceInterface("com.google.android.gms.ads.internal.client.IClientApi");
                    jy createNativeAdViewDelegate = createNativeAdViewDelegate(com.google.android.gms.a.a.a.a(parcel.readStrongBinder()), com.google.android.gms.a.a.a.a(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    if (createNativeAdViewDelegate != null) {
                        iBinder = createNativeAdViewDelegate.asBinder();
                    }
                    parcel2.writeStrongBinder(iBinder);
                    return true;
                case 6:
                    parcel.enforceInterface("com.google.android.gms.ads.internal.client.IClientApi");
                    qr createRewardedVideoAd = createRewardedVideoAd(com.google.android.gms.a.a.a.a(parcel.readStrongBinder()), com.google.android.gms.c.mo.a.a(parcel.readStrongBinder()), parcel.readInt());
                    parcel2.writeNoException();
                    if (createRewardedVideoAd != null) {
                        iBinder = createRewardedVideoAd.asBinder();
                    }
                    parcel2.writeStrongBinder(iBinder);
                    return true;
                case 7:
                    parcel.enforceInterface("com.google.android.gms.ads.internal.client.IClientApi");
                    ny createInAppPurchaseManager = createInAppPurchaseManager(com.google.android.gms.a.a.a.a(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    if (createInAppPurchaseManager != null) {
                        iBinder = createInAppPurchaseManager.asBinder();
                    }
                    parcel2.writeStrongBinder(iBinder);
                    return true;
                case 8:
                    parcel.enforceInterface("com.google.android.gms.ads.internal.client.IClientApi");
                    no createAdOverlay = createAdOverlay(com.google.android.gms.a.a.a.a(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    if (createAdOverlay != null) {
                        iBinder = createAdOverlay.asBinder();
                    }
                    parcel2.writeStrongBinder(iBinder);
                    return true;
                case 9:
                    parcel.enforceInterface("com.google.android.gms.ads.internal.client.IClientApi");
                    mobileAdsSettingsManager = getMobileAdsSettingsManagerWithClientJarVersion(com.google.android.gms.a.a.a.a(parcel.readStrongBinder()), parcel.readInt());
                    parcel2.writeNoException();
                    if (mobileAdsSettingsManager != null) {
                        iBinder = mobileAdsSettingsManager.asBinder();
                    }
                    parcel2.writeStrongBinder(iBinder);
                    return true;
                case 10:
                    parcel.enforceInterface("com.google.android.gms.ads.internal.client.IClientApi");
                    createBannerAdManager = createSearchAdManager(com.google.android.gms.a.a.a.a(parcel.readStrongBinder()), parcel.readInt() != 0 ? (ha) ha.CREATOR.createFromParcel(parcel) : null, parcel.readString(), parcel.readInt());
                    parcel2.writeNoException();
                    if (createBannerAdManager != null) {
                        iBinder = createBannerAdManager.asBinder();
                    }
                    parcel2.writeStrongBinder(iBinder);
                    return true;
                case 1598968902:
                    parcel2.writeString("com.google.android.gms.ads.internal.client.IClientApi");
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
    }

    hl createAdLoaderBuilder(com.google.android.gms.a.a aVar, String str, mo moVar, int i);

    no createAdOverlay(com.google.android.gms.a.a aVar);

    hn createBannerAdManager(com.google.android.gms.a.a aVar, ha haVar, String str, mo moVar, int i);

    ny createInAppPurchaseManager(com.google.android.gms.a.a aVar);

    hn createInterstitialAdManager(com.google.android.gms.a.a aVar, ha haVar, String str, mo moVar, int i);

    jy createNativeAdViewDelegate(com.google.android.gms.a.a aVar, com.google.android.gms.a.a aVar2);

    qr createRewardedVideoAd(com.google.android.gms.a.a aVar, mo moVar, int i);

    hn createSearchAdManager(com.google.android.gms.a.a aVar, ha haVar, String str, int i);

    hs getMobileAdsSettingsManager(com.google.android.gms.a.a aVar);

    hs getMobileAdsSettingsManagerWithClientJarVersion(com.google.android.gms.a.a aVar, int i);
}
