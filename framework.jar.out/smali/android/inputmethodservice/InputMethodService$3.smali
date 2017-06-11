.class Landroid/inputmethodservice/InputMethodService$3;
.super Ljava/lang/Object;
.source "InputMethodService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/inputmethodservice/InputMethodService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/inputmethodservice/InputMethodService;


# direct methods
.method constructor <init>(Landroid/inputmethodservice/InputMethodService;)V
    .locals 0
    .param p1, "this$0"    # Landroid/inputmethodservice/InputMethodService;

    .prologue
    .line 1611
    iput-object p1, p0, Landroid/inputmethodservice/InputMethodService$3;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1614
    :try_start_0
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService$3;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v2}, Landroid/inputmethodservice/InputMethodService;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v1

    .line 1615
    .local v1, "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v1, :cond_0

    .line 1616
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/android/internal/statusbar/IStatusBarService;->setAutoRotate(Z)V

    .line 1618
    :cond_0
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService$3;->this$0:Landroid/inputmethodservice/InputMethodService;

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroid/inputmethodservice/InputMethodService;->mForcedAutoRotate:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1612
    .end local v1    # "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    :goto_0
    return-void

    .line 1619
    :catch_0
    move-exception v0

    .line 1620
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService$3;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-static {v2, v4}, Landroid/inputmethodservice/InputMethodService;->-set0(Landroid/inputmethodservice/InputMethodService;Lcom/android/internal/statusbar/IStatusBarService;)Lcom/android/internal/statusbar/IStatusBarService;

    goto :goto_0
.end method
