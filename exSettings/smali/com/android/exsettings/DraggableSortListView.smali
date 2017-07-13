.class public Lcom/android/exsettings/DraggableSortListView;
.super Landroid/widget/ListView;
.source "DraggableSortListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exsettings/DraggableSortListView$DragListener;,
        Lcom/android/exsettings/DraggableSortListView$DropListener;
    }
.end annotation


# instance fields
.field private mCoordOffset:I

.field private mDragBitmap:Landroid/graphics/Bitmap;

.field private mDragListener:Lcom/android/exsettings/DraggableSortListView$DragListener;

.field private mDragPoint:I

.field private mDragPos:I

.field private mDragView:Landroid/widget/ImageView;

.field private mDropListener:Lcom/android/exsettings/DraggableSortListView$DropListener;

.field private mFirstDragPos:I

.field private mHeight:I

.field private mItemHeight:I

.field private mLowerBound:I

.field private mTempRect:Landroid/graphics/Rect;

.field private final mTouchSlop:I

.field private mUpperBound:I

.field private mWindowManager:Landroid/view/WindowManager;

.field private mWindowParams:Landroid/view/WindowManager$LayoutParams;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 65
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 59
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/exsettings/DraggableSortListView;->mTempRect:Landroid/graphics/Rect;

    .line 66
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/android/exsettings/DraggableSortListView;->mTouchSlop:I

    .line 64
    return-void
.end method

.method private adjustScrollBounds(I)V
    .locals 1
    .param p1, "y"    # I

    .prologue
    .line 160
    iget v0, p0, Lcom/android/exsettings/DraggableSortListView;->mHeight:I

    div-int/lit8 v0, v0, 0x3

    if-lt p1, v0, :cond_0

    .line 161
    iget v0, p0, Lcom/android/exsettings/DraggableSortListView;->mHeight:I

    div-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/android/exsettings/DraggableSortListView;->mUpperBound:I

    .line 163
    :cond_0
    iget v0, p0, Lcom/android/exsettings/DraggableSortListView;->mHeight:I

    mul-int/lit8 v0, v0, 0x2

    div-int/lit8 v0, v0, 0x3

    if-gt p1, v0, :cond_1

    .line 164
    iget v0, p0, Lcom/android/exsettings/DraggableSortListView;->mHeight:I

    mul-int/lit8 v0, v0, 0x2

    div-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/android/exsettings/DraggableSortListView;->mLowerBound:I

    .line 159
    :cond_1
    return-void
.end method

