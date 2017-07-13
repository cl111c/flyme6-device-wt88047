.class public Lcom/android/exsettings/fingerprint/FingerprintUiHelper;
.super Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;
.source "FingerprintUiHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exsettings/fingerprint/FingerprintUiHelper$Callback;,
        Lcom/android/exsettings/fingerprint/FingerprintUiHelper$1;
    }
.end annotation


# instance fields
.field private mCallback:Lcom/android/exsettings/fingerprint/FingerprintUiHelper$Callback;

.field private mCanceledBySelf:Z

.field private mCancellationSignal:Landroid/os/CancellationSignal;

.field private mDark:Z

.field private mErrorTextView:Landroid/widget/TextView;

.field private mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

.field private mIcon:Landroid/widget/ImageView;

.field private mIdleText:Ljava/lang/String;

.field private mResetErrorTextRunnable:Ljava/lang/Runnable;


# direct methods
.method static synthetic -get0(Lcom/android/exsettings/fingerprint/FingerprintUiHelper;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/exsettings/fingerprint/FingerprintUiHelper;->mDark:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/exsettings/fingerprint/FingerprintUiHelper;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/fingerprint/FingerprintUiHelper;->mErrorTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/exsettings/fingerprint/FingerprintUiHelper;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/fingerprint/FingerprintUiHelper;->mIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/exsettings/fingerprint/FingerprintUiHelper;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/fingerprint/FingerprintUiHelper;->mIdleText:Ljava/lang/String;

    return-object v0
.end method

.method public constructor <init>(Landroid/widget/ImageView;Landroid/widget/TextView;Lcom/android/exsettings/fingerprint/FingerprintUiHelper$Callback;)V
    .locals 2
    .param p1, "icon"    # Landroid/widget/ImageView;
    .param p2, "errorTextView"    # Landroid/widget/TextView;
    .param p3, "callback"    # Lcom/android/exsettings/fingerprint/FingerprintUiHelper$Callback;

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;-><init>()V

    .line 127
    new-instance v0, Lcom/android/exsettings/fingerprint/FingerprintUiHelper$1;

    invoke-direct {v0, p0}, Lcom/android/exsettings/fingerprint/FingerprintUiHelper$1;-><init>(Lcom/android/exsettings/fingerprint/FingerprintUiHelper;)V

    iput-object v0, p0, Lcom/android/exsettings/fingerprint/FingerprintUiHelper;->mResetErrorTextRunnable:Ljava/lang/Runnable;

    .line 48
    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/FingerprintManager;

    iput-object v0, p0, Lcom/android/exsettings/fingerprint/FingerprintUiHelper;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    .line 49
    iput-object p1, p0, Lcom/android/exsettings/fingerprint/FingerprintUiHelper;->mIcon:Landroid/widget/ImageView;

    .line 50
    iput-object p2, p0, Lcom/android/exsettings/fingerprint/FingerprintUiHelper;->mErrorTextView:Landroid/widget/TextView;

    .line 51
    iput-object p3, p0, Lcom/android/exsettings/fingerprint/FingerprintUiHelper;->mCallback:Lcom/android/exsettings/fingerprint/FingerprintUiHelper$Callback;

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/exsettings/fingerprint/FingerprintUiHelper;->mDark:Z

    .line 47
    return-void
.end method

.method private isListening()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 83
    iget-object v1, p0, Lcom/android/exsettings/fingerprint/FingerprintUiHelper;->mCancellationSignal:Landroid/os/CancellationSignal;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/exsettings/fingerprint/FingerprintUiHelper;->mCancellationSignal:Landroid/os/CancellationSignal;

    invoke-virtual {v1}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private setFingerprintIconVisibility(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 87
    iget-object v1, p0, Lcom/android/exsettings/fingerprint/FingerprintUiHelper;->mIcon:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 88
    iget-object v0, p0, Lcom/android/exsettings/fingerprint/FingerprintUiHelper;->mCallback:Lcom/android/exsettings/fingerprint/FingerprintUiHelper$Callback;

    invoke-interface {v0, p1}, Lcom/android/exsettings/fingerprint/FingerprintUiHelper$Callback;->onFingerprintIconVisibilityChanged(Z)V

    .line 86
    return-void

    .line 87
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method private showError(Ljava/lang/CharSequence;)V
    .locals 4
    .param p1, "error"    # Ljava/lang/CharSequence;

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/android/exsettings/fingerprint/FingerprintUiHelper;->isListening()Z

    move-result v0

    if-nez v0, :cond_0

    .line 118
    return-void

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/android/exsettings/fingerprint/FingerprintUiHelper;->mIcon:Landroid/widget/ImageView;

    const v1, 0x7f020075

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 122
    iget-object v0, p0, Lcom/android/exsettings/fingerprint/FingerprintUiHelper;->mErrorTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    iget-object v0, p0, Lcom/android/exsettings/fingerprint/FingerprintUiHelper;->mErrorTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/exsettings/fingerprint/FingerprintUiHelper;->mResetErrorTextRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 124
    iget-object v0, p0, Lcom/android/exsettings/fingerprint/FingerprintUiHelper;->mErrorTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/exsettings/fingerprint/FingerprintUiHelper;->mResetErrorTextRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x514

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 116
    return-void
.end method


# virtual methods
.method public onAuthenticationError(ILjava/lang/CharSequence;)V
    .locals 1
    .param p1, "errMsgId"    # I
    .param p2, "errString"    # Ljava/lang/CharSequence;

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/android/exsettings/fingerprint/FingerprintUiHelper;->mCanceledBySelf:Z

    if-nez v0, :cond_0

    .line 94
    invoke-direct {p0, p2}, Lcom/android/exsettings/fingerprint/FingerprintUiHelper;->showError(Ljava/lang/CharSequence;)V

    .line 95
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/exsettings/fingerprint/FingerprintUiHelper;->setFingerprintIconVisibility(Z)V

    .line 92
    :cond_0
    return-void
.end method

.method public onAuthenticationFailed()V
    .locals 2

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/exsettings/fingerprint/FingerprintUiHelper;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 107
    const v1, 0x7f0c0f43

    .line 106
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/exsettings/fingerprint/FingerprintUiHelper;->showError(Ljava/lang/CharSequence;)V

    .line 105
    return-void
.end method

.method public onAuthenticationHelp(ILjava/lang/CharSequence;)V
    .locals 0
    .param p1, "helpMsgId"    # I
    .param p2, "helpString"    # Ljava/lang/CharSequence;

    .prologue
    .line 101
    invoke-direct {p0, p2}, Lcom/android/exsettings/fingerprint/FingerprintUiHelper;->showError(Ljava/lang/CharSequence;)V

    .line 100
    return-void
.end method

.method public onAuthenticationSucceeded(Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;)V
    .locals 2
    .param p1, "result"    # Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/exsettings/fingerprint/FingerprintUiHelper;->mIcon:Landroid/widget/ImageView;

    const v1, 0x7f020076

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 113
    iget-object v0, p0, Lcom/android/exsettings/fingerprint/FingerprintUiHelper;->mCallback:Lcom/android/exsettings/fingerprint/FingerprintUiHelper$Callback;

    invoke-interface {v0}, Lcom/android/exsettings/fingerprint/FingerprintUiHelper$Callback;->onAuthenticated()V

    .line 111
    return-void
.end method

.method public setDarkIconography(Z)V
    .locals 0
    .param p1, "dark"    # Z

    .prologue
    .line 75
    iput-boolean p1, p0, Lcom/android/exsettings/fingerprint/FingerprintUiHelper;->mDark:Z

    .line 74
    return-void
.end method

.method public setIdleText(Ljava/lang/String;)V
    .locals 0
    .param p1, "idleText"    # Ljava/lang/String;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/android/exsettings/fingerprint/FingerprintUiHelper;->mIdleText:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public startListening()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 56
    iget-object v0, p0, Lcom/android/exsettings/fingerprint/FingerprintUiHelper;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 57
    iput-boolean v3, p0, Lcom/android/exsettings/fingerprint/FingerprintUiHelper;->mCanceledBySelf:Z

    .line 58
    new-instance v0, Landroid/os/CancellationSignal;

    invoke-direct {v0}, Landroid/os/CancellationSignal;-><init>()V

    iput-object v0, p0, Lcom/android/exsettings/fingerprint/FingerprintUiHelper;->mCancellationSignal:Landroid/os/CancellationSignal;

    .line 59
    iget-object v0, p0, Lcom/android/exsettings/fingerprint/FingerprintUiHelper;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget-object v2, p0, Lcom/android/exsettings/fingerprint/FingerprintUiHelper;->mCancellationSignal:Landroid/os/CancellationSignal;

    move-object v4, p0

    move-object v5, v1

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/fingerprint/FingerprintManager;->authenticate(Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;Landroid/os/CancellationSignal;ILandroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;Landroid/os/Handler;)V

    .line 60
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/exsettings/fingerprint/FingerprintUiHelper;->setFingerprintIconVisibility(Z)V

    .line 61
    iget-object v1, p0, Lcom/android/exsettings/fingerprint/FingerprintUiHelper;->mIcon:Landroid/widget/ImageView;

    iget-boolean v0, p0, Lcom/android/exsettings/fingerprint/FingerprintUiHelper;->mDark:Z

    if-eqz v0, :cond_1

    const v0, 0x7f020074

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 55
    :cond_0
    return-void

    .line 62
    :cond_1
    const v0, 0x7f020073

    goto :goto_0
.end method

.method public stopListening()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 67
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/exsettings/fingerprint/FingerprintUiHelper;->mCanceledBySelf:Z

    .line 68
    iget-object v0, p0, Lcom/android/exsettings/fingerprint/FingerprintUiHelper;->mCancellationSignal:Landroid/os/CancellationSignal;

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/android/exsettings/fingerprint/FingerprintUiHelper;->mCancellationSignal:Landroid/os/CancellationSignal;

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V

    .line 70
    iput-object v1, p0, Lcom/android/exsettings/fingerprint/FingerprintUiHelper;->mCancellationSignal:Landroid/os/CancellationSignal;

    .line 66
    :cond_0
    return-void
.end method
