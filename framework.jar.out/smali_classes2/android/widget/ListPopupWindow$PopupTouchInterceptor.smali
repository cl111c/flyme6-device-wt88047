.class Landroid/widget/ListPopupWindow$PopupTouchInterceptor;
.super Ljava/lang/Object;
.source "ListPopupWindow.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ListPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PopupTouchInterceptor"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/ListPopupWindow;


# direct methods
.method private constructor <init>(Landroid/widget/ListPopupWindow;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/ListPopupWindow;

    .prologue
    .line 1276
    iput-object p1, p0, Landroid/widget/ListPopupWindow$PopupTouchInterceptor;->this$0:Landroid/widget/ListPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/ListPopupWindow;Landroid/widget/ListPopupWindow$PopupTouchInterceptor;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/ListPopupWindow;

    .prologue
    invoke-direct {p0, p1}, Landroid/widget/ListPopupWindow$PopupTouchInterceptor;-><init>(Landroid/widget/ListPopupWindow;)V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x0

    .line 1278
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1279
    .local v0, "action":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v1, v3

    .line 1280
    .local v1, "x":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v2, v3

    .line 1282
    .local v2, "y":I
    if-nez v0, :cond_1

    .line 1283
    iget-object v3, p0, Landroid/widget/ListPopupWindow$PopupTouchInterceptor;->this$0:Landroid/widget/ListPopupWindow;

    iget-object v3, v3, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/widget/ListPopupWindow$PopupTouchInterceptor;->this$0:Landroid/widget/ListPopupWindow;

    iget-object v3, v3, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v3

    .line 1282
    if-eqz v3, :cond_1

    .line 1284
    if-ltz v1, :cond_1

    iget-object v3, p0, Landroid/widget/ListPopupWindow$PopupTouchInterceptor;->this$0:Landroid/widget/ListPopupWindow;

    iget-object v3, v3, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v3

    if-ge v1, v3, :cond_1

    if-ltz v2, :cond_1

    iget-object v3, p0, Landroid/widget/ListPopupWindow$PopupTouchInterceptor;->this$0:Landroid/widget/ListPopupWindow;

    iget-object v3, v3, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 1285
    iget-object v3, p0, Landroid/widget/ListPopupWindow$PopupTouchInterceptor;->this$0:Landroid/widget/ListPopupWindow;

    invoke-static {v3}, Landroid/widget/ListPopupWindow;->-get1(Landroid/widget/ListPopupWindow;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Landroid/widget/ListPopupWindow$PopupTouchInterceptor;->this$0:Landroid/widget/ListPopupWindow;

    invoke-static {v4}, Landroid/widget/ListPopupWindow;->-get2(Landroid/widget/ListPopupWindow;)Landroid/widget/ListPopupWindow$ResizePopupRunnable;

    move-result-object v4

    const-wide/16 v6, 0xfa

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1289
    :cond_0
    :goto_0
    return v5

    .line 1286
    :cond_1
    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    .line 1287
    iget-object v3, p0, Landroid/widget/ListPopupWindow$PopupTouchInterceptor;->this$0:Landroid/widget/ListPopupWindow;

    invoke-static {v3}, Landroid/widget/ListPopupWindow;->-get1(Landroid/widget/ListPopupWindow;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Landroid/widget/ListPopupWindow$PopupTouchInterceptor;->this$0:Landroid/widget/ListPopupWindow;

    invoke-static {v4}, Landroid/widget/ListPopupWindow;->-get2(Landroid/widget/ListPopupWindow;)Landroid/widget/ListPopupWindow$ResizePopupRunnable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
