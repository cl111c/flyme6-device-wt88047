.class Lcom/android/exsettings/nx/dslv/DragSortListView$LiftAnimator;
.super Lcom/android/exsettings/nx/dslv/DragSortListView$SmoothAnimator;
.source "DragSortListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/nx/dslv/DragSortListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LiftAnimator"
.end annotation


# instance fields
.field private mFinalDragDeltaY:F

.field private mInitDragDeltaY:F

.field final synthetic this$0:Lcom/android/exsettings/nx/dslv/DragSortListView;


# virtual methods
.method public onStart()V
    .locals 1

    .prologue
    .line 1207
    iget-object v0, p0, Lcom/android/exsettings/nx/dslv/DragSortListView$LiftAnimator;->this$0:Lcom/android/exsettings/nx/dslv/DragSortListView;

    invoke-static {v0}, Lcom/android/exsettings/nx/dslv/DragSortListView;->-get1(Lcom/android/exsettings/nx/dslv/DragSortListView;)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/exsettings/nx/dslv/DragSortListView$LiftAnimator;->mInitDragDeltaY:F

    .line 1208
    iget-object v0, p0, Lcom/android/exsettings/nx/dslv/DragSortListView$LiftAnimator;->this$0:Lcom/android/exsettings/nx/dslv/DragSortListView;

    invoke-static {v0}, Lcom/android/exsettings/nx/dslv/DragSortListView;->-get9(Lcom/android/exsettings/nx/dslv/DragSortListView;)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/exsettings/nx/dslv/DragSortListView$LiftAnimator;->mFinalDragDeltaY:F

    .line 1206
    return-void
.end method

.method public onUpdate(FF)V
    .locals 4
    .param p1, "frac"    # F
    .param p2, "smoothFrac"    # F

    .prologue
    .line 1213
    iget-object v0, p0, Lcom/android/exsettings/nx/dslv/DragSortListView$LiftAnimator;->this$0:Lcom/android/exsettings/nx/dslv/DragSortListView;

    invoke-static {v0}, Lcom/android/exsettings/nx/dslv/DragSortListView;->-get3(Lcom/android/exsettings/nx/dslv/DragSortListView;)I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 1214
    invoke-virtual {p0}, Lcom/android/exsettings/nx/dslv/DragSortListView$LiftAnimator;->cancel()V

    .line 1212
    :goto_0
    return-void

    .line 1216
    :cond_0
    iget-object v0, p0, Lcom/android/exsettings/nx/dslv/DragSortListView$LiftAnimator;->this$0:Lcom/android/exsettings/nx/dslv/DragSortListView;

    iget v1, p0, Lcom/android/exsettings/nx/dslv/DragSortListView$LiftAnimator;->mFinalDragDeltaY:F

    mul-float/2addr v1, p2

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, p2

    .line 1217
    iget v3, p0, Lcom/android/exsettings/nx/dslv/DragSortListView$LiftAnimator;->mInitDragDeltaY:F

    .line 1216
    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v0, v1}, Lcom/android/exsettings/nx/dslv/DragSortListView;->-set1(Lcom/android/exsettings/nx/dslv/DragSortListView;I)I

    .line 1218
    iget-object v0, p0, Lcom/android/exsettings/nx/dslv/DragSortListView$LiftAnimator;->this$0:Lcom/android/exsettings/nx/dslv/DragSortListView;

    invoke-static {v0}, Lcom/android/exsettings/nx/dslv/DragSortListView;->-get6(Lcom/android/exsettings/nx/dslv/DragSortListView;)Landroid/graphics/Point;

    move-result-object v0

    iget-object v1, p0, Lcom/android/exsettings/nx/dslv/DragSortListView$LiftAnimator;->this$0:Lcom/android/exsettings/nx/dslv/DragSortListView;

    invoke-static {v1}, Lcom/android/exsettings/nx/dslv/DragSortListView;->-get20(Lcom/android/exsettings/nx/dslv/DragSortListView;)I

    move-result v1

    iget-object v2, p0, Lcom/android/exsettings/nx/dslv/DragSortListView$LiftAnimator;->this$0:Lcom/android/exsettings/nx/dslv/DragSortListView;

    invoke-static {v2}, Lcom/android/exsettings/nx/dslv/DragSortListView;->-get1(Lcom/android/exsettings/nx/dslv/DragSortListView;)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 1219
    iget-object v0, p0, Lcom/android/exsettings/nx/dslv/DragSortListView$LiftAnimator;->this$0:Lcom/android/exsettings/nx/dslv/DragSortListView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/exsettings/nx/dslv/DragSortListView;->-wrap6(Lcom/android/exsettings/nx/dslv/DragSortListView;Z)V

    goto :goto_0
.end method
