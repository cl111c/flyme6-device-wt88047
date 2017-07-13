.class public Lcom/android/exsettings/fingerprint/FingerprintEnrollSidecar;
.super Lcom/android/exsettings/InstrumentedFragment;
.source "FingerprintEnrollSidecar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exsettings/fingerprint/FingerprintEnrollSidecar$Listener;,
        Lcom/android/exsettings/fingerprint/FingerprintEnrollSidecar$1;,
        Lcom/android/exsettings/fingerprint/FingerprintEnrollSidecar$2;
    }
.end annotation


# instance fields
.field private mDone:Z

.field private mEnrolling:Z

.field private mEnrollmentCallback:Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;

.field private mEnrollmentCancel:Landroid/os/CancellationSignal;

.field private mEnrollmentRemaining:I

.field private mEnrollmentSteps:I

.field private mHandler:Landroid/os/Handler;

.field private mListener:Lcom/android/exsettings/fingerprint/FingerprintEnrollSidecar$Listener;

.field private final mTimeoutRunnable:Ljava/lang/Runnable;

.field private mToken:[B


# direct methods
.method static synthetic -get0(Lcom/android/exsettings/fingerprint/FingerprintEnrollSidecar;)I
    .locals 1

    iget v0, p0, Lcom/android/exsettings/fingerprint/FingerprintEnrollSidecar;->mEnrollmentSteps:I

    return v0
.end method

.method static synthetic -get1(Lcom/android/exsettings/fingerprint/FingerprintEnrollSidecar;)Lcom/android/exsettings/fingerprint/FingerprintEnrollSidecar$Listener;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/fingerprint/FingerprintEnrollSidecar;->mListener:Lcom/android/exsettings/fingerprint/FingerprintEnrollSidecar$Listener;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/exsettings/fingerprint/FingerprintEnrollSidecar;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/exsettings/fingerprint/FingerprintEnrollSidecar;->mDone:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/exsettings/fingerprint/FingerprintEnrollSidecar;I)I
    .locals 0

    iput p1, p0, Lcom/android/exsettings/fingerprint/FingerprintEnrollSidecar;->mEnrollmentRemaining:I

    return p1
.end method

.method static synthetic -set2(Lcom/android/exsettings/fingerprint/FingerprintEnrollSidecar;I)I
    .locals 0

    iput p1, p0, Lcom/android/exsettings/fingerprint/FingerprintEnrollSidecar;->mEnrollmentSteps:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/exsettings/fingerprint/FingerprintEnrollSidecar;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/exsettings/fingerprint/FingerprintEnrollSidecar;->cancelEnrollment()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/android/exsettings/InstrumentedFragment;-><init>()V

    .line 36
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/exsettings/fingerprint/FingerprintEnrollSidecar;->mEnrollmentSteps:I

    .line 37
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/exsettings/fingerprint/FingerprintEnrollSidecar;->mEnrollmentRemaining:I

    .line 41
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/exsettings/fingerprint/FingerprintEnrollSidecar;->mHandler:Landroid/os/Handler;

    .line 109
    new-instance v0, Lcom/android/exsettings/fingerprint/FingerprintEnrollSidecar$1;

    invoke-direct {v0, p0}, Lcom/android/exsettings/fingerprint/FingerprintEnrollSidecar$1;-><init>(Lcom/android/exsettings/fingerprint/FingerprintEnrollSidecar;)V

    .line 108
    iput-object v0, p0, Lcom/android/exsettings/fingerprint/FingerprintEnrollSidecar;->mEnrollmentCallback:Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;

    .line 138
    new-instance v0, Lcom/android/exsettings/fingerprint/FingerprintEnrollSidecar$2;

    invoke-direct {v0, p0}, Lcom/android/exsettings/fingerprint/FingerprintEnrollSidecar$2;-><init>(Lcom/android/exsettings/fingerprint/FingerprintEnrollSidecar;)V

    iput-object v0, p0, Lcom/android/exsettings/fingerprint/FingerprintEnrollSidecar;->mTimeoutRunnable:Ljava/lang/Runnable;

    .line 34
    return-void
.end method

.method private cancelEnrollment()V
    .locals 2

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/exsettings/fingerprint/FingerprintEnrollSidecar;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/exsettings/fingerprint/FingerprintEnrollSidecar;->mTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 85
    iget-boolean v0, p0, Lcom/android/exsettings/fingerprint/FingerprintEnrollSidecar;->mEnrolling:Z

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/android/exsettings/fingerprint/FingerprintEnrollSidecar;->mEnrollmentCancel:Landroid/os/CancellationSignal;

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V

    .line 87
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/exsettings/fingerprint/FingerprintEnrollSidecar;->mEnrolling:Z

    .line 88
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/exsettings/fingerprint/FingerprintEnrollSidecar;->mEnrollmentSteps:I

    .line 83
    :cond_0
    return-void
