.class Lcom/android/exsettings/location/LocationSettings$3;
.super Landroid/content/BroadcastReceiver;
.source "LocationSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exsettings/location/LocationSettings;->addLocationServices(Landroid/content/Context;Landroid/preference/PreferenceScreen;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/location/LocationSettings;


# direct methods
.method constructor <init>(Lcom/android/exsettings/location/LocationSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/exsettings/location/LocationSettings;

    .prologue
    .line 291
    iput-object p1, p0, Lcom/android/exsettings/location/LocationSettings$3;->this$0:Lcom/android/exsettings/location/LocationSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 294
    const-string/jumbo v0, "LocationSettings"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 295
    const-string/jumbo v0, "LocationSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Received settings change intent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    :cond_0
    iget-object v0, p0, Lcom/android/exsettings/location/LocationSettings$3;->this$0:Lcom/android/exsettings/location/LocationSettings;

    invoke-static {v0}, Lcom/android/exsettings/location/LocationSettings;->-get0(Lcom/android/exsettings/location/LocationSettings;)Lcom/android/exsettings/location/SettingsInjector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/exsettings/location/SettingsInjector;->reloadStatusMessages()V

    .line 293
    return-void
.end method
