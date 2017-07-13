.class Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment$2$2;
.super Ljava/lang/Object;
.source "ConfirmLockPattern.java"

# interfaces
.implements Lcom/android/internal/widget/LockPatternChecker$OnCheckCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment$2;->startCheckPattern(Ljava/util/List;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment$2;

.field final synthetic val$intent:Landroid/content/Intent;

.field final synthetic val$localEffectiveUserId:I

.field final synthetic val$pattern:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment$2;Landroid/content/Intent;Ljava/util/List;I)V
    .locals 0
    .param p1, "this$2"    # Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment$2;
    .param p2, "val$intent"    # Landroid/content/Intent;
    .param p4, "val$localEffectiveUserId"    # I

    .prologue
    .line 454
    .local p3, "val$pattern":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    iput-object p1, p0, Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment$2$2;->this$2:Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment$2;

    iput-object p2, p0, Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment$2$2;->val$intent:Landroid/content/Intent;

    iput-object p3, p0, Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment$2$2;->val$pattern:Ljava/util/List;

    iput p4, p0, Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment$2$2;->val$localEffectiveUserId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChecked(ZI)V
    .locals 5
    .param p1, "matched"    # Z
    .param p2, "timeoutMs"    # I

    .prologue
    .line 457
    iget-object v0, p0, Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment$2$2;->this$2:Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment$2;

    iget-object v0, v0, Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment$2;->this$1:Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->-set0(Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    .line 458
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment$2$2;->this$2:Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment$2;

    invoke-static {v0}, Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment$2;->-wrap0(Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment$2;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 459
    iget-object v0, p0, Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment$2$2;->val$intent:Landroid/content/Intent;

    const-string/jumbo v1, "type"

    .line 460
    const/4 v2, 0x2

    .line 459
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 461
    iget-object v0, p0, Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment$2$2;->val$intent:Landroid/content/Intent;

    const-string/jumbo v1, "password"

    .line 462
    iget-object v2, p0, Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment$2$2;->this$2:Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment$2;

    iget-object v2, v2, Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment$2;->this$1:Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;

    invoke-static {v2}, Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->-get5(Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v2

    iget-object v3, p0, Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment$2$2;->val$pattern:Ljava/util/List;

    iget v4, p0, Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment$2$2;->val$localEffectiveUserId:I

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/widget/LockPatternUtils;->patternToString(Ljava/util/List;I)Ljava/lang/String;

    move-result-object v2

    .line 461
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 464
    :cond_0
    iget-object v0, p0, Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment$2$2;->this$2:Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment$2;

    iget-object v0, v0, Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment$2;->this$1:Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;

    invoke-static {v0}, Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->-get1(Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;)Lcom/android/exsettings/CredentialCheckResultTracker;

    move-result-object v0

    iget-object v1, p0, Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment$2$2;->val$intent:Landroid/content/Intent;

    .line 465
    iget v2, p0, Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment$2$2;->val$localEffectiveUserId:I

    .line 464
    invoke-virtual {v0, p1, v1, p2, v2}, Lcom/android/exsettings/CredentialCheckResultTracker;->setResult(ZLandroid/content/Intent;II)V

    .line 456
    return-void
.end method
