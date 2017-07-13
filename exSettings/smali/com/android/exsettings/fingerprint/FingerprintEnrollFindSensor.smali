.class public Lcom/android/exsettings/fingerprint/FingerprintEnrollFindSensor;
.super Lcom/android/exsettings/fingerprint/FingerprintEnrollBase;
.source "FingerprintEnrollFindSensor.java"


# instance fields
.field private mAnimation:Lcom/android/exsettings/fingerprint/FingerprintLocationAnimationView;

.field private mLaunchedConfirmLock:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/exsettings/fingerprint/FingerprintEnrollBase;-><init>()V

    return-void
.end method

.method private launchConfirmLock()V
    .locals 8

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x1

    .line 131
    const-class v0, Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {p0, v0}, Lcom/android/exsettings/fingerprint/FingerprintEnrollFindSensor;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->preEnroll()J

    move-result-wide v6

    .line 132
    .local v6, "challenge":J
    new-instance v1, Lcom/android/exsettings/ChooseLockSettingsHelper;

    invoke-direct {v1, p0}, Lcom/android/exsettings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    .line 134
    .local v1, "helper":Lcom/android/exsettings/ChooseLockSettingsHelper;
    const v0, 0x7f0c061b

    invoke-virtual {p0, v0}, Lcom/android/exsettings/fingerprint/FingerprintEnrollFindSensor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    .line 133
    invoke-virtual/range {v1 .. v7}, Lcom/android/exsettings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 139
    invoke-virtual {p0}, Lcom/android/exsettings/fingerprint/FingerprintEnrollFindSensor;->finish()V

    .line 130
    :goto_0
    return-void

    .line 141
    :cond_0
    iput-boolean v2, p0, Lcom/android/exsettings/fingerprint/FingerprintEnrollFindSensor;->mLaunchedConfirmLock:Z

    goto :goto_0
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 147
    const/16 v0, 0xf1

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 6
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 99
    if-ne p1, v3, :cond_2

    .line 100
    const/4 v3, -0x1

    if-ne p2, v3, :cond_1

    .line 101
    const-string/jumbo v3, "hw_auth_token"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v3

    iput-object v3, p0, Lcom/android/exsettings/fingerprint/FingerprintEnrollFindSensor;->mToken:[B

    .line 102
    const v3, 0x7f05000d

    const v4, 0x7f05000e

    invoke-virtual {p0, v3, v4}, Lcom/android/exsettings/fingerprint/FingerprintEnrollFindSensor;->overridePendingTransition(II)V

    .line 98
    :cond_0
    :goto_0
    return-void

    .line 104
    :cond_1
    invoke-virtual {p0}, Lcom/android/exsettings/fingerprint/FingerprintEnrollFindSensor;->finish()V

    goto :goto_0

    .line 106
    :cond_2
    if-ne p1, v4, :cond_6

    .line 107
    if-ne p2, v3, :cond_3

    .line 108
    invoke-virtual {p0, v3}, Lcom/android/exsettings/fingerprint/FingerprintEnrollFindSensor;->setResult(I)V

    .line 109
    invoke-virtual {p0}, Lcom/android/exsettings/fingerprint/FingerprintEnrollFindSensor;->finish()V

    goto :goto_0

    .line 110
    :cond_3
    if-ne p2, v4, :cond_4

    .line 111
    invoke-virtual {p0, v4}, Lcom/android/exsettings/fingerprint/FingerprintEnrollFindSensor;->setResult(I)V

    .line 112
    invoke-virtual {p0}, Lcom/android/exsettings/fingerprint/FingerprintEnrollFindSensor;->finish()V

    goto :goto_0

    .line 113
    :cond_4
    if-ne p2, v5, :cond_5

    .line 114
    invoke-virtual {p0, v5}, Lcom/android/exsettings/fingerprint/FingerprintEnrollFindSensor;->setResult(I)V

    .line 115
    invoke-virtual {p0}, Lcom/android/exsettings/fingerprint/FingerprintEnrollFindSensor;->finish()V

    goto :goto_0

    .line 117
    :cond_5
    const-class v3, Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {p0, v3}, Lcom/android/exsettings/fingerprint/FingerprintEnrollFindSensor;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/fingerprint/FingerprintManager;

    .line 118
    .local v1, "fpm":Landroid/hardware/fingerprint/FingerprintManager;
    invoke-virtual {v1}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    .line 119
    .local v0, "enrolled":I
    invoke-virtual {p0}, Lcom/android/exsettings/fingerprint/FingerprintEnrollFindSensor;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 120
    const v4, 0x10e00a4

    .line 119
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 121
    .local v2, "max":I
    if-lt v0, v2, :cond_0

    .line 122
    invoke-virtual {p0}, Lcom/android/exsettings/fingerprint/FingerprintEnrollFindSensor;->finish()V

    goto :goto_0

    .line 126
    .end local v0    # "enrolled":I
    .end local v1    # "fpm":Landroid/hardware/fingerprint/FingerprintManager;
    .end local v2    # "max":I
    :cond_6
    invoke-super {p0, p1, p2, p3}, Lcom/android/exsettings/fingerprint/FingerprintEnrollBase;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 47
    invoke-super {p0, p1}, Lcom/android/exsettings/fingerprint/FingerprintEnrollBase;->onCreate(Landroid/os/Bundle;)V

    .line 48
    const v3, 0x7f040075

    invoke-virtual {p0, v3}, Lcom/android/exsettings/fingerprint/FingerprintEnrollFindSensor;->setContentView(I)V

    .line 49
    const v3, 0x7f0c062b

    invoke-virtual {p0, v3}, Lcom/android/exsettings/fingerprint/FingerprintEnrollFindSensor;->setHeaderText(I)V

    .line 50
    if-eqz p1, :cond_4

    .line 51
    const-string/jumbo v3, "launched_confirm_lock"

    .line 50
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    :goto_0
    iput-boolean v3, p0, Lcom/android/exsettings/fingerprint/FingerprintEnrollFindSensor;->mLaunchedConfirmLock:Z

    .line 52
    iget-object v3, p0, Lcom/android/exsettings/fingerprint/FingerprintEnrollFindSensor;->mToken:[B

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lcom/android/exsettings/fingerprint/FingerprintEnrollFindSensor;->mLaunchedConfirmLock:Z

    if-eqz v3, :cond_5

    .line 56
    :cond_0
    :goto_1
    const v3, 0x7f13011c

    .line 55
    invoke-virtual {p0, v3}, Lcom/android/exsettings/fingerprint/FingerprintEnrollFindSensor;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/exsettings/fingerprint/FingerprintLocationAnimationView;

    iput-object v3, p0, Lcom/android/exsettings/fingerprint/FingerprintEnrollFindSensor;->mAnimation:Lcom/android/exsettings/fingerprint/FingerprintLocationAnimationView;

    .line 58
    invoke-virtual {p0}, Lcom/android/exsettings/fingerprint/FingerprintEnrollFindSensor;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f0f0004

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 59
    .local v2, "sensorLocation":I
    if-ltz v2, :cond_1

    const/4 v3, 0x3

    if-le v2, v3, :cond_2

    .line 60
    :cond_1
    const/4 v2, 0x0

    .line 62
    :cond_2
    invoke-virtual {p0}, Lcom/android/exsettings/fingerprint/FingerprintEnrollFindSensor;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 63
    const v5, 0x7f0a00a9

    .line 62
    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    aget-object v0, v3, v2

    .line 64
    .local v0, "location":Ljava/lang/String;
    const v3, 0x7f130119

    invoke-virtual {p0, v3}, Lcom/android/exsettings/fingerprint/FingerprintEnrollFindSensor;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 65
    .local v1, "message":Landroid/widget/TextView;
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    .line 67
    aput-object v0, v3, v4

    .line 66
    const v5, 0x7f0c03bd

    .line 65
    invoke-virtual {p0, v5, v3}, Lcom/android/exsettings/fingerprint/FingerprintEnrollFindSensor;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    if-eqz v2, :cond_3

    .line 69
    const v3, 0x7f13011b

    invoke-virtual {p0, v3}, Lcom/android/exsettings/fingerprint/FingerprintEnrollFindSensor;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 46
    :cond_3
    return-void

    .end local v0    # "location":Ljava/lang/String;
    .end local v1    # "message":Landroid/widget/TextView;
    .end local v2    # "sensorLocation":I
    :cond_4
    move v3, v4

    .line 50
    goto :goto_0

    .line 53
    :cond_5
    invoke-direct {p0}, Lcom/android/exsettings/fingerprint/FingerprintEnrollFindSensor;->launchConfirmLock()V

    goto :goto_1
.end method

.method protected onNextButtonClick()V
    .locals 2

    .prologue
    .line 94
    invoke-virtual {p0}, Lcom/android/exsettings/fingerprint/FingerprintEnrollFindSensor;->getEnrollingIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/android/exsettings/fingerprint/FingerprintEnrollFindSensor;->startActivityForResult(Landroid/content/Intent;I)V

    .line 93
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 88
    invoke-super {p0, p1}, Lcom/android/exsettings/fingerprint/FingerprintEnrollBase;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 89
    const-string/jumbo v0, "launched_confirm_lock"

    iget-boolean v1, p0, Lcom/android/exsettings/fingerprint/FingerprintEnrollFindSensor;->mLaunchedConfirmLock:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 87
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 76
    invoke-super {p0}, Lcom/android/exsettings/fingerprint/FingerprintEnrollBase;->onStart()V

    .line 77
    iget-object v0, p0, Lcom/android/exsettings/fingerprint/FingerprintEnrollFindSensor;->mAnimation:Lcom/android/exsettings/fingerprint/FingerprintLocationAnimationView;

    invoke-virtual {v0}, Lcom/android/exsettings/fingerprint/FingerprintLocationAnimationView;->startAnimation()V

    .line 75
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 82
    invoke-super {p0}, Lcom/android/exsettings/fingerprint/FingerprintEnrollBase;->onStop()V

    .line 83
    iget-object v0, p0, Lcom/android/exsettings/fingerprint/FingerprintEnrollFindSensor;->mAnimation:Lcom/android/exsettings/fingerprint/FingerprintLocationAnimationView;

    invoke-virtual {v0}, Lcom/android/exsettings/fingerprint/FingerprintLocationAnimationView;->stopAnimation()V

    .line 81
    return-void
.end method
