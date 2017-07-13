.class Lcom/android/exsettings/notification/SoundSettings$1;
.super Ljava/lang/Object;
.source "SoundSettings.java"

# interfaces
.implements Lcom/android/exsettings/notification/IncreasingRingVolumePreference$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/notification/SoundSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/notification/SoundSettings;


# direct methods
.method constructor <init>(Lcom/android/exsettings/notification/SoundSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/exsettings/notification/SoundSettings;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/android/exsettings/notification/SoundSettings$1;->this$0:Lcom/android/exsettings/notification/SoundSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStartingSample()V
    .locals 4

    .prologue
    const/4 v1, 0x3

    .line 113
    iget-object v0, p0, Lcom/android/exsettings/notification/SoundSettings$1;->this$0:Lcom/android/exsettings/notification/SoundSettings;

    invoke-static {v0}, Lcom/android/exsettings/notification/SoundSettings;->-get5(Lcom/android/exsettings/notification/SoundSettings;)Lcom/android/exsettings/notification/SoundSettings$VolumePreferenceCallback;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/exsettings/notification/SoundSettings$VolumePreferenceCallback;->stopSample()V

    .line 114
    iget-object v0, p0, Lcom/android/exsettings/notification/SoundSettings$1;->this$0:Lcom/android/exsettings/notification/SoundSettings;

    invoke-static {v0}, Lcom/android/exsettings/notification/SoundSettings;->-get1(Lcom/android/exsettings/notification/SoundSettings;)Lcom/android/exsettings/notification/SoundSettings$H;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/exsettings/notification/SoundSettings$H;->removeMessages(I)V

    .line 115
    iget-object v0, p0, Lcom/android/exsettings/notification/SoundSettings$1;->this$0:Lcom/android/exsettings/notification/SoundSettings;

    invoke-static {v0}, Lcom/android/exsettings/notification/SoundSettings;->-get1(Lcom/android/exsettings/notification/SoundSettings;)Lcom/android/exsettings/notification/SoundSettings$H;

    move-result-object v0

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/exsettings/notification/SoundSettings$H;->sendEmptyMessageDelayed(IJ)Z

    .line 112
    return-void
.end method
