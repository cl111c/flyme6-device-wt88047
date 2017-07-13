.class Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment$5;
.super Landroid/os/CountDownTimer;
.source "ConfirmLockPattern.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->handleAttemptLockout(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;


# direct methods
.method constructor <init>(Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;JJ)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;
    .param p2, "$anonymous0"    # J
    .param p4, "$anonymous1"    # J

    .prologue
    .line 497
    iput-object p1, p0, Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment$5;->this$1:Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    .line 499
    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    .prologue
    .line 511
    iget-object v0, p0, Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment$5;->this$1:Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;

    sget-object v1, Lcom/android/exsettings/ConfirmLockPattern$Stage;->NeedToUnlock:Lcom/android/exsettings/ConfirmLockPattern$Stage;

    invoke-static {v0, v1}, Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->-wrap0(Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;Lcom/android/exsettings/ConfirmLockPattern$Stage;)V

    .line 510
    return-void
.end method

.method public onTick(J)V
    .locals 7
    .param p1, "millisUntilFinished"    # J

    .prologue
    .line 503
    const-wide/16 v2, 0x3e8

    div-long v2, p1, v2

    long-to-int v0, v2

    .line 504
    .local v0, "secondsCountdown":I
    iget-object v1, p0, Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment$5;->this$1:Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;

    invoke-static {v1}, Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->-get4(Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment$5;->this$1:Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    .line 506
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 505
    const v4, 0x7f0c099c

    .line 504
    invoke-virtual {v2, v4, v3}, Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 502
    return-void
.end method
