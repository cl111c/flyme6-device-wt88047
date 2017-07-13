.class Lcom/android/exsettings/tts/TtsEnginePreference$3;
.super Ljava/lang/Object;
.source "TtsEnginePreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exsettings/tts/TtsEnginePreference;->getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/tts/TtsEnginePreference;


# direct methods
.method constructor <init>(Lcom/android/exsettings/tts/TtsEnginePreference;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/exsettings/tts/TtsEnginePreference;

    .prologue
    .line 148
    iput-object p1, p0, Lcom/android/exsettings/tts/TtsEnginePreference$3;->this$0:Lcom/android/exsettings/tts/TtsEnginePreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 151
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 152
    .local v2, "args":Landroid/os/Bundle;
    const-string/jumbo v0, "name"

    iget-object v1, p0, Lcom/android/exsettings/tts/TtsEnginePreference$3;->this$0:Lcom/android/exsettings/tts/TtsEnginePreference;

    invoke-static {v1}, Lcom/android/exsettings/tts/TtsEnginePreference;->-get0(Lcom/android/exsettings/tts/TtsEnginePreference;)Landroid/speech/tts/TextToSpeech$EngineInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/speech/tts/TextToSpeech$EngineInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    const-string/jumbo v0, "label"

    iget-object v1, p0, Lcom/android/exsettings/tts/TtsEnginePreference$3;->this$0:Lcom/android/exsettings/tts/TtsEnginePreference;

    invoke-static {v1}, Lcom/android/exsettings/tts/TtsEnginePreference;->-get0(Lcom/android/exsettings/tts/TtsEnginePreference;)Landroid/speech/tts/TextToSpeech$EngineInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/speech/tts/TextToSpeech$EngineInfo;->label:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    iget-object v0, p0, Lcom/android/exsettings/tts/TtsEnginePreference$3;->this$0:Lcom/android/exsettings/tts/TtsEnginePreference;

    invoke-static {v0}, Lcom/android/exsettings/tts/TtsEnginePreference;->-get2(Lcom/android/exsettings/tts/TtsEnginePreference;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 155
    const-string/jumbo v0, "voices"

    iget-object v1, p0, Lcom/android/exsettings/tts/TtsEnginePreference$3;->this$0:Lcom/android/exsettings/tts/TtsEnginePreference;

    invoke-static {v1}, Lcom/android/exsettings/tts/TtsEnginePreference;->-get2(Lcom/android/exsettings/tts/TtsEnginePreference;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/android/exsettings/tts/TtsEnginePreference$3;->this$0:Lcom/android/exsettings/tts/TtsEnginePreference;

    invoke-static {v0}, Lcom/android/exsettings/tts/TtsEnginePreference;->-get1(Lcom/android/exsettings/tts/TtsEnginePreference;)Lcom/android/exsettings/SettingsActivity;

    move-result-object v0

    .line 163
    const-class v1, Lcom/android/exsettings/tts/TtsEngineSettingsFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 164
    iget-object v4, p0, Lcom/android/exsettings/tts/TtsEnginePreference$3;->this$0:Lcom/android/exsettings/tts/TtsEnginePreference;

    invoke-static {v4}, Lcom/android/exsettings/tts/TtsEnginePreference;->-get0(Lcom/android/exsettings/tts/TtsEnginePreference;)Landroid/speech/tts/TextToSpeech$EngineInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/speech/tts/TextToSpeech$EngineInfo;->label:Ljava/lang/String;

    move v6, v3

    .line 162
    invoke-virtual/range {v0 .. v6}, Lcom/android/exsettings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 150
    return-void
.end method
