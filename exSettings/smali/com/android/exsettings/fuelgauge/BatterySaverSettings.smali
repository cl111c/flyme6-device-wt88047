.class public Lcom/android/exsettings/fuelgauge/BatterySaverSettings;
.super Lcom/android/exsettings/SettingsPreferenceFragment;
.source "BatterySaverSettings.java"

# interfaces
.implements Lcom/android/exsettings/widget/SwitchBar$OnSwitchChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exsettings/fuelgauge/BatterySaverSettings$Receiver;,
        Lcom/android/exsettings/fuelgauge/BatterySaverSettings$SettingsObserver;,
        Lcom/android/exsettings/fuelgauge/BatterySaverSettings$1;,
        Lcom/android/exsettings/fuelgauge/BatterySaverSettings$2;
    }
.end annotation


# static fields
.field private static final DEBUG:Z


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCreated:Z

.field private final mHandler:Landroid/os/Handler;

.field private mPowerManager:Landroid/os/PowerManager;

.field private final mReceiver:Lcom/android/exsettings/fuelgauge/BatterySaverSettings$Receiver;

.field private final mSettingsObserver:Lcom/android/exsettings/fuelgauge/BatterySaverSettings$SettingsObserver;

.field private final mStartMode:Ljava/lang/Runnable;

.field private mSwitch:Landroid/widget/Switch;

.field private mSwitchBar:Lcom/android/exsettings/widget/SwitchBar;

.field private mTriggerPref:Lcom/android/exsettings/notification/SettingPref;

.field private final mUpdateSwitch:Ljava/lang/Runnable;

