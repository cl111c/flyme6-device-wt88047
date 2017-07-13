.class public Lcom/android/exsettings/nfc/AndroidBeam;
.super Lcom/android/exsettings/InstrumentedFragment;
.source "AndroidBeam.java"

# interfaces
.implements Lcom/android/exsettings/widget/SwitchBar$OnSwitchChangeListener;


# instance fields
.field private mBeamDisallowed:Z

.field private mNfcAdapter:Landroid/nfc/NfcAdapter;

.field private mOldActivityTitle:Ljava/lang/CharSequence;

.field private mSwitchBar:Lcom/android/exsettings/widget/SwitchBar;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/android/exsettings/InstrumentedFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 116
    const/16 v0, 0x45

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 78
    invoke-super {p0, p1}, Lcom/android/exsettings/InstrumentedFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 80
    invoke-virtual {p0}, Lcom/android/exsettings/nfc/AndroidBeam;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/exsettings/SettingsActivity;

    .line 82
    .local v0, "activity":Lcom/android/exsettings/SettingsActivity;
    invoke-virtual {v0}, Lcom/android/exsettings/SettingsActivity;->getSwitchBar()Lcom/android/exsettings/widget/SwitchBar;

    move-result-object v1

    iput-object v1, p0, Lcom/android/exsettings/nfc/AndroidBeam;->mSwitchBar:Lcom/android/exsettings/widget/SwitchBar;

    .line 83
    iget-object v3, p0, Lcom/android/exsettings/nfc/AndroidBeam;->mSwitchBar:Lcom/android/exsettings/widget/SwitchBar;

    iget-boolean v1, p0, Lcom/android/exsettings/nfc/AndroidBeam;->mBeamDisallowed:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/exsettings/nfc/AndroidBeam;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->isNdefPushEnabled()Z

    move-result v1

    :goto_0
    invoke-virtual {v3, v1}, Lcom/android/exsettings/widget/SwitchBar;->setChecked(Z)V

    .line 84
    iget-object v1, p0, Lcom/android/exsettings/nfc/AndroidBeam;->mSwitchBar:Lcom/android/exsettings/widget/SwitchBar;

    invoke-virtual {v1, p0}, Lcom/android/exsettings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/exsettings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 85
    iget-object v1, p0, Lcom/android/exsettings/nfc/AndroidBeam;->mSwitchBar:Lcom/android/exsettings/widget/SwitchBar;

    iget-boolean v3, p0, Lcom/android/exsettings/nfc/AndroidBeam;->mBeamDisallowed:Z

    if-eqz v3, :cond_1

    :goto_1
    invoke-virtual {v1, v2}, Lcom/android/exsettings/widget/SwitchBar;->setEnabled(Z)V

    .line 86
    iget-object v1, p0, Lcom/android/exsettings/nfc/AndroidBeam;->mSwitchBar:Lcom/android/exsettings/widget/SwitchBar;

    invoke-virtual {v1}, Lcom/android/exsettings/widget/SwitchBar;->show()V

    .line 77
    return-void

    :cond_0
    move v1, v2

    .line 83
    goto :goto_0

    .line 85
    :cond_1
    const/4 v2, 0x1

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 48
    invoke-super {p0, p1}, Lcom/android/exsettings/InstrumentedFragment;->onCreate(Landroid/os/Bundle;)V

    .line 50
    invoke-virtual {p0}, Lcom/android/exsettings/nfc/AndroidBeam;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 52
    .local v0, "actionBar":Landroid/app/ActionBar;
    invoke-virtual {v0}, Landroid/app/ActionBar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/android/exsettings/nfc/AndroidBeam;->mOldActivityTitle:Ljava/lang/CharSequence;

    .line 53
    const v1, 0x7f0c06fb

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    .line 55
    invoke-virtual {p0}, Lcom/android/exsettings/nfc/AndroidBeam;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/android/exsettings/nfc/AndroidBeam;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 56
    invoke-virtual {p0}, Lcom/android/exsettings/nfc/AndroidBeam;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string/jumbo v2, "user"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    .line 57
    const-string/jumbo v2, "no_outgoing_beam"

    .line 56
    invoke-virtual {v1, v2}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/exsettings/nfc/AndroidBeam;->mBeamDisallowed:Z

    .line 58
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/exsettings/nfc/AndroidBeam;->setHasOptionsMenu(Z)V

    .line 47
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 63
    invoke-super {p0, p1, p2}, Lcom/android/exsettings/InstrumentedFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 64
    invoke-virtual {p0}, Lcom/android/exsettings/nfc/AndroidBeam;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 65
    invoke-virtual {p0}, Lcom/android/exsettings/nfc/AndroidBeam;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 64
    const v2, 0x7f0c0dd0

    invoke-static {v0, p1, v2, v1}, Lcom/android/exsettings/HelpUtils;->prepareHelpMenuItem(Landroid/app/Activity;Landroid/view/Menu;ILjava/lang/String;)Z

    .line 62
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 71
    const v0, 0x7f040007

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/nfc/AndroidBeam;->mView:Landroid/view/View;

    .line 73
    iget-object v0, p0, Lcom/android/exsettings/nfc/AndroidBeam;->mView:Landroid/view/View;

    return-object v0
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 91
    invoke-super {p0}, Lcom/android/exsettings/InstrumentedFragment;->onDestroyView()V

    .line 92
    iget-object v0, p0, Lcom/android/exsettings/nfc/AndroidBeam;->mOldActivityTitle:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 93
    invoke-virtual {p0}, Lcom/android/exsettings/nfc/AndroidBeam;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iget-object v1, p0, Lcom/android/exsettings/nfc/AndroidBeam;->mOldActivityTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/android/exsettings/nfc/AndroidBeam;->mSwitchBar:Lcom/android/exsettings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/exsettings/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/exsettings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 96
    iget-object v0, p0, Lcom/android/exsettings/nfc/AndroidBeam;->mSwitchBar:Lcom/android/exsettings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/exsettings/widget/SwitchBar;->hide()V

    .line 90
    return-void
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 3
    .param p1, "switchView"    # Landroid/widget/Switch;
    .param p2, "desiredState"    # Z

    .prologue
    .line 101
    const/4 v0, 0x0

    .line 102
    .local v0, "success":Z
    iget-object v1, p0, Lcom/android/exsettings/nfc/AndroidBeam;->mSwitchBar:Lcom/android/exsettings/widget/SwitchBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/exsettings/widget/SwitchBar;->setEnabled(Z)V

    .line 103
    if-eqz p2, :cond_1

    .line 104
    iget-object v1, p0, Lcom/android/exsettings/nfc/AndroidBeam;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->enableNdefPush()Z

    move-result v0

    .line 108
    .local v0, "success":Z
    :goto_0
    if-eqz v0, :cond_0

    .line 109
    iget-object v1, p0, Lcom/android/exsettings/nfc/AndroidBeam;->mSwitchBar:Lcom/android/exsettings/widget/SwitchBar;

    invoke-virtual {v1, p2}, Lcom/android/exsettings/widget/SwitchBar;->setChecked(Z)V

    .line 111
    :cond_0
    iget-object v1, p0, Lcom/android/exsettings/nfc/AndroidBeam;->mSwitchBar:Lcom/android/exsettings/widget/SwitchBar;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/exsettings/widget/SwitchBar;->setEnabled(Z)V

    .line 100
    return-void

    .line 106
    .local v0, "success":Z
    :cond_1
    iget-object v1, p0, Lcom/android/exsettings/nfc/AndroidBeam;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->disableNdefPush()Z

    move-result v0

    .local v0, "success":Z
    goto :goto_0
.end method
