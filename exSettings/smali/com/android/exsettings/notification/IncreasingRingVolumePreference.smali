.class public Lcom/android/exsettings/notification/IncreasingRingVolumePreference;
.super Landroid/preference/Preference;
.source "IncreasingRingVolumePreference.java"

# interfaces
.implements Landroid/preference/PreferenceManager$OnActivityStopListener;
.implements Landroid/os/Handler$Callback;
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exsettings/notification/IncreasingRingVolumePreference$Callback;
    }
.end annotation


# instance fields
.field private mCallback:Lcom/android/exsettings/notification/IncreasingRingVolumePreference$Callback;

.field private mHandler:Landroid/os/Handler;

.field private final mMainHandler:Landroid/os/Handler;

.field private mRampUpTimeSeekBar:Landroid/widget/SeekBar;

.field private mRampUpTimeValue:Landroid/widget/TextView;

.field private mRingtone:Landroid/media/Ringtone;

.field private mStartVolumeSeekBar:Landroid/widget/SeekBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 67
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/exsettings/notification/IncreasingRingVolumePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 71
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/exsettings/notification/IncreasingRingVolumePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 76
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/exsettings/notification/IncreasingRingVolumePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 75
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 81
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 58
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/android/exsettings/notification/IncreasingRingVolumePreference;->mMainHandler:Landroid/os/Handler;

    .line 82
    const v0, 0x7f0400bd

    invoke-virtual {p0, v0}, Lcom/android/exsettings/notification/IncreasingRingVolumePreference;->setLayoutResource(I)V

    .line 83
    invoke-direct {p0}, Lcom/android/exsettings/notification/IncreasingRingVolumePreference;->initHandler()V

    .line 80
    return-void
.end method

.method private initHandler()V
    .locals 3

    .prologue
    .line 179
    iget-object v1, p0, Lcom/android/exsettings/notification/IncreasingRingVolumePreference;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    return-void

    .line 181
    :cond_0
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "IncreasingRingMinVolumePreference.CallbackHandler"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 182
    .local v0, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 184
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Lcom/android/exsettings/notification/IncreasingRingVolumePreference;->mHandler:Landroid/os/Handler;

    .line 185
    iget-object v1, p0, Lcom/android/exsettings/notification/IncreasingRingVolumePreference;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 178
    return-void
.end method

.method private isSamplePlaying()Z
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/android/exsettings/notification/IncreasingRingVolumePreference;->mRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/exsettings/notification/IncreasingRingVolumePreference;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->isPlaying()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onInitSample()V
    .locals 3

    .prologue
    .line 189
    invoke-virtual {p0}, Lcom/android/exsettings/notification/IncreasingRingVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 190
    sget-object v1, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    .line 189
    invoke-static {v0, v1}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/notification/IncreasingRingVolumePreference;->mRingtone:Landroid/media/Ringtone;

    .line 191
    iget-object v0, p0, Lcom/android/exsettings/notification/IncreasingRingVolumePreference;->mRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/android/exsettings/notification/IncreasingRingVolumePreference;->mRingtone:Landroid/media/Ringtone;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/Ringtone;->setStreamType(I)V

    .line 193
    iget-object v0, p0, Lcom/android/exsettings/notification/IncreasingRingVolumePreference;->mRingtone:Landroid/media/Ringtone;

    .line 194
    new-instance v1, Landroid/media/AudioAttributes$Builder;

    iget-object v2, p0, Lcom/android/exsettings/notification/IncreasingRingVolumePreference;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v2}, Landroid/media/Ringtone;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/media/AudioAttributes$Builder;-><init>(Landroid/media/AudioAttributes;)V

    .line 195
    const/16 v2, 0xc0

    .line 194
    invoke-virtual {v1, v2}, Landroid/media/AudioAttributes$Builder;->setFlags(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v1

    .line 193
    invoke-virtual {v0, v1}, Landroid/media/Ringtone;->setAudioAttributes(Landroid/media/AudioAttributes;)V

    .line 188
    :cond_0
    return-void
.end method

.method private onSetVolume(F)V
    .locals 1
    .param p1, "volume"    # F

    .prologue
    .line 230
    iget-object v0, p0, Lcom/android/exsettings/notification/IncreasingRingVolumePreference;->mRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_0

    .line 231
    iget-object v0, p0, Lcom/android/exsettings/notification/IncreasingRingVolumePreference;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0, p1}, Landroid/media/Ringtone;->setVolume(F)V

    .line 229
    :cond_0
    return-void
