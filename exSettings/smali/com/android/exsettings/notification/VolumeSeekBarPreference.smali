.class public Lcom/android/exsettings/notification/VolumeSeekBarPreference;
.super Landroid/preference/SeekBarPreference;
.source "VolumeSeekBarPreference.java"

# interfaces
.implements Landroid/preference/PreferenceManager$OnActivityStopListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exsettings/notification/VolumeSeekBarPreference$Callback;
    }
.end annotation


# instance fields
.field private mCallback:Lcom/android/exsettings/notification/VolumeSeekBarPreference$Callback;

.field private mIconResId:I

.field private mIconView:Landroid/widget/ImageView;

.field private mMuteIconResId:I

.field private mMuted:Z

.field private mSeekBar:Landroid/widget/SeekBar;

.field private mStopped:Z

.field private mStream:I

.field private mSuppressionText:Ljava/lang/String;

.field private mSuppressionTextView:Landroid/widget/TextView;

.field private mVolumizer:Landroid/preference/SeekBarVolumizer;

.field private mZenMuted:Z


# direct methods
.method static synthetic -get0(Lcom/android/exsettings/notification/VolumeSeekBarPreference;)Lcom/android/exsettings/notification/VolumeSeekBarPreference$Callback;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/notification/VolumeSeekBarPreference;->mCallback:Lcom/android/exsettings/notification/VolumeSeekBarPreference$Callback;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/exsettings/notification/VolumeSeekBarPreference;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/exsettings/notification/VolumeSeekBarPreference;->mMuted:Z

    return v0
.end method

.method static synthetic -get2(Lcom/android/exsettings/notification/VolumeSeekBarPreference;)I
    .locals 1

    iget v0, p0, Lcom/android/exsettings/notification/VolumeSeekBarPreference;->mStream:I

    return v0
.end method

