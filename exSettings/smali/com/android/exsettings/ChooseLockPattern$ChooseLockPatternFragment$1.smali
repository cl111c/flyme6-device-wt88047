.class Lcom/android/exsettings/ChooseLockPattern$ChooseLockPatternFragment$1;
.super Ljava/lang/Object;
.source "ChooseLockPattern.java"

# interfaces
.implements Lcom/android/internal/widget/LockPatternView$OnPatternListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/ChooseLockPattern$ChooseLockPatternFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/exsettings/ChooseLockPattern$ChooseLockPatternFragment;


# direct methods
.method constructor <init>(Lcom/android/exsettings/ChooseLockPattern$ChooseLockPatternFragment;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/exsettings/ChooseLockPattern$ChooseLockPatternFragment;

    .prologue
    .line 190
    iput-object p1, p0, Lcom/android/exsettings/ChooseLockPattern$ChooseLockPatternFragment$1;->this$1:Lcom/android/exsettings/ChooseLockPattern$ChooseLockPatternFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private patternInProgress()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 234
    iget-object v0, p0, Lcom/android/exsettings/ChooseLockPattern$ChooseLockPatternFragment$1;->this$1:Lcom/android/exsettings/ChooseLockPattern$ChooseLockPatternFragment;

    iget-object v0, v0, Lcom/android/exsettings/ChooseLockPattern$ChooseLockPatternFragment;->mHeaderText:Landroid/widget/TextView;

    const v1, 0x7f0c0989

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 235
    iget-object v0, p0, Lcom/android/exsettings/ChooseLockPattern$ChooseLockPatternFragment$1;->this$1:Lcom/android/exsettings/ChooseLockPattern$ChooseLockPatternFragment;

    iget-object v0, v0, Lcom/android/exsettings/ChooseLockPattern$ChooseLockPatternFragment;->mFooterText:Landroid/widget/TextView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 236
    iget-object v0, p0, Lcom/android/exsettings/ChooseLockPattern$ChooseLockPatternFragment$1;->this$1:Lcom/android/exsettings/ChooseLockPattern$ChooseLockPatternFragment;

    invoke-static {v0}, Lcom/android/exsettings/ChooseLockPattern$ChooseLockPatternFragment;->-get1(Lcom/android/exsettings/ChooseLockPattern$ChooseLockPatternFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 237
    iget-object v0, p0, Lcom/android/exsettings/ChooseLockPattern$ChooseLockPatternFragment$1;->this$1:Lcom/android/exsettings/ChooseLockPattern$ChooseLockPatternFragment;

    invoke-static {v0}, Lcom/android/exsettings/ChooseLockPattern$ChooseLockPatternFragment;->-get2(Lcom/android/exsettings/ChooseLockPattern$ChooseLockPatternFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 233
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
    .line 229
    .local p1, "pattern":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    return-void
.end method

.method public onPatternCleared()V
    .locals 2

    .prologue
    .line 198
    iget-object v0, p0, Lcom/android/exsettings/ChooseLockPattern$ChooseLockPatternFragment$1;->this$1:Lcom/android/exsettings/ChooseLockPattern$ChooseLockPatternFragment;

    iget-object v0, v0, Lcom/android/exsettings/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v1, p0, Lcom/android/exsettings/ChooseLockPattern$ChooseLockPatternFragment$1;->this$1:Lcom/android/exsettings/ChooseLockPattern$ChooseLockPatternFragment;

    invoke-static {v1}, Lcom/android/exsettings/ChooseLockPattern$ChooseLockPatternFragment;->-get0(Lcom/android/exsettings/ChooseLockPattern$ChooseLockPatternFragment;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 197
    return-void
.end method

.method public onPatternDetected(Ljava/util/List;)V
    .locals 5
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
    .line 202
    .local p1, "pattern":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    iget-object v2, p0, Lcom/android/exsettings/ChooseLockPattern$ChooseLockPatternFragment$1;->this$1:Lcom/android/exsettings/ChooseLockPattern$ChooseLockPatternFragment;

    invoke-static {v2}, Lcom/android/exsettings/ChooseLockPattern$ChooseLockPatternFragment;->-get4(Lcom/android/exsettings/ChooseLockPattern$ChooseLockPatternFragment;)Lcom/android/exsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    move-result-object v2

    sget-object v3, Lcom/android/exsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->NeedToConfirm:Lcom/android/exsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/exsettings/ChooseLockPattern$ChooseLockPatternFragment$1;->this$1:Lcom/android/exsettings/ChooseLockPattern$ChooseLockPatternFragment;

    invoke-static {v2}, Lcom/android/exsettings/ChooseLockPattern$ChooseLockPatternFragment;->-get4(Lcom/android/exsettings/ChooseLockPattern$ChooseLockPatternFragment;)Lcom/android/exsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    move-result-object v2

    sget-object v3, Lcom/android/exsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->ConfirmWrong:Lcom/android/exsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    if-ne v2, v3, :cond_3

    .line 203
    :cond_0
    iget-object v2, p0, Lcom/android/exsettings/ChooseLockPattern$ChooseLockPatternFragment$1;->this$1:Lcom/android/exsettings/ChooseLockPattern$ChooseLockPatternFragment;

    iget-object v2, v2, Lcom/android/exsettings/ChooseLockPattern$ChooseLockPatternFragment;->mChosenPattern:Ljava/util/List;

    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/IllegalStateException;

    .line 204
    const-string/jumbo v3, "null chosen pattern in stage \'need to confirm"

    .line 203
    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 207
    :cond_1
    iget-object v2, p0, Lcom/android/exsettings/ChooseLockPattern$ChooseLockPatternFragment$1;->this$1:Lcom/android/exsettings/ChooseLockPattern$ChooseLockPatternFragment;

    iget-object v2, v2, Lcom/android/exsettings/ChooseLockPattern$ChooseLockPatternFragment;->mChosenPattern:Ljava/util/List;

    iget-object v3, p0, Lcom/android/exsettings/ChooseLockPattern$ChooseLockPatternFragment$1;->this$1:Lcom/android/exsettings/ChooseLockPattern$ChooseLockPatternFragment;

    invoke-static {v3}, Lcom/android/exsettings/ChooseLockPattern$ChooseLockPatternFragment;->-get3(Lcom/android/exsettings/ChooseLockPattern$ChooseLockPatternFragment;)B

    move-result v3

    .line 206
    invoke-static {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->patternToString(Ljava/util/List;B)Ljava/lang/String;

    move-result-object v0

    .line 209
    .local v0, "chosenPatternStr":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/exsettings/ChooseLockPattern$ChooseLockPatternFragment$1;->this$1:Lcom/android/exsettings/ChooseLockPattern$ChooseLockPatternFragment;

    invoke-static {v2}, Lcom/android/exsettings/ChooseLockPattern$ChooseLockPatternFragment;->-get3(Lcom/android/exsettings/ChooseLockPattern$ChooseLockPatternFragment;)B

    move-result v2

    .line 208
    invoke-static {p1, v2}, Lcom/android/internal/widget/LockPatternUtils;->patternToString(Ljava/util/List;B)Ljava/lang/String;

    move-result-object v1

    .line 211
    .local v1, "potentialPatternStr":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 212
    iget-object v2, p0, Lcom/android/exsettings/ChooseLockPattern$ChooseLockPatternFragment$1;->this$1:Lcom/android/exsettings/ChooseLockPattern$ChooseLockPatternFragment;

    sget-object v3, Lcom/android/exsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->ChoiceConfirmed:Lcom/android/exsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {v2, v3}, Lcom/android/exsettings/ChooseLockPattern$ChooseLockPatternFragment;->updateStage(Lcom/android/exsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;)V

    .line 201
    .end local v0    # "chosenPatternStr":Ljava/lang/String;
    .end local v1    # "potentialPatternStr":Ljava/lang/String;
    :goto_0
    return-void

    .line 214
    .restart local v0    # "chosenPatternStr":Ljava/lang/String;
    .restart local v1    # "potentialPatternStr":Ljava/lang/String;
    :cond_2
    iget-object v2, p0, Lcom/android/exsettings/ChooseLockPattern$ChooseLockPatternFragment$1;->this$1:Lcom/android/exsettings/ChooseLockPattern$ChooseLockPatternFragment;

    sget-object v3, Lcom/android/exsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->ConfirmWrong:Lcom/android/exsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {v2, v3}, Lcom/android/exsettings/ChooseLockPattern$ChooseLockPatternFragment;->updateStage(Lcom/android/exsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;)V

    goto :goto_0

    .line 216
    .end local v0    # "chosenPatternStr":Ljava/lang/String;
    .end local v1    # "potentialPatternStr":Ljava/lang/String;
    :cond_3
    iget-object v2, p0, Lcom/android/exsettings/ChooseLockPattern$ChooseLockPatternFragment$1;->this$1:Lcom/android/exsettings/ChooseLockPattern$ChooseLockPatternFragment;

    invoke-static {v2}, Lcom/android/exsettings/ChooseLockPattern$ChooseLockPatternFragment;->-get4(Lcom/android/exsettings/ChooseLockPattern$ChooseLockPatternFragment;)Lcom/android/exsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    move-result-object v2

    sget-object v3, Lcom/android/exsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->Introduction:Lcom/android/exsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/android/exsettings/ChooseLockPattern$ChooseLockPatternFragment$1;->this$1:Lcom/android/exsettings/ChooseLockPattern$ChooseLockPatternFragment;

    invoke-static {v2}, Lcom/android/exsettings/ChooseLockPattern$ChooseLockPatternFragment;->-get4(Lcom/android/exsettings/ChooseLockPattern$ChooseLockPatternFragment;)Lcom/android/exsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    move-result-object v2

    sget-object v3, Lcom/android/exsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->ChoiceTooShort:Lcom/android/exsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    if-ne v2, v3, :cond_6

    .line 217
    :cond_4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x4

    if-ge v2, v3, :cond_5

    .line 218
    iget-object v2, p0, Lcom/android/exsettings/ChooseLockPattern$ChooseLockPatternFragment$1;->this$1:Lcom/android/exsettings/ChooseLockPattern$ChooseLockPatternFragment;

    sget-object v3, Lcom/android/exsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->ChoiceTooShort:Lcom/android/exsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {v2, v3}, Lcom/android/exsettings/ChooseLockPattern$ChooseLockPatternFragment;->updateStage(Lcom/android/exsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;)V

    goto :goto_0

    .line 220
    :cond_5
    iget-object v2, p0, Lcom/android/exsettings/ChooseLockPattern$ChooseLockPatternFragment$1;->this$1:Lcom/android/exsettings/ChooseLockPattern$ChooseLockPatternFragment;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v3, v2, Lcom/android/exsettings/ChooseLockPattern$ChooseLockPatternFragment;->mChosenPattern:Ljava/util/List;

    .line 221
    iget-object v2, p0, Lcom/android/exsettings/ChooseLockPattern$ChooseLockPatternFragment$1;->this$1:Lcom/android/exsettings/ChooseLockPattern$ChooseLockPatternFragment;

    sget-object v3, Lcom/android/exsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->FirstChoiceValid:Lcom/android/exsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {v2, v3}, Lcom/android/exsettings/ChooseLockPattern$ChooseLockPatternFragment;->updateStage(Lcom/android/exsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;)V

    goto :goto_0

    .line 224
    :cond_6
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unexpected stage "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/exsettings/ChooseLockPattern$ChooseLockPatternFragment$1;->this$1:Lcom/android/exsettings/ChooseLockPattern$ChooseLockPatternFragment;

    invoke-static {v4}, Lcom/android/exsettings/ChooseLockPattern$ChooseLockPatternFragment;->-get4(Lcom/android/exsettings/ChooseLockPattern$ChooseLockPatternFragment;)Lcom/android/exsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " when "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 225
    const-string/jumbo v4, "entering the pattern."

    .line 224
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public onPatternStart()V
    .locals 2

    .prologue
    .line 193
    iget-object v0, p0, Lcom/android/exsettings/ChooseLockPattern$ChooseLockPatternFragment$1;->this$1:Lcom/android/exsettings/ChooseLockPattern$ChooseLockPatternFragment;

    iget-object v0, v0, Lcom/android/exsettings/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v1, p0, Lcom/android/exsettings/ChooseLockPattern$ChooseLockPatternFragment$1;->this$1:Lcom/android/exsettings/ChooseLockPattern$ChooseLockPatternFragment;

    invoke-static {v1}, Lcom/android/exsettings/ChooseLockPattern$ChooseLockPatternFragment;->-get0(Lcom/android/exsettings/ChooseLockPattern$ChooseLockPatternFragment;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 194
    invoke-direct {p0}, Lcom/android/exsettings/ChooseLockPattern$ChooseLockPatternFragment$1;->patternInProgress()V

    .line 192
    return-void
.end method
