.class Lcom/android/exsettings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$1;
.super Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;
.source "FingerprintSettings.java"


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
    .line 152
    iput-object p1, p0, Lcom/android/exsettings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$1;->this$1:Lcom/android/exsettings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;

    invoke-direct {p0}, Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAuthenticationError(ILjava/lang/CharSequence;)V
    .locals 3
    .param p1, "errMsgId"    # I
    .param p2, "errString"    # Ljava/lang/CharSequence;

    .prologue
    .line 166
    iget-object v0, p0, Lcom/android/exsettings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$1;->this$1:Lcom/android/exsettings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;

    invoke-static {v0}, Lcom/android/exsettings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->-get1(Lcom/android/exsettings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x3eb

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 165
    return-void
.end method

.method public onAuthenticationFailed()V
    .locals 2

    .prologue
    .line 161
    iget-object v0, p0, Lcom/android/exsettings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$1;->this$1:Lcom/android/exsettings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;

    invoke-static {v0}, Lcom/android/exsettings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->-get1(Lcom/android/exsettings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x3ea

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 160
    return-void
.end method

.method public onAuthenticationHelp(ILjava/lang/CharSequence;)V
    .locals 3
    .param p1, "helpMsgId"    # I
    .param p2, "helpString"    # Ljava/lang/CharSequence;

    .prologue
    .line 172
    iget-object v0, p0, Lcom/android/exsettings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$1;->this$1:Lcom/android/exsettings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;

    invoke-static {v0}, Lcom/android/exsettings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->-get1(Lcom/android/exsettings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x3ec

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 171
    return-void
.end method

.method public onAuthenticationSucceeded(Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;)V
    .locals 4
    .param p1, "result"    # Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;

    .prologue
    .line 155
    invoke-virtual {p1}, Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;->getFingerprint()Landroid/hardware/fingerprint/Fingerprint;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result v0

    .line 156
    .local v0, "fingerId":I
    iget-object v1, p0, Lcom/android/exsettings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$1;->this$1:Lcom/android/exsettings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;

    invoke-static {v1}, Lcom/android/exsettings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->-get1(Lcom/android/exsettings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x3e9

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 154
    return-void
.end method
