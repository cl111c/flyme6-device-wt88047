.class Lcom/android/exsettings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDeleteDialog$3;
.super Ljava/lang/Object;
.source "FingerprintSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exsettings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDeleteDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/exsettings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDeleteDialog;

.field final synthetic val$alertDialog:Landroid/app/AlertDialog;


# direct methods
.method constructor <init>(Lcom/android/exsettings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDeleteDialog;Landroid/app/AlertDialog;)V
    .locals 0
    .param p1, "this$2"    # Lcom/android/exsettings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDeleteDialog;
    .param p2, "val$alertDialog"    # Landroid/app/AlertDialog;

    .prologue
    .line 602
    iput-object p1, p0, Lcom/android/exsettings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDeleteDialog$3;->this$2:Lcom/android/exsettings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDeleteDialog;

    iput-object p2, p0, Lcom/android/exsettings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDeleteDialog$3;->val$alertDialog:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 605
    iget-object v2, p0, Lcom/android/exsettings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDeleteDialog$3;->this$2:Lcom/android/exsettings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDeleteDialog;

    iget-object v1, p0, Lcom/android/exsettings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDeleteDialog$3;->val$alertDialog:Landroid/app/AlertDialog;

    .line 606
    const v3, 0x7f130122

    .line 605
    invoke-virtual {v1, v3}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    invoke-static {v2, v1}, Lcom/android/exsettings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDeleteDialog;->-set0(Lcom/android/exsettings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDeleteDialog;Landroid/widget/EditText;)Landroid/widget/EditText;

    .line 607
    iget-object v1, p0, Lcom/android/exsettings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDeleteDialog$3;->this$2:Lcom/android/exsettings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDeleteDialog;

    invoke-static {v1}, Lcom/android/exsettings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDeleteDialog;->-get1(Lcom/android/exsettings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDeleteDialog;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/exsettings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDeleteDialog$3;->this$2:Lcom/android/exsettings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDeleteDialog;

    invoke-static {v1}, Lcom/android/exsettings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDeleteDialog;->-get2(Lcom/android/exsettings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDeleteDialog;)Landroid/hardware/fingerprint/Fingerprint;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/fingerprint/Fingerprint;->getName()Ljava/lang/CharSequence;

    move-result-object v0

    .line 608
    .local v0, "name":Ljava/lang/CharSequence;
    :goto_0
    iget-object v1, p0, Lcom/android/exsettings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDeleteDialog$3;->this$2:Lcom/android/exsettings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDeleteDialog;

    invoke-static {v1}, Lcom/android/exsettings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDeleteDialog;->-get0(Lcom/android/exsettings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDeleteDialog;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 609
    iget-object v1, p0, Lcom/android/exsettings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDeleteDialog$3;->this$2:Lcom/android/exsettings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDeleteDialog;

    invoke-static {v1}, Lcom/android/exsettings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDeleteDialog;->-get3(Lcom/android/exsettings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDeleteDialog;)Ljava/lang/Boolean;

    move-result-object v1

    if-nez v1, :cond_1

    .line 610
    iget-object v1, p0, Lcom/android/exsettings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDeleteDialog$3;->this$2:Lcom/android/exsettings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDeleteDialog;

    invoke-static {v1}, Lcom/android/exsettings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDeleteDialog;->-get0(Lcom/android/exsettings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDeleteDialog;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->selectAll()V

    .line 604
    :goto_1
    return-void

    .line 607
    .end local v0    # "name":Ljava/lang/CharSequence;
    :cond_0
    iget-object v1, p0, Lcom/android/exsettings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDeleteDialog$3;->this$2:Lcom/android/exsettings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDeleteDialog;

    invoke-static {v1}, Lcom/android/exsettings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDeleteDialog;->-get1(Lcom/android/exsettings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDeleteDialog;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "name":Ljava/lang/CharSequence;
    goto :goto_0

    .line 612
    :cond_1
    iget-object v1, p0, Lcom/android/exsettings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDeleteDialog$3;->this$2:Lcom/android/exsettings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDeleteDialog;

    invoke-static {v1}, Lcom/android/exsettings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDeleteDialog;->-get0(Lcom/android/exsettings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDeleteDialog;)Landroid/widget/EditText;

    move-result-object v1

    iget-object v2, p0, Lcom/android/exsettings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDeleteDialog$3;->this$2:Lcom/android/exsettings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDeleteDialog;

    invoke-static {v2}, Lcom/android/exsettings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDeleteDialog;->-get5(Lcom/android/exsettings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDeleteDialog;)I

    move-result v2

    iget-object v3, p0, Lcom/android/exsettings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDeleteDialog$3;->this$2:Lcom/android/exsettings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDeleteDialog;

    invoke-static {v3}, Lcom/android/exsettings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDeleteDialog;->-get4(Lcom/android/exsettings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDeleteDialog;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/EditText;->setSelection(II)V

    goto :goto_1
.end method
