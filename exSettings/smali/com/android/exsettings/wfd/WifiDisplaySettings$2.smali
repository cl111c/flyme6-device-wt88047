.class Lcom/android/exsettings/wfd/WifiDisplaySettings$2;
.super Landroid/content/BroadcastReceiver;
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
    .line 605
    iput-object p1, p0, Lcom/android/exsettings/wfd/WifiDisplaySettings$2;->this$0:Lcom/android/exsettings/wfd/WifiDisplaySettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 608
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 609
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v1, "android.hardware.display.action.WIFI_DISPLAY_STATUS_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 610
    iget-object v1, p0, Lcom/android/exsettings/wfd/WifiDisplaySettings$2;->this$0:Lcom/android/exsettings/wfd/WifiDisplaySettings;

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lcom/android/exsettings/wfd/WifiDisplaySettings;->-wrap1(Lcom/android/exsettings/wfd/WifiDisplaySettings;I)V

    .line 607
    :cond_0
    return-void
.end method
