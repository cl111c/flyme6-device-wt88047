.class public Lcom/android/exsettings/wifi/WifiSettingsForSetupWizard;
.super Lcom/android/exsettings/wifi/WifiSettings;
.source "WifiSettingsForSetupWizard.java"


# instance fields
.field private mAddOtherNetworkItem:Landroid/view/View;

.field private mEmptyFooter:Landroid/widget/TextView;

.field private mLayout:Lcom/android/setupwizardlib/SetupWizardListLayout;

.field private mListLastEmpty:Z

.field private mMacAddressFooter:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/android/exsettings/wifi/WifiSettings;-><init>()V

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/exsettings/wifi/WifiSettingsForSetupWizard;->mListLastEmpty:Z

    .line 43
    return-void
.end method

.method private updateMacAddress()V
    .locals 5

    .prologue
    .line 189
    iget-object v3, p0, Lcom/android/exsettings/wifi/WifiSettingsForSetupWizard;->mMacAddressFooter:Landroid/view/View;

    if-eqz v3, :cond_1

    .line 190
    const/4 v1, 0x0

    .line 191
    .local v1, "macAddress":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/exsettings/wifi/WifiSettingsForSetupWizard;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v3, :cond_0

    .line 192
    iget-object v3, p0, Lcom/android/exsettings/wifi/WifiSettingsForSetupWizard;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 193
    .local v0, "connectionInfo":Landroid/net/wifi/WifiInfo;
    if-eqz v0, :cond_0

    .line 194
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v1

    .line 198
    .end local v0    # "connectionInfo":Landroid/net/wifi/WifiInfo;
    .end local v1    # "macAddress":Ljava/lang/String;
    :cond_0
    iget-object v3, p0, Lcom/android/exsettings/wifi/WifiSettingsForSetupWizard;->mMacAddressFooter:Landroid/view/View;

    const v4, 0x7f130225

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 199
    .local v2, "macAddressTextView":Landroid/widget/TextView;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    :goto_0
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 188
    .end local v2    # "macAddressTextView":Landroid/widget/TextView;
    :cond_1
    return-void

    .line 200
    .restart local v2    # "macAddressTextView":Landroid/widget/TextView;
    :cond_2
    const v3, 0x7f0c0861

    invoke-virtual {p0, v3}, Lcom/android/exsettings/wifi/WifiSettingsForSetupWizard;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method


# virtual methods
.method protected connect(Landroid/net/wifi/WifiConfiguration;)V
    .locals 1
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 131
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/WifiSettingsForSetupWizard;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/exsettings/wifi/WifiSetupActivity;

    .line 132
    .local v0, "activity":Lcom/android/exsettings/wifi/WifiSetupActivity;
    invoke-virtual {v0}, Lcom/android/exsettings/wifi/WifiSetupActivity;->networkSelected()V

    .line 133
    invoke-super {p0, p1}, Lcom/android/exsettings/wifi/WifiSettings;->connect(Landroid/net/wifi/WifiConfiguration;)V

    .line 130
    return-void
.end method

.method createWifiEnabler()Lcom/android/exsettings/wifi/WifiEnabler;
    .locals 1

    .prologue
    .line 114
    const/4 v0, 0x0

    return-object v0
.end method

.method protected initEmptyView()Landroid/widget/TextView;
    .locals 4

    .prologue
    .line 145
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/WifiSettingsForSetupWizard;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 146
    .local v0, "inflater":Landroid/view/LayoutInflater;
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/WifiSettingsForSetupWizard;->getListView()Landroid/widget/ListView;

    move-result-object v1

    const v2, 0x7f04010f

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/exsettings/wifi/WifiSettingsForSetupWizard;->mEmptyFooter:Landroid/widget/TextView;

    .line 147
    iget-object v1, p0, Lcom/android/exsettings/wifi/WifiSettingsForSetupWizard;->mEmptyFooter:Landroid/widget/TextView;

    return-object v1
.end method

