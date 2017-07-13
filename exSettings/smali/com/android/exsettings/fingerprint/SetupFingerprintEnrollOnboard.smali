.class public Lcom/android/exsettings/fingerprint/SetupFingerprintEnrollOnboard;
.super Lcom/android/exsettings/fingerprint/FingerprintEnrollOnboard;
.source "SetupFingerprintEnrollOnboard.java"

# interfaces
.implements Lcom/android/setupwizardlib/view/NavigationBar$NavigationBarListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/android/exsettings/fingerprint/FingerprintEnrollOnboard;-><init>()V

    return-void
.end method


# virtual methods
.method protected getChooseLockIntent()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 35
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/exsettings/SetupChooseLockGeneric;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 36
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/exsettings/fingerprint/SetupFingerprintEnrollOnboard;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/exsettings/SetupWizardUtils;->copySetupExtras(Landroid/content/Intent;Landroid/content/Intent;)V

    .line 37
    return-object v0
.end method

.method protected getFindSensorIntent()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 42
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/exsettings/fingerprint/SetupFingerprintEnrollFindSensor;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 43
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/exsettings/fingerprint/SetupFingerprintEnrollOnboard;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/exsettings/SetupWizardUtils;->copySetupExtras(Landroid/content/Intent;Landroid/content/Intent;)V

    .line 44
    return-object v0
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 82
    const/16 v0, 0xfa

    return v0
.end method

.method protected getNextButton()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/android/exsettings/fingerprint/SetupFingerprintEnrollOnboard;->getNavigationBar()Lcom/android/setupwizardlib/view/NavigationBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/setupwizardlib/view/NavigationBar;->getNextButton()Landroid/widget/Button;

    move-result-object v0

    return-object v0
.end method

.method protected initViews()V
    .locals 2

    .prologue
    .line 55
    invoke-static {p0}, Lcom/android/exsettings/SetupWizardUtils;->setImmersiveMode(Landroid/app/Activity;)V

    .line 57
    const v1, 0x7f13005b

    invoke-virtual {p0, v1}, Lcom/android/exsettings/fingerprint/SetupFingerprintEnrollOnboard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 58
    .local v0, "nextButton":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 59
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 62
    :cond_0
    invoke-virtual {p0}, Lcom/android/exsettings/fingerprint/SetupFingerprintEnrollOnboard;->getNavigationBar()Lcom/android/setupwizardlib/view/NavigationBar;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/setupwizardlib/view/NavigationBar;->setNavigationBarListener(Lcom/android/setupwizardlib/view/NavigationBar$NavigationBarListener;)V

    .line 54
    return-void
.end method

.method protected onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V
    .locals 1
    .param p1, "theme"    # Landroid/content/res/Resources$Theme;
    .param p2, "resid"    # I
    .param p3, "first"    # Z

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/android/exsettings/fingerprint/SetupFingerprintEnrollOnboard;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/android/exsettings/SetupWizardUtils;->getTheme(Landroid/content/Intent;)I

    move-result p2

    .line 50
    invoke-super {p0, p1, p2, p3}, Lcom/android/exsettings/fingerprint/FingerprintEnrollOnboard;->onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V

    .line 48
    return-void
.end method

.method public onNavigateBack()V
    .locals 0

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/android/exsettings/fingerprint/SetupFingerprintEnrollOnboard;->onBackPressed()V

    .line 71
    return-void
.end method

.method public onNavigateNext()V
    .locals 0

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/android/exsettings/fingerprint/SetupFingerprintEnrollOnboard;->onNextButtonClick()V

    .line 76
    return-void
.end method
