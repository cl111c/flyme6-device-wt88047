.class Lcom/android/exsettings/vpn2/AppDialog;
.super Landroid/app/AlertDialog;
.source "AppDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exsettings/vpn2/AppDialog$Listener;
    }
.end annotation


# instance fields
.field private final mLabel:Ljava/lang/String;

.field private final mListener:Lcom/android/exsettings/vpn2/AppDialog$Listener;

.field private final mPackageInfo:Landroid/content/pm/PackageInfo;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/exsettings/vpn2/AppDialog$Listener;Landroid/content/pm/PackageInfo;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/android/exsettings/vpn2/AppDialog$Listener;
    .param p3, "pkgInfo"    # Landroid/content/pm/PackageInfo;
    .param p4, "label"    # Ljava/lang/String;

    .prologue
    .line 48
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 50
    iput-object p2, p0, Lcom/android/exsettings/vpn2/AppDialog;->mListener:Lcom/android/exsettings/vpn2/AppDialog$Listener;

    .line 51
    iput-object p3, p0, Lcom/android/exsettings/vpn2/AppDialog;->mPackageInfo:Landroid/content/pm/PackageInfo;

    .line 52
    iput-object p4, p0, Lcom/android/exsettings/vpn2/AppDialog;->mLabel:Ljava/lang/String;

    .line 47
    return-void
.end method


# virtual methods
.method protected createButtons()V
    .locals 3

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/android/exsettings/vpn2/AppDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 73
    .local v0, "context":Landroid/content/Context;
    const v1, 0x7f0c0d52

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 72
    const/4 v2, -0x2

    invoke-virtual {p0, v2, v1, p0}, Lcom/android/exsettings/vpn2/AppDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 77
    const v1, 0x7f0c0d4e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 76
    const/4 v2, -0x1

    invoke-virtual {p0, v2, v1, p0}, Lcom/android/exsettings/vpn2/AppDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 68
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 82
    const/4 v0, -0x2

    if-ne p2, v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/android/exsettings/vpn2/AppDialog;->mListener:Lcom/android/exsettings/vpn2/AppDialog$Listener;

    invoke-interface {v0, p1}, Lcom/android/exsettings/vpn2/AppDialog$Listener;->onForget(Landroid/content/DialogInterface;)V

    .line 85
    :cond_0
    invoke-virtual {p0}, Lcom/android/exsettings/vpn2/AppDialog;->dismiss()V

    .line 81
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedState"    # Landroid/os/Bundle;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/exsettings/vpn2/AppDialog;->mLabel:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/exsettings/vpn2/AppDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 62
    invoke-virtual {p0}, Lcom/android/exsettings/vpn2/AppDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/exsettings/vpn2/AppDialog;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const v2, 0x7f0c0d56

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/exsettings/vpn2/AppDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 64
    invoke-virtual {p0}, Lcom/android/exsettings/vpn2/AppDialog;->createButtons()V

    .line 65
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 60
    return-void
.end method
