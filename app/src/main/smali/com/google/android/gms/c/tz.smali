.class public Lcom/google/android/gms/c/tz;
.super Lcom/google/android/gms/c/ub;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation

.annotation runtime Lcom/google/android/gms/c/pa;
.end annotation


# direct methods
.method public constructor <init>(Lcom/google/android/gms/c/tr;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/c/ub;-><init>(Lcom/google/android/gms/c/tr;Z)V

    return-void
.end method


# virtual methods
.method public shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/gms/c/tz;->a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/util/Map;)Landroid/webkit/WebResourceResponse;

    move-result-object v0

    return-object v0
.end method