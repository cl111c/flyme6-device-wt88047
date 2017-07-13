.class Lcom/android/exsettings/nx/dslv/DragSortListView$RemoveAnimator;
.super Lcom/android/exsettings/nx/dslv/DragSortListView$SmoothAnimator;
.source "DragSortListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/nx/dslv/DragSortListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RemoveAnimator"
.end annotation


# instance fields
.field private mFirstChildHeight:I

.field private mFirstPos:I

.field private mFirstStartBlank:F

.field private mFloatLocX:F

.field private mSecondChildHeight:I

.field private mSecondPos:I

.field private mSecondStartBlank:F

.field private srcPos:I

.field final synthetic this$0:Lcom/android/exsettings/nx/dslv/DragSortListView;


# direct methods
.method public constructor <init>(Lcom/android/exsettings/nx/dslv/DragSortListView;FI)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/exsettings/nx/dslv/DragSortListView;
    .param p2, "smoothness"    # F
    .param p3, "duration"    # I

    .prologue
    const/4 v0, -0x1

    .line 1307
    iput-object p1, p0, Lcom/android/exsettings/nx/dslv/DragSortListView$RemoveAnimator;->this$0:Lcom/android/exsettings/nx/dslv/DragSortListView;

    .line 1308
    invoke-direct {p0, p1, p2, p3}, Lcom/android/exsettings/nx/dslv/DragSortListView$SmoothAnimator;-><init>(Lcom/android/exsettings/nx/dslv/DragSortListView;FI)V

    .line 1300
    iput v0, p0, Lcom/android/exsettings/nx/dslv/DragSortListView$RemoveAnimator;->mFirstChildHeight:I

    .line 1301
    iput v0, p0, Lcom/android/exsettings/nx/dslv/DragSortListView$RemoveAnimator;->mSecondChildHeight:I

    .line 1307
    return-void
.end method


