.class Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling$3$1;
.super Ljava/lang/Object;
.source "FingerprintEnrollEnrolling.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling$3;->onAnimationEnd(Landroid/graphics/drawable/Drawable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling$3;


# direct methods
.method constructor <init>(Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling$3;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling$3;

    .prologue
    .line 381
    iput-object p1, p0, Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling$3$1;->this$1:Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 384
    iget-object v0, p0, Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling$3$1;->this$1:Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling$3;

    iget-object v0, v0, Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling$3;->this$0:Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling;

    invoke-static {v0}, Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling;->-wrap3(Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling;)V

    .line 383
    return-void
.end method