.end method

.method private startEnrollment()V
    .locals 5

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/exsettings/fingerprint/FingerprintEnrollSidecar;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/exsettings/fingerprint/FingerprintEnrollSidecar;->mTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 76
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/exsettings/fingerprint/FingerprintEnrollSidecar;->mEnrollmentSteps:I

    .line 77
    new-instance v0, Landroid/os/CancellationSignal;

    invoke-direct {v0}, Landroid/os/CancellationSignal;-><init>()V

    iput-object v0, p0, Lcom/android/exsettings/fingerprint/FingerprintEnrollSidecar;->mEnrollmentCancel:Landroid/os/CancellationSignal;

    .line 78
    invoke-virtual {p0}, Lcom/android/exsettings/fingerprint/FingerprintEnrollSidecar;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-class v1, Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/FingerprintManager;

    iget-object v1, p0, Lcom/android/exsettings/fingerprint/FingerprintEnrollSidecar;->mToken:[B

    iget-object v2, p0, Lcom/android/exsettings/fingerprint/FingerprintEnrollSidecar;->mEnrollmentCancel:Landroid/os/CancellationSignal;

    .line 79
    iget-object v3, p0, Lcom/android/exsettings/fingerprint/FingerprintEnrollSidecar;->mEnrollmentCallback:Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;

    const/4 v4, 0x0

    .line 78
    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/hardware/fingerprint/FingerprintManager;->enroll([BLandroid/os/CancellationSignal;ILandroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;)V

    .line 80
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/exsettings/fingerprint/FingerprintEnrollSidecar;->mEnrolling:Z

    .line 74
    return-void
.end method


# virtual methods
.method public getEnrollmentRemaining()I
    .locals 1

    .prologue
    .line 101
    iget v0, p0, Lcom/android/exsettings/fingerprint/FingerprintEnrollSidecar;->mEnrollmentRemaining:I

    return v0
.end method

.method public getEnrollmentSteps()I
    .locals 1

    .prologue
    .line 97
    iget v0, p0, Lcom/android/exsettings/fingerprint/FingerprintEnrollSidecar;->mEnrollmentSteps:I

    return v0
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 147
    const/16 v0, 0xf5

    return v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 53
    invoke-super {p0, p1}, Lcom/android/exsettings/InstrumentedFragment;->onAttach(Landroid/app/Activity;)V

    .line 54
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 55
    const-string/jumbo v1, "hw_auth_token"

    .line 54
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/fingerprint/FingerprintEnrollSidecar;->mToken:[B

    .line 52
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 47
    invoke-super {p0, p1}, Lcom/android/exsettings/InstrumentedFragment;->onCreate(Landroid/os/Bundle;)V

    .line 48
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/exsettings/fingerprint/FingerprintEnrollSidecar;->setRetainInstance(Z)V

    .line 46
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 60
    invoke-super {p0}, Lcom/android/exsettings/InstrumentedFragment;->onStart()V

    .line 61
    iget-boolean v0, p0, Lcom/android/exsettings/fingerprint/FingerprintEnrollSidecar;->mEnrolling:Z

    if-nez v0, :cond_0

    .line 62
    invoke-direct {p0}, Lcom/android/exsettings/fingerprint/FingerprintEnrollSidecar;->startEnrollment()V

    .line 59
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 68
    invoke-super {p0}, Lcom/android/exsettings/InstrumentedFragment;->onStop()V

    .line 69
    invoke-virtual {p0}, Lcom/android/exsettings/fingerprint/FingerprintEnrollSidecar;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_0

    .line 70
    invoke-direct {p0}, Lcom/android/exsettings/fingerprint/FingerprintEnrollSidecar;->cancelEnrollment()V

    .line 67
    :cond_0
    return-void
.end method

.method public setListener(Lcom/android/exsettings/fingerprint/FingerprintEnrollSidecar$Listener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/exsettings/fingerprint/FingerprintEnrollSidecar$Listener;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/android/exsettings/fingerprint/FingerprintEnrollSidecar;->mListener:Lcom/android/exsettings/fingerprint/FingerprintEnrollSidecar$Listener;

    .line 92
    return-void
.end method
