.class Lcom/android/exsettings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$4;
.super Ljava/lang/Object;
.source "FingerprintSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/exsettings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;


# direct methods
.method constructor <init>(Lcom/android/exsettings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/exsettings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;

    .prologue
    .line 542
    iput-object p1, p0, Lcom/android/exsettings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$4;->this$1:Lcom/android/exsettings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 545
    iget-object v0, p0, Lcom/android/exsettings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$4;->this$1:Lcom/android/exsettings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/exsettings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->-set1(Lcom/android/exsettings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;Z)Z

    .line 546
    iget-object v0, p0, Lcom/android/exsettings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$4;->this$1:Lcom/android/exsettings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;

    invoke-static {v0}, Lcom/android/exsettings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->-wrap3(Lcom/android/exsettings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;)V

    .line 544
    return-void
.end method