.method private doExpansion()V
    .locals 9

    .prologue
    .line 209
    iget v7, p0, Lcom/android/exsettings/DraggableSortListView;->mDragPos:I

    invoke-virtual {p0}, Lcom/android/exsettings/DraggableSortListView;->getFirstVisiblePosition()I

    move-result v8

    sub-int v0, v7, v8

    .line 210
    .local v0, "childnum":I
    iget v7, p0, Lcom/android/exsettings/DraggableSortListView;->mDragPos:I

    iget v8, p0, Lcom/android/exsettings/DraggableSortListView;->mFirstDragPos:I

    if-le v7, v8, :cond_0

    .line 211
    add-int/lit8 v0, v0, 0x1

    .line 214
    :cond_0
    iget v7, p0, Lcom/android/exsettings/DraggableSortListView;->mFirstDragPos:I

    invoke-virtual {p0}, Lcom/android/exsettings/DraggableSortListView;->getFirstVisiblePosition()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {p0, v7}, Lcom/android/exsettings/DraggableSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 216
    .local v1, "first":Landroid/view/View;
    const/4 v3, 0x0

    .line 217
    .local v3, "i":I
    :goto_0
    invoke-virtual {p0, v3}, Lcom/android/exsettings/DraggableSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 218
    .local v6, "vv":Landroid/view/View;
    if-nez v6, :cond_1

    .line 208
    return-void

    .line 221
    :cond_1
    iget v2, p0, Lcom/android/exsettings/DraggableSortListView;->mItemHeight:I

    .line 222
    .local v2, "height":I
    const/4 v5, 0x0

    .line 223
    .local v5, "visibility":I
    invoke-virtual {v6, v1}, Landroid/view/View;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 225
    iget v7, p0, Lcom/android/exsettings/DraggableSortListView;->mDragPos:I

    iget v8, p0, Lcom/android/exsettings/DraggableSortListView;->mFirstDragPos:I

    if-ne v7, v8, :cond_3

    .line 227
    const/4 v5, 0x4

    .line 237
    :cond_2
    :goto_1
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 238
    .local v4, "params":Landroid/view/ViewGroup$LayoutParams;
    iput v2, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 239
    invoke-virtual {v6, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 240
    invoke-virtual {v6, v5}, Landroid/view/View;->setVisibility(I)V

    .line 216
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 230
    .end local v4    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_3
    const/4 v2, 0x1

    goto :goto_1

    .line 232
    :cond_4
    if-ne v3, v0, :cond_2

    .line 233
    iget v7, p0, Lcom/android/exsettings/DraggableSortListView;->mDragPos:I

    invoke-virtual {p0}, Lcom/android/exsettings/DraggableSortListView;->getCount()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    if-ge v7, v8, :cond_2

    .line 234
    iget v7, p0, Lcom/android/exsettings/DraggableSortListView;->mItemHeight:I

    mul-int/lit8 v2, v7, 0x2

    goto :goto_1
.end method

.method private dragView(II)V
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 336
    iget-object v0, p0, Lcom/android/exsettings/DraggableSortListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/android/exsettings/DraggableSortListView;->mDragPoint:I

    sub-int v1, p2, v1

    iget v2, p0, Lcom/android/exsettings/DraggableSortListView;->mCoordOffset:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 337
    iget-object v0, p0, Lcom/android/exsettings/DraggableSortListView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/exsettings/DraggableSortListView;->mDragView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/exsettings/DraggableSortListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 335
    return-void
.end method

.method private getItemForPosition(I)I
    .locals 5
    .param p1, "y"    # I

    .prologue
    const/4 v4, 0x0

    .line 145
    iget v2, p0, Lcom/android/exsettings/DraggableSortListView;->mDragPoint:I

    sub-int v2, p1, v2

    iget v3, p0, Lcom/android/exsettings/DraggableSortListView;->mItemHeight:I

    div-int/lit8 v3, v3, 0x2

    sub-int v0, v2, v3

    .line 146
    .local v0, "adjustedy":I
    invoke-direct {p0, v4, v0}, Lcom/android/exsettings/DraggableSortListView;->myPointToPosition(II)I

    move-result v1

    .line 147
    .local v1, "pos":I
    if-ltz v1, :cond_1

    .line 148
    iget v2, p0, Lcom/android/exsettings/DraggableSortListView;->mFirstDragPos:I

    if-gt v1, v2, :cond_0

    .line 149
    add-int/lit8 v1, v1, 0x1

    .line 156
    :cond_0
    :goto_0
    return v1

    .line 151
    :cond_1
    if-gez v0, :cond_0

    .line 154
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private myPointToPosition(II)I
    .locals 6
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 123
    if-gez p2, :cond_0

    .line 126
    iget v5, p0, Lcom/android/exsettings/DraggableSortListView;->mItemHeight:I

    add-int/2addr v5, p2

    invoke-direct {p0, p1, v5}, Lcom/android/exsettings/DraggableSortListView;->myPointToPosition(II)I

    move-result v4

    .line 127
    .local v4, "pos":I
    if-lez v4, :cond_0

    .line 128
    add-int/lit8 v5, v4, -0x1

    return v5

    .line 132
    .end local v4    # "pos":I
    :cond_0
    iget-object v2, p0, Lcom/android/exsettings/DraggableSortListView;->mTempRect:Landroid/graphics/Rect;

    .line 133
    .local v2, "frame":Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/android/exsettings/DraggableSortListView;->getChildCount()I

    move-result v1

    .line 134
    .local v1, "count":I
    add-int/lit8 v3, v1, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_2

    .line 135
    invoke-virtual {p0, v3}, Lcom/android/exsettings/DraggableSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 136
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 137
    invoke-virtual {v2, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 138
    invoke-virtual {p0}, Lcom/android/exsettings/DraggableSortListView;->getFirstVisiblePosition()I

    move-result v5

    add-int/2addr v5, v3

    return v5

    .line 134
    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 141
    .end local v0    # "child":Landroid/view/View;
    :cond_2
    const/4 v5, -0x1

    return v5
.end method

.method private startDragging(Landroid/graphics/Bitmap;II)V
    .locals 7
    .param p1, "bm"    # Landroid/graphics/Bitmap;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    const/4 v6, -0x2

    .line 305
    invoke-direct {p0}, Lcom/android/exsettings/DraggableSortListView;->stopDragging()V

    .line 307
    new-instance v3, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v3}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v3, p0, Lcom/android/exsettings/DraggableSortListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    .line 308
    iget-object v3, p0, Lcom/android/exsettings/DraggableSortListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v4, 0x33

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 309
    iget-object v3, p0, Lcom/android/exsettings/DraggableSortListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput p2, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 310
    iget-object v3, p0, Lcom/android/exsettings/DraggableSortListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v4, p0, Lcom/android/exsettings/DraggableSortListView;->mDragPoint:I

    sub-int v4, p3, v4

    iget v5, p0, Lcom/android/exsettings/DraggableSortListView;->mCoordOffset:I

    add-int/2addr v4, v5

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 312
    iget-object v3, p0, Lcom/android/exsettings/DraggableSortListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput v6, v3, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 313
    iget-object v3, p0, Lcom/android/exsettings/DraggableSortListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput v6, v3, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 314
    iget-object v3, p0, Lcom/android/exsettings/DraggableSortListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v4, 0x398

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 319
    iget-object v3, p0, Lcom/android/exsettings/DraggableSortListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v4, -0x3

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 320
    iget-object v3, p0, Lcom/android/exsettings/DraggableSortListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v4, 0x0

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 322
    invoke-virtual {p0}, Lcom/android/exsettings/DraggableSortListView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 323
    .local v1, "context":Landroid/content/Context;
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 324
    .local v2, "v":Landroid/widget/ImageView;
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e0011

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 325
    .local v0, "backGroundColor":I
    const v3, 0x3f333333    # 0.7f

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 326
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 327
    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 328
    iput-object p1, p0, Lcom/android/exsettings/DraggableSortListView;->mDragBitmap:Landroid/graphics/Bitmap;

    .line 330
    const-string/jumbo v3, "window"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    iput-object v3, p0, Lcom/android/exsettings/DraggableSortListView;->mWindowManager:Landroid/view/WindowManager;

    .line 331
    iget-object v3, p0, Lcom/android/exsettings/DraggableSortListView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v4, p0, Lcom/android/exsettings/DraggableSortListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v3, v2, v4}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 332
    iput-object v2, p0, Lcom/android/exsettings/DraggableSortListView;->mDragView:Landroid/widget/ImageView;

    .line 304
    return-void
