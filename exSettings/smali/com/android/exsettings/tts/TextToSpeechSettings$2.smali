.class Lcom/android/exsettings/tts/TextToSpeechSettings$2;
.super Ljava/lang/Object;
.source "TextToSpeechSettings.java"

# interfaces
.implements Landroid/speech/tts/TextToSpeech$OnInitListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/tts/TextToSpeechSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/tts/TextToSpeechSettings;


# direct methods
.method constructor <init>(Lcom/android/exsettings/tts/TextToSpeechSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/exsettings/tts/TextToSpeechSettings;

    .prologue
    .line 139
    iput-object p1, p0, Lcom/android/exsettings/tts/TextToSpeechSettings$2;->this$0:Lcom/android/exsettings/tts/TextToSpeechSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInit(I)V
    .locals 1
    .param p1, "status"    # I

    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/exsettings/tts/TextToSpeechSettings$2;->this$0:Lcom/android/exsettings/tts/TextToSpeechSettings;

    invoke-virtual {v0, p1}, Lcom/android/exsettings/tts/TextToSpeechSettings;->onUpdateEngine(I)V

    .line 141
    return-void
.end method