.method static synthetic -get3(Lcom/android/exsettings/notification/VolumeSeekBarPreference;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/exsettings/notification/VolumeSeekBarPreference;->mZenMuted:Z

    return v0
.end method

.method static synthetic -set0(Lcom/android/exsettings/notification/VolumeSeekBarPreference;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/exsettings/notification/VolumeSeekBarPreference;->mMuted:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/exsettings/notification/VolumeSeekBarPreference;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/exsettings/notification/VolumeSeekBarPreference;->mZenMuted:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/exsettings/notification/VolumeSeekBarPreference;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/exsettings/notification/VolumeSeekBarPreference;->updateIconView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 71
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/exsettings/notification/VolumeSeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 67
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/exsettings/notification/VolumeSeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 63
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/exsettings/notification/VolumeSeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 58
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/preference/SeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 59
    const v0, 0x7f0400d1

    invoke-virtual {p0, v0}, Lcom/android/exsettings/notification/VolumeSeekBarPreference;->setLayoutResource(I)V

    .line 57
    return-void
.end method

.method private getMediaVolumeUri()Landroid/net/Uri;
    .locals 2

    .prologue
    .line 186
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "android.resource://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 187
    invoke-virtual {p0}, Lcom/android/exsettings/notification/VolumeSeekBarPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 186
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 188
    const-string/jumbo v1, "/"

    .line 186
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 188
    const/high16 v1, 0x7f090000

    .line 186
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private init()V
    .locals 5

    .prologue
    .line 111
    iget-object v2, p0, Lcom/android/exsettings/notification/VolumeSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    if-nez v2, :cond_0

    return-void

    .line 112
    :cond_0
    invoke-virtual {p0}, Lcom/android/exsettings/notification/VolumeSeekBarPreference;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/preference/PreferenceManager;->registerOnActivityStopListener(Landroid/preference/PreferenceManager$OnActivityStopListener;)V

    .line 113
    new-instance v1, Lcom/android/exsettings/notification/VolumeSeekBarPreference$1;

    invoke-direct {v1, p0}, Lcom/android/exsettings/notification/VolumeSeekBarPreference$1;-><init>(Lcom/android/exsettings/notification/VolumeSeekBarPreference;)V

    .line 134
    .local v1, "sbvc":Landroid/preference/SeekBarVolumizer$Callback;
    iget v2, p0, Lcom/android/exsettings/notification/VolumeSeekBarPreference;->mStream:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_4

    invoke-direct {p0}, Lcom/android/exsettings/notification/VolumeSeekBarPreference;->getMediaVolumeUri()Landroid/net/Uri;

    move-result-object v0

    .line 135
    :goto_0
    iget-object v2, p0, Lcom/android/exsettings/notification/VolumeSeekBarPreference;->mVolumizer:Landroid/preference/SeekBarVolumizer;

    if-nez v2, :cond_1

    .line 136
    new-instance v2, Landroid/preference/SeekBarVolumizer;

    invoke-virtual {p0}, Lcom/android/exsettings/notification/VolumeSeekBarPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    iget v4, p0, Lcom/android/exsettings/notification/VolumeSeekBarPreference;->mStream:I

    invoke-direct {v2, v3, v4, v0, v1}, Landroid/preference/SeekBarVolumizer;-><init>(Landroid/content/Context;ILandroid/net/Uri;Landroid/preference/SeekBarVolumizer$Callback;)V

    iput-object v2, p0, Lcom/android/exsettings/notification/VolumeSeekBarPreference;->mVolumizer:Landroid/preference/SeekBarVolumizer;

    .line 138
    :cond_1
    iget-object v2, p0, Lcom/android/exsettings/notification/VolumeSeekBarPreference;->mVolumizer:Landroid/preference/SeekBarVolumizer;

    invoke-virtual {v2}, Landroid/preference/SeekBarVolumizer;->start()V

    .line 139
    iget-object v2, p0, Lcom/android/exsettings/notification/VolumeSeekBarPreference;->mVolumizer:Landroid/preference/SeekBarVolumizer;

    iget-object v3, p0, Lcom/android/exsettings/notification/VolumeSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2, v3}, Landroid/preference/SeekBarVolumizer;->setSeekBar(Landroid/widget/SeekBar;)V

    .line 140
    invoke-direct {p0}, Lcom/android/exsettings/notification/VolumeSeekBarPreference;->updateIconView()V

    .line 141
    iget-object v2, p0, Lcom/android/exsettings/notification/VolumeSeekBarPreference;->mCallback:Lcom/android/exsettings/notification/VolumeSeekBarPreference$Callback;

    if-eqz v2, :cond_2

    .line 142
    iget-object v2, p0, Lcom/android/exsettings/notification/VolumeSeekBarPreference;->mCallback:Lcom/android/exsettings/notification/VolumeSeekBarPreference$Callback;

    iget v3, p0, Lcom/android/exsettings/notification/VolumeSeekBarPreference;->mStream:I

    iget-object v4, p0, Lcom/android/exsettings/notification/VolumeSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v4}, Landroid/widget/SeekBar;->getProgress()I

    move-result v4

    invoke-interface {v2, v3, v4}, Lcom/android/exsettings/notification/VolumeSeekBarPreference$Callback;->onStreamValueChanged(II)V

    .line 144
    :cond_2
    invoke-direct {p0}, Lcom/android/exsettings/notification/VolumeSeekBarPreference;->updateSuppressionText()V

    .line 145
    invoke-virtual {p0}, Lcom/android/exsettings/notification/VolumeSeekBarPreference;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_3

    .line 146
    iget-object v2, p0, Lcom/android/exsettings/notification/VolumeSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 147
    iget-object v2, p0, Lcom/android/exsettings/notification/VolumeSeekBarPreference;->mVolumizer:Landroid/preference/SeekBarVolumizer;

    invoke-virtual {v2}, Landroid/preference/SeekBarVolumizer;->stop()V

    .line 110
    :cond_3
    return-void

    .line 134
    :cond_4
    const/4 v0, 0x0

    .local v0, "sampleUri":Landroid/net/Uri;
    goto :goto_0
.end method

