.class Lcom/android/exsettings/nx/dslv/ActionListViewSettings$ActionConfigsAdapter$1;
.super Ljava/lang/Object;
.source "ActionListViewSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exsettings/nx/dslv/ActionListViewSettings$ActionConfigsAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/exsettings/nx/dslv/ActionListViewSettings$ActionConfigsAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/android/exsettings/nx/dslv/ActionListViewSettings$ActionConfigsAdapter;I)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/exsettings/nx/dslv/ActionListViewSettings$ActionConfigsAdapter;
    .param p2, "val$position"    # I

    .prologue
    .line 635
    iput-object p1, p0, Lcom/android/exsettings/nx/dslv/ActionListViewSettings$ActionConfigsAdapter$1;->this$1:Lcom/android/exsettings/nx/dslv/ActionListViewSettings$ActionConfigsAdapter;

    iput p2, p0, Lcom/android/exsettings/nx/dslv/ActionListViewSettings$ActionConfigsAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 638
    iget-object v0, p0, Lcom/android/exsettings/nx/dslv/ActionListViewSettings$ActionConfigsAdapter$1;->this$1:Lcom/android/exsettings/nx/dslv/ActionListViewSettings$ActionConfigsAdapter;

    iget-object v0, v0, Lcom/android/exsettings/nx/dslv/ActionListViewSettings$ActionConfigsAdapter;->this$0:Lcom/android/exsettings/nx/dslv/ActionListViewSettings;

    iget v1, p0, Lcom/android/exsettings/nx/dslv/ActionListViewSettings$ActionConfigsAdapter$1;->val$position:I

    invoke-static {v0, v1}, Lcom/android/exsettings/nx/dslv/ActionListViewSettings;->-set0(Lcom/android/exsettings/nx/dslv/ActionListViewSettings;I)I

    .line 639
    iget-object v0, p0, Lcom/android/exsettings/nx/dslv/ActionListViewSettings$ActionConfigsAdapter$1;->this$1:Lcom/android/exsettings/nx/dslv/ActionListViewSettings$ActionConfigsAdapter;

    iget-object v0, v0, Lcom/android/exsettings/nx/dslv/ActionListViewSettings$ActionConfigsAdapter;->this$0:Lcom/android/exsettings/nx/dslv/ActionListViewSettings;

    const/4 v1, 0x1

    invoke-static {v0, v1, v2, v2, v2}, Lcom/android/exsettings/nx/dslv/ActionListViewSettings;->-wrap4(Lcom/android/exsettings/nx/dslv/ActionListViewSettings;IIZZ)V

    .line 637
    return-void
.end method
