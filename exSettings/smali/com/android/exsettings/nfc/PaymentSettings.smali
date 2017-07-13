.class public Lcom/android/exsettings/nfc/PaymentSettings;
.super Lcom/android/exsettings/SettingsPreferenceFragment;
.source "PaymentSettings.java"


# instance fields
.field private mPaymentBackend:Lcom/android/exsettings/nfc/PaymentBackend;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 41
    const/16 v0, 0x46

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 46
    invoke-super {p0, p1}, Lcom/android/exsettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 48
    new-instance v0, Lcom/android/exsettings/nfc/PaymentBackend;

    invoke-virtual {p0}, Lcom/android/exsettings/nfc/PaymentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/exsettings/nfc/PaymentBackend;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/exsettings/nfc/PaymentSettings;->mPaymentBackend:Lcom/android/exsettings/nfc/PaymentBackend;

    .line 49
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/exsettings/nfc/PaymentSettings;->setHasOptionsMenu(Z)V

    .line 45
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 90
    invoke-super {p0, p1, p2}, Lcom/android/exsettings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 91
    const v2, 0x7f0c0db9

    invoke-interface {p1, v2}, Landroid/view/Menu;->add(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 92
    .local v1, "menuItem":Landroid/view/MenuItem;
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/exsettings/nfc/PaymentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/android/exsettings/nfc/HowItWorks;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 93
    .local v0, "howItWorksIntent":Landroid/content/Intent;
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 94
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    .line 89
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 84
    invoke-super {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;->onPause()V

    .line 85
    iget-object v0, p0, Lcom/android/exsettings/nfc/PaymentSettings;->mPaymentBackend:Lcom/android/exsettings/nfc/PaymentBackend;

    invoke-virtual {v0}, Lcom/android/exsettings/nfc/PaymentBackend;->onPause()V

    .line 83
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 78
    invoke-super {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;->onResume()V

    .line 79
    iget-object v0, p0, Lcom/android/exsettings/nfc/PaymentSettings;->mPaymentBackend:Lcom/android/exsettings/nfc/PaymentBackend;

    invoke-virtual {v0}, Lcom/android/exsettings/nfc/PaymentBackend;->onResume()V

    .line 77
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 10
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v9, 0x0

    .line 54
    invoke-super {p0, p1, p2}, Lcom/android/exsettings/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 55
    invoke-virtual {p0}, Lcom/android/exsettings/nfc/PaymentSettings;->getListView()Landroid/widget/ListView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/ListView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 56
    .local v1, "contentRoot":Landroid/view/ViewGroup;
    invoke-virtual {p0}, Lcom/android/exsettings/nfc/PaymentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v7

    .line 57
    const v8, 0x7f04009f

    .line 56
    invoke-virtual {v7, v8, v1, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 58
    .local v2, "emptyView":Landroid/view/View;
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 59
    invoke-virtual {p0}, Lcom/android/exsettings/nfc/PaymentSettings;->getListView()Landroid/widget/ListView;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 61
    invoke-virtual {p0}, Lcom/android/exsettings/nfc/PaymentSettings;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v4

    .line 62
    .local v4, "manager":Landroid/preference/PreferenceManager;
    invoke-virtual {p0}, Lcom/android/exsettings/nfc/PaymentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v6

    .line 64
    .local v6, "screen":Landroid/preference/PreferenceScreen;
    iget-object v7, p0, Lcom/android/exsettings/nfc/PaymentSettings;->mPaymentBackend:Lcom/android/exsettings/nfc/PaymentBackend;

    invoke-virtual {v7}, Lcom/android/exsettings/nfc/PaymentBackend;->getPaymentAppInfos()Ljava/util/List;

    move-result-object v0

    .line 65
    .local v0, "appInfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/exsettings/nfc/PaymentBackend$PaymentAppInfo;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_0

    .line 67
    new-instance v5, Lcom/android/exsettings/nfc/NfcPaymentPreference;

    invoke-virtual {p0}, Lcom/android/exsettings/nfc/PaymentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    iget-object v8, p0, Lcom/android/exsettings/nfc/PaymentSettings;->mPaymentBackend:Lcom/android/exsettings/nfc/PaymentBackend;

    invoke-direct {v5, v7, v8}, Lcom/android/exsettings/nfc/NfcPaymentPreference;-><init>(Landroid/content/Context;Lcom/android/exsettings/nfc/PaymentBackend;)V

    .line 68
    .local v5, "preference":Lcom/android/exsettings/nfc/NfcPaymentPreference;
    invoke-virtual {v6, v5}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 69
    new-instance v3, Lcom/android/exsettings/nfc/NfcForegroundPreference;

    invoke-virtual {p0}, Lcom/android/exsettings/nfc/PaymentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    .line 70
    iget-object v8, p0, Lcom/android/exsettings/nfc/PaymentSettings;->mPaymentBackend:Lcom/android/exsettings/nfc/PaymentBackend;

    .line 69
    invoke-direct {v3, v7, v8}, Lcom/android/exsettings/nfc/NfcForegroundPreference;-><init>(Landroid/content/Context;Lcom/android/exsettings/nfc/PaymentBackend;)V

    .line 71
    .local v3, "foreground":Lcom/android/exsettings/nfc/NfcForegroundPreference;
    invoke-virtual {v6, v3}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 73
    .end local v3    # "foreground":Lcom/android/exsettings/nfc/NfcForegroundPreference;
    .end local v5    # "preference":Lcom/android/exsettings/nfc/NfcPaymentPreference;
    :cond_0
    invoke-virtual {p0, v6}, Lcom/android/exsettings/nfc/PaymentSettings;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    .line 53
    return-void
.end method
