.class Lcom/android/exsettings/wifi/WifiDialog;
.super Landroid/app/AlertDialog;
.source "WifiDialog.java"

# interfaces
.implements Lcom/android/exsettings/wifi/WifiConfigUiBase;


# instance fields
.field private final mAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

.field private mController:Lcom/android/exsettings/wifi/WifiConfigController;

.field private final mEdit:Z

.field private mHideForgetButton:Z

.field private mHideSubmitButton:Z

.field private final mListener:Landroid/content/DialogInterface$OnClickListener;

.field private final mModify:Z

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Lcom/android/exsettingslib/wifi/AccessPoint;ZZ)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p3, "accessPoint"    # Lcom/android/exsettingslib/wifi/AccessPoint;
    .param p4, "edit"    # Z
    .param p5, "modify"    # Z

    .prologue
    const/4 v0, 0x0

    .line 53
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 54
    iput-boolean p4, p0, Lcom/android/exsettings/wifi/WifiDialog;->mEdit:Z

    .line 55
    iput-boolean p5, p0, Lcom/android/exsettings/wifi/WifiDialog;->mModify:Z

    .line 56
    iput-object p2, p0, Lcom/android/exsettings/wifi/WifiDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    .line 57
    iput-object p3, p0, Lcom/android/exsettings/wifi/WifiDialog;->mAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    .line 58
    iput-boolean v0, p0, Lcom/android/exsettings/wifi/WifiDialog;->mHideSubmitButton:Z

    .line 59
    iput-boolean v0, p0, Lcom/android/exsettings/wifi/WifiDialog;->mHideForgetButton:Z

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Lcom/android/exsettingslib/wifi/AccessPoint;ZZZZ)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p3, "accessPoint"    # Lcom/android/exsettingslib/wifi/AccessPoint;
    .param p4, "edit"    # Z
    .param p5, "modify"    # Z
    .param p6, "hideSubmitButton"    # Z
    .param p7, "hideForgetButton"    # Z

    .prologue
    .line 46
    invoke-direct/range {p0 .. p5}, Lcom/android/exsettings/wifi/WifiDialog;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Lcom/android/exsettingslib/wifi/AccessPoint;ZZ)V

    .line 47
    iput-boolean p6, p0, Lcom/android/exsettings/wifi/WifiDialog;->mHideSubmitButton:Z

    .line 48
    iput-boolean p7, p0, Lcom/android/exsettings/wifi/WifiDialog;->mHideForgetButton:Z

    .line 45
    return-void
.end method


# virtual methods
.method public getController()Lcom/android/exsettings/wifi/WifiConfigController;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiDialog;->mController:Lcom/android/exsettings/wifi/WifiConfigController;

    return-object v0
.end method

.method public getForgetButton()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 105
    const/4 v0, -0x3

    invoke-virtual {p0, v0}, Lcom/android/exsettings/wifi/WifiDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    return-object v0
.end method

.method public getSubmitButton()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 100
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/exsettings/wifi/WifiDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/WifiDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040153

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/wifi/WifiDialog;->mView:Landroid/view/View;

    .line 70
    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiDialog;->mView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/exsettings/wifi/WifiDialog;->setView(Landroid/view/View;)V

    .line 71
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/exsettings/wifi/WifiDialog;->setInverseBackgroundForced(Z)V

    .line 72
    new-instance v0, Lcom/android/exsettings/wifi/WifiConfigController;

    iget-object v2, p0, Lcom/android/exsettings/wifi/WifiDialog;->mView:Landroid/view/View;

    iget-object v3, p0, Lcom/android/exsettings/wifi/WifiDialog;->mAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    iget-boolean v4, p0, Lcom/android/exsettings/wifi/WifiDialog;->mEdit:Z

    iget-boolean v5, p0, Lcom/android/exsettings/wifi/WifiDialog;->mModify:Z

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/exsettings/wifi/WifiConfigController;-><init>(Lcom/android/exsettings/wifi/WifiConfigUiBase;Landroid/view/View;Lcom/android/exsettingslib/wifi/AccessPoint;ZZ)V

    iput-object v0, p0, Lcom/android/exsettings/wifi/WifiDialog;->mController:Lcom/android/exsettings/wifi/WifiConfigController;

    .line 73
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 75
    iget-boolean v0, p0, Lcom/android/exsettings/wifi/WifiDialog;->mHideSubmitButton:Z

    if-eqz v0, :cond_1

    .line 76
    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiDialog;->mController:Lcom/android/exsettings/wifi/WifiConfigController;

    invoke-virtual {v0}, Lcom/android/exsettings/wifi/WifiConfigController;->hideSubmitButton()V

    .line 83
    :goto_0
    iget-boolean v0, p0, Lcom/android/exsettings/wifi/WifiDialog;->mHideForgetButton:Z

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiDialog;->mController:Lcom/android/exsettings/wifi/WifiConfigController;

    invoke-virtual {v0}, Lcom/android/exsettings/wifi/WifiConfigController;->hideForgetButton()V

    .line 68
    :cond_0
    return-void

    .line 80
    :cond_1
    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiDialog;->mController:Lcom/android/exsettings/wifi/WifiConfigController;

    invoke-virtual {v0}, Lcom/android/exsettings/wifi/WifiConfigController;->enableSubmitIfAppropriate()V

    goto :goto_0
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 89
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 90
    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiDialog;->mController:Lcom/android/exsettings/wifi/WifiConfigController;

    invoke-virtual {v0}, Lcom/android/exsettings/wifi/WifiConfigController;->updatePassword()V

    .line 88
    return-void
.end method

.method public setCancelButton(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    const/4 v1, -0x2

    invoke-virtual {p0, v1, p1, v0}, Lcom/android/exsettings/wifi/WifiDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 124
    return-void
.end method

.method public setForgetButton(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    const/4 v1, -0x3

    invoke-virtual {p0, v1, p1, v0}, Lcom/android/exsettings/wifi/WifiDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 119
    return-void
.end method

.method public setSubmitButton(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    const/4 v1, -0x1

    invoke-virtual {p0, v1, p1, v0}, Lcom/android/exsettings/wifi/WifiDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 114
    return-void
.end method
