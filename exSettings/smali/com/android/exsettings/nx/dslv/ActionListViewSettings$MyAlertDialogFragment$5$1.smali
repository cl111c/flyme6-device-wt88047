.class Lcom/android/exsettings/nx/dslv/ActionListViewSettings$MyAlertDialogFragment$5$1;
.super Ljava/lang/Object;
.source "ActionListViewSettings.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exsettings/nx/dslv/ActionListViewSettings$MyAlertDialogFragment$5;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/exsettings/nx/dslv/ActionListViewSettings$MyAlertDialogFragment$5;

.field final synthetic val$holoDialog:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/android/exsettings/nx/dslv/ActionListViewSettings$MyAlertDialogFragment$5;Landroid/app/Dialog;)V
    .locals 0
    .param p1, "this$2"    # Lcom/android/exsettings/nx/dslv/ActionListViewSettings$MyAlertDialogFragment$5;
    .param p2, "val$holoDialog"    # Landroid/app/Dialog;

    .prologue
    .line 854
    iput-object p1, p0, Lcom/android/exsettings/nx/dslv/ActionListViewSettings$MyAlertDialogFragment$5$1;->this$2:Lcom/android/exsettings/nx/dslv/ActionListViewSettings$MyAlertDialogFragment$5;

    iput-object p2, p0, Lcom/android/exsettings/nx/dslv/ActionListViewSettings$MyAlertDialogFragment$5$1;->val$holoDialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v1, 0x0

    .line 858
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v6

    check-cast v6, Lcom/android/exsettings/nx/dslv/ActionListViewSettings$MyAlertDialogFragment$IconAdapter;

    .line 859
    .local v6, "adapter":Lcom/android/exsettings/nx/dslv/ActionListViewSettings$MyAlertDialogFragment$IconAdapter;
    iget-object v0, p0, Lcom/android/exsettings/nx/dslv/ActionListViewSettings$MyAlertDialogFragment$5$1;->this$2:Lcom/android/exsettings/nx/dslv/ActionListViewSettings$MyAlertDialogFragment$5;

    iget-object v0, v0, Lcom/android/exsettings/nx/dslv/ActionListViewSettings$MyAlertDialogFragment$5;->this$1:Lcom/android/exsettings/nx/dslv/ActionListViewSettings$MyAlertDialogFragment;

    invoke-virtual {v0}, Lcom/android/exsettings/nx/dslv/ActionListViewSettings$MyAlertDialogFragment;->getOwner()Lcom/android/exsettings/nx/dslv/ActionListViewSettings;

    move-result-object v0

    .line 860
    invoke-virtual {v6, p3}, Lcom/android/exsettings/nx/dslv/ActionListViewSettings$MyAlertDialogFragment$IconAdapter;->getItemReference(I)Ljava/lang/String;

    move-result-object v3

    .line 861
    iget-object v2, p0, Lcom/android/exsettings/nx/dslv/ActionListViewSettings$MyAlertDialogFragment$5$1;->this$2:Lcom/android/exsettings/nx/dslv/ActionListViewSettings$MyAlertDialogFragment$5;

    iget-object v2, v2, Lcom/android/exsettings/nx/dslv/ActionListViewSettings$MyAlertDialogFragment$5;->this$1:Lcom/android/exsettings/nx/dslv/ActionListViewSettings$MyAlertDialogFragment;

    invoke-virtual {v2}, Lcom/android/exsettings/nx/dslv/ActionListViewSettings$MyAlertDialogFragment;->getOwner()Lcom/android/exsettings/nx/dslv/ActionListViewSettings;

    move-result-object v2

    invoke-static {v2}, Lcom/android/exsettings/nx/dslv/ActionListViewSettings;->-get10(Lcom/android/exsettings/nx/dslv/ActionListViewSettings;)I

    move-result v4

    const/4 v5, 0x0

    move-object v2, v1

    .line 859
    invoke-static/range {v0 .. v5}, Lcom/android/exsettings/nx/dslv/ActionListViewSettings;->-wrap6(Lcom/android/exsettings/nx/dslv/ActionListViewSettings;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 862
    iget-object v0, p0, Lcom/android/exsettings/nx/dslv/ActionListViewSettings$MyAlertDialogFragment$5$1;->this$2:Lcom/android/exsettings/nx/dslv/ActionListViewSettings$MyAlertDialogFragment$5;

    iget-object v0, v0, Lcom/android/exsettings/nx/dslv/ActionListViewSettings$MyAlertDialogFragment$5;->this$1:Lcom/android/exsettings/nx/dslv/ActionListViewSettings$MyAlertDialogFragment;

    invoke-virtual {v0}, Lcom/android/exsettings/nx/dslv/ActionListViewSettings$MyAlertDialogFragment;->getOwner()Lcom/android/exsettings/nx/dslv/ActionListViewSettings;

    move-result-object v0

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/android/exsettings/nx/dslv/ActionListViewSettings;->-set0(Lcom/android/exsettings/nx/dslv/ActionListViewSettings;I)I

    .line 863
    iget-object v0, p0, Lcom/android/exsettings/nx/dslv/ActionListViewSettings$MyAlertDialogFragment$5$1;->val$holoDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 857
    return-void
.end method
