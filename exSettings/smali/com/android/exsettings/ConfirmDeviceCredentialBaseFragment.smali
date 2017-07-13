.class public abstract Lcom/android/exsettings/ConfirmDeviceCredentialBaseFragment;
.super Lcom/android/exsettings/InstrumentedFragment;
.source "ConfirmDeviceCredentialBaseFragment.java"

# interfaces
.implements Lcom/android/exsettings/fingerprint/FingerprintUiHelper$Callback;


# instance fields
.field private mAllowFpAuthentication:Z

.field protected mCancelButton:Landroid/widget/Button;

.field private mFingerprintHelper:Lcom/android/exsettings/fingerprint/FingerprintUiHelper;

.field protected mFingerprintIcon:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/exsettings/InstrumentedFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract authenticationSucceeded()V
.end method

.method public onAuthenticated()V
    .locals 1

    .prologue
    .line 111
    invoke-virtual {p0}, Lcom/android/exsettings/ConfirmDeviceCredentialBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/exsettings/ConfirmDeviceCredentialBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    invoke-virtual {p0}, Lcom/android/exsettings/ConfirmDeviceCredentialBaseFragment;->authenticationSucceeded()V

    .line 109
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 54
    invoke-super {p0, p1}, Lcom/android/exsettings/InstrumentedFragment;->onCreate(Landroid/os/Bundle;)V

    .line 55
    invoke-virtual {p0}, Lcom/android/exsettings/ConfirmDeviceCredentialBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 56
    const-string/jumbo v1, "com.android.settings.ConfirmCredentials.allowFpAuthentication"

    const/4 v2, 0x0

    .line 55
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/exsettings/ConfirmDeviceCredentialBaseFragment;->mAllowFpAuthentication:Z

    .line 53
    return-void
.end method

.method public onFingerprintIconVisibilityChanged(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 119
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 102
    invoke-super {p0}, Lcom/android/exsettings/InstrumentedFragment;->onPause()V

    .line 103
    iget-boolean v0, p0, Lcom/android/exsettings/ConfirmDeviceCredentialBaseFragment;->mAllowFpAuthentication:Z

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/android/exsettings/ConfirmDeviceCredentialBaseFragment;->mFingerprintHelper:Lcom/android/exsettings/fingerprint/FingerprintUiHelper;

    invoke-virtual {v0}, Lcom/android/exsettings/fingerprint/FingerprintUiHelper;->stopListening()V

    .line 101
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 80
    invoke-super {p0}, Lcom/android/exsettings/InstrumentedFragment;->onResume()V

    .line 81
    iget-boolean v0, p0, Lcom/android/exsettings/ConfirmDeviceCredentialBaseFragment;->mAllowFpAuthentication:Z

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/android/exsettings/ConfirmDeviceCredentialBaseFragment;->mFingerprintHelper:Lcom/android/exsettings/fingerprint/FingerprintUiHelper;

    invoke-virtual {v0}, Lcom/android/exsettings/fingerprint/FingerprintUiHelper;->startListening()V

    .line 79
    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 61
    invoke-super {p0, p1, p2}, Lcom/android/exsettings/InstrumentedFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 62
    const v1, 0x7f13006c

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/exsettings/ConfirmDeviceCredentialBaseFragment;->mCancelButton:Landroid/widget/Button;

    .line 63
    const v1, 0x7f13006e

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/exsettings/ConfirmDeviceCredentialBaseFragment;->mFingerprintIcon:Landroid/widget/ImageView;

    .line 64
    new-instance v3, Lcom/android/exsettings/fingerprint/FingerprintUiHelper;

    .line 65
    iget-object v4, p0, Lcom/android/exsettings/ConfirmDeviceCredentialBaseFragment;->mFingerprintIcon:Landroid/widget/ImageView;

    .line 66
    const v1, 0x7f13006d

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 64
    invoke-direct {v3, v4, v1, p0}, Lcom/android/exsettings/fingerprint/FingerprintUiHelper;-><init>(Landroid/widget/ImageView;Landroid/widget/TextView;Lcom/android/exsettings/fingerprint/FingerprintUiHelper$Callback;)V

    iput-object v3, p0, Lcom/android/exsettings/ConfirmDeviceCredentialBaseFragment;->mFingerprintHelper:Lcom/android/exsettings/fingerprint/FingerprintUiHelper;

    .line 67
    invoke-virtual {p0}, Lcom/android/exsettings/ConfirmDeviceCredentialBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 68
    const-string/jumbo v3, "com.android.settings.ConfirmCredentials.showCancelButton"

    .line 67
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 69
    .local v0, "showCancelButton":Z
    iget-object v3, p0, Lcom/android/exsettings/ConfirmDeviceCredentialBaseFragment;->mCancelButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v3, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 70
    iget-object v1, p0, Lcom/android/exsettings/ConfirmDeviceCredentialBaseFragment;->mCancelButton:Landroid/widget/Button;

    new-instance v2, Lcom/android/exsettings/ConfirmDeviceCredentialBaseFragment$1;

    invoke-direct {v2, p0}, Lcom/android/exsettings/ConfirmDeviceCredentialBaseFragment$1;-><init>(Lcom/android/exsettings/ConfirmDeviceCredentialBaseFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    return-void

    .line 69
    :cond_0
    const/16 v1, 0x8

    goto :goto_0
.end method

.method public prepareEnterAnimation()V
    .locals 0

    .prologue
    .line 122
    return-void
.end method

.method protected setAccessibilityTitle(Ljava/lang/CharSequence;)V
    .locals 5
    .param p1, "suplementalText"    # Ljava/lang/CharSequence;

    .prologue
    .line 87
    invoke-virtual {p0}, Lcom/android/exsettings/ConfirmDeviceCredentialBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 88
    .local v1, "intent":Landroid/content/Intent;
    if-eqz v1, :cond_2

    .line 90
    const-string/jumbo v3, "com.android.settings.ConfirmCredentials.title"

    .line 89
    invoke-virtual {v1, v3}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 91
    .local v2, "titleText":Ljava/lang/CharSequence;
    if-eqz v2, :cond_0

    if-nez p1, :cond_1

    .line 92
    :cond_0
    return-void

    .line 95
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const-string/jumbo v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 96
    .local v0, "accessibilityTitle":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/exsettings/ConfirmDeviceCredentialBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v2, v0}, Lcom/android/exsettings/Utils;->createAccessibleSequence(Ljava/lang/CharSequence;Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 86
    .end local v0    # "accessibilityTitle":Ljava/lang/String;
    .end local v2    # "titleText":Ljava/lang/CharSequence;
    :cond_2
    return-void
.end method

.method public startEnterAnimation()V
    .locals 0

    .prologue
    .line 125
    return-void
.end method
