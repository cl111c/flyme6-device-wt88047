.class Lcom/android/exsettings/nx/dslv/ActionListViewSettings$MyAlertDialogFragment$4;
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

.field final synthetic val$finalDialogEntries:[Ljava/lang/String;

.field final synthetic val$finalDialogValues:[Ljava/lang/String;

.field final synthetic val$longpress:Z

.field final synthetic val$newAction:Z

.field final synthetic val$which:I


# direct methods
.method constructor <init>(Lcom/android/exsettings/nx/dslv/ActionListViewSettings$MyAlertDialogFragment;[Ljava/lang/String;IZZ[Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/exsettings/nx/dslv/ActionListViewSettings$MyAlertDialogFragment;
    .param p2, "val$finalDialogValues"    # [Ljava/lang/String;
    .param p3, "val$which"    # I
    .param p4, "val$longpress"    # Z
    .param p5, "val$newAction"    # Z
    .param p6, "val$finalDialogEntries"    # [Ljava/lang/String;

    .prologue
    .line 811
    iput-object p1, p0, Lcom/android/exsettings/nx/dslv/ActionListViewSettings$MyAlertDialogFragment$4;->this$1:Lcom/android/exsettings/nx/dslv/ActionListViewSettings$MyAlertDialogFragment;

    iput-object p2, p0, Lcom/android/exsettings/nx/dslv/ActionListViewSettings$MyAlertDialogFragment$4;->val$finalDialogValues:[Ljava/lang/String;

    iput p3, p0, Lcom/android/exsettings/nx/dslv/ActionListViewSettings$MyAlertDialogFragment$4;->val$which:I

    iput-boolean p4, p0, Lcom/android/exsettings/nx/dslv/ActionListViewSettings$MyAlertDialogFragment$4;->val$longpress:Z

    iput-boolean p5, p0, Lcom/android/exsettings/nx/dslv/ActionListViewSettings$MyAlertDialogFragment$4;->val$newAction:Z

    iput-object p6, p0, Lcom/android/exsettings/nx/dslv/ActionListViewSettings$MyAlertDialogFragment$4;->val$finalDialogEntries:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "item"    # I

    .prologue
    const/4 v3, 0x0

    .line 813
    iget-object v0, p0, Lcom/android/exsettings/nx/dslv/ActionListViewSettings$MyAlertDialogFragment$4;->val$finalDialogValues:[Ljava/lang/String;

    aget-object v0, v0, p2

    const-string/jumbo v1, "**app**"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 814
    iget-object v0, p0, Lcom/android/exsettings/nx/dslv/ActionListViewSettings$MyAlertDialogFragment$4;->this$1:Lcom/android/exsettings/nx/dslv/ActionListViewSettings$MyAlertDialogFragment;

    invoke-virtual {v0}, Lcom/android/exsettings/nx/dslv/ActionListViewSettings$MyAlertDialogFragment;->getOwner()Lcom/android/exsettings/nx/dslv/ActionListViewSettings;

    move-result-object v0

    invoke-static {v0}, Lcom/android/exsettings/nx/dslv/ActionListViewSettings;->-get11(Lcom/android/exsettings/nx/dslv/ActionListViewSettings;)Lcom/android/exsettings/nx/util/ShortcutPickerHelper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 815
    iget-object v0, p0, Lcom/android/exsettings/nx/dslv/ActionListViewSettings$MyAlertDialogFragment$4;->this$1:Lcom/android/exsettings/nx/dslv/ActionListViewSettings$MyAlertDialogFragment;

    invoke-virtual {v0}, Lcom/android/exsettings/nx/dslv/ActionListViewSettings$MyAlertDialogFragment;->getOwner()Lcom/android/exsettings/nx/dslv/ActionListViewSettings;

    move-result-object v0

    iget v1, p0, Lcom/android/exsettings/nx/dslv/ActionListViewSettings$MyAlertDialogFragment$4;->val$which:I

    invoke-static {v0, v1}, Lcom/android/exsettings/nx/dslv/ActionListViewSettings;->-set0(Lcom/android/exsettings/nx/dslv/ActionListViewSettings;I)I

    .line 816
    iget-object v0, p0, Lcom/android/exsettings/nx/dslv/ActionListViewSettings$MyAlertDialogFragment$4;->this$1:Lcom/android/exsettings/nx/dslv/ActionListViewSettings$MyAlertDialogFragment;

    invoke-virtual {v0}, Lcom/android/exsettings/nx/dslv/ActionListViewSettings$MyAlertDialogFragment;->getOwner()Lcom/android/exsettings/nx/dslv/ActionListViewSettings;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/exsettings/nx/dslv/ActionListViewSettings$MyAlertDialogFragment$4;->val$longpress:Z

    invoke-static {v0, v1}, Lcom/android/exsettings/nx/dslv/ActionListViewSettings;->-set1(Lcom/android/exsettings/nx/dslv/ActionListViewSettings;Z)Z

    .line 817
    iget-object v0, p0, Lcom/android/exsettings/nx/dslv/ActionListViewSettings$MyAlertDialogFragment$4;->this$1:Lcom/android/exsettings/nx/dslv/ActionListViewSettings$MyAlertDialogFragment;

    invoke-virtual {v0}, Lcom/android/exsettings/nx/dslv/ActionListViewSettings$MyAlertDialogFragment;->getOwner()Lcom/android/exsettings/nx/dslv/ActionListViewSettings;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/exsettings/nx/dslv/ActionListViewSettings$MyAlertDialogFragment$4;->val$newAction:Z

    invoke-static {v0, v1}, Lcom/android/exsettings/nx/dslv/ActionListViewSettings;->-set2(Lcom/android/exsettings/nx/dslv/ActionListViewSettings;Z)Z

    .line 818
    iget-object v0, p0, Lcom/android/exsettings/nx/dslv/ActionListViewSettings$MyAlertDialogFragment$4;->this$1:Lcom/android/exsettings/nx/dslv/ActionListViewSettings$MyAlertDialogFragment;

    invoke-virtual {v0}, Lcom/android/exsettings/nx/dslv/ActionListViewSettings$MyAlertDialogFragment;->getOwner()Lcom/android/exsettings/nx/dslv/ActionListViewSettings;

    move-result-object v0

    invoke-static {v0}, Lcom/android/exsettings/nx/dslv/ActionListViewSettings;->-get11(Lcom/android/exsettings/nx/dslv/ActionListViewSettings;)Lcom/android/exsettings/nx/util/ShortcutPickerHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/exsettings/nx/dslv/ActionListViewSettings$MyAlertDialogFragment$4;->this$1:Lcom/android/exsettings/nx/dslv/ActionListViewSettings$MyAlertDialogFragment;

    invoke-virtual {v1}, Lcom/android/exsettings/nx/dslv/ActionListViewSettings$MyAlertDialogFragment;->getOwner()Lcom/android/exsettings/nx/dslv/ActionListViewSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/exsettings/nx/dslv/ActionListViewSettings;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/exsettings/nx/util/ShortcutPickerHelper;->pickShortcut(I)V

    .line 812
    :cond_0
    :goto_0
    return-void

    .line 821
    :cond_1
    iget-boolean v0, p0, Lcom/android/exsettings/nx/dslv/ActionListViewSettings$MyAlertDialogFragment$4;->val$newAction:Z

    if-eqz v0, :cond_2

    .line 822
    iget-object v0, p0, Lcom/android/exsettings/nx/dslv/ActionListViewSettings$MyAlertDialogFragment$4;->this$1:Lcom/android/exsettings/nx/dslv/ActionListViewSettings$MyAlertDialogFragment;

    invoke-virtual {v0}, Lcom/android/exsettings/nx/dslv/ActionListViewSettings$MyAlertDialogFragment;->getOwner()Lcom/android/exsettings/nx/dslv/ActionListViewSettings;

    move-result-object v0

    iget-object v1, p0, Lcom/android/exsettings/nx/dslv/ActionListViewSettings$MyAlertDialogFragment$4;->val$finalDialogValues:[Ljava/lang/String;

    aget-object v1, v1, p2

    .line 823
    iget-object v2, p0, Lcom/android/exsettings/nx/dslv/ActionListViewSettings$MyAlertDialogFragment$4;->val$finalDialogEntries:[Ljava/lang/String;

    aget-object v2, v2, p2

    .line 822
    invoke-static {v0, v1, v2}, Lcom/android/exsettings/nx/dslv/ActionListViewSettings;->-wrap1(Lcom/android/exsettings/nx/dslv/ActionListViewSettings;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 825
    :cond_2
    iget-object v0, p0, Lcom/android/exsettings/nx/dslv/ActionListViewSettings$MyAlertDialogFragment$4;->this$1:Lcom/android/exsettings/nx/dslv/ActionListViewSettings$MyAlertDialogFragment;

    invoke-virtual {v0}, Lcom/android/exsettings/nx/dslv/ActionListViewSettings$MyAlertDialogFragment;->getOwner()Lcom/android/exsettings/nx/dslv/ActionListViewSettings;

    move-result-object v0

    iget-object v1, p0, Lcom/android/exsettings/nx/dslv/ActionListViewSettings$MyAlertDialogFragment$4;->val$finalDialogValues:[Ljava/lang/String;

    aget-object v1, v1, p2

    .line 826
    iget-object v2, p0, Lcom/android/exsettings/nx/dslv/ActionListViewSettings$MyAlertDialogFragment$4;->val$finalDialogEntries:[Ljava/lang/String;

    aget-object v2, v2, p2

    .line 827
    iget v4, p0, Lcom/android/exsettings/nx/dslv/ActionListViewSettings$MyAlertDialogFragment$4;->val$which:I

    iget-boolean v5, p0, Lcom/android/exsettings/nx/dslv/ActionListViewSettings$MyAlertDialogFragment$4;->val$longpress:Z

    .line 825
    invoke-static/range {v0 .. v5}, Lcom/android/exsettings/nx/dslv/ActionListViewSettings;->-wrap6(Lcom/android/exsettings/nx/dslv/ActionListViewSettings;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    goto :goto_0
.end method
