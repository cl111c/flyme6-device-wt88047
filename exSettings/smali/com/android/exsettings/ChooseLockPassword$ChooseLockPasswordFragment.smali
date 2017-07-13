.class public Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment;
.super Lcom/android/exsettings/InstrumentedFragment;
.source "ChooseLockPassword.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/TextView$OnEditorActionListener;
.implements Landroid/text/TextWatcher;
.implements Lcom/android/exsettings/SaveChosenLockWorkerBase$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/ChooseLockPassword;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChooseLockPasswordFragment"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;,
        Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment$1;
    }
.end annotation


# instance fields
.field private mCancelButton:Landroid/widget/Button;

.field private mChallenge:J

.field private mChooseLockSettingsHelper:Lcom/android/exsettings/ChooseLockSettingsHelper;

.field private mChosenPassword:Ljava/lang/String;

.field private mCurrentPassword:Ljava/lang/String;

.field private mFirstPin:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mHasChallenge:Z

.field private mHeaderText:Landroid/widget/TextView;

.field private mIsAlphaMode:Z

.field private mKeyboardHelper:Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

.field private mKeyboardView:Landroid/inputmethodservice/KeyboardView;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mNextButton:Landroid/widget/Button;

.field private mPasswordEntry:Landroid/widget/TextView;

.field private mPasswordEntryInputDisabler:Lcom/android/internal/widget/TextViewInputDisabler;

.field private mPasswordMaxLength:I

.field private mPasswordMinLength:I

.field private mPasswordMinLetters:I

.field private mPasswordMinLowerCase:I

.field private mPasswordMinNonLetter:I

.field private mPasswordMinNumeric:I

.field private mPasswordMinSymbols:I

.field private mPasswordMinUpperCase:I

.field private mRequestedQuality:I

.field private mSaveAndFinishWorker:Lcom/android/exsettings/ChooseLockPassword$SaveAndFinishWorker;

.field private mUiStage:Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 201
    invoke-direct {p0}, Lcom/android/exsettings/InstrumentedFragment;-><init>()V

    .line 137
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLength:I

    .line 138
    const/16 v0, 0x10

    iput v0, p0, Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMaxLength:I

    .line 139
    iput v1, p0, Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLetters:I

    .line 140
    iput v1, p0, Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinUpperCase:I

    .line 141
    iput v1, p0, Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLowerCase:I

    .line 142
    iput v1, p0, Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinSymbols:I

    .line 143
    iput v1, p0, Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNumeric:I

    .line 144
    iput v1, p0, Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNonLetter:I

    .line 147
    const/high16 v0, 0x20000

    iput v0, p0, Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment;->mRequestedQuality:I

    .line 149
    sget-object v0, Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->Introduction:Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    iput-object v0, p0, Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    .line 163
    new-instance v0, Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment$1;

    invoke-direct {v0, p0}, Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment$1;-><init>(Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment;)V

    iput-object v0, p0, Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment;->mHandler:Landroid/os/Handler;

    .line 201
    return-void
.end method

.method private showError(Ljava/lang/String;Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;)V
    .locals 4
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "next"    # Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    .prologue
    const/4 v3, 0x1

    .line 539
    iget-object v1, p0, Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 540
    iget-object v1, p0, Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 541
    iget-object v1, p0, Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 542
    .local v0, "mesg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 543
    iget-object v1, p0, Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 538
    return-void
.end method

