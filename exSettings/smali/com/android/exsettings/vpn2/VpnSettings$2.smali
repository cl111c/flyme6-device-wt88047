.class Lcom/android/exsettings/vpn2/VpnSettings$2;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "VpnSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/vpn2/VpnSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/vpn2/VpnSettings;


# direct methods
.method constructor <init>(Lcom/android/exsettings/vpn2/VpnSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/exsettings/vpn2/VpnSettings;

    .prologue
    .line 332
    iput-object p1, p0, Lcom/android/exsettings/vpn2/VpnSettings$2;->this$0:Lcom/android/exsettings/vpn2/VpnSettings;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 2
    .param p1, "network"    # Landroid/net/Network;

    .prologue
    .line 335
    iget-object v0, p0, Lcom/android/exsettings/vpn2/VpnSettings$2;->this$0:Lcom/android/exsettings/vpn2/VpnSettings;

    invoke-static {v0}, Lcom/android/exsettings/vpn2/VpnSettings;->-get0(Lcom/android/exsettings/vpn2/VpnSettings;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 336
    iget-object v0, p0, Lcom/android/exsettings/vpn2/VpnSettings$2;->this$0:Lcom/android/exsettings/vpn2/VpnSettings;

    invoke-static {v0}, Lcom/android/exsettings/vpn2/VpnSettings;->-get0(Lcom/android/exsettings/vpn2/VpnSettings;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 334
    :cond_0
    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 2
    .param p1, "network"    # Landroid/net/Network;

    .prologue
    .line 342
    iget-object v0, p0, Lcom/android/exsettings/vpn2/VpnSettings$2;->this$0:Lcom/android/exsettings/vpn2/VpnSettings;

    invoke-static {v0}, Lcom/android/exsettings/vpn2/VpnSettings;->-get0(Lcom/android/exsettings/vpn2/VpnSettings;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 343
    iget-object v0, p0, Lcom/android/exsettings/vpn2/VpnSettings$2;->this$0:Lcom/android/exsettings/vpn2/VpnSettings;

    invoke-static {v0}, Lcom/android/exsettings/vpn2/VpnSettings;->-get0(Lcom/android/exsettings/vpn2/VpnSettings;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 341
    :cond_0
    return-void
.end method
