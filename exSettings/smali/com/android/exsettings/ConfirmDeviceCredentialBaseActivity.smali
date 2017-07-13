.class public abstract Lcom/android/exsettings/ConfirmDeviceCredentialBaseActivity;
.super Lcom/android/exsettings/SettingsActivity;
.source "ConfirmDeviceCredentialBaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exsettings/ConfirmDeviceCredentialBaseActivity$1;
    }
.end annotation


# instance fields
.field private mDark:Z

.field private final mEnterAnimationCompleteTimeoutRunnable:Ljava/lang/Runnable;

.field private mEnterAnimationPending:Z

.field private mFirstTimeVisible:Z

.field private final mHandler:Landroid/os/Handler;

.field private mRestoring:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/android/exsettings/SettingsActivity;-><init>()V

    .line 31
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/exsettings/ConfirmDeviceCredentialBaseActivity;->mFirstTimeVisible:Z

    .line 32
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/exsettings/ConfirmDeviceCredentialBaseActivity;->mHandler:Landroid/os/Handler;

    .line 112
    new-instance v0, Lcom/android/exsettings/ConfirmDeviceCredentialBaseActivity$1;

    invoke-direct {v0, p0}, Lcom/android/exsettings/ConfirmDeviceCredentialBaseActivity$1;-><init>(Lcom/android/exsettings/ConfirmDeviceCredentialBaseActivity;)V

    iput-object v0, p0, Lcom/android/exsettings/ConfirmDeviceCredentialBaseActivity;->mEnterAnimationCompleteTimeoutRunnable:Ljava/lang/Runnable;

    .line 26
    return-void
.end method

