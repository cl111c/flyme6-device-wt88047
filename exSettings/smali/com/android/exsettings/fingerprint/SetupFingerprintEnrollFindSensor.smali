.class public Lcom/android/exsettings/fingerprint/SetupFingerprintEnrollFindSensor;
.super Lcom/android/exsettings/fingerprint/FingerprintEnrollFindSensor;
.source "SetupFingerprintEnrollFindSensor.java"

# interfaces
.implements Lcom/android/setupwizardlib/view/NavigationBar$NavigationBarListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/android/exsettings/fingerprint/FingerprintEnrollFindSensor;-><init>()V

    return-void
.end method


# virtual methods
.method protected getEnrollingIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 35
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/exsettings/fingerprint/SetupFingerprintEnrollEnrolling;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 36
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "hw_auth_token"

    iget-object v2, p0, Lcom/android/exsettings/fingerprint/SetupFingerprintEnrollFindSensor;->mToken:[B

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 37
    invoke-virtual {p0}, Lcom/android/exsettings/fingerprint/SetupFingerprintEnrollFindSensor;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/exsettings/SetupWizardUtils;->copySetupExtras(Landroid/content/Intent;Landroid/content/Intent;)V

    .line 38
    return-object v0
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 77
    const/16 v0, 0xf7

    return v0
.end method

.method protected getNextButton()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 62
    invoke-virtual {p0}, Lcom/android/exsettings/fingerprint/SetupFingerprintEnrollFindSensor;->getNavigationBar()Lcom/android/setupwizardlib/view/NavigationBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/setupwizardlib/view/NavigationBar;->getNextButton()Landroid/widget/Button;

    move-result-object v0

    return-object v0
.end method

.method protected initViews()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 49
    invoke-static {p0}, Lcom/android/exsettings/SetupWizardUtils;->setImmersiveMode(Landroid/app/Activity;)V

    .line 51
    const v1, 0x7f13005b

    invoke-virtual {p0, v1}, Lcom/android/exsettings/fingerprint/SetupFingerprintEnrollFindSensor;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 52
    .local v0, "nextButton":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 53
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 56
    :cond_0
    invoke-virtual {p0}, Lcom/android/exsettings/fingerprint/SetupFingerprintEnrollFindSensor;->getNavigationBar()Lcom/android/setupwizardlib/view/NavigationBar;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/setupwizardlib/view/NavigationBar;->setNavigationBarListener(Lcom/android/setupwizardlib/view/NavigationBar$NavigationBarListener;)V

    .line 57
    invoke-virtual {p0}, Lcom/android/exsettings/fingerprint/SetupFingerprintEnrollFindSensor;->getNavigationBar()Lcom/android/setupwizardlib/view/NavigationBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/setupwizardlib/view/NavigationBar;->getBackButton()Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 48
    return-void
.end method

.method protected onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V
    .locals 1
    .param p1, "theme"    # Landroid/content/res/Resources$Theme;
    .param p2, "resid"    # I
    .param p3, "first"    # Z

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/android/exsettings/fingerprint/SetupFingerprintEnrollFindSensor;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/android/exsettings/SetupWizardUtils;->getTheme(Landroid/content/Intent;)I

    move-result p2

    .line 44
    invoke-super {p0, p1, p2, p3}, Lcom/android/exsettings/fingerprint/FingerprintEnrollFindSensor;->onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V

    .line 42
    return-void
.end method

.method public onNavigateBack()V
    .locals 0

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/android/exsettings/fingerprint/SetupFingerprintEnrollFindSensor;->onBackPressed()V

    .line 66
    return-void
.end method

.method public onNavigateNext()V
    .locals 0

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/android/exsettings/fingerprint/SetupFingerprintEnrollFindSensor;->onNextButtonClick()V

    .line 71
    return-void
.end method
