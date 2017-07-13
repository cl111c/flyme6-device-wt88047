.class Lcom/android/exsettings/SettingsActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "SettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/SettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/SettingsActivity;


# direct methods
.method constructor <init>(Lcom/android/exsettings/SettingsActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/exsettings/SettingsActivity;

    .prologue
    .line 395
    iput-object p1, p0, Lcom/android/exsettings/SettingsActivity$1;->this$0:Lcom/android/exsettings/SettingsActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 398
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 399
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v2, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 400
    invoke-static {p2}, Lcom/android/exsettings/Utils;->isBatteryPresent(Landroid/content/Intent;)Z

    move-result v1

    .line 402
    .local v1, "batteryPresent":Z
    iget-object v2, p0, Lcom/android/exsettings/SettingsActivity$1;->this$0:Lcom/android/exsettings/SettingsActivity;

    invoke-static {v2}, Lcom/android/exsettings/SettingsActivity;->-get0(Lcom/android/exsettings/SettingsActivity;)Z

    move-result v2

    if-eq v2, v1, :cond_0

    .line 403
    iget-object v2, p0, Lcom/android/exsettings/SettingsActivity$1;->this$0:Lcom/android/exsettings/SettingsActivity;

    invoke-static {v2, v1}, Lcom/android/exsettings/SettingsActivity;->-set0(Lcom/android/exsettings/SettingsActivity;Z)Z

    .line 404
    iget-object v2, p0, Lcom/android/exsettings/SettingsActivity$1;->this$0:Lcom/android/exsettings/SettingsActivity;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/exsettings/SettingsActivity;->-wrap1(Lcom/android/exsettings/SettingsActivity;Z)V

    .line 397
    .end local v1    # "batteryPresent":Z
    :cond_0
    return-void
.end method
