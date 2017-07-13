.class Lcom/android/exsettings/DeviceAdminAdd$2;
.super Ljava/lang/Object;
.source "DeviceAdminAdd.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exsettings/DeviceAdminAdd;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/DeviceAdminAdd;


# direct methods
.method constructor <init>(Lcom/android/exsettings/DeviceAdminAdd;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/exsettings/DeviceAdminAdd;

    .prologue
    .line 261
    iput-object p1, p0, Lcom/android/exsettings/DeviceAdminAdd$2;->this$0:Lcom/android/exsettings/DeviceAdminAdd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 4

    .prologue
    .line 264
    iget-object v2, p0, Lcom/android/exsettings/DeviceAdminAdd$2;->this$0:Lcom/android/exsettings/DeviceAdminAdd;

    invoke-virtual {v2}, Lcom/android/exsettings/DeviceAdminAdd;->getEllipsizedLines()I

    move-result v1

    .line 266
    .local v1, "maxLines":I
    iget-object v2, p0, Lcom/android/exsettings/DeviceAdminAdd$2;->this$0:Lcom/android/exsettings/DeviceAdminAdd;

    iget-object v2, v2, Lcom/android/exsettings/DeviceAdminAdd;->mAddMsg:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLineCount()I

    move-result v2

    if-gt v2, v1, :cond_1

    const/4 v0, 0x1

    .line 267
    .local v0, "hideMsgExpander":Z
    :goto_0
    iget-object v2, p0, Lcom/android/exsettings/DeviceAdminAdd$2;->this$0:Lcom/android/exsettings/DeviceAdminAdd;

    iget-object v3, v2, Lcom/android/exsettings/DeviceAdminAdd;->mAddMsgExpander:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    const/16 v2, 0x8

    :goto_1
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 268
    if-eqz v0, :cond_0

    .line 269
    iget-object v2, p0, Lcom/android/exsettings/DeviceAdminAdd$2;->this$0:Lcom/android/exsettings/DeviceAdminAdd;

    iget-object v2, v2, Lcom/android/exsettings/DeviceAdminAdd;->mAddMsg:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 270
    iget-object v2, p0, Lcom/android/exsettings/DeviceAdminAdd$2;->this$0:Lcom/android/exsettings/DeviceAdminAdd;

    iget-object v2, v2, Lcom/android/exsettings/DeviceAdminAdd;->mAddMsgExpander:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    .line 272
    :cond_0
    iget-object v2, p0, Lcom/android/exsettings/DeviceAdminAdd$2;->this$0:Lcom/android/exsettings/DeviceAdminAdd;

    iget-object v2, v2, Lcom/android/exsettings/DeviceAdminAdd;->mAddMsg:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 263
    return-void

    .line 266
    .end local v0    # "hideMsgExpander":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "hideMsgExpander":Z
    goto :goto_0

    .line 267
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method