.end method

.method private stopDragging()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 341
    iget-object v1, p0, Lcom/android/exsettings/DraggableSortListView;->mDragView:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 342
    iget-object v1, p0, Lcom/android/exsettings/DraggableSortListView;->mDragView:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 343
    invoke-virtual {p0}, Lcom/android/exsettings/DraggableSortListView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 344
    .local v0, "wm":Landroid/view/WindowManager;
    iget-object v1, p0, Lcom/android/exsettings/DraggableSortListView;->mDragView:Landroid/widget/ImageView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 345
    iget-object v1, p0, Lcom/android/exsettings/DraggableSortListView;->mDragView:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 346
    iput-object v3, p0, Lcom/android/exsettings/DraggableSortListView;->mDragView:Landroid/widget/ImageView;

    .line 348
    .end local v0    # "wm":Landroid/view/WindowManager;
    :cond_0
    iget-object v1, p0, Lcom/android/exsettings/DraggableSortListView;->mDragBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    .line 349
    iget-object v1, p0, Lcom/android/exsettings/DraggableSortListView;->mDragBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 350
    iput-object v3, p0, Lcom/android/exsettings/DraggableSortListView;->mDragBitmap:Landroid/graphics/Bitmap;

    .line 340
    :cond_1
    return-void
.end method

