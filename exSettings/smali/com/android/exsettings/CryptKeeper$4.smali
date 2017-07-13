.class Lcom/android/exsettings/CryptKeeper$4;
.super Ljava/lang/Object;
.source "CryptKeeper.java"

# interfaces
.implements Lcom/android/internal/widget/LockPatternView$OnPatternListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/CryptKeeper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/CryptKeeper;


# direct methods
.method constructor <init>(Lcom/android/exsettings/CryptKeeper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/exsettings/CryptKeeper;

    .prologue
    .line 764
    iput-object p1, p0, Lcom/android/exsettings/CryptKeeper$4;->this$0:Lcom/android/exsettings/CryptKeeper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPatternCellAdded(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 790
    .local p1, "pattern":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    return-void
.end method

.method public onPatternCleared()V
    .locals 2

    .prologue
    .line 774
    iget-object v0, p0, Lcom/android/exsettings/CryptKeeper$4;->this$0:Lcom/android/exsettings/CryptKeeper;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/exsettings/CryptKeeper;->-wrap8(Lcom/android/exsettings/CryptKeeper;Z)V

    .line 773
    return-void
.end method

.method public onPatternDetected(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "pattern":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    const/4 v3, 0x0

    .line 779
    iget-object v0, p0, Lcom/android/exsettings/CryptKeeper$4;->this$0:Lcom/android/exsettings/CryptKeeper;

    invoke-static {v0}, Lcom/android/exsettings/CryptKeeper;->-get3(Lcom/android/exsettings/CryptKeeper;)Lcom/android/internal/widget/LockPatternView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/internal/widget/LockPatternView;->setEnabled(Z)V

    .line 780
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    .line 781
    new-instance v0, Lcom/android/exsettings/CryptKeeper$DecryptTask;

    iget-object v1, p0, Lcom/android/exsettings/CryptKeeper$4;->this$0:Lcom/android/exsettings/CryptKeeper;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/exsettings/CryptKeeper$DecryptTask;-><init>(Lcom/android/exsettings/CryptKeeper;Lcom/android/exsettings/CryptKeeper$DecryptTask;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    .line 782
    iget-object v2, p0, Lcom/android/exsettings/CryptKeeper$4;->this$0:Lcom/android/exsettings/CryptKeeper;

    invoke-static {v2}, Lcom/android/exsettings/CryptKeeper;->-get3(Lcom/android/exsettings/CryptKeeper;)Lcom/android/internal/widget/LockPatternView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternView;->getLockPatternSize()B

    move-result v2

    .line 781
    invoke-static {p1, v2}, Lcom/android/internal/widget/LockPatternUtils;->patternToString(Ljava/util/List;B)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/android/exsettings/CryptKeeper$DecryptTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 778
    :goto_0
    return-void

    .line 785
    :cond_0
    iget-object v0, p0, Lcom/android/exsettings/CryptKeeper$4;->this$0:Lcom/android/exsettings/CryptKeeper;

    iget-object v1, p0, Lcom/android/exsettings/CryptKeeper$4;->this$0:Lcom/android/exsettings/CryptKeeper;

    invoke-static {v1}, Lcom/android/exsettings/CryptKeeper;->-get3(Lcom/android/exsettings/CryptKeeper;)Lcom/android/internal/widget/LockPatternView;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/exsettings/CryptKeeper;->-wrap3(Lcom/android/exsettings/CryptKeeper;Landroid/view/View;)V

    goto :goto_0
.end method

.method public onPatternStart()V
    .locals 2

    .prologue
    .line 768
    iget-object v0, p0, Lcom/android/exsettings/CryptKeeper$4;->this$0:Lcom/android/exsettings/CryptKeeper;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/exsettings/CryptKeeper;->-wrap8(Lcom/android/exsettings/CryptKeeper;Z)V

    .line 769
    iget-object v0, p0, Lcom/android/exsettings/CryptKeeper$4;->this$0:Lcom/android/exsettings/CryptKeeper;

    invoke-static {v0}, Lcom/android/exsettings/CryptKeeper;->-get3(Lcom/android/exsettings/CryptKeeper;)Lcom/android/internal/widget/LockPatternView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/exsettings/CryptKeeper$4;->this$0:Lcom/android/exsettings/CryptKeeper;

    invoke-static {v1}, Lcom/android/exsettings/CryptKeeper;->-get0(Lcom/android/exsettings/CryptKeeper;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 767
    return-void
.end method