.method private updateIconView()V
    .locals 2

    .prologue
    .line 161
    iget-object v0, p0, Lcom/android/exsettings/notification/VolumeSeekBarPreference;->mIconView:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    return-void

    .line 162
    :cond_0
    iget v0, p0, Lcom/android/exsettings/notification/VolumeSeekBarPreference;->mIconResId:I

    if-eqz v0, :cond_1

    .line 163
    iget-object v0, p0, Lcom/android/exsettings/notification/VolumeSeekBarPreference;->mIconView:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/exsettings/notification/VolumeSeekBarPreference;->mIconResId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 160
    :goto_0
    return-void

    .line 164
    :cond_1
    iget v0, p0, Lcom/android/exsettings/notification/VolumeSeekBarPreference;->mMuteIconResId:I

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/exsettings/notification/VolumeSeekBarPreference;->mMuted:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/exsettings/notification/VolumeSeekBarPreference;->mZenMuted:Z

    if-eqz v0, :cond_3

    .line 167
    :cond_2
    iget-object v0, p0, Lcom/android/exsettings/notification/VolumeSeekBarPreference;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/exsettings/notification/VolumeSeekBarPreference;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 165
    :cond_3
    iget-object v0, p0, Lcom/android/exsettings/notification/VolumeSeekBarPreference;->mIconView:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/exsettings/notification/VolumeSeekBarPreference;->mMuteIconResId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method private updateSuppressionText()V
    .locals 5

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 198
    iget-object v1, p0, Lcom/android/exsettings/notification/VolumeSeekBarPreference;->mSuppressionTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/exsettings/notification/VolumeSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz v1, :cond_0

    .line 199
    iget-object v1, p0, Lcom/android/exsettings/notification/VolumeSeekBarPreference;->mSuppressionTextView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/exsettings/notification/VolumeSeekBarPreference;->mSuppressionText:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 200
    iget-object v1, p0, Lcom/android/exsettings/notification/VolumeSeekBarPreference;->mSuppressionText:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    .line 201
    .local v0, "showSuppression":Z
    :goto_0
    iget-object v4, p0, Lcom/android/exsettings/notification/VolumeSeekBarPreference;->mSuppressionTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    move v1, v2

    :goto_1
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 202
    iget-object v1, p0, Lcom/android/exsettings/notification/VolumeSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_3

    :goto_2
    invoke-virtual {v1, v3}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 197
    .end local v0    # "showSuppression":Z
    :cond_0
    return-void

    .line 200
    :cond_1
    const/4 v0, 0x1

    .restart local v0    # "showSuppression":Z
    goto :goto_0

    :cond_2
    move v1, v3

    .line 201
    goto :goto_1

    :cond_3
    move v3, v2

    .line 202
    goto :goto_2
.end method


# virtual methods
.method public onActivityResume()V
    .locals 1

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/android/exsettings/notification/VolumeSeekBarPreference;->mStopped:Z

    if-eqz v0, :cond_0

    .line 84
    invoke-direct {p0}, Lcom/android/exsettings/notification/VolumeSeekBarPreference;->init()V

    .line 82
    :cond_0
    return-void
.end method