.method public onAccessPointsChanged()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 96
    invoke-super {p0}, Lcom/android/exsettings/wifi/WifiSettings;->onAccessPointsChanged()V

    .line 97
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/WifiSettingsForSetupWizard;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/exsettings/wifi/WifiSettingsForSetupWizard;->updateFooter(Z)V

    .line 95
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 85
    invoke-super {p0, p1}, Lcom/android/exsettings/wifi/WifiSettings;->onActivityCreated(Landroid/os/Bundle;)V

    .line 87
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/WifiSettingsForSetupWizard;->hasNextButton()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/WifiSettingsForSetupWizard;->getNextButton()Landroid/widget/Button;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 91
    :cond_0
    invoke-direct {p0}, Lcom/android/exsettings/wifi/WifiSettingsForSetupWizard;->updateMacAddress()V

    .line 84
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 1
    .param p1, "dialogId"    # I

    .prologue
    .line 124
    invoke-super {p0, p1}, Lcom/android/exsettings/wifi/WifiSettings;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    .line 125
    .local v0, "dialog":Landroid/app/Dialog;
    invoke-static {v0}, Lcom/android/exsettings/SetupWizardUtils;->applyImmersiveFlags(Landroid/app/Dialog;)V

    .line 126
    return-object v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 0
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 118
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 57
    const v3, 0x7f040110

    invoke-virtual {p1, v3, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 56
    check-cast v3, Lcom/android/setupwizardlib/SetupWizardListLayout;

    iput-object v3, p0, Lcom/android/exsettings/wifi/WifiSettingsForSetupWizard;->mLayout:Lcom/android/setupwizardlib/SetupWizardListLayout;

    .line 58
    iget-object v3, p0, Lcom/android/exsettings/wifi/WifiSettingsForSetupWizard;->mLayout:Lcom/android/setupwizardlib/SetupWizardListLayout;

    invoke-virtual {v3}, Lcom/android/setupwizardlib/SetupWizardListLayout;->getListView()Landroid/widget/ListView;

    move-result-object v1

    .line 60
    .local v1, "list":Landroid/widget/ListView;
    const v3, 0x7f04010e

    invoke-virtual {p1, v3, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/exsettings/wifi/WifiSettingsForSetupWizard;->mAddOtherNetworkItem:Landroid/view/View;

    .line 61
    iget-object v3, p0, Lcom/android/exsettings/wifi/WifiSettingsForSetupWizard;->mAddOtherNetworkItem:Landroid/view/View;

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v6, v4}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 62
    iget-object v3, p0, Lcom/android/exsettings/wifi/WifiSettingsForSetupWizard;->mAddOtherNetworkItem:Landroid/view/View;

    new-instance v4, Lcom/android/exsettings/wifi/WifiSettingsForSetupWizard$1;

    invoke-direct {v4, p0}, Lcom/android/exsettings/wifi/WifiSettingsForSetupWizard$1;-><init>(Lcom/android/exsettings/wifi/WifiSettingsForSetupWizard;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    const v3, 0x7f040111

    invoke-virtual {p1, v3, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/exsettings/wifi/WifiSettingsForSetupWizard;->mMacAddressFooter:Landroid/view/View;

    .line 72
    iget-object v3, p0, Lcom/android/exsettings/wifi/WifiSettingsForSetupWizard;->mMacAddressFooter:Landroid/view/View;

    invoke-virtual {v1, v3, v6, v5}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 74
    iget-object v3, p0, Lcom/android/exsettings/wifi/WifiSettingsForSetupWizard;->mLayout:Lcom/android/setupwizardlib/SetupWizardListLayout;

    invoke-virtual {v3}, Lcom/android/setupwizardlib/SetupWizardListLayout;->getNavigationBar()Lcom/android/setupwizardlib/view/NavigationBar;

    move-result-object v2

    .line 75
    .local v2, "navigationBar":Lcom/android/setupwizardlib/view/NavigationBar;
    if-eqz v2, :cond_0

    .line 76
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/WifiSettingsForSetupWizard;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/exsettings/wifi/WifiSetupActivity;

    .line 77
    .local v0, "activity":Lcom/android/exsettings/wifi/WifiSetupActivity;
    invoke-virtual {v0, v2}, Lcom/android/exsettings/wifi/WifiSetupActivity;->onNavigationBarCreated(Lcom/android/setupwizardlib/view/NavigationBar;)V

    .line 80
    .end local v0    # "activity":Lcom/android/exsettings/wifi/WifiSetupActivity;
    :cond_0
    iget-object v3, p0, Lcom/android/exsettings/wifi/WifiSettingsForSetupWizard;->mLayout:Lcom/android/setupwizardlib/SetupWizardListLayout;

    return-object v3
.end method

.method public onWifiStateChanged(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 102
    invoke-super {p0, p1}, Lcom/android/exsettings/wifi/WifiSettings;->onWifiStateChanged(I)V

    .line 103
    invoke-direct {p0}, Lcom/android/exsettings/wifi/WifiSettingsForSetupWizard;->updateMacAddress()V

    .line 101
    return-void
.end method

.method public registerForContextMenu(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 107
    return-void
.end method

.method public setPinnedHeaderView(I)Landroid/view/View;
    .locals 1
    .param p1, "layoutResId"    # I

    .prologue
    .line 169
    const/4 v0, 0x0

    return-object v0
.end method

.method public setPinnedHeaderView(Landroid/view/View;)V
    .locals 0
    .param p1, "pinnedHeader"    # Landroid/view/View;

    .prologue
    .line 173
    return-void
.end method

.method protected setProgressBarVisible(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .prologue
    .line 179
    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiSettingsForSetupWizard;->mLayout:Lcom/android/setupwizardlib/SetupWizardListLayout;

    if-eqz v0, :cond_0

    .line 180
    if-eqz p1, :cond_1

    .line 181
    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiSettingsForSetupWizard;->mLayout:Lcom/android/setupwizardlib/SetupWizardListLayout;

    invoke-virtual {v0}, Lcom/android/setupwizardlib/SetupWizardListLayout;->showProgressBar()V

    .line 178
    :cond_0
    :goto_0
    return-void

    .line 183
    :cond_1
    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiSettingsForSetupWizard;->mLayout:Lcom/android/setupwizardlib/SetupWizardListLayout;

    invoke-virtual {v0}, Lcom/android/setupwizardlib/SetupWizardListLayout;->hideProgressBar()V

    goto :goto_0
.end method

.method protected updateFooter(Z)V
    .locals 5
    .param p1, "isEmpty"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 151
    iget-boolean v1, p0, Lcom/android/exsettings/wifi/WifiSettingsForSetupWizard;->mListLastEmpty:Z

    if-eq p1, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/exsettings/wifi/WifiSettingsForSetupWizard;->hasListView()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 152
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/WifiSettingsForSetupWizard;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 153
    .local v0, "list":Landroid/widget/ListView;
    iget-object v1, p0, Lcom/android/exsettings/wifi/WifiSettingsForSetupWizard;->mEmptyFooter:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    .line 154
    iget-object v1, p0, Lcom/android/exsettings/wifi/WifiSettingsForSetupWizard;->mAddOtherNetworkItem:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    .line 155
    iget-object v1, p0, Lcom/android/exsettings/wifi/WifiSettingsForSetupWizard;->mMacAddressFooter:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    .line 156
    if-eqz p1, :cond_1

    .line 157
    iget-object v1, p0, Lcom/android/exsettings/wifi/WifiSettingsForSetupWizard;->mEmptyFooter:Landroid/widget/TextView;

    invoke-virtual {v0, v1, v3, v4}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 162
    :goto_0
    iput-boolean p1, p0, Lcom/android/exsettings/wifi/WifiSettingsForSetupWizard;->mListLastEmpty:Z

    .line 150
    .end local v0    # "list":Landroid/widget/ListView;
    :cond_0
    return-void

    .line 159
    .restart local v0    # "list":Landroid/widget/ListView;
    :cond_1
    iget-object v1, p0, Lcom/android/exsettings/wifi/WifiSettingsForSetupWizard;->mAddOtherNetworkItem:Landroid/view/View;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v3, v2}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 160
    iget-object v1, p0, Lcom/android/exsettings/wifi/WifiSettingsForSetupWizard;->mMacAddressFooter:Landroid/view/View;

    invoke-virtual {v0, v1, v3, v4}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    goto :goto_0
.end method
