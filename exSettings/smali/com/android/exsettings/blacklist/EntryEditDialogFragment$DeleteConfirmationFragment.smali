.class public Lcom/android/exsettings/blacklist/EntryEditDialogFragment$DeleteConfirmationFragment;
.super Landroid/app/DialogFragment;
.source "EntryEditDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/blacklist/EntryEditDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DeleteConfirmationFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 376
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static newInstance()Landroid/app/DialogFragment;
    .locals 1

    .prologue
    .line 380
    new-instance v0, Lcom/android/exsettings/blacklist/EntryEditDialogFragment$DeleteConfirmationFragment;

    invoke-direct {v0}, Lcom/android/exsettings/blacklist/EntryEditDialogFragment$DeleteConfirmationFragment;-><init>()V

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 397
    invoke-virtual {p0}, Lcom/android/exsettings/blacklist/EntryEditDialogFragment$DeleteConfirmationFragment;->getParentFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/exsettings/blacklist/EntryEditDialogFragment;

    .line 398
    .local v0, "parent":Lcom/android/exsettings/blacklist/EntryEditDialogFragment;
    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v0, v1}, Lcom/android/exsettings/blacklist/EntryEditDialogFragment;->-wrap0(Lcom/android/exsettings/blacklist/EntryEditDialogFragment;Z)V

    .line 396
    return-void

    .line 398
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 385
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/exsettings/blacklist/EntryEditDialogFragment$DeleteConfirmationFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 386
    const v2, 0x7f0c030c

    .line 385
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 387
    const v2, 0x7f0c030d

    .line 385
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 388
    const v2, 0x7f0c0503

    .line 385
    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 389
    const v2, 0x7f0c0504

    .line 385
    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 392
    .local v0, "dialog":Landroid/app/AlertDialog;
    return-object v0
.end method
