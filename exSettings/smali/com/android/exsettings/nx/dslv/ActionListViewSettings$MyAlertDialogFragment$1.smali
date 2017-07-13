.class Lcom/android/exsettings/nx/dslv/ActionListViewSettings$MyAlertDialogFragment$1;
.super Ljava/lang/Object;
.source "ActionListViewSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exsettings/nx/dslv/ActionListViewSettings$MyAlertDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/exsettings/nx/dslv/ActionListViewSettings$MyAlertDialogFragment;


# direct methods
.method constructor <init>(Lcom/android/exsettings/nx/dslv/ActionListViewSettings$MyAlertDialogFragment;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/exsettings/nx/dslv/ActionListViewSettings$MyAlertDialogFragment;

    .prologue
    .line 686
    iput-object p1, p0, Lcom/android/exsettings/nx/dslv/ActionListViewSettings$MyAlertDialogFragment$1;->this$1:Lcom/android/exsettings/nx/dslv/ActionListViewSettings$MyAlertDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 11
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v1, 0x0

    .line 689
    iget-object v2, p0, Lcom/android/exsettings/nx/dslv/ActionListViewSettings$MyAlertDialogFragment$1;->this$1:Lcom/android/exsettings/nx/dslv/ActionListViewSettings$MyAlertDialogFragment;

    invoke-virtual {v2}, Lcom/android/exsettings/nx/dslv/ActionListViewSettings$MyAlertDialogFragment;->getOwner()Lcom/android/exsettings/nx/dslv/ActionListViewSettings;

    move-result-object v2

    invoke-static {v2}, Lcom/android/exsettings/nx/dslv/ActionListViewSettings;->-wrap0(Lcom/android/exsettings/nx/dslv/ActionListViewSettings;)Ljava/util/ArrayList;

    move-result-object v6

    .line 690
    .local v6, "actionConfigs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/util/nx/ActionConfig;>;"
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v7, v2, :cond_0

    .line 691
    iget-object v2, p0, Lcom/android/exsettings/nx/dslv/ActionListViewSettings$MyAlertDialogFragment$1;->this$1:Lcom/android/exsettings/nx/dslv/ActionListViewSettings$MyAlertDialogFragment;

    invoke-virtual {v2}, Lcom/android/exsettings/nx/dslv/ActionListViewSettings$MyAlertDialogFragment;->getOwner()Lcom/android/exsettings/nx/dslv/ActionListViewSettings;

    move-result-object v3

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/util/nx/ActionConfig;

    invoke-static {v3, v2, v9}, Lcom/android/exsettings/nx/dslv/ActionListViewSettings;->-wrap2(Lcom/android/exsettings/nx/dslv/ActionListViewSettings;Lcom/android/internal/util/nx/ActionConfig;Z)V

    .line 690
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 695
    :cond_0
    iget-object v2, p0, Lcom/android/exsettings/nx/dslv/ActionListViewSettings$MyAlertDialogFragment$1;->this$1:Lcom/android/exsettings/nx/dslv/ActionListViewSettings$MyAlertDialogFragment;

    invoke-virtual {v2}, Lcom/android/exsettings/nx/dslv/ActionListViewSettings$MyAlertDialogFragment;->getOwner()Lcom/android/exsettings/nx/dslv/ActionListViewSettings;

    move-result-object v2

    invoke-static {v2, v1, v9}, Lcom/android/exsettings/nx/dslv/ActionListViewSettings;->-wrap3(Lcom/android/exsettings/nx/dslv/ActionListViewSettings;Ljava/util/ArrayList;Z)V

    .line 696
    iget-object v2, p0, Lcom/android/exsettings/nx/dslv/ActionListViewSettings$MyAlertDialogFragment$1;->this$1:Lcom/android/exsettings/nx/dslv/ActionListViewSettings$MyAlertDialogFragment;

    invoke-virtual {v2}, Lcom/android/exsettings/nx/dslv/ActionListViewSettings$MyAlertDialogFragment;->getOwner()Lcom/android/exsettings/nx/dslv/ActionListViewSettings;

    move-result-object v2

    invoke-static {v2}, Lcom/android/exsettings/nx/dslv/ActionListViewSettings;->-get1(Lcom/android/exsettings/nx/dslv/ActionListViewSettings;)Lcom/android/exsettings/nx/dslv/ActionListViewSettings$ActionConfigsAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/exsettings/nx/dslv/ActionListViewSettings$ActionConfigsAdapter;->clear()V

    .line 699
    iget-object v2, p0, Lcom/android/exsettings/nx/dslv/ActionListViewSettings$MyAlertDialogFragment$1;->this$1:Lcom/android/exsettings/nx/dslv/ActionListViewSettings$MyAlertDialogFragment;

    invoke-virtual {v2}, Lcom/android/exsettings/nx/dslv/ActionListViewSettings$MyAlertDialogFragment;->getOwner()Lcom/android/exsettings/nx/dslv/ActionListViewSettings;

    move-result-object v2

    invoke-static {v2}, Lcom/android/exsettings/nx/dslv/ActionListViewSettings;->-wrap0(Lcom/android/exsettings/nx/dslv/ActionListViewSettings;)Ljava/util/ArrayList;

    move-result-object v6

    .line 700
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 701
    .local v8, "newConfigsSize":I
    const/4 v7, 0x0

    :goto_1
    if-ge v7, v8, :cond_1

    .line 702
    iget-object v2, p0, Lcom/android/exsettings/nx/dslv/ActionListViewSettings$MyAlertDialogFragment$1;->this$1:Lcom/android/exsettings/nx/dslv/ActionListViewSettings$MyAlertDialogFragment;

    invoke-virtual {v2}, Lcom/android/exsettings/nx/dslv/ActionListViewSettings$MyAlertDialogFragment;->getOwner()Lcom/android/exsettings/nx/dslv/ActionListViewSettings;

    move-result-object v2

    invoke-static {v2}, Lcom/android/exsettings/nx/dslv/ActionListViewSettings;->-get1(Lcom/android/exsettings/nx/dslv/ActionListViewSettings;)Lcom/android/exsettings/nx/dslv/ActionListViewSettings$ActionConfigsAdapter;

    move-result-object v3

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/util/nx/ActionConfig;

    invoke-virtual {v3, v2}, Lcom/android/exsettings/nx/dslv/ActionListViewSettings$ActionConfigsAdapter;->add(Ljava/lang/Object;)V

    .line 701
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 708
    :cond_1
    if-nez v8, :cond_2

    .line 710
    new-instance v0, Lcom/android/internal/util/nx/ActionConfig;

    move-object v2, v1

    move-object v3, v1

    move-object v4, v1

    move-object v5, v1

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/util/nx/ActionConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 711
    .local v0, "emptyAction":Lcom/android/internal/util/nx/ActionConfig;
    iget-object v1, p0, Lcom/android/exsettings/nx/dslv/ActionListViewSettings$MyAlertDialogFragment$1;->this$1:Lcom/android/exsettings/nx/dslv/ActionListViewSettings$MyAlertDialogFragment;

    invoke-virtual {v1}, Lcom/android/exsettings/nx/dslv/ActionListViewSettings$MyAlertDialogFragment;->getOwner()Lcom/android/exsettings/nx/dslv/ActionListViewSettings;

    move-result-object v1

    invoke-static {v1}, Lcom/android/exsettings/nx/dslv/ActionListViewSettings;->-get1(Lcom/android/exsettings/nx/dslv/ActionListViewSettings;)Lcom/android/exsettings/nx/dslv/ActionListViewSettings$ActionConfigsAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/exsettings/nx/dslv/ActionListViewSettings$ActionConfigsAdapter;->add(Ljava/lang/Object;)V

    .line 712
    iget-object v1, p0, Lcom/android/exsettings/nx/dslv/ActionListViewSettings$MyAlertDialogFragment$1;->this$1:Lcom/android/exsettings/nx/dslv/ActionListViewSettings$MyAlertDialogFragment;

    invoke-virtual {v1}, Lcom/android/exsettings/nx/dslv/ActionListViewSettings$MyAlertDialogFragment;->getOwner()Lcom/android/exsettings/nx/dslv/ActionListViewSettings;

    move-result-object v1

    invoke-static {v1}, Lcom/android/exsettings/nx/dslv/ActionListViewSettings;->-get1(Lcom/android/exsettings/nx/dslv/ActionListViewSettings;)Lcom/android/exsettings/nx/dslv/ActionListViewSettings$ActionConfigsAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/exsettings/nx/dslv/ActionListViewSettings$ActionConfigsAdapter;->remove(Ljava/lang/Object;)V

    .line 714
    .end local v0    # "emptyAction":Lcom/android/internal/util/nx/ActionConfig;
    :cond_2
    iget-object v1, p0, Lcom/android/exsettings/nx/dslv/ActionListViewSettings$MyAlertDialogFragment$1;->this$1:Lcom/android/exsettings/nx/dslv/ActionListViewSettings$MyAlertDialogFragment;

    invoke-virtual {v1}, Lcom/android/exsettings/nx/dslv/ActionListViewSettings$MyAlertDialogFragment;->getOwner()Lcom/android/exsettings/nx/dslv/ActionListViewSettings;

    move-result-object v2

    if-nez v8, :cond_3

    move v1, v9

    :goto_2
    invoke-static {v2, v1}, Lcom/android/exsettings/nx/dslv/ActionListViewSettings;->-wrap5(Lcom/android/exsettings/nx/dslv/ActionListViewSettings;Z)V

    .line 687
    return-void

    :cond_3
    move v1, v10

    .line 714
    goto :goto_2
.end method
