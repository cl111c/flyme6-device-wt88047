.class public Lcom/android/exsettings/profiles/NFCProfileSelect;
.super Landroid/app/Activity;
.source "NFCProfileSelect.java"


# instance fields
.field private currentChoice:I

.field private mProfileManager:Lcyanogenmod/app/ProfileManager;

.field private mProfileUuid:Ljava/util/UUID;


# direct methods
.method static synthetic -get0(Lcom/android/exsettings/profiles/NFCProfileSelect;)I
    .locals 1

    iget v0, p0, Lcom/android/exsettings/profiles/NFCProfileSelect;->currentChoice:I

    return v0
.end method

.method static synthetic -get1(Lcom/android/exsettings/profiles/NFCProfileSelect;)Lcyanogenmod/app/ProfileManager;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/profiles/NFCProfileSelect;->mProfileManager:Lcyanogenmod/app/ProfileManager;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/exsettings/profiles/NFCProfileSelect;)Ljava/util/UUID;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/profiles/NFCProfileSelect;->mProfileUuid:Ljava/util/UUID;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/exsettings/profiles/NFCProfileSelect;I)I
    .locals 0

    iput p1, p0, Lcom/android/exsettings/profiles/NFCProfileSelect;->currentChoice:I

    return p1
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 50
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/exsettings/profiles/NFCProfileSelect;->currentChoice:I

    .line 38
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 55
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 56
    invoke-static {p0}, Lcyanogenmod/app/ProfileManager;->getInstance(Landroid/content/Context;)Lcyanogenmod/app/ProfileManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/profiles/NFCProfileSelect;->mProfileManager:Lcyanogenmod/app/ProfileManager;

    .line 58
    const v0, 0x7f0400a2

    invoke-virtual {p0, v0}, Lcom/android/exsettings/profiles/NFCProfileSelect;->setContentView(I)V

    .line 59
    const v0, 0x7f0c0093

    invoke-virtual {p0, v0}, Lcom/android/exsettings/profiles/NFCProfileSelect;->setTitle(I)V

    .line 61
    const v0, 0x7f13015b

    invoke-virtual {p0, v0}, Lcom/android/exsettings/profiles/NFCProfileSelect;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/android/exsettings/profiles/NFCProfileSelect$1;

    invoke-direct {v1, p0}, Lcom/android/exsettings/profiles/NFCProfileSelect$1;-><init>(Lcom/android/exsettings/profiles/NFCProfileSelect;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 71
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 73
    invoke-virtual {p0}, Lcom/android/exsettings/profiles/NFCProfileSelect;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "PROFILE_UUID"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 74
    .local v0, "profileUuid":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 75
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v1

    iput-object v1, p0, Lcom/android/exsettings/profiles/NFCProfileSelect;->mProfileUuid:Ljava/util/UUID;

    .line 70
    :goto_0
    return-void

    .line 77
    :cond_0
    invoke-virtual {p0}, Lcom/android/exsettings/profiles/NFCProfileSelect;->finish()V

    goto :goto_0
.end method

.method showProfileSelectionDialog()V
    .locals 6

    .prologue
    .line 82
    iget-object v4, p0, Lcom/android/exsettings/profiles/NFCProfileSelect;->mProfileManager:Lcyanogenmod/app/ProfileManager;

    invoke-virtual {v4}, Lcyanogenmod/app/ProfileManager;->getProfiles()[Lcyanogenmod/app/Profile;

    move-result-object v3

    .line 83
    .local v3, "profiles":[Lcyanogenmod/app/Profile;
    array-length v4, v3

    new-array v2, v4, [Ljava/lang/String;

    .line 84
    .local v2, "profileNames":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, v3

    if-ge v1, v4, :cond_0

    .line 85
    aget-object v4, v3, v1

    invoke-virtual {v4}, Lcyanogenmod/app/Profile;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v1

    .line 84
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 88
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 89
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v4, 0x7f0c008a

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 90
    iget v4, p0, Lcom/android/exsettings/profiles/NFCProfileSelect;->currentChoice:I

    new-instance v5, Lcom/android/exsettings/profiles/NFCProfileSelect$2;

    invoke-direct {v5, p0}, Lcom/android/exsettings/profiles/NFCProfileSelect$2;-><init>(Lcom/android/exsettings/profiles/NFCProfileSelect;)V

    invoke-virtual {v0, v2, v4, v5}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 96
    new-instance v4, Lcom/android/exsettings/profiles/NFCProfileSelect$3;

    invoke-direct {v4, p0, v3}, Lcom/android/exsettings/profiles/NFCProfileSelect$3;-><init>(Lcom/android/exsettings/profiles/NFCProfileSelect;[Lcyanogenmod/app/Profile;)V

    const v5, 0x104000a

    invoke-virtual {v0, v5, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 108
    new-instance v4, Lcom/android/exsettings/profiles/NFCProfileSelect$4;

    invoke-direct {v4, p0}, Lcom/android/exsettings/profiles/NFCProfileSelect$4;-><init>(Lcom/android/exsettings/profiles/NFCProfileSelect;)V

    const/high16 v5, 0x1040000

    invoke-virtual {v0, v5, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 114
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 81
    return-void
.end method
