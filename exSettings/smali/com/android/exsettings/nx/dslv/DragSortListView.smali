.class public Lcom/android/exsettings/nx/dslv/DragSortListView;
.super Landroid/widget/ListView;
.source "DragSortListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exsettings/nx/dslv/DragSortListView$AdapterWrapper;,
        Lcom/android/exsettings/nx/dslv/DragSortListView$HeightCache;,
        Lcom/android/exsettings/nx/dslv/DragSortListView$SmoothAnimator;,
        Lcom/android/exsettings/nx/dslv/DragSortListView$LiftAnimator;,
        Lcom/android/exsettings/nx/dslv/DragSortListView$DropAnimator;,
        Lcom/android/exsettings/nx/dslv/DragSortListView$RemoveAnimator;,
        Lcom/android/exsettings/nx/dslv/DragSortListView$FloatViewManager;,
        Lcom/android/exsettings/nx/dslv/DragSortListView$DragListener;,
        Lcom/android/exsettings/nx/dslv/DragSortListView$DropListener;,
        Lcom/android/exsettings/nx/dslv/DragSortListView$RemoveListener;,
        Lcom/android/exsettings/nx/dslv/DragSortListView$DragSortListener;,
        Lcom/android/exsettings/nx/dslv/DragSortListView$DragScrollProfile;,
        Lcom/android/exsettings/nx/dslv/DragSortListView$DragScroller;,
        Lcom/android/exsettings/nx/dslv/DragSortListView$DragSortTracker;,
        Lcom/android/exsettings/nx/dslv/DragSortListView$1;
    }
.end annotation


# instance fields
.field private mAdapterWrapper:Lcom/android/exsettings/nx/dslv/DragSortListView$AdapterWrapper;

.field private mAnimate:Z

.field private mBlockLayoutRequests:Z

.field private mCancelEvent:Landroid/view/MotionEvent;

.field private mCancelMethod:I

.field private mChildHeightCache:Lcom/android/exsettings/nx/dslv/DragSortListView$HeightCache;

.field private mCurrFloatAlpha:F

.field private mDownScrollStartY:I

.field private mDownScrollStartYF:F

.field private mDragDeltaX:I

.field private mDragDeltaY:I

.field private mDragDownScrollHeight:F

.field private mDragDownScrollStartFrac:F

.field private mDragEnabled:Z

.field private mDragFlags:I

.field private mDragListener:Lcom/android/exsettings/nx/dslv/DragSortListView$DragListener;

.field private mDragScroller:Lcom/android/exsettings/nx/dslv/DragSortListView$DragScroller;

.field private mDragSortTracker:Lcom/android/exsettings/nx/dslv/DragSortListView$DragSortTracker;

.field private mDragStartY:I

.field private mDragState:I

.field private mDragUpScrollHeight:F

.field private mDragUpScrollStartFrac:F

.field private mDropAnimator:Lcom/android/exsettings/nx/dslv/DragSortListView$DropAnimator;

.field private mDropListener:Lcom/android/exsettings/nx/dslv/DragSortListView$DropListener;

.field private mFirstExpPos:I

.field private mFloatAlpha:F

.field private mFloatLoc:Landroid/graphics/Point;

.field private mFloatPos:I

.field private mFloatView:Landroid/view/View;

.field private mFloatViewHeight:I

.field private mFloatViewHeightHalf:I

.field private mFloatViewInvalidated:Z

.field private mFloatViewManager:Lcom/android/exsettings/nx/dslv/DragSortListView$FloatViewManager;

.field private mFloatViewMid:I

.field private mFloatViewOnMeasured:Z

.field private mIgnoreTouchEvent:Z

.field private mInTouchEvent:Z

.field private mItemHeightCollapsed:I

.field private mLastCallWasIntercept:Z

.field private mLastX:I

.field private mLastY:I

.field private mLiftAnimator:Lcom/android/exsettings/nx/dslv/DragSortListView$LiftAnimator;

.field private mListViewIntercepted:Z

.field private mMaxScrollSpeed:F

.field private mObserver:Landroid/database/DataSetObserver;

.field private mOffsetX:I

.field private mOffsetY:I

.field private mRemoveAnimator:Lcom/android/exsettings/nx/dslv/DragSortListView$RemoveAnimator;

.field private mRemoveListener:Lcom/android/exsettings/nx/dslv/DragSortListView$RemoveListener;

.field private mRemoveVelocityX:F

.field private mSampleViewTypes:[Landroid/view/View;

.field private mScrollProfile:Lcom/android/exsettings/nx/dslv/DragSortListView$DragScrollProfile;

.field private mSecondExpPos:I

.field private mSlideFrac:F

.field private mSlideRegionFrac:F

.field private mSrcPos:I

.field private mTouchLoc:Landroid/graphics/Point;

.field private mTrackDragSort:Z

.field private mUpScrollStartY:I

.field private mUpScrollStartYF:F

.field private mUseRemoveVelocity:Z

.field private mWidthMeasureSpec:I

.field private mX:I

.field private mY:I


# direct methods
.method static synthetic -get0(Lcom/android/exsettings/nx/dslv/DragSortListView;)F
    .locals 1

    iget v0, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mDownScrollStartYF:F

    return v0
.end method

.method static synthetic -get1(Lcom/android/exsettings/nx/dslv/DragSortListView;)I
    .locals 1

    iget v0, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mDragDeltaY:I

    return v0
.end method

.method static synthetic -get10(Lcom/android/exsettings/nx/dslv/DragSortListView;)I
    .locals 1

    iget v0, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mFloatViewMid:I

    return v0
.end method

.method static synthetic -get11(Lcom/android/exsettings/nx/dslv/DragSortListView;)I
    .locals 1

    iget v0, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mItemHeightCollapsed:I

    return v0
.end method

.method static synthetic -get12(Lcom/android/exsettings/nx/dslv/DragSortListView;)I
    .locals 1

    iget v0, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mLastY:I

    return v0
.end method

.method static synthetic -get13(Lcom/android/exsettings/nx/dslv/DragSortListView;)F
    .locals 1

    iget v0, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mMaxScrollSpeed:F

    return v0
.end method

.method static synthetic -get14(Lcom/android/exsettings/nx/dslv/DragSortListView;)F
    .locals 1

    iget v0, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mRemoveVelocityX:F

    return v0
.end method

.method static synthetic -get15(Lcom/android/exsettings/nx/dslv/DragSortListView;)Lcom/android/exsettings/nx/dslv/DragSortListView$DragScrollProfile;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mScrollProfile:Lcom/android/exsettings/nx/dslv/DragSortListView$DragScrollProfile;

    return-object v0
.end method

.method static synthetic -get16(Lcom/android/exsettings/nx/dslv/DragSortListView;)I
    .locals 1

    iget v0, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mSecondExpPos:I

    return v0
.end method

.method static synthetic -get17(Lcom/android/exsettings/nx/dslv/DragSortListView;)I
    .locals 1

    iget v0, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mSrcPos:I

    return v0
.end method

.method static synthetic -get18(Lcom/android/exsettings/nx/dslv/DragSortListView;)F
    .locals 1

    iget v0, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mUpScrollStartYF:F

    return v0
.end method

.method static synthetic -get19(Lcom/android/exsettings/nx/dslv/DragSortListView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mUseRemoveVelocity:Z

    return v0
.end method

.method static synthetic -get2(Lcom/android/exsettings/nx/dslv/DragSortListView;)F
    .locals 1

    iget v0, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mDragDownScrollHeight:F

    return v0
.end method

.method static synthetic -get20(Lcom/android/exsettings/nx/dslv/DragSortListView;)I
    .locals 1

    iget v0, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mY:I

    return v0
.end method

.method static synthetic -get3(Lcom/android/exsettings/nx/dslv/DragSortListView;)I
    .locals 1

    iget v0, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mDragState:I

    return v0
.end method

.method static synthetic -get4(Lcom/android/exsettings/nx/dslv/DragSortListView;)F
    .locals 1

    iget v0, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mDragUpScrollHeight:F

    return v0
.end method

.method static synthetic -get5(Lcom/android/exsettings/nx/dslv/DragSortListView;)I
    .locals 1

    iget v0, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mFirstExpPos:I

    return v0
.end method

.method static synthetic -get6(Lcom/android/exsettings/nx/dslv/DragSortListView;)Landroid/graphics/Point;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/exsettings/nx/dslv/DragSortListView;)I
    .locals 1

    iget v0, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mFloatPos:I

    return v0
.end method

.method static synthetic -get8(Lcom/android/exsettings/nx/dslv/DragSortListView;)I
    .locals 1

    iget v0, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mFloatViewHeight:I

    return v0
.end method

.method static synthetic -get9(Lcom/android/exsettings/nx/dslv/DragSortListView;)I
    .locals 1

    iget v0, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mFloatViewHeightHalf:I

    return v0
.end method

.method static synthetic -set0(Lcom/android/exsettings/nx/dslv/DragSortListView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mBlockLayoutRequests:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/exsettings/nx/dslv/DragSortListView;I)I
    .locals 0

    iput p1, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mDragDeltaY:I

    return p1
.end method

.method static synthetic -set2(Lcom/android/exsettings/nx/dslv/DragSortListView;I)I
    .locals 0

    iput p1, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mDragState:I

    return p1
.end method

.method static synthetic -set3(Lcom/android/exsettings/nx/dslv/DragSortListView;F)F
    .locals 0

    iput p1, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mRemoveVelocityX:F

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/exsettings/nx/dslv/DragSortListView;ILandroid/view/View;Z)I
    .locals 1
    .param p1, "position"    # I
    .param p2, "item"    # Landroid/view/View;
    .param p3, "invalidChildHeight"    # Z

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/exsettings/nx/dslv/DragSortListView;->getChildHeight(ILandroid/view/View;Z)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/exsettings/nx/dslv/DragSortListView;I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/exsettings/nx/dslv/DragSortListView;->getChildHeight(I)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/android/exsettings/nx/dslv/DragSortListView;I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/exsettings/nx/dslv/DragSortListView;->getItemHeight(I)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Lcom/android/exsettings/nx/dslv/DragSortListView;II)I
    .locals 1
    .param p1, "position"    # I
    .param p2, "top"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/exsettings/nx/dslv/DragSortListView;->getShuffleEdge(II)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap4(Lcom/android/exsettings/nx/dslv/DragSortListView;ILandroid/view/View;Z)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "v"    # Landroid/view/View;
    .param p3, "invalidChildHeight"    # Z

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/exsettings/nx/dslv/DragSortListView;->adjustItem(ILandroid/view/View;Z)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/exsettings/nx/dslv/DragSortListView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/exsettings/nx/dslv/DragSortListView;->destroyFloatView()V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/exsettings/nx/dslv/DragSortListView;Z)V
    .locals 0
    .param p1, "forceInvalidate"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/exsettings/nx/dslv/DragSortListView;->doDragFloatView(Z)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/exsettings/nx/dslv/DragSortListView;ILandroid/view/View;Z)V
    .locals 0
    .param p1, "movePos"    # I
    .param p2, "moveItem"    # Landroid/view/View;
    .param p3, "forceInvalidate"    # Z

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/exsettings/nx/dslv/DragSortListView;->doDragFloatView(ILandroid/view/View;Z)V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/exsettings/nx/dslv/DragSortListView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/exsettings/nx/dslv/DragSortListView;->doRemoveItem()V

    return-void
.end method

