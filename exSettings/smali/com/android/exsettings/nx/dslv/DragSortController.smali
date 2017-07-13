.class public Lcom/android/exsettings/nx/dslv/DragSortController;
.super Lcom/android/exsettings/nx/dslv/SimpleFloatViewManager;
.source "DragSortController.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exsettings/nx/dslv/DragSortController$1;
    }
.end annotation


# instance fields
.field private mCanDrag:Z

.field private mClickRemoveHitPos:I

.field private mClickRemoveId:I

.field private mCurrX:I

.field private mCurrY:I

.field private mDetector:Landroid/view/GestureDetector;

.field private mDragHandleId:I

.field private mDragInitMode:I

.field private mDragging:Z

.field private mDslv:Lcom/android/exsettings/nx/dslv/DragSortListView;

.field private mFlingHandleId:I

.field private mFlingHitPos:I

.field private mFlingRemoveDetector:Landroid/view/GestureDetector;

.field private mFlingRemoveListener:Landroid/view/GestureDetector$OnGestureListener;

.field private mFlingSpeed:F

.field private mHitPos:I

.field private mIsRemoving:Z

.field private mItemX:I

.field private mItemY:I

.field private mPositionX:I

.field private mRemoveEnabled:Z

.field private mRemoveMode:I

.field private mSortEnabled:Z

.field private mTempLoc:[I

.field private mTouchSlop:I


# direct methods
.method static synthetic -get0(Lcom/android/exsettings/nx/dslv/DragSortController;)Lcom/android/exsettings/nx/dslv/DragSortListView;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/nx/dslv/DragSortController;->mDslv:Lcom/android/exsettings/nx/dslv/DragSortListView;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/exsettings/nx/dslv/DragSortController;)F
    .locals 1

    iget v0, p0, Lcom/android/exsettings/nx/dslv/DragSortController;->mFlingSpeed:F

    return v0
.end method

