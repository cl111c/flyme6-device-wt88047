.class Lcom/android/exsettings/nx/dslv/DragSortController$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "DragSortController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/nx/dslv/DragSortController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/nx/dslv/DragSortController;


# direct methods
.method constructor <init>(Lcom/android/exsettings/nx/dslv/DragSortController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/exsettings/nx/dslv/DragSortController;

    .prologue
    .line 465
    iput-object p1, p0, Lcom/android/exsettings/nx/dslv/DragSortController$1;->this$0:Lcom/android/exsettings/nx/dslv/DragSortController;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 6
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 470
    iget-object v2, p0, Lcom/android/exsettings/nx/dslv/DragSortController$1;->this$0:Lcom/android/exsettings/nx/dslv/DragSortController;

    invoke-static {v2}, Lcom/android/exsettings/nx/dslv/DragSortController;->-get4(Lcom/android/exsettings/nx/dslv/DragSortController;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/exsettings/nx/dslv/DragSortController$1;->this$0:Lcom/android/exsettings/nx/dslv/DragSortController;

    invoke-static {v2}, Lcom/android/exsettings/nx/dslv/DragSortController;->-get2(Lcom/android/exsettings/nx/dslv/DragSortController;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 471
    iget-object v2, p0, Lcom/android/exsettings/nx/dslv/DragSortController$1;->this$0:Lcom/android/exsettings/nx/dslv/DragSortController;

    invoke-static {v2}, Lcom/android/exsettings/nx/dslv/DragSortController;->-get0(Lcom/android/exsettings/nx/dslv/DragSortController;)Lcom/android/exsettings/nx/dslv/DragSortListView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/exsettings/nx/dslv/DragSortListView;->getWidth()I

    move-result v1

    .line 472
    .local v1, "w":I
    div-int/lit8 v0, v1, 0x5

    .line 473
    .local v0, "minPos":I
    iget-object v2, p0, Lcom/android/exsettings/nx/dslv/DragSortController$1;->this$0:Lcom/android/exsettings/nx/dslv/DragSortController;

    invoke-static {v2}, Lcom/android/exsettings/nx/dslv/DragSortController;->-get1(Lcom/android/exsettings/nx/dslv/DragSortController;)F

    move-result v2

    cmpl-float v2, p3, v2

    if-lez v2, :cond_2

    .line 474
    iget-object v2, p0, Lcom/android/exsettings/nx/dslv/DragSortController$1;->this$0:Lcom/android/exsettings/nx/dslv/DragSortController;

    invoke-static {v2}, Lcom/android/exsettings/nx/dslv/DragSortController;->-get3(Lcom/android/exsettings/nx/dslv/DragSortController;)I

    move-result v2

    neg-int v3, v0

    if-le v2, v3, :cond_0

    .line 475
    iget-object v2, p0, Lcom/android/exsettings/nx/dslv/DragSortController$1;->this$0:Lcom/android/exsettings/nx/dslv/DragSortController;

    invoke-static {v2}, Lcom/android/exsettings/nx/dslv/DragSortController;->-get0(Lcom/android/exsettings/nx/dslv/DragSortController;)Lcom/android/exsettings/nx/dslv/DragSortListView;

    move-result-object v2

    invoke-virtual {v2, v5, p3}, Lcom/android/exsettings/nx/dslv/DragSortListView;->stopDragWithVelocity(ZF)Z

    .line 482
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/exsettings/nx/dslv/DragSortController$1;->this$0:Lcom/android/exsettings/nx/dslv/DragSortController;

    invoke-static {v2, v4}, Lcom/android/exsettings/nx/dslv/DragSortController;->-set0(Lcom/android/exsettings/nx/dslv/DragSortController;Z)Z

    .line 484
    .end local v0    # "minPos":I
    .end local v1    # "w":I
    :cond_1
    return v4

    .line 477
    .restart local v0    # "minPos":I
    .restart local v1    # "w":I
    :cond_2
    iget-object v2, p0, Lcom/android/exsettings/nx/dslv/DragSortController$1;->this$0:Lcom/android/exsettings/nx/dslv/DragSortController;

    invoke-static {v2}, Lcom/android/exsettings/nx/dslv/DragSortController;->-get1(Lcom/android/exsettings/nx/dslv/DragSortController;)F

    move-result v2

    neg-float v2, v2

    cmpg-float v2, p3, v2

    if-gez v2, :cond_0

    .line 478
    iget-object v2, p0, Lcom/android/exsettings/nx/dslv/DragSortController$1;->this$0:Lcom/android/exsettings/nx/dslv/DragSortController;

    invoke-static {v2}, Lcom/android/exsettings/nx/dslv/DragSortController;->-get3(Lcom/android/exsettings/nx/dslv/DragSortController;)I

    move-result v2

    if-ge v2, v0, :cond_0

    .line 479
    iget-object v2, p0, Lcom/android/exsettings/nx/dslv/DragSortController$1;->this$0:Lcom/android/exsettings/nx/dslv/DragSortController;

    invoke-static {v2}, Lcom/android/exsettings/nx/dslv/DragSortController;->-get0(Lcom/android/exsettings/nx/dslv/DragSortController;)Lcom/android/exsettings/nx/dslv/DragSortListView;

    move-result-object v2

    invoke-virtual {v2, v5, p3}, Lcom/android/exsettings/nx/dslv/DragSortListView;->stopDragWithVelocity(ZF)Z

    goto :goto_0
.end method