.end method

.method private onStartSample(F)V
    .locals 3
    .param p1, "volume"    # F

    .prologue
    .line 213
    iget-object v1, p0, Lcom/android/exsettings/notification/IncreasingRingVolumePreference;->mRingtone:Landroid/media/Ringtone;

    if-nez v1, :cond_0

    .line 214
    return-void

    .line 216
    :cond_0
    invoke-direct {p0}, Lcom/android/exsettings/notification/IncreasingRingVolumePreference;->isSamplePlaying()Z

    move-result v1

    if-nez v1, :cond_2

    .line 217
    iget-object v1, p0, Lcom/android/exsettings/notification/IncreasingRingVolumePreference;->mCallback:Lcom/android/exsettings/notification/IncreasingRingVolumePreference$Callback;

    if-eqz v1, :cond_1

    .line 218
    iget-object v1, p0, Lcom/android/exsettings/notification/IncreasingRingVolumePreference;->mCallback:Lcom/android/exsettings/notification/IncreasingRingVolumePreference$Callback;

    invoke-interface {v1}, Lcom/android/exsettings/notification/IncreasingRingVolumePreference$Callback;->onStartingSample()V

    .line 221
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/android/exsettings/notification/IncreasingRingVolumePreference;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v1}, Landroid/media/Ringtone;->play()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 226
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/android/exsettings/notification/IncreasingRingVolumePreference;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v1, p1}, Landroid/media/Ringtone;->setVolume(F)V

    .line 212
    return-void

    .line 222
    :catch_0
    move-exception v0

    .line 223
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v1, "IncreasingRingMinVolumePreference"

    const-string/jumbo v2, "Error playing ringtone"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private onStopSample()V
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/android/exsettings/notification/IncreasingRingVolumePreference;->mRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_0

    .line 254
    iget-object v0, p0, Lcom/android/exsettings/notification/IncreasingRingVolumePreference;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->stop()V

    .line 252
    :cond_0
    return-void
.end method

.method private postStartSample(I)V
    .locals 8
    .param p1, "progress"    # I

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 202
    invoke-direct {p0}, Lcom/android/exsettings/notification/IncreasingRingVolumePreference;->isSamplePlaying()Z

    move-result v0

    .line 203
    .local v0, "playing":Z
    iget-object v1, p0, Lcom/android/exsettings/notification/IncreasingRingVolumePreference;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 204
    iget-object v1, p0, Lcom/android/exsettings/notification/IncreasingRingVolumePreference;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 205
    iget-object v3, p0, Lcom/android/exsettings/notification/IncreasingRingVolumePreference;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/exsettings/notification/IncreasingRingVolumePreference;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    .line 206
    if-eqz v0, :cond_1

    const/16 v1, 0x3e8

    :goto_0
    int-to-long v6, v1

    .line 205
    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 207
    if-eqz v0, :cond_0

    .line 208
    iget-object v1, p0, Lcom/android/exsettings/notification/IncreasingRingVolumePreference;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/exsettings/notification/IncreasingRingVolumePreference;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v5, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 201
    :cond_0
    return-void

    :cond_1
    move v1, v2

    .line 206
    goto :goto_0
.end method

