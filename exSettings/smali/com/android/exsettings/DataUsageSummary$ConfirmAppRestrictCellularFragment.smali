.class public Lcom/android/exsettings/DataUsageSummary$ConfirmAppRestrictCellularFragment;
.super Landroid/app/DialogFragment;
.source "DataUsageSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConfirmAppRestrictCellularFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2567
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static show(Lcom/android/exsettings/DataUsageSummary;)V
    .locals 3
    .param p0, "parent"    # Lcom/android/exsettings/DataUsageSummary;

    .prologue
    .line 2569
    invoke-virtual {p0}, Lcom/android/exsettings/DataUsageSummary;->isAdded()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 2571
    :cond_0
    new-instance v0, Lcom/android/exsettings/DataUsageSummary$ConfirmAppRestrictCellularFragment;

    invoke-direct {v0}, Lcom/android/exsettings/DataUsageSummary$ConfirmAppRestrictCellularFragment;-><init>()V

    .line 2573
    .local v0, "dialog":Lcom/android/exsettings/DataUsageSummary$ConfirmAppRestrictCellularFragment;
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/android/exsettings/DataUsageSummary$ConfirmAppRestrictCellularFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 2574
    invoke-virtual {p0}, Lcom/android/exsettings/DataUsageSummary;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v2, "confirmAppRestrictCellular"

    invoke-virtual {v0, v1, v2}, Lcom/android/exsettings/DataUsageSummary$ConfirmAppRestrictCellularFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 2568
    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 2579
    invoke-virtual {p0}, Lcom/android/exsettings/DataUsageSummary$ConfirmAppRestrictCellularFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 2581
    .local v1, "context":Landroid/content/Context;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2582
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v2, 0x7f0c03a4

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 2583
    const v2, 0x7f0c03a5

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 2585
    new-instance v2, Lcom/android/exsettings/DataUsageSummary$ConfirmAppRestrictCellularFragment$1;

    invoke-direct {v2, p0}, Lcom/android/exsettings/DataUsageSummary$ConfirmAppRestrictCellularFragment$1;-><init>(Lcom/android/exsettings/DataUsageSummary$ConfirmAppRestrictCellularFragment;)V

    const v3, 0x104000a

    invoke-virtual {v0, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2594
    const/high16 v2, 0x1040000

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2596
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    return-object v2
.end method
