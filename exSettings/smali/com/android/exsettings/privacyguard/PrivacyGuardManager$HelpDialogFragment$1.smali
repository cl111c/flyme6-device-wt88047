.class Lcom/android/exsettings/privacyguard/PrivacyGuardManager$HelpDialogFragment$1;
.super Ljava/lang/Object;
.source "PrivacyGuardManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exsettings/privacyguard/PrivacyGuardManager$HelpDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/exsettings/privacyguard/PrivacyGuardManager$HelpDialogFragment;


# direct methods
.method constructor <init>(Lcom/android/exsettings/privacyguard/PrivacyGuardManager$HelpDialogFragment;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/exsettings/privacyguard/PrivacyGuardManager$HelpDialogFragment;

    .prologue
    .line 312
    iput-object p1, p0, Lcom/android/exsettings/privacyguard/PrivacyGuardManager$HelpDialogFragment$1;->this$1:Lcom/android/exsettings/privacyguard/PrivacyGuardManager$HelpDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 315
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 314
    return-void
.end method
