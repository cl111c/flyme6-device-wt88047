.class public Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling;
.super Lcom/android/exsettings/fingerprint/FingerprintEnrollBase;
.source "FingerprintEnrollEnrolling.java"

# interfaces
.implements Lcom/android/exsettings/fingerprint/FingerprintEnrollSidecar$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling$IconTouchDialog;,
        Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling$ErrorDialog;,
        Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling$1;,
        Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling$2;,
        Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling$3;,
        Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling$4;,
        Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling$5;
    }
.end annotation


# instance fields
.field private mAnimationCancelled:Z

.field private final mDelayedFinishRunnable:Ljava/lang/Runnable;

.field private mErrorText:Landroid/widget/TextView;

.field private mFastOutLinearInInterpolator:Landroid/view/animation/Interpolator;

.field private mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

.field private mFingerprintAnimator:Landroid/widget/ImageView;

.field private final mIconAnimationCallback:Landroid/graphics/drawable/Animatable2$AnimationCallback;

.field private mIconAnimationDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

.field private mIconTouchCount:I

.field private mIndicatorBackgroundActivatedColor:I

.field private mIndicatorBackgroundRestingColor:I

.field private mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

.field private mProgressAnim:Landroid/animation/ObjectAnimator;

.field private final mProgressAnimationListener:Landroid/animation/Animator$AnimatorListener;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mRepeatMessage:Landroid/widget/TextView;

.field private mRestoring:Z

.field private final mShowDialogRunnable:Ljava/lang/Runnable;

.field private mSidecar:Lcom/android/exsettings/fingerprint/FingerprintEnrollSidecar;

.field private mStartMessage:Landroid/widget/TextView;

.field private final mTouchAgainRunnable:Ljava/lang/Runnable;


# direct methods
.method static synthetic -get0(Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling;->mAnimationCancelled:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling;->mDelayedFinishRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling;->mErrorText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling;->mFingerprintAnimator:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling;)I
    .locals 1

    iget v0, p0, Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling;->mIconTouchCount:I

    return v0
.end method

.method static synthetic -get5(Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling;)I
    .locals 1

    iget v0, p0, Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling;->mIndicatorBackgroundActivatedColor:I

    return v0
.end method

.method static synthetic -get6(Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling;)I
    .locals 1

    iget v0, p0, Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling;->mIndicatorBackgroundRestingColor:I

    return v0
.end method