# virtual methods
.method public onStart()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/high16 v4, 0x40000000    # 2.0f

    const/4 v1, -0x1

    const/4 v5, 0x0

    .line 1313
    iput v1, p0, Lcom/android/exsettings/nx/dslv/DragSortListView$RemoveAnimator;->mFirstChildHeight:I

    .line 1314
    iput v1, p0, Lcom/android/exsettings/nx/dslv/DragSortListView$RemoveAnimator;->mSecondChildHeight:I

    .line 1315
    iget-object v3, p0, Lcom/android/exsettings/nx/dslv/DragSortListView$RemoveAnimator;->this$0:Lcom/android/exsettings/nx/dslv/DragSortListView;

    invoke-static {v3}, Lcom/android/exsettings/nx/dslv/DragSortListView;->-get5(Lcom/android/exsettings/nx/dslv/DragSortListView;)I

    move-result v3

    iput v3, p0, Lcom/android/exsettings/nx/dslv/DragSortListView$RemoveAnimator;->mFirstPos:I

    .line 1316
    iget-object v3, p0, Lcom/android/exsettings/nx/dslv/DragSortListView$RemoveAnimator;->this$0:Lcom/android/exsettings/nx/dslv/DragSortListView;

    invoke-static {v3}, Lcom/android/exsettings/nx/dslv/DragSortListView;->-get16(Lcom/android/exsettings/nx/dslv/DragSortListView;)I

    move-result v3

    iput v3, p0, Lcom/android/exsettings/nx/dslv/DragSortListView$RemoveAnimator;->mSecondPos:I

    .line 1317
    iget-object v3, p0, Lcom/android/exsettings/nx/dslv/DragSortListView$RemoveAnimator;->this$0:Lcom/android/exsettings/nx/dslv/DragSortListView;

    invoke-static {v3}, Lcom/android/exsettings/nx/dslv/DragSortListView;->-get17(Lcom/android/exsettings/nx/dslv/DragSortListView;)I

    move-result v3

    iput v3, p0, Lcom/android/exsettings/nx/dslv/DragSortListView$RemoveAnimator;->srcPos:I

    .line 1318
    iget-object v3, p0, Lcom/android/exsettings/nx/dslv/DragSortListView$RemoveAnimator;->this$0:Lcom/android/exsettings/nx/dslv/DragSortListView;

    invoke-static {v3, v2}, Lcom/android/exsettings/nx/dslv/DragSortListView;->-set2(Lcom/android/exsettings/nx/dslv/DragSortListView;I)I

    .line 1320
    iget-object v3, p0, Lcom/android/exsettings/nx/dslv/DragSortListView$RemoveAnimator;->this$0:Lcom/android/exsettings/nx/dslv/DragSortListView;

    invoke-static {v3}, Lcom/android/exsettings/nx/dslv/DragSortListView;->-get6(Lcom/android/exsettings/nx/dslv/DragSortListView;)Landroid/graphics/Point;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    iput v3, p0, Lcom/android/exsettings/nx/dslv/DragSortListView$RemoveAnimator;->mFloatLocX:F

    .line 1321
    iget-object v3, p0, Lcom/android/exsettings/nx/dslv/DragSortListView$RemoveAnimator;->this$0:Lcom/android/exsettings/nx/dslv/DragSortListView;

    invoke-static {v3}, Lcom/android/exsettings/nx/dslv/DragSortListView;->-get19(Lcom/android/exsettings/nx/dslv/DragSortListView;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1322
    iget-object v3, p0, Lcom/android/exsettings/nx/dslv/DragSortListView$RemoveAnimator;->this$0:Lcom/android/exsettings/nx/dslv/DragSortListView;

    invoke-virtual {v3}, Lcom/android/exsettings/nx/dslv/DragSortListView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float v0, v4, v3

    .line 1323
    .local v0, "minVelocity":F
    iget-object v3, p0, Lcom/android/exsettings/nx/dslv/DragSortListView$RemoveAnimator;->this$0:Lcom/android/exsettings/nx/dslv/DragSortListView;

    invoke-static {v3}, Lcom/android/exsettings/nx/dslv/DragSortListView;->-get14(Lcom/android/exsettings/nx/dslv/DragSortListView;)F

    move-result v3

    cmpl-float v3, v3, v5

    if-nez v3, :cond_2

    .line 1324
    iget-object v3, p0, Lcom/android/exsettings/nx/dslv/DragSortListView$RemoveAnimator;->this$0:Lcom/android/exsettings/nx/dslv/DragSortListView;

    iget v4, p0, Lcom/android/exsettings/nx/dslv/DragSortListView$RemoveAnimator;->mFloatLocX:F

    cmpg-float v4, v4, v5

    if-gez v4, :cond_1

    :goto_0
    int-to-float v1, v1

    mul-float/2addr v1, v0

    invoke-static {v3, v1}, Lcom/android/exsettings/nx/dslv/DragSortListView;->-set3(Lcom/android/exsettings/nx/dslv/DragSortListView;F)F

    .line 1312
    .end local v0    # "minVelocity":F
    :cond_0
    :goto_1
    return-void

    .restart local v0    # "minVelocity":F
    :cond_1
    move v1, v2

    .line 1324
    goto :goto_0

    .line 1326
    :cond_2
    mul-float/2addr v0, v4

    .line 1327
    iget-object v1, p0, Lcom/android/exsettings/nx/dslv/DragSortListView$RemoveAnimator;->this$0:Lcom/android/exsettings/nx/dslv/DragSortListView;

    invoke-static {v1}, Lcom/android/exsettings/nx/dslv/DragSortListView;->-get14(Lcom/android/exsettings/nx/dslv/DragSortListView;)F

    move-result v1

    cmpg-float v1, v1, v5

    if-gez v1, :cond_3

    iget-object v1, p0, Lcom/android/exsettings/nx/dslv/DragSortListView$RemoveAnimator;->this$0:Lcom/android/exsettings/nx/dslv/DragSortListView;

    invoke-static {v1}, Lcom/android/exsettings/nx/dslv/DragSortListView;->-get14(Lcom/android/exsettings/nx/dslv/DragSortListView;)F

    move-result v1

    neg-float v2, v0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_3

    .line 1328
    iget-object v1, p0, Lcom/android/exsettings/nx/dslv/DragSortListView$RemoveAnimator;->this$0:Lcom/android/exsettings/nx/dslv/DragSortListView;

    neg-float v2, v0

    invoke-static {v1, v2}, Lcom/android/exsettings/nx/dslv/DragSortListView;->-set3(Lcom/android/exsettings/nx/dslv/DragSortListView;F)F

    goto :goto_1

    .line 1329
    :cond_3
    iget-object v1, p0, Lcom/android/exsettings/nx/dslv/DragSortListView$RemoveAnimator;->this$0:Lcom/android/exsettings/nx/dslv/DragSortListView;

    invoke-static {v1}, Lcom/android/exsettings/nx/dslv/DragSortListView;->-get14(Lcom/android/exsettings/nx/dslv/DragSortListView;)F

    move-result v1

    cmpl-float v1, v1, v5

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/android/exsettings/nx/dslv/DragSortListView$RemoveAnimator;->this$0:Lcom/android/exsettings/nx/dslv/DragSortListView;

    invoke-static {v1}, Lcom/android/exsettings/nx/dslv/DragSortListView;->-get14(Lcom/android/exsettings/nx/dslv/DragSortListView;)F

    move-result v1

    cmpg-float v1, v1, v0

    if-gez v1, :cond_0

    .line 1330
    iget-object v1, p0, Lcom/android/exsettings/nx/dslv/DragSortListView$RemoveAnimator;->this$0:Lcom/android/exsettings/nx/dslv/DragSortListView;

    invoke-static {v1, v0}, Lcom/android/exsettings/nx/dslv/DragSortListView;->-set3(Lcom/android/exsettings/nx/dslv/DragSortListView;F)F

    goto :goto_1

    .line 1333
    .end local v0    # "minVelocity":F
    :cond_4
    iget-object v1, p0, Lcom/android/exsettings/nx/dslv/DragSortListView$RemoveAnimator;->this$0:Lcom/android/exsettings/nx/dslv/DragSortListView;

    invoke-static {v1}, Lcom/android/exsettings/nx/dslv/DragSortListView;->-wrap5(Lcom/android/exsettings/nx/dslv/DragSortListView;)V

    goto :goto_1
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 1389
    iget-object v0, p0, Lcom/android/exsettings/nx/dslv/DragSortListView$RemoveAnimator;->this$0:Lcom/android/exsettings/nx/dslv/DragSortListView;

    invoke-static {v0}, Lcom/android/exsettings/nx/dslv/DragSortListView;->-wrap8(Lcom/android/exsettings/nx/dslv/DragSortListView;)V

    .line 1388
    return-void
.end method

.method public onUpdate(FF)V
    .locals 12
    .param p1, "frac"    # F
    .param p2, "smoothFrac"    # F

    .prologue
    .line 1339
    const/high16 v8, 0x3f800000    # 1.0f

    sub-float v3, v8, p2

    .line 1341
    .local v3, "f":F
    iget-object v8, p0, Lcom/android/exsettings/nx/dslv/DragSortListView$RemoveAnimator;->this$0:Lcom/android/exsettings/nx/dslv/DragSortListView;

    invoke-virtual {v8}, Lcom/android/exsettings/nx/dslv/DragSortListView;->getFirstVisiblePosition()I

    move-result v4

    .line 1342
    .local v4, "firstVis":I
    iget-object v8, p0, Lcom/android/exsettings/nx/dslv/DragSortListView$RemoveAnimator;->this$0:Lcom/android/exsettings/nx/dslv/DragSortListView;

    iget v9, p0, Lcom/android/exsettings/nx/dslv/DragSortListView$RemoveAnimator;->mFirstPos:I

    sub-int/2addr v9, v4

    invoke-virtual {v8, v9}, Lcom/android/exsettings/nx/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1346
    .local v5, "item":Landroid/view/View;
    iget-object v8, p0, Lcom/android/exsettings/nx/dslv/DragSortListView$RemoveAnimator;->this$0:Lcom/android/exsettings/nx/dslv/DragSortListView;

    invoke-static {v8}, Lcom/android/exsettings/nx/dslv/DragSortListView;->-get19(Lcom/android/exsettings/nx/dslv/DragSortListView;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1347
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    iget-wide v10, p0, Lcom/android/exsettings/nx/dslv/DragSortListView$RemoveAnimator;->mStartTime:J

    sub-long/2addr v8, v10

    long-to-float v8, v8

    const/high16 v9, 0x447a0000    # 1000.0f

    div-float v1, v8, v9

    .line 1348
    .local v1, "dt":F
    const/4 v8, 0x0

    cmpl-float v8, v1, v8

    if-nez v8, :cond_0

    .line 1349
    return-void

    .line 1350
    :cond_0
    iget-object v8, p0, Lcom/android/exsettings/nx/dslv/DragSortListView$RemoveAnimator;->this$0:Lcom/android/exsettings/nx/dslv/DragSortListView;

    invoke-static {v8}, Lcom/android/exsettings/nx/dslv/DragSortListView;->-get14(Lcom/android/exsettings/nx/dslv/DragSortListView;)F

    move-result v8

    mul-float v2, v8, v1

    .line 1351
    .local v2, "dx":F
    iget-object v8, p0, Lcom/android/exsettings/nx/dslv/DragSortListView$RemoveAnimator;->this$0:Lcom/android/exsettings/nx/dslv/DragSortListView;

    invoke-virtual {v8}, Lcom/android/exsettings/nx/dslv/DragSortListView;->getWidth()I

    move-result v7

    .line 1352
    .local v7, "w":I
    iget-object v9, p0, Lcom/android/exsettings/nx/dslv/DragSortListView$RemoveAnimator;->this$0:Lcom/android/exsettings/nx/dslv/DragSortListView;

    invoke-static {v9}, Lcom/android/exsettings/nx/dslv/DragSortListView;->-get14(Lcom/android/exsettings/nx/dslv/DragSortListView;)F

    move-result v10

    iget-object v8, p0, Lcom/android/exsettings/nx/dslv/DragSortListView$RemoveAnimator;->this$0:Lcom/android/exsettings/nx/dslv/DragSortListView;

    invoke-static {v8}, Lcom/android/exsettings/nx/dslv/DragSortListView;->-get14(Lcom/android/exsettings/nx/dslv/DragSortListView;)F

    move-result v8

    const/4 v11, 0x0

    cmpl-float v8, v8, v11

    if-lez v8, :cond_1

    const/4 v8, 0x1

    :goto_0
    int-to-float v8, v8

    mul-float/2addr v8, v1

    int-to-float v11, v7

    mul-float/2addr v8, v11

    add-float/2addr v8, v10

    invoke-static {v9, v8}, Lcom/android/exsettings/nx/dslv/DragSortListView;->-set3(Lcom/android/exsettings/nx/dslv/DragSortListView;F)F

    .line 1353
    iget v8, p0, Lcom/android/exsettings/nx/dslv/DragSortListView$RemoveAnimator;->mFloatLocX:F

    add-float/2addr v8, v2

    iput v8, p0, Lcom/android/exsettings/nx/dslv/DragSortListView$RemoveAnimator;->mFloatLocX:F

    .line 1354
    iget-object v8, p0, Lcom/android/exsettings/nx/dslv/DragSortListView$RemoveAnimator;->this$0:Lcom/android/exsettings/nx/dslv/DragSortListView;

    invoke-static {v8}, Lcom/android/exsettings/nx/dslv/DragSortListView;->-get6(Lcom/android/exsettings/nx/dslv/DragSortListView;)Landroid/graphics/Point;

    move-result-object v8

    iget v9, p0, Lcom/android/exsettings/nx/dslv/DragSortListView$RemoveAnimator;->mFloatLocX:F

    float-to-int v9, v9

    iput v9, v8, Landroid/graphics/Point;->x:I

    .line 1355
    iget v8, p0, Lcom/android/exsettings/nx/dslv/DragSortListView$RemoveAnimator;->mFloatLocX:F

    int-to-float v9, v7

    cmpg-float v8, v8, v9

    if-gez v8, :cond_2

    iget v8, p0, Lcom/android/exsettings/nx/dslv/DragSortListView$RemoveAnimator;->mFloatLocX:F

    neg-int v9, v7

    int-to-float v9, v9

    cmpl-float v8, v8, v9

    if-lez v8, :cond_2

    .line 1356
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/android/exsettings/nx/dslv/DragSortListView$RemoveAnimator;->mStartTime:J

    .line 1357
    iget-object v8, p0, Lcom/android/exsettings/nx/dslv/DragSortListView$RemoveAnimator;->this$0:Lcom/android/exsettings/nx/dslv/DragSortListView;

    const/4 v9, 0x1

    invoke-static {v8, v9}, Lcom/android/exsettings/nx/dslv/DragSortListView;->-wrap6(Lcom/android/exsettings/nx/dslv/DragSortListView;Z)V

    .line 1358
    return-void

    .line 1352
    :cond_1
    const/4 v8, -0x1

    goto :goto_0

    .line 1362
    .end local v1    # "dt":F
    .end local v2    # "dx":F
    .end local v7    # "w":I
    :cond_2
    if-eqz v5, :cond_4

    .line 1363
    iget v8, p0, Lcom/android/exsettings/nx/dslv/DragSortListView$RemoveAnimator;->mFirstChildHeight:I

    const/4 v9, -0x1

    if-ne v8, v9, :cond_3

    .line 1364
    iget-object v8, p0, Lcom/android/exsettings/nx/dslv/DragSortListView$RemoveAnimator;->this$0:Lcom/android/exsettings/nx/dslv/DragSortListView;

    iget v9, p0, Lcom/android/exsettings/nx/dslv/DragSortListView$RemoveAnimator;->mFirstPos:I

    const/4 v10, 0x0

    invoke-static {v8, v9, v5, v10}, Lcom/android/exsettings/nx/dslv/DragSortListView;->-wrap0(Lcom/android/exsettings/nx/dslv/DragSortListView;ILandroid/view/View;Z)I

    move-result v8

    iput v8, p0, Lcom/android/exsettings/nx/dslv/DragSortListView$RemoveAnimator;->mFirstChildHeight:I

    .line 1365
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v8

    iget v9, p0, Lcom/android/exsettings/nx/dslv/DragSortListView$RemoveAnimator;->mFirstChildHeight:I

    sub-int/2addr v8, v9

    int-to-float v8, v8

    iput v8, p0, Lcom/android/exsettings/nx/dslv/DragSortListView$RemoveAnimator;->mFirstStartBlank:F

    .line 1367
    :cond_3
    iget v8, p0, Lcom/android/exsettings/nx/dslv/DragSortListView$RemoveAnimator;->mFirstStartBlank:F

    mul-float/2addr v8, v3

    float-to-int v8, v8

    const/4 v9, 0x1

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1368
    .local v0, "blank":I
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    .line 1369
    .local v6, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget v8, p0, Lcom/android/exsettings/nx/dslv/DragSortListView$RemoveAnimator;->mFirstChildHeight:I

    add-int/2addr v8, v0

    iput v8, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1370
    invoke-virtual {v5, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1372
    .end local v0    # "blank":I
    .end local v6    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_4
    iget v8, p0, Lcom/android/exsettings/nx/dslv/DragSortListView$RemoveAnimator;->mSecondPos:I

    iget v9, p0, Lcom/android/exsettings/nx/dslv/DragSortListView$RemoveAnimator;->mFirstPos:I

    if-eq v8, v9, :cond_6

    .line 1373
    iget-object v8, p0, Lcom/android/exsettings/nx/dslv/DragSortListView$RemoveAnimator;->this$0:Lcom/android/exsettings/nx/dslv/DragSortListView;

    iget v9, p0, Lcom/android/exsettings/nx/dslv/DragSortListView$RemoveAnimator;->mSecondPos:I

    sub-int/2addr v9, v4

    invoke-virtual {v8, v9}, Lcom/android/exsettings/nx/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1374
    if-eqz v5, :cond_6

    .line 1375
    iget v8, p0, Lcom/android/exsettings/nx/dslv/DragSortListView$RemoveAnimator;->mSecondChildHeight:I

    const/4 v9, -0x1

    if-ne v8, v9, :cond_5

    .line 1376
    iget-object v8, p0, Lcom/android/exsettings/nx/dslv/DragSortListView$RemoveAnimator;->this$0:Lcom/android/exsettings/nx/dslv/DragSortListView;

    iget v9, p0, Lcom/android/exsettings/nx/dslv/DragSortListView$RemoveAnimator;->mSecondPos:I

    const/4 v10, 0x0

    invoke-static {v8, v9, v5, v10}, Lcom/android/exsettings/nx/dslv/DragSortListView;->-wrap0(Lcom/android/exsettings/nx/dslv/DragSortListView;ILandroid/view/View;Z)I

    move-result v8

    iput v8, p0, Lcom/android/exsettings/nx/dslv/DragSortListView$RemoveAnimator;->mSecondChildHeight:I

    .line 1377
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v8

    iget v9, p0, Lcom/android/exsettings/nx/dslv/DragSortListView$RemoveAnimator;->mSecondChildHeight:I

    sub-int/2addr v8, v9

    int-to-float v8, v8

    iput v8, p0, Lcom/android/exsettings/nx/dslv/DragSortListView$RemoveAnimator;->mSecondStartBlank:F

    .line 1379
    :cond_5
    iget v8, p0, Lcom/android/exsettings/nx/dslv/DragSortListView$RemoveAnimator;->mSecondStartBlank:F

    mul-float/2addr v8, v3

    float-to-int v8, v8

    const/4 v9, 0x1

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1380
    .restart local v0    # "blank":I
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    .line 1381
    .restart local v6    # "lp":Landroid/view/ViewGroup$LayoutParams;
    iget v8, p0, Lcom/android/exsettings/nx/dslv/DragSortListView$RemoveAnimator;->mSecondChildHeight:I

    add-int/2addr v8, v0

    iput v8, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1382
    invoke-virtual {v5, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1338
    .end local v0    # "blank":I
    .end local v6    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_6
    return-void
.end method
