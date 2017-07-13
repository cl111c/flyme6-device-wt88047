.class final Lcom/android/exsettings/notification/SoundSettings$VolumePreferenceCallback;
.super Ljava/lang/Object;
.source "SoundSettings.java"

# interfaces
.implements Lcom/android/exsettings/notification/VolumeSeekBarPreference$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/notification/SoundSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "VolumePreferenceCallback"
.end annotation


# instance fields
.field private mCurrent:Landroid/preference/SeekBarVolumizer;

.field final synthetic this$0:Lcom/android/exsettings/notification/SoundSettings;


# direct methods
.method private constructor <init>(Lcom/android/exsettings/notification/SoundSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/exsettings/notification/SoundSettings;

    .prologue
    .line 322
    iput-object p1, p0, Lcom/android/exsettings/notification/SoundSettings$VolumePreferenceCallback;->this$0:Lcom/android/exsettings/notification/SoundSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/exsettings/notification/SoundSettings;Lcom/android/exsettings/notification/SoundSettings$VolumePreferenceCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/exsettings/notification/SoundSettings;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/exsettings/notification/SoundSettings$VolumePreferenceCallback;-><init>(Lcom/android/exsettings/notification/SoundSettings;)V

    return-void
.end method


# virtual methods
.method public onSampleStarting(Landroid/preference/SeekBarVolumizer;)V
    .locals 4
    .param p1, "sbv"    # Landroid/preference/SeekBarVolumizer;

    .prologue
    const/4 v1, 0x3

    .line 327
    iget-object v0, p0, Lcom/android/exsettings/notification/SoundSettings$VolumePreferenceCallback;->mCurrent:Landroid/preference/SeekBarVolumizer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/exsettings/notification/SoundSettings$VolumePreferenceCallback;->mCurrent:Landroid/preference/SeekBarVolumizer;

    if-eq v0, p1, :cond_0

    .line 328
    iget-object v0, p0, Lcom/android/exsettings/notification/SoundSettings$VolumePreferenceCallback;->mCurrent:Landroid/preference/SeekBarVolumizer;

    invoke-virtual {v0}, Landroid/preference/SeekBarVolumizer;->stopSample()V

    .line 330
    :cond_0
    iget-object v0, p0, Lcom/android/exsettings/notification/SoundSettings$VolumePreferenceCallback;->this$0:Lcom/android/exsettings/notification/SoundSettings;

    invoke-static {v0}, Lcom/android/exsettings/notification/SoundSettings;->-get2(Lcom/android/exsettings/notification/SoundSettings;)Lcom/android/exsettings/notification/IncreasingRingVolumePreference;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 331
    iget-object v0, p0, Lcom/android/exsettings/notification/SoundSettings$VolumePreferenceCallback;->this$0:Lcom/android/exsettings/notification/SoundSettings;

    invoke-static {v0}, Lcom/android/exsettings/notification/SoundSettings;->-get2(Lcom/android/exsettings/notification/SoundSettings;)Lcom/android/exsettings/notification/IncreasingRingVolumePreference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/exsettings/notification/IncreasingRingVolumePreference;->stopSample()V

    .line 333
    :cond_1
    iput-object p1, p0, Lcom/android/exsettings/notification/SoundSettings$VolumePreferenceCallback;->mCurrent:Landroid/preference/SeekBarVolumizer;

    .line 334
    iget-object v0, p0, Lcom/android/exsettings/notification/SoundSettings$VolumePreferenceCallback;->mCurrent:Landroid/preference/SeekBarVolumizer;

    if-eqz v0, :cond_2

    .line 335
    iget-object v0, p0, Lcom/android/exsettings/notification/SoundSettings$VolumePreferenceCallback;->this$0:Lcom/android/exsettings/notification/SoundSettings;

    invoke-static {v0}, Lcom/android/exsettings/notification/SoundSettings;->-get1(Lcom/android/exsettings/notification/SoundSettings;)Lcom/android/exsettings/notification/SoundSettings$H;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/exsettings/notification/SoundSettings$H;->removeMessages(I)V

    .line 336
    iget-object v0, p0, Lcom/android/exsettings/notification/SoundSettings$VolumePreferenceCallback;->this$0:Lcom/android/exsettings/notification/SoundSettings;

    invoke-static {v0}, Lcom/android/exsettings/notification/SoundSettings;->-get1(Lcom/android/exsettings/notification/SoundSettings;)Lcom/android/exsettings/notification/SoundSettings$H;

    move-result-object v0

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/exsettings/notification/SoundSettings$H;->sendEmptyMessageDelayed(IJ)Z

    .line 326
    :cond_2
    return-void
.end method

.method public onStreamValueChanged(II)V
    .locals 0
    .param p1, "stream"    # I
    .param p2, "progress"    # I

    .prologue
    .line 341
    return-void
.end method

.method public stopSample()V
    .locals 1

    .prologue
    .line 346
    iget-object v0, p0, Lcom/android/exsettings/notification/SoundSettings$VolumePreferenceCallback;->mCurrent:Landroid/preference/SeekBarVolumizer;

    if-eqz v0, :cond_0

    .line 347
    iget-object v0, p0, Lcom/android/exsettings/notification/SoundSettings$VolumePreferenceCallback;->mCurrent:Landroid/preference/SeekBarVolumizer;

    invoke-virtual {v0}, Landroid/preference/SeekBarVolumizer;->stopSample()V

    .line 345
    :cond_0
    return-void
.end method
