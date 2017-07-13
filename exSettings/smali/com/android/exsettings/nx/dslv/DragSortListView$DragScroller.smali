.class Lcom/android/exsettings/nx/dslv/DragSortListView$DragScroller;
.super Ljava/lang/Object;
.source "DragSortListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/nx/dslv/DragSortListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DragScroller"
.end annotation


# instance fields
.field private dt:F

.field private dy:I

.field private mAbort:Z

.field private mCurrTime:J

.field private mPrevTime:J

.field private mScrollSpeed:F

.field private mScrolling:Z

.field private scrollDir:I

.field private tStart:J

.field final synthetic this$0:Lcom/android/exsettings/nx/dslv/DragSortListView;


# direct methods
.method public constructor <init>(Lcom/android/exsettings/nx/dslv/DragSortListView;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/exsettings/nx/dslv/DragSortListView;

    .prologue
    .line 2829
    iput-object p1, p0, Lcom/android/exsettings/nx/dslv/DragSortListView$DragScroller;->this$0:Lcom/android/exsettings/nx/dslv/DragSortListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2816
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/exsettings/nx/dslv/DragSortListView$DragScroller;->mScrolling:Z

    .line 2829
    return-void
.end method


# virtual methods
.method public getScrollDir()I
    .locals 1

    .prologue
    .line 2826
    iget-boolean v0, p0, Lcom/android/exsettings/nx/dslv/DragSortListView$DragScroller;->mScrolling:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/exsettings/nx/dslv/DragSortListView$DragScroller;->scrollDir:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public isScrolling()Z
    .locals 1

    .prologue
    .line 2822
    iget-boolean v0, p0, Lcom/android/exsettings/nx/dslv/DragSortListView$DragScroller;->mScrolling:Z

    return v0
.end method

.method public run()V
    .locals 18

    .prologue
    .line 2857
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/exsettings/nx/dslv/DragSortListView$DragScroller;->mAbort:Z

    if-eqz v13, :cond_0

    .line 2858
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/exsettings/nx/dslv/DragSortListView$DragScroller;->mScrolling:Z

    .line 2859
    return-void

    .line 2864
    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/exsettings/nx/dslv/DragSortListView$DragScroller;->this$0:Lcom/android/exsettings/nx/dslv/DragSortListView;

    invoke-virtual {v13}, Lcom/android/exsettings/nx/dslv/DragSortListView;->getFirstVisiblePosition()I

    move-result v3

    .line 2865
    .local v3, "first":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/exsettings/nx/dslv/DragSortListView$DragScroller;->this$0:Lcom/android/exsettings/nx/dslv/DragSortListView;

    invoke-virtual {v13}, Lcom/android/exsettings/nx/dslv/DragSortListView;->getLastVisiblePosition()I

    move-result v4

    .line 2866
    .local v4, "last":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/exsettings/nx/dslv/DragSortListView$DragScroller;->this$0:Lcom/android/exsettings/nx/dslv/DragSortListView;

    invoke-virtual {v13}, Lcom/android/exsettings/nx/dslv/DragSortListView;->getCount()I

    move-result v2

    .line 2867
    .local v2, "count":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/exsettings/nx/dslv/DragSortListView$DragScroller;->this$0:Lcom/android/exsettings/nx/dslv/DragSortListView;

    invoke-virtual {v13}, Lcom/android/exsettings/nx/dslv/DragSortListView;->getPaddingTop()I

    move-result v10

    .line 2868
    .local v10, "padTop":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/exsettings/nx/dslv/DragSortListView$DragScroller;->this$0:Lcom/android/exsettings/nx/dslv/DragSortListView;

    invoke-virtual {v13}, Lcom/android/exsettings/nx/dslv/DragSortListView;->getHeight()I

    move-result v13

    sub-int/2addr v13, v10

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/exsettings/nx/dslv/DragSortListView$DragScroller;->this$0:Lcom/android/exsettings/nx/dslv/DragSortListView;

    invoke-virtual {v14}, Lcom/android/exsettings/nx/dslv/DragSortListView;->getPaddingBottom()I

    move-result v14

    sub-int v5, v13, v14

    .line 2870
    .local v5, "listHeight":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/exsettings/nx/dslv/DragSortListView$DragScroller;->this$0:Lcom/android/exsettings/nx/dslv/DragSortListView;

    invoke-static {v13}, Lcom/android/exsettings/nx/dslv/DragSortListView;->-get20(Lcom/android/exsettings/nx/dslv/DragSortListView;)I

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/exsettings/nx/dslv/DragSortListView$DragScroller;->this$0:Lcom/android/exsettings/nx/dslv/DragSortListView;

    invoke-static {v14}, Lcom/android/exsettings/nx/dslv/DragSortListView;->-get10(Lcom/android/exsettings/nx/dslv/DragSortListView;)I

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/exsettings/nx/dslv/DragSortListView$DragScroller;->this$0:Lcom/android/exsettings/nx/dslv/DragSortListView;

    invoke-static {v15}, Lcom/android/exsettings/nx/dslv/DragSortListView;->-get9(Lcom/android/exsettings/nx/dslv/DragSortListView;)I

    move-result v15

    add-int/2addr v14, v15

    invoke-static {v13, v14}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 2871
    .local v7, "minY":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/exsettings/nx/dslv/DragSortListView$DragScroller;->this$0:Lcom/android/exsettings/nx/dslv/DragSortListView;

    invoke-static {v13}, Lcom/android/exsettings/nx/dslv/DragSortListView;->-get20(Lcom/android/exsettings/nx/dslv/DragSortListView;)I

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/exsettings/nx/dslv/DragSortListView$DragScroller;->this$0:Lcom/android/exsettings/nx/dslv/DragSortListView;

    invoke-static {v14}, Lcom/android/exsettings/nx/dslv/DragSortListView;->-get10(Lcom/android/exsettings/nx/dslv/DragSortListView;)I

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/exsettings/nx/dslv/DragSortListView$DragScroller;->this$0:Lcom/android/exsettings/nx/dslv/DragSortListView;

    invoke-static {v15}, Lcom/android/exsettings/nx/dslv/DragSortListView;->-get9(Lcom/android/exsettings/nx/dslv/DragSortListView;)I

    move-result v15

    sub-int/2addr v14, v15

    invoke-static {v13, v14}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 2873
    .local v6, "maxY":I
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/exsettings/nx/dslv/DragSortListView$DragScroller;->scrollDir:I

    if-nez v13, :cond_4

    .line 2874
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/exsettings/nx/dslv/DragSortListView$DragScroller;->this$0:Lcom/android/exsettings/nx/dslv/DragSortListView;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/android/exsettings/nx/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 2876
    .local v12, "v":Landroid/view/View;
    if-nez v12, :cond_1

    .line 2877
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/exsettings/nx/dslv/DragSortListView$DragScroller;->mScrolling:Z

    .line 2878
    return-void

    .line 2880
    :cond_1
    if-nez v3, :cond_2

    invoke-virtual {v12}, Landroid/view/View;->getTop()I

    move-result v13

    if-ne v13, v10, :cond_2

    .line 2881
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/exsettings/nx/dslv/DragSortListView$DragScroller;->mScrolling:Z

    .line 2882
    return-void

    .line 2885
    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/exsettings/nx/dslv/DragSortListView$DragScroller;->this$0:Lcom/android/exsettings/nx/dslv/DragSortListView;

    invoke-static {v13}, Lcom/android/exsettings/nx/dslv/DragSortListView;->-get15(Lcom/android/exsettings/nx/dslv/DragSortListView;)Lcom/android/exsettings/nx/dslv/DragSortListView$DragScrollProfile;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/exsettings/nx/dslv/DragSortListView$DragScroller;->this$0:Lcom/android/exsettings/nx/dslv/DragSortListView;

    invoke-static {v14}, Lcom/android/exsettings/nx/dslv/DragSortListView;->-get18(Lcom/android/exsettings/nx/dslv/DragSortListView;)F

    move-result v14

    int-to-float v15, v6

    sub-float/2addr v14, v15

    .line 2886
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/exsettings/nx/dslv/DragSortListView$DragScroller;->this$0:Lcom/android/exsettings/nx/dslv/DragSortListView;

    invoke-static {v15}, Lcom/android/exsettings/nx/dslv/DragSortListView;->-get4(Lcom/android/exsettings/nx/dslv/DragSortListView;)F

    move-result v15

    .line 2885
    div-float/2addr v14, v15

    .line 2886
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/exsettings/nx/dslv/DragSortListView$DragScroller;->mPrevTime:J

    move-wide/from16 v16, v0

    .line 2885
    move-wide/from16 v0, v16

    invoke-interface {v13, v14, v0, v1}, Lcom/android/exsettings/nx/dslv/DragSortListView$DragScrollProfile;->getSpeed(FJ)F

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/exsettings/nx/dslv/DragSortListView$DragScroller;->mScrollSpeed:F

    .line 2902
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/android/exsettings/nx/dslv/DragSortListView$DragScroller;->mCurrTime:J

    .line 2903
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/exsettings/nx/dslv/DragSortListView$DragScroller;->mCurrTime:J

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/exsettings/nx/dslv/DragSortListView$DragScroller;->mPrevTime:J

    move-wide/from16 v16, v0

    sub-long v14, v14, v16

    long-to-float v13, v14

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/exsettings/nx/dslv/DragSortListView$DragScroller;->dt:F

    .line 2909
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/exsettings/nx/dslv/DragSortListView$DragScroller;->mScrollSpeed:F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/exsettings/nx/dslv/DragSortListView$DragScroller;->dt:F

    mul-float/2addr v13, v14

    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/exsettings/nx/dslv/DragSortListView$DragScroller;->dy:I

    .line 2912
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/exsettings/nx/dslv/DragSortListView$DragScroller;->dy:I

    if-ltz v13, :cond_7

    .line 2913
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/exsettings/nx/dslv/DragSortListView$DragScroller;->dy:I

    invoke-static {v5, v13}, Ljava/lang/Math;->min(II)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/exsettings/nx/dslv/DragSortListView$DragScroller;->dy:I

    .line 2914
    move v9, v3

    .line 2920
    .local v9, "movePos":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/exsettings/nx/dslv/DragSortListView$DragScroller;->this$0:Lcom/android/exsettings/nx/dslv/DragSortListView;

    sub-int v14, v9, v3

    invoke-virtual {v13, v14}, Lcom/android/exsettings/nx/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 2921
    .local v8, "moveItem":Landroid/view/View;
    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/exsettings/nx/dslv/DragSortListView$DragScroller;->dy:I

    add-int v11, v13, v14

    .line 2923
    .local v11, "top":I
    if-nez v9, :cond_3

    if-le v11, v10, :cond_3

    .line 2924
    move v11, v10

    .line 2928
    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/exsettings/nx/dslv/DragSortListView$DragScroller;->this$0:Lcom/android/exsettings/nx/dslv/DragSortListView;

    const/4 v14, 0x1

    invoke-static {v13, v14}, Lcom/android/exsettings/nx/dslv/DragSortListView;->-set0(Lcom/android/exsettings/nx/dslv/DragSortListView;Z)Z

    .line 2930
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/exsettings/nx/dslv/DragSortListView$DragScroller;->this$0:Lcom/android/exsettings/nx/dslv/DragSortListView;

    sub-int v14, v11, v10

    invoke-virtual {v13, v9, v14}, Lcom/android/exsettings/nx/dslv/DragSortListView;->setSelectionFromTop(II)V

    .line 2931
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/exsettings/nx/dslv/DragSortListView$DragScroller;->this$0:Lcom/android/exsettings/nx/dslv/DragSortListView;

    invoke-virtual {v13}, Lcom/android/exsettings/nx/dslv/DragSortListView;->layoutChildren()V

    .line 2932
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/exsettings/nx/dslv/DragSortListView$DragScroller;->this$0:Lcom/android/exsettings/nx/dslv/DragSortListView;

    invoke-virtual {v13}, Lcom/android/exsettings/nx/dslv/DragSortListView;->invalidate()V

    .line 2934
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/exsettings/nx/dslv/DragSortListView$DragScroller;->this$0:Lcom/android/exsettings/nx/dslv/DragSortListView;

    const/4 v14, 0x0

    invoke-static {v13, v14}, Lcom/android/exsettings/nx/dslv/DragSortListView;->-set0(Lcom/android/exsettings/nx/dslv/DragSortListView;Z)Z

    .line 2937
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/exsettings/nx/dslv/DragSortListView$DragScroller;->this$0:Lcom/android/exsettings/nx/dslv/DragSortListView;

    const/4 v14, 0x0

    invoke-static {v13, v9, v8, v14}, Lcom/android/exsettings/nx/dslv/DragSortListView;->-wrap7(Lcom/android/exsettings/nx/dslv/DragSortListView;ILandroid/view/View;Z)V

    .line 2939
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/exsettings/nx/dslv/DragSortListView$DragScroller;->mCurrTime:J

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/android/exsettings/nx/dslv/DragSortListView$DragScroller;->mPrevTime:J

    .line 2942
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/exsettings/nx/dslv/DragSortListView$DragScroller;->this$0:Lcom/android/exsettings/nx/dslv/DragSortListView;

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Lcom/android/exsettings/nx/dslv/DragSortListView;->post(Ljava/lang/Runnable;)Z

    .line 2856
    return-void

    .line 2888
    .end local v8    # "moveItem":Landroid/view/View;
    .end local v9    # "movePos":I
    .end local v11    # "top":I
    .end local v12    # "v":Landroid/view/View;
    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/exsettings/nx/dslv/DragSortListView$DragScroller;->this$0:Lcom/android/exsettings/nx/dslv/DragSortListView;

    sub-int v14, v4, v3

    invoke-virtual {v13, v14}, Lcom/android/exsettings/nx/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 2889
    .restart local v12    # "v":Landroid/view/View;
    if-nez v12, :cond_5

    .line 2890
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/exsettings/nx/dslv/DragSortListView$DragScroller;->mScrolling:Z

    .line 2891
    return-void

    .line 2893
    :cond_5
    add-int/lit8 v13, v2, -0x1

    if-ne v4, v13, :cond_6

    invoke-virtual {v12}, Landroid/view/View;->getBottom()I

    move-result v13

    add-int v14, v5, v10

    if-gt v13, v14, :cond_6

    .line 2894
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/exsettings/nx/dslv/DragSortListView$DragScroller;->mScrolling:Z

    .line 2895
    return-void

    .line 2898
    :cond_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/exsettings/nx/dslv/DragSortListView$DragScroller;->this$0:Lcom/android/exsettings/nx/dslv/DragSortListView;

    invoke-static {v13}, Lcom/android/exsettings/nx/dslv/DragSortListView;->-get15(Lcom/android/exsettings/nx/dslv/DragSortListView;)Lcom/android/exsettings/nx/dslv/DragSortListView$DragScrollProfile;

    move-result-object v13

    int-to-float v14, v7

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/exsettings/nx/dslv/DragSortListView$DragScroller;->this$0:Lcom/android/exsettings/nx/dslv/DragSortListView;

    invoke-static {v15}, Lcom/android/exsettings/nx/dslv/DragSortListView;->-get0(Lcom/android/exsettings/nx/dslv/DragSortListView;)F

    move-result v15

    sub-float/2addr v14, v15

    .line 2899
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/exsettings/nx/dslv/DragSortListView$DragScroller;->this$0:Lcom/android/exsettings/nx/dslv/DragSortListView;

    invoke-static {v15}, Lcom/android/exsettings/nx/dslv/DragSortListView;->-get2(Lcom/android/exsettings/nx/dslv/DragSortListView;)F

    move-result v15

    .line 2898
    div-float/2addr v14, v15

    .line 2899
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/exsettings/nx/dslv/DragSortListView$DragScroller;->mPrevTime:J

    move-wide/from16 v16, v0

    .line 2898
    move-wide/from16 v0, v16

    invoke-interface {v13, v14, v0, v1}, Lcom/android/exsettings/nx/dslv/DragSortListView$DragScrollProfile;->getSpeed(FJ)F

    move-result v13

    neg-float v13, v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/exsettings/nx/dslv/DragSortListView$DragScroller;->mScrollSpeed:F

    goto/16 :goto_0

    .line 2916
    :cond_7
    neg-int v13, v5

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/exsettings/nx/dslv/DragSortListView$DragScroller;->dy:I

    invoke-static {v13, v14}, Ljava/lang/Math;->max(II)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/exsettings/nx/dslv/DragSortListView$DragScroller;->dy:I

    .line 2917
    move v9, v4

    .restart local v9    # "movePos":I
    goto/16 :goto_1
.end method

.method public startScrolling(I)V
    .locals 2
    .param p1, "dir"    # I

    .prologue
    .line 2833
    iget-boolean v0, p0, Lcom/android/exsettings/nx/dslv/DragSortListView$DragScroller;->mScrolling:Z

    if-nez v0, :cond_0

    .line 2835
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/exsettings/nx/dslv/DragSortListView$DragScroller;->mAbort:Z

    .line 2836
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/exsettings/nx/dslv/DragSortListView$DragScroller;->mScrolling:Z

    .line 2837
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/exsettings/nx/dslv/DragSortListView$DragScroller;->tStart:J

    .line 2838
    iget-wide v0, p0, Lcom/android/exsettings/nx/dslv/DragSortListView$DragScroller;->tStart:J

    iput-wide v0, p0, Lcom/android/exsettings/nx/dslv/DragSortListView$DragScroller;->mPrevTime:J

    .line 2839
    iput p1, p0, Lcom/android/exsettings/nx/dslv/DragSortListView$DragScroller;->scrollDir:I

    .line 2840
    iget-object v0, p0, Lcom/android/exsettings/nx/dslv/DragSortListView$DragScroller;->this$0:Lcom/android/exsettings/nx/dslv/DragSortListView;

    invoke-virtual {v0, p0}, Lcom/android/exsettings/nx/dslv/DragSortListView;->post(Ljava/lang/Runnable;)Z

    .line 2832
    :cond_0
    return-void
.end method

.method public stopScrolling(Z)V
    .locals 1
    .param p1, "now"    # Z

    .prologue
    .line 2845
    if-eqz p1, :cond_0

    .line 2846
    iget-object v0, p0, Lcom/android/exsettings/nx/dslv/DragSortListView$DragScroller;->this$0:Lcom/android/exsettings/nx/dslv/DragSortListView;

    invoke-virtual {v0, p0}, Lcom/android/exsettings/nx/dslv/DragSortListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2847
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/exsettings/nx/dslv/DragSortListView$DragScroller;->mScrolling:Z

    .line 2844
    :goto_0
    return-void

    .line 2849
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/exsettings/nx/dslv/DragSortListView$DragScroller;->mAbort:Z

    goto :goto_0
.end method