.method public onActivityStop()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 90
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/exsettings/notification/VolumeSeekBarPreference;->mStopped:Z

    .line 91
    iget-object v0, p0, Lcom/android/exsettings/notification/VolumeSeekBarPreference;->mVolumizer:Landroid/preference/SeekBarVolumizer;

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/android/exsettings/notification/VolumeSeekBarPreference;->mVolumizer:Landroid/preference/SeekBarVolumizer;

    invoke-virtual {v0}, Landroid/preference/SeekBarVolumizer;->stop()V

    .line 93
    iput-object v1, p0, Lcom/android/exsettings/notification/VolumeSeekBarPreference;->mVolumizer:Landroid/preference/SeekBarVolumizer;

    .line 89
    :cond_0
    return-void
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 99
    invoke-super {p0, p1}, Landroid/preference/SeekBarPreference;->onBindView(Landroid/view/View;)V

    .line 100
    iget v0, p0, Lcom/android/exsettings/notification/VolumeSeekBarPreference;->mStream:I

    if-nez v0, :cond_0

    .line 101
    const-string/jumbo v0, "VolumeSeekBarPreference"

    const-string/jumbo v1, "No stream found, not binding volumizer"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    return-void

    .line 104
    :cond_0
    const v0, 0x102039a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/android/exsettings/notification/VolumeSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    .line 105
    const v0, 0x1020006

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/exsettings/notification/VolumeSeekBarPreference;->mIconView:Landroid/widget/ImageView;

    .line 106
    const v0, 0x7f1301b0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/exsettings/notification/VolumeSeekBarPreference;->mSuppressionTextView:Landroid/widget/TextView;

    .line 107
    invoke-direct {p0}, Lcom/android/exsettings/notification/VolumeSeekBarPreference;->init()V

    .line 98
    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromTouch"    # Z

    .prologue
    .line 154
    invoke-super {p0, p1, p2, p3}, Landroid/preference/SeekBarPreference;->onProgressChanged(Landroid/widget/SeekBar;IZ)V

    .line 155
    iget-object v0, p0, Lcom/android/exsettings/notification/VolumeSeekBarPreference;->mCallback:Lcom/android/exsettings/notification/VolumeSeekBarPreference$Callback;

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/android/exsettings/notification/VolumeSeekBarPreference;->mCallback:Lcom/android/exsettings/notification/VolumeSeekBarPreference$Callback;

    iget v1, p0, Lcom/android/exsettings/notification/VolumeSeekBarPreference;->mStream:I

    invoke-interface {v0, v1, p2}, Lcom/android/exsettings/notification/VolumeSeekBarPreference$Callback;->onStreamValueChanged(II)V

    .line 153
    :cond_0
    return-void
.end method

.method public setCallback(Lcom/android/exsettings/notification/VolumeSeekBarPreference$Callback;)V
    .locals 0
    .param p1, "callback"    # Lcom/android/exsettings/notification/VolumeSeekBarPreference$Callback;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/android/exsettings/notification/VolumeSeekBarPreference;->mCallback:Lcom/android/exsettings/notification/VolumeSeekBarPreference$Callback;

    .line 78
    return-void
.end method

.method public setMuteIcon(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 180
    iget v0, p0, Lcom/android/exsettings/notification/VolumeSeekBarPreference;->mMuteIconResId:I

    if-ne v0, p1, :cond_0

    return-void

    .line 181
    :cond_0
    iput p1, p0, Lcom/android/exsettings/notification/VolumeSeekBarPreference;->mMuteIconResId:I

    .line 182
    invoke-direct {p0}, Lcom/android/exsettings/notification/VolumeSeekBarPreference;->updateIconView()V

    .line 179
    return-void
.end method

.method public setStream(I)V
    .locals 0
    .param p1, "stream"    # I

    .prologue
    .line 75
    iput p1, p0, Lcom/android/exsettings/notification/VolumeSeekBarPreference;->mStream:I

    .line 74
    return-void
.end method

.method public setSuppressionText(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 192
    iget-object v0, p0, Lcom/android/exsettings/notification/VolumeSeekBarPreference;->mSuppressionText:Ljava/lang/String;

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 193
    :cond_0
    iput-object p1, p0, Lcom/android/exsettings/notification/VolumeSeekBarPreference;->mSuppressionText:Ljava/lang/String;

    .line 194
    invoke-direct {p0}, Lcom/android/exsettings/notification/VolumeSeekBarPreference;->updateSuppressionText()V

    .line 191
    return-void
.end method

.method public showIcon(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 174
    iget v0, p0, Lcom/android/exsettings/notification/VolumeSeekBarPreference;->mIconResId:I

    if-ne v0, p1, :cond_0

    return-void

    .line 175
    :cond_0
    iput p1, p0, Lcom/android/exsettings/notification/VolumeSeekBarPreference;->mIconResId:I

    .line 176
    invoke-direct {p0}, Lcom/android/exsettings/notification/VolumeSeekBarPreference;->updateIconView()V

    .line 171
    return-void
.end method