.method static synthetic -wrap9(Lcom/android/exsettings/nx/dslv/DragSortListView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/exsettings/nx/dslv/DragSortListView;->dropFloatView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 34
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 439
    invoke-direct/range {p0 .. p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 71
    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5}, Landroid/graphics/Point;-><init>()V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    .line 73
    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5}, Landroid/graphics/Point;-><init>()V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mTouchLoc:Landroid/graphics/Point;

    .line 83
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mFloatViewOnMeasured:Z

    .line 94
    const/high16 v5, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mFloatAlpha:F

    .line 95
    const/high16 v5, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mCurrFloatAlpha:F

    .line 120
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mAnimate:Z

    .line 176
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mDragEnabled:Z

    .line 187
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mDragState:I

    .line 194
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mItemHeightCollapsed:I

    .line 210
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mWidthMeasureSpec:I

    .line 216
    const/4 v5, 0x1

    new-array v5, v5, [Landroid/view/View;

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mSampleViewTypes:[Landroid/view/View;

    .line 228
    const v5, 0x3eaaaaab

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mDragUpScrollStartFrac:F

    .line 235
    const v5, 0x3eaaaaab

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mDragDownScrollStartFrac:F

    .line 259
    const/high16 v5, 0x3f000000    # 0.5f

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mMaxScrollSpeed:F

    .line 267
    new-instance v5, Lcom/android/exsettings/nx/dslv/DragSortListView$1;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/android/exsettings/nx/dslv/DragSortListView$1;-><init>(Lcom/android/exsettings/nx/dslv/DragSortListView;)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mScrollProfile:Lcom/android/exsettings/nx/dslv/DragSortListView$DragScrollProfile;

    .line 331
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mDragFlags:I

    .line 337
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mLastCallWasIntercept:Z

    .line 342
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mInTouchEvent:Z

    .line 347
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mFloatViewManager:Lcom/android/exsettings/nx/dslv/DragSortListView$FloatViewManager;

    .line 367
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mCancelMethod:I

    .line 374
    const/high16 v5, 0x3e800000    # 0.25f

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mSlideRegionFrac:F

    .line 383
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mSlideFrac:F

    .line 396
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mTrackDragSort:Z

    .line 406
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mBlockLayoutRequests:Z

    .line 413
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mIgnoreTouchEvent:Z

    .line 427
    new-instance v5, Lcom/android/exsettings/nx/dslv/DragSortListView$HeightCache;

    const/4 v12, 0x3

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v12}, Lcom/android/exsettings/nx/dslv/DragSortListView$HeightCache;-><init>(Lcom/android/exsettings/nx/dslv/DragSortListView;I)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mChildHeightCache:Lcom/android/exsettings/nx/dslv/DragSortListView$HeightCache;

    .line 436
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mRemoveVelocityX:F

    .line 1687
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mListViewIntercepted:Z

    .line 2170
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mFloatViewInvalidated:Z

    .line 441
    const/16 v29, 0x96

    .local v29, "removeAnimDuration":I
    const/16 v27, 0x96

    .line 445
    .local v27, "dropAnimDuration":I
    if-eqz p2, :cond_2

    .line 446
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/nx/dslv/DragSortListView;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 447
    sget-object v12, Lcom/android/exsettings/R$styleable;->DragSortListView:[I

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 446
    move-object/from16 v0, p2

    invoke-virtual {v5, v0, v12, v13, v14}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v11

    .line 450
    .local v11, "a":Landroid/content/res/TypedArray;
    const/4 v5, 0x0

    const/4 v12, 0x1

    .line 449
    invoke-virtual {v11, v5, v12}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    const/4 v12, 0x1

    invoke-static {v12, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mItemHeightCollapsed:I

    .line 453
    const/4 v5, 0x5

    const/4 v12, 0x0

    .line 452
    invoke-virtual {v11, v5, v12}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mTrackDragSort:Z

    .line 455
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mTrackDragSort:Z

    if-eqz v5, :cond_0

    .line 456
    new-instance v5, Lcom/android/exsettings/nx/dslv/DragSortListView$DragSortTracker;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/android/exsettings/nx/dslv/DragSortListView$DragSortTracker;-><init>(Lcom/android/exsettings/nx/dslv/DragSortListView;)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mDragSortTracker:Lcom/android/exsettings/nx/dslv/DragSortListView$DragSortTracker;

    .line 460
    :cond_0
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mFloatAlpha:F

    const/4 v12, 0x6

    invoke-virtual {v11, v12, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mFloatAlpha:F

    .line 461
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mFloatAlpha:F

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mCurrFloatAlpha:F

    .line 463
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mDragEnabled:Z

    const/16 v12, 0xa

    invoke-virtual {v11, v12, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mDragEnabled:Z

    .line 467
    const/4 v5, 0x7

    .line 468
    const/high16 v12, 0x3f400000    # 0.75f

    .line 466
    invoke-virtual {v11, v5, v12}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    const/high16 v12, 0x3f800000    # 1.0f

    sub-float v5, v12, v5

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-static {v12, v5}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .line 465
    const/4 v12, 0x0

    invoke-static {v12, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mSlideRegionFrac:F

    .line 470
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mSlideRegionFrac:F

    const/4 v12, 0x0

    cmpl-float v5, v5, v12

    if-lez v5, :cond_5

    const/4 v5, 0x1

    :goto_0
    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mAnimate:Z

    .line 474
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mDragUpScrollStartFrac:F

    .line 473
    const/4 v12, 0x1

    .line 472
    invoke-virtual {v11, v12, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v28

    .line 476
    .local v28, "frac":F
    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/exsettings/nx/dslv/DragSortListView;->setDragScrollStart(F)V

    .line 480
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mMaxScrollSpeed:F

    .line 479
    const/4 v12, 0x2

    .line 478
    invoke-virtual {v11, v12, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mMaxScrollSpeed:F

    .line 483
    const/16 v5, 0x8

    .line 482
    move/from16 v0, v29

    invoke-virtual {v11, v5, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v29

    .line 487
    const/16 v5, 0x9

    .line 486
    move/from16 v0, v27

    invoke-virtual {v11, v5, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v27

    .line 491
    const/16 v5, 0x11

    .line 492
    const/4 v12, 0x1

    .line 490
    invoke-virtual {v11, v5, v12}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v33

    .line 494
    .local v33, "useDefault":Z
    if-eqz v33, :cond_1

    .line 496
    const/16 v5, 0xc

    .line 497
    const/4 v12, 0x0

    .line 495
    invoke-virtual {v11, v5, v12}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v30

    .line 499
    .local v30, "removeEnabled":Z
    const/4 v5, 0x4

    .line 500
    const/4 v12, 0x1

    .line 498
    invoke-virtual {v11, v5, v12}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    .line 502
    .local v8, "removeMode":I
    const/16 v5, 0xb

    .line 503
    const/4 v12, 0x1

    .line 501
    invoke-virtual {v11, v5, v12}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v32

    .line 505
    .local v32, "sortEnabled":Z
    const/16 v5, 0xd

    .line 506
    const/4 v12, 0x0

    .line 504
    invoke-virtual {v11, v5, v12}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    .line 508
    .local v7, "dragInitMode":I
    const/16 v5, 0xe

    .line 509
    const/4 v12, 0x0

    .line 507
    invoke-virtual {v11, v5, v12}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    .line 511
    .local v6, "dragHandleId":I
    const/16 v5, 0xf

    .line 512
    const/4 v12, 0x0

    .line 510
    invoke-virtual {v11, v5, v12}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v10

    .line 514
    .local v10, "flingHandleId":I
    const/16 v5, 0x10

    .line 515
    const/4 v12, 0x0

    .line 513
    invoke-virtual {v11, v5, v12}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    .line 517
    .local v9, "clickRemoveId":I
    const/4 v5, 0x3

    .line 518
    const/high16 v12, -0x1000000

    .line 516
    invoke-virtual {v11, v5, v12}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v26

    .line 520
    .local v26, "bgColor":I
    new-instance v4, Lcom/android/exsettings/nx/dslv/DragSortController;

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v10}, Lcom/android/exsettings/nx/dslv/DragSortController;-><init>(Lcom/android/exsettings/nx/dslv/DragSortListView;IIIII)V

    .line 523
    .local v4, "controller":Lcom/android/exsettings/nx/dslv/DragSortController;
    move/from16 v0, v30

    invoke-virtual {v4, v0}, Lcom/android/exsettings/nx/dslv/DragSortController;->setRemoveEnabled(Z)V

    .line 524
    move/from16 v0, v32

    invoke-virtual {v4, v0}, Lcom/android/exsettings/nx/dslv/DragSortController;->setSortEnabled(Z)V

    .line 525
    move/from16 v0, v26

    invoke-virtual {v4, v0}, Lcom/android/exsettings/nx/dslv/DragSortController;->setBackgroundColor(I)V

    .line 527
    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mFloatViewManager:Lcom/android/exsettings/nx/dslv/DragSortListView$FloatViewManager;

    .line 528
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/exsettings/nx/dslv/DragSortListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 531
    .end local v4    # "controller":Lcom/android/exsettings/nx/dslv/DragSortController;
    .end local v6    # "dragHandleId":I
    .end local v7    # "dragInitMode":I
    .end local v8    # "removeMode":I
    .end local v9    # "clickRemoveId":I
    .end local v10    # "flingHandleId":I
    .end local v26    # "bgColor":I
    .end local v30    # "removeEnabled":Z
    .end local v32    # "sortEnabled":Z
    :cond_1
    invoke-virtual {v11}, Landroid/content/res/TypedArray;->recycle()V

    .line 534
    .end local v11    # "a":Landroid/content/res/TypedArray;
    .end local v28    # "frac":F
    .end local v33    # "useDefault":Z
    :cond_2
    new-instance v5, Lcom/android/exsettings/nx/dslv/DragSortListView$DragScroller;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/android/exsettings/nx/dslv/DragSortListView$DragScroller;-><init>(Lcom/android/exsettings/nx/dslv/DragSortListView;)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mDragScroller:Lcom/android/exsettings/nx/dslv/DragSortListView$DragScroller;

    .line 536
    const/high16 v31, 0x3f000000    # 0.5f

    .line 537
    .local v31, "smoothness":F
    if-lez v29, :cond_3

    .line 538
    new-instance v5, Lcom/android/exsettings/nx/dslv/DragSortListView$RemoveAnimator;

    move-object/from16 v0, p0

    move/from16 v1, v31

    move/from16 v2, v29

    invoke-direct {v5, v0, v1, v2}, Lcom/android/exsettings/nx/dslv/DragSortListView$RemoveAnimator;-><init>(Lcom/android/exsettings/nx/dslv/DragSortListView;FI)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mRemoveAnimator:Lcom/android/exsettings/nx/dslv/DragSortListView$RemoveAnimator;

    .line 541
    :cond_3
    if-lez v27, :cond_4

    .line 542
    new-instance v5, Lcom/android/exsettings/nx/dslv/DragSortListView$DropAnimator;

    move-object/from16 v0, p0

    move/from16 v1, v31

    move/from16 v2, v27

    invoke-direct {v5, v0, v1, v2}, Lcom/android/exsettings/nx/dslv/DragSortListView$DropAnimator;-><init>(Lcom/android/exsettings/nx/dslv/DragSortListView;FI)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mDropAnimator:Lcom/android/exsettings/nx/dslv/DragSortListView$DropAnimator;

    .line 545
    :cond_4
    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    const/16 v16, 0x3

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    .line 546
    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    .line 545
    invoke-static/range {v12 .. v25}, Landroid/view/MotionEvent;->obtain(JJIFFFFIFFII)Landroid/view/MotionEvent;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mCancelEvent:Landroid/view/MotionEvent;

    .line 549
    new-instance v5, Lcom/android/exsettings/nx/dslv/DragSortListView$2;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/android/exsettings/nx/dslv/DragSortListView$2;-><init>(Lcom/android/exsettings/nx/dslv/DragSortListView;)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mObserver:Landroid/database/DataSetObserver;

    .line 438
    return-void

    .line 470
    .end local v31    # "smoothness":F
    .restart local v11    # "a":Landroid/content/res/TypedArray;
    :cond_5
    const/4 v5, 0x0

    goto/16 :goto_0
.end method

.method private adjustAllItems()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 1850
    invoke-virtual {p0}, Lcom/android/exsettings/nx/dslv/DragSortListView;->getFirstVisiblePosition()I

    move-result v2

    .line 1851
    .local v2, "first":I
    invoke-virtual {p0}, Lcom/android/exsettings/nx/dslv/DragSortListView;->getLastVisiblePosition()I

    move-result v4

    .line 1853
    .local v4, "last":I
    invoke-virtual {p0}, Lcom/android/exsettings/nx/dslv/DragSortListView;->getHeaderViewsCount()I

    move-result v6

    sub-int/2addr v6, v2

    invoke-static {v9, v6}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1854
    .local v0, "begin":I
    sub-int v6, v4, v2

    invoke-virtual {p0}, Lcom/android/exsettings/nx/dslv/DragSortListView;->getCount()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {p0}, Lcom/android/exsettings/nx/dslv/DragSortListView;->getFooterViewsCount()I

    move-result v8

    sub-int/2addr v7, v8

    sub-int/2addr v7, v2

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1856
    .local v1, "end":I
    move v3, v0

    .local v3, "i":I
    :goto_0
    if-gt v3, v1, :cond_1

    .line 1857
    invoke-virtual {p0, v3}, Lcom/android/exsettings/nx/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1858
    .local v5, "v":Landroid/view/View;
    if-eqz v5, :cond_0

    .line 1859
    add-int v6, v2, v3

    invoke-direct {p0, v6, v5, v9}, Lcom/android/exsettings/nx/dslv/DragSortListView;->adjustItem(ILandroid/view/View;Z)V

    .line 1856
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1849
    .end local v5    # "v":Landroid/view/View;
    :cond_1
    return-void
.end method

.method private adjustItem(ILandroid/view/View;Z)V
    .locals 6
    .param p1, "position"    # I
    .param p2, "v"    # Landroid/view/View;
    .param p3, "invalidChildHeight"    # Z

    .prologue
    .line 1879
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 1881
    .local v1, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget v4, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mSrcPos:I

    if-eq p1, v4, :cond_5

    iget v4, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mFirstExpPos:I

    if-eq p1, v4, :cond_5

    iget v4, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mSecondExpPos:I

    if-eq p1, v4, :cond_5

    .line 1882
    const/4 v0, -0x2

    .line 1887
    .local v0, "height":I
    :goto_0
    iget v4, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v0, v4, :cond_0

    .line 1888
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1889
    invoke-virtual {p2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1893
    :cond_0
    iget v4, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mFirstExpPos:I

    if-eq p1, v4, :cond_1

    iget v4, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mSecondExpPos:I

    if-ne p1, v4, :cond_2

    .line 1894
    :cond_1
    iget v4, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mSrcPos:I

    if-ge p1, v4, :cond_6

    move-object v4, p2

    .line 1895
    check-cast v4, Lcom/android/exsettings/nx/dslv/DragSortItemView;

    const/16 v5, 0x50

    invoke-virtual {v4, v5}, Lcom/android/exsettings/nx/dslv/DragSortItemView;->setGravity(I)V

    .line 1903
    :cond_2
    :goto_1
    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result v2

    .line 1904
    .local v2, "oldVis":I
    const/4 v3, 0x0

    .line 1906
    .local v3, "vis":I
    iget v4, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mSrcPos:I

    if-ne p1, v4, :cond_3

    iget-object v4, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    if-eqz v4, :cond_3

    .line 1907
    const/4 v3, 0x4

    .line 1910
    :cond_3
    if-eq v3, v2, :cond_4

    .line 1911
    invoke-virtual {p2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1876
    :cond_4
    return-void

    .line 1884
    .end local v0    # "height":I
    .end local v2    # "oldVis":I
    .end local v3    # "vis":I
    :cond_5
    invoke-direct {p0, p1, p2, p3}, Lcom/android/exsettings/nx/dslv/DragSortListView;->calcItemHeight(ILandroid/view/View;Z)I

    move-result v0

    .restart local v0    # "height":I
    goto :goto_0

    .line 1896
    :cond_6
    iget v4, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mSrcPos:I

    if-le p1, v4, :cond_2

    move-object v4, p2

    .line 1897
    check-cast v4, Lcom/android/exsettings/nx/dslv/DragSortItemView;

    const/16 v5, 0x30

    invoke-virtual {v4, v5}, Lcom/android/exsettings/nx/dslv/DragSortItemView;->setGravity(I)V

    goto :goto_1
.end method

.method private adjustOnReorder()V
    .locals 5

    .prologue
    .line 1542
    invoke-virtual {p0}, Lcom/android/exsettings/nx/dslv/DragSortListView;->getFirstVisiblePosition()I

    move-result v0

    .line 1544
    .local v0, "firstPos":I
    iget v3, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mSrcPos:I

    if-ge v3, v0, :cond_1

    .line 1547
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/exsettings/nx/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1548
    .local v2, "v":Landroid/view/View;
    const/4 v1, 0x0

    .line 1549
    .local v1, "top":I
    if-eqz v2, :cond_0

    .line 1550
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v1

    .line 1553
    :cond_0
    add-int/lit8 v3, v0, -0x1

    invoke-virtual {p0}, Lcom/android/exsettings/nx/dslv/DragSortListView;->getPaddingTop()I

    move-result v4

    sub-int v4, v1, v4

    invoke-virtual {p0, v3, v4}, Lcom/android/exsettings/nx/dslv/DragSortListView;->setSelectionFromTop(II)V

    .line 1541
    .end local v1    # "top":I
    .end local v2    # "v":Landroid/view/View;
    :cond_1
    return-void
.end method

.method private adjustScroll(ILandroid/view/View;II)I
    .locals 9
    .param p1, "movePos"    # I
    .param p2, "moveItem"    # Landroid/view/View;
    .param p3, "oldFirstExpPos"    # I
    .param p4, "oldSecondExpPos"    # I

    .prologue
    .line 2047
    const/4 v0, 0x0

    .line 2049
    .local v0, "adjust":I
    invoke-direct {p0, p1}, Lcom/android/exsettings/nx/dslv/DragSortListView;->getChildHeight(I)I

    move-result v1

    .line 2051
    .local v1, "childHeight":I
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v6

    .line 2052
    .local v6, "moveHeightBefore":I
    invoke-direct {p0, p1, v1}, Lcom/android/exsettings/nx/dslv/DragSortListView;->calcItemHeight(II)I

    move-result v5

    .line 2054
    .local v5, "moveHeightAfter":I
    move v4, v6

    .line 2055
    .local v4, "moveBlankBefore":I
    move v3, v5

    .line 2056
    .local v3, "moveBlankAfter":I
    iget v7, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mSrcPos:I

    if-eq p1, v7, :cond_0

    .line 2057
    sub-int/2addr v4, v1

    .line 2058
    sub-int/2addr v3, v1

    .line 2061
    :cond_0
    iget v2, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mFloatViewHeight:I

    .line 2062
    .local v2, "maxBlank":I
    iget v7, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mSrcPos:I

    iget v8, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mFirstExpPos:I

    if-eq v7, v8, :cond_1

    iget v7, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mSrcPos:I

    iget v8, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mSecondExpPos:I

    if-eq v7, v8, :cond_1

    .line 2063
    iget v7, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mItemHeightCollapsed:I

    sub-int/2addr v2, v7

    .line 2066
    :cond_1
    if-gt p1, p3, :cond_3

    .line 2067
    iget v7, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mFirstExpPos:I

    if-le p1, v7, :cond_2

    .line 2068
    sub-int v7, v2, v3

    add-int/lit8 v0, v7, 0x0

    .line 2086
    :cond_2
    :goto_0
    return v0

    .line 2070
    :cond_3
    if-ne p1, p4, :cond_6

    .line 2071
    iget v7, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mFirstExpPos:I

    if-gt p1, v7, :cond_4

    .line 2072
    sub-int v7, v4, v2

    add-int/lit8 v0, v7, 0x0

    goto :goto_0

    .line 2073
    :cond_4
    iget v7, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mSecondExpPos:I

    if-ne p1, v7, :cond_5

    .line 2074
    sub-int v7, v6, v5

    add-int/lit8 v0, v7, 0x0

    goto :goto_0

    .line 2076
    :cond_5
    add-int/lit8 v0, v4, 0x0

    goto :goto_0

    .line 2079
    :cond_6
    iget v7, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mFirstExpPos:I

    if-gt p1, v7, :cond_7

    .line 2080
    rsub-int/lit8 v0, v2, 0x0

    goto :goto_0

    .line 2081
    :cond_7
    iget v7, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mSecondExpPos:I

    if-ne p1, v7, :cond_2

    .line 2082
    rsub-int/lit8 v0, v3, 0x0

    goto :goto_0
.end method

.method private calcItemHeight(II)I
    .locals 7
    .param p1, "position"    # I
    .param p2, "childHeight"    # I

    .prologue
    .line 2002
    invoke-virtual {p0}, Lcom/android/exsettings/nx/dslv/DragSortListView;->getDividerHeight()I

    move-result v0

    .line 2004
    .local v0, "divHeight":I
    iget-boolean v5, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mAnimate:Z

    if-eqz v5, :cond_0

    iget v5, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mFirstExpPos:I

    iget v6, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mSecondExpPos:I

    if-eq v5, v6, :cond_0

    const/4 v2, 0x1

    .line 2005
    .local v2, "isSliding":Z
    :goto_0
    iget v5, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mFloatViewHeight:I

    iget v6, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mItemHeightCollapsed:I

    sub-int v3, v5, v6

    .line 2006
    .local v3, "maxNonSrcBlankHeight":I
    iget v5, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mSlideFrac:F

    int-to-float v6, v3

    mul-float/2addr v5, v6

    float-to-int v4, v5

    .line 2010
    .local v4, "slideHeight":I
    iget v5, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mSrcPos:I

    if-ne p1, v5, :cond_4

    .line 2011
    iget v5, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mSrcPos:I

    iget v6, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mFirstExpPos:I

    if-ne v5, v6, :cond_2

    .line 2012
    if-eqz v2, :cond_1

    .line 2013
    iget v5, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mItemHeightCollapsed:I

    add-int v1, v4, v5

    .line 2036
    .local v1, "height":I
    :goto_1
    return v1

    .line 2004
    .end local v1    # "height":I
    .end local v2    # "isSliding":Z
    .end local v3    # "maxNonSrcBlankHeight":I
    .end local v4    # "slideHeight":I
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "isSliding":Z
    goto :goto_0

    .line 2015
    .restart local v3    # "maxNonSrcBlankHeight":I
    .restart local v4    # "slideHeight":I
    :cond_1
    iget v1, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mFloatViewHeight:I

    .restart local v1    # "height":I
    goto :goto_1

    .line 2017
    .end local v1    # "height":I
    :cond_2
    iget v5, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mSrcPos:I

    iget v6, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mSecondExpPos:I

    if-ne v5, v6, :cond_3

    .line 2019
    iget v5, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mFloatViewHeight:I

    sub-int v1, v5, v4

    .restart local v1    # "height":I
    goto :goto_1

    .line 2021
    .end local v1    # "height":I
    :cond_3
    iget v1, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mItemHeightCollapsed:I

    .restart local v1    # "height":I
    goto :goto_1

    .line 2023
    .end local v1    # "height":I
    :cond_4
    iget v5, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mFirstExpPos:I

    if-ne p1, v5, :cond_6

    .line 2024
    if-eqz v2, :cond_5

    .line 2025
    add-int v1, p2, v4

    .restart local v1    # "height":I
    goto :goto_1

    .line 2027
    .end local v1    # "height":I
    :cond_5
    add-int v1, p2, v3

    .restart local v1    # "height":I
    goto :goto_1

    .line 2029
    .end local v1    # "height":I
    :cond_6
    iget v5, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mSecondExpPos:I

    if-ne p1, v5, :cond_7

    .line 2031
    add-int v5, p2, v3

    sub-int v1, v5, v4

    .restart local v1    # "height":I
    goto :goto_1

    .line 2033
    .end local v1    # "height":I
    :cond_7
    move v1, p2

    .restart local v1    # "height":I
    goto :goto_1
.end method

.method private calcItemHeight(ILandroid/view/View;Z)I
    .locals 1
    .param p1, "position"    # I
    .param p2, "item"    # Landroid/view/View;
    .param p3, "invalidChildHeight"    # Z

    .prologue
    .line 1997
    invoke-direct {p0, p1, p2, p3}, Lcom/android/exsettings/nx/dslv/DragSortListView;->getChildHeight(ILandroid/view/View;Z)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/exsettings/nx/dslv/DragSortListView;->calcItemHeight(II)I

    move-result v0

    return v0
.end method

.method private clearPositions()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 1481
    iput v0, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mSrcPos:I

    .line 1482
    iput v0, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mFirstExpPos:I

    .line 1483
    iput v0, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mSecondExpPos:I

    .line 1484
    iput v0, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mFloatPos:I

    .line 1480
    return-void
.end method

.method private continueDrag(II)V
    .locals 8
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v7, 0x0

    const/4 v6, -0x1

    const/4 v5, 0x1

    .line 1785
    iget-object v3, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iget v4, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mDragDeltaX:I

    sub-int v4, p1, v4

    iput v4, v3, Landroid/graphics/Point;->x:I

    .line 1786
    iget-object v3, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iget v4, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mDragDeltaY:I

    sub-int v4, p2, v4

    iput v4, v3, Landroid/graphics/Point;->y:I

    .line 1788
    invoke-direct {p0, v5}, Lcom/android/exsettings/nx/dslv/DragSortListView;->doDragFloatView(Z)V

    .line 1790
    iget v3, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mFloatViewMid:I

    iget v4, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mFloatViewHeightHalf:I

    add-int/2addr v3, v4

    invoke-static {p2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1791
    .local v2, "minY":I
    iget v3, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mFloatViewMid:I

    iget v4, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mFloatViewHeightHalf:I

    sub-int/2addr v3, v4

    invoke-static {p2, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1794
    .local v1, "maxY":I
    iget-object v3, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mDragScroller:Lcom/android/exsettings/nx/dslv/DragSortListView$DragScroller;

    invoke-virtual {v3}, Lcom/android/exsettings/nx/dslv/DragSortListView$DragScroller;->getScrollDir()I

    move-result v0

    .line 1796
    .local v0, "currentScrollDir":I
    iget v3, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mLastY:I

    if-le v2, v3, :cond_2

    iget v3, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mDownScrollStartY:I

    if-le v2, v3, :cond_2

    if-eq v0, v5, :cond_2

    .line 1800
    if-eq v0, v6, :cond_0

    .line 1802
    iget-object v3, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mDragScroller:Lcom/android/exsettings/nx/dslv/DragSortListView$DragScroller;

    invoke-virtual {v3, v5}, Lcom/android/exsettings/nx/dslv/DragSortListView$DragScroller;->stopScrolling(Z)V

    .line 1806
    :cond_0
    iget-object v3, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mDragScroller:Lcom/android/exsettings/nx/dslv/DragSortListView$DragScroller;

    invoke-virtual {v3, v5}, Lcom/android/exsettings/nx/dslv/DragSortListView$DragScroller;->startScrolling(I)V

    .line 1782
    :cond_1
    :goto_0
    return-void

    .line 1807
    :cond_2
    iget v3, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mLastY:I

    if-ge v1, v3, :cond_4

    iget v3, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mUpScrollStartY:I

    if-ge v1, v3, :cond_4

    if-eqz v0, :cond_4

    .line 1811
    if-eq v0, v6, :cond_3

    .line 1813
    iget-object v3, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mDragScroller:Lcom/android/exsettings/nx/dslv/DragSortListView$DragScroller;

    invoke-virtual {v3, v5}, Lcom/android/exsettings/nx/dslv/DragSortListView$DragScroller;->stopScrolling(Z)V

    .line 1817
    :cond_3
    iget-object v3, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mDragScroller:Lcom/android/exsettings/nx/dslv/DragSortListView$DragScroller;

    invoke-virtual {v3, v7}, Lcom/android/exsettings/nx/dslv/DragSortListView$DragScroller;->startScrolling(I)V

    goto :goto_0

    .line 1819
    :cond_4
    iget v3, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mUpScrollStartY:I

    if-lt v1, v3, :cond_1

    iget v3, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mDownScrollStartY:I

    if-gt v2, v3, :cond_1

    .line 1820
    iget-object v3, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mDragScroller:Lcom/android/exsettings/nx/dslv/DragSortListView$DragScroller;

    invoke-virtual {v3}, Lcom/android/exsettings/nx/dslv/DragSortListView$DragScroller;->isScrolling()Z

    move-result v3

    .line 1819
    if-eqz v3, :cond_1

    .line 1824
    iget-object v3, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mDragScroller:Lcom/android/exsettings/nx/dslv/DragSortListView$DragScroller;

    invoke-virtual {v3, v5}, Lcom/android/exsettings/nx/dslv/DragSortListView$DragScroller;->stopScrolling(Z)V

    goto :goto_0
.end method

.method private destroyFloatView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2402
    iget-object v0, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 2403
    iget-object v0, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2404
    iget-object v0, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mFloatViewManager:Lcom/android/exsettings/nx/dslv/DragSortListView$FloatViewManager;

    if-eqz v0, :cond_0

    .line 2405
    iget-object v0, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mFloatViewManager:Lcom/android/exsettings/nx/dslv/DragSortListView$FloatViewManager;

    iget-object v1, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    invoke-interface {v0, v1}, Lcom/android/exsettings/nx/dslv/DragSortListView$FloatViewManager;->onDestroyFloatView(Landroid/view/View;)V

    .line 2407
    :cond_0
    iput-object v2, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    .line 2408
    invoke-virtual {p0}, Lcom/android/exsettings/nx/dslv/DragSortListView;->invalidate()V

    .line 2401
    :cond_1
    return-void
.end method

.method private doActionUpOrCancel()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1657
    iput v2, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mCancelMethod:I

    .line 1658
    iput-boolean v2, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mInTouchEvent:Z

    .line 1659
    iget v0, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mDragState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 1660
    iput v2, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mDragState:I

    .line 1662
    :cond_0
    iget v0, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mFloatAlpha:F

    iput v0, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mCurrFloatAlpha:F

    .line 1663
    iput-boolean v2, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mListViewIntercepted:Z

    .line 1664
    iget-object v0, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mChildHeightCache:Lcom/android/exsettings/nx/dslv/DragSortListView$HeightCache;

    invoke-virtual {v0}, Lcom/android/exsettings/nx/dslv/DragSortListView$HeightCache;->clear()V

    .line 1656
    return-void
.end method

.method private doDragFloatView(ILandroid/view/View;Z)V
    .locals 6
    .param p1, "movePos"    # I
    .param p2, "moveItem"    # Landroid/view/View;
    .param p3, "forceInvalidate"    # Z

    .prologue
    .line 2311
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mBlockLayoutRequests:Z

    .line 2313
    invoke-direct {p0}, Lcom/android/exsettings/nx/dslv/DragSortListView;->updateFloatView()V

    .line 2315
    iget v0, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mFirstExpPos:I

    .line 2316
    .local v0, "oldFirstExpPos":I
    iget v1, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mSecondExpPos:I

    .line 2318
    .local v1, "oldSecondExpPos":I
    invoke-direct {p0}, Lcom/android/exsettings/nx/dslv/DragSortListView;->updatePositions()Z

    move-result v3

    .line 2320
    .local v3, "updated":Z
    if-eqz v3, :cond_0

    .line 2321
    invoke-direct {p0}, Lcom/android/exsettings/nx/dslv/DragSortListView;->adjustAllItems()V

    .line 2322
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/exsettings/nx/dslv/DragSortListView;->adjustScroll(ILandroid/view/View;II)I

    move-result v2

    .line 2325
    .local v2, "scroll":I
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v4

    add-int/2addr v4, v2

    invoke-virtual {p0}, Lcom/android/exsettings/nx/dslv/DragSortListView;->getPaddingTop()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0, p1, v4}, Lcom/android/exsettings/nx/dslv/DragSortListView;->setSelectionFromTop(II)V

    .line 2326
    invoke-virtual {p0}, Lcom/android/exsettings/nx/dslv/DragSortListView;->layoutChildren()V

    .line 2329
    .end local v2    # "scroll":I
    :cond_0
    if-nez v3, :cond_1

    if-eqz p3, :cond_2

    .line 2330
    :cond_1
    invoke-virtual {p0}, Lcom/android/exsettings/nx/dslv/DragSortListView;->invalidate()V

    .line 2333
    :cond_2
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mBlockLayoutRequests:Z

    .line 2310
    return-void
.end method

.method private doDragFloatView(Z)V
    .locals 4
    .param p1, "forceInvalidate"    # Z

    .prologue
    .line 2300
    invoke-virtual {p0}, Lcom/android/exsettings/nx/dslv/DragSortListView;->getFirstVisiblePosition()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/exsettings/nx/dslv/DragSortListView;->getChildCount()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int v1, v2, v3

    .line 2301
    .local v1, "movePos":I
    invoke-virtual {p0}, Lcom/android/exsettings/nx/dslv/DragSortListView;->getChildCount()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {p0, v2}, Lcom/android/exsettings/nx/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2303
    .local v0, "moveItem":Landroid/view/View;
    if-nez v0, :cond_0

    .line 2304
    return-void

    .line 2307
    :cond_0
    invoke-direct {p0, v1, v0, p1}, Lcom/android/exsettings/nx/dslv/DragSortListView;->doDragFloatView(ILandroid/view/View;Z)V

    .line 2299
    return-void
.end method

.method private doRemoveItem()V
    .locals 2

    .prologue
    .line 1512
    iget v0, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mSrcPos:I

    invoke-virtual {p0}, Lcom/android/exsettings/nx/dslv/DragSortListView;->getHeaderViewsCount()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/android/exsettings/nx/dslv/DragSortListView;->doRemoveItem(I)V

    .line 1511
    return-void
.end method

.method private doRemoveItem(I)V
    .locals 1
    .param p1, "which"    # I

    .prologue
    .line 1521
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mDragState:I

    .line 1524
    iget-object v0, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mRemoveListener:Lcom/android/exsettings/nx/dslv/DragSortListView$RemoveListener;

    if-eqz v0, :cond_0

    .line 1525
    iget-object v0, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mRemoveListener:Lcom/android/exsettings/nx/dslv/DragSortListView$RemoveListener;

    invoke-interface {v0, p1}, Lcom/android/exsettings/nx/dslv/DragSortListView$RemoveListener;->remove(I)V

    .line 1528
    :cond_0
    invoke-direct {p0}, Lcom/android/exsettings/nx/dslv/DragSortListView;->destroyFloatView()V

    .line 1530
    invoke-direct {p0}, Lcom/android/exsettings/nx/dslv/DragSortListView;->adjustOnReorder()V

    .line 1531
    invoke-direct {p0}, Lcom/android/exsettings/nx/dslv/DragSortListView;->clearPositions()V

    .line 1534
    iget-boolean v0, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mInTouchEvent:Z

    if-eqz v0, :cond_1

    .line 1535
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mDragState:I

    .line 1518
    :goto_0
    return-void

    .line 1537
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mDragState:I

    goto :goto_0
.end method

.method private drawDivider(ILandroid/graphics/Canvas;)V
    .locals 11
    .param p1, "expPosition"    # I
    .param p2, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v10, 0x0

    .line 745
    invoke-virtual {p0}, Lcom/android/exsettings/nx/dslv/DragSortListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 746
    .local v2, "divider":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Lcom/android/exsettings/nx/dslv/DragSortListView;->getDividerHeight()I

    move-result v3

    .line 749
    .local v3, "dividerHeight":I
    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    .line 751
    invoke-virtual {p0}, Lcom/android/exsettings/nx/dslv/DragSortListView;->getFirstVisiblePosition()I

    move-result v8

    .line 750
    sub-int v8, p1, v8

    invoke-virtual {p0, v8}, Lcom/android/exsettings/nx/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 752
    .local v4, "expItem":Landroid/view/ViewGroup;
    if-eqz v4, :cond_0

    .line 753
    invoke-virtual {p0}, Lcom/android/exsettings/nx/dslv/DragSortListView;->getPaddingLeft()I

    move-result v5

    .line 754
    .local v5, "l":I
    invoke-virtual {p0}, Lcom/android/exsettings/nx/dslv/DragSortListView;->getWidth()I

    move-result v8

    invoke-virtual {p0}, Lcom/android/exsettings/nx/dslv/DragSortListView;->getPaddingRight()I

    move-result v9

    sub-int v6, v8, v9

    .line 758
    .local v6, "r":I
    invoke-virtual {v4, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 760
    .local v1, "childHeight":I
    iget v8, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mSrcPos:I

    if-le p1, v8, :cond_1

    .line 761
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getTop()I

    move-result v8

    add-int v7, v8, v1

    .line 762
    .local v7, "t":I
    add-int v0, v7, v3

    .line 770
    .local v0, "b":I
    :goto_0
    invoke-virtual {p2}, Landroid/graphics/Canvas;->save()I

    .line 771
    invoke-virtual {p2, v5, v7, v6, v0}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 772
    invoke-virtual {v2, v5, v7, v6, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 773
    invoke-virtual {v2, p2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 774
    invoke-virtual {p2}, Landroid/graphics/Canvas;->restore()V

    .line 743
    .end local v0    # "b":I
    .end local v1    # "childHeight":I
    .end local v4    # "expItem":Landroid/view/ViewGroup;
    .end local v5    # "l":I
    .end local v6    # "r":I
    .end local v7    # "t":I
    :cond_0
    return-void

    .line 764
    .restart local v1    # "childHeight":I
    .restart local v4    # "expItem":Landroid/view/ViewGroup;
    .restart local v5    # "l":I
    .restart local v6    # "r":I
    :cond_1
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getBottom()I

    move-result v8

    sub-int v0, v8, v1

    .line 765
    .restart local v0    # "b":I
    sub-int v7, v0, v3

    .restart local v7    # "t":I
    goto :goto_0
.end method

.method private dropFloatView()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1490
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mDragState:I

    .line 1492
    iget-object v1, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mDropListener:Lcom/android/exsettings/nx/dslv/DragSortListView$DropListener;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mFloatPos:I

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mFloatPos:I

    invoke-virtual {p0}, Lcom/android/exsettings/nx/dslv/DragSortListView;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 1493
    invoke-virtual {p0}, Lcom/android/exsettings/nx/dslv/DragSortListView;->getHeaderViewsCount()I

    move-result v0

    .line 1494
    .local v0, "numHeaders":I
    iget-object v1, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mDropListener:Lcom/android/exsettings/nx/dslv/DragSortListView$DropListener;

    iget v2, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mSrcPos:I

    sub-int/2addr v2, v0

    iget v3, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mFloatPos:I

    sub-int/2addr v3, v0

    invoke-interface {v1, v2, v3}, Lcom/android/exsettings/nx/dslv/DragSortListView$DropListener;->drop(II)V

    .line 1497
    .end local v0    # "numHeaders":I
    :cond_0
    invoke-direct {p0}, Lcom/android/exsettings/nx/dslv/DragSortListView;->destroyFloatView()V

    .line 1499
    invoke-direct {p0}, Lcom/android/exsettings/nx/dslv/DragSortListView;->adjustOnReorder()V

    .line 1500
    invoke-direct {p0}, Lcom/android/exsettings/nx/dslv/DragSortListView;->clearPositions()V

    .line 1501
    invoke-direct {p0}, Lcom/android/exsettings/nx/dslv/DragSortListView;->adjustAllItems()V

    .line 1504
    iget-boolean v1, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mInTouchEvent:Z

    if-eqz v1, :cond_1

    .line 1505
    const/4 v1, 0x3

    iput v1, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mDragState:I

    .line 1487
    :goto_0
    return-void

    .line 1507
    :cond_1
    iput v4, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mDragState:I

    goto :goto_0
.end method

.method private getChildHeight(I)I
    .locals 8
    .param p1, "position"    # I

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 1916
    iget v5, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mSrcPos:I

    if-ne p1, v5, :cond_0

    .line 1917
    return v7

    .line 1920
    :cond_0
    invoke-virtual {p0}, Lcom/android/exsettings/nx/dslv/DragSortListView;->getFirstVisiblePosition()I

    move-result v5

    sub-int v5, p1, v5

    invoke-virtual {p0, v5}, Lcom/android/exsettings/nx/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1922
    .local v4, "v":Landroid/view/View;
    if-eqz v4, :cond_1

    .line 1925
    invoke-direct {p0, p1, v4, v7}, Lcom/android/exsettings/nx/dslv/DragSortListView;->getChildHeight(ILandroid/view/View;Z)I

    move-result v5

    return v5

    .line 1929
    :cond_1
    iget-object v5, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mChildHeightCache:Lcom/android/exsettings/nx/dslv/DragSortListView$HeightCache;

    invoke-virtual {v5, p1}, Lcom/android/exsettings/nx/dslv/DragSortListView$HeightCache;->get(I)I

    move-result v1

    .line 1930
    .local v1, "childHeight":I
    const/4 v5, -0x1

    if-eq v1, v5, :cond_2

    .line 1932
    return v1

    .line 1935
    :cond_2
    invoke-virtual {p0}, Lcom/android/exsettings/nx/dslv/DragSortListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 1936
    .local v0, "adapter":Landroid/widget/ListAdapter;
    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v2

    .line 1939
    .local v2, "type":I
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v3

    .line 1940
    .local v3, "typeCount":I
    iget-object v5, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mSampleViewTypes:[Landroid/view/View;

    array-length v5, v5

    if-eq v3, v5, :cond_3

    .line 1941
    new-array v5, v3, [Landroid/view/View;

    iput-object v5, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mSampleViewTypes:[Landroid/view/View;

    .line 1944
    :cond_3
    if-ltz v2, :cond_5

    .line 1945
    iget-object v5, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mSampleViewTypes:[Landroid/view/View;

    aget-object v5, v5, v2

    if-nez v5, :cond_4

    .line 1946
    invoke-interface {v0, p1, v6, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 1947
    iget-object v5, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mSampleViewTypes:[Landroid/view/View;

    aput-object v4, v5, v2

    .line 1957
    :goto_0
    const/4 v5, 0x1

    invoke-direct {p0, p1, v4, v5}, Lcom/android/exsettings/nx/dslv/DragSortListView;->getChildHeight(ILandroid/view/View;Z)I

    move-result v1

    .line 1960
    iget-object v5, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mChildHeightCache:Lcom/android/exsettings/nx/dslv/DragSortListView$HeightCache;

    invoke-virtual {v5, p1, v1}, Lcom/android/exsettings/nx/dslv/DragSortListView$HeightCache;->add(II)V

    .line 1962
    return v1

    .line 1949
    :cond_4
    iget-object v5, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mSampleViewTypes:[Landroid/view/View;

    aget-object v5, v5, v2

    invoke-interface {v0, p1, v5, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    goto :goto_0

    .line 1953
    :cond_5
    invoke-interface {v0, p1, v6, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    goto :goto_0
.end method

.method private getChildHeight(ILandroid/view/View;Z)I
    .locals 6
    .param p1, "position"    # I
    .param p2, "item"    # Landroid/view/View;
    .param p3, "invalidChildHeight"    # Z

    .prologue
    const/4 v5, 0x0

    .line 1967
    iget v3, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mSrcPos:I

    if-ne p1, v3, :cond_0

    .line 1968
    return v5

    .line 1972
    :cond_0
    invoke-virtual {p0}, Lcom/android/exsettings/nx/dslv/DragSortListView;->getHeaderViewsCount()I

    move-result v3

    if-lt p1, v3, :cond_1

    invoke-virtual {p0}, Lcom/android/exsettings/nx/dslv/DragSortListView;->getCount()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/exsettings/nx/dslv/DragSortListView;->getFooterViewsCount()I

    move-result v4

    sub-int/2addr v3, v4

    if-lt p1, v3, :cond_2

    .line 1973
    :cond_1
    move-object v0, p2

    .line 1978
    .end local p2    # "item":Landroid/view/View;
    .local v0, "child":Landroid/view/View;
    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 1980
    .local v2, "lp":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v2, :cond_3

    .line 1981
    iget v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v3, :cond_3

    .line 1982
    iget v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    return v3

    .line 1975
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .restart local p2    # "item":Landroid/view/View;
    :cond_2
    check-cast p2, Landroid/view/ViewGroup;

    .end local p2    # "item":Landroid/view/View;
    invoke-virtual {p2, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .restart local v0    # "child":Landroid/view/View;
    goto :goto_0

    .line 1986
    .restart local v2    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 1988
    .local v1, "childHeight":I
    if-eqz v1, :cond_4

    if-eqz p3, :cond_5

    .line 1989
    :cond_4
    invoke-direct {p0, v0}, Lcom/android/exsettings/nx/dslv/DragSortListView;->measureItem(Landroid/view/View;)V

    .line 1990
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 1993
    :cond_5
    return v1
.end method

.method private getItemHeight(I)I
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 827
    invoke-virtual {p0}, Lcom/android/exsettings/nx/dslv/DragSortListView;->getFirstVisiblePosition()I

    move-result v1

    sub-int v1, p1, v1

    invoke-virtual {p0, v1}, Lcom/android/exsettings/nx/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 829
    .local v0, "v":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 831
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    return v1

    .line 835
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/exsettings/nx/dslv/DragSortListView;->getChildHeight(I)I

    move-result v1

    invoke-direct {p0, p1, v1}, Lcom/android/exsettings/nx/dslv/DragSortListView;->calcItemHeight(II)I

    move-result v1

    return v1
.end method

.method private getShuffleEdge(II)I
    .locals 11
    .param p1, "position"    # I
    .param p2, "top"    # I

    .prologue
    .line 909
    invoke-virtual {p0}, Lcom/android/exsettings/nx/dslv/DragSortListView;->getHeaderViewsCount()I

    move-result v7

    .line 910
    .local v7, "numHeaders":I
    invoke-virtual {p0}, Lcom/android/exsettings/nx/dslv/DragSortListView;->getFooterViewsCount()I

    move-result v6

    .line 916
    .local v6, "numFooters":I
    if-le p1, v7, :cond_0

    invoke-virtual {p0}, Lcom/android/exsettings/nx/dslv/DragSortListView;->getCount()I

    move-result v9

    sub-int/2addr v9, v6

    if-lt p1, v9, :cond_1

    .line 917
    :cond_0
    return p2

    .line 920
    :cond_1
    invoke-virtual {p0}, Lcom/android/exsettings/nx/dslv/DragSortListView;->getDividerHeight()I

    move-result v2

    .line 924
    .local v2, "divHeight":I
    iget v9, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mFloatViewHeight:I

    iget v10, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mItemHeightCollapsed:I

    sub-int v5, v9, v10

    .line 925
    .local v5, "maxBlankHeight":I
    invoke-direct {p0, p1}, Lcom/android/exsettings/nx/dslv/DragSortListView;->getChildHeight(I)I

    move-result v1

    .line 926
    .local v1, "childHeight":I
    invoke-direct {p0, p1}, Lcom/android/exsettings/nx/dslv/DragSortListView;->getItemHeight(I)I

    move-result v4

    .line 930
    .local v4, "itemHeight":I
    move v8, p2

    .line 931
    .local v8, "otop":I
    iget v9, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mSecondExpPos:I

    iget v10, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mSrcPos:I

    if-gt v9, v10, :cond_5

    .line 934
    iget v9, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mSecondExpPos:I

    if-ne p1, v9, :cond_4

    iget v9, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mFirstExpPos:I

    iget v10, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mSecondExpPos:I

    if-eq v9, v10, :cond_4

    .line 935
    iget v9, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mSrcPos:I

    if-ne p1, v9, :cond_3

    .line 936
    add-int v9, p2, v4

    iget v10, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mFloatViewHeight:I

    sub-int v8, v9, v10

    .line 957
    :cond_2
    :goto_0
    iget v9, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mSrcPos:I

    if-gt p1, v9, :cond_7

    .line 958
    iget v9, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mFloatViewHeight:I

    sub-int/2addr v9, v2

    add-int/lit8 v10, p1, -0x1

    invoke-direct {p0, v10}, Lcom/android/exsettings/nx/dslv/DragSortListView;->getChildHeight(I)I

    move-result v10

    sub-int/2addr v9, v10

    div-int/lit8 v9, v9, 0x2

    add-int v3, v8, v9

    .line 963
    .local v3, "edge":I
    :goto_1
    return v3

    .line 938
    .end local v3    # "edge":I
    :cond_3
    sub-int v0, v4, v1

    .line 939
    .local v0, "blankHeight":I
    add-int v9, p2, v0

    sub-int v8, v9, v5

    goto :goto_0

    .line 941
    .end local v0    # "blankHeight":I
    :cond_4
    iget v9, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mSecondExpPos:I

    if-le p1, v9, :cond_2

    iget v9, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mSrcPos:I

    if-gt p1, v9, :cond_2

    .line 942
    sub-int v8, p2, v5

    goto :goto_0

    .line 948
    :cond_5
    iget v9, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mSrcPos:I

    if-le p1, v9, :cond_6

    iget v9, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mFirstExpPos:I

    if-gt p1, v9, :cond_6

    .line 949
    add-int v8, p2, v5

    .line 948
    goto :goto_0

    .line 950
    :cond_6
    iget v9, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mSecondExpPos:I

    if-ne p1, v9, :cond_2

    iget v9, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mFirstExpPos:I

    iget v10, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mSecondExpPos:I

    if-eq v9, v10, :cond_2

    .line 951
    sub-int v0, v4, v1

    .line 952
    .restart local v0    # "blankHeight":I
    add-int v8, p2, v0

    goto :goto_0

    .line 960
    .end local v0    # "blankHeight":I
    :cond_7
    sub-int v9, v1, v2

    iget v10, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mFloatViewHeight:I

    sub-int/2addr v9, v10

    div-int/lit8 v9, v9, 0x2

    add-int v3, v8, v9

    .restart local v3    # "edge":I
    goto :goto_1
.end method

.method private measureFloatView()V
    .locals 1

    .prologue
    .line 2108
    iget-object v0, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2109
    iget-object v0, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/exsettings/nx/dslv/DragSortListView;->measureItem(Landroid/view/View;)V

    .line 2110
    iget-object v0, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mFloatViewHeight:I

    .line 2111
    iget v0, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mFloatViewHeight:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mFloatViewHeightHalf:I

    .line 2107
    :cond_0
    return-void
.end method

.method private measureItem(Landroid/view/View;)V
    .locals 7
    .param p1, "item"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x0

    .line 2090
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 2091
    .local v1, "lp":Landroid/view/ViewGroup$LayoutParams;
    if-nez v1, :cond_0

    .line 2092
    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    .line 2093
    .end local v1    # "lp":Landroid/view/ViewGroup$LayoutParams;
    const/4 v3, -0x1

    const/4 v4, -0x2

    .line 2092
    invoke-direct {v1, v3, v4}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 2094
    .restart local v1    # "lp":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2096
    :cond_0
    iget v3, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mWidthMeasureSpec:I

    invoke-virtual {p0}, Lcom/android/exsettings/nx/dslv/DragSortListView;->getListPaddingLeft()I

    move-result v4

    .line 2097
    invoke-virtual {p0}, Lcom/android/exsettings/nx/dslv/DragSortListView;->getListPaddingRight()I

    move-result v5

    .line 2096
    add-int/2addr v4, v5

    .line 2097
    iget v5, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 2096
    invoke-static {v3, v4, v5}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v2

    .line 2099
    .local v2, "wspec":I
    iget v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v3, :cond_1

    .line 2100
    iget v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 2104
    .local v0, "hspec":I
    :goto_0
    invoke-virtual {p1, v2, v0}, Landroid/view/View;->measure(II)V

    .line 2089
    return-void

    .line 2102
    .end local v0    # "hspec":I
    :cond_1
    invoke-static {v6, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .restart local v0    # "hspec":I
    goto :goto_0
.end method

.method private saveTouchCoords(Landroid/view/MotionEvent;)V
    .locals 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 1668
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    and-int/lit16 v0, v1, 0xff

    .line 1669
    .local v0, "action":I
    if-eqz v0, :cond_0

    .line 1670
    iget v1, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mX:I

    iput v1, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mLastX:I

    .line 1671
    iget v1, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mY:I

    iput v1, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mLastY:I

    .line 1673
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mX:I

    .line 1674
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mY:I

    .line 1675
    if-nez v0, :cond_1

    .line 1676
    iget v1, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mX:I

    iput v1, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mLastX:I

    .line 1677
    iget v1, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mY:I

    iput v1, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mLastY:I

    .line 1679
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    iget v2, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mX:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mOffsetX:I

    .line 1680
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    float-to-int v1, v1

    iget v2, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mY:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mOffsetY:I

    .line 1667
    return-void
.end method

.method private updateFloatView()V
    .locals 13

    .prologue
    .line 2342
    iget-object v9, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mFloatViewManager:Lcom/android/exsettings/nx/dslv/DragSortListView$FloatViewManager;

    if-eqz v9, :cond_0

    .line 2343
    iget-object v9, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mTouchLoc:Landroid/graphics/Point;

    iget v10, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mX:I

    iget v11, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mY:I

    invoke-virtual {v9, v10, v11}, Landroid/graphics/Point;->set(II)V

    .line 2344
    iget-object v9, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mFloatViewManager:Lcom/android/exsettings/nx/dslv/DragSortListView$FloatViewManager;

    iget-object v10, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    iget-object v11, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iget-object v12, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mTouchLoc:Landroid/graphics/Point;

    invoke-interface {v9, v10, v11, v12}, Lcom/android/exsettings/nx/dslv/DragSortListView$FloatViewManager;->onDragFloatView(Landroid/view/View;Landroid/graphics/Point;Landroid/graphics/Point;)V

    .line 2347
    :cond_0
    iget-object v9, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iget v2, v9, Landroid/graphics/Point;->x:I

    .line 2348
    .local v2, "floatX":I
    iget-object v9, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iget v3, v9, Landroid/graphics/Point;->y:I

    .line 2351
    .local v3, "floatY":I
    invoke-virtual {p0}, Lcom/android/exsettings/nx/dslv/DragSortListView;->getPaddingLeft()I

    move-result v7

    .line 2352
    .local v7, "padLeft":I
    iget v9, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mDragFlags:I

    and-int/lit8 v9, v9, 0x1

    if-nez v9, :cond_7

    if-le v2, v7, :cond_7

    .line 2353
    iget-object v9, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iput v7, v9, Landroid/graphics/Point;->x:I

    .line 2359
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/exsettings/nx/dslv/DragSortListView;->getHeaderViewsCount()I

    move-result v6

    .line 2360
    .local v6, "numHeaders":I
    invoke-virtual {p0}, Lcom/android/exsettings/nx/dslv/DragSortListView;->getFooterViewsCount()I

    move-result v5

    .line 2361
    .local v5, "numFooters":I
    invoke-virtual {p0}, Lcom/android/exsettings/nx/dslv/DragSortListView;->getFirstVisiblePosition()I

    move-result v1

    .line 2362
    .local v1, "firstPos":I
    invoke-virtual {p0}, Lcom/android/exsettings/nx/dslv/DragSortListView;->getLastVisiblePosition()I

    move-result v4

    .line 2366
    .local v4, "lastPos":I
    invoke-virtual {p0}, Lcom/android/exsettings/nx/dslv/DragSortListView;->getPaddingTop()I

    move-result v8

    .line 2367
    .local v8, "topLimit":I
    if-ge v1, v6, :cond_2

    .line 2368
    sub-int v9, v6, v1

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {p0, v9}, Lcom/android/exsettings/nx/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v8

    .line 2370
    :cond_2
    iget v9, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mDragFlags:I

    and-int/lit8 v9, v9, 0x8

    if-nez v9, :cond_3

    .line 2371
    iget v9, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mSrcPos:I

    if-gt v1, v9, :cond_3

    .line 2372
    iget v9, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mSrcPos:I

    sub-int/2addr v9, v1

    invoke-virtual {p0, v9}, Lcom/android/exsettings/nx/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v9

    invoke-static {v9, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 2377
    :cond_3
    invoke-virtual {p0}, Lcom/android/exsettings/nx/dslv/DragSortListView;->getHeight()I

    move-result v9

    invoke-virtual {p0}, Lcom/android/exsettings/nx/dslv/DragSortListView;->getPaddingBottom()I

    move-result v10

    sub-int v0, v9, v10

    .line 2378
    .local v0, "bottomLimit":I
    invoke-virtual {p0}, Lcom/android/exsettings/nx/dslv/DragSortListView;->getCount()I

    move-result v9

    sub-int/2addr v9, v5

    add-int/lit8 v9, v9, -0x1

    if-lt v4, v9, :cond_4

    .line 2379
    invoke-virtual {p0}, Lcom/android/exsettings/nx/dslv/DragSortListView;->getCount()I

    move-result v9

    sub-int/2addr v9, v5

    add-int/lit8 v9, v9, -0x1

    sub-int/2addr v9, v1

    invoke-virtual {p0, v9}, Lcom/android/exsettings/nx/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 2381
    :cond_4
    iget v9, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mDragFlags:I

    and-int/lit8 v9, v9, 0x4

    if-nez v9, :cond_5

    .line 2382
    iget v9, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mSrcPos:I

    if-lt v4, v9, :cond_5

    .line 2383
    iget v9, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mSrcPos:I

    sub-int/2addr v9, v1

    invoke-virtual {p0, v9}, Lcom/android/exsettings/nx/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v9

    invoke-static {v9, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2391
    :cond_5
    if-ge v3, v8, :cond_8

    .line 2392
    iget-object v9, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iput v8, v9, Landroid/graphics/Point;->y:I

    .line 2398
    :cond_6
    :goto_1
    iget-object v9, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->y:I

    iget v10, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mFloatViewHeightHalf:I

    add-int/2addr v9, v10

    iput v9, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mFloatViewMid:I

    .line 2340
    return-void

    .line 2354
    .end local v0    # "bottomLimit":I
    .end local v1    # "firstPos":I
    .end local v4    # "lastPos":I
    .end local v5    # "numFooters":I
    .end local v6    # "numHeaders":I
    .end local v8    # "topLimit":I
    :cond_7
    iget v9, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mDragFlags:I

    and-int/lit8 v9, v9, 0x2

    if-nez v9, :cond_1

    if-ge v2, v7, :cond_1

    .line 2355
    iget-object v9, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iput v7, v9, Landroid/graphics/Point;->x:I

    goto/16 :goto_0

    .line 2393
    .restart local v0    # "bottomLimit":I
    .restart local v1    # "firstPos":I
    .restart local v4    # "lastPos":I
    .restart local v5    # "numFooters":I
    .restart local v6    # "numHeaders":I
    .restart local v8    # "topLimit":I
    :cond_8
    iget v9, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mFloatViewHeight:I

    add-int/2addr v9, v3

    if-le v9, v0, :cond_6

    .line 2394
    iget-object v9, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iget v10, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mFloatViewHeight:I

    sub-int v10, v0, v10

    iput v10, v9, Landroid/graphics/Point;->y:I

    goto :goto_1
.end method

.method private updatePositions()Z
    .locals 30

    .prologue
    .line 968
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/nx/dslv/DragSortListView;->getFirstVisiblePosition()I

    move-result v9

    .line 969
    .local v9, "first":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mFirstExpPos:I

    move/from16 v23, v0

    .line 970
    .local v23, "startPos":I
    sub-int v27, v23, v9

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/exsettings/nx/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v25

    .line 972
    .local v25, "startView":Landroid/view/View;
    if-nez v25, :cond_0

    .line 973
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/nx/dslv/DragSortListView;->getChildCount()I

    move-result v27

    div-int/lit8 v27, v27, 0x2

    add-int v23, v9, v27

    .line 974
    sub-int v27, v23, v9

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/exsettings/nx/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v25

    .line 976
    :cond_0
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getTop()I

    move-result v24

    .line 978
    .local v24, "startTop":I
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getHeight()I

    move-result v10

    .line 980
    .local v10, "itemHeight":I
    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/android/exsettings/nx/dslv/DragSortListView;->getShuffleEdge(II)I

    move-result v5

    .line 981
    .local v5, "edge":I
    move v13, v5

    .line 983
    .local v13, "lastEdge":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/nx/dslv/DragSortListView;->getDividerHeight()I

    move-result v4

    .line 987
    .local v4, "divHeight":I
    move/from16 v11, v23

    .line 988
    .local v11, "itemPos":I
    move/from16 v12, v24

    .line 989
    .local v12, "itemTop":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mFloatViewMid:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-ge v0, v5, :cond_8

    .line 992
    :goto_0
    if-ltz v11, :cond_1

    .line 993
    add-int/lit8 v11, v11, -0x1

    .line 994
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/exsettings/nx/dslv/DragSortListView;->getItemHeight(I)I

    move-result v10

    .line 996
    if-nez v11, :cond_7

    .line 997
    sub-int v27, v12, v4

    sub-int v5, v27, v10

    .line 1036
    :cond_1
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/nx/dslv/DragSortListView;->getHeaderViewsCount()I

    move-result v15

    .line 1037
    .local v15, "numHeaders":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/nx/dslv/DragSortListView;->getFooterViewsCount()I

    move-result v14

    .line 1039
    .local v14, "numFooters":I
    const/16 v26, 0x0

    .line 1041
    .local v26, "updated":Z
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mFirstExpPos:I

    move/from16 v16, v0

    .line 1042
    .local v16, "oldFirstExpPos":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mSecondExpPos:I

    move/from16 v17, v0

    .line 1043
    .local v17, "oldSecondExpPos":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mSlideFrac:F

    move/from16 v18, v0

    .line 1045
    .local v18, "oldSlideFrac":F
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mAnimate:Z

    move/from16 v27, v0

    if-eqz v27, :cond_d

    .line 1046
    sub-int v27, v5, v13

    invoke-static/range {v27 .. v27}, Ljava/lang/Math;->abs(I)I

    move-result v7

    .line 1049
    .local v7, "edgeToEdge":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mFloatViewMid:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-ge v0, v5, :cond_a

    .line 1050
    move v6, v5

    .line 1051
    .local v6, "edgeBottom":I
    move v8, v13

    .line 1058
    .local v8, "edgeTop":I
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mSlideRegionFrac:F

    move/from16 v27, v0

    const/high16 v28, 0x3f000000    # 0.5f

    mul-float v27, v27, v28

    int-to-float v0, v7

    move/from16 v28, v0

    mul-float v27, v27, v28

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v21, v0

    .line 1059
    .local v21, "slideRgnHeight":I
    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v22, v0

    .line 1060
    .local v22, "slideRgnHeightF":F
    add-int v20, v8, v21

    .line 1061
    .local v20, "slideEdgeTop":I
    sub-int v19, v6, v21

    .line 1064
    .local v19, "slideEdgeBottom":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mFloatViewMid:I

    move/from16 v27, v0

    move/from16 v0, v27

    move/from16 v1, v20

    if-ge v0, v1, :cond_b

    .line 1065
    add-int/lit8 v27, v11, -0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/exsettings/nx/dslv/DragSortListView;->mFirstExpPos:I

    .line 1066
    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mSecondExpPos:I

    .line 1067
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mFloatViewMid:I

    move/from16 v27, v0

    sub-int v27, v20, v27

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    const/high16 v28, 0x3f000000    # 0.5f

    mul-float v27, v27, v28

    div-float v27, v27, v22

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/exsettings/nx/dslv/DragSortListView;->mSlideFrac:F

    .line 1088
    .end local v6    # "edgeBottom":I
    .end local v7    # "edgeToEdge":I
    .end local v8    # "edgeTop":I
    .end local v19    # "slideEdgeBottom":I
    .end local v20    # "slideEdgeTop":I
    .end local v21    # "slideRgnHeight":I
    .end local v22    # "slideRgnHeightF":F
    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mFirstExpPos:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-ge v0, v15, :cond_e

    .line 1089
    move v11, v15

    .line 1090
    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mFirstExpPos:I

    .line 1091
    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mSecondExpPos:I

    .line 1098
    :cond_2
    :goto_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mFirstExpPos:I

    move/from16 v27, v0

    move/from16 v0, v27

    move/from16 v1, v16

    if-ne v0, v1, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mSecondExpPos:I

    move/from16 v27, v0

    move/from16 v0, v27

    move/from16 v1, v17

    if-eq v0, v1, :cond_f

    .line 1100
    :cond_3
    :goto_5
    const/16 v26, 0x1

    .line 1103
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mFloatPos:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-eq v11, v0, :cond_6

    .line 1104
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mDragListener:Lcom/android/exsettings/nx/dslv/DragSortListView$DragListener;

    move-object/from16 v27, v0

    if-eqz v27, :cond_5

    .line 1105
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mDragListener:Lcom/android/exsettings/nx/dslv/DragSortListView$DragListener;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mFloatPos:I

    move/from16 v28, v0

    sub-int v28, v28, v15

    sub-int v29, v11, v15

    invoke-interface/range {v27 .. v29}, Lcom/android/exsettings/nx/dslv/DragSortListView$DragListener;->drag(II)V

    .line 1108
    :cond_5
    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mFloatPos:I

    .line 1109
    const/16 v26, 0x1

    .line 1112
    :cond_6
    return v26

    .line 1001
    .end local v14    # "numFooters":I
    .end local v15    # "numHeaders":I
    .end local v16    # "oldFirstExpPos":I
    .end local v17    # "oldSecondExpPos":I
    .end local v18    # "oldSlideFrac":F
    .end local v26    # "updated":Z
    :cond_7
    add-int v27, v10, v4

    sub-int v12, v12, v27

    .line 1002
    move-object/from16 v0, p0

    invoke-direct {v0, v11, v12}, Lcom/android/exsettings/nx/dslv/DragSortListView;->getShuffleEdge(II)I

    move-result v5

    .line 1005
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mFloatViewMid:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-ge v0, v5, :cond_1

    .line 1009
    move v13, v5

    goto/16 :goto_0

    .line 1014
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/nx/dslv/DragSortListView;->getCount()I

    move-result v3

    .line 1015
    .local v3, "count":I
    :goto_6
    if-ge v11, v3, :cond_1

    .line 1016
    add-int/lit8 v27, v3, -0x1

    move/from16 v0, v27

    if-ne v11, v0, :cond_9

    .line 1017
    add-int v27, v12, v4

    add-int v5, v27, v10

    .line 1018
    goto/16 :goto_1

    .line 1021
    :cond_9
    add-int v27, v4, v10

    add-int v12, v12, v27

    .line 1022
    add-int/lit8 v27, v11, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/android/exsettings/nx/dslv/DragSortListView;->getItemHeight(I)I

    move-result v10

    .line 1023
    add-int/lit8 v27, v11, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-direct {v0, v1, v12}, Lcom/android/exsettings/nx/dslv/DragSortListView;->getShuffleEdge(II)I

    move-result v5

    .line 1027
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mFloatViewMid:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-lt v0, v5, :cond_1

    .line 1031
    move v13, v5

    .line 1032
    add-int/lit8 v11, v11, 0x1

    goto :goto_6

    .line 1053
    .end local v3    # "count":I
    .restart local v7    # "edgeToEdge":I
    .restart local v14    # "numFooters":I
    .restart local v15    # "numHeaders":I
    .restart local v16    # "oldFirstExpPos":I
    .restart local v17    # "oldSecondExpPos":I
    .restart local v18    # "oldSlideFrac":F
    .restart local v26    # "updated":Z
    :cond_a
    move v8, v5

    .line 1054
    .restart local v8    # "edgeTop":I
    move v6, v13

    .restart local v6    # "edgeBottom":I
    goto/16 :goto_2

    .line 1070
    .restart local v19    # "slideEdgeBottom":I
    .restart local v20    # "slideEdgeTop":I
    .restart local v21    # "slideRgnHeight":I
    .restart local v22    # "slideRgnHeightF":F
    :cond_b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mFloatViewMid:I

    move/from16 v27, v0

    move/from16 v0, v27

    move/from16 v1, v19

    if-ge v0, v1, :cond_c

    .line 1071
    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mFirstExpPos:I

    .line 1072
    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mSecondExpPos:I

    goto/16 :goto_3

    .line 1074
    :cond_c
    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mFirstExpPos:I

    .line 1075
    add-int/lit8 v27, v11, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/exsettings/nx/dslv/DragSortListView;->mSecondExpPos:I

    .line 1076
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mFloatViewMid:I

    move/from16 v27, v0

    sub-int v27, v6, v27

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    div-float v27, v27, v22

    const/high16 v28, 0x3f800000    # 1.0f

    add-float v27, v27, v28

    const/high16 v28, 0x3f000000    # 0.5f

    mul-float v27, v27, v28

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/exsettings/nx/dslv/DragSortListView;->mSlideFrac:F

    goto/16 :goto_3

    .line 1083
    .end local v6    # "edgeBottom":I
    .end local v7    # "edgeToEdge":I
    .end local v8    # "edgeTop":I
    .end local v19    # "slideEdgeBottom":I
    .end local v20    # "slideEdgeTop":I
    .end local v21    # "slideRgnHeight":I
    .end local v22    # "slideRgnHeightF":F
    :cond_d
    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mFirstExpPos:I

    .line 1084
    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mSecondExpPos:I

    goto/16 :goto_3

    .line 1092
    :cond_e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mSecondExpPos:I

    move/from16 v27, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/nx/dslv/DragSortListView;->getCount()I

    move-result v28

    sub-int v28, v28, v14

    move/from16 v0, v27

    move/from16 v1, v28

    if-lt v0, v1, :cond_2

    .line 1093
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/nx/dslv/DragSortListView;->getCount()I

    move-result v27

    sub-int v27, v27, v14

    add-int/lit8 v11, v27, -0x1

    .line 1094
    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mFirstExpPos:I

    .line 1095
    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mSecondExpPos:I

    goto/16 :goto_4

    .line 1099
    :cond_f
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mSlideFrac:F

    move/from16 v27, v0

    cmpl-float v27, v27, v18

    if-eqz v27, :cond_4

    goto/16 :goto_5
.end method

.method private updateScrollStarts()V
    .locals 6

    .prologue
    .line 1829
    invoke-virtual {p0}, Lcom/android/exsettings/nx/dslv/DragSortListView;->getPaddingTop()I

    move-result v2

    .line 1830
    .local v2, "padTop":I
    invoke-virtual {p0}, Lcom/android/exsettings/nx/dslv/DragSortListView;->getHeight()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-virtual {p0}, Lcom/android/exsettings/nx/dslv/DragSortListView;->getPaddingBottom()I

    move-result v4

    sub-int v1, v3, v4

    .line 1831
    .local v1, "listHeight":I
    int-to-float v0, v1

    .line 1833
    .local v0, "heightF":F
    int-to-float v3, v2

    iget v4, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mDragUpScrollStartFrac:F

    mul-float/2addr v4, v0

    add-float/2addr v3, v4

    iput v3, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mUpScrollStartYF:F

    .line 1834
    int-to-float v3, v2

    iget v4, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mDragDownScrollStartFrac:F

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float v4, v5, v4

    mul-float/2addr v4, v0

    add-float/2addr v3, v4

    iput v3, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mDownScrollStartYF:F

    .line 1836
    iget v3, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mUpScrollStartYF:F

    float-to-int v3, v3

    iput v3, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mUpScrollStartY:I

    .line 1837
    iget v3, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mDownScrollStartYF:F

    float-to-int v3, v3

    iput v3, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mDownScrollStartY:I

    .line 1839
    iget v3, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mUpScrollStartYF:F

    int-to-float v4, v2

    sub-float/2addr v3, v4

    iput v3, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mDragUpScrollHeight:F

    .line 1840
    add-int v3, v2, v1

    int-to-float v3, v3

    iget v4, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mDownScrollStartYF:F

    sub-float/2addr v3, v4

    iput v3, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mDragDownScrollHeight:F

    .line 1828
    return-void
.end method


# virtual methods
.method public cancelDrag()V
    .locals 2

    .prologue
    .line 1466
    iget v0, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mDragState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 1467
    iget-object v0, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mDragScroller:Lcom/android/exsettings/nx/dslv/DragSortListView$DragScroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/exsettings/nx/dslv/DragSortListView$DragScroller;->stopScrolling(Z)V

    .line 1468
    invoke-direct {p0}, Lcom/android/exsettings/nx/dslv/DragSortListView;->destroyFloatView()V

    .line 1469
    invoke-direct {p0}, Lcom/android/exsettings/nx/dslv/DragSortListView;->clearPositions()V

    .line 1470
    invoke-direct {p0}, Lcom/android/exsettings/nx/dslv/DragSortListView;->adjustAllItems()V

    .line 1472
    iget-boolean v0, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mInTouchEvent:Z

    if-eqz v0, :cond_1

    .line 1473
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mDragState:I

    .line 1465
    :cond_0
    :goto_0
    return-void

    .line 1475
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mDragState:I

    goto :goto_0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 781
    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 783
    iget v0, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mDragState:I

    if-eqz v0, :cond_1

    .line 785
    iget v0, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mFirstExpPos:I

    iget v2, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mSrcPos:I

    if-eq v0, v2, :cond_0

    .line 786
    iget v0, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mFirstExpPos:I

    invoke-direct {p0, v0, p1}, Lcom/android/exsettings/nx/dslv/DragSortListView;->drawDivider(ILandroid/graphics/Canvas;)V

    .line 788
    :cond_0
    iget v0, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mSecondExpPos:I

    iget v2, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mFirstExpPos:I

    if-eq v0, v2, :cond_1

    iget v0, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mSecondExpPos:I

    iget v2, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mSrcPos:I

    if-eq v0, v2, :cond_1

    .line 789
    iget v0, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mSecondExpPos:I

    invoke-direct {p0, v0, p1}, Lcom/android/exsettings/nx/dslv/DragSortListView;->drawDivider(ILandroid/graphics/Canvas;)V

    .line 793
    :cond_1
    iget-object v0, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 795
    iget-object v0, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v9

    .line 796
    .local v9, "w":I
    iget-object v0, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v8

    .line 798
    .local v8, "h":I
    iget-object v0, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iget v11, v0, Landroid/graphics/Point;->x:I

    .line 800
    .local v11, "x":I
    invoke-virtual {p0}, Lcom/android/exsettings/nx/dslv/DragSortListView;->getWidth()I

    move-result v10

    .line 801
    .local v10, "width":I
    if-gez v11, :cond_2

    .line 802
    neg-int v11, v11

    .line 804
    :cond_2
    if-ge v11, v10, :cond_4

    .line 805
    sub-int v0, v10, v11

    int-to-float v0, v0

    int-to-float v2, v10

    div-float v7, v0, v2

    .line 806
    .local v7, "alphaMod":F
    mul-float/2addr v7, v7

    .line 811
    :goto_0
    iget v0, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mCurrFloatAlpha:F

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v0, v2

    mul-float/2addr v0, v7

    float-to-int v5, v0

    .line 813
    .local v5, "alpha":I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 815
    iget-object v0, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iget-object v2, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 816
    invoke-virtual {p1, v3, v3, v9, v8}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 819
    int-to-float v3, v9

    int-to-float v4, v8

    const/16 v6, 0x1f

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    .line 820
    iget-object v0, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 821
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 822
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 780
    .end local v5    # "alpha":I
    .end local v7    # "alphaMod":F
    .end local v8    # "h":I
    .end local v9    # "w":I
    .end local v10    # "width":I
    .end local v11    # "x":I
    :cond_3
    return-void

    .line 808
    .restart local v8    # "h":I
    .restart local v9    # "w":I
    .restart local v10    # "width":I
    .restart local v11    # "x":I
    :cond_4
    const/4 v7, 0x0

    .restart local v7    # "alphaMod":F
    goto :goto_0
.end method

.method public isDragEnabled()Z
    .locals 1

    .prologue
    .line 2488
    iget-boolean v0, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mDragEnabled:Z

    return v0
.end method

.method protected layoutChildren()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2130
    invoke-super {p0}, Landroid/widget/ListView;->layoutChildren()V

    .line 2132
    iget-object v0, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 2133
    iget-object v0, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isLayoutRequested()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mFloatViewOnMeasured:Z

    if-eqz v0, :cond_2

    .line 2139
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/view/View;->layout(IIII)V

    .line 2140
    iput-boolean v3, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mFloatViewOnMeasured:Z

    .line 2129
    :cond_1
    return-void

    .line 2137
    :cond_2
    invoke-direct {p0}, Lcom/android/exsettings/nx/dslv/DragSortListView;->measureFloatView()V

    goto :goto_0
.end method

.method public listViewIntercepted()Z
    .locals 1

    .prologue
    .line 1684
    iget-boolean v0, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mListViewIntercepted:Z

    return v0
.end method

.method protected onDragTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x4

    .line 2146
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    and-int/lit16 v0, v1, 0xff

    .line 2148
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    packed-switch v1, :pswitch_data_0

    .line 2167
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 2150
    :pswitch_0
    iget v1, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mDragState:I

    if-ne v1, v2, :cond_0

    .line 2151
    invoke-virtual {p0}, Lcom/android/exsettings/nx/dslv/DragSortListView;->cancelDrag()V

    .line 2153
    :cond_0
    invoke-direct {p0}, Lcom/android/exsettings/nx/dslv/DragSortListView;->doActionUpOrCancel()V

    goto :goto_0

    .line 2157
    :pswitch_1
    iget v1, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mDragState:I

    if-ne v1, v2, :cond_1

    .line 2158
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/exsettings/nx/dslv/DragSortListView;->stopDrag(Z)Z

    .line 2160
    :cond_1
    invoke-direct {p0}, Lcom/android/exsettings/nx/dslv/DragSortListView;->doActionUpOrCancel()V

    goto :goto_0

    .line 2163
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-direct {p0, v1, v2}, Lcom/android/exsettings/nx/dslv/DragSortListView;->continueDrag(II)V

    goto :goto_0

    .line 2148
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1117
    invoke-super {p0, p1}, Landroid/widget/ListView;->onDraw(Landroid/graphics/Canvas;)V

    .line 1119
    iget-boolean v0, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mTrackDragSort:Z

    if-eqz v0, :cond_0

    .line 1120
    iget-object v0, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mDragSortTracker:Lcom/android/exsettings/nx/dslv/DragSortListView$DragSortTracker;

    invoke-virtual {v0}, Lcom/android/exsettings/nx/dslv/DragSortListView$DragSortTracker;->appendState()V

    .line 1116
    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1691
    iget-boolean v2, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mDragEnabled:Z

    if-nez v2, :cond_0

    .line 1692
    invoke-super {p0, p1}, Landroid/widget/ListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    return v2

    .line 1695
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/exsettings/nx/dslv/DragSortListView;->saveTouchCoords(Landroid/view/MotionEvent;)V

    .line 1696
    iput-boolean v3, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mLastCallWasIntercept:Z

    .line 1698
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    and-int/lit16 v0, v2, 0xff

    .line 1700
    .local v0, "action":I
    if-nez v0, :cond_2

    .line 1701
    iget v2, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mDragState:I

    if-eqz v2, :cond_1

    .line 1703
    iput-boolean v3, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mIgnoreTouchEvent:Z

    .line 1704
    return v3

    .line 1706
    :cond_1
    iput-boolean v3, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mInTouchEvent:Z

    .line 1709
    :cond_2
    const/4 v1, 0x0

    .line 1712
    .local v1, "intercept":Z
    iget-object v2, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    if-eqz v2, :cond_5

    .line 1714
    const/4 v1, 0x1

    .line 1735
    :goto_0
    if-eq v0, v3, :cond_3

    const/4 v2, 0x3

    if-ne v0, v2, :cond_4

    .line 1736
    :cond_3
    iput-boolean v4, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mInTouchEvent:Z

    .line 1739
    :cond_4
    return v1

    .line 1716
    :cond_5
    invoke-super {p0, p1}, Landroid/widget/ListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1717
    iput-boolean v3, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mListViewIntercepted:Z

    .line 1718
    const/4 v1, 0x1

    .line 1721
    :cond_6
    packed-switch v0, :pswitch_data_0

    .line 1727
    :pswitch_0
    if-eqz v1, :cond_7

    .line 1728
    iput v3, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mCancelMethod:I

    goto :goto_0

    .line 1724
    :pswitch_1
    invoke-direct {p0}, Lcom/android/exsettings/nx/dslv/DragSortListView;->doActionUpOrCancel()V

    goto :goto_0

    .line 1730
    :cond_7
    const/4 v2, 0x2

    iput v2, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mCancelMethod:I

    goto :goto_0

    .line 1721
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .locals 1
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 2117
    invoke-super {p0, p1, p2}, Landroid/widget/ListView;->onMeasure(II)V

    .line 2119
    iget-object v0, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 2120
    iget-object v0, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isLayoutRequested()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2121
    invoke-direct {p0}, Lcom/android/exsettings/nx/dslv/DragSortListView;->measureFloatView()V

    .line 2123
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mFloatViewOnMeasured:Z

    .line 2125
    :cond_1
    iput p1, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mWidthMeasureSpec:I

    .line 2116
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 1845
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ListView;->onSizeChanged(IIII)V

    .line 1846
    invoke-direct {p0}, Lcom/android/exsettings/nx/dslv/DragSortListView;->updateScrollStarts()V

    .line 1844
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x0

    .line 1606
    iget-boolean v3, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mIgnoreTouchEvent:Z

    if-eqz v3, :cond_0

    .line 1607
    iput-boolean v4, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mIgnoreTouchEvent:Z

    .line 1608
    return v4

    .line 1611
    :cond_0
    iget-boolean v3, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mDragEnabled:Z

    if-nez v3, :cond_1

    .line 1612
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    return v3

    .line 1615
    :cond_1
    const/4 v2, 0x0

    .line 1617
    .local v2, "more":Z
    iget-boolean v1, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mLastCallWasIntercept:Z

    .line 1618
    .local v1, "lastCallWasIntercept":Z
    iput-boolean v4, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mLastCallWasIntercept:Z

    .line 1620
    if-nez v1, :cond_2

    .line 1621
    invoke-direct {p0, p1}, Lcom/android/exsettings/nx/dslv/DragSortListView;->saveTouchCoords(Landroid/view/MotionEvent;)V

    .line 1625
    :cond_2
    iget v3, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mDragState:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_4

    .line 1626
    invoke-virtual {p0, p1}, Lcom/android/exsettings/nx/dslv/DragSortListView;->onDragTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1627
    const/4 v2, 0x1

    .line 1653
    :cond_3
    :goto_0
    return v2

    .line 1633
    :cond_4
    iget v3, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mDragState:I

    if-nez v3, :cond_5

    .line 1634
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1635
    const/4 v2, 0x1

    .line 1639
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    and-int/lit16 v0, v3, 0xff

    .line 1641
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 1647
    :pswitch_0
    if-eqz v2, :cond_3

    .line 1648
    const/4 v3, 0x1

    iput v3, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mCancelMethod:I

    goto :goto_0

    .line 1644
    :pswitch_1
    invoke-direct {p0}, Lcom/android/exsettings/nx/dslv/DragSortListView;->doActionUpOrCancel()V

    goto :goto_0

    .line 1641
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public removeItem(I)V
    .locals 1
    .param p1, "which"    # I

    .prologue
    .line 1395
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mUseRemoveVelocity:Z

    .line 1396
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/exsettings/nx/dslv/DragSortListView;->removeItem(IF)V

    .line 1393
    return-void
.end method

.method public removeItem(IF)V
    .locals 4
    .param p1, "which"    # I
    .param p2, "velocityX"    # F

    .prologue
    const/4 v3, 0x4

    .line 1407
    iget v1, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mDragState:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mDragState:I

    if-ne v1, v3, :cond_3

    .line 1409
    :cond_0
    iget v1, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mDragState:I

    if-nez v1, :cond_1

    .line 1411
    invoke-virtual {p0}, Lcom/android/exsettings/nx/dslv/DragSortListView;->getHeaderViewsCount()I

    move-result v1

    add-int/2addr v1, p1

    iput v1, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mSrcPos:I

    .line 1412
    iget v1, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mSrcPos:I

    iput v1, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mFirstExpPos:I

    .line 1413
    iget v1, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mSrcPos:I

    iput v1, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mSecondExpPos:I

    .line 1414
    iget v1, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mSrcPos:I

    iput v1, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mFloatPos:I

    .line 1415
    iget v1, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mSrcPos:I

    invoke-virtual {p0}, Lcom/android/exsettings/nx/dslv/DragSortListView;->getFirstVisiblePosition()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/android/exsettings/nx/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1416
    .local v0, "v":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 1417
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1421
    .end local v0    # "v":Landroid/view/View;
    :cond_1
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mDragState:I

    .line 1422
    iput p2, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mRemoveVelocityX:F

    .line 1424
    iget-boolean v1, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mInTouchEvent:Z

    if-eqz v1, :cond_2

    .line 1425
    iget v1, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mCancelMethod:I

    packed-switch v1, :pswitch_data_0

    .line 1435
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mRemoveAnimator:Lcom/android/exsettings/nx/dslv/DragSortListView$RemoveAnimator;

    if-eqz v1, :cond_4

    .line 1436
    iget-object v1, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mRemoveAnimator:Lcom/android/exsettings/nx/dslv/DragSortListView$RemoveAnimator;

    invoke-virtual {v1}, Lcom/android/exsettings/nx/dslv/DragSortListView$RemoveAnimator;->start()V

    .line 1406
    :cond_3
    :goto_1
    return-void

    .line 1427
    :pswitch_0
    iget-object v1, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mCancelEvent:Landroid/view/MotionEvent;

    invoke-super {p0, v1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0

    .line 1430
    :pswitch_1
    iget-object v1, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mCancelEvent:Landroid/view/MotionEvent;

    invoke-super {p0, v1}, Landroid/widget/ListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0

    .line 1438
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/exsettings/nx/dslv/DragSortListView;->doRemoveItem(I)V

    goto :goto_1

    .line 1425
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public requestLayout()V
    .locals 1

    .prologue
    .line 2041
    iget-boolean v0, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mBlockLayoutRequests:Z

    if-nez v0, :cond_0

    .line 2042
    invoke-super {p0}, Landroid/widget/ListView;->requestLayout()V

    .line 2040
    :cond_0
    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 1
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .prologue
    const/4 v0, 0x0

    .line 603
    if-eqz p1, :cond_3

    .line 604
    new-instance v0, Lcom/android/exsettings/nx/dslv/DragSortListView$AdapterWrapper;

    invoke-direct {v0, p0, p1}, Lcom/android/exsettings/nx/dslv/DragSortListView$AdapterWrapper;-><init>(Lcom/android/exsettings/nx/dslv/DragSortListView;Landroid/widget/ListAdapter;)V

    iput-object v0, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mAdapterWrapper:Lcom/android/exsettings/nx/dslv/DragSortListView$AdapterWrapper;

    .line 605
    iget-object v0, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mObserver:Landroid/database/DataSetObserver;

    invoke-interface {p1, v0}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 607
    instance-of v0, p1, Lcom/android/exsettings/nx/dslv/DragSortListView$DropListener;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 608
    check-cast v0, Lcom/android/exsettings/nx/dslv/DragSortListView$DropListener;

    invoke-virtual {p0, v0}, Lcom/android/exsettings/nx/dslv/DragSortListView;->setDropListener(Lcom/android/exsettings/nx/dslv/DragSortListView$DropListener;)V

    .line 610
    :cond_0
    instance-of v0, p1, Lcom/android/exsettings/nx/dslv/DragSortListView$DragListener;

    if-eqz v0, :cond_1

    move-object v0, p1

    .line 611
    check-cast v0, Lcom/android/exsettings/nx/dslv/DragSortListView$DragListener;

    invoke-virtual {p0, v0}, Lcom/android/exsettings/nx/dslv/DragSortListView;->setDragListener(Lcom/android/exsettings/nx/dslv/DragSortListView$DragListener;)V

    .line 613
    :cond_1
    instance-of v0, p1, Lcom/android/exsettings/nx/dslv/DragSortListView$RemoveListener;

    if-eqz v0, :cond_2

    .line 614
    check-cast p1, Lcom/android/exsettings/nx/dslv/DragSortListView$RemoveListener;

    .end local p1    # "adapter":Landroid/widget/ListAdapter;
    invoke-virtual {p0, p1}, Lcom/android/exsettings/nx/dslv/DragSortListView;->setRemoveListener(Lcom/android/exsettings/nx/dslv/DragSortListView$RemoveListener;)V

    .line 620
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mAdapterWrapper:Lcom/android/exsettings/nx/dslv/DragSortListView$AdapterWrapper;

    invoke-super {p0, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 602
    return-void

    .line 617
    .restart local p1    # "adapter":Landroid/widget/ListAdapter;
    :cond_3
    iput-object v0, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mAdapterWrapper:Lcom/android/exsettings/nx/dslv/DragSortListView$AdapterWrapper;

    goto :goto_0
.end method

.method public setDragListener(Lcom/android/exsettings/nx/dslv/DragSortListView$DragListener;)V
    .locals 0
    .param p1, "l"    # Lcom/android/exsettings/nx/dslv/DragSortListView$DragListener;

    .prologue
    .line 2470
    iput-object p1, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mDragListener:Lcom/android/exsettings/nx/dslv/DragSortListView$DragListener;

    .line 2469
    return-void
.end method

.method public setDragScrollStart(F)V
    .locals 0
    .param p1, "heightFraction"    # F

    .prologue
    .line 1751
    invoke-virtual {p0, p1, p1}, Lcom/android/exsettings/nx/dslv/DragSortListView;->setDragScrollStarts(FF)V

    .line 1750
    return-void
.end method

.method public setDragScrollStarts(FF)V
    .locals 2
    .param p1, "upperFrac"    # F
    .param p2, "lowerFrac"    # F

    .prologue
    const/high16 v1, 0x3f000000    # 0.5f

    .line 1765
    cmpl-float v0, p2, v1

    if-lez v0, :cond_1

    .line 1766
    iput v1, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mDragDownScrollStartFrac:F

    .line 1771
    :goto_0
    cmpl-float v0, p1, v1

    if-lez v0, :cond_2

    .line 1772
    iput v1, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mDragUpScrollStartFrac:F

    .line 1777
    :goto_1
    invoke-virtual {p0}, Lcom/android/exsettings/nx/dslv/DragSortListView;->getHeight()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1778
    invoke-direct {p0}, Lcom/android/exsettings/nx/dslv/DragSortListView;->updateScrollStarts()V

    .line 1764
    :cond_0
    return-void

    .line 1768
    :cond_1
    iput p2, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mDragDownScrollStartFrac:F

    goto :goto_0

    .line 1774
    :cond_2
    iput p1, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mDragUpScrollStartFrac:F

    goto :goto_1
.end method

.method public setDropListener(Lcom/android/exsettings/nx/dslv/DragSortListView$DropListener;)V
    .locals 0
    .param p1, "l"    # Lcom/android/exsettings/nx/dslv/DragSortListView$DropListener;

    .prologue
    .line 2504
    iput-object p1, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mDropListener:Lcom/android/exsettings/nx/dslv/DragSortListView$DropListener;

    .line 2503
    return-void
.end method

.method public setRemoveListener(Lcom/android/exsettings/nx/dslv/DragSortListView$RemoveListener;)V
    .locals 0
    .param p1, "l"    # Lcom/android/exsettings/nx/dslv/DragSortListView$RemoveListener;

    .prologue
    .line 2518
    iput-object p1, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mRemoveListener:Lcom/android/exsettings/nx/dslv/DragSortListView$RemoveListener;

    .line 2517
    return-void
.end method

.method public startDrag(IIII)Z
    .locals 6
    .param p1, "position"    # I
    .param p2, "dragFlags"    # I
    .param p3, "deltaX"    # I
    .param p4, "deltaY"    # I

    .prologue
    const/4 v1, 0x0

    .line 2200
    iget-boolean v0, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mInTouchEvent:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mFloatViewManager:Lcom/android/exsettings/nx/dslv/DragSortListView$FloatViewManager;

    if-nez v0, :cond_1

    .line 2201
    :cond_0
    return v1

    .line 2204
    :cond_1
    iget-object v0, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mFloatViewManager:Lcom/android/exsettings/nx/dslv/DragSortListView$FloatViewManager;

    invoke-interface {v0, p1}, Lcom/android/exsettings/nx/dslv/DragSortListView$FloatViewManager;->onCreateFloatView(I)Landroid/view/View;

    move-result-object v2

    .line 2206
    .local v2, "v":Landroid/view/View;
    if-nez v2, :cond_2

    .line 2207
    return v1

    :cond_2
    move-object v0, p0

    move v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .line 2209
    invoke-virtual/range {v0 .. v5}, Lcom/android/exsettings/nx/dslv/DragSortListView;->startDrag(ILandroid/view/View;III)Z

    move-result v0

    return v0
.end method

.method public startDrag(ILandroid/view/View;III)Z
    .locals 7
    .param p1, "position"    # I
    .param p2, "floatView"    # Landroid/view/View;
    .param p3, "dragFlags"    # I
    .param p4, "deltaX"    # I
    .param p5, "deltaY"    # I

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 2237
    iget v2, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mDragState:I

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mInTouchEvent:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    if-eqz v2, :cond_1

    .line 2239
    :cond_0
    return v3

    .line 2237
    :cond_1
    if-eqz p2, :cond_0

    .line 2238
    iget-boolean v2, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mDragEnabled:Z

    if-eqz v2, :cond_0

    .line 2242
    invoke-virtual {p0}, Lcom/android/exsettings/nx/dslv/DragSortListView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 2243
    invoke-virtual {p0}, Lcom/android/exsettings/nx/dslv/DragSortListView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-interface {v2, v5}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 2246
    :cond_2
    invoke-virtual {p0}, Lcom/android/exsettings/nx/dslv/DragSortListView;->getHeaderViewsCount()I

    move-result v2

    add-int v0, p1, v2

    .line 2247
    .local v0, "pos":I
    iput v0, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mFirstExpPos:I

    .line 2248
    iput v0, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mSecondExpPos:I

    .line 2249
    iput v0, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mSrcPos:I

    .line 2250
    iput v0, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mFloatPos:I

    .line 2253
    iput v6, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mDragState:I

    .line 2254
    iput v3, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mDragFlags:I

    .line 2255
    iget v2, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mDragFlags:I

    or-int/2addr v2, p3

    iput v2, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mDragFlags:I

    .line 2257
    iput-object p2, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    .line 2258
    invoke-direct {p0}, Lcom/android/exsettings/nx/dslv/DragSortListView;->measureFloatView()V

    .line 2260
    iput p4, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mDragDeltaX:I

    .line 2261
    iput p5, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mDragDeltaY:I

    .line 2262
    iget v2, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mY:I

    iput v2, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mDragStartY:I

    .line 2265
    iget-object v2, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iget v3, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mX:I

    iget v4, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mDragDeltaX:I

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Point;->x:I

    .line 2266
    iget-object v2, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iget v3, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mY:I

    iget v4, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mDragDeltaY:I

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Point;->y:I

    .line 2269
    iget v2, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mSrcPos:I

    invoke-virtual {p0}, Lcom/android/exsettings/nx/dslv/DragSortListView;->getFirstVisiblePosition()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0, v2}, Lcom/android/exsettings/nx/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2271
    .local v1, "srcItem":Landroid/view/View;
    if-eqz v1, :cond_3

    .line 2272
    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2275
    :cond_3
    iget-boolean v2, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mTrackDragSort:Z

    if-eqz v2, :cond_4

    .line 2276
    iget-object v2, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mDragSortTracker:Lcom/android/exsettings/nx/dslv/DragSortListView$DragSortTracker;

    invoke-virtual {v2}, Lcom/android/exsettings/nx/dslv/DragSortListView$DragSortTracker;->startTracking()V

    .line 2281
    :cond_4
    iget v2, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mCancelMethod:I

    packed-switch v2, :pswitch_data_0

    .line 2290
    :goto_0
    invoke-virtual {p0}, Lcom/android/exsettings/nx/dslv/DragSortListView;->requestLayout()V

    .line 2292
    iget-object v2, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mLiftAnimator:Lcom/android/exsettings/nx/dslv/DragSortListView$LiftAnimator;

    if-eqz v2, :cond_5

    .line 2293
    iget-object v2, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mLiftAnimator:Lcom/android/exsettings/nx/dslv/DragSortListView$LiftAnimator;

    invoke-virtual {v2}, Lcom/android/exsettings/nx/dslv/DragSortListView$LiftAnimator;->start()V

    .line 2296
    :cond_5
    return v5

    .line 2283
    :pswitch_0
    iget-object v2, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mCancelEvent:Landroid/view/MotionEvent;

    invoke-super {p0, v2}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0

    .line 2286
    :pswitch_1
    iget-object v2, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mCancelEvent:Landroid/view/MotionEvent;

    invoke-super {p0, v2}, Landroid/widget/ListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0

    .line 2281
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public stopDrag(Z)Z
    .locals 1
    .param p1, "remove"    # Z

    .prologue
    .line 1569
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mUseRemoveVelocity:Z

    .line 1570
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/exsettings/nx/dslv/DragSortListView;->stopDrag(ZF)Z

    move-result v0

    return v0
.end method

.method public stopDrag(ZF)Z
    .locals 3
    .param p1, "remove"    # Z
    .param p2, "velocityX"    # F

    .prologue
    const/4 v2, 0x1

    .line 1580
    iget-object v0, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 1581
    iget-object v0, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mDragScroller:Lcom/android/exsettings/nx/dslv/DragSortListView$DragScroller;

    invoke-virtual {v0, v2}, Lcom/android/exsettings/nx/dslv/DragSortListView$DragScroller;->stopScrolling(Z)V

    .line 1583
    if-eqz p1, :cond_1

    .line 1584
    iget v0, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mSrcPos:I

    invoke-virtual {p0}, Lcom/android/exsettings/nx/dslv/DragSortListView;->getHeaderViewsCount()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0, p2}, Lcom/android/exsettings/nx/dslv/DragSortListView;->removeItem(IF)V

    .line 1593
    :goto_0
    iget-boolean v0, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mTrackDragSort:Z

    if-eqz v0, :cond_0

    .line 1594
    iget-object v0, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mDragSortTracker:Lcom/android/exsettings/nx/dslv/DragSortListView$DragSortTracker;

    invoke-virtual {v0}, Lcom/android/exsettings/nx/dslv/DragSortListView$DragSortTracker;->stopTracking()V

    .line 1597
    :cond_0
    return v2

    .line 1586
    :cond_1
    iget-object v0, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mDropAnimator:Lcom/android/exsettings/nx/dslv/DragSortListView$DropAnimator;

    if-eqz v0, :cond_2

    .line 1587
    iget-object v0, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mDropAnimator:Lcom/android/exsettings/nx/dslv/DragSortListView$DropAnimator;

    invoke-virtual {v0}, Lcom/android/exsettings/nx/dslv/DragSortListView$DropAnimator;->start()V

    goto :goto_0

    .line 1589
    :cond_2
    invoke-direct {p0}, Lcom/android/exsettings/nx/dslv/DragSortListView;->dropFloatView()V

    goto :goto_0

    .line 1600
    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method public stopDragWithVelocity(ZF)Z
    .locals 1
    .param p1, "remove"    # Z
    .param p2, "velocityX"    # F

    .prologue
    .line 1575
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/exsettings/nx/dslv/DragSortListView;->mUseRemoveVelocity:Z

    .line 1576
    invoke-virtual {p0, p1, p2}, Lcom/android/exsettings/nx/dslv/DragSortListView;->stopDrag(ZF)Z

    move-result v0

    return v0
.end method
