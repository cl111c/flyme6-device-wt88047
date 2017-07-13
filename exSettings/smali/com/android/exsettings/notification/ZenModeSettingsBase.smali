.class public abstract Lcom/android/exsettings/notification/ZenModeSettingsBase;
.super Lcom/android/exsettings/RestrictedSettingsFragment;
.source "ZenModeSettingsBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exsettings/notification/ZenModeSettingsBase$SettingsObserver;
    }
.end annotation


# static fields
.field protected static final DEBUG:Z


# instance fields
.field protected mConfig:Landroid/service/notification/ZenModeConfig;

.field protected mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mSettingsObserver:Lcom/android/exsettings/notification/ZenModeSettingsBase$SettingsObserver;

.field protected mZenMode:I


# direct methods
.method static synthetic -get0(Lcom/android/exsettings/notification/ZenModeSettingsBase;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/notification/ZenModeSettingsBase;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/exsettings/notification/ZenModeSettingsBase;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/android/exsettings/notification/ZenModeSettingsBase;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/exsettings/notification/ZenModeSettingsBase;Z)V
    .locals 0
    .param p1, "fireChanged"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/exsettings/notification/ZenModeSettingsBase;->updateZenModeConfig(Z)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/exsettings/notification/ZenModeSettingsBase;Z)V
    .locals 0
    .param p1, "fireChanged"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/exsettings/notification/ZenModeSettingsBase;->updateZenMode(Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 37
    const-string/jumbo v0, "ZenModeSettings"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/exsettings/notification/ZenModeSettingsBase;->DEBUG:Z

    .line 35
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 50
    const-string/jumbo v0, "no_adjust_volume"

    invoke-direct {p0, v0}, Lcom/android/exsettings/RestrictedSettingsFragment;-><init>(Ljava/lang/String;)V

    .line 39
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/exsettings/notification/ZenModeSettingsBase;->mHandler:Landroid/os/Handler;

    .line 40
    new-instance v0, Lcom/android/exsettings/notification/ZenModeSettingsBase$SettingsObserver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/exsettings/notification/ZenModeSettingsBase$SettingsObserver;-><init>(Lcom/android/exsettings/notification/ZenModeSettingsBase;Lcom/android/exsettings/notification/ZenModeSettingsBase$SettingsObserver;)V

    iput-object v0, p0, Lcom/android/exsettings/notification/ZenModeSettingsBase;->mSettingsObserver:Lcom/android/exsettings/notification/ZenModeSettingsBase$SettingsObserver;

    .line 49
    return-void
.end method

.method private getZenModeConfig()Landroid/service/notification/ZenModeConfig;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/exsettings/notification/ZenModeSettingsBase;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/NotificationManager;->getZenModeConfig()Landroid/service/notification/ZenModeConfig;

    move-result-object v0

    return-object v0
.end method

.method protected static isScheduleSupported(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 115
    invoke-static {p0}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v0

    .line 116
    const-string/jumbo v1, "schedule"

    .line 115
    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->isSystemConditionProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private updateZenMode(Z)V
    .locals 4
    .param p1, "fireChanged"    # Z

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/android/exsettings/notification/ZenModeSettingsBase;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "zen_mode"

    iget v3, p0, Lcom/android/exsettings/notification/ZenModeSettingsBase;->mZenMode:I

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 81
    .local v0, "zenMode":I
    iget v1, p0, Lcom/android/exsettings/notification/ZenModeSettingsBase;->mZenMode:I

    if-ne v0, v1, :cond_0

    return-void

    .line 82
    :cond_0
    iput v0, p0, Lcom/android/exsettings/notification/ZenModeSettingsBase;->mZenMode:I

    .line 83
    sget-boolean v1, Lcom/android/exsettings/notification/ZenModeSettingsBase;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string/jumbo v1, "ZenModeSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateZenMode mZenMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/exsettings/notification/ZenModeSettingsBase;->mZenMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    :cond_1
    if-eqz p1, :cond_2

    .line 85
    invoke-virtual {p0}, Lcom/android/exsettings/notification/ZenModeSettingsBase;->onZenModeChanged()V

    .line 79
    :cond_2
    return-void
.end method

.method private updateZenModeConfig(Z)V
    .locals 4
    .param p1, "fireChanged"    # Z

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/android/exsettings/notification/ZenModeSettingsBase;->getZenModeConfig()Landroid/service/notification/ZenModeConfig;

    move-result-object v0

    .line 91
    .local v0, "config":Landroid/service/notification/ZenModeConfig;
    iget-object v1, p0, Lcom/android/exsettings/notification/ZenModeSettingsBase;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 92
    :cond_0
    iput-object v0, p0, Lcom/android/exsettings/notification/ZenModeSettingsBase;->mConfig:Landroid/service/notification/ZenModeConfig;

    .line 93
    sget-boolean v1, Lcom/android/exsettings/notification/ZenModeSettingsBase;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string/jumbo v1, "ZenModeSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateZenModeConfig mConfig="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/exsettings/notification/ZenModeSettingsBase;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    :cond_1
    if-eqz p1, :cond_2

    .line 95
    invoke-virtual {p0}, Lcom/android/exsettings/notification/ZenModeSettingsBase;->onZenModeConfigChanged()V

    .line 89
    :cond_2
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x0

    .line 55
    invoke-super {p0, p1}, Lcom/android/exsettings/RestrictedSettingsFragment;->onCreate(Landroid/os/Bundle;)V

    .line 56
    invoke-virtual {p0}, Lcom/android/exsettings/notification/ZenModeSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/notification/ZenModeSettingsBase;->mContext:Landroid/content/Context;

    .line 57
    invoke-direct {p0, v1}, Lcom/android/exsettings/notification/ZenModeSettingsBase;->updateZenMode(Z)V

    .line 58
    invoke-direct {p0, v1}, Lcom/android/exsettings/notification/ZenModeSettingsBase;->updateZenModeConfig(Z)V

    .line 59
    sget-boolean v0, Lcom/android/exsettings/notification/ZenModeSettingsBase;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "ZenModeSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Loaded mConfig="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/exsettings/notification/ZenModeSettingsBase;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 75
    invoke-super {p0}, Lcom/android/exsettings/RestrictedSettingsFragment;->onPause()V

    .line 76
    iget-object v0, p0, Lcom/android/exsettings/notification/ZenModeSettingsBase;->mSettingsObserver:Lcom/android/exsettings/notification/ZenModeSettingsBase$SettingsObserver;

    invoke-virtual {v0}, Lcom/android/exsettings/notification/ZenModeSettingsBase$SettingsObserver;->unregister()V

    .line 74
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 64
    invoke-super {p0}, Lcom/android/exsettings/RestrictedSettingsFragment;->onResume()V

    .line 65
    invoke-direct {p0, v0}, Lcom/android/exsettings/notification/ZenModeSettingsBase;->updateZenMode(Z)V

    .line 66
    invoke-direct {p0, v0}, Lcom/android/exsettings/notification/ZenModeSettingsBase;->updateZenModeConfig(Z)V

    .line 67
    iget-object v0, p0, Lcom/android/exsettings/notification/ZenModeSettingsBase;->mSettingsObserver:Lcom/android/exsettings/notification/ZenModeSettingsBase$SettingsObserver;

    invoke-virtual {v0}, Lcom/android/exsettings/notification/ZenModeSettingsBase$SettingsObserver;->register()V

    .line 68
    invoke-virtual {p0}, Lcom/android/exsettings/notification/ZenModeSettingsBase;->isUiRestricted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    invoke-virtual {p0}, Lcom/android/exsettings/notification/ZenModeSettingsBase;->finish()V

    .line 63
    :cond_0
    return-void
.end method

.method protected abstract onZenModeChanged()V
.end method

.method protected abstract onZenModeConfigChanged()V
.end method

.method protected setZenModeConfig(Landroid/service/notification/ZenModeConfig;)Z
    .locals 5
    .param p1, "config"    # Landroid/service/notification/ZenModeConfig;

    .prologue
    .line 100
    invoke-virtual {p0}, Lcom/android/exsettings/notification/ZenModeSettingsBase;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 101
    .local v0, "reason":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/exsettings/notification/ZenModeSettingsBase;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v2

    invoke-virtual {v2, p1, v0}, Landroid/app/NotificationManager;->setZenModeConfig(Landroid/service/notification/ZenModeConfig;Ljava/lang/String;)Z

    move-result v1

    .line 102
    .local v1, "success":Z
    if-eqz v1, :cond_1

    .line 103
    iput-object p1, p0, Lcom/android/exsettings/notification/ZenModeSettingsBase;->mConfig:Landroid/service/notification/ZenModeConfig;

    .line 104
    sget-boolean v2, Lcom/android/exsettings/notification/ZenModeSettingsBase;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "ZenModeSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Saved mConfig="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/exsettings/notification/ZenModeSettingsBase;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    :cond_0
    invoke-virtual {p0}, Lcom/android/exsettings/notification/ZenModeSettingsBase;->onZenModeConfigChanged()V

    .line 107
    :cond_1
    return v1
.end method
