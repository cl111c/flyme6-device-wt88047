.class Lcom/android/exsettings/wifi/p2p/WifiP2pSettings$4;
.super Ljava/lang/Object;
.source "WifiP2pSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exsettings/wifi/p2p/WifiP2pSettings;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/wifi/p2p/WifiP2pSettings;


# direct methods
.method constructor <init>(Lcom/android/exsettings/wifi/p2p/WifiP2pSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/exsettings/wifi/p2p/WifiP2pSettings;

    .prologue
    .line 250
    iput-object p1, p0, Lcom/android/exsettings/wifi/p2p/WifiP2pSettings$4;->this$0:Lcom/android/exsettings/wifi/p2p/WifiP2pSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 253
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 254
    iget-object v0, p0, Lcom/android/exsettings/wifi/p2p/WifiP2pSettings$4;->this$0:Lcom/android/exsettings/wifi/p2p/WifiP2pSettings;

    invoke-static {v0}, Lcom/android/exsettings/wifi/p2p/WifiP2pSettings;->-get4(Lcom/android/exsettings/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 255
    iget-object v0, p0, Lcom/android/exsettings/wifi/p2p/WifiP2pSettings$4;->this$0:Lcom/android/exsettings/wifi/p2p/WifiP2pSettings;

    invoke-static {v0}, Lcom/android/exsettings/wifi/p2p/WifiP2pSettings;->-get4(Lcom/android/exsettings/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/exsettings/wifi/p2p/WifiP2pSettings$4;->this$0:Lcom/android/exsettings/wifi/p2p/WifiP2pSettings;

    invoke-static {v1}, Lcom/android/exsettings/wifi/p2p/WifiP2pSettings;->-get0(Lcom/android/exsettings/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v1

    .line 256
    new-instance v2, Lcom/android/exsettings/wifi/p2p/WifiP2pSettings$4$1;

    invoke-direct {v2, p0}, Lcom/android/exsettings/wifi/p2p/WifiP2pSettings$4$1;-><init>(Lcom/android/exsettings/wifi/p2p/WifiP2pSettings$4;)V

    .line 255
    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->cancelConnect(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 252
    :cond_0
    return-void
.end method