.method static synthetic -get7(Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling;)Landroid/view/animation/Interpolator;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling;)Landroid/widget/ProgressBar;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling;->mProgressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling;->mShowDialogRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling;I)I
    .locals 0

    iput p1, p0, Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling;->mIconTouchCount:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling;[B)V
    .locals 0
    .param p1, "token"    # [B

    .prologue
    invoke-direct {p0, p1}, Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling;->launchFinish([B)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling;Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "error"    # Ljava/lang/CharSequence;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling;->showError(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling;->showIconTouchDialog()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling;->startIconAnimation()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/exsettings/fingerprint/FingerprintEnrollBase;-><init>()V

    .line 345
    new-instance v0, Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling$1;

    invoke-direct {v0, p0}, Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling$1;-><init>(Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling;)V

    .line 344
    iput-object v0, p0, Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling;->mProgressAnimationListener:Landroid/animation/Animator$AnimatorListener;

    .line 365
    new-instance v0, Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling$2;

    invoke-direct {v0, p0}, Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling$2;-><init>(Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling;)V

    iput-object v0, p0, Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling;->mDelayedFinishRunnable:Ljava/lang/Runnable;

    .line 373
    new-instance v0, Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling$3;

    invoke-direct {v0, p0}, Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling$3;-><init>(Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling;)V

    .line 372
    iput-object v0, p0, Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling;->mIconAnimationCallback:Landroid/graphics/drawable/Animatable2$AnimationCallback;

    .line 390
    new-instance v0, Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling$4;

    invoke-direct {v0, p0}, Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling$4;-><init>(Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling;)V

    iput-object v0, p0, Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling;->mShowDialogRunnable:Ljava/lang/Runnable;

    .line 397
    new-instance v0, Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling$5;

    invoke-direct {v0, p0}, Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling$5;-><init>(Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling;)V

    iput-object v0, p0, Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling;->mTouchAgainRunnable:Ljava/lang/Runnable;

    .line 50
    return-void
.end method

.method private animateFlash()V
    .locals 5

    .prologue
    .line 191
    const/4 v2, 0x2

    new-array v2, v2, [I

    iget v3, p0, Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling;->mIndicatorBackgroundRestingColor:I

    const/4 v4, 0x0

    aput v3, v2, v4

    .line 192
    iget v3, p0, Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling;->mIndicatorBackgroundActivatedColor:I

    const/4 v4, 0x1

    aput v3, v2, v4

    .line 191
    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofArgb([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 194
    .local v0, "anim":Landroid/animation/ValueAnimator;
    new-instance v1, Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling$7;

    invoke-direct {v1, p0}, Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling$7;-><init>(Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling;)V

    .line 201
    .local v1, "listener":Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 202
    new-instance v2, Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling$8;

    invoke-direct {v2, p0, v1}, Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling$8;-><init>(Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 213
    iget-object v2, p0, Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 214
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 215
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 190
    return-void
.end method

.method private animateProgress(I)V
    .locals 6
    .param p1, "progress"    # I

    .prologue
    .line 178
    iget-object v1, p0, Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling;->mProgressAnim:Landroid/animation/ObjectAnimator;

    if-eqz v1, :cond_0

    .line 179
    iget-object v1, p0, Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling;->mProgressAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 181
    :cond_0
    iget-object v1, p0, Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling;->mProgressBar:Landroid/widget/ProgressBar;

    const-string/jumbo v2, "progress"

    const/4 v3, 0x2

    new-array v3, v3, [I

    .line 182
    iget-object v4, p0, Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v4}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v4

    const/4 v5, 0x0

    aput v4, v3, v5

    const/4 v4, 0x1

    aput p1, v3, v4

    .line 181
    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 183
    .local v0, "anim":Landroid/animation/ObjectAnimator;
    iget-object v1, p0, Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling;->mProgressAnimationListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 184
    iget-object v1, p0, Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 185
    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 186
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 187
    iput-object v0, p0, Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling;->mProgressAnim:Landroid/animation/ObjectAnimator;

    .line 177
    return-void
.end method

.method private clearError()V
    .locals 4

    .prologue
    .line 327
    iget-object v0, p0, Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 328
    iget-object v0, p0, Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 329
    const/4 v1, 0x0

    .line 328
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 330
    invoke-virtual {p0}, Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 331
    const v2, 0x7f0b00b0

    .line 330
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    .line 328
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 332
    const-wide/16 v2, 0x64

    .line 328
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 333
    iget-object v1, p0, Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling;->mFastOutLinearInInterpolator:Landroid/view/animation/Interpolator;

    .line 328
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 334
    new-instance v1, Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling$9;

    invoke-direct {v1, p0}, Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling$9;-><init>(Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling;)V

    .line 328
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 326
    :cond_0
    return-void
.end method

.method private getProgress(II)I
    .locals 3
    .param p1, "steps"    # I
    .param p2, "remaining"    # I

    .prologue
    const/4 v2, 0x0

    .line 289
    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    .line 290
    return v2

    .line 292
    :cond_0
    add-int/lit8 v1, p1, 0x1

    sub-int/2addr v1, p2

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 293
    .local v0, "progress":I
    mul-int/lit16 v1, v0, 0x2710

    add-int/lit8 v2, p1, 0x1

    div-int/2addr v1, v2

    return v1
.end method

.method private launchFinish([B)V
    .locals 2
    .param p1, "token"    # [B

    .prologue
    .line 219
    invoke-virtual {p0}, Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling;->getFinishIntent()Landroid/content/Intent;

    move-result-object v0

    .line 220
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x2000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 221
    const-string/jumbo v1, "hw_auth_token"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 222
    invoke-virtual {p0, v0}, Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling;->startActivity(Landroid/content/Intent;)V

    .line 223
    invoke-virtual {p0}, Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling;->finish()V

    .line 218
    return-void
.end method

.method private showError(Ljava/lang/CharSequence;)V
    .locals 5
    .param p1, "error"    # Ljava/lang/CharSequence;

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    .line 307
    iget-object v0, p0, Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 308
    iget-object v0, p0, Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 309
    iget-object v0, p0, Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling;->mErrorText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 310
    iget-object v0, p0, Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 311
    const v2, 0x7f0b00af

    .line 310
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 312
    iget-object v0, p0, Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setAlpha(F)V

    .line 313
    iget-object v0, p0, Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 316
    const-wide/16 v2, 0xc8

    .line 313
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 317
    iget-object v1, p0, Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 313
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 306
    :goto_0
    return-void

    .line 320
    :cond_0
    iget-object v0, p0, Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 321
    iget-object v0, p0, Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setAlpha(F)V

    .line 322
    iget-object v0, p0, Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTranslationY(F)V

    goto :goto_0
.end method

.method private showErrorDialog(Ljava/lang/CharSequence;I)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/CharSequence;
    .param p2, "msgId"    # I

    .prologue
    .line 297
    invoke-static {p1, p2}, Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling$ErrorDialog;->newInstance(Ljava/lang/CharSequence;I)Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling$ErrorDialog;

    move-result-object v0

    .line 298
    .local v0, "dlg":Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling$ErrorDialog;
    invoke-virtual {p0}, Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-class v2, Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling$ErrorDialog;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling$ErrorDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 296
    return-void
.end method

.method private showIconTouchDialog()V
    .locals 3

    .prologue
    .line 302
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling;->mIconTouchCount:I

    .line 303
    new-instance v0, Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling$IconTouchDialog;

    invoke-direct {v0}, Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling$IconTouchDialog;-><init>()V

    invoke-virtual {p0}, Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling$IconTouchDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 301
    return-void
.end method

.method private startIconAnimation()V
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling;->mIconAnimationDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    .line 158
    return-void
.end method

.method private stopIconAnimation()V
    .locals 1

    .prologue
    .line 163
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling;->mAnimationCancelled:Z

    .line 164
    iget-object v0, p0, Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling;->mIconAnimationDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->stop()V

    .line 162
    return-void
.end method

.method private updateDescription()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 231
    iget-object v0, p0, Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling;->mSidecar:Lcom/android/exsettings/fingerprint/FingerprintEnrollSidecar;

    invoke-virtual {v0}, Lcom/android/exsettings/fingerprint/FingerprintEnrollSidecar;->getEnrollmentSteps()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 232
    const v0, 0x7f0c0631

    invoke-virtual {p0, v0}, Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling;->setHeaderText(I)V

    .line 233
    iget-object v0, p0, Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling;->mStartMessage:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 234
    iget-object v0, p0, Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling;->mRepeatMessage:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 230
    :goto_0
    return-void

    .line 236
    :cond_0
    const v0, 0x7f0c0633

    .line 237
    const/4 v1, 0x1

    .line 236
    invoke-virtual {p0, v0, v1}, Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling;->setHeaderText(IZ)V

    .line 238
    iget-object v0, p0, Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling;->mStartMessage:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 239
    iget-object v0, p0, Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling;->mRepeatMessage:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateProgress(Z)V
    .locals 3
    .param p1, "animate"    # Z

    .prologue
    .line 280
    iget-object v1, p0, Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling;->mSidecar:Lcom/android/exsettings/fingerprint/FingerprintEnrollSidecar;

    invoke-virtual {v1}, Lcom/android/exsettings/fingerprint/FingerprintEnrollSidecar;->getEnrollmentSteps()I

    move-result v1

    iget-object v2, p0, Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling;->mSidecar:Lcom/android/exsettings/fingerprint/FingerprintEnrollSidecar;

    invoke-virtual {v2}, Lcom/android/exsettings/fingerprint/FingerprintEnrollSidecar;->getEnrollmentRemaining()I

    move-result v2

    .line 279
    invoke-direct {p0, v1, v2}, Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling;->getProgress(II)I

    move-result v0

    .line 281
    .local v0, "progress":I
    if-eqz p1, :cond_0

    .line 282
    invoke-direct {p0, v0}, Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling;->animateProgress(I)V

    .line 278
    :goto_0
    return-void

    .line 284
    :cond_0
    iget-object v1, p0, Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_0
.end method


# virtual methods
.method protected getFinishIntent()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 227
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/exsettings/fingerprint/FingerprintEnrollFinish;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 406
    const/16 v0, 0xf0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 94
    invoke-super {p0, p1}, Lcom/android/exsettings/fingerprint/FingerprintEnrollBase;->onCreate(Landroid/os/Bundle;)V

    .line 95
    const v0, 0x7f040072

    invoke-virtual {p0, v0}, Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling;->setContentView(I)V

    .line 96
    const v0, 0x7f0c0631

    invoke-virtual {p0, v0}, Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling;->setHeaderText(I)V

    .line 97
    const v0, 0x7f130114

    invoke-virtual {p0, v0}, Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling;->mStartMessage:Landroid/widget/TextView;

    .line 98
    const v0, 0x7f130115

    invoke-virtual {p0, v0}, Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling;->mRepeatMessage:Landroid/widget/TextView;

    .line 99
    const v0, 0x7f130116

    invoke-virtual {p0, v0}, Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling;->mErrorText:Landroid/widget/TextView;

    .line 100
    const v0, 0x7f130118

    invoke-virtual {p0, v0}, Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling;->mProgressBar:Landroid/widget/ProgressBar;

    .line 101
    const v0, 0x7f130117

    invoke-virtual {p0, v0}, Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling;->mFingerprintAnimator:Landroid/widget/ImageView;

    .line 102
    iget-object v0, p0, Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling;->mFingerprintAnimator:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimatedVectorDrawable;

    iput-object v0, p0, Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling;->mIconAnimationDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    .line 103
    iget-object v0, p0, Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling;->mIconAnimationDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    iget-object v1, p0, Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling;->mIconAnimationCallback:Landroid/graphics/drawable/Animatable2$AnimationCallback;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->registerAnimationCallback(Landroid/graphics/drawable/Animatable2$AnimationCallback;)V

    .line 105
    const v0, 0x10c000d

    .line 104
    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 107
    const v0, 0x10c000e

    .line 106
    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 109
    const v0, 0x10c000f

    .line 108
    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling;->mFastOutLinearInInterpolator:Landroid/view/animation/Interpolator;

    .line 110
    iget-object v0, p0, Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling;->mFingerprintAnimator:Landroid/widget/ImageView;

    new-instance v1, Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling$6;

    invoke-direct {v1, p0}, Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling$6;-><init>(Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 129
    const v0, 0x7f0e007a

    invoke-virtual {p0, v0}, Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling;->getColor(I)I

    move-result v0

    .line 128
    iput v0, p0, Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling;->mIndicatorBackgroundRestingColor:I

    .line 131
    const v0, 0x7f0e0097

    invoke-virtual {p0, v0}, Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling;->getColor(I)I

    move-result v0

    .line 130
    iput v0, p0, Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling;->mIndicatorBackgroundActivatedColor:I

    .line 132
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling;->mRestoring:Z

    .line 93
    return-void

    .line 132
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onEnrollmentError(ILjava/lang/CharSequence;)V
    .locals 3
    .param p1, "errMsgId"    # I
    .param p2, "errString"    # Ljava/lang/CharSequence;

    .prologue
    .line 252
    packed-switch p1, :pswitch_data_0

    .line 260
    const v0, 0x7f0c0641

    .line 263
    .local v0, "msgId":I
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {p0, v1, p1}, Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling;->showErrorDialog(Ljava/lang/CharSequence;I)V

    .line 264
    invoke-direct {p0}, Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling;->stopIconAnimation()V

    .line 265
    iget-object v1, p0, Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling;->mErrorText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling;->mTouchAgainRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 250
    return-void

    .line 256
    .end local v0    # "msgId":I
    :pswitch_0
    const v0, 0x7f0c0640

    .line 257
    .restart local v0    # "msgId":I
    goto :goto_0

    .line 252
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public onEnrollmentHelp(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "helpString"    # Ljava/lang/CharSequence;

    .prologue
    .line 246
    iget-object v0, p0, Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 245
    return-void
.end method

.method public onEnrollmentProgressChange(II)V
    .locals 4
    .param p1, "steps"    # I
    .param p2, "remaining"    # I

    .prologue
    .line 270
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling;->updateProgress(Z)V

    .line 271
    invoke-direct {p0}, Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling;->updateDescription()V

    .line 272
    invoke-direct {p0}, Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling;->clearError()V

    .line 273
    invoke-direct {p0}, Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling;->animateFlash()V

    .line 274
    iget-object v0, p0, Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling;->mErrorText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling;->mTouchAgainRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 275
    iget-object v0, p0, Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling;->mErrorText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling;->mTouchAgainRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x9c4

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 269
    return-void
.end method

.method public onEnterAnimationComplete()V
    .locals 1

    .prologue
    .line 153
    invoke-super {p0}, Lcom/android/exsettings/fingerprint/FingerprintEnrollBase;->onEnterAnimationComplete()V

    .line 154
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling;->mAnimationCancelled:Z

    .line 155
    invoke-direct {p0}, Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling;->startIconAnimation()V

    .line 152
    return-void
.end method

.method protected onStart()V
    .locals 3

    .prologue
    .line 137
    invoke-super {p0}, Lcom/android/exsettings/fingerprint/FingerprintEnrollBase;->onStart()V

    .line 138
    invoke-virtual {p0}, Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string/jumbo v1, "sidecar"

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/exsettings/fingerprint/FingerprintEnrollSidecar;

    iput-object v0, p0, Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling;->mSidecar:Lcom/android/exsettings/fingerprint/FingerprintEnrollSidecar;

    .line 139
    iget-object v0, p0, Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling;->mSidecar:Lcom/android/exsettings/fingerprint/FingerprintEnrollSidecar;

    if-nez v0, :cond_0

    .line 140
    new-instance v0, Lcom/android/exsettings/fingerprint/FingerprintEnrollSidecar;

    invoke-direct {v0}, Lcom/android/exsettings/fingerprint/FingerprintEnrollSidecar;-><init>()V

    iput-object v0, p0, Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling;->mSidecar:Lcom/android/exsettings/fingerprint/FingerprintEnrollSidecar;

    .line 141
    invoke-virtual {p0}, Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling;->mSidecar:Lcom/android/exsettings/fingerprint/FingerprintEnrollSidecar;

    const-string/jumbo v2, "sidecar"

    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling;->mSidecar:Lcom/android/exsettings/fingerprint/FingerprintEnrollSidecar;

    invoke-virtual {v0, p0}, Lcom/android/exsettings/fingerprint/FingerprintEnrollSidecar;->setListener(Lcom/android/exsettings/fingerprint/FingerprintEnrollSidecar$Listener;)V

    .line 144
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling;->updateProgress(Z)V

    .line 145
    invoke-direct {p0}, Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling;->updateDescription()V

    .line 146
    iget-boolean v0, p0, Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling;->mRestoring:Z

    if-eqz v0, :cond_1

    .line 147
    invoke-direct {p0}, Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling;->startIconAnimation()V

    .line 136
    :cond_1
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 169
    invoke-super {p0}, Lcom/android/exsettings/fingerprint/FingerprintEnrollBase;->onStop()V

    .line 170
    iget-object v0, p0, Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling;->mSidecar:Lcom/android/exsettings/fingerprint/FingerprintEnrollSidecar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/exsettings/fingerprint/FingerprintEnrollSidecar;->setListener(Lcom/android/exsettings/fingerprint/FingerprintEnrollSidecar$Listener;)V

    .line 171
    invoke-direct {p0}, Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling;->stopIconAnimation()V

    .line 172
    invoke-virtual {p0}, Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_0

    .line 173
    invoke-virtual {p0}, Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling;->finish()V

    .line 168
    :cond_0
    return-void
.end method
