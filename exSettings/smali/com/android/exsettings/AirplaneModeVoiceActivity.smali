.class public Lcom/android/exsettings/AirplaneModeVoiceActivity;
.super Lcom/android/exsettings/utils/VoiceSettingsActivity;
.source "AirplaneModeVoiceActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/android/exsettings/utils/VoiceSettingsActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onVoiceSettingInteraction(Landroid/content/Intent;)Z
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 33
    const-string/jumbo v2, "airplane_mode_enabled"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 34
    invoke-virtual {p0}, Lcom/android/exsettings/AirplaneModeVoiceActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 35
    const-string/jumbo v3, "airplane_mode_on"

    .line 36
    const-string/jumbo v4, "airplane_mode_enabled"

    invoke-virtual {p1, v4, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_0

    move v0, v1

    .line 34
    :cond_0
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 40
    :goto_0
    return v1

    .line 38
    :cond_1
    const-string/jumbo v0, "AirplaneModeVoiceActivity"

    const-string/jumbo v2, "Missing airplane mode extra"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
