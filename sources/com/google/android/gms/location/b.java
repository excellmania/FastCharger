package com.google.android.gms.location;

import android.location.Location;
import android.support.annotation.RequiresPermission;
import com.google.android.gms.common.api.GoogleApiClient;

public interface b {
    @RequiresPermission(anyOf = {"android.permission.ACCESS_COARSE_LOCATION", "android.permission.ACCESS_FINE_LOCATION"})
    Location a(GoogleApiClient googleApiClient);
}
