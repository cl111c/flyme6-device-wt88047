.class public Lcom/android/exsettings/accounts/SyncStateSwitchPreference;
.super Landroid/preference/SwitchPreference;
.source "SyncStateSwitchPreference.java"


# instance fields
.field private mAccount:Landroid/accounts/Account;

.field private mAuthority:Ljava/lang/String;

.field private mFailed:Z

.field private mIsActive:Z

.field private mIsPending:Z

.field private mOneTimeSyncMode:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "account"    # Landroid/accounts/Account;
    .param p3, "authority"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 53
    const/4 v0, 0x0

    const v1, 0x7f0d002c

    invoke-direct {p0, p1, v0, v2, v1}, Landroid/preference/SwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 34
    iput-boolean v2, p0, Lcom/android/exsettings/accounts/SyncStateSwitchPreference;->mIsActive:Z

    .line 35
    iput-boolean v2, p0, Lcom/android/exsettings/accounts/SyncStateSwitchPreference;->mIsPending:Z

    .line 36
    iput-boolean v2, p0, Lcom/android/exsettings/accounts/SyncStateSwitchPreference;->mFailed:Z

    .line 44
    iput-boolean v2, p0, Lcom/android/exsettings/accounts/SyncStateSwitchPreference;->mOneTimeSyncMode:Z

    .line 54
    iput-object p2, p0, Lcom/android/exsettings/accounts/SyncStateSwitchPreference;->mAccount:Landroid/accounts/Account;

    .line 55
    iput-object p3, p0, Lcom/android/exsettings/accounts/SyncStateSwitchPreference;->mAuthority:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 47
    const v0, 0x7f0d002c

    invoke-direct {p0, p1, p2, v1, v0}, Landroid/preference/SwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 34
    iput-boolean v1, p0, Lcom/android/exsettings/accounts/SyncStateSwitchPreference;->mIsActive:Z

    .line 35
    iput-boolean v1, p0, Lcom/android/exsettings/accounts/SyncStateSwitchPreference;->mIsPending:Z

    .line 36
    iput-boolean v1, p0, Lcom/android/exsettings/accounts/SyncStateSwitchPreference;->mFailed:Z

    .line 44
    iput-boolean v1, p0, Lcom/android/exsettings/accounts/SyncStateSwitchPreference;->mOneTimeSyncMode:Z

    .line 48
    iput-object v2, p0, Lcom/android/exsettings/accounts/SyncStateSwitchPreference;->mAccount:Landroid/accounts/Account;

    .line 49
    iput-object v2, p0, Lcom/android/exsettings/accounts/SyncStateSwitchPreference;->mAuthority:Ljava/lang/String;

    .line 46
    return-void
.end method


# virtual methods
.method public getAccount()Landroid/accounts/Account;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/exsettings/accounts/SyncStateSwitchPreference;->mAccount:Landroid/accounts/Account;

    return-object v0
.end method

.method public getAuthority()Ljava/lang/String;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/exsettings/accounts/SyncStateSwitchPreference;->mAuthority:Ljava/lang/String;

    return-object v0
.end method

.method public isOneTimeSyncMode()Z
    .locals 1

    .prologue
    .line 127
    iget-boolean v0, p0, Lcom/android/exsettings/accounts/SyncStateSwitchPreference;->mOneTimeSyncMode:Z

    return v0
.end method