.method private postStopSample()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 247
    iget-object v0, p0, Lcom/android/exsettings/notification/IncreasingRingVolumePreference;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 248
    iget-object v0, p0, Lcom/android/exsettings/notification/IncreasingRingVolumePreference;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 249
    iget-object v0, p0, Lcom/android/exsettings/notification/IncreasingRingVolumePreference;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 245
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/high16 v1, 0x447a0000    # 1000.0f

    .line 105
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 119
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 107
    :pswitch_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    int-to-float v0, v0

    div-float/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/android/exsettings/notification/IncreasingRingVolumePreference;->onStartSample(F)V

    goto :goto_0

    .line 110
    :pswitch_1
    invoke-direct {p0}, Lcom/android/exsettings/notification/IncreasingRingVolumePreference;->onStopSample()V

    goto :goto_0

    .line 113
    :pswitch_2
    invoke-direct {p0}, Lcom/android/exsettings/notification/IncreasingRingVolumePreference;->onInitSample()V

    goto :goto_0

    .line 116
    :pswitch_3
    iget v0, p1, Landroid/os/Message;->arg1:I

    int-to-float v0, v0

    div-float/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/android/exsettings/notification/IncreasingRingVolumePreference;->onSetVolume(F)V

    goto :goto_0

    .line 105
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onActivityResume()V
    .locals 0

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/android/exsettings/notification/IncreasingRingVolumePreference;->initHandler()V

    .line 90
    return-void
.end method

