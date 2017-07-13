.class public Lcom/android/exsettings/profiles/triggers/NfcTriggerFragment;
.super Landroid/app/Fragment;
.source "NfcTriggerFragment.java"

# interfaces
.implements Lcom/android/exsettings/profiles/NFCProfileTagCallback;


# instance fields
.field private mNfcAdapter:Landroid/nfc/NfcAdapter;

.field mProfile:Lcyanogenmod/app/Profile;

.field private mWriteTagFilters:[Landroid/content/IntentFilter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method private disableTagWriteMode()V
    .locals 2

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/exsettings/profiles/triggers/NfcTriggerFragment;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {p0}, Lcom/android/exsettings/profiles/triggers/NfcTriggerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/nfc/NfcAdapter;->disableForegroundDispatch(Landroid/app/Activity;)V

    .line 98
    return-void
.end method

.method private enableTagWriteMode()V
    .locals 6

    .prologue
    .line 103
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.nfc.action.TAG_DISCOVERED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 104
    .local v0, "tagDetected":Landroid/content/IntentFilter;
    const/4 v1, 0x1

    new-array v1, v1, [Landroid/content/IntentFilter;

    .line 105
    const/4 v2, 0x0

    aput-object v0, v1, v2

    .line 104
    iput-object v1, p0, Lcom/android/exsettings/profiles/triggers/NfcTriggerFragment;->mWriteTagFilters:[Landroid/content/IntentFilter;

    .line 107
    iget-object v1, p0, Lcom/android/exsettings/profiles/triggers/NfcTriggerFragment;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {p0}, Lcom/android/exsettings/profiles/triggers/NfcTriggerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/exsettings/profiles/triggers/NfcTriggerFragment;->getPendingIntent()Landroid/app/PendingIntent;

    move-result-object v3

    iget-object v4, p0, Lcom/android/exsettings/profiles/triggers/NfcTriggerFragment;->mWriteTagFilters:[Landroid/content/IntentFilter;

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/nfc/NfcAdapter;->enableForegroundDispatch(Landroid/app/Activity;Landroid/app/PendingIntent;[Landroid/content/IntentFilter;[[Ljava/lang/String;)V

    .line 102
    return-void
.end method

.method private getPendingIntent()Landroid/app/PendingIntent;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 93
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/exsettings/profiles/triggers/NfcTriggerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/exsettings/profiles/triggers/NfcTriggerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 94
    const/high16 v2, 0x20000000

    .line 93
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 95
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/exsettings/profiles/triggers/NfcTriggerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v4, v0, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 64
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 65
    invoke-virtual {p0}, Lcom/android/exsettings/profiles/triggers/NfcTriggerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/profiles/triggers/NfcTriggerFragment;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 66
    invoke-virtual {p0}, Lcom/android/exsettings/profiles/triggers/NfcTriggerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 67
    invoke-virtual {p0}, Lcom/android/exsettings/profiles/triggers/NfcTriggerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "Profile"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcyanogenmod/app/Profile;

    iput-object v0, p0, Lcom/android/exsettings/profiles/triggers/NfcTriggerFragment;->mProfile:Lcyanogenmod/app/Profile;

    .line 69
    :cond_0
    invoke-virtual {p0}, Lcom/android/exsettings/profiles/triggers/NfcTriggerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/exsettings/SubSettings;

    invoke-virtual {v0, p0}, Lcom/android/exsettings/SubSettings;->setNfcProfileCallback(Lcom/android/exsettings/profiles/NFCProfileTagCallback;)V

    .line 63
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 123
    const v0, 0x7f0400a3

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 74
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 75
    invoke-virtual {p0}, Lcom/android/exsettings/profiles/triggers/NfcTriggerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/exsettings/SubSettings;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/exsettings/SubSettings;->setNfcProfileCallback(Lcom/android/exsettings/profiles/NFCProfileTagCallback;)V

    .line 73
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 88
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 89
    invoke-direct {p0}, Lcom/android/exsettings/profiles/triggers/NfcTriggerFragment;->disableTagWriteMode()V

    .line 87
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 80
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 81
    iget-object v0, p0, Lcom/android/exsettings/profiles/triggers/NfcTriggerFragment;->mProfile:Lcyanogenmod/app/Profile;

    if-eqz v0, :cond_0

    .line 82
    invoke-direct {p0}, Lcom/android/exsettings/profiles/triggers/NfcTriggerFragment;->enableTagWriteMode()V

    .line 79
    :cond_0
    return-void
.end method

.method public onTagRead(Landroid/nfc/Tag;)V
    .locals 3
    .param p1, "tag"    # Landroid/nfc/Tag;

    .prologue
    const/4 v2, 0x1

    .line 112
    iget-object v0, p0, Lcom/android/exsettings/profiles/triggers/NfcTriggerFragment;->mProfile:Lcyanogenmod/app/Profile;

    invoke-static {v0}, Lcom/android/exsettings/profiles/NFCProfileUtils;->getProfileAsNdef(Lcyanogenmod/app/Profile;)Landroid/nfc/NdefMessage;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/exsettings/profiles/NFCProfileUtils;->writeTag(Landroid/nfc/NdefMessage;Landroid/nfc/Tag;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    invoke-virtual {p0}, Lcom/android/exsettings/profiles/triggers/NfcTriggerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0c008f

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 114
    invoke-virtual {p0}, Lcom/android/exsettings/profiles/triggers/NfcTriggerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/exsettings/profiles/NFCProfileUtils;->vibrate(Landroid/content/Context;)V

    .line 111
    :goto_0
    return-void

    .line 116
    :cond_0
    invoke-virtual {p0}, Lcom/android/exsettings/profiles/triggers/NfcTriggerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0c0090

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
