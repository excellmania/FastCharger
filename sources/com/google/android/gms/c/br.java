package com.google.android.gms.c;

import android.location.Location;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.location.b;
import com.google.android.gms.location.g;

public class br implements b {
    public Location a(GoogleApiClient googleApiClient) {
        try {
            return g.a(googleApiClient).k();
        } catch (Exception e) {
            return null;
        }
    }
}
