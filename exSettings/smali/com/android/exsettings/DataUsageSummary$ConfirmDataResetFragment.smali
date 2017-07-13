.class public Lcom/android/exsettings/DataUsageSummary$ConfirmDataResetFragment;
.super Landroid/app/DialogFragment;
.source "DataUsageSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConfirmDataResetFragment"
.end annotation


# static fields
.field static mTemplate:Landroid/net/NetworkTemplate;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2460
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static show(Lcom/android/exsettings/DataUsageSummary;Landroid/net/NetworkTemplate;)V
    .locals 3
    .param p0, "parent"    # Lcom/android/exsettings/DataUsageSummary;
    .param p1, "template"    # Landroid/net/NetworkTemplate;

    .prologue
    .line 2463
    sput-object p1, Lcom/android/exsettings/DataUsageSummary$ConfirmDataResetFragment;->mTemplate:Landroid/net/NetworkTemplate;

    .line 2464
    invoke-virtual {p0}, Lcom/android/exsettings/DataUsageSummary;->isAdded()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 2466
    :cond_0
    new-instance v0, Lcom/android/exsettings/DataUsageSummary$ConfirmDataResetFragment;

    invoke-direct {v0}, Lcom/android/exsettings/DataUsageSummary$ConfirmDataResetFragment;-><init>()V

    .line 2467
    .local v0, "dialog":Lcom/android/exsettings/DataUsageSummary$ConfirmDataResetFragment;
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/android/exsettings/DataUsageSummary$ConfirmDataResetFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 2468
    invoke-virtual {p0}, Lcom/android/exsettings/DataUsageSummary;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v2, "confirmDataReset"

    invoke-virtual {v0, v1, v2}, Lcom/android/exsettings/DataUsageSummary$ConfirmDataResetFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 2462
    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 2473
    invoke-virtual {p0}, Lcom/android/exsettings/DataUsageSummary$ConfirmDataResetFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 2475
    .local v1, "context":Landroid/content/Context;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2476
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v2, 0x7f0c039f

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 2477
    const v2, 0x7f0c03a0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 2480
    new-instance v2, Lcom/android/exsettings/DataUsageSummary$ConfirmDataResetFragment$1;

    invoke-direct {v2, p0}, Lcom/android/exsettings/DataUsageSummary$ConfirmDataResetFragment$1;-><init>(Lcom/android/exsettings/DataUsageSummary$ConfirmDataResetFragment;)V

    .line 2479
    const v3, 0x7f0c03a1

    invoke-virtual {v0, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2490
    const/high16 v2, 0x1040000

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2492
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    return-object v2
.end method
