.class Lcom/android/exsettings/utils/VoiceSettingsActivity$1;
.super Landroid/app/VoiceInteractor$CompleteVoiceRequest;
.source "VoiceSettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exsettings/utils/VoiceSettingsActivity;->notifySuccess(Ljava/lang/CharSequence;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/utils/VoiceSettingsActivity;


# direct methods
.method constructor <init>(Lcom/android/exsettings/utils/VoiceSettingsActivity;Ljava/lang/CharSequence;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/exsettings/utils/VoiceSettingsActivity;
    .param p2, "$anonymous0"    # Ljava/lang/CharSequence;
    .param p3, "$anonymous1"    # Landroid/os/Bundle;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/android/exsettings/utils/VoiceSettingsActivity$1;->this$0:Lcom/android/exsettings/utils/VoiceSettingsActivity;

    invoke-direct {p0, p2, p3}, Landroid/app/VoiceInteractor$CompleteVoiceRequest;-><init>(Ljava/lang/CharSequence;Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public onCompleteResult(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "options"    # Landroid/os/Bundle;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/exsettings/utils/VoiceSettingsActivity$1;->this$0:Lcom/android/exsettings/utils/VoiceSettingsActivity;

    invoke-virtual {v0}, Lcom/android/exsettings/utils/VoiceSettingsActivity;->finish()V

    .line 70
    return-void
.end method
