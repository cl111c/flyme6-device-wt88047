.class public Lcom/android/exsettings/dashboard/MobileNetworksEnabler;
.super Lcom/android/exsettings/dashboard/GenericSwitchToggle;
.source "MobileNetworksEnabler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exsettings/dashboard/MobileNetworksEnabler$1;
    }
.end annotation


# instance fields
.field private mIntentFilter:Landroid/content/IntentFilter;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static synthetic -wrap0(Lcom/android/exsettings/dashboard/MobileNetworksEnabler;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/exsettings/dashboard/MobileNetworksEnabler;->updateState()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/Switch;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "switch_"    # Landroid/widget/Switch;

    .prologue
    .line 67
    invoke-direct {p0, p1, p2}, Lcom/android/exsettings/dashboard/GenericSwitchToggle;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    .line 49
    new-instance v0, Lcom/android/exsettings/dashboard/MobileNetworksEnabler$1;

    invoke-direct {v0, p0}, Lcom/android/exsettings/dashboard/MobileNetworksEnabler$1;-><init>(Lcom/android/exsettings/dashboard/MobileNetworksEnabler;)V

    iput-object v0, p0, Lcom/android/exsettings/dashboard/MobileNetworksEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 69
    invoke-direct {p0}, Lcom/android/exsettings/dashboard/MobileNetworksEnabler;->init()V

    .line 70
    invoke-direct {p0}, Lcom/android/exsettings/dashboard/MobileNetworksEnabler;->setupSwitches()V

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/exsettings/widget/SwitchBar;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "switchBar"    # Lcom/android/exsettings/widget/SwitchBar;

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Lcom/android/exsettings/dashboard/GenericSwitchToggle;-><init>(Landroid/content/Context;Lcom/android/exsettings/widget/SwitchBar;)V

    .line 49
    new-instance v0, Lcom/android/exsettings/dashboard/MobileNetworksEnabler$1;

    invoke-direct {v0, p0}, Lcom/android/exsettings/dashboard/MobileNetworksEnabler$1;-><init>(Lcom/android/exsettings/dashboard/MobileNetworksEnabler;)V

    iput-object v0, p0, Lcom/android/exsettings/dashboard/MobileNetworksEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 62
    invoke-direct {p0}, Lcom/android/exsettings/dashboard/MobileNetworksEnabler;->init()V

    .line 63
    invoke-direct {p0}, Lcom/android/exsettings/dashboard/MobileNetworksEnabler;->setupSwitches()V

    .line 59
    return-void
.end method

.method private init()V
    .locals 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/exsettings/dashboard/MobileNetworksEnabler;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 74
    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/exsettings/dashboard/MobileNetworksEnabler;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 76
    new-instance v0, Landroid/content/IntentFilter;

    .line 77
    const-string/jumbo v1, "android.intent.action.PRECISE_DATA_CONNECTION_STATE_CHANGED"

    .line 76
    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/exsettings/dashboard/MobileNetworksEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    .line 73
    return-void
.end method

.method private isAirplaneModeOn()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 105
    iget-object v1, p0, Lcom/android/exsettings/dashboard/MobileNetworksEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 106
    const-string/jumbo v2, "airplane_mode_on"

    .line 105
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private setupSwitches()V
    .locals 1

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/android/exsettings/dashboard/MobileNetworksEnabler;->updateState()V

    .line 82
    iget-object v0, p0, Lcom/android/exsettings/dashboard/MobileNetworksEnabler;->mSwitchBar:Lcom/android/exsettings/widget/SwitchBar;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/android/exsettings/dashboard/MobileNetworksEnabler;->mSwitchBar:Lcom/android/exsettings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/exsettings/widget/SwitchBar;->show()V

    .line 80
    :cond_0
    return-void
.end method

.method private updateState()V
    .locals 2

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/exsettings/dashboard/MobileNetworksEnabler;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/exsettings/dashboard/MobileNetworksEnabler;->setEnabled(Z)V

    .line 89
    iget-object v0, p0, Lcom/android/exsettings/dashboard/MobileNetworksEnabler;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDataEnabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/exsettings/dashboard/MobileNetworksEnabler;->setChecked(Z)V

    .line 87
    return-void

    .line 88
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public isRadioAllowed(Ljava/lang/String;)Z
    .locals 3
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/android/exsettings/dashboard/MobileNetworksEnabler;->isAirplaneModeOn()Z

    move-result v1

    if-nez v1, :cond_0

    .line 111
    const/4 v1, 0x1

    return v1

    .line 114
    :cond_0
    iget-object v1, p0, Lcom/android/exsettings/dashboard/MobileNetworksEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 115
    const-string/jumbo v2, "airplane_mode_toggleable_radios"

    .line 114
    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 116
    .local v0, "toggleable":Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 136
    invoke-super {p0, p1, p2}, Lcom/android/exsettings/dashboard/GenericSwitchToggle;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V

    .line 135
    return-void
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 3
    .param p1, "switchView"    # Landroid/widget/Switch;
    .param p2, "isChecked"    # Z

    .prologue
    const/4 v2, 0x0

    .line 122
    iget-boolean v0, p0, Lcom/android/exsettings/dashboard/MobileNetworksEnabler;->mStateMachineEvent:Z

    if-eqz v0, :cond_0

    .line 123
    return-void

    .line 125
    :cond_0
    if-eqz p2, :cond_1

    const-string/jumbo v0, "cell"

    invoke-virtual {p0, v0}, Lcom/android/exsettings/dashboard/MobileNetworksEnabler;->isRadioAllowed(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 131
    :cond_1
    iget-object v0, p0, Lcom/android/exsettings/dashboard/MobileNetworksEnabler;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, p2}, Landroid/telephony/TelephonyManager;->setDataEnabled(Z)V

    .line 120
    return-void

    .line 126
    :cond_2
    iget-object v0, p0, Lcom/android/exsettings/dashboard/MobileNetworksEnabler;->mContext:Landroid/content/Context;

    const v1, 0x7f0c070f

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 127
    invoke-virtual {p0, v2}, Lcom/android/exsettings/dashboard/MobileNetworksEnabler;->setChecked(Z)V

    .line 128
    return-void
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 100
    invoke-super {p0}, Lcom/android/exsettings/dashboard/GenericSwitchToggle;->pause()V

    .line 101
    iget-object v0, p0, Lcom/android/exsettings/dashboard/MobileNetworksEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/exsettings/dashboard/MobileNetworksEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 99
    return-void
.end method

.method public resume(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 94
    invoke-super {p0, p1}, Lcom/android/exsettings/dashboard/GenericSwitchToggle;->resume(Landroid/content/Context;)V

    .line 95
    iget-object v0, p0, Lcom/android/exsettings/dashboard/MobileNetworksEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/exsettings/dashboard/MobileNetworksEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/exsettings/dashboard/MobileNetworksEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 93
    return-void
.end method
