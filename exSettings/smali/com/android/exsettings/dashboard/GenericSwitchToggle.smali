.class public abstract Lcom/android/exsettings/dashboard/GenericSwitchToggle;
.super Ljava/lang/Object;
.source "GenericSwitchToggle.java"

# interfaces
.implements Lcom/android/exsettings/widget/SwitchBar$OnSwitchChangeListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mListeningToOnSwitchChange:Z

.field protected mStateMachineEvent:Z

.field protected mSwitch:Landroid/widget/Switch;

.field protected mSwitchBar:Lcom/android/exsettings/widget/SwitchBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/Switch;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "switch_"    # Landroid/widget/Switch;

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/exsettings/dashboard/GenericSwitchToggle;->mListeningToOnSwitchChange:Z

    .line 19
    iput-object p1, p0, Lcom/android/exsettings/dashboard/GenericSwitchToggle;->mContext:Landroid/content/Context;

    .line 20
    iput-object p2, p0, Lcom/android/exsettings/dashboard/GenericSwitchToggle;->mSwitch:Landroid/widget/Switch;

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/exsettings/widget/SwitchBar;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "switch_"    # Lcom/android/exsettings/widget/SwitchBar;

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/exsettings/dashboard/GenericSwitchToggle;->mListeningToOnSwitchChange:Z

    .line 24
    iput-object p1, p0, Lcom/android/exsettings/dashboard/GenericSwitchToggle;->mContext:Landroid/content/Context;

    .line 25
    iput-object p2, p0, Lcom/android/exsettings/dashboard/GenericSwitchToggle;->mSwitchBar:Lcom/android/exsettings/widget/SwitchBar;

    .line 23
    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/exsettings/dashboard/GenericSwitchToggle;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {p0, v0, p2}, Lcom/android/exsettings/dashboard/GenericSwitchToggle;->onSwitchChanged(Landroid/widget/Switch;Z)V

    .line 87
    return-void
.end method

.method public abstract onSwitchChanged(Landroid/widget/Switch;Z)V
.end method

.method public pause()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 29
    iget-boolean v0, p0, Lcom/android/exsettings/dashboard/GenericSwitchToggle;->mListeningToOnSwitchChange:Z

    if-eqz v0, :cond_2

    .line 30
    iget-object v0, p0, Lcom/android/exsettings/dashboard/GenericSwitchToggle;->mSwitchBar:Lcom/android/exsettings/widget/SwitchBar;

    if-eqz v0, :cond_0

    .line 31
    iget-object v0, p0, Lcom/android/exsettings/dashboard/GenericSwitchToggle;->mSwitchBar:Lcom/android/exsettings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/exsettings/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/exsettings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 33
    :cond_0
    iget-object v0, p0, Lcom/android/exsettings/dashboard/GenericSwitchToggle;->mSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_1

    .line 34
    iget-object v0, p0, Lcom/android/exsettings/dashboard/GenericSwitchToggle;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 36
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/exsettings/dashboard/GenericSwitchToggle;->mListeningToOnSwitchChange:Z

    .line 28
    :cond_2
    return-void
.end method

.method public resume(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    .line 41
    iput-object p1, p0, Lcom/android/exsettings/dashboard/GenericSwitchToggle;->mContext:Landroid/content/Context;

    .line 43
    iget-boolean v0, p0, Lcom/android/exsettings/dashboard/GenericSwitchToggle;->mListeningToOnSwitchChange:Z

    if-nez v0, :cond_1

    .line 44
    iget-object v0, p0, Lcom/android/exsettings/dashboard/GenericSwitchToggle;->mSwitchBar:Lcom/android/exsettings/widget/SwitchBar;

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/android/exsettings/dashboard/GenericSwitchToggle;->mSwitchBar:Lcom/android/exsettings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/exsettings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/exsettings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 46
    iput-boolean v1, p0, Lcom/android/exsettings/dashboard/GenericSwitchToggle;->mListeningToOnSwitchChange:Z

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/android/exsettings/dashboard/GenericSwitchToggle;->mSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_1

    .line 49
    iget-object v0, p0, Lcom/android/exsettings/dashboard/GenericSwitchToggle;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 50
    iput-boolean v1, p0, Lcom/android/exsettings/dashboard/GenericSwitchToggle;->mListeningToOnSwitchChange:Z

    .line 40
    :cond_1
    return-void
.end method

.method protected setChecked(Z)V
    .locals 1
    .param p1, "checked"    # Z

    .prologue
    .line 67
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/exsettings/dashboard/GenericSwitchToggle;->mStateMachineEvent:Z

    .line 68
    iget-object v0, p0, Lcom/android/exsettings/dashboard/GenericSwitchToggle;->mSwitchBar:Lcom/android/exsettings/widget/SwitchBar;

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/android/exsettings/dashboard/GenericSwitchToggle;->mSwitchBar:Lcom/android/exsettings/widget/SwitchBar;

    invoke-virtual {v0, p1}, Lcom/android/exsettings/widget/SwitchBar;->setChecked(Z)V

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/android/exsettings/dashboard/GenericSwitchToggle;->mSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_1

    .line 72
    iget-object v0, p0, Lcom/android/exsettings/dashboard/GenericSwitchToggle;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 74
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/exsettings/dashboard/GenericSwitchToggle;->mStateMachineEvent:Z

    .line 66
    return-void
.end method

.method protected setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/exsettings/dashboard/GenericSwitchToggle;->mSwitchBar:Lcom/android/exsettings/widget/SwitchBar;

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/android/exsettings/dashboard/GenericSwitchToggle;->mSwitchBar:Lcom/android/exsettings/widget/SwitchBar;

    invoke-virtual {v0, p1}, Lcom/android/exsettings/widget/SwitchBar;->setEnabled(Z)V

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/android/exsettings/dashboard/GenericSwitchToggle;->mSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_1

    .line 82
    iget-object v0, p0, Lcom/android/exsettings/dashboard/GenericSwitchToggle;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p1}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 77
    :cond_1
    return-void
.end method

.method public teardownSwitchBar()V
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/exsettings/dashboard/GenericSwitchToggle;->mSwitchBar:Lcom/android/exsettings/widget/SwitchBar;

    if-nez v0, :cond_0

    .line 57
    return-void

    .line 59
    :cond_0
    iget-boolean v0, p0, Lcom/android/exsettings/dashboard/GenericSwitchToggle;->mListeningToOnSwitchChange:Z

    if-eqz v0, :cond_1

    .line 60
    iget-object v0, p0, Lcom/android/exsettings/dashboard/GenericSwitchToggle;->mSwitchBar:Lcom/android/exsettings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/exsettings/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/exsettings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/exsettings/dashboard/GenericSwitchToggle;->mListeningToOnSwitchChange:Z

    .line 63
    :cond_1
    iget-object v0, p0, Lcom/android/exsettings/dashboard/GenericSwitchToggle;->mSwitchBar:Lcom/android/exsettings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/exsettings/widget/SwitchBar;->hide()V

    .line 55
    return-void
.end method
