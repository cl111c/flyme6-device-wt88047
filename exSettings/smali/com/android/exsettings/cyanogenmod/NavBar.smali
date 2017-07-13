.class public Lcom/android/exsettings/cyanogenmod/NavBar;
.super Landroid/app/Fragment;
.source "NavBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final mIntent:Landroid/content/Intent;


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mEdit:Landroid/widget/LinearLayout;

.field private mEditMode:Z

.field private mRestore:Landroid/widget/LinearLayout;

.field private mSave:Landroid/widget/LinearLayout;


# direct methods
.method static synthetic -get0(Lcom/android/exsettings/cyanogenmod/NavBar;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/exsettings/cyanogenmod/NavBar;->mEditMode:Z

    return v0
.end method

.method static synthetic -set0(Lcom/android/exsettings/cyanogenmod/NavBar;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/exsettings/cyanogenmod/NavBar;->mEditMode:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/exsettings/cyanogenmod/NavBar;ZZ)V
    .locals 0
    .param p1, "on"    # Z
    .param p2, "save"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/exsettings/cyanogenmod/NavBar;->toggleEditMode(ZZ)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 40
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.NAVBAR_EDIT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/exsettings/cyanogenmod/NavBar;->mIntent:Landroid/content/Intent;

    .line 35
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method private toggleEditMode(ZZ)V
    .locals 2
    .param p1, "on"    # Z
    .param p2, "save"    # Z

    .prologue
    .line 111
    sget-object v0, Lcom/android/exsettings/cyanogenmod/NavBar;->mIntent:Landroid/content/Intent;

    const-string/jumbo v1, "edit"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 112
    sget-object v0, Lcom/android/exsettings/cyanogenmod/NavBar;->mIntent:Landroid/content/Intent;

    const-string/jumbo v1, "save"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 113
    iget-object v0, p0, Lcom/android/exsettings/cyanogenmod/NavBar;->mActivity:Landroid/app/Activity;

    sget-object v1, Lcom/android/exsettings/cyanogenmod/NavBar;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 114
    if-eqz p1, :cond_0

    .line 115
    iget-object v0, p0, Lcom/android/exsettings/cyanogenmod/NavBar;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/android/exsettings/Utils;->lockCurrentOrientation(Landroid/app/Activity;)V

    .line 119
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/exsettings/cyanogenmod/NavBar;->toggleEditSaveViews(Z)V

    .line 110
    return-void

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/android/exsettings/cyanogenmod/NavBar;->mActivity:Landroid/app/Activity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0
.end method

.method private toggleEditSaveViews(Z)V
    .locals 4
    .param p1, "on"    # Z

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 123
    iget-object v3, p0, Lcom/android/exsettings/cyanogenmod/NavBar;->mEdit:Landroid/widget/LinearLayout;

    if-nez p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 124
    iget-object v0, p0, Lcom/android/exsettings/cyanogenmod/NavBar;->mSave:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 122
    return-void

    :cond_0
    move v0, v2

    .line 123
    goto :goto_0

    :cond_1
    move v1, v2

    .line 125
    goto :goto_1
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 44
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 45
    iput-object p1, p0, Lcom/android/exsettings/cyanogenmod/NavBar;->mActivity:Landroid/app/Activity;

    .line 43
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 78
    iget-object v2, p0, Lcom/android/exsettings/cyanogenmod/NavBar;->mEdit:Landroid/widget/LinearLayout;

    if-ne p1, v2, :cond_2

    .line 79
    iget-boolean v2, p0, Lcom/android/exsettings/cyanogenmod/NavBar;->mEditMode:Z

    if-eqz v2, :cond_0

    move v0, v1

    :cond_0
    iput-boolean v0, p0, Lcom/android/exsettings/cyanogenmod/NavBar;->mEditMode:Z

    .line 80
    iget-boolean v0, p0, Lcom/android/exsettings/cyanogenmod/NavBar;->mEditMode:Z

    invoke-direct {p0, v0, v1}, Lcom/android/exsettings/cyanogenmod/NavBar;->toggleEditMode(ZZ)V

    .line 77
    :cond_1
    :goto_0
    return-void

    .line 81
    :cond_2
    iget-object v2, p0, Lcom/android/exsettings/cyanogenmod/NavBar;->mSave:Landroid/widget/LinearLayout;

    if-ne p1, v2, :cond_4

    .line 82
    iget-boolean v2, p0, Lcom/android/exsettings/cyanogenmod/NavBar;->mEditMode:Z

    if-eqz v2, :cond_3

    :goto_1
    iput-boolean v1, p0, Lcom/android/exsettings/cyanogenmod/NavBar;->mEditMode:Z

    .line 83
    iget-boolean v1, p0, Lcom/android/exsettings/cyanogenmod/NavBar;->mEditMode:Z

    invoke-direct {p0, v1, v0}, Lcom/android/exsettings/cyanogenmod/NavBar;->toggleEditMode(ZZ)V

    goto :goto_0

    :cond_3
    move v1, v0

    .line 82
    goto :goto_1

    .line 84
    :cond_4
    iget-object v0, p0, Lcom/android/exsettings/cyanogenmod/NavBar;->mRestore:Landroid/widget/LinearLayout;

    if-ne p1, v0, :cond_1

    .line 85
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/exsettings/cyanogenmod/NavBar;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 86
    const v1, 0x7f0c00a6

    .line 85
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 87
    const v1, 0x7f02008e

    .line 85
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 88
    const v1, 0x7f0c0106

    .line 85
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 89
    new-instance v1, Lcom/android/exsettings/cyanogenmod/NavBar$1;

    invoke-direct {v1, p0}, Lcom/android/exsettings/cyanogenmod/NavBar$1;-><init>(Lcom/android/exsettings/cyanogenmod/NavBar;)V

    const v2, 0x104000a

    .line 85
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 100
    const v1, 0x7f0c05d6

    const/4 v2, 0x0

    .line 85
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 51
    const v0, 0x7f04009c

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/exsettings/cyanogenmod/NavBar;->mActivity:Landroid/app/Activity;

    .line 67
    invoke-super {p0}, Landroid/app/Fragment;->onDetach()V

    .line 65
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 72
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 73
    invoke-direct {p0, v0, v0}, Lcom/android/exsettings/cyanogenmod/NavBar;->toggleEditMode(ZZ)V

    .line 71
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 56
    const v0, 0x7f13014f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/exsettings/cyanogenmod/NavBar;->mEdit:Landroid/widget/LinearLayout;

    .line 57
    iget-object v0, p0, Lcom/android/exsettings/cyanogenmod/NavBar;->mEdit:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    const v0, 0x7f13014e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/exsettings/cyanogenmod/NavBar;->mSave:Landroid/widget/LinearLayout;

    .line 59
    iget-object v0, p0, Lcom/android/exsettings/cyanogenmod/NavBar;->mSave:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    const v0, 0x7f13014d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/exsettings/cyanogenmod/NavBar;->mRestore:Landroid/widget/LinearLayout;

    .line 61
    iget-object v0, p0, Lcom/android/exsettings/cyanogenmod/NavBar;->mRestore:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    return-void
.end method
