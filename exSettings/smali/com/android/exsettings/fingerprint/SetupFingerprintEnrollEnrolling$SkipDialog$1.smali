.class Lcom/android/exsettings/fingerprint/SetupFingerprintEnrollEnrolling$SkipDialog$1;
.super Ljava/lang/Object;
.source "SetupFingerprintEnrollEnrolling.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exsettings/fingerprint/SetupFingerprintEnrollEnrolling$SkipDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/exsettings/fingerprint/SetupFingerprintEnrollEnrolling$SkipDialog;


# direct methods
.method constructor <init>(Lcom/android/exsettings/fingerprint/SetupFingerprintEnrollEnrolling$SkipDialog;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/exsettings/fingerprint/SetupFingerprintEnrollEnrolling$SkipDialog;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/android/exsettings/fingerprint/SetupFingerprintEnrollEnrolling$SkipDialog$1;->this$1:Lcom/android/exsettings/fingerprint/SetupFingerprintEnrollEnrolling$SkipDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 113
    iget-object v1, p0, Lcom/android/exsettings/fingerprint/SetupFingerprintEnrollEnrolling$SkipDialog$1;->this$1:Lcom/android/exsettings/fingerprint/SetupFingerprintEnrollEnrolling$SkipDialog;

    invoke-virtual {v1}, Lcom/android/exsettings/fingerprint/SetupFingerprintEnrollEnrolling$SkipDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 114
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 115
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 116
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 112
    :cond_0
    return-void
.end method