.method private startSaveAndFinish()V
    .locals 9

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 605
    iget-object v0, p0, Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment;->mSaveAndFinishWorker:Lcom/android/exsettings/ChooseLockPassword$SaveAndFinishWorker;

    if-eqz v0, :cond_0

    .line 606
    const-string/jumbo v0, "ChooseLockPassword"

    const-string/jumbo v1, "startSaveAndFinish with an existing SaveAndFinishWorker."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    return-void

    .line 610
    :cond_0
    iget-object v0, p0, Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntryInputDisabler:Lcom/android/internal/widget/TextViewInputDisabler;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/TextViewInputDisabler;->setInputEnabled(Z)V

    .line 611
    invoke-virtual {p0, v1}, Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment;->setNextEnabled(Z)V

    .line 613
    new-instance v0, Lcom/android/exsettings/ChooseLockPassword$SaveAndFinishWorker;

    invoke-direct {v0, v3}, Lcom/android/exsettings/ChooseLockPassword$SaveAndFinishWorker;-><init>(Lcom/android/exsettings/ChooseLockPassword$SaveAndFinishWorker;)V

    iput-object v0, p0, Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment;->mSaveAndFinishWorker:Lcom/android/exsettings/ChooseLockPassword$SaveAndFinishWorker;

    .line 614
    invoke-virtual {p0}, Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment;->mSaveAndFinishWorker:Lcom/android/exsettings/ChooseLockPassword$SaveAndFinishWorker;

    .line 615
    const-string/jumbo v3, "save_and_finish_worker"

    .line 614
    invoke-virtual {v0, v1, v3}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 616
    iget-object v0, p0, Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment;->mSaveAndFinishWorker:Lcom/android/exsettings/ChooseLockPassword$SaveAndFinishWorker;

    invoke-virtual {v0, p0}, Lcom/android/exsettings/ChooseLockPassword$SaveAndFinishWorker;->setListener(Lcom/android/exsettings/SaveChosenLockWorkerBase$Listener;)V

    .line 618
    invoke-virtual {p0}, Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 619
    const-string/jumbo v1, "extra_require_password"

    const/4 v3, 0x1

    .line 618
    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 620
    .local v2, "required":Z
    iget-object v0, p0, Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment;->mSaveAndFinishWorker:Lcom/android/exsettings/ChooseLockPassword$SaveAndFinishWorker;

    iget-object v1, p0, Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-boolean v3, p0, Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment;->mHasChallenge:Z

    iget-wide v4, p0, Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment;->mChallenge:J

    .line 621
    iget-object v6, p0, Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment;->mChosenPassword:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment;->mCurrentPassword:Ljava/lang/String;

    iget v8, p0, Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment;->mRequestedQuality:I

    .line 620
    invoke-virtual/range {v0 .. v8}, Lcom/android/exsettings/ChooseLockPassword$SaveAndFinishWorker;->start(Lcom/android/internal/widget/LockPatternUtils;ZZJLjava/lang/String;Ljava/lang/String;I)V

    .line 604
    return-void
.end method

