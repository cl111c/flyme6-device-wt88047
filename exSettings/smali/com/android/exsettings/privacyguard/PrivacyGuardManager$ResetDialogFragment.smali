.class public Lcom/android/exsettings/privacyguard/PrivacyGuardManager$ResetDialogFragment;
.super Landroid/app/DialogFragment;
.source "PrivacyGuardManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/privacyguard/PrivacyGuardManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ResetDialogFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 335
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 338
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/exsettings/privacyguard/PrivacyGuardManager$ResetDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 339
    const v1, 0x7f0c02c7

    .line 338
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 340
    const v1, 0x7f0c02c8

    .line 338
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 342
    new-instance v1, Lcom/android/exsettings/privacyguard/PrivacyGuardManager$ResetDialogFragment$1;

    invoke-direct {v1, p0}, Lcom/android/exsettings/privacyguard/PrivacyGuardManager$ResetDialogFragment$1;-><init>(Lcom/android/exsettings/privacyguard/PrivacyGuardManager$ResetDialogFragment;)V

    .line 341
    const v2, 0x7f0c09e2

    .line 338
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 348
    new-instance v1, Lcom/android/exsettings/privacyguard/PrivacyGuardManager$ResetDialogFragment$2;

    invoke-direct {v1, p0}, Lcom/android/exsettings/privacyguard/PrivacyGuardManager$ResetDialogFragment$2;-><init>(Lcom/android/exsettings/privacyguard/PrivacyGuardManager$ResetDialogFragment;)V

    .line 347
    const v2, 0x7f0c05d6

    .line 338
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method
