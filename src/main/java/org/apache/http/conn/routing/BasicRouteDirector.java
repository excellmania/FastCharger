package org.apache.http.conn.routing;

import org.apache.http.annotation.Immutable;

@Immutable
public class BasicRouteDirector implements HttpRouteDirector {
    /* Access modifiers changed, original: protected */
    public int directStep(RouteInfo routeInfo, RouteInfo routeInfo2) {
        return (routeInfo2.getHopCount() <= 1 && routeInfo.getTargetHost().equals(routeInfo2.getTargetHost()) && routeInfo.isSecure() == routeInfo2.isSecure()) ? (routeInfo.getLocalAddress() == null || routeInfo.getLocalAddress().equals(routeInfo2.getLocalAddress())) ? 0 : -1 : -1;
    }

    /* Access modifiers changed, original: protected */
    public int firstStep(RouteInfo routeInfo) {
        return routeInfo.getHopCount() > 1 ? 2 : 1;
    }

    public int nextStep(RouteInfo routeInfo, RouteInfo routeInfo2) {
        if (routeInfo != null) {
            return (routeInfo2 == null || routeInfo2.getHopCount() < 1) ? firstStep(routeInfo) : routeInfo.getHopCount() > 1 ? proxiedStep(routeInfo, routeInfo2) : directStep(routeInfo, routeInfo2);
        } else {
            throw new IllegalArgumentException("Planned route may not be null.");
        }
    }

    /* Access modifiers changed, original: protected */
    public int proxiedStep(RouteInfo routeInfo, RouteInfo routeInfo2) {
        if (routeInfo2.getHopCount() <= 1 || !routeInfo.getTargetHost().equals(routeInfo2.getTargetHost())) {
            return -1;
        }
        int hopCount = routeInfo.getHopCount();
        int hopCount2 = routeInfo2.getHopCount();
        if (hopCount < hopCount2) {
            return -1;
        }
        for (int i = 0; i < hopCount2 - 1; i++) {
            if (!routeInfo.getHopTarget(i).equals(routeInfo2.getHopTarget(i))) {
                return -1;
            }
        }
        return hopCount > hopCount2 ? 4 : (!routeInfo2.isTunnelled() || routeInfo.isTunnelled()) ? (!routeInfo2.isLayered() || routeInfo.isLayered()) ? (!routeInfo.isTunnelled() || routeInfo2.isTunnelled()) ? (!routeInfo.isLayered() || routeInfo2.isLayered()) ? routeInfo.isSecure() == routeInfo2.isSecure() ? 0 : -1 : 5 : 3 : -1 : -1;
    }
}