.method private updateUi()V
    .locals 9

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 561
    iget-object v5, p0, Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment;->mSaveAndFinishWorker:Lcom/android/exsettings/ChooseLockPassword$SaveAndFinishWorker;

    if-nez v5, :cond_0

    const/4 v0, 0x1

    .line 562
    .local v0, "canInput":Z
    :goto_0
    iget-object v5, p0, Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 563
    .local v4, "password":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    .line 564
    .local v2, "length":I
    iget-object v5, p0, Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    sget-object v8, Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->Introduction:Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    if-ne v5, v8, :cond_4

    .line 565
    iget v5, p0, Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLength:I

    if-ge v2, v5, :cond_2

    .line 566
    iget-boolean v5, p0, Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment;->mIsAlphaMode:Z

    if-eqz v5, :cond_1

    const v5, 0x7f0c0688

    :goto_1
    new-array v6, v6, [Ljava/lang/Object;

    .line 567
    iget v8, p0, Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLength:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    .line 566
    invoke-virtual {p0, v5, v6}, Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 568
    .local v3, "msg":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 569
    invoke-virtual {p0, v7}, Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment;->setNextEnabled(Z)V

    .line 584
    .end local v3    # "msg":Ljava/lang/String;
    :goto_2
    iget-object v5, p0, Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    iget v5, v5, Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->buttonText:I

    invoke-virtual {p0, v5}, Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment;->setNextText(I)V

    .line 585
    iget-object v5, p0, Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntryInputDisabler:Lcom/android/internal/widget/TextViewInputDisabler;

    invoke-virtual {v5, v0}, Lcom/android/internal/widget/TextViewInputDisabler;->setInputEnabled(Z)V

    .line 560
    return-void

    .line 561
    .end local v0    # "canInput":Z
    .end local v2    # "length":I
    .end local v4    # "password":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "canInput":Z
    goto :goto_0

    .line 567
    .restart local v2    # "length":I
    .restart local v4    # "password":Ljava/lang/String;
    :cond_1
    const v5, 0x7f0c0689

    goto :goto_1

    .line 571
    :cond_2
    invoke-direct {p0, v4}, Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment;->validatePassword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 572
    .local v1, "error":Ljava/lang/String;
    if-eqz v1, :cond_3

    .line 573
    iget-object v5, p0, Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 574
    invoke-virtual {p0, v7}, Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment;->setNextEnabled(Z)V

    goto :goto_2

    .line 576
    :cond_3
    iget-object v5, p0, Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    const v7, 0x7f0c068a

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(I)V

    .line 577
    invoke-virtual {p0, v6}, Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment;->setNextEnabled(Z)V

    goto :goto_2

    .line 581
    .end local v1    # "error":Ljava/lang/String;
    :cond_4
    iget-object v8, p0, Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    iget-boolean v5, p0, Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment;->mIsAlphaMode:Z

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    iget v5, v5, Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->alphaHint:I

    :goto_3
    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setText(I)V

    .line 582
    if-eqz v0, :cond_6

    if-lez v2, :cond_6

    move v5, v6

    :goto_4
    invoke-virtual {p0, v5}, Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment;->setNextEnabled(Z)V

    goto :goto_2

    .line 581
    :cond_5
    iget-object v5, p0, Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    iget v5, v5, Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->numericHint:I

    goto :goto_3

    :cond_6
    move v5, v7

    .line 582
    goto :goto_4
.end method

.method private validatePassword(Ljava/lang/String;)Ljava/lang/String;
    .locals 16
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 393
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v12

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLength:I

    if-ge v12, v13, :cond_1

    .line 394
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment;->mIsAlphaMode:Z

    if-eqz v12, :cond_0

    .line 395
    const v12, 0x7f0c0688

    .line 394
    :goto_0
    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    .line 396
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLength:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/4 v15, 0x0

    aput-object v14, v13, v15

    .line 394
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    return-object v12

    .line 396
    :cond_0
    const v12, 0x7f0c0689

    goto :goto_0

    .line 398
    :cond_1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v12

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMaxLength:I

    if-le v12, v13, :cond_3

    .line 399
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment;->mIsAlphaMode:Z

    if-eqz v12, :cond_2

    .line 400
    const v12, 0x7f0c068c

    .line 399
    :goto_1
    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    .line 401
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMaxLength:I

    add-int/lit8 v14, v14, 0x1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/4 v15, 0x0

    aput-object v14, v13, v15

    .line 399
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    return-object v12

    .line 401
    :cond_2
    const v12, 0x7f0c068d

    goto :goto_1

    .line 403
    :cond_3
    const/4 v5, 0x0

    .line 404
    .local v5, "letters":I
    const/4 v8, 0x0

    .line 405
    .local v8, "numbers":I
    const/4 v6, 0x0

    .line 406
    .local v6, "lowercase":I
    const/4 v10, 0x0

    .line 407
    .local v10, "symbols":I
    const/4 v11, 0x0

    .line 408
    .local v11, "uppercase":I
    const/4 v7, 0x0

    .line 409
    .local v7, "nonletter":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v12

    if-ge v4, v12, :cond_9

    .line 410
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 412
    .local v3, "c":C
    const/16 v12, 0x20

    if-lt v3, v12, :cond_4

    const/16 v12, 0x7f

    if-le v3, v12, :cond_5

    .line 413
    :cond_4
    const v12, 0x7f0c0690

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v12

    return-object v12

    .line 415
    :cond_5
    const/16 v12, 0x30

    if-lt v3, v12, :cond_6

    const/16 v12, 0x39

    if-gt v3, v12, :cond_6

    .line 416
    add-int/lit8 v8, v8, 0x1

    .line 417
    add-int/lit8 v7, v7, 0x1

    .line 409
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 418
    :cond_6
    const/16 v12, 0x41

    if-lt v3, v12, :cond_7

    const/16 v12, 0x5a

    if-gt v3, v12, :cond_7

    .line 419
    add-int/lit8 v5, v5, 0x1

    .line 420
    add-int/lit8 v11, v11, 0x1

    .line 418
    goto :goto_3

    .line 421
    :cond_7
    const/16 v12, 0x61

    if-lt v3, v12, :cond_8

    const/16 v12, 0x7a

    if-gt v3, v12, :cond_8

    .line 422
    add-int/lit8 v5, v5, 0x1

    .line 423
    add-int/lit8 v6, v6, 0x1

    .line 421
    goto :goto_3

    .line 425
    :cond_8
    add-int/lit8 v10, v10, 0x1

    .line 426
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 429
    .end local v3    # "c":C
    :cond_9
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment;->mRequestedQuality:I

    const/high16 v13, 0x20000

    if-eq v13, v12, :cond_a

    .line 430
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment;->mRequestedQuality:I

    const/high16 v13, 0x30000

    if-ne v13, v12, :cond_d

    .line 431
    :cond_a
    if-gtz v5, :cond_b

    if-lez v10, :cond_c

    .line 434
    :cond_b
    const v12, 0x7f0c068e

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v12

    return-object v12

    .line 437
    :cond_c
    invoke-static/range {p1 .. p1}, Lcom/android/internal/widget/LockPatternUtils;->maxLengthSequence(Ljava/lang/String;)I

    move-result v9

    .line 438
    .local v9, "sequence":I
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment;->mRequestedQuality:I

    const/high16 v13, 0x30000

    if-ne v13, v12, :cond_18

    .line 439
    const/4 v12, 0x3

    if-le v9, v12, :cond_18

    .line 440
    const v12, 0x7f0c0695

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v12

    return-object v12

    .line 442
    .end local v9    # "sequence":I
    :cond_d
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment;->mRequestedQuality:I

    const/high16 v13, 0x60000

    if-ne v13, v12, :cond_13

    .line 443
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLetters:I

    if-ge v5, v12, :cond_e

    .line 444
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    .line 445
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLetters:I

    const v14, 0x7f110006

    .line 444
    invoke-virtual {v12, v14, v13}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    .line 446
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLetters:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/4 v15, 0x0

    aput-object v14, v13, v15

    .line 444
    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    return-object v12

    .line 447
    :cond_e
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNumeric:I

    if-ge v8, v12, :cond_f

    .line 448
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    .line 449
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNumeric:I

    const v14, 0x7f110009

    .line 448
    invoke-virtual {v12, v14, v13}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    .line 450
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNumeric:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/4 v15, 0x0

    aput-object v14, v13, v15

    .line 448
    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    return-object v12

    .line 451
    :cond_f
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLowerCase:I

    if-ge v6, v12, :cond_10

    .line 452
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    .line 453
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLowerCase:I

    const v14, 0x7f110007

    .line 452
    invoke-virtual {v12, v14, v13}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    .line 454
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLowerCase:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/4 v15, 0x0

    aput-object v14, v13, v15

    .line 452
    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    return-object v12

    .line 455
    :cond_10
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinUpperCase:I

    if-ge v11, v12, :cond_11

    .line 456
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    .line 457
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinUpperCase:I

    const v14, 0x7f110008

    .line 456
    invoke-virtual {v12, v14, v13}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    .line 458
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinUpperCase:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/4 v15, 0x0

    aput-object v14, v13, v15

    .line 456
    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    return-object v12

    .line 459
    :cond_11
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinSymbols:I

    if-ge v10, v12, :cond_12

    .line 460
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    .line 461
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinSymbols:I

    const v14, 0x7f11000a

    .line 460
    invoke-virtual {v12, v14, v13}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    .line 462
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinSymbols:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/4 v15, 0x0

    aput-object v14, v13, v15

    .line 460
    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    return-object v12

    .line 463
    :cond_12
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNonLetter:I

    if-ge v7, v12, :cond_18

    .line 464
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    .line 465
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNonLetter:I

    const v14, 0x7f11000b

    .line 464
    invoke-virtual {v12, v14, v13}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    .line 466
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNonLetter:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/4 v15, 0x0

    aput-object v14, v13, v15

    .line 464
    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    return-object v12

    .line 470
    :cond_13
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment;->mRequestedQuality:I

    .line 469
    const/high16 v13, 0x40000

    if-ne v13, v12, :cond_15

    const/4 v1, 0x1

    .line 472
    .local v1, "alphabetic":Z
    :goto_4
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment;->mRequestedQuality:I

    .line 471
    const/high16 v13, 0x50000

    if-ne v13, v12, :cond_16

    const/4 v2, 0x1

    .line 473
    .local v2, "alphanumeric":Z
    :goto_5
    if-nez v1, :cond_14

    if-eqz v2, :cond_17

    :cond_14
    if-nez v5, :cond_17

    .line 474
    const v12, 0x7f0c0691

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v12

    return-object v12

    .line 469
    .end local v1    # "alphabetic":Z
    .end local v2    # "alphanumeric":Z
    :cond_15
    const/4 v1, 0x0

    .restart local v1    # "alphabetic":Z
    goto :goto_4

    .line 471
    :cond_16
    const/4 v2, 0x0

    .restart local v2    # "alphanumeric":Z
    goto :goto_5

    .line 476
    :cond_17
    if-eqz v2, :cond_18

    if-nez v8, :cond_18

    .line 477
    const v12, 0x7f0c0692

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v12

    return-object v12

    .line 480
    .end local v1    # "alphabetic":Z
    .end local v2    # "alphanumeric":Z
    :cond_18
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v13

    move-object/from16 v0, p1

    invoke-virtual {v12, v0, v13}, Lcom/android/internal/widget/LockPatternUtils;->checkPasswordHistory(Ljava/lang/String;I)Z

    move-result v12

    if-eqz v12, :cond_1a

    .line 481
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment;->mIsAlphaMode:Z

    if-eqz v12, :cond_19

    const v12, 0x7f0c0694

    :goto_6
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v12

    return-object v12

    .line 482
    :cond_19
    const v12, 0x7f0c068f

    goto :goto_6

    .line 485
    :cond_1a
    const/4 v12, 0x0

    return-object v12
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 590
    iget-object v0, p0, Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    sget-object v1, Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->ConfirmWrong:Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    if-ne v0, v1, :cond_0

    .line 591
    sget-object v0, Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->NeedToConfirm:Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    iput-object v0, p0, Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    .line 593
    :cond_0
    invoke-direct {p0}, Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment;->updateUi()V

    .line 588
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 596
    return-void
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 322
    const/16 v0, 0x1c

    return v0
.end method

.method protected getRedactionInterstitialIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 372
    invoke-static {p1}, Lcom/android/exsettings/notification/RedactionInterstitial;->createStartIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public handleNext()V
    .locals 5

    .prologue
    .line 489
    iget-object v2, p0, Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment;->mSaveAndFinishWorker:Lcom/android/exsettings/ChooseLockPassword$SaveAndFinishWorker;

    if-eqz v2, :cond_0

    return-void

    .line 490
    :cond_0
    iget-object v2, p0, Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment;->mChosenPassword:Ljava/lang/String;

    .line 491
    iget-object v2, p0, Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment;->mChosenPassword:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 492
    return-void

    .line 494
    :cond_1
    const/4 v0, 0x0

    .line 495
    .local v0, "errorMsg":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    sget-object v3, Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->Introduction:Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    if-ne v2, v3, :cond_4

    .line 496
    iget-object v2, p0, Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment;->mChosenPassword:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment;->validatePassword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 497
    .local v0, "errorMsg":Ljava/lang/String;
    if-nez v0, :cond_2

    .line 498
    iget-object v2, p0, Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment;->mChosenPassword:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment;->mFirstPin:Ljava/lang/String;

    .line 499
    iget-object v2, p0, Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 500
    sget-object v2, Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->NeedToConfirm:Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    invoke-virtual {p0, v2}, Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment;->updateStage(Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;)V

    .line 513
    .end local v0    # "errorMsg":Ljava/lang/String;
    :cond_2
    :goto_0
    if-eqz v0, :cond_3

    .line 514
    iget-object v2, p0, Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    invoke-direct {p0, v0, v2}, Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment;->showError(Ljava/lang/String;Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;)V

    .line 488
    :cond_3
    return-void

    .line 502
    .local v0, "errorMsg":Ljava/lang/String;
    :cond_4
    iget-object v2, p0, Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    sget-object v3, Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->NeedToConfirm:Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    if-ne v2, v3, :cond_2

    .line 503
    iget-object v2, p0, Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment;->mFirstPin:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment;->mChosenPassword:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 504
    invoke-direct {p0}, Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment;->startSaveAndFinish()V

    goto :goto_0

    .line 506
    :cond_5
    iget-object v2, p0, Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 507
    .local v1, "tmp":Ljava/lang/CharSequence;
    if-eqz v1, :cond_6

    move-object v2, v1

    .line 508
    check-cast v2, Landroid/text/Spannable;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const/4 v4, 0x0

    invoke-static {v2, v4, v3}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 510
    :cond_6
    sget-object v2, Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->ConfirmWrong:Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    invoke-virtual {p0, v2}, Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment;->updateStage(Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;)V

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 357
    invoke-super {p0, p1, p2, p3}, Lcom/android/exsettings/InstrumentedFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 358
    packed-switch p1, :pswitch_data_0

    .line 356
    :goto_0
    return-void

    .line 360
    :pswitch_0
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 361
    invoke-virtual {p0}, Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 362
    invoke-virtual {p0}, Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 365
    :cond_0
    const-string/jumbo v0, "password"

    .line 364
    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment;->mCurrentPassword:Ljava/lang/String;

    goto :goto_0

    .line 358
    :pswitch_data_0
    .packed-switch 0x3a
        :pswitch_0
    .end packed-switch
.end method

.method public onChosenLockSaveFinished(ZLandroid/content/Intent;)V
    .locals 3
    .param p1, "wasSecureBefore"    # Z
    .param p2, "resultData"    # Landroid/content/Intent;

    .prologue
    .line 626
    invoke-virtual {p0}, Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 627
    invoke-virtual {p0}, Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 629
    if-nez p1, :cond_0

    .line 630
    invoke-virtual {p0}, Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment;->getRedactionInterstitialIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 631
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 632
    invoke-virtual {p0, v0}, Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment;->startActivity(Landroid/content/Intent;)V

    .line 625
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 527
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 526
    :goto_0
    return-void

    .line 529
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment;->handleNext()V

    goto :goto_0

    .line 533
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 527
    :pswitch_data_0
    .packed-switch 0x7f13005a
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 207
    invoke-super {p0, p1}, Lcom/android/exsettings/InstrumentedFragment;->onCreate(Landroid/os/Bundle;)V

    .line 208
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 209
    invoke-virtual {p0}, Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 210
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    instance-of v1, v1, Lcom/android/exsettings/ChooseLockPassword;

    if-nez v1, :cond_0

    .line 211
    new-instance v1, Ljava/lang/SecurityException;

    const-string/jumbo v2, "Fragment contained in wrong activity"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 213
    :cond_0
    const-string/jumbo v1, "lockscreen.password_type"

    .line 214
    iget v2, p0, Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment;->mRequestedQuality:I

    .line 213
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 214
    iget-object v2, p0, Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 215
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    .line 214
    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordQuality(I)I

    move-result v2

    .line 213
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment;->mRequestedQuality:I

    .line 218
    const-string/jumbo v1, "lockscreen.password_min"

    iget v2, p0, Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLength:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 217
    const/4 v2, 0x4

    .line 216
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 219
    iget-object v2, p0, Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedMinimumPasswordLength(I)I

    move-result v2

    .line 216
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLength:I

    .line 220
    const-string/jumbo v1, "lockscreen.password_max"

    iget v2, p0, Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMaxLength:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMaxLength:I

    .line 221
    const-string/jumbo v1, "lockscreen.password_min_letters"

    .line 222
    iget v2, p0, Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLetters:I

    .line 221
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 222
    iget-object v2, p0, Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 223
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    .line 222
    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordMinimumLetters(I)I

    move-result v2

    .line 221
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLetters:I

    .line 224
    const-string/jumbo v1, "lockscreen.password_min_uppercase"

    .line 225
    iget v2, p0, Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinUpperCase:I

    .line 224
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 225
    iget-object v2, p0, Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 226
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    .line 225
    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordMinimumUpperCase(I)I

    move-result v2

    .line 224
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinUpperCase:I

    .line 227
    const-string/jumbo v1, "lockscreen.password_min_lowercase"

    .line 228
    iget v2, p0, Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLowerCase:I

    .line 227
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 228
    iget-object v2, p0, Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 229
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    .line 228
    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordMinimumLowerCase(I)I

    move-result v2

    .line 227
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLowerCase:I

    .line 230
    const-string/jumbo v1, "lockscreen.password_min_numeric"

    .line 231
    iget v2, p0, Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNumeric:I

    .line 230
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 231
    iget-object v2, p0, Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 232
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    .line 231
    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordMinimumNumeric(I)I

    move-result v2

    .line 230
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNumeric:I

    .line 233
    const-string/jumbo v1, "lockscreen.password_min_symbols"

    .line 234
    iget v2, p0, Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinSymbols:I

    .line 233
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 234
    iget-object v2, p0, Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 235
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    .line 234
    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordMinimumSymbols(I)I

    move-result v2

    .line 233
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinSymbols:I

    .line 236
    const-string/jumbo v1, "lockscreen.password_min_nonletter"

    .line 237
    iget v2, p0, Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNonLetter:I

    .line 236
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 237
    iget-object v2, p0, Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 238
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    .line 237
    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordMinimumNonLetter(I)I

    move-result v2

    .line 236
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNonLetter:I

    .line 240
    new-instance v1, Lcom/android/exsettings/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/exsettings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment;->mChooseLockSettingsHelper:Lcom/android/exsettings/ChooseLockSettingsHelper;

    .line 206
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 246
    const v0, 0x7f040026

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x0

    .line 548
    if-eqz p2, :cond_0

    .line 549
    const/4 v0, 0x6

    if-ne p2, v0, :cond_1

    .line 551
    :cond_0
    invoke-virtual {p0}, Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment;->handleNext()V

    .line 552
    const/4 v0, 0x1

    return v0

    .line 550
    :cond_1
    const/4 v0, 0x5

    if-eq p2, v0, :cond_0

    .line 554
    return v1
.end method

.method public onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 338
    iget-object v0, p0, Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 339
    iget-object v0, p0, Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment;->mSaveAndFinishWorker:Lcom/android/exsettings/ChooseLockPassword$SaveAndFinishWorker;

    if-eqz v0, :cond_0

    .line 340
    iget-object v0, p0, Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment;->mSaveAndFinishWorker:Lcom/android/exsettings/ChooseLockPassword$SaveAndFinishWorker;

    invoke-virtual {v0, v2}, Lcom/android/exsettings/ChooseLockPassword$SaveAndFinishWorker;->setListener(Lcom/android/exsettings/SaveChosenLockWorkerBase$Listener;)V

    .line 343
    :cond_0
    invoke-super {p0}, Lcom/android/exsettings/InstrumentedFragment;->onPause()V

    .line 337
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 327
    invoke-super {p0}, Lcom/android/exsettings/InstrumentedFragment;->onResume()V

    .line 328
    iget-object v0, p0, Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    invoke-virtual {p0, v0}, Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment;->updateStage(Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;)V

    .line 329
    iget-object v0, p0, Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment;->mSaveAndFinishWorker:Lcom/android/exsettings/ChooseLockPassword$SaveAndFinishWorker;

    if-eqz v0, :cond_0

    .line 330
    iget-object v0, p0, Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment;->mSaveAndFinishWorker:Lcom/android/exsettings/ChooseLockPassword$SaveAndFinishWorker;

    invoke-virtual {v0, p0}, Lcom/android/exsettings/ChooseLockPassword$SaveAndFinishWorker;->setListener(Lcom/android/exsettings/SaveChosenLockWorkerBase$Listener;)V

    .line 326
    :goto_0
    return-void

    .line 332
    :cond_0
    iget-object v0, p0, Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {v0}, Landroid/inputmethodservice/KeyboardView;->requestFocus()Z

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 348
    invoke-super {p0, p1}, Lcom/android/exsettings/InstrumentedFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 349
    const-string/jumbo v0, "ui_stage"

    iget-object v1, p0, Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    invoke-virtual {v1}, Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    const-string/jumbo v0, "first_pin"

    iget-object v1, p0, Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment;->mFirstPin:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    const-string/jumbo v0, "current_password"

    iget-object v1, p0, Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment;->mCurrentPassword:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 600
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 13
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 251
    invoke-super {p0, p1, p2}, Lcom/android/exsettings/InstrumentedFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 253
    const v8, 0x7f13005a

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    iput-object v8, p0, Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment;->mCancelButton:Landroid/widget/Button;

    .line 254
    iget-object v8, p0, Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v8, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 255
    const v8, 0x7f13005b

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    iput-object v8, p0, Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment;->mNextButton:Landroid/widget/Button;

    .line 256
    iget-object v8, p0, Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v8, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 258
    iget v8, p0, Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment;->mRequestedQuality:I

    const/high16 v11, 0x40000

    if-eq v11, v8, :cond_0

    .line 259
    iget v8, p0, Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment;->mRequestedQuality:I

    const/high16 v11, 0x50000

    if-ne v11, v8, :cond_3

    :cond_0
    move v8, v9

    .line 258
    :goto_0
    iput-boolean v8, p0, Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment;->mIsAlphaMode:Z

    .line 261
    const v8, 0x7f13005c

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/android/internal/widget/PasswordEntryKeyboardView;

    iput-object v8, p0, Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    .line 262
    const v8, 0x7f130059

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    .line 263
    iget-object v8, p0, Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v8, p0}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 264
    iget-object v8, p0, Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v8, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 265
    new-instance v8, Lcom/android/internal/widget/TextViewInputDisabler;

    iget-object v11, p0, Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-direct {v8, v11}, Lcom/android/internal/widget/TextViewInputDisabler;-><init>(Landroid/widget/TextView;)V

    iput-object v8, p0, Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntryInputDisabler:Lcom/android/internal/widget/TextViewInputDisabler;

    .line 267
    invoke-virtual {p0}, Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 268
    .local v0, "activity":Landroid/app/Activity;
    new-instance v8, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

    .line 269
    iget-object v11, p0, Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    iget-object v12, p0, Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    .line 268
    invoke-direct {v8, v0, v11, v12}, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;-><init>(Landroid/content/Context;Landroid/inputmethodservice/KeyboardView;Landroid/view/View;)V

    iput-object v8, p0, Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment;->mKeyboardHelper:Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

    .line 270
    iget-object v11, p0, Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment;->mKeyboardHelper:Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

    iget-boolean v8, p0, Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment;->mIsAlphaMode:Z

    if-eqz v8, :cond_5

    move v8, v10

    :goto_1
    invoke-virtual {v11, v8}, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->setKeyboardMode(I)V

    .line 274
    const v8, 0x7f130058

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    .line 275
    iget-object v8, p0, Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {v8}, Landroid/inputmethodservice/KeyboardView;->requestFocus()Z

    .line 277
    iget-object v8, p0, Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getInputType()I

    move-result v2

    .line 278
    .local v2, "currentType":I
    iget-object v8, p0, Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    iget-boolean v11, p0, Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment;->mIsAlphaMode:Z

    if-eqz v11, :cond_6

    .end local v2    # "currentType":I
    :goto_2
    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setInputType(I)V

    .line 281
    invoke-virtual {p0}, Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 283
    .local v4, "intent":Landroid/content/Intent;
    const-string/jumbo v8, "confirm_credentials"

    .line 282
    invoke-virtual {v4, v8, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 284
    .local v1, "confirmCredentials":Z
    const-string/jumbo v8, "password"

    invoke-virtual {v4, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment;->mCurrentPassword:Ljava/lang/String;

    .line 286
    const-string/jumbo v8, "has_challenge"

    .line 285
    invoke-virtual {v4, v8, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    iput-boolean v8, p0, Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment;->mHasChallenge:Z

    .line 287
    const-string/jumbo v8, "challenge"

    const-wide/16 v10, 0x0

    invoke-virtual {v4, v8, v10, v11}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v10

    iput-wide v10, p0, Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment;->mChallenge:J

    .line 288
    if-nez p2, :cond_7

    .line 289
    sget-object v8, Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->Introduction:Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    invoke-virtual {p0, v8}, Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment;->updateStage(Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;)V

    .line 290
    if-eqz v1, :cond_1

    .line 291
    iget-object v8, p0, Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment;->mChooseLockSettingsHelper:Lcom/android/exsettings/ChooseLockSettingsHelper;

    .line 292
    const v10, 0x7f0c0664

    invoke-virtual {p0, v10}, Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 291
    const/16 v11, 0x3a

    invoke-virtual {v8, v11, v10, v9}, Lcom/android/exsettings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Z)Z

    .line 311
    :cond_1
    :goto_3
    instance-of v8, v0, Lcom/android/exsettings/SettingsActivity;

    if-eqz v8, :cond_2

    move-object v5, v0

    .line 312
    check-cast v5, Lcom/android/exsettings/SettingsActivity;

    .line 313
    .local v5, "sa":Lcom/android/exsettings/SettingsActivity;
    iget-boolean v8, p0, Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment;->mIsAlphaMode:Z

    if-eqz v8, :cond_a

    const v3, 0x7f0c0972

    .line 315
    .local v3, "id":I
    :goto_4
    invoke-virtual {p0, v3}, Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    .line 316
    .local v7, "title":Ljava/lang/CharSequence;
    invoke-virtual {v5, v7}, Lcom/android/exsettings/SettingsActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 250
    .end local v3    # "id":I
    .end local v5    # "sa":Lcom/android/exsettings/SettingsActivity;
    .end local v7    # "title":Ljava/lang/CharSequence;
    :cond_2
    return-void

    .line 260
    .end local v0    # "activity":Landroid/app/Activity;
    .end local v1    # "confirmCredentials":Z
    .end local v4    # "intent":Landroid/content/Intent;
    :cond_3
    iget v8, p0, Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment;->mRequestedQuality:I

    const/high16 v11, 0x60000

    if-ne v11, v8, :cond_4

    move v8, v9

    goto/16 :goto_0

    :cond_4
    move v8, v10

    goto/16 :goto_0

    .restart local v0    # "activity":Landroid/app/Activity;
    :cond_5
    move v8, v9

    .line 272
    goto/16 :goto_1

    .line 279
    .restart local v2    # "currentType":I
    :cond_6
    const/16 v2, 0x12

    goto :goto_2

    .line 296
    .end local v2    # "currentType":I
    .restart local v1    # "confirmCredentials":Z
    .restart local v4    # "intent":Landroid/content/Intent;
    :cond_7
    const-string/jumbo v8, "first_pin"

    invoke-virtual {p2, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment;->mFirstPin:Ljava/lang/String;

    .line 297
    const-string/jumbo v8, "ui_stage"

    invoke-virtual {p2, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 298
    .local v6, "state":Ljava/lang/String;
    if-eqz v6, :cond_8

    .line 299
    invoke-static {v6}, Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->valueOf(Ljava/lang/String;)Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    move-result-object v8

    iput-object v8, p0, Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    .line 300
    iget-object v8, p0, Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    invoke-virtual {p0, v8}, Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment;->updateStage(Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;)V

    .line 303
    :cond_8
    iget-object v8, p0, Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment;->mCurrentPassword:Ljava/lang/String;

    if-nez v8, :cond_9

    .line 304
    const-string/jumbo v8, "current_password"

    invoke-virtual {p2, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment;->mCurrentPassword:Ljava/lang/String;

    .line 308
    :cond_9
    invoke-virtual {p0}, Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v8

    .line 309
    const-string/jumbo v9, "save_and_finish_worker"

    .line 308
    invoke-virtual {v8, v9}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v8

    check-cast v8, Lcom/android/exsettings/ChooseLockPassword$SaveAndFinishWorker;

    iput-object v8, p0, Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment;->mSaveAndFinishWorker:Lcom/android/exsettings/ChooseLockPassword$SaveAndFinishWorker;

    goto :goto_3

    .line 314
    .end local v6    # "state":Ljava/lang/String;
    .restart local v5    # "sa":Lcom/android/exsettings/SettingsActivity;
    :cond_a
    const v3, 0x7f0c0974

    .restart local v3    # "id":I
    goto :goto_4
.end method

.method protected setNextEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 519
    iget-object v0, p0, Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 518
    return-void
.end method

.method protected setNextText(I)V
    .locals 1
    .param p1, "text"    # I

    .prologue
    .line 523
    iget-object v0, p0, Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(I)V

    .line 522
    return-void
.end method

.method protected updateStage(Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;)V
    .locals 3
    .param p1, "stage"    # Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    .prologue
    .line 376
    iget-object v0, p0, Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    .line 377
    .local v0, "previousStage":Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;
    iput-object p1, p0, Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    .line 378
    invoke-direct {p0}, Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment;->updateUi()V

    .line 382
    if-eq v0, p1, :cond_0

    .line 383
    iget-object v1, p0, Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/exsettings/ChooseLockPassword$ChooseLockPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 375
    :cond_0
    return-void
.end method
