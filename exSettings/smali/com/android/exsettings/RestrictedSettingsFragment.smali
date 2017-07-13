.class public abstract Lcom/android/exsettings/RestrictedSettingsFragment;
.super Lcom/android/exsettings/SettingsPreferenceFragment;
.source "RestrictedSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exsettings/RestrictedSettingsFragment$1;
    }
.end annotation


# instance fields
.field private mChallengeRequested:Z

.field private mChallengeSucceeded:Z

.field private final mRestrictionKey:Ljava/lang/String;

.field private mRestrictionsManager:Landroid/content/RestrictionsManager;

.field private mScreenOffReceiver:Landroid/content/BroadcastReceiver;

.field private mUserManager:Landroid/os/UserManager;


# direct methods
.method static synthetic -get0(Lcom/android/exsettings/RestrictedSettingsFragment;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/exsettings/RestrictedSettingsFragment;->mChallengeRequested:Z

    return v0
.end method

.method static synthetic -set0(Lcom/android/exsettings/RestrictedSettingsFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/exsettings/RestrictedSettingsFragment;->mChallengeRequested:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/exsettings/RestrictedSettingsFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/exsettings/RestrictedSettingsFragment;->mChallengeSucceeded:Z

    return p1
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "restrictionKey"    # Ljava/lang/String;

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;-><init>()V

    .line 60
    new-instance v0, Lcom/android/exsettings/RestrictedSettingsFragment$1;

    invoke-direct {v0, p0}, Lcom/android/exsettings/RestrictedSettingsFragment$1;-><init>(Lcom/android/exsettings/RestrictedSettingsFragment;)V

    iput-object v0, p0, Lcom/android/exsettings/RestrictedSettingsFragment;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    .line 77
    iput-object p1, p0, Lcom/android/exsettings/RestrictedSettingsFragment;->mRestrictionKey:Ljava/lang/String;

    .line 76
    return-void
.end method

.method private ensurePin()V
    .locals 5

    .prologue
    .line 138
    iget-boolean v2, p0, Lcom/android/exsettings/RestrictedSettingsFragment;->mChallengeSucceeded:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/exsettings/RestrictedSettingsFragment;->mChallengeRequested:Z

    if-eqz v2, :cond_1

    .line 137
    :cond_0
    :goto_0
    return-void

    .line 139
    :cond_1
    iget-object v2, p0, Lcom/android/exsettings/RestrictedSettingsFragment;->mRestrictionsManager:Landroid/content/RestrictionsManager;

    invoke-virtual {v2}, Landroid/content/RestrictionsManager;->hasRestrictionsProvider()Z

    move-result v2

    .line 138
    if-eqz v2, :cond_0

    .line 140
    iget-object v2, p0, Lcom/android/exsettings/RestrictedSettingsFragment;->mRestrictionsManager:Landroid/content/RestrictionsManager;

    invoke-virtual {v2}, Landroid/content/RestrictionsManager;->createLocalApprovalIntent()Landroid/content/Intent;

    move-result-object v0

    .line 141
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 142
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/exsettings/RestrictedSettingsFragment;->mChallengeRequested:Z

    .line 143
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/exsettings/RestrictedSettingsFragment;->mChallengeSucceeded:Z

    .line 144
    new-instance v1, Landroid/os/PersistableBundle;

    invoke-direct {v1}, Landroid/os/PersistableBundle;-><init>()V

    .line 145
    .local v1, "request":Landroid/os/PersistableBundle;
    const-string/jumbo v2, "android.request.mesg"

    .line 146
    invoke-virtual {p0}, Lcom/android/exsettings/RestrictedSettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0ee7

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 145
    invoke-virtual {v1, v2, v3}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    const-string/jumbo v2, "android.content.extra.REQUEST_BUNDLE"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 148
    const/16 v2, 0x3015

    invoke-virtual {p0, v0, v2}, Lcom/android/exsettings/RestrictedSettingsFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method


# virtual methods
.method protected hasChallengeSucceeded()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 166
    iget-boolean v1, p0, Lcom/android/exsettings/RestrictedSettingsFragment;->mChallengeRequested:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/exsettings/RestrictedSettingsFragment;->mChallengeSucceeded:Z

    if-nez v1, :cond_1

    :cond_0
    iget-boolean v1, p0, Lcom/android/exsettings/RestrictedSettingsFragment;->mChallengeRequested:Z

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    :cond_1
    return v0
.end method

.method protected isRestrictedAndNotProviderProtected()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 158
    iget-object v1, p0, Lcom/android/exsettings/RestrictedSettingsFragment;->mRestrictionKey:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string/jumbo v1, "restrict_if_overridable"

    iget-object v2, p0, Lcom/android/exsettings/RestrictedSettingsFragment;->mRestrictionKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 159
    :cond_0
    return v0

    .line 161
    :cond_1
    iget-object v1, p0, Lcom/android/exsettings/RestrictedSettingsFragment;->mUserManager:Landroid/os/UserManager;

    iget-object v2, p0, Lcom/android/exsettings/RestrictedSettingsFragment;->mRestrictionKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 162
    iget-object v1, p0, Lcom/android/exsettings/RestrictedSettingsFragment;->mRestrictionsManager:Landroid/content/RestrictionsManager;

    invoke-virtual {v1}, Landroid/content/RestrictionsManager;->hasRestrictionsProvider()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 161
    :cond_2
    :goto_0
    return v0

    .line 162
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected isUiRestricted()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 185
    invoke-virtual {p0}, Lcom/android/exsettings/RestrictedSettingsFragment;->isRestrictedAndNotProviderProtected()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/exsettings/RestrictedSettingsFragment;->hasChallengeSucceeded()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x0

    .line 124
    const/16 v0, 0x3015

    if-ne p1, v0, :cond_1

    .line 125
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 126
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/exsettings/RestrictedSettingsFragment;->mChallengeSucceeded:Z

    .line 127
    iput-boolean v1, p0, Lcom/android/exsettings/RestrictedSettingsFragment;->mChallengeRequested:Z

    .line 131
    :goto_0
    return-void

    .line 129
    :cond_0
    iput-boolean v1, p0, Lcom/android/exsettings/RestrictedSettingsFragment;->mChallengeSucceeded:Z

    goto :goto_0

    .line 134
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/android/exsettings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 123
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 82
    invoke-super {p0, p1}, Lcom/android/exsettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 84
    const-string/jumbo v1, "restrictions"

    invoke-virtual {p0, v1}, Lcom/android/exsettings/RestrictedSettingsFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/RestrictionsManager;

    iput-object v1, p0, Lcom/android/exsettings/RestrictedSettingsFragment;->mRestrictionsManager:Landroid/content/RestrictionsManager;

    .line 85
    const-string/jumbo v1, "user"

    invoke-virtual {p0, v1}, Lcom/android/exsettings/RestrictedSettingsFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    iput-object v1, p0, Lcom/android/exsettings/RestrictedSettingsFragment;->mUserManager:Landroid/os/UserManager;

    .line 87
    if-eqz p1, :cond_0

    .line 88
    const-string/jumbo v1, "chsc"

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/exsettings/RestrictedSettingsFragment;->mChallengeSucceeded:Z

    .line 89
    const-string/jumbo v1, "chrq"

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/exsettings/RestrictedSettingsFragment;->mChallengeRequested:Z

    .line 92
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.SCREEN_OFF"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 93
    .local v0, "offFilter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p0}, Lcom/android/exsettings/RestrictedSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/exsettings/RestrictedSettingsFragment;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 81
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 118
    invoke-virtual {p0}, Lcom/android/exsettings/RestrictedSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/exsettings/RestrictedSettingsFragment;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 119
    invoke-super {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;->onDestroy()V

    .line 117
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 109
    invoke-super {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;->onResume()V

    .line 111
    iget-object v0, p0, Lcom/android/exsettings/RestrictedSettingsFragment;->mRestrictionKey:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/exsettings/RestrictedSettingsFragment;->shouldBeProviderProtected(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    invoke-direct {p0}, Lcom/android/exsettings/RestrictedSettingsFragment;->ensurePin()V

    .line 108
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 99
    invoke-super {p0, p1}, Lcom/android/exsettings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 101
    invoke-virtual {p0}, Lcom/android/exsettings/RestrictedSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    const-string/jumbo v0, "chrq"

    iget-boolean v1, p0, Lcom/android/exsettings/RestrictedSettingsFragment;->mChallengeRequested:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 103
    const-string/jumbo v0, "chsc"

    iget-boolean v1, p0, Lcom/android/exsettings/RestrictedSettingsFragment;->mChallengeSucceeded:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 98
    :cond_0
    return-void
.end method

.method protected shouldBeProviderProtected(Ljava/lang/String;)Z
    .locals 4
    .param p1, "restrictionKey"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 173
    if-nez p1, :cond_0

    .line 174
    return v1

    .line 176
    :cond_0
    const-string/jumbo v2, "restrict_if_overridable"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 177
    iget-object v2, p0, Lcom/android/exsettings/RestrictedSettingsFragment;->mUserManager:Landroid/os/UserManager;

    iget-object v3, p0, Lcom/android/exsettings/RestrictedSettingsFragment;->mRestrictionKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v0

    .line 178
    :goto_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/exsettings/RestrictedSettingsFragment;->mRestrictionsManager:Landroid/content/RestrictionsManager;

    invoke-virtual {v1}, Landroid/content/RestrictionsManager;->hasRestrictionsProvider()Z

    move-result v1

    :cond_1
    return v1

    .line 176
    :cond_2
    const/4 v0, 0x1

    .local v0, "restricted":Z
    goto :goto_0
.end method