.method static synthetic -get2(Lcom/android/exsettings/nx/dslv/DragSortController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/exsettings/nx/dslv/DragSortController;->mIsRemoving:Z

    return v0
.end method

.method static synthetic -get3(Lcom/android/exsettings/nx/dslv/DragSortController;)I
    .locals 1

    iget v0, p0, Lcom/android/exsettings/nx/dslv/DragSortController;->mPositionX:I

    return v0
.end method

.method static synthetic -get4(Lcom/android/exsettings/nx/dslv/DragSortController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/exsettings/nx/dslv/DragSortController;->mRemoveEnabled:Z

    return v0
.end method

.method static synthetic -set0(Lcom/android/exsettings/nx/dslv/DragSortController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/exsettings/nx/dslv/DragSortController;->mIsRemoving:Z

    return p1
.end method

.method public constructor <init>(Lcom/android/exsettings/nx/dslv/DragSortListView;IIIII)V
    .locals 4
    .param p1, "dslv"    # Lcom/android/exsettings/nx/dslv/DragSortListView;
    .param p2, "dragHandleId"    # I
    .param p3, "dragInitMode"    # I
    .param p4, "removeMode"    # I
    .param p5, "clickRemoveId"    # I
    .param p6, "flingHandleId"    # I

    .prologue
    const/4 v1, -0x1

    const/4 v3, 0x0

    .line 133
    invoke-direct {p0, p1}, Lcom/android/exsettings/nx/dslv/SimpleFloatViewManager;-><init>(Landroid/widget/ListView;)V

    .line 49
    iput v3, p0, Lcom/android/exsettings/nx/dslv/DragSortController;->mDragInitMode:I

    .line 51
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/exsettings/nx/dslv/DragSortController;->mSortEnabled:Z

    .line 64
    iput-boolean v3, p0, Lcom/android/exsettings/nx/dslv/DragSortController;->mRemoveEnabled:Z

    .line 65
    iput-boolean v3, p0, Lcom/android/exsettings/nx/dslv/DragSortController;->mIsRemoving:Z

    .line 75
    iput v1, p0, Lcom/android/exsettings/nx/dslv/DragSortController;->mHitPos:I

    .line 76
    iput v1, p0, Lcom/android/exsettings/nx/dslv/DragSortController;->mFlingHitPos:I

    .line 78
    iput v1, p0, Lcom/android/exsettings/nx/dslv/DragSortController;->mClickRemoveHitPos:I

    .line 80
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/exsettings/nx/dslv/DragSortController;->mTempLoc:[I

    .line 88
    iput-boolean v3, p0, Lcom/android/exsettings/nx/dslv/DragSortController;->mDragging:Z

    .line 90
    const/high16 v0, 0x43fa0000    # 500.0f

    iput v0, p0, Lcom/android/exsettings/nx/dslv/DragSortController;->mFlingSpeed:F

    .line 465
    new-instance v0, Lcom/android/exsettings/nx/dslv/DragSortController$1;

    invoke-direct {v0, p0}, Lcom/android/exsettings/nx/dslv/DragSortController$1;-><init>(Lcom/android/exsettings/nx/dslv/DragSortController;)V

    .line 464
    iput-object v0, p0, Lcom/android/exsettings/nx/dslv/DragSortController;->mFlingRemoveListener:Landroid/view/GestureDetector$OnGestureListener;

    .line 134
    iput-object p1, p0, Lcom/android/exsettings/nx/dslv/DragSortController;->mDslv:Lcom/android/exsettings/nx/dslv/DragSortListView;

    .line 135
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p1}, Lcom/android/exsettings/nx/dslv/DragSortListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/android/exsettings/nx/dslv/DragSortController;->mDetector:Landroid/view/GestureDetector;

    .line 136
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p1}, Lcom/android/exsettings/nx/dslv/DragSortListView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/exsettings/nx/dslv/DragSortController;->mFlingRemoveListener:Landroid/view/GestureDetector$OnGestureListener;

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/android/exsettings/nx/dslv/DragSortController;->mFlingRemoveDetector:Landroid/view/GestureDetector;

    .line 137
    iget-object v0, p0, Lcom/android/exsettings/nx/dslv/DragSortController;->mFlingRemoveDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, v3}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 138
    invoke-virtual {p1}, Lcom/android/exsettings/nx/dslv/DragSortListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/android/exsettings/nx/dslv/DragSortController;->mTouchSlop:I

    .line 139
    iput p2, p0, Lcom/android/exsettings/nx/dslv/DragSortController;->mDragHandleId:I

    .line 140
    iput p5, p0, Lcom/android/exsettings/nx/dslv/DragSortController;->mClickRemoveId:I

    .line 141
    iput p6, p0, Lcom/android/exsettings/nx/dslv/DragSortController;->mFlingHandleId:I

    .line 142
    invoke-virtual {p0, p4}, Lcom/android/exsettings/nx/dslv/DragSortController;->setRemoveMode(I)V

    .line 143
    invoke-virtual {p0, p3}, Lcom/android/exsettings/nx/dslv/DragSortController;->setDragInitMode(I)V

    .line 132
    return-void
.end method


# virtual methods
.method public dragHandleHitPosition(Landroid/view/MotionEvent;)I
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 334
    iget v0, p0, Lcom/android/exsettings/nx/dslv/DragSortController;->mDragHandleId:I

    invoke-virtual {p0, p1, v0}, Lcom/android/exsettings/nx/dslv/DragSortController;->viewIdHitPosition(Landroid/view/MotionEvent;I)I

    move-result v0

    return v0
.end method

.method public flingHandleHitPosition(Landroid/view/MotionEvent;)I
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 338
    iget v0, p0, Lcom/android/exsettings/nx/dslv/DragSortController;->mFlingHandleId:I

    invoke-virtual {p0, p1, v0}, Lcom/android/exsettings/nx/dslv/DragSortController;->viewIdHitPosition(Landroid/view/MotionEvent;I)I

    move-result v0

    return v0
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 381
    iget-boolean v0, p0, Lcom/android/exsettings/nx/dslv/DragSortController;->mRemoveEnabled:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/exsettings/nx/dslv/DragSortController;->mRemoveMode:I

    if-nez v0, :cond_0

    .line 382
    iget v0, p0, Lcom/android/exsettings/nx/dslv/DragSortController;->mClickRemoveId:I

    invoke-virtual {p0, p1, v0}, Lcom/android/exsettings/nx/dslv/DragSortController;->viewIdHitPosition(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Lcom/android/exsettings/nx/dslv/DragSortController;->mClickRemoveHitPos:I

    .line 385
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/exsettings/nx/dslv/DragSortController;->startDragPosition(Landroid/view/MotionEvent;)I

    move-result v0

    iput v0, p0, Lcom/android/exsettings/nx/dslv/DragSortController;->mHitPos:I

    .line 386
    iget v0, p0, Lcom/android/exsettings/nx/dslv/DragSortController;->mHitPos:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/android/exsettings/nx/dslv/DragSortController;->mDragInitMode:I

    if-nez v0, :cond_1

    .line 387
    iget v0, p0, Lcom/android/exsettings/nx/dslv/DragSortController;->mHitPos:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    iget v2, p0, Lcom/android/exsettings/nx/dslv/DragSortController;->mItemX:I

    sub-int/2addr v1, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    iget v3, p0, Lcom/android/exsettings/nx/dslv/DragSortController;->mItemY:I

    sub-int/2addr v2, v3

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/exsettings/nx/dslv/DragSortController;->startDrag(III)Z

    .line 390
    :cond_1
    iput-boolean v4, p0, Lcom/android/exsettings/nx/dslv/DragSortController;->mIsRemoving:Z

    .line 391
    iput-boolean v5, p0, Lcom/android/exsettings/nx/dslv/DragSortController;->mCanDrag:Z

    .line 392
    iput v4, p0, Lcom/android/exsettings/nx/dslv/DragSortController;->mPositionX:I

    .line 393
    invoke-virtual {p0, p1}, Lcom/android/exsettings/nx/dslv/DragSortController;->startFlingPosition(Landroid/view/MotionEvent;)I

    move-result v0

    iput v0, p0, Lcom/android/exsettings/nx/dslv/DragSortController;->mFlingHitPos:I

    .line 395
    return v5
.end method

.method public onDragFloatView(Landroid/view/View;Landroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 1
    .param p1, "floatView"    # Landroid/view/View;
    .param p2, "position"    # Landroid/graphics/Point;
    .param p3, "touch"    # Landroid/graphics/Point;

    .prologue
    .line 297
    iget-boolean v0, p0, Lcom/android/exsettings/nx/dslv/DragSortController;->mRemoveEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/exsettings/nx/dslv/DragSortController;->mIsRemoving:Z

    if-eqz v0, :cond_0

    .line 298
    iget v0, p2, Landroid/graphics/Point;->x:I

    iput v0, p0, Lcom/android/exsettings/nx/dslv/DragSortController;->mPositionX:I

    .line 295
    :cond_0
    return-void
.end method

.method public final onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    .line 444
    const/4 v0, 0x0

    return v0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 4
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 434
    iget v0, p0, Lcom/android/exsettings/nx/dslv/DragSortController;->mHitPos:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/exsettings/nx/dslv/DragSortController;->mDragInitMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 435
    iget-object v0, p0, Lcom/android/exsettings/nx/dslv/DragSortController;->mDslv:Lcom/android/exsettings/nx/dslv/DragSortListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/exsettings/nx/dslv/DragSortListView;->performHapticFeedback(I)Z

    .line 436
    iget v0, p0, Lcom/android/exsettings/nx/dslv/DragSortController;->mHitPos:I

    iget v1, p0, Lcom/android/exsettings/nx/dslv/DragSortController;->mCurrX:I

    iget v2, p0, Lcom/android/exsettings/nx/dslv/DragSortController;->mItemX:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/android/exsettings/nx/dslv/DragSortController;->mCurrY:I

    iget v3, p0, Lcom/android/exsettings/nx/dslv/DragSortController;->mItemY:I

    sub-int/2addr v2, v3

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/exsettings/nx/dslv/DragSortController;->startDrag(III)Z

    .line 432
    :cond_0
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 10
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, -0x1

    .line 401
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v2, v6

    .line 402
    .local v2, "x1":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v4, v6

    .line 403
    .local v4, "y1":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v3, v6

    .line 404
    .local v3, "x2":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v5, v6

    .line 405
    .local v5, "y2":I
    iget v6, p0, Lcom/android/exsettings/nx/dslv/DragSortController;->mItemX:I

    sub-int v0, v3, v6

    .line 406
    .local v0, "deltaX":I
    iget v6, p0, Lcom/android/exsettings/nx/dslv/DragSortController;->mItemY:I

    sub-int v1, v5, v6

    .line 408
    .local v1, "deltaY":I
    iget-boolean v6, p0, Lcom/android/exsettings/nx/dslv/DragSortController;->mCanDrag:Z

    if-eqz v6, :cond_0

    iget-boolean v6, p0, Lcom/android/exsettings/nx/dslv/DragSortController;->mDragging:Z

    if-eqz v6, :cond_1

    .line 428
    :cond_0
    :goto_0
    return v8

    .line 408
    :cond_1
    iget v6, p0, Lcom/android/exsettings/nx/dslv/DragSortController;->mHitPos:I

    if-ne v6, v7, :cond_2

    iget v6, p0, Lcom/android/exsettings/nx/dslv/DragSortController;->mFlingHitPos:I

    if-eq v6, v7, :cond_0

    .line 409
    :cond_2
    iget v6, p0, Lcom/android/exsettings/nx/dslv/DragSortController;->mHitPos:I

    if-eq v6, v7, :cond_4

    .line 410
    iget v6, p0, Lcom/android/exsettings/nx/dslv/DragSortController;->mDragInitMode:I

    if-ne v6, v9, :cond_3

    sub-int v6, v5, v4

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    iget v7, p0, Lcom/android/exsettings/nx/dslv/DragSortController;->mTouchSlop:I

    if-le v6, v7, :cond_3

    iget-boolean v6, p0, Lcom/android/exsettings/nx/dslv/DragSortController;->mSortEnabled:Z

    if-eqz v6, :cond_3

    .line 411
    iget v6, p0, Lcom/android/exsettings/nx/dslv/DragSortController;->mHitPos:I

    invoke-virtual {p0, v6, v0, v1}, Lcom/android/exsettings/nx/dslv/DragSortController;->startDrag(III)Z

    goto :goto_0

    .line 412
    :cond_3
    iget v6, p0, Lcom/android/exsettings/nx/dslv/DragSortController;->mDragInitMode:I

    if-eqz v6, :cond_0

    .line 413
    sub-int v6, v3, v2

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    iget v7, p0, Lcom/android/exsettings/nx/dslv/DragSortController;->mTouchSlop:I

    if-le v6, v7, :cond_0

    iget-boolean v6, p0, Lcom/android/exsettings/nx/dslv/DragSortController;->mRemoveEnabled:Z

    .line 412
    if-eqz v6, :cond_0

    .line 414
    iput-boolean v9, p0, Lcom/android/exsettings/nx/dslv/DragSortController;->mIsRemoving:Z

    .line 415
    iget v6, p0, Lcom/android/exsettings/nx/dslv/DragSortController;->mFlingHitPos:I

    invoke-virtual {p0, v6, v0, v1}, Lcom/android/exsettings/nx/dslv/DragSortController;->startDrag(III)Z

    goto :goto_0

    .line 417
    :cond_4
    iget v6, p0, Lcom/android/exsettings/nx/dslv/DragSortController;->mFlingHitPos:I

    if-eq v6, v7, :cond_0

    .line 418
    sub-int v6, v3, v2

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    iget v7, p0, Lcom/android/exsettings/nx/dslv/DragSortController;->mTouchSlop:I

    if-le v6, v7, :cond_5

    iget-boolean v6, p0, Lcom/android/exsettings/nx/dslv/DragSortController;->mRemoveEnabled:Z

    if-eqz v6, :cond_5

    .line 419
    iput-boolean v9, p0, Lcom/android/exsettings/nx/dslv/DragSortController;->mIsRemoving:Z

    .line 420
    iget v6, p0, Lcom/android/exsettings/nx/dslv/DragSortController;->mFlingHitPos:I

    invoke-virtual {p0, v6, v0, v1}, Lcom/android/exsettings/nx/dslv/DragSortController;->startDrag(III)Z

    goto :goto_0

    .line 421
    :cond_5
    sub-int v6, v5, v4

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    iget v7, p0, Lcom/android/exsettings/nx/dslv/DragSortController;->mTouchSlop:I

    if-le v6, v7, :cond_0

    .line 422
    iput-boolean v8, p0, Lcom/android/exsettings/nx/dslv/DragSortController;->mCanDrag:Z

    goto :goto_0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 460
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 450
    iget-boolean v0, p0, Lcom/android/exsettings/nx/dslv/DragSortController;->mRemoveEnabled:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/exsettings/nx/dslv/DragSortController;->mRemoveMode:I

    if-nez v0, :cond_0

    .line 451
    iget v0, p0, Lcom/android/exsettings/nx/dslv/DragSortController;->mClickRemoveHitPos:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 452
    iget-object v0, p0, Lcom/android/exsettings/nx/dslv/DragSortController;->mDslv:Lcom/android/exsettings/nx/dslv/DragSortListView;

    iget v1, p0, Lcom/android/exsettings/nx/dslv/DragSortController;->mClickRemoveHitPos:I

    iget-object v2, p0, Lcom/android/exsettings/nx/dslv/DragSortController;->mDslv:Lcom/android/exsettings/nx/dslv/DragSortListView;

    invoke-virtual {v2}, Lcom/android/exsettings/nx/dslv/DragSortListView;->getHeaderViewsCount()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/android/exsettings/nx/dslv/DragSortListView;->removeItem(I)V

    .line 455
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "v"    # Landroid/view/View;
    .param p2, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 259
    iget-object v3, p0, Lcom/android/exsettings/nx/dslv/DragSortController;->mDslv:Lcom/android/exsettings/nx/dslv/DragSortListView;

    invoke-virtual {v3}, Lcom/android/exsettings/nx/dslv/DragSortListView;->isDragEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/exsettings/nx/dslv/DragSortController;->mDslv:Lcom/android/exsettings/nx/dslv/DragSortListView;

    invoke-virtual {v3}, Lcom/android/exsettings/nx/dslv/DragSortListView;->listViewIntercepted()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 260
    :cond_0
    return v5

    .line 263
    :cond_1
    iget-object v3, p0, Lcom/android/exsettings/nx/dslv/DragSortController;->mDetector:Landroid/view/GestureDetector;

    invoke-virtual {v3, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 264
    iget-boolean v3, p0, Lcom/android/exsettings/nx/dslv/DragSortController;->mRemoveEnabled:Z

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/android/exsettings/nx/dslv/DragSortController;->mDragging:Z

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/android/exsettings/nx/dslv/DragSortController;->mRemoveMode:I

    if-ne v3, v6, :cond_2

    .line 265
    iget-object v3, p0, Lcom/android/exsettings/nx/dslv/DragSortController;->mFlingRemoveDetector:Landroid/view/GestureDetector;

    invoke-virtual {v3, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 268
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    and-int/lit16 v0, v3, 0xff

    .line 269
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 288
    :goto_0
    :pswitch_0
    return v5

    .line 271
    :pswitch_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/android/exsettings/nx/dslv/DragSortController;->mCurrX:I

    .line 272
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/android/exsettings/nx/dslv/DragSortController;->mCurrY:I

    goto :goto_0

    .line 275
    :pswitch_2
    iget-boolean v3, p0, Lcom/android/exsettings/nx/dslv/DragSortController;->mRemoveEnabled:Z

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Lcom/android/exsettings/nx/dslv/DragSortController;->mIsRemoving:Z

    if-eqz v3, :cond_3

    .line 276
    iget v3, p0, Lcom/android/exsettings/nx/dslv/DragSortController;->mPositionX:I

    if-ltz v3, :cond_4

    iget v2, p0, Lcom/android/exsettings/nx/dslv/DragSortController;->mPositionX:I

    .line 277
    .local v2, "x":I
    :goto_1
    iget-object v3, p0, Lcom/android/exsettings/nx/dslv/DragSortController;->mDslv:Lcom/android/exsettings/nx/dslv/DragSortListView;

    invoke-virtual {v3}, Lcom/android/exsettings/nx/dslv/DragSortListView;->getWidth()I

    move-result v3

    div-int/lit8 v1, v3, 0x2

    .line 278
    .local v1, "removePoint":I
    if-le v2, v1, :cond_3

    .line 279
    iget-object v3, p0, Lcom/android/exsettings/nx/dslv/DragSortController;->mDslv:Lcom/android/exsettings/nx/dslv/DragSortListView;

    const/4 v4, 0x0

    invoke-virtual {v3, v6, v4}, Lcom/android/exsettings/nx/dslv/DragSortListView;->stopDragWithVelocity(ZF)Z

    .line 283
    .end local v1    # "removePoint":I
    .end local v2    # "x":I
    :cond_3
    :pswitch_3
    iput-boolean v5, p0, Lcom/android/exsettings/nx/dslv/DragSortController;->mIsRemoving:Z

    .line 284
    iput-boolean v5, p0, Lcom/android/exsettings/nx/dslv/DragSortController;->mDragging:Z

    goto :goto_0

    .line 276
    :cond_4
    iget v3, p0, Lcom/android/exsettings/nx/dslv/DragSortController;->mPositionX:I

    neg-int v2, v3

    .restart local v2    # "x":I
    goto :goto_1

    .line 269
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public setDragInitMode(I)V
    .locals 0
    .param p1, "mode"    # I

    .prologue
    .line 158
    iput p1, p0, Lcom/android/exsettings/nx/dslv/DragSortController;->mDragInitMode:I

    .line 157
    return-void
.end method

.method public setRemoveEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 193
    iput-boolean p1, p0, Lcom/android/exsettings/nx/dslv/DragSortController;->mRemoveEnabled:Z

    .line 192
    return-void
.end method

.method public setRemoveMode(I)V
    .locals 0
    .param p1, "mode"    # I

    .prologue
    .line 182
    iput p1, p0, Lcom/android/exsettings/nx/dslv/DragSortController;->mRemoveMode:I

    .line 181
    return-void
.end method

.method public setSortEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 169
    iput-boolean p1, p0, Lcom/android/exsettings/nx/dslv/DragSortController;->mSortEnabled:Z

    .line 168
    return-void
.end method

.method public startDrag(III)Z
    .locals 3
    .param p1, "position"    # I
    .param p2, "deltaX"    # I
    .param p3, "deltaY"    # I

    .prologue
    .line 243
    const/4 v0, 0x0

    .line 244
    .local v0, "dragFlags":I
    iget-boolean v1, p0, Lcom/android/exsettings/nx/dslv/DragSortController;->mSortEnabled:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/exsettings/nx/dslv/DragSortController;->mIsRemoving:Z

    if-eqz v1, :cond_2

    .line 247
    :cond_0
    :goto_0
    iget-boolean v1, p0, Lcom/android/exsettings/nx/dslv/DragSortController;->mRemoveEnabled:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/exsettings/nx/dslv/DragSortController;->mIsRemoving:Z

    if-eqz v1, :cond_1

    .line 248
    or-int/lit8 v0, v0, 0x1

    .line 249
    or-int/lit8 v0, v0, 0x2

    .line 252
    :cond_1
    iget-object v1, p0, Lcom/android/exsettings/nx/dslv/DragSortController;->mDslv:Lcom/android/exsettings/nx/dslv/DragSortListView;

    iget-object v2, p0, Lcom/android/exsettings/nx/dslv/DragSortController;->mDslv:Lcom/android/exsettings/nx/dslv/DragSortListView;

    invoke-virtual {v2}, Lcom/android/exsettings/nx/dslv/DragSortListView;->getHeaderViewsCount()I

    move-result v2

    sub-int v2, p1, v2

    invoke-virtual {v1, v2, v0, p2, p3}, Lcom/android/exsettings/nx/dslv/DragSortListView;->startDrag(IIII)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/exsettings/nx/dslv/DragSortController;->mDragging:Z

    .line 254
    iget-boolean v1, p0, Lcom/android/exsettings/nx/dslv/DragSortController;->mDragging:Z

    return v1

    .line 245
    :cond_2
    const/16 v0, 0xc

    goto :goto_0
.end method

.method public startDragPosition(Landroid/view/MotionEvent;)I
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 316
    invoke-virtual {p0, p1}, Lcom/android/exsettings/nx/dslv/DragSortController;->dragHandleHitPosition(Landroid/view/MotionEvent;)I

    move-result v0

    return v0
.end method

.method public startFlingPosition(Landroid/view/MotionEvent;)I
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 320
    iget v0, p0, Lcom/android/exsettings/nx/dslv/DragSortController;->mRemoveMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/exsettings/nx/dslv/DragSortController;->flingHandleHitPosition(Landroid/view/MotionEvent;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public viewIdHitPosition(Landroid/view/MotionEvent;I)I
    .locals 12
    .param p1, "ev"    # Landroid/view/MotionEvent;
    .param p2, "id"    # I

    .prologue
    .line 342
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    float-to-int v8, v10

    .line 343
    .local v8, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    float-to-int v9, v10

    .line 345
    .local v9, "y":I
    iget-object v10, p0, Lcom/android/exsettings/nx/dslv/DragSortController;->mDslv:Lcom/android/exsettings/nx/dslv/DragSortListView;

    invoke-virtual {v10, v8, v9}, Lcom/android/exsettings/nx/dslv/DragSortListView;->pointToPosition(II)I

    move-result v7

    .line 347
    .local v7, "touchPos":I
    iget-object v10, p0, Lcom/android/exsettings/nx/dslv/DragSortController;->mDslv:Lcom/android/exsettings/nx/dslv/DragSortListView;

    invoke-virtual {v10}, Lcom/android/exsettings/nx/dslv/DragSortListView;->getHeaderViewsCount()I

    move-result v4

    .line 348
    .local v4, "numHeaders":I
    iget-object v10, p0, Lcom/android/exsettings/nx/dslv/DragSortController;->mDslv:Lcom/android/exsettings/nx/dslv/DragSortListView;

    invoke-virtual {v10}, Lcom/android/exsettings/nx/dslv/DragSortListView;->getFooterViewsCount()I

    move-result v3

    .line 349
    .local v3, "numFooters":I
    iget-object v10, p0, Lcom/android/exsettings/nx/dslv/DragSortController;->mDslv:Lcom/android/exsettings/nx/dslv/DragSortListView;

    invoke-virtual {v10}, Lcom/android/exsettings/nx/dslv/DragSortListView;->getCount()I

    move-result v0

    .line 354
    .local v0, "count":I
    const/4 v10, -0x1

    if-eq v7, v10, :cond_1

    if-lt v7, v4, :cond_1

    .line 355
    sub-int v10, v0, v3

    if-ge v7, v10, :cond_1

    .line 356
    iget-object v10, p0, Lcom/android/exsettings/nx/dslv/DragSortController;->mDslv:Lcom/android/exsettings/nx/dslv/DragSortListView;

    iget-object v11, p0, Lcom/android/exsettings/nx/dslv/DragSortController;->mDslv:Lcom/android/exsettings/nx/dslv/DragSortListView;

    invoke-virtual {v11}, Lcom/android/exsettings/nx/dslv/DragSortListView;->getFirstVisiblePosition()I

    move-result v11

    sub-int v11, v7, v11

    invoke-virtual {v10, v11}, Lcom/android/exsettings/nx/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 357
    .local v2, "item":Landroid/view/View;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v10

    float-to-int v5, v10

    .line 358
    .local v5, "rawX":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v10

    float-to-int v6, v10

    .line 360
    .local v6, "rawY":I
    if-nez p2, :cond_0

    move-object v1, v2

    .line 361
    .local v1, "dragBox":Landroid/view/View;
    :goto_0
    if-eqz v1, :cond_1

    .line 362
    iget-object v10, p0, Lcom/android/exsettings/nx/dslv/DragSortController;->mTempLoc:[I

    invoke-virtual {v1, v10}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 364
    iget-object v10, p0, Lcom/android/exsettings/nx/dslv/DragSortController;->mTempLoc:[I

    const/4 v11, 0x0

    aget v10, v10, v11

    if-le v5, v10, :cond_1

    iget-object v10, p0, Lcom/android/exsettings/nx/dslv/DragSortController;->mTempLoc:[I

    const/4 v11, 0x1

    aget v10, v10, v11

    if-le v6, v10, :cond_1

    .line 365
    iget-object v10, p0, Lcom/android/exsettings/nx/dslv/DragSortController;->mTempLoc:[I

    const/4 v11, 0x0

    aget v10, v10, v11

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v11

    add-int/2addr v10, v11

    if-ge v5, v10, :cond_1

    .line 366
    iget-object v10, p0, Lcom/android/exsettings/nx/dslv/DragSortController;->mTempLoc:[I

    const/4 v11, 0x1

    aget v10, v10, v11

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v11

    add-int/2addr v10, v11

    if-ge v6, v10, :cond_1

    .line 368
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v10

    iput v10, p0, Lcom/android/exsettings/nx/dslv/DragSortController;->mItemX:I

    .line 369
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v10

    iput v10, p0, Lcom/android/exsettings/nx/dslv/DragSortController;->mItemY:I

    .line 371
    return v7

    .line 360
    .end local v1    # "dragBox":Landroid/view/View;
    :cond_0
    invoke-virtual {v2, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .restart local v1    # "dragBox":Landroid/view/View;
    goto :goto_0

    .line 376
    .end local v1    # "dragBox":Landroid/view/View;
    .end local v2    # "item":Landroid/view/View;
    .end local v5    # "rawX":I
    .end local v6    # "rawY":I
    :cond_1
    const/4 v10, -0x1

    return v10
.end method