.method private getFragment()Lcom/android/exsettings/ConfirmDeviceCredentialBaseFragment;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 77
    invoke-virtual {p0}, Lcom/android/exsettings/ConfirmDeviceCredentialBaseActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const v2, 0x7f13021f

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    .line 78
    .local v0, "fragment":Landroid/app/Fragment;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/android/exsettings/ConfirmDeviceCredentialBaseFragment;

    if-eqz v1, :cond_0

    .line 79
    check-cast v0, Lcom/android/exsettings/ConfirmDeviceCredentialBaseFragment;

    .end local v0    # "fragment":Landroid/app/Fragment;
    return-object v0

    .line 81
    .restart local v0    # "fragment":Landroid/app/Fragment;
    :cond_0
    return-object v3
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 36
    invoke-virtual {p0}, Lcom/android/exsettings/ConfirmDeviceCredentialBaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v5, "com.android.settings.ConfirmCredentials.darkTheme"

    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 37
    const v2, 0x7f0d0076

    invoke-virtual {p0, v2}, Lcom/android/exsettings/ConfirmDeviceCredentialBaseActivity;->setTheme(I)V

    .line 38
    iput-boolean v3, p0, Lcom/android/exsettings/ConfirmDeviceCredentialBaseActivity;->mDark:Z

    .line 40
    :cond_0
    invoke-super {p0, p1}, Lcom/android/exsettings/SettingsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    const-class v2, Landroid/app/KeyguardManager;

    invoke-virtual {p0, v2}, Lcom/android/exsettings/ConfirmDeviceCredentialBaseActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/KeyguardManager;

    invoke-virtual {v2}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v0

    .line 42
    .local v0, "deviceLocked":Z
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/exsettings/ConfirmDeviceCredentialBaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 43
    const-string/jumbo v5, "com.android.settings.ConfirmCredentials.showWhenLocked"

    .line 42
    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 44
    invoke-virtual {p0}, Lcom/android/exsettings/ConfirmDeviceCredentialBaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/high16 v5, 0x80000

    invoke-virtual {v2, v5}, Landroid/view/Window;->addFlags(I)V

    .line 46
    :cond_1
    invoke-virtual {p0}, Lcom/android/exsettings/ConfirmDeviceCredentialBaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 47
    const-string/jumbo v5, "com.android.settings.ConfirmCredentials.title"

    .line 46
    invoke-virtual {v2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 48
    .local v1, "msg":Ljava/lang/CharSequence;
    invoke-virtual {p0, v1}, Lcom/android/exsettings/ConfirmDeviceCredentialBaseActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 49
    invoke-virtual {p0}, Lcom/android/exsettings/ConfirmDeviceCredentialBaseActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 50
    invoke-virtual {p0}, Lcom/android/exsettings/ConfirmDeviceCredentialBaseActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 51
    invoke-virtual {p0}, Lcom/android/exsettings/ConfirmDeviceCredentialBaseActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 53
    :cond_2
    if-eqz p1, :cond_3

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/android/exsettings/ConfirmDeviceCredentialBaseActivity;->mRestoring:Z

    .line 35
    return-void

    :cond_3
    move v2, v4

    .line 53
    goto :goto_0
.end method

.method public onEnterAnimationComplete()V
    .locals 2

    .prologue
    .line 86
    invoke-super {p0}, Lcom/android/exsettings/SettingsActivity;->onEnterAnimationComplete()V

    .line 87
    iget-boolean v0, p0, Lcom/android/exsettings/ConfirmDeviceCredentialBaseActivity;->mEnterAnimationPending:Z

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/android/exsettings/ConfirmDeviceCredentialBaseActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/exsettings/ConfirmDeviceCredentialBaseActivity;->mEnterAnimationCompleteTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 89
    invoke-virtual {p0}, Lcom/android/exsettings/ConfirmDeviceCredentialBaseActivity;->startEnterAnimation()V

    .line 90
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/exsettings/ConfirmDeviceCredentialBaseActivity;->mEnterAnimationPending:Z

    .line 85
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 58
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 59
    invoke-virtual {p0}, Lcom/android/exsettings/ConfirmDeviceCredentialBaseActivity;->finish()V

    .line 60
    const/4 v0, 0x1

    return v0

    .line 62
    :cond_0
    invoke-super {p0, p1}, Lcom/android/exsettings/SettingsActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 67
    invoke-super {p0}, Lcom/android/exsettings/SettingsActivity;->onResume()V

    .line 68
    invoke-virtual {p0}, Lcom/android/exsettings/ConfirmDeviceCredentialBaseActivity;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/exsettings/ConfirmDeviceCredentialBaseActivity;->mRestoring:Z

    if-eqz v0, :cond_1

    .line 66
    :cond_0
    :goto_0
    return-void

    .line 68
    :cond_1
    iget-boolean v0, p0, Lcom/android/exsettings/ConfirmDeviceCredentialBaseActivity;->mDark:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/exsettings/ConfirmDeviceCredentialBaseActivity;->mFirstTimeVisible:Z

    if-eqz v0, :cond_0

    .line 69
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/exsettings/ConfirmDeviceCredentialBaseActivity;->mFirstTimeVisible:Z

    .line 70
    invoke-virtual {p0}, Lcom/android/exsettings/ConfirmDeviceCredentialBaseActivity;->prepareEnterAnimation()V

    .line 71
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/exsettings/ConfirmDeviceCredentialBaseActivity;->mEnterAnimationPending:Z

    .line 72
    iget-object v0, p0, Lcom/android/exsettings/ConfirmDeviceCredentialBaseActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/exsettings/ConfirmDeviceCredentialBaseActivity;->mEnterAnimationCompleteTimeoutRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public prepareEnterAnimation()V
    .locals 1

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/android/exsettings/ConfirmDeviceCredentialBaseActivity;->getFragment()Lcom/android/exsettings/ConfirmDeviceCredentialBaseFragment;

    move-result-object v0

    .line 96
    .local v0, "f":Lcom/android/exsettings/ConfirmDeviceCredentialBaseFragment;
    if-eqz v0, :cond_0

    .line 97
    invoke-virtual {v0}, Lcom/android/exsettings/ConfirmDeviceCredentialBaseFragment;->prepareEnterAnimation()V

    .line 94
    :cond_0
    return-void
.end method

.method public startEnterAnimation()V
    .locals 1

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/android/exsettings/ConfirmDeviceCredentialBaseActivity;->getFragment()Lcom/android/exsettings/ConfirmDeviceCredentialBaseFragment;

    move-result-object v0

    .line 103
    .local v0, "f":Lcom/android/exsettings/ConfirmDeviceCredentialBaseFragment;
    if-eqz v0, :cond_0

    .line 104
    invoke-virtual {v0}, Lcom/android/exsettings/ConfirmDeviceCredentialBaseFragment;->startEnterAnimation()V

    .line 101
    :cond_0
    return-void
.end method
