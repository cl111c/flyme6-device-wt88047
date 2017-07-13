.class Lcom/android/exsettings/users/EditUserPhotoController$2;
.super Ljava/lang/Object;
.source "EditUserPhotoController.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exsettings/users/EditUserPhotoController;->showUpdatePhotoPopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/users/EditUserPhotoController;

.field final synthetic val$items:Ljava/util/List;

.field final synthetic val$listPopupWindow:Landroid/widget/ListPopupWindow;


# direct methods
.method constructor <init>(Lcom/android/exsettings/users/EditUserPhotoController;Ljava/util/List;Landroid/widget/ListPopupWindow;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/exsettings/users/EditUserPhotoController;
    .param p3, "val$listPopupWindow"    # Landroid/widget/ListPopupWindow;

    .prologue
    .line 165
    .local p2, "val$items":Ljava/util/List;, "Ljava/util/List<Lcom/android/exsettings/users/EditUserPhotoController$AdapterItem;>;"
    iput-object p1, p0, Lcom/android/exsettings/users/EditUserPhotoController$2;->this$0:Lcom/android/exsettings/users/EditUserPhotoController;

    iput-object p2, p0, Lcom/android/exsettings/users/EditUserPhotoController$2;->val$items:Ljava/util/List;

    iput-object p3, p0, Lcom/android/exsettings/users/EditUserPhotoController$2;->val$listPopupWindow:Landroid/widget/ListPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
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
    .line 168
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/android/exsettings/users/EditUserPhotoController$2;->val$items:Ljava/util/List;

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/exsettings/users/EditUserPhotoController$AdapterItem;

    .line 169
    .local v0, "item":Lcom/android/exsettings/users/EditUserPhotoController$AdapterItem;
    iget v1, v0, Lcom/android/exsettings/users/EditUserPhotoController$AdapterItem;->id:I

    packed-switch v1, :pswitch_data_0

    .line 167
    :goto_0
    return-void

    .line 171
    :pswitch_0
    iget-object v1, p0, Lcom/android/exsettings/users/EditUserPhotoController$2;->this$0:Lcom/android/exsettings/users/EditUserPhotoController;

    invoke-static {v1}, Lcom/android/exsettings/users/EditUserPhotoController;->-wrap0(Lcom/android/exsettings/users/EditUserPhotoController;)V

    .line 172
    iget-object v1, p0, Lcom/android/exsettings/users/EditUserPhotoController$2;->val$listPopupWindow:Landroid/widget/ListPopupWindow;

    invoke-virtual {v1}, Landroid/widget/ListPopupWindow;->dismiss()V

    goto :goto_0

    .line 175
    :pswitch_1
    iget-object v1, p0, Lcom/android/exsettings/users/EditUserPhotoController$2;->this$0:Lcom/android/exsettings/users/EditUserPhotoController;

    invoke-static {v1}, Lcom/android/exsettings/users/EditUserPhotoController;->-wrap2(Lcom/android/exsettings/users/EditUserPhotoController;)V

    .line 176
    iget-object v1, p0, Lcom/android/exsettings/users/EditUserPhotoController$2;->val$listPopupWindow:Landroid/widget/ListPopupWindow;

    invoke-virtual {v1}, Landroid/widget/ListPopupWindow;->dismiss()V

    goto :goto_0

    .line 169
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
