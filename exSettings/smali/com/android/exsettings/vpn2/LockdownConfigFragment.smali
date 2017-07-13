.class public Lcom/android/exsettings/vpn2/LockdownConfigFragment;
.super Landroid/app/DialogFragment;
.source "LockdownConfigFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exsettings/vpn2/LockdownConfigFragment$TitleAdapter;
    }
.end annotation


# instance fields
.field private mCurrentIndex:I

.field private mProfiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/net/VpnProfile;",
            ">;"
        }
    .end annotation
.end field

.field private mTitles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/android/exsettings/vpn2/LockdownConfigFragment;)I
    .locals 1

    iget v0, p0, Lcom/android/exsettings/vpn2/LockdownConfigFragment;->mCurrentIndex:I

    return v0
.end method

.method static synthetic -get1(Lcom/android/exsettings/vpn2/LockdownConfigFragment;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/vpn2/LockdownConfigFragment;->mProfiles:Ljava/util/List;

    return-object v0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method private static getStringOrNull(Landroid/security/KeyStore;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "keyStore"    # Landroid/security/KeyStore;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 68
    invoke-virtual {p0}, Landroid/security/KeyStore;->isUnlocked()Z

    move-result v2

    if-nez v2, :cond_0

    .line 69
    return-object v1

    .line 71
    :cond_0
    invoke-virtual {p0, p1}, Landroid/security/KeyStore;->get(Ljava/lang/String;)[B

    move-result-object v0

    .line 72
    .local v0, "value":[B
    if-nez v0, :cond_1

    :goto_0
    return-object v1

    :cond_1
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    goto :goto_0
.end method

.method private initProfiles(Landroid/security/KeyStore;Landroid/content/res/Resources;)V
    .locals 6
    .param p1, "keyStore"    # Landroid/security/KeyStore;
    .param p2, "res"    # Landroid/content/res/Resources;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 76
    const-string/jumbo v3, "LOCKDOWN_VPN"

    invoke-static {p1, v3}, Lcom/android/exsettings/vpn2/LockdownConfigFragment;->getStringOrNull(Landroid/security/KeyStore;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 78
    .local v0, "lockdownKey":Ljava/lang/String;
    new-array v3, v4, [I

    aput v5, v3, v5

    invoke-static {p1, v3}, Lcom/android/exsettings/vpn2/VpnSettings;->loadVpnProfiles(Landroid/security/KeyStore;[I)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/android/exsettings/vpn2/LockdownConfigFragment;->mProfiles:Ljava/util/List;

    .line 79
    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/exsettings/vpn2/LockdownConfigFragment;->mProfiles:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, p0, Lcom/android/exsettings/vpn2/LockdownConfigFragment;->mTitles:Ljava/util/List;

    .line 80
    iget-object v3, p0, Lcom/android/exsettings/vpn2/LockdownConfigFragment;->mTitles:Ljava/util/List;

    const v4, 0x7f0c0d5d

    invoke-virtual {p2, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    iput v5, p0, Lcom/android/exsettings/vpn2/LockdownConfigFragment;->mCurrentIndex:I

    .line 83
    iget-object v3, p0, Lcom/android/exsettings/vpn2/LockdownConfigFragment;->mProfiles:Ljava/util/List;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "profile$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/net/VpnProfile;

    .line 84
    .local v1, "profile":Lcom/android/internal/net/VpnProfile;
    iget-object v3, v1, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-static {v3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 85
    iget-object v3, p0, Lcom/android/exsettings/vpn2/LockdownConfigFragment;->mTitles:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    iput v3, p0, Lcom/android/exsettings/vpn2/LockdownConfigFragment;->mCurrentIndex:I

    .line 87
    :cond_0
    iget-object v3, p0, Lcom/android/exsettings/vpn2/LockdownConfigFragment;->mTitles:Ljava/util/List;

    iget-object v4, v1, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 75
    .end local v1    # "profile":Lcom/android/internal/net/VpnProfile;
    :cond_1
    return-void
.end method

.method public static show(Lcom/android/exsettings/vpn2/VpnSettings;)V
    .locals 3
    .param p0, "parent"    # Lcom/android/exsettings/vpn2/VpnSettings;

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/android/exsettings/vpn2/VpnSettings;->isAdded()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 63
    :cond_0
    new-instance v0, Lcom/android/exsettings/vpn2/LockdownConfigFragment;

    invoke-direct {v0}, Lcom/android/exsettings/vpn2/LockdownConfigFragment;-><init>()V

    .line 64
    .local v0, "dialog":Lcom/android/exsettings/vpn2/LockdownConfigFragment;
    invoke-virtual {p0}, Lcom/android/exsettings/vpn2/VpnSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v2, "lockdown"

    invoke-virtual {v0, v1, v2}, Lcom/android/exsettings/vpn2/LockdownConfigFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 60
    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v9, 0x1

    .line 93
    invoke-virtual {p0}, Lcom/android/exsettings/vpn2/LockdownConfigFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 94
    .local v1, "context":Landroid/content/Context;
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v3

    .line 96
    .local v3, "keyStore":Landroid/security/KeyStore;
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-direct {p0, v3, v6}, Lcom/android/exsettings/vpn2/LockdownConfigFragment;->initProfiles(Landroid/security/KeyStore;Landroid/content/res/Resources;)V

    .line 98
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 99
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 101
    .local v2, "dialogInflater":Landroid/view/LayoutInflater;
    const v6, 0x7f0c0d5b

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 103
    const v6, 0x7f040148

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v2, v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    .line 104
    .local v5, "view":Landroid/view/View;
    const v6, 0x102000a

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ListView;

    .line 105
    .local v4, "listView":Landroid/widget/ListView;
    invoke-virtual {v4, v9}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 106
    new-instance v6, Lcom/android/exsettings/vpn2/LockdownConfigFragment$TitleAdapter;

    iget-object v7, p0, Lcom/android/exsettings/vpn2/LockdownConfigFragment;->mTitles:Ljava/util/List;

    invoke-direct {v6, v1, v7}, Lcom/android/exsettings/vpn2/LockdownConfigFragment$TitleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {v4, v6}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 107
    iget v6, p0, Lcom/android/exsettings/vpn2/LockdownConfigFragment;->mCurrentIndex:I

    invoke-virtual {v4, v6, v9}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 108
    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 110
    new-instance v6, Lcom/android/exsettings/vpn2/LockdownConfigFragment$1;

    invoke-direct {v6, p0, v4, v3, v1}, Lcom/android/exsettings/vpn2/LockdownConfigFragment$1;-><init>(Lcom/android/exsettings/vpn2/LockdownConfigFragment;Landroid/widget/ListView;Landroid/security/KeyStore;Landroid/content/Context;)V

    const v7, 0x104000a

    invoke-virtual {v0, v7, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 134
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    return-object v6
.end method
