.class public abstract Lcom/android/exsettings/location/LocationSettingsBase;
.super Lcom/android/exsettings/SettingsPreferenceFragment;
.source "LocationSettingsBase.java"


# instance fields
.field private mActive:Z

.field private mCurrentMode:I

.field private mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/exsettings/location/LocationSettingsBase;->mActive:Z

    .line 35
    return-void
.end method

.method private isRestricted()Z
    .locals 3

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/android/exsettings/location/LocationSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string/jumbo v2, "user"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 90
    .local v0, "um":Landroid/os/UserManager;
    const-string/jumbo v1, "no_share_location"

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 53
    invoke-super {p0, p1}, Lcom/android/exsettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 54
    new-instance v0, Lcom/android/exsettings/location/LocationSettingsBase$1;

    invoke-direct {v0, p0}, Lcom/android/exsettings/location/LocationSettingsBase$1;-><init>(Lcom/android/exsettings/location/LocationSettingsBase;)V

    iput-object v0, p0, Lcom/android/exsettings/location/LocationSettingsBase;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 52
    return-void
.end method

.method public abstract onModeChanged(IZ)V
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 77
    :try_start_0
    invoke-virtual {p0}, Lcom/android/exsettings/location/LocationSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/exsettings/location/LocationSettingsBase;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    :goto_0
    invoke-super {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;->onPause()V

    .line 82
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/exsettings/location/LocationSettingsBase;->mActive:Z

    .line 75
    return-void

    .line 78
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/RuntimeException;
    goto :goto_0
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 67
    invoke-super {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;->onResume()V

    .line 68
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/exsettings/location/LocationSettingsBase;->mActive:Z

    .line 69
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 70
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.location.MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p0}, Lcom/android/exsettings/location/LocationSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/exsettings/location/LocationSettingsBase;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 66
    return-void
.end method

.method public refreshLocationMode()V
    .locals 4

    .prologue
    .line 116
    iget-boolean v1, p0, Lcom/android/exsettings/location/LocationSettingsBase;->mActive:Z

    if-eqz v1, :cond_1

    .line 117
    invoke-virtual {p0}, Lcom/android/exsettings/location/LocationSettingsBase;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "location_mode"

    .line 118
    const/4 v3, 0x0

    .line 117
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 119
    .local v0, "mode":I
    iput v0, p0, Lcom/android/exsettings/location/LocationSettingsBase;->mCurrentMode:I

    .line 120
    const-string/jumbo v1, "LocationSettingsBase"

    const/4 v2, 0x4

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 121
    const-string/jumbo v1, "LocationSettingsBase"

    const-string/jumbo v2, "Location mode has been changed"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    :cond_0
    invoke-direct {p0}, Lcom/android/exsettings/location/LocationSettingsBase;->isRestricted()Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/exsettings/location/LocationSettingsBase;->onModeChanged(IZ)V

    .line 115
    .end local v0    # "mode":I
    :cond_1
    return-void
.end method

.method public setLocationMode(I)V
    .locals 4
    .param p1, "mode"    # I

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/android/exsettings/location/LocationSettingsBase;->isRestricted()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 97
    const-string/jumbo v1, "LocationSettingsBase"

    const/4 v2, 0x4

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 98
    const-string/jumbo v1, "LocationSettingsBase"

    const-string/jumbo v2, "Restricted user, not setting location mode"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    :cond_0
    invoke-virtual {p0}, Lcom/android/exsettings/location/LocationSettingsBase;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "location_mode"

    .line 101
    const/4 v3, 0x0

    .line 100
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    .line 102
    iget-boolean v1, p0, Lcom/android/exsettings/location/LocationSettingsBase;->mActive:Z

    if-eqz v1, :cond_1

    .line 103
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Lcom/android/exsettings/location/LocationSettingsBase;->onModeChanged(IZ)V

    .line 105
    :cond_1
    return-void

    .line 107
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.android.settings.location.MODE_CHANGING"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 108
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "CURRENT_MODE"

    iget v2, p0, Lcom/android/exsettings/location/LocationSettingsBase;->mCurrentMode:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 109
    const-string/jumbo v1, "NEW_MODE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 110
    invoke-virtual {p0}, Lcom/android/exsettings/location/LocationSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string/jumbo v2, "android.permission.WRITE_SECURE_SETTINGS"

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 111
    invoke-virtual {p0}, Lcom/android/exsettings/location/LocationSettingsBase;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "location_mode"

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 112
    invoke-virtual {p0}, Lcom/android/exsettings/location/LocationSettingsBase;->refreshLocationMode()V

    .line 93
    return-void
.end method
