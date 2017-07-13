.class Lcom/android/exsettings/DataUsageSummary$ConfirmAppRestrictCellularFragment$1;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exsettings/DataUsageSummary$ConfirmAppRestrictCellularFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/exsettings/DataUsageSummary$ConfirmAppRestrictCellularFragment;


# direct methods
.method constructor <init>(Lcom/android/exsettings/DataUsageSummary$ConfirmAppRestrictCellularFragment;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/exsettings/DataUsageSummary$ConfirmAppRestrictCellularFragment;

    .prologue
    .line 2585
    iput-object p1, p0, Lcom/android/exsettings/DataUsageSummary$ConfirmAppRestrictCellularFragment$1;->this$1:Lcom/android/exsettings/DataUsageSummary$ConfirmAppRestrictCellularFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 2588
    iget-object v1, p0, Lcom/android/exsettings/DataUsageSummary$ConfirmAppRestrictCellularFragment$1;->this$1:Lcom/android/exsettings/DataUsageSummary$ConfirmAppRestrictCellularFragment;

    invoke-virtual {v1}, Lcom/android/exsettings/DataUsageSummary$ConfirmAppRestrictCellularFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/exsettings/DataUsageSummary;

    .line 2589
    .local v0, "target":Lcom/android/exsettings/DataUsageSummary;
    if-eqz v0, :cond_0

    .line 2590
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/exsettings/DataUsageSummary;->-wrap6(Lcom/android/exsettings/DataUsageSummary;Z)V

    .line 2587
    :cond_0
    return-void
.end method
