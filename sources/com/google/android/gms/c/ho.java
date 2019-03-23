package com.google.android.gms.c;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

public interface ho extends IInterface {

    public static abstract class a extends Binder implements ho {

        private static class a implements ho {
            private IBinder a;

            a(IBinder iBinder) {
                this.a = iBinder;
            }

            public IBinder a(com.google.android.gms.a.a aVar, ha haVar, String str, mo moVar, int i) {
                IBinder iBinder = null;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.ads.internal.client.IAdManagerCreator");
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
                    iBinder = obtain2.readStrongBinder();
                    return iBinder;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public IBinder a(com.google.android.gms.a.a aVar, ha haVar, String str, mo moVar, int i, int i2) {
                IBinder iBinder = null;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.ads.internal.client.IAdManagerCreator");
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
                    obtain.writeInt(i2);
                    this.a.transact(2, obtain, obtain2, 0);
                    obtain2.readException();
                    iBinder = obtain2.readStrongBinder();
                    return iBinder;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public IBinder asBinder() {
                return this.a;
            }
        }

        public static ho a(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdManagerCreator");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof ho)) ? new a(iBinder) : (ho) queryLocalInterface;
        }

        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
            ha haVar = null;
            com.google.android.gms.a.a a;
            IBinder a2;
            switch (i) {
                case 1:
                    parcel.enforceInterface("com.google.android.gms.ads.internal.client.IAdManagerCreator");
                    a = com.google.android.gms.a.a.a.a(parcel.readStrongBinder());
                    if (parcel.readInt() != 0) {
                        haVar = (ha) ha.CREATOR.createFromParcel(parcel);
                    }
                    a2 = a(a, haVar, parcel.readString(), com.google.android.gms.c.mo.a.a(parcel.readStrongBinder()), parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeStrongBinder(a2);
                    return true;
                case 2:
                    parcel.enforceInterface("com.google.android.gms.ads.internal.client.IAdManagerCreator");
                    a = com.google.android.gms.a.a.a.a(parcel.readStrongBinder());
                    if (parcel.readInt() != 0) {
                        haVar = (ha) ha.CREATOR.createFromParcel(parcel);
                    }
                    a2 = a(a, haVar, parcel.readString(), com.google.android.gms.c.mo.a.a(parcel.readStrongBinder()), parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeStrongBinder(a2);
                    return true;
                case 1598968902:
                    parcel2.writeString("com.google.android.gms.ads.internal.client.IAdManagerCreator");
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
    }

    IBinder a(com.google.android.gms.a.a aVar, ha haVar, String str, mo moVar, int i);

    IBinder a(com.google.android.gms.a.a aVar, ha haVar, String str, mo moVar, int i, int i2);
}
