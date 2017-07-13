.class Lcom/android/exsettings/privacyguard/PrivacyGuardManager$ResetDialogFragment$1;
.super Ljava/lang/Object;
.source "PrivacyGuardManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exsettings/privacyguard/PrivacyGuardManager$ResetDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/exsettings/privacyguard/PrivacyGuardManager$ResetDialogFragment;


# direct methods
.method constructor <init>(Lcom/android/exsettings/privacyguard/PrivacyGuardManager$ResetDialogFragment;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/exsettings/privacyguard/PrivacyGuardManager$ResetDialogFragment;

    .prologue
    .line 342
    iput-object p1, p0, Lcom/android/exsettings/privacyguard/PrivacyGuardManager$ResetDialogFragment$1;->this$1:Lcom/android/exsettings/privacyguard/PrivacyGuardManager$ResetDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 344
    iget-object v0, p0, Lcom/android/exsettings/privacyguard/PrivacyGuardManager$ResetDialogFragment$1;->this$1:Lcom/android/exsettings/privacyguard/PrivacyGuardManager$ResetDialogFragment;

    invoke-virtual {v0}, Lcom/android/exsettings/privacyguard/PrivacyGuardManager$ResetDialogFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/exsettings/privacyguard/PrivacyGuardManager;

    invoke-static {v0}, Lcom/android/exsettings/privacyguard/PrivacyGuardManager;->-wrap0(Lcom/android/exsettings/privacyguard/PrivacyGuardManager;)V

    .line 343
    return-void
.end method
