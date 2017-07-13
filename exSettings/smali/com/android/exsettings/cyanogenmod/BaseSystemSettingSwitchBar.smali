.class public Lcom/android/exsettings/cyanogenmod/BaseSystemSettingSwitchBar;
.super Ljava/lang/Object;
.source "BaseSystemSettingSwitchBar.java"

# interfaces
.implements Lcom/android/exsettings/widget/SwitchBar$OnSwitchChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exsettings/cyanogenmod/BaseSystemSettingSwitchBar$SwitchBarChangeCallback;,
        Lcom/android/exsettings/cyanogenmod/BaseSystemSettingSwitchBar$SettingsObserver;
    }
.end annotation


# instance fields
.field private final mCallback:Lcom/android/exsettings/cyanogenmod/BaseSystemSettingSwitchBar$SwitchBarChangeCallback;

.field private mContext:Landroid/content/Context;

.field private final mDefaultState:I

.field private mListeningToOnSwitchChange:Z

.field private final mSettingKey:Ljava/lang/String;

.field private mSettingsObserver:Lcom/android/exsettings/cyanogenmod/BaseSystemSettingSwitchBar$SettingsObserver;

.field private mStateMachineEvent:Z

.field private mSwitchBar:Lcom/android/exsettings/widget/SwitchBar;