.method private unExpandViews(Z)V
    .locals 7
    .param p1, "deletion"    # Z

    .prologue
    const/4 v6, 0x0

    .line 172
    const/4 v0, 0x0

    .line 173
    .local v0, "i":I
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/exsettings/DraggableSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 174
    .local v3, "v":Landroid/view/View;
    if-nez v3, :cond_1

    .line 175
    if-eqz p1, :cond_0

    .line 177
    invoke-virtual {p0}, Lcom/android/exsettings/DraggableSortListView;->getFirstVisiblePosition()I

    move-result v2

    .line 178
    .local v2, "position":I
    invoke-virtual {p0, v6}, Lcom/android/exsettings/DraggableSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v4

    .line 179
    .local v4, "y":I
    invoke-virtual {p0}, Lcom/android/exsettings/DraggableSortListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/exsettings/DraggableSortListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 180
    invoke-virtual {p0, v2, v4}, Lcom/android/exsettings/DraggableSortListView;->setSelectionFromTop(II)V

    .line 183
    .end local v2    # "position":I
    .end local v4    # "y":I
    :cond_0
    invoke-virtual {p0}, Lcom/android/exsettings/DraggableSortListView;->layoutChildren()V

    .line 184
    invoke-virtual {p0, v0}, Lcom/android/exsettings/DraggableSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 185
    if-nez v3, :cond_1

    .line 171
    return-void

    .line 189
    :cond_1
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 190
    .local v1, "params":Landroid/view/ViewGroup$LayoutParams;
    iget v5, p0, Lcom/android/exsettings/DraggableSortListView;->mItemHeight:I

    iput v5, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 191
    invoke-virtual {v3, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 192
    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 195
    invoke-virtual {v3, v6}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 172
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 71
    iget-object v10, p0, Lcom/android/exsettings/DraggableSortListView;->mDragListener:Lcom/android/exsettings/DraggableSortListView$DragListener;

    if-nez v10, :cond_0

    iget-object v10, p0, Lcom/android/exsettings/DraggableSortListView;->mDropListener:Lcom/android/exsettings/DraggableSortListView$DropListener;

    if-eqz v10, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/exsettings/DraggableSortListView;->getChildCount()I

    move-result v10

    if-le v10, v13, :cond_1

    .line 72
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v10

    packed-switch v10, :pswitch_data_0

    .line 114
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v10

    return v10

    .line 74
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    float-to-int v6, v10

    .line 75
    .local v6, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    float-to-int v9, v10

    .line 76
    .local v9, "y":I
    invoke-virtual {p0, v6, v9}, Lcom/android/exsettings/DraggableSortListView;->pointToPosition(II)I

    move-result v4

    .line 77
    .local v4, "itemnum":I
    const/4 v10, -0x1

    if-eq v4, v10, :cond_1

    .line 80
    invoke-virtual {p0}, Lcom/android/exsettings/DraggableSortListView;->getFirstVisiblePosition()I

    move-result v10

    sub-int v10, v4, v10

    invoke-virtual {p0, v10}, Lcom/android/exsettings/DraggableSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 81
    .local v2, "item":Landroid/view/ViewGroup;
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getHeight()I

    move-result v10

    iput v10, p0, Lcom/android/exsettings/DraggableSortListView;->mItemHeight:I

    .line 82
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getTop()I

    move-result v10

    sub-int v10, v9, v10

    iput v10, p0, Lcom/android/exsettings/DraggableSortListView;->mDragPoint:I

    .line 83
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v10

    float-to-int v10, v10

    sub-int/2addr v10, v9

    iput v10, p0, Lcom/android/exsettings/DraggableSortListView;->mCoordOffset:I

    .line 84
    const v10, 0x1020006

    invoke-virtual {v2, v10}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 88
    .local v1, "dragger":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLeft()I

    move-result v10

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v11

    add-int/2addr v10, v11

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v11

    div-int/lit8 v11, v11, 0x2

    sub-int v7, v10, v11

    .line 89
    .local v7, "x1":I
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLeft()I

    move-result v10

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v11

    add-int/2addr v10, v11

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v11

    div-int/lit8 v11, v11, 0x2

    add-int v8, v10, v11

    .line 90
    .local v8, "x2":I
    if-le v6, v7, :cond_2

    if-ge v6, v8, :cond_2

    .line 92
    const/4 v10, 0x2

    new-array v3, v10, [I

    .line 93
    .local v3, "itemPos":[I
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    .line 95
    invoke-virtual {v2, v13}, Landroid/view/ViewGroup;->setDrawingCacheEnabled(Z)V

    .line 100
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v10

    invoke-static {v10}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 101
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    aget v10, v3, v12

    invoke-direct {p0, v0, v10, v9}, Lcom/android/exsettings/DraggableSortListView;->startDragging(Landroid/graphics/Bitmap;II)V

    .line 102
    iput v4, p0, Lcom/android/exsettings/DraggableSortListView;->mDragPos:I

    .line 103
    iget v10, p0, Lcom/android/exsettings/DraggableSortListView;->mDragPos:I

    iput v10, p0, Lcom/android/exsettings/DraggableSortListView;->mFirstDragPos:I

    .line 104
    invoke-virtual {p0}, Lcom/android/exsettings/DraggableSortListView;->getHeight()I

    move-result v10

    iput v10, p0, Lcom/android/exsettings/DraggableSortListView;->mHeight:I

    .line 105
    iget v5, p0, Lcom/android/exsettings/DraggableSortListView;->mTouchSlop:I

    .line 106
    .local v5, "touchSlop":I
    sub-int v10, v9, v5

    iget v11, p0, Lcom/android/exsettings/DraggableSortListView;->mHeight:I

    div-int/lit8 v11, v11, 0x3

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    iput v10, p0, Lcom/android/exsettings/DraggableSortListView;->mUpperBound:I

    .line 107
    add-int v10, v9, v5

    iget v11, p0, Lcom/android/exsettings/DraggableSortListView;->mHeight:I

    mul-int/lit8 v11, v11, 0x2

    div-int/lit8 v11, v11, 0x3

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v10

    iput v10, p0, Lcom/android/exsettings/DraggableSortListView;->mLowerBound:I

    .line 108
    return v12

    .line 110
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v3    # "itemPos":[I
    .end local v5    # "touchSlop":I
    :cond_2
    invoke-direct {p0}, Lcom/android/exsettings/DraggableSortListView;->stopDragging()V

    goto/16 :goto_0

    .line 72
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v12, 0x0

    .line 246
    iget-object v9, p0, Lcom/android/exsettings/DraggableSortListView;->mDragListener:Lcom/android/exsettings/DraggableSortListView$DragListener;

    if-nez v9, :cond_0

    iget-object v9, p0, Lcom/android/exsettings/DraggableSortListView;->mDropListener:Lcom/android/exsettings/DraggableSortListView$DropListener;

    if-eqz v9, :cond_b

    :cond_0
    iget-object v9, p0, Lcom/android/exsettings/DraggableSortListView;->mDragView:Landroid/widget/ImageView;

    if-eqz v9, :cond_b

    .line 247
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 248
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 299
    :cond_1
    :goto_0
    const/4 v9, 0x1

    return v9

    .line 251
    :pswitch_0
    iget-object v3, p0, Lcom/android/exsettings/DraggableSortListView;->mTempRect:Landroid/graphics/Rect;

    .line 252
    .local v3, "r":Landroid/graphics/Rect;
    iget-object v9, p0, Lcom/android/exsettings/DraggableSortListView;->mDragView:Landroid/widget/ImageView;

    invoke-virtual {v9, v3}, Landroid/widget/ImageView;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 253
    invoke-direct {p0}, Lcom/android/exsettings/DraggableSortListView;->stopDragging()V

    .line 254
    iget-object v9, p0, Lcom/android/exsettings/DraggableSortListView;->mDropListener:Lcom/android/exsettings/DraggableSortListView$DropListener;

    if-eqz v9, :cond_2

    iget v9, p0, Lcom/android/exsettings/DraggableSortListView;->mDragPos:I

    if-ltz v9, :cond_2

    iget v9, p0, Lcom/android/exsettings/DraggableSortListView;->mDragPos:I

    invoke-virtual {p0}, Lcom/android/exsettings/DraggableSortListView;->getCount()I

    move-result v10

    if-ge v9, v10, :cond_2

    .line 255
    iget-object v9, p0, Lcom/android/exsettings/DraggableSortListView;->mDropListener:Lcom/android/exsettings/DraggableSortListView$DropListener;

    iget v10, p0, Lcom/android/exsettings/DraggableSortListView;->mFirstDragPos:I

    iget v11, p0, Lcom/android/exsettings/DraggableSortListView;->mDragPos:I

    invoke-interface {v9, v10, v11}, Lcom/android/exsettings/DraggableSortListView$DropListener;->drop(II)V

    .line 257
    :cond_2
    invoke-direct {p0, v12}, Lcom/android/exsettings/DraggableSortListView;->unExpandViews(Z)V

    goto :goto_0

    .line 262
    .end local v3    # "r":Landroid/graphics/Rect;
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    float-to-int v7, v9

    .line 263
    .local v7, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    float-to-int v8, v9

    .line 264
    .local v8, "y":I
    invoke-direct {p0, v7, v8}, Lcom/android/exsettings/DraggableSortListView;->dragView(II)V

    .line 265
    invoke-direct {p0, v8}, Lcom/android/exsettings/DraggableSortListView;->getItemForPosition(I)I

    move-result v1

    .line 266
    .local v1, "itemnum":I
    if-ltz v1, :cond_1

    .line 267
    if-eqz v0, :cond_3

    iget v9, p0, Lcom/android/exsettings/DraggableSortListView;->mDragPos:I

    if-eq v1, v9, :cond_5

    .line 268
    :cond_3
    iget-object v9, p0, Lcom/android/exsettings/DraggableSortListView;->mDragListener:Lcom/android/exsettings/DraggableSortListView$DragListener;

    if-eqz v9, :cond_4

    .line 269
    iget-object v9, p0, Lcom/android/exsettings/DraggableSortListView;->mDragListener:Lcom/android/exsettings/DraggableSortListView$DragListener;

    iget v10, p0, Lcom/android/exsettings/DraggableSortListView;->mDragPos:I

    invoke-interface {v9, v10, v1}, Lcom/android/exsettings/DraggableSortListView$DragListener;->drag(II)V

    .line 271
    :cond_4
    iput v1, p0, Lcom/android/exsettings/DraggableSortListView;->mDragPos:I

    .line 272
    invoke-direct {p0}, Lcom/android/exsettings/DraggableSortListView;->doExpansion()V

    .line 274
    :cond_5
    const/4 v5, 0x0

    .line 275
    .local v5, "speed":I
    invoke-direct {p0, v8}, Lcom/android/exsettings/DraggableSortListView;->adjustScrollBounds(I)V

    .line 276
    iget v9, p0, Lcom/android/exsettings/DraggableSortListView;->mLowerBound:I

    if-le v8, v9, :cond_9

    .line 278
    iget v9, p0, Lcom/android/exsettings/DraggableSortListView;->mHeight:I

    iget v10, p0, Lcom/android/exsettings/DraggableSortListView;->mLowerBound:I

    add-int/2addr v9, v10

    div-int/lit8 v9, v9, 0x2

    if-le v8, v9, :cond_8

    const/16 v5, 0x10

    .line 283
    :cond_6
    :goto_1
    if-eqz v5, :cond_1

    .line 284
    iget v9, p0, Lcom/android/exsettings/DraggableSortListView;->mHeight:I

    div-int/lit8 v9, v9, 0x2

    invoke-virtual {p0, v12, v9}, Lcom/android/exsettings/DraggableSortListView;->pointToPosition(II)I

    move-result v4

    .line 285
    .local v4, "ref":I
    const/4 v9, -0x1

    if-ne v4, v9, :cond_7

    .line 288
    iget v9, p0, Lcom/android/exsettings/DraggableSortListView;->mHeight:I

    div-int/lit8 v9, v9, 0x2

    invoke-virtual {p0}, Lcom/android/exsettings/DraggableSortListView;->getDividerHeight()I

    move-result v10

    add-int/2addr v9, v10

    add-int/lit8 v9, v9, 0x40

    invoke-virtual {p0, v12, v9}, Lcom/android/exsettings/DraggableSortListView;->pointToPosition(II)I

    move-result v4

    .line 290
    :cond_7
    invoke-virtual {p0}, Lcom/android/exsettings/DraggableSortListView;->getFirstVisiblePosition()I

    move-result v9

    sub-int v9, v4, v9

    invoke-virtual {p0, v9}, Lcom/android/exsettings/DraggableSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 291
    .local v6, "v":Landroid/view/View;
    if-eqz v6, :cond_1

    .line 292
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v2

    .line 293
    .local v2, "pos":I
    sub-int v9, v2, v5

    invoke-virtual {p0, v4, v9}, Lcom/android/exsettings/DraggableSortListView;->setSelectionFromTop(II)V

    goto/16 :goto_0

    .line 278
    .end local v2    # "pos":I
    .end local v4    # "ref":I
    .end local v6    # "v":Landroid/view/View;
    :cond_8
    const/4 v5, 0x4

    goto :goto_1

    .line 279
    :cond_9
    iget v9, p0, Lcom/android/exsettings/DraggableSortListView;->mUpperBound:I

    if-ge v8, v9, :cond_6

    .line 281
    iget v9, p0, Lcom/android/exsettings/DraggableSortListView;->mUpperBound:I

    div-int/lit8 v9, v9, 0x2

    if-ge v8, v9, :cond_a

    const/16 v5, -0x10

    goto :goto_1

    :cond_a
    const/4 v5, -0x4

    goto :goto_1

    .line 301
    .end local v0    # "action":I
    .end local v1    # "itemnum":I
    .end local v5    # "speed":I
    .end local v7    # "x":I
    .end local v8    # "y":I
    :cond_b
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v9

    return v9

    .line 248
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setDropListener(Lcom/android/exsettings/DraggableSortListView$DropListener;)V
    .locals 0
    .param p1, "l"    # Lcom/android/exsettings/DraggableSortListView$DropListener;

    .prologue
    .line 359
    iput-object p1, p0, Lcom/android/exsettings/DraggableSortListView;->mDropListener:Lcom/android/exsettings/DraggableSortListView$DropListener;

    .line 358
    return-void
.end method