.field private mValidListener:Z


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/android/exsettings/fuelgauge/BatterySaverSettings;->DEBUG:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/exsettings/fuelgauge/BatterySaverSettings;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/fuelgauge/BatterySaverSettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/exsettings/fuelgauge/BatterySaverSettings;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/fuelgauge/BatterySaverSettings;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/exsettings/fuelgauge/BatterySaverSettings;)Lcom/android/exsettings/notification/SettingPref;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/fuelgauge/BatterySaverSettings;->mTriggerPref:Lcom/android/exsettings/notification/SettingPref;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/exsettings/fuelgauge/BatterySaverSettings;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/fuelgauge/BatterySaverSettings;->mUpdateSwitch:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/exsettings/fuelgauge/BatterySaverSettings;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/android/exsettings/fuelgauge/BatterySaverSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/exsettings/fuelgauge/BatterySaverSettings;Z)V
    .locals 0
    .param p1, "mode"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/exsettings/fuelgauge/BatterySaverSettings;->trySetPowerSaveMode(Z)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/exsettings/fuelgauge/BatterySaverSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/exsettings/fuelgauge/BatterySaverSettings;->updateSwitch()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 48
    const-string/jumbo v0, "BatterySaverSettings"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/exsettings/fuelgauge/BatterySaverSettings;->DEBUG:Z

    .line 45
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;-><init>()V

    .line 52
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/exsettings/fuelgauge/BatterySaverSettings;->mHandler:Landroid/os/Handler;

    .line 53
    new-instance v0, Lcom/android/exsettings/fuelgauge/BatterySaverSettings$SettingsObserver;

    iget-object v1, p0, Lcom/android/exsettings/fuelgauge/BatterySaverSettings;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/exsettings/fuelgauge/BatterySaverSettings$SettingsObserver;-><init>(Lcom/android/exsettings/fuelgauge/BatterySaverSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/exsettings/fuelgauge/BatterySaverSettings;->mSettingsObserver:Lcom/android/exsettings/fuelgauge/BatterySaverSettings$SettingsObserver;

    .line 54
    new-instance v0, Lcom/android/exsettings/fuelgauge/BatterySaverSettings$Receiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/exsettings/fuelgauge/BatterySaverSettings$Receiver;-><init>(Lcom/android/exsettings/fuelgauge/BatterySaverSettings;Lcom/android/exsettings/fuelgauge/BatterySaverSettings$Receiver;)V

    iput-object v0, p0, Lcom/android/exsettings/fuelgauge/BatterySaverSettings;->mReceiver:Lcom/android/exsettings/fuelgauge/BatterySaverSettings$Receiver;

    .line 164
    new-instance v0, Lcom/android/exsettings/fuelgauge/BatterySaverSettings$1;

    invoke-direct {v0, p0}, Lcom/android/exsettings/fuelgauge/BatterySaverSettings$1;-><init>(Lcom/android/exsettings/fuelgauge/BatterySaverSettings;)V

    iput-object v0, p0, Lcom/android/exsettings/fuelgauge/BatterySaverSettings;->mUpdateSwitch:Ljava/lang/Runnable;

    .line 171
    new-instance v0, Lcom/android/exsettings/fuelgauge/BatterySaverSettings$2;

    invoke-direct {v0, p0}, Lcom/android/exsettings/fuelgauge/BatterySaverSettings$2;-><init>(Lcom/android/exsettings/fuelgauge/BatterySaverSettings;)V

    iput-object v0, p0, Lcom/android/exsettings/fuelgauge/BatterySaverSettings;->mStartMode:Ljava/lang/Runnable;

    .line 45
    return-void
.end method

.method private trySetPowerSaveMode(Z)V
    .locals 2
    .param p1, "mode"    # Z

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/exsettings/fuelgauge/BatterySaverSettings;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0, p1}, Landroid/os/PowerManager;->setPowerSaveMode(Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 144
    sget-boolean v0, Lcom/android/exsettings/fuelgauge/BatterySaverSettings;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "BatterySaverSettings"

    const-string/jumbo v1, "Setting mode failed, fallback to current value"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/android/exsettings/fuelgauge/BatterySaverSettings;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/exsettings/fuelgauge/BatterySaverSettings;->mUpdateSwitch:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 142
    :cond_1
    return-void
.end method

.method private updateSwitch()V
    .locals 4

    .prologue
    .line 150
    iget-object v1, p0, Lcom/android/exsettings/fuelgauge/BatterySaverSettings;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v1}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result v0

    .line 151
    .local v0, "mode":Z
    sget-boolean v1, Lcom/android/exsettings/fuelgauge/BatterySaverSettings;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "BatterySaverSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateSwitch: isChecked="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/exsettings/fuelgauge/BatterySaverSettings;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v3}, Landroid/widget/Switch;->isChecked()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " mode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    :cond_0
    iget-object v1, p0, Lcom/android/exsettings/fuelgauge/BatterySaverSettings;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1}, Landroid/widget/Switch;->isChecked()Z

    move-result v1

    if-ne v0, v1, :cond_1

    return-void

    .line 155
    :cond_1
    iget-boolean v1, p0, Lcom/android/exsettings/fuelgauge/BatterySaverSettings;->mValidListener:Z

    if-eqz v1, :cond_2

    .line 156
    iget-object v1, p0, Lcom/android/exsettings/fuelgauge/BatterySaverSettings;->mSwitchBar:Lcom/android/exsettings/widget/SwitchBar;

    invoke-virtual {v1, p0}, Lcom/android/exsettings/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/exsettings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 158
    :cond_2
    iget-object v1, p0, Lcom/android/exsettings/fuelgauge/BatterySaverSettings;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 159
    iget-boolean v1, p0, Lcom/android/exsettings/fuelgauge/BatterySaverSettings;->mValidListener:Z

    if-eqz v1, :cond_3

    .line 160
    iget-object v1, p0, Lcom/android/exsettings/fuelgauge/BatterySaverSettings;->mSwitchBar:Lcom/android/exsettings/widget/SwitchBar;

    invoke-virtual {v1, p0}, Lcom/android/exsettings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/exsettings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 149
    :cond_3
    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 66
    const/16 v0, 0x34

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x1

    .line 71
    invoke-super {p0, p1}, Lcom/android/exsettings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 72
    iget-boolean v0, p0, Lcom/android/exsettings/fuelgauge/BatterySaverSettings;->mCreated:Z

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/android/exsettings/fuelgauge/BatterySaverSettings;->mSwitchBar:Lcom/android/exsettings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/exsettings/widget/SwitchBar;->show()V

    .line 74
    return-void

    .line 76
    :cond_0
    iput-boolean v2, p0, Lcom/android/exsettings/fuelgauge/BatterySaverSettings;->mCreated:Z

    .line 77
    const v0, 0x7f080014

    invoke-virtual {p0, v0}, Lcom/android/exsettings/fuelgauge/BatterySaverSettings;->addPreferencesFromResource(I)V

    .line 79
    invoke-virtual {p0}, Lcom/android/exsettings/fuelgauge/BatterySaverSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/fuelgauge/BatterySaverSettings;->mContext:Landroid/content/Context;

    .line 80
    iget-object v0, p0, Lcom/android/exsettings/fuelgauge/BatterySaverSettings;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/exsettings/SettingsActivity;

    invoke-virtual {v0}, Lcom/android/exsettings/SettingsActivity;->getSwitchBar()Lcom/android/exsettings/widget/SwitchBar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/fuelgauge/BatterySaverSettings;->mSwitchBar:Lcom/android/exsettings/widget/SwitchBar;

    .line 81
    iget-object v0, p0, Lcom/android/exsettings/fuelgauge/BatterySaverSettings;->mSwitchBar:Lcom/android/exsettings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/exsettings/widget/SwitchBar;->getSwitch()Lcom/android/exsettings/widget/ToggleSwitch;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/fuelgauge/BatterySaverSettings;->mSwitch:Landroid/widget/Switch;

    .line 82
    iget-object v0, p0, Lcom/android/exsettings/fuelgauge/BatterySaverSettings;->mSwitchBar:Lcom/android/exsettings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/exsettings/widget/SwitchBar;->show()V

    .line 84
    new-instance v0, Lcom/android/exsettings/fuelgauge/BatterySaverSettings$3;

    const-string/jumbo v3, "turn_on_automatically"

    .line 85
    const-string/jumbo v4, "low_power_trigger_level"

    .line 87
    invoke-virtual {p0}, Lcom/android/exsettings/fuelgauge/BatterySaverSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v5, 0x7f0a0068

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v6

    .line 86
    const/4 v5, 0x0

    move-object v1, p0

    .line 84
    invoke-direct/range {v0 .. v6}, Lcom/android/exsettings/fuelgauge/BatterySaverSettings$3;-><init>(Lcom/android/exsettings/fuelgauge/BatterySaverSettings;ILjava/lang/String;Ljava/lang/String;I[I)V

    iput-object v0, p0, Lcom/android/exsettings/fuelgauge/BatterySaverSettings;->mTriggerPref:Lcom/android/exsettings/notification/SettingPref;

    .line 97
    iget-object v0, p0, Lcom/android/exsettings/fuelgauge/BatterySaverSettings;->mTriggerPref:Lcom/android/exsettings/notification/SettingPref;

    invoke-virtual {v0, p0}, Lcom/android/exsettings/notification/SettingPref;->init(Lcom/android/exsettings/SettingsPreferenceFragment;)Landroid/preference/Preference;

    .line 99
    iget-object v0, p0, Lcom/android/exsettings/fuelgauge/BatterySaverSettings;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/exsettings/fuelgauge/BatterySaverSettings;->mPowerManager:Landroid/os/PowerManager;

    .line 70
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 104
    invoke-super {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;->onDestroyView()V

    .line 105
    iget-object v0, p0, Lcom/android/exsettings/fuelgauge/BatterySaverSettings;->mSwitchBar:Lcom/android/exsettings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/exsettings/widget/SwitchBar;->hide()V

    .line 103
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 122
    invoke-super {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;->onPause()V

    .line 123
    iget-object v0, p0, Lcom/android/exsettings/fuelgauge/BatterySaverSettings;->mSettingsObserver:Lcom/android/exsettings/fuelgauge/BatterySaverSettings$SettingsObserver;

    invoke-virtual {v0, v1}, Lcom/android/exsettings/fuelgauge/BatterySaverSettings$SettingsObserver;->setListening(Z)V

    .line 124
    iget-object v0, p0, Lcom/android/exsettings/fuelgauge/BatterySaverSettings;->mReceiver:Lcom/android/exsettings/fuelgauge/BatterySaverSettings$Receiver;

    invoke-virtual {v0, v1}, Lcom/android/exsettings/fuelgauge/BatterySaverSettings$Receiver;->setListening(Z)V

    .line 125
    iget-boolean v0, p0, Lcom/android/exsettings/fuelgauge/BatterySaverSettings;->mValidListener:Z

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/android/exsettings/fuelgauge/BatterySaverSettings;->mSwitchBar:Lcom/android/exsettings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/exsettings/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/exsettings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 127
    iput-boolean v1, p0, Lcom/android/exsettings/fuelgauge/BatterySaverSettings;->mValidListener:Z

    .line 121
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 110
    invoke-super {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;->onResume()V

    .line 111
    iget-object v0, p0, Lcom/android/exsettings/fuelgauge/BatterySaverSettings;->mSettingsObserver:Lcom/android/exsettings/fuelgauge/BatterySaverSettings$SettingsObserver;

    invoke-virtual {v0, v1}, Lcom/android/exsettings/fuelgauge/BatterySaverSettings$SettingsObserver;->setListening(Z)V

    .line 112
    iget-object v0, p0, Lcom/android/exsettings/fuelgauge/BatterySaverSettings;->mReceiver:Lcom/android/exsettings/fuelgauge/BatterySaverSettings$Receiver;

    invoke-virtual {v0, v1}, Lcom/android/exsettings/fuelgauge/BatterySaverSettings$Receiver;->setListening(Z)V

    .line 113
    iget-boolean v0, p0, Lcom/android/exsettings/fuelgauge/BatterySaverSettings;->mValidListener:Z

    if-nez v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/android/exsettings/fuelgauge/BatterySaverSettings;->mSwitchBar:Lcom/android/exsettings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/exsettings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/exsettings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 115
    iput-boolean v1, p0, Lcom/android/exsettings/fuelgauge/BatterySaverSettings;->mValidListener:Z

    .line 117
    :cond_0
    invoke-direct {p0}, Lcom/android/exsettings/fuelgauge/BatterySaverSettings;->updateSwitch()V

    .line 109
    return-void
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 4
    .param p1, "switchView"    # Landroid/widget/Switch;
    .param p2, "isChecked"    # Z

    .prologue
    .line 133
    iget-object v0, p0, Lcom/android/exsettings/fuelgauge/BatterySaverSettings;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/exsettings/fuelgauge/BatterySaverSettings;->mStartMode:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 134
    if-eqz p2, :cond_0

    .line 135
    iget-object v0, p0, Lcom/android/exsettings/fuelgauge/BatterySaverSettings;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/exsettings/fuelgauge/BatterySaverSettings;->mStartMode:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 132
    :goto_0
    return-void

    .line 137
    :cond_0
    sget-boolean v0, Lcom/android/exsettings/fuelgauge/BatterySaverSettings;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "BatterySaverSettings"

    const-string/jumbo v1, "Stopping low power mode from settings"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/exsettings/fuelgauge/BatterySaverSettings;->trySetPowerSaveMode(Z)V

    goto :goto_0
.end method