# direct methods
.method static synthetic -get0(Lcom/android/exsettings/cyanogenmod/BaseSystemSettingSwitchBar;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/cyanogenmod/BaseSystemSettingSwitchBar;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/exsettings/cyanogenmod/BaseSystemSettingSwitchBar;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/cyanogenmod/BaseSystemSettingSwitchBar;->mSettingKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/exsettings/cyanogenmod/BaseSystemSettingSwitchBar;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/exsettings/cyanogenmod/BaseSystemSettingSwitchBar;->setSwitchState()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/exsettings/widget/SwitchBar;Ljava/lang/String;ZLcom/android/exsettings/cyanogenmod/BaseSystemSettingSwitchBar$SwitchBarChangeCallback;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "switchBar"    # Lcom/android/exsettings/widget/SwitchBar;
    .param p3, "key"    # Ljava/lang/String;
    .param p4, "defaultState"    # Z
    .param p5, "callback"    # Lcom/android/exsettings/cyanogenmod/BaseSystemSettingSwitchBar$SwitchBarChangeCallback;

    .prologue
    const/4 v0, 0x0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-boolean v0, p0, Lcom/android/exsettings/cyanogenmod/BaseSystemSettingSwitchBar;->mListeningToOnSwitchChange:Z

    .line 46
    iput-object p1, p0, Lcom/android/exsettings/cyanogenmod/BaseSystemSettingSwitchBar;->mContext:Landroid/content/Context;

    .line 47
    iput-object p2, p0, Lcom/android/exsettings/cyanogenmod/BaseSystemSettingSwitchBar;->mSwitchBar:Lcom/android/exsettings/widget/SwitchBar;

    .line 48
    iput-object p3, p0, Lcom/android/exsettings/cyanogenmod/BaseSystemSettingSwitchBar;->mSettingKey:Ljava/lang/String;

    .line 49
    if-eqz p4, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput v0, p0, Lcom/android/exsettings/cyanogenmod/BaseSystemSettingSwitchBar;->mDefaultState:I

    .line 50
    iput-object p5, p0, Lcom/android/exsettings/cyanogenmod/BaseSystemSettingSwitchBar;->mCallback:Lcom/android/exsettings/cyanogenmod/BaseSystemSettingSwitchBar$SwitchBarChangeCallback;

    .line 51
    new-instance v0, Lcom/android/exsettings/cyanogenmod/BaseSystemSettingSwitchBar$SettingsObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/exsettings/cyanogenmod/BaseSystemSettingSwitchBar$SettingsObserver;-><init>(Lcom/android/exsettings/cyanogenmod/BaseSystemSettingSwitchBar;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/exsettings/cyanogenmod/BaseSystemSettingSwitchBar;->mSettingsObserver:Lcom/android/exsettings/cyanogenmod/BaseSystemSettingSwitchBar$SettingsObserver;

    .line 52
    invoke-virtual {p0}, Lcom/android/exsettings/cyanogenmod/BaseSystemSettingSwitchBar;->setupSwitchBar()V

    .line 45
    return-void
.end method

.method private setSwitchBarChecked(Z)V
    .locals 1
    .param p1, "checked"    # Z

    .prologue
    .line 92
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/exsettings/cyanogenmod/BaseSystemSettingSwitchBar;->mStateMachineEvent:Z

    .line 93
    iget-object v0, p0, Lcom/android/exsettings/cyanogenmod/BaseSystemSettingSwitchBar;->mSwitchBar:Lcom/android/exsettings/widget/SwitchBar;

    invoke-virtual {v0, p1}, Lcom/android/exsettings/widget/SwitchBar;->setChecked(Z)V

    .line 94
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/exsettings/cyanogenmod/BaseSystemSettingSwitchBar;->mStateMachineEvent:Z

    .line 95
    iget-object v0, p0, Lcom/android/exsettings/cyanogenmod/BaseSystemSettingSwitchBar;->mCallback:Lcom/android/exsettings/cyanogenmod/BaseSystemSettingSwitchBar$SwitchBarChangeCallback;

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/android/exsettings/cyanogenmod/BaseSystemSettingSwitchBar;->mCallback:Lcom/android/exsettings/cyanogenmod/BaseSystemSettingSwitchBar$SwitchBarChangeCallback;

    invoke-interface {v0, p1}, Lcom/android/exsettings/cyanogenmod/BaseSystemSettingSwitchBar$SwitchBarChangeCallback;->onEnablerChanged(Z)V

    .line 91
    :cond_0
    return-void
.end method

.method private setSwitchState()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 101
    iget-object v1, p0, Lcom/android/exsettings/cyanogenmod/BaseSystemSettingSwitchBar;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 102
    iget-object v2, p0, Lcom/android/exsettings/cyanogenmod/BaseSystemSettingSwitchBar;->mSettingKey:Ljava/lang/String;

    iget v3, p0, Lcom/android/exsettings/cyanogenmod/BaseSystemSettingSwitchBar;->mDefaultState:I

    .line 101
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v4, :cond_0

    const/4 v0, 0x1

    .line 103
    .local v0, "enabled":Z
    :goto_0
    iput-boolean v4, p0, Lcom/android/exsettings/cyanogenmod/BaseSystemSettingSwitchBar;->mStateMachineEvent:Z

    .line 104
    invoke-direct {p0, v0}, Lcom/android/exsettings/cyanogenmod/BaseSystemSettingSwitchBar;->setSwitchBarChecked(Z)V

    .line 105
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/exsettings/cyanogenmod/BaseSystemSettingSwitchBar;->mStateMachineEvent:Z

    .line 100
    return-void

    .line 101
    .end local v0    # "enabled":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "enabled":Z
    goto :goto_0
.end method


# virtual methods
.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 3
    .param p1, "switchView"    # Landroid/widget/Switch;
    .param p2, "isChecked"    # Z

    .prologue
    .line 111
    iget-boolean v0, p0, Lcom/android/exsettings/cyanogenmod/BaseSystemSettingSwitchBar;->mStateMachineEvent:Z

    if-eqz v0, :cond_0

    .line 112
    return-void

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/android/exsettings/cyanogenmod/BaseSystemSettingSwitchBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 117
    iget-object v2, p0, Lcom/android/exsettings/cyanogenmod/BaseSystemSettingSwitchBar;->mSettingKey:Ljava/lang/String;

    if-eqz p2, :cond_2

    const/4 v0, 0x1

    .line 116
    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 119
    iget-object v0, p0, Lcom/android/exsettings/cyanogenmod/BaseSystemSettingSwitchBar;->mCallback:Lcom/android/exsettings/cyanogenmod/BaseSystemSettingSwitchBar$SwitchBarChangeCallback;

    if-eqz v0, :cond_1

    .line 120
    iget-object v0, p0, Lcom/android/exsettings/cyanogenmod/BaseSystemSettingSwitchBar;->mCallback:Lcom/android/exsettings/cyanogenmod/BaseSystemSettingSwitchBar$SwitchBarChangeCallback;

    invoke-interface {v0, p2}, Lcom/android/exsettings/cyanogenmod/BaseSystemSettingSwitchBar$SwitchBarChangeCallback;->onEnablerChanged(Z)V

    .line 109
    :cond_1
    return-void

    .line 117
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/android/exsettings/cyanogenmod/BaseSystemSettingSwitchBar;->mListeningToOnSwitchChange:Z

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/android/exsettings/cyanogenmod/BaseSystemSettingSwitchBar;->mSwitchBar:Lcom/android/exsettings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/exsettings/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/exsettings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 85
    iget-object v0, p0, Lcom/android/exsettings/cyanogenmod/BaseSystemSettingSwitchBar;->mSettingsObserver:Lcom/android/exsettings/cyanogenmod/BaseSystemSettingSwitchBar$SettingsObserver;

    invoke-virtual {v0}, Lcom/android/exsettings/cyanogenmod/BaseSystemSettingSwitchBar$SettingsObserver;->unobserve()V

    .line 87
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/exsettings/cyanogenmod/BaseSystemSettingSwitchBar;->mListeningToOnSwitchChange:Z

    .line 82
    :cond_0
    return-void
.end method

.method public resume(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/android/exsettings/cyanogenmod/BaseSystemSettingSwitchBar;->mContext:Landroid/content/Context;

    .line 74
    iget-boolean v0, p0, Lcom/android/exsettings/cyanogenmod/BaseSystemSettingSwitchBar;->mListeningToOnSwitchChange:Z

    if-nez v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/android/exsettings/cyanogenmod/BaseSystemSettingSwitchBar;->mSwitchBar:Lcom/android/exsettings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/exsettings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/exsettings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 76
    iget-object v0, p0, Lcom/android/exsettings/cyanogenmod/BaseSystemSettingSwitchBar;->mSettingsObserver:Lcom/android/exsettings/cyanogenmod/BaseSystemSettingSwitchBar$SettingsObserver;

    invoke-virtual {v0}, Lcom/android/exsettings/cyanogenmod/BaseSystemSettingSwitchBar$SettingsObserver;->observe()V

    .line 78
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/exsettings/cyanogenmod/BaseSystemSettingSwitchBar;->mListeningToOnSwitchChange:Z

    .line 72
    :cond_0
    return-void
.end method

.method public setupSwitchBar()V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/android/exsettings/cyanogenmod/BaseSystemSettingSwitchBar;->setSwitchState()V

    .line 57
    iget-boolean v0, p0, Lcom/android/exsettings/cyanogenmod/BaseSystemSettingSwitchBar;->mListeningToOnSwitchChange:Z

    if-nez v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/android/exsettings/cyanogenmod/BaseSystemSettingSwitchBar;->mSwitchBar:Lcom/android/exsettings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/exsettings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/exsettings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 59
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/exsettings/cyanogenmod/BaseSystemSettingSwitchBar;->mListeningToOnSwitchChange:Z

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/android/exsettings/cyanogenmod/BaseSystemSettingSwitchBar;->mSwitchBar:Lcom/android/exsettings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/exsettings/widget/SwitchBar;->show()V

    .line 55
    return-void
.end method

.method public teardownSwitchBar()V
    .locals 1

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/android/exsettings/cyanogenmod/BaseSystemSettingSwitchBar;->mListeningToOnSwitchChange:Z

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/android/exsettings/cyanogenmod/BaseSystemSettingSwitchBar;->mSwitchBar:Lcom/android/exsettings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/exsettings/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/exsettings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 67
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/exsettings/cyanogenmod/BaseSystemSettingSwitchBar;->mListeningToOnSwitchChange:Z

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/android/exsettings/cyanogenmod/BaseSystemSettingSwitchBar;->mSwitchBar:Lcom/android/exsettings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/exsettings/widget/SwitchBar;->hide()V

    .line 64
    return-void
.end method
