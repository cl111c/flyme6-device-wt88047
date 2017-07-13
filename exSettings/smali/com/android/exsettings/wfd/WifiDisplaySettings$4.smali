.class Lcom/android/exsettings/wfd/WifiDisplaySettings$4;
.super Landroid/media/MediaRouter$SimpleCallback;
.source "WifiDisplaySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/wfd/WifiDisplaySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/wfd/WifiDisplaySettings;


# direct methods
.method constructor <init>(Lcom/android/exsettings/wfd/WifiDisplaySettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/exsettings/wfd/WifiDisplaySettings;

    .prologue
    .line 622
    iput-object p1, p0, Lcom/android/exsettings/wfd/WifiDisplaySettings$4;->this$0:Lcom/android/exsettings/wfd/WifiDisplaySettings;

    invoke-direct {p0}, Landroid/media/MediaRouter$SimpleCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onRouteAdded(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;)V
    .locals 2
    .param p1, "router"    # Landroid/media/MediaRouter;
    .param p2, "info"    # Landroid/media/MediaRouter$RouteInfo;

    .prologue
    .line 625
    iget-object v0, p0, Lcom/android/exsettings/wfd/WifiDisplaySettings$4;->this$0:Lcom/android/exsettings/wfd/WifiDisplaySettings;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/exsettings/wfd/WifiDisplaySettings;->-wrap1(Lcom/android/exsettings/wfd/WifiDisplaySettings;I)V

    .line 624
    return-void
.end method

.method public onRouteChanged(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;)V
    .locals 2
    .param p1, "router"    # Landroid/media/MediaRouter;
    .param p2, "info"    # Landroid/media/MediaRouter$RouteInfo;

    .prologue
    .line 630
    iget-object v0, p0, Lcom/android/exsettings/wfd/WifiDisplaySettings$4;->this$0:Lcom/android/exsettings/wfd/WifiDisplaySettings;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/exsettings/wfd/WifiDisplaySettings;->-wrap1(Lcom/android/exsettings/wfd/WifiDisplaySettings;I)V

    .line 629
    return-void
.end method

.method public onRouteRemoved(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;)V
    .locals 2
    .param p1, "router"    # Landroid/media/MediaRouter;
    .param p2, "info"    # Landroid/media/MediaRouter$RouteInfo;

    .prologue
    .line 635
    iget-object v0, p0, Lcom/android/exsettings/wfd/WifiDisplaySettings$4;->this$0:Lcom/android/exsettings/wfd/WifiDisplaySettings;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/exsettings/wfd/WifiDisplaySettings;->-wrap1(Lcom/android/exsettings/wfd/WifiDisplaySettings;I)V

    .line 634
    return-void
.end method

.method public onRouteSelected(Landroid/media/MediaRouter;ILandroid/media/MediaRouter$RouteInfo;)V
    .locals 2
    .param p1, "router"    # Landroid/media/MediaRouter;
    .param p2, "type"    # I
    .param p3, "info"    # Landroid/media/MediaRouter$RouteInfo;

    .prologue
    .line 640
    iget-object v0, p0, Lcom/android/exsettings/wfd/WifiDisplaySettings$4;->this$0:Lcom/android/exsettings/wfd/WifiDisplaySettings;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/exsettings/wfd/WifiDisplaySettings;->-wrap1(Lcom/android/exsettings/wfd/WifiDisplaySettings;I)V

    .line 639
    return-void
.end method

.method public onRouteUnselected(Landroid/media/MediaRouter;ILandroid/media/MediaRouter$RouteInfo;)V
    .locals 2
    .param p1, "router"    # Landroid/media/MediaRouter;
    .param p2, "type"    # I
    .param p3, "info"    # Landroid/media/MediaRouter$RouteInfo;

    .prologue
    .line 645
    iget-object v0, p0, Lcom/android/exsettings/wfd/WifiDisplaySettings$4;->this$0:Lcom/android/exsettings/wfd/WifiDisplaySettings;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/exsettings/wfd/WifiDisplaySettings;->-wrap1(Lcom/android/exsettings/wfd/WifiDisplaySettings;I)V

    .line 644
    return-void
.end method
