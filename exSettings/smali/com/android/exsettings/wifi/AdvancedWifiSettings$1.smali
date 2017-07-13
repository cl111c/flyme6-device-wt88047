.class Lcom/android/exsettings/wifi/AdvancedWifiSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "AdvancedWifiSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/wifi/AdvancedWifiSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/wifi/AdvancedWifiSettings;


# direct methods
.method constructor <init>(Lcom/android/exsettings/wifi/AdvancedWifiSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/exsettings/wifi/AdvancedWifiSettings;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/android/exsettings/wifi/AdvancedWifiSettings$1;->this$0:Lcom/android/exsettings/wifi/AdvancedWifiSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 80
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 81
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v2, "android.net.wifi.LINK_CONFIGURATION_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 82
    const-string/jumbo v2, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 81
    if-eqz v2, :cond_2

    .line 83
    :cond_0
    iget-object v2, p0, Lcom/android/exsettings/wifi/AdvancedWifiSettings$1;->this$0:Lcom/android/exsettings/wifi/AdvancedWifiSettings;

    invoke-static {v2}, Lcom/android/exsettings/wifi/AdvancedWifiSettings;->-wrap0(Lcom/android/exsettings/wifi/AdvancedWifiSettings;)V

    .line 79
    :cond_1
    :goto_0
    return-void

    .line 84
    :cond_2
    const-string/jumbo v2, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 85
    const-string/jumbo v2, "wifi_state"

    .line 86
    const/4 v5, 0x4

    .line 85
    invoke-virtual {p2, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 87
    .local v1, "state":I
    iget-object v2, p0, Lcom/android/exsettings/wifi/AdvancedWifiSettings$1;->this$0:Lcom/android/exsettings/wifi/AdvancedWifiSettings;

    invoke-static {v2}, Lcom/android/exsettings/wifi/AdvancedWifiSettings;->-get1(Lcom/android/exsettings/wifi/AdvancedWifiSettings;)Landroid/preference/Preference;

    move-result-object v5

    if-ne v6, v1, :cond_3

    move v2, v3

    :goto_1
    invoke-virtual {v5, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 88
    iget-object v2, p0, Lcom/android/exsettings/wifi/AdvancedWifiSettings$1;->this$0:Lcom/android/exsettings/wifi/AdvancedWifiSettings;

    invoke-static {v2}, Lcom/android/exsettings/wifi/AdvancedWifiSettings;->-get0(Lcom/android/exsettings/wifi/AdvancedWifiSettings;)Landroid/preference/Preference;

    move-result-object v2

    if-ne v6, v1, :cond_4

    :goto_2
    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    :cond_3
    move v2, v4

    .line 87
    goto :goto_1

    :cond_4
    move v3, v4

    .line 88
    goto :goto_2
.end method