.method public onActivityStop()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 96
    iget-object v0, p0, Lcom/android/exsettings/notification/IncreasingRingVolumePreference;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 97
    invoke-direct {p0}, Lcom/android/exsettings/notification/IncreasingRingVolumePreference;->postStopSample()V

    .line 98
    iget-object v0, p0, Lcom/android/exsettings/notification/IncreasingRingVolumePreference;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quitSafely()V

    .line 99
    iput-object v1, p0, Lcom/android/exsettings/notification/IncreasingRingVolumePreference;->mHandler:Landroid/os/Handler;

    .line 95
    :cond_0
    return-void
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 124
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 125
    invoke-virtual {p0}, Lcom/android/exsettings/notification/IncreasingRingVolumePreference;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroid/preference/PreferenceManager;->registerOnActivityStopListener(Landroid/preference/PreferenceManager$OnActivityStopListener;)V

    .line 127
    invoke-direct {p0}, Lcom/android/exsettings/notification/IncreasingRingVolumePreference;->initHandler()V

    .line 129
    const v4, 0x7f130192

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/SeekBar;

    .line 130
    .local v2, "seekBar":Landroid/widget/SeekBar;
    iget-object v4, p0, Lcom/android/exsettings/notification/IncreasingRingVolumePreference;->mStartVolumeSeekBar:Landroid/widget/SeekBar;

    if-ne v2, v4, :cond_0

    return-void

    .line 132
    :cond_0
    iput-object v2, p0, Lcom/android/exsettings/notification/IncreasingRingVolumePreference;->mStartVolumeSeekBar:Landroid/widget/SeekBar;

    .line 133
    const v4, 0x7f130195

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/SeekBar;

    iput-object v4, p0, Lcom/android/exsettings/notification/IncreasingRingVolumePreference;->mRampUpTimeSeekBar:Landroid/widget/SeekBar;

    .line 134
    const v4, 0x7f130194

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/exsettings/notification/IncreasingRingVolumePreference;->mRampUpTimeValue:Landroid/widget/TextView;

    .line 136
    invoke-virtual {p0}, Lcom/android/exsettings/notification/IncreasingRingVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 138
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string/jumbo v4, "increasing_ring_start_vol"

    const v5, 0x3dcccccd    # 0.1f

    .line 137
    invoke-static {v0, v4, v5}, Lcyanogenmod/providers/CMSettings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v3

    .line 140
    .local v3, "startVolume":F
    const-string/jumbo v4, "increasing_ring_ramp_up_time"

    const/16 v5, 0xa

    .line 139
    invoke-static {v0, v4, v5}, Lcyanogenmod/providers/CMSettings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 142
    .local v1, "rampUpTime":I
    iget-object v4, p0, Lcom/android/exsettings/notification/IncreasingRingVolumePreference;->mStartVolumeSeekBar:Landroid/widget/SeekBar;

    const/high16 v5, 0x447a0000    # 1000.0f

    mul-float/2addr v5, v3

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 143
    iget-object v4, p0, Lcom/android/exsettings/notification/IncreasingRingVolumePreference;->mStartVolumeSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v4, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 144
    iget-object v4, p0, Lcom/android/exsettings/notification/IncreasingRingVolumePreference;->mRampUpTimeSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v4, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 145
    iget-object v4, p0, Lcom/android/exsettings/notification/IncreasingRingVolumePreference;->mRampUpTimeSeekBar:Landroid/widget/SeekBar;

    div-int/lit8 v5, v1, 0x5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 146
    iget-object v4, p0, Lcom/android/exsettings/notification/IncreasingRingVolumePreference;->mRampUpTimeValue:Landroid/widget/TextView;

    .line 147
    invoke-virtual {p0}, Lcom/android/exsettings/notification/IncreasingRingVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v5

    mul-int/lit16 v6, v1, 0x3e8

    int-to-long v6, v6

    invoke-static {v5, v6, v7}, Landroid/text/format/Formatter;->formatShortElapsedTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v5

    .line 146
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 6
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromTouch"    # Z

    .prologue
    .line 163
    invoke-virtual {p0}, Lcom/android/exsettings/notification/IncreasingRingVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 164
    .local v0, "cr":Landroid/content/ContentResolver;
    if-eqz p3, :cond_1

    iget-object v2, p0, Lcom/android/exsettings/notification/IncreasingRingVolumePreference;->mStartVolumeSeekBar:Landroid/widget/SeekBar;

    if-ne p1, v2, :cond_1

    .line 165
    const-string/jumbo v2, "increasing_ring_start_vol"

    .line 166
    int-to-float v3, p2

    const/high16 v4, 0x447a0000    # 1000.0f

    div-float/2addr v3, v4

    .line 165
    invoke-static {v0, v2, v3}, Lcyanogenmod/providers/CMSettings$System;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    .line 162
    :cond_0
    :goto_0
    return-void

    .line 167
    :cond_1
    iget-object v2, p0, Lcom/android/exsettings/notification/IncreasingRingVolumePreference;->mRampUpTimeSeekBar:Landroid/widget/SeekBar;

    if-ne p1, v2, :cond_0

    .line 168
    add-int/lit8 v2, p2, 0x1

    mul-int/lit8 v1, v2, 0x5

    .line 169
    .local v1, "seconds":I
    iget-object v2, p0, Lcom/android/exsettings/notification/IncreasingRingVolumePreference;->mRampUpTimeValue:Landroid/widget/TextView;

    .line 170
    invoke-virtual {p0}, Lcom/android/exsettings/notification/IncreasingRingVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v3

    mul-int/lit16 v4, v1, 0x3e8

    int-to-long v4, v4

    invoke-static {v3, v4, v5}, Landroid/text/format/Formatter;->formatShortElapsedTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    .line 169
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 171
    if-eqz p3, :cond_0

    .line 173
    const-string/jumbo v2, "increasing_ring_ramp_up_time"

    .line 172
    invoke-static {v0, v2, v1}, Lcyanogenmod/providers/CMSettings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 151
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/exsettings/notification/IncreasingRingVolumePreference;->mStartVolumeSeekBar:Landroid/widget/SeekBar;

    if-ne p1, v0, :cond_0

    .line 157
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/exsettings/notification/IncreasingRingVolumePreference;->postStartSample(I)V

    .line 155
    :cond_0
    return-void
.end method

.method public setCallback(Lcom/android/exsettings/notification/IncreasingRingVolumePreference$Callback;)V
    .locals 0
    .param p1, "callback"    # Lcom/android/exsettings/notification/IncreasingRingVolumePreference$Callback;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/android/exsettings/notification/IncreasingRingVolumePreference;->mCallback:Lcom/android/exsettings/notification/IncreasingRingVolumePreference$Callback;

    .line 86
    return-void
.end method

.method public stopSample()V
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lcom/android/exsettings/notification/IncreasingRingVolumePreference;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 241
    invoke-direct {p0}, Lcom/android/exsettings/notification/IncreasingRingVolumePreference;->postStopSample()V

    .line 239
    :cond_0
    return-void
.end method
