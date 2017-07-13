.class public Lcom/android/exsettings/cyanogenmod/CMBaseSystemSettingSwitchBar;
.super Ljava/lang/Object;
.source "CMBaseSystemSettingSwitchBar.java"

# interfaces
.implements Lcom/android/exsettings/widget/SwitchBar$OnSwitchChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exsettings/cyanogenmod/CMBaseSystemSettingSwitchBar$SwitchBarChangeCallback;,
        Lcom/android/exsettings/cyanogenmod/CMBaseSystemSettingSwitchBar$SettingsObserver;
    }
.end annotation


# instance fields
.field private final mCallback:Lcom/android/exsettings/cyanogenmod/CMBaseSystemSettingSwitchBar$SwitchBarChangeCallback;

.field private mContext:Landroid/content/Context;

.field private final mDefaultState:I

.field private mListeningToOnSwitchChange:Z

.field private final mSettingKey:Ljava/lang/String;

.field private mSettingsObserver:Lcom/android/exsettings/cyanogenmod/CMBaseSystemSettingSwitchBar$SettingsObserver;

.field private mStateMachineEvent:Z

.field private mSwitchBar:Lcom/android/exsettings/widget/SwitchBar;


# direct methods
.method static synthetic -get0(Lcom/android/exsettings/cyanogenmod/CMBaseSystemSettingSwitchBar;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/cyanogenmod/CMBaseSystemSettingSwitchBar;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/exsettings/cyanogenmod/CMBaseSystemSettingSwitchBar;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/cyanogenmod/CMBaseSystemSettingSwitchBar;->mSettingKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/exsettings/cyanogenmod/CMBaseSystemSettingSwitchBar;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/exsettings/cyanogenmod/CMBaseSystemSettingSwitchBar;->setSwitchState()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/exsettings/widget/SwitchBar;Ljava/lang/String;ZLcom/android/exsettings/cyanogenmod/CMBaseSystemSettingSwitchBar$SwitchBarChangeCallback;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "switchBar"    # Lcom/android/exsettings/widget/SwitchBar;
    .param p3, "key"    # Ljava/lang/String;
    .param p4, "defaultState"    # Z
    .param p5, "callback"    # Lcom/android/exsettings/cyanogenmod/CMBaseSystemSettingSwitchBar$SwitchBarChangeCallback;

    .prologue
    const/4 v0, 0x0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-boolean v0, p0, Lcom/android/exsettings/cyanogenmod/CMBaseSystemSettingSwitchBar;->mListeningToOnSwitchChange:Z

    .line 47
    iput-object p1, p0, Lcom/android/exsettings/cyanogenmod/CMBaseSystemSettingSwitchBar;->mContext:Landroid/content/Context;

    .line 48
    iput-object p2, p0, Lcom/android/exsettings/cyanogenmod/CMBaseSystemSettingSwitchBar;->mSwitchBar:Lcom/android/exsettings/widget/SwitchBar;

    .line 49
    iput-object p3, p0, Lcom/android/exsettings/cyanogenmod/CMBaseSystemSettingSwitchBar;->mSettingKey:Ljava/lang/String;

    .line 50
    if-eqz p4, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput v0, p0, Lcom/android/exsettings/cyanogenmod/CMBaseSystemSettingSwitchBar;->mDefaultState:I

    .line 51
    iput-object p5, p0, Lcom/android/exsettings/cyanogenmod/CMBaseSystemSettingSwitchBar;->mCallback:Lcom/android/exsettings/cyanogenmod/CMBaseSystemSettingSwitchBar$SwitchBarChangeCallback;

    .line 52
    new-instance v0, Lcom/android/exsettings/cyanogenmod/CMBaseSystemSettingSwitchBar$SettingsObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/exsettings/cyanogenmod/CMBaseSystemSettingSwitchBar$SettingsObserver;-><init>(Lcom/android/exsettings/cyanogenmod/CMBaseSystemSettingSwitchBar;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/exsettings/cyanogenmod/CMBaseSystemSettingSwitchBar;->mSettingsObserver:Lcom/android/exsettings/cyanogenmod/CMBaseSystemSettingSwitchBar$SettingsObserver;

    .line 53
    invoke-virtual {p0}, Lcom/android/exsettings/cyanogenmod/CMBaseSystemSettingSwitchBar;->setupSwitchBar()V

    .line 46
    return-void
.end method

.method private setSwitchBarChecked(Z)V
    .locals 1
    .param p1, "checked"    # Z

    .prologue
    .line 93
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/exsettings/cyanogenmod/CMBaseSystemSettingSwitchBar;->mStateMachineEvent:Z

    .line 94
    iget-object v0, p0, Lcom/android/exsettings/cyanogenmod/CMBaseSystemSettingSwitchBar;->mSwitchBar:Lcom/android/exsettings/widget/SwitchBar;

    invoke-virtual {v0, p1}, Lcom/android/exsettings/widget/SwitchBar;->setChecked(Z)V

    .line 95
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/exsettings/cyanogenmod/CMBaseSystemSettingSwitchBar;->mStateMachineEvent:Z

    .line 96
    iget-object v0, p0, Lcom/android/exsettings/cyanogenmod/CMBaseSystemSettingSwitchBar;->mCallback:Lcom/android/exsettings/cyanogenmod/CMBaseSystemSettingSwitchBar$SwitchBarChangeCallback;

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/android/exsettings/cyanogenmod/CMBaseSystemSettingSwitchBar;->mCallback:Lcom/android/exsettings/cyanogenmod/CMBaseSystemSettingSwitchBar$SwitchBarChangeCallback;

    invoke-interface {v0, p1}, Lcom/android/exsettings/cyanogenmod/CMBaseSystemSettingSwitchBar$SwitchBarChangeCallback;->onEnablerChanged(Z)V

    .line 92
    :cond_0
    return-void
.end method

.method private setSwitchState()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 102
    iget-object v1, p0, Lcom/android/exsettings/cyanogenmod/CMBaseSystemSettingSwitchBar;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 103
    iget-object v2, p0, Lcom/android/exsettings/cyanogenmod/CMBaseSystemSettingSwitchBar;->mSettingKey:Ljava/lang/String;

    iget v3, p0, Lcom/android/exsettings/cyanogenmod/CMBaseSystemSettingSwitchBar;->mDefaultState:I

    .line 102
    invoke-static {v1, v2, v3}, Lcyanogenmod/providers/CMSettings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v4, :cond_0

    const/4 v0, 0x1

    .line 104
    .local v0, "enabled":Z
    :goto_0
    iput-boolean v4, p0, Lcom/android/exsettings/cyanogenmod/CMBaseSystemSettingSwitchBar;->mStateMachineEvent:Z

    .line 105
    invoke-direct {p0, v0}, Lcom/android/exsettings/cyanogenmod/CMBaseSystemSettingSwitchBar;->setSwitchBarChecked(Z)V

    .line 106
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/exsettings/cyanogenmod/CMBaseSystemSettingSwitchBar;->mStateMachineEvent:Z

    .line 101
    return-void

    .line 102
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
    .line 112
    iget-boolean v0, p0, Lcom/android/exsettings/cyanogenmod/CMBaseSystemSettingSwitchBar;->mStateMachineEvent:Z

    if-eqz v0, :cond_0

    .line 113
    return-void

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/android/exsettings/cyanogenmod/CMBaseSystemSettingSwitchBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 118
    iget-object v2, p0, Lcom/android/exsettings/cyanogenmod/CMBaseSystemSettingSwitchBar;->mSettingKey:Ljava/lang/String;

    if-eqz p2, :cond_2

    const/4 v0, 0x1

    .line 117
    :goto_0
    invoke-static {v1, v2, v0}, Lcyanogenmod/providers/CMSettings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 120
    iget-object v0, p0, Lcom/android/exsettings/cyanogenmod/CMBaseSystemSettingSwitchBar;->mCallback:Lcom/android/exsettings/cyanogenmod/CMBaseSystemSettingSwitchBar$SwitchBarChangeCallback;

    if-eqz v0, :cond_1

    .line 121
    iget-object v0, p0, Lcom/android/exsettings/cyanogenmod/CMBaseSystemSettingSwitchBar;->mCallback:Lcom/android/exsettings/cyanogenmod/CMBaseSystemSettingSwitchBar$SwitchBarChangeCallback;

    invoke-interface {v0, p2}, Lcom/android/exsettings/cyanogenmod/CMBaseSystemSettingSwitchBar$SwitchBarChangeCallback;->onEnablerChanged(Z)V

    .line 110
    :cond_1
    return-void

    .line 118
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/android/exsettings/cyanogenmod/CMBaseSystemSettingSwitchBar;->mListeningToOnSwitchChange:Z

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/android/exsettings/cyanogenmod/CMBaseSystemSettingSwitchBar;->mSwitchBar:Lcom/android/exsettings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/exsettings/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/exsettings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 86
    iget-object v0, p0, Lcom/android/exsettings/cyanogenmod/CMBaseSystemSettingSwitchBar;->mSettingsObserver:Lcom/android/exsettings/cyanogenmod/CMBaseSystemSettingSwitchBar$SettingsObserver;

    invoke-virtual {v0}, Lcom/android/exsettings/cyanogenmod/CMBaseSystemSettingSwitchBar$SettingsObserver;->unobserve()V

    .line 88
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/exsettings/cyanogenmod/CMBaseSystemSettingSwitchBar;->mListeningToOnSwitchChange:Z

    .line 83
    :cond_0
    return-void
.end method

.method public resume(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/android/exsettings/cyanogenmod/CMBaseSystemSettingSwitchBar;->mContext:Landroid/content/Context;

    .line 75
    iget-boolean v0, p0, Lcom/android/exsettings/cyanogenmod/CMBaseSystemSettingSwitchBar;->mListeningToOnSwitchChange:Z

    if-nez v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/android/exsettings/cyanogenmod/CMBaseSystemSettingSwitchBar;->mSwitchBar:Lcom/android/exsettings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/exsettings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/exsettings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 77
    iget-object v0, p0, Lcom/android/exsettings/cyanogenmod/CMBaseSystemSettingSwitchBar;->mSettingsObserver:Lcom/android/exsettings/cyanogenmod/CMBaseSystemSettingSwitchBar$SettingsObserver;

    invoke-virtual {v0}, Lcom/android/exsettings/cyanogenmod/CMBaseSystemSettingSwitchBar$SettingsObserver;->observe()V

    .line 79
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/exsettings/cyanogenmod/CMBaseSystemSettingSwitchBar;->mListeningToOnSwitchChange:Z

    .line 73
    :cond_0
    return-void
.end method

.method public setupSwitchBar()V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/exsettings/cyanogenmod/CMBaseSystemSettingSwitchBar;->setSwitchState()V

    .line 58
    iget-boolean v0, p0, Lcom/android/exsettings/cyanogenmod/CMBaseSystemSettingSwitchBar;->mListeningToOnSwitchChange:Z

    if-nez v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/android/exsettings/cyanogenmod/CMBaseSystemSettingSwitchBar;->mSwitchBar:Lcom/android/exsettings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/exsettings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/exsettings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/exsettings/cyanogenmod/CMBaseSystemSettingSwitchBar;->mListeningToOnSwitchChange:Z

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/android/exsettings/cyanogenmod/CMBaseSystemSettingSwitchBar;->mSwitchBar:Lcom/android/exsettings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/exsettings/widget/SwitchBar;->show()V

    .line 56
    return-void
.end method

.method public teardownSwitchBar()V
    .locals 1

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/android/exsettings/cyanogenmod/CMBaseSystemSettingSwitchBar;->mListeningToOnSwitchChange:Z

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/android/exsettings/cyanogenmod/CMBaseSystemSettingSwitchBar;->mSwitchBar:Lcom/android/exsettings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/exsettings/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/exsettings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/exsettings/cyanogenmod/CMBaseSystemSettingSwitchBar;->mListeningToOnSwitchChange:Z

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/android/exsettings/cyanogenmod/CMBaseSystemSettingSwitchBar;->mSwitchBar:Lcom/android/exsettings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/exsettings/widget/SwitchBar;->hide()V

    .line 65
    return-void
.end method
