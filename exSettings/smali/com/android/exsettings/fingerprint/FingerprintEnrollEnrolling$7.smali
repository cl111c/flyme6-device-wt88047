.class Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling$7;
.super Ljava/lang/Object;
.source "FingerprintEnrollEnrolling.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling;->animateFlash()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling;


# direct methods
.method constructor <init>(Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling;

    .prologue
    .line 194
    iput-object p1, p0, Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling$7;->this$0:Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 197
    iget-object v0, p0, Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling$7;->this$0:Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling;

    invoke-static {v0}, Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling;->-get3(Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling;)Landroid/widget/ImageView;

    move-result-object v1

    .line 198
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 197
    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 196
    return-void
.end method
