.class Lcom/android/exsettings/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog$2;
.super Ljava/lang/Object;
.source "ChooseLockGeneric.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exsettings/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/exsettings/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog;


# direct methods
.method constructor <init>(Lcom/android/exsettings/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog;)V
    .locals 0
    .param p1, "this$2"    # Lcom/android/exsettings/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog;

    .prologue
    .line 655
    iput-object p1, p0, Lcom/android/exsettings/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog$2;->this$2:Lcom/android/exsettings/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 658
    iget-object v0, p0, Lcom/android/exsettings/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog$2;->this$2:Lcom/android/exsettings/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog;

    invoke-virtual {v0}, Lcom/android/exsettings/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog;->dismiss()V

    .line 657
    return-void
.end method