.method public onBindView(Landroid/view/View;)V
    .locals 10
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x0

    .line 60
    invoke-super {p0, p1}, Landroid/preference/SwitchPreference;->onBindView(Landroid/view/View;)V

    .line 62
    const v6, 0x7f1301b4

    .line 61
    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/exsettings/widget/AnimatedImageView;

    .line 63
    .local v4, "syncActiveView":Lcom/android/exsettings/widget/AnimatedImageView;
    const v6, 0x7f1301b3

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 65
    .local v5, "syncFailedView":Landroid/view/View;
    iget-boolean v6, p0, Lcom/android/exsettings/accounts/SyncStateSwitchPreference;->mIsActive:Z

    if-nez v6, :cond_1

    iget-boolean v0, p0, Lcom/android/exsettings/accounts/SyncStateSwitchPreference;->mIsPending:Z

    .line 66
    :goto_0
    if-eqz v0, :cond_2

    move v6, v7

    :goto_1
    invoke-virtual {v4, v6}, Lcom/android/exsettings/widget/AnimatedImageView;->setVisibility(I)V

    .line 67
    iget-boolean v6, p0, Lcom/android/exsettings/accounts/SyncStateSwitchPreference;->mIsActive:Z

    invoke-virtual {v4, v6}, Lcom/android/exsettings/widget/AnimatedImageView;->setAnimating(Z)V

    .line 69
    iget-boolean v6, p0, Lcom/android/exsettings/accounts/SyncStateSwitchPreference;->mFailed:Z

    if-eqz v6, :cond_0

    if-eqz v0, :cond_3

    :cond_0
    const/4 v1, 0x0

    .line 70
    .local v1, "failedVisible":Z
    :goto_2
    if-eqz v1, :cond_4

    move v6, v7

    :goto_3
    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 72
    const v6, 0x10203a3

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 73
    .local v3, "switchView":Landroid/view/View;
    iget-boolean v6, p0, Lcom/android/exsettings/accounts/SyncStateSwitchPreference;->mOneTimeSyncMode:Z

    if-eqz v6, :cond_5

    .line 74
    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    .line 81
    const v6, 0x1020010

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 82
    .local v2, "summary":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/android/exsettings/accounts/SyncStateSwitchPreference;->getContext()Landroid/content/Context;

    move-result-object v6

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/exsettings/accounts/SyncStateSwitchPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v9

    aput-object v9, v8, v7

    const v7, 0x7f0c0c8a

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    .end local v2    # "summary":Landroid/widget/TextView;
    :goto_4
    return-void

    .line 65
    .end local v1    # "failedVisible":Z
    .end local v3    # "switchView":Landroid/view/View;
    :cond_1
    const/4 v0, 0x1

    .local v0, "activeVisible":Z
    goto :goto_0

    .end local v0    # "activeVisible":Z
    :cond_2
    move v6, v8

    .line 66
    goto :goto_1

    .line 69
    :cond_3
    const/4 v1, 0x1

    .restart local v1    # "failedVisible":Z
    goto :goto_2

    :cond_4
    move v6, v8

    .line 70
    goto :goto_3

    .line 84
    .restart local v3    # "switchView":Landroid/view/View;
    :cond_5
    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4
.end method

.method protected onClick()V
    .locals 2

    .prologue
    .line 134
    iget-boolean v0, p0, Lcom/android/exsettings/accounts/SyncStateSwitchPreference;->mOneTimeSyncMode:Z

    if-nez v0, :cond_0

    .line 135
    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 136
    const-string/jumbo v0, "SyncState"

    const-string/jumbo v1, "ignoring monkey\'s attempt to flip sync state"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    :cond_0
    :goto_0
    return-void

    .line 138
    :cond_1
    invoke-super {p0}, Landroid/preference/SwitchPreference;->onClick()V

    goto :goto_0
.end method

.method public setActive(Z)V
    .locals 0
    .param p1, "isActive"    # Z

    .prologue
    .line 93
    iput-boolean p1, p0, Lcom/android/exsettings/accounts/SyncStateSwitchPreference;->mIsActive:Z

    .line 94
    invoke-virtual {p0}, Lcom/android/exsettings/accounts/SyncStateSwitchPreference;->notifyChanged()V

    .line 92
    return-void
.end method

.method public setFailed(Z)V
    .locals 0
    .param p1, "failed"    # Z

    .prologue
    .line 111
    iput-boolean p1, p0, Lcom/android/exsettings/accounts/SyncStateSwitchPreference;->mFailed:Z

    .line 112
    invoke-virtual {p0}, Lcom/android/exsettings/accounts/SyncStateSwitchPreference;->notifyChanged()V

    .line 110
    return-void
.end method

.method public setOneTimeSyncMode(Z)V
    .locals 0
    .param p1, "oneTimeSyncMode"    # Z

    .prologue
    .line 119
    iput-boolean p1, p0, Lcom/android/exsettings/accounts/SyncStateSwitchPreference;->mOneTimeSyncMode:Z

    .line 120
    invoke-virtual {p0}, Lcom/android/exsettings/accounts/SyncStateSwitchPreference;->notifyChanged()V

    .line 118
    return-void
.end method

.method public setPending(Z)V
    .locals 0
    .param p1, "isPending"    # Z

    .prologue
    .line 102
    iput-boolean p1, p0, Lcom/android/exsettings/accounts/SyncStateSwitchPreference;->mIsPending:Z

    .line 103
    invoke-virtual {p0}, Lcom/android/exsettings/accounts/SyncStateSwitchPreference;->notifyChanged()V

    .line 101
    return-void
.end method
