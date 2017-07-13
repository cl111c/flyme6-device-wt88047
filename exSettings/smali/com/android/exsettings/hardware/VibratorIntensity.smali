.class public Lcom/android/exsettings/hardware/VibratorIntensity;
.super Landroid/preference/DialogPreference;
.source "VibratorIntensity.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;
.implements Landroid/preference/PreferenceManager$OnActivityStopListener;


# instance fields
.field private mDefaultValue:I

.field private mHardware:Lcyanogenmod/hardware/CMHardwareManager;

.field private mMaxValue:I

.field private mMinValue:I

.field private mOriginalValue:I

.field private mProgressDrawable:Landroid/graphics/drawable/Drawable;

.field private mProgressThumb:Landroid/graphics/drawable/Drawable;

.field private mRedFilter:Landroid/graphics/LightingColorFilter;

.field private mSeekBar:Landroid/widget/SeekBar;

.field private mValue:Landroid/widget/TextView;

.field private final mVibrator:Landroid/os/Vibrator;

.field private mWarning:Landroid/widget/TextView;

.field private mWarningValue:I


# direct methods
.method static synthetic -get0(Lcom/android/exsettings/hardware/VibratorIntensity;)I
    .locals 1

    iget v0, p0, Lcom/android/exsettings/hardware/VibratorIntensity;->mDefaultValue:I

    return v0
.end method

.method static synthetic -get1(Lcom/android/exsettings/hardware/VibratorIntensity;)I
    .locals 1

    iget v0, p0, Lcom/android/exsettings/hardware/VibratorIntensity;->mMinValue:I

    return v0
.end method

.method static synthetic -get2(Lcom/android/exsettings/hardware/VibratorIntensity;)Landroid/widget/SeekBar;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/hardware/VibratorIntensity;->mSeekBar:Landroid/widget/SeekBar;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 65
    invoke-static {p1}, Lcyanogenmod/hardware/CMHardwareManager;->getInstance(Landroid/content/Context;)Lcyanogenmod/hardware/CMHardwareManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/hardware/VibratorIntensity;->mHardware:Lcyanogenmod/hardware/CMHardwareManager;

    .line 66
    const-string/jumbo v0, "vibrator"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/android/exsettings/hardware/VibratorIntensity;->mVibrator:Landroid/os/Vibrator;

    .line 68
    iget-object v0, p0, Lcom/android/exsettings/hardware/VibratorIntensity;->mHardware:Lcyanogenmod/hardware/CMHardwareManager;

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Lcyanogenmod/hardware/CMHardwareManager;->isSupported(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 69
    return-void

    .line 72
    :cond_0
    const v0, 0x7f040146

    invoke-virtual {p0, v0}, Lcom/android/exsettings/hardware/VibratorIntensity;->setDialogLayoutResource(I)V

    .line 62
    return-void
.end method

.method private static intensityToPercent(III)I
    .locals 4
    .param p0, "minValue"    # I
    .param p1, "maxValue"    # I
    .param p2, "value"    # I

    .prologue
    .line 213
    sub-int v1, p2, p0

    int-to-float v1, v1

    sub-int v2, p1, p0

    int-to-float v2, v2

    const/high16 v3, 0x42c80000    # 100.0f

    div-float v2, v3, v2

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 215
    .local v0, "percent":I
    const/16 v1, 0x64

    if-le v0, v1, :cond_1

    .line 216
    const/16 v0, 0x64

    .line 221
    :cond_0
    :goto_0
    return v0

    .line 217
    :cond_1
    if-gez v0, :cond_0

    .line 218
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static percentToIntensity(III)I
    .locals 3
    .param p0, "minValue"    # I
    .param p1, "maxValue"    # I
    .param p2, "percent"    # I

    .prologue
    .line 225
    sub-int v1, p1, p0

    mul-int/2addr v1, p2

    int-to-float v1, v1

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    int-to-float v2, p0

    add-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 227
    .local v0, "value":I
    if-le v0, p1, :cond_1

    .line 228
    move v0, p1

    .line 233
    :cond_0
    :goto_0
    return v0

    .line 229
    :cond_1
    if-ge v0, p0, :cond_0

    .line 230
    move v0, p0

    goto :goto_0
.end method

.method public static restore(Landroid/content/Context;)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 171
    invoke-static {p0}, Lcyanogenmod/hardware/CMHardwareManager;->getInstance(Landroid/content/Context;)Lcyanogenmod/hardware/CMHardwareManager;

    move-result-object v1

    .line 172
    .local v1, "hardware":Lcyanogenmod/hardware/CMHardwareManager;
    const/16 v6, 0x400

    invoke-virtual {v1, v6}, Lcyanogenmod/hardware/CMHardwareManager;->isSupported(I)Z

    move-result v6

    if-nez v6, :cond_0

    .line 173
    return-void

    .line 175
    :cond_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 176
    .local v5, "prefs":Landroid/content/SharedPreferences;
    invoke-virtual {v1}, Lcyanogenmod/hardware/CMHardwareManager;->getVibratorMinIntensity()I

    move-result v3

    .line 177
    .local v3, "min":I
    invoke-virtual {v1}, Lcyanogenmod/hardware/CMHardwareManager;->getVibratorMaxIntensity()I

    move-result v2

    .line 178
    .local v2, "max":I
    invoke-virtual {v1}, Lcyanogenmod/hardware/CMHardwareManager;->getVibratorDefaultIntensity()I

    move-result v0

    .line 179
    .local v0, "defaultIntensity":I
    const-string/jumbo v6, "vibrator_intensity"

    invoke-static {v3, v2, v0}, Lcom/android/exsettings/hardware/VibratorIntensity;->intensityToPercent(III)I

    move-result v7

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 181
    .local v4, "percent":I
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 182
    const-string/jumbo v7, "vibrator_intensity"

    invoke-static {v3, v2, v4}, Lcom/android/exsettings/hardware/VibratorIntensity;->percentToIntensity(III)I

    move-result v8

    .line 181
    invoke-static {v6, v7, v8}, Lcyanogenmod/providers/CMSettings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 170
    return-void
.end method


# virtual methods
.method public onActivityStop()V
    .locals 2

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/exsettings/hardware/VibratorIntensity;->mHardware:Lcyanogenmod/hardware/CMHardwareManager;

    iget v1, p0, Lcom/android/exsettings/hardware/VibratorIntensity;->mOriginalValue:I

    invoke-virtual {v0, v1}, Lcyanogenmod/hardware/CMHardwareManager;->setVibratorIntensity(I)Z

    .line 166
    return-void
.end method

.method protected onBindDialogView(Landroid/view/View;)V
    .locals 9
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v8, 0x0

    .line 92
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onBindDialogView(Landroid/view/View;)V

    .line 94
    const v3, 0x102039a

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/SeekBar;

    iput-object v3, p0, Lcom/android/exsettings/hardware/VibratorIntensity;->mSeekBar:Landroid/widget/SeekBar;

    .line 95
    const v3, 0x7f13004b

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/exsettings/hardware/VibratorIntensity;->mValue:Landroid/widget/TextView;

    .line 96
    const v3, 0x7f13026e

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/exsettings/hardware/VibratorIntensity;->mWarning:Landroid/widget/TextView;

    .line 99
    iget-object v3, p0, Lcom/android/exsettings/hardware/VibratorIntensity;->mHardware:Lcyanogenmod/hardware/CMHardwareManager;

    invoke-virtual {v3}, Lcyanogenmod/hardware/CMHardwareManager;->getVibratorIntensity()I

    move-result v3

    iput v3, p0, Lcom/android/exsettings/hardware/VibratorIntensity;->mOriginalValue:I

    .line 100
    iget-object v3, p0, Lcom/android/exsettings/hardware/VibratorIntensity;->mHardware:Lcyanogenmod/hardware/CMHardwareManager;

    invoke-virtual {v3}, Lcyanogenmod/hardware/CMHardwareManager;->getVibratorWarningIntensity()I

    move-result v3

    iput v3, p0, Lcom/android/exsettings/hardware/VibratorIntensity;->mWarningValue:I

    .line 101
    iget-object v3, p0, Lcom/android/exsettings/hardware/VibratorIntensity;->mHardware:Lcyanogenmod/hardware/CMHardwareManager;

    invoke-virtual {v3}, Lcyanogenmod/hardware/CMHardwareManager;->getVibratorMinIntensity()I

    move-result v3

    iput v3, p0, Lcom/android/exsettings/hardware/VibratorIntensity;->mMinValue:I

    .line 102
    iget-object v3, p0, Lcom/android/exsettings/hardware/VibratorIntensity;->mHardware:Lcyanogenmod/hardware/CMHardwareManager;

    invoke-virtual {v3}, Lcyanogenmod/hardware/CMHardwareManager;->getVibratorMaxIntensity()I

    move-result v3

    iput v3, p0, Lcom/android/exsettings/hardware/VibratorIntensity;->mMaxValue:I

    .line 103
    iget-object v3, p0, Lcom/android/exsettings/hardware/VibratorIntensity;->mHardware:Lcyanogenmod/hardware/CMHardwareManager;

    invoke-virtual {v3}, Lcyanogenmod/hardware/CMHardwareManager;->getVibratorDefaultIntensity()I

    move-result v3

    iput v3, p0, Lcom/android/exsettings/hardware/VibratorIntensity;->mDefaultValue:I

    .line 104
    iget v3, p0, Lcom/android/exsettings/hardware/VibratorIntensity;->mWarningValue:I

    if-lez v3, :cond_2

    .line 105
    invoke-virtual {p0}, Lcom/android/exsettings/hardware/VibratorIntensity;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    .line 106
    iget v5, p0, Lcom/android/exsettings/hardware/VibratorIntensity;->mMinValue:I

    iget v6, p0, Lcom/android/exsettings/hardware/VibratorIntensity;->mMaxValue:I

    .line 107
    iget v7, p0, Lcom/android/exsettings/hardware/VibratorIntensity;->mWarningValue:I

    .line 106
    invoke-static {v5, v6, v7}, Lcom/android/exsettings/hardware/VibratorIntensity;->intensityToPercent(III)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    const v5, 0x7f0c022b

    .line 105
    invoke-virtual {v3, v5, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 108
    .local v1, "message":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/exsettings/hardware/VibratorIntensity;->mWarning:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    .end local v1    # "message":Ljava/lang/String;
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/exsettings/hardware/VibratorIntensity;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 114
    .local v2, "progressDrawable":Landroid/graphics/drawable/Drawable;
    instance-of v3, v2, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v3, :cond_1

    move-object v0, v2

    .line 115
    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    .line 116
    .local v0, "ld":Landroid/graphics/drawable/LayerDrawable;
    const v3, 0x102000d

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/android/exsettings/hardware/VibratorIntensity;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    .line 118
    .end local v0    # "ld":Landroid/graphics/drawable/LayerDrawable;
    :cond_1
    iget-object v3, p0, Lcom/android/exsettings/hardware/VibratorIntensity;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/android/exsettings/hardware/VibratorIntensity;->mProgressThumb:Landroid/graphics/drawable/Drawable;

    .line 119
    new-instance v3, Landroid/graphics/LightingColorFilter;

    .line 120
    invoke-virtual {p0}, Lcom/android/exsettings/hardware/VibratorIntensity;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1060016

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    .line 119
    const/high16 v5, -0x1000000

    invoke-direct {v3, v5, v4}, Landroid/graphics/LightingColorFilter;-><init>(II)V

    iput-object v3, p0, Lcom/android/exsettings/hardware/VibratorIntensity;->mRedFilter:Landroid/graphics/LightingColorFilter;

    .line 122
    iget-object v3, p0, Lcom/android/exsettings/hardware/VibratorIntensity;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v3, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 123
    iget-object v3, p0, Lcom/android/exsettings/hardware/VibratorIntensity;->mSeekBar:Landroid/widget/SeekBar;

    iget v4, p0, Lcom/android/exsettings/hardware/VibratorIntensity;->mMaxValue:I

    iget v5, p0, Lcom/android/exsettings/hardware/VibratorIntensity;->mMinValue:I

    sub-int/2addr v4, v5

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setMax(I)V

    .line 124
    iget-object v3, p0, Lcom/android/exsettings/hardware/VibratorIntensity;->mSeekBar:Landroid/widget/SeekBar;

    iget v4, p0, Lcom/android/exsettings/hardware/VibratorIntensity;->mOriginalValue:I

    iget v5, p0, Lcom/android/exsettings/hardware/VibratorIntensity;->mMinValue:I

    sub-int/2addr v4, v5

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 126
    invoke-virtual {p0}, Lcom/android/exsettings/hardware/VibratorIntensity;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/preference/PreferenceManager;->registerOnActivityStopListener(Landroid/preference/PreferenceManager$OnActivityStopListener;)V

    .line 91
    return-void

    .line 109
    .end local v2    # "progressDrawable":Landroid/graphics/drawable/Drawable;
    :cond_2
    iget-object v3, p0, Lcom/android/exsettings/hardware/VibratorIntensity;->mWarning:Landroid/widget/TextView;

    if-eqz v3, :cond_0

    .line 110
    iget-object v3, p0, Lcom/android/exsettings/hardware/VibratorIntensity;->mWarning:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method protected onDialogClosed(Z)V
    .locals 6
    .param p1, "positiveResult"    # Z

    .prologue
    .line 147
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onDialogClosed(Z)V

    .line 149
    if-eqz p1, :cond_0

    .line 151
    invoke-virtual {p0}, Lcom/android/exsettings/hardware/VibratorIntensity;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 152
    .local v2, "prefs":Landroid/content/SharedPreferences;
    iget-object v3, p0, Lcom/android/exsettings/hardware/VibratorIntensity;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getProgress()I

    move-result v3

    iget v4, p0, Lcom/android/exsettings/hardware/VibratorIntensity;->mMinValue:I

    add-int v0, v3, v4

    .line 153
    .local v0, "intensity":I
    iget v3, p0, Lcom/android/exsettings/hardware/VibratorIntensity;->mMinValue:I

    iget v4, p0, Lcom/android/exsettings/hardware/VibratorIntensity;->mMaxValue:I

    invoke-static {v3, v4, v0}, Lcom/android/exsettings/hardware/VibratorIntensity;->intensityToPercent(III)I

    move-result v1

    .line 154
    .local v1, "percent":I
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string/jumbo v4, "vibrator_intensity"

    invoke-interface {v3, v4, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 155
    invoke-virtual {p0}, Lcom/android/exsettings/hardware/VibratorIntensity;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 156
    const-string/jumbo v4, "vibrator_intensity"

    .line 155
    invoke-static {v3, v4, v0}, Lcyanogenmod/providers/CMSettings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 162
    .end local v0    # "intensity":I
    .end local v1    # "percent":I
    .end local v2    # "prefs":Landroid/content/SharedPreferences;
    :goto_0
    invoke-virtual {p0}, Lcom/android/exsettings/hardware/VibratorIntensity;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/preference/PreferenceManager;->unregisterOnActivityStopListener(Landroid/preference/PreferenceManager$OnActivityStopListener;)V

    .line 146
    return-void

    .line 158
    :cond_0
    invoke-virtual {p0}, Lcom/android/exsettings/hardware/VibratorIntensity;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 159
    const-string/jumbo v4, "vibrator_intensity"

    iget v5, p0, Lcom/android/exsettings/hardware/VibratorIntensity;->mOriginalValue:I

    .line 158
    invoke-static {v3, v4, v5}, Lcyanogenmod/providers/CMSettings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 2
    .param p1, "builder"    # Landroid/app/AlertDialog$Builder;

    .prologue
    .line 83
    new-instance v0, Lcom/android/exsettings/hardware/VibratorIntensity$1;

    invoke-direct {v0, p0}, Lcom/android/exsettings/hardware/VibratorIntensity$1;-><init>(Lcom/android/exsettings/hardware/VibratorIntensity;)V

    .line 82
    const v1, 0x7f0c0086

    invoke-virtual {p1, v1, v0}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 81
    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 8
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    const/4 v7, 0x0

    const/4 v3, 0x0

    .line 187
    iget v2, p0, Lcom/android/exsettings/hardware/VibratorIntensity;->mMinValue:I

    add-int v0, p2, v2

    .line 188
    .local v0, "intensity":I
    iget v2, p0, Lcom/android/exsettings/hardware/VibratorIntensity;->mWarningValue:I

    if-lez v2, :cond_3

    iget v2, p0, Lcom/android/exsettings/hardware/VibratorIntensity;->mWarningValue:I

    if-lt v0, v2, :cond_3

    const/4 v1, 0x1

    .line 190
    .local v1, "shouldWarn":Z
    :goto_0
    iget-object v2, p0, Lcom/android/exsettings/hardware/VibratorIntensity;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 191
    iget-object v4, p0, Lcom/android/exsettings/hardware/VibratorIntensity;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_4

    iget-object v2, p0, Lcom/android/exsettings/hardware/VibratorIntensity;->mRedFilter:Landroid/graphics/LightingColorFilter;

    :goto_1
    invoke-virtual {v4, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 193
    :cond_0
    iget-object v2, p0, Lcom/android/exsettings/hardware/VibratorIntensity;->mProgressThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_2

    .line 194
    iget-object v2, p0, Lcom/android/exsettings/hardware/VibratorIntensity;->mProgressThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    iget-object v3, p0, Lcom/android/exsettings/hardware/VibratorIntensity;->mRedFilter:Landroid/graphics/LightingColorFilter;

    :cond_1
    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 197
    :cond_2
    iget-object v2, p0, Lcom/android/exsettings/hardware/VibratorIntensity;->mValue:Landroid/widget/TextView;

    const-string/jumbo v3, "%d%%"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    iget v5, p0, Lcom/android/exsettings/hardware/VibratorIntensity;->mMinValue:I

    iget v6, p0, Lcom/android/exsettings/hardware/VibratorIntensity;->mMaxValue:I

    invoke-static {v5, v6, v0}, Lcom/android/exsettings/hardware/VibratorIntensity;->intensityToPercent(III)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 186
    return-void

    .line 188
    .end local v1    # "shouldWarn":Z
    :cond_3
    const/4 v1, 0x0

    .restart local v1    # "shouldWarn":Z
    goto :goto_0

    :cond_4
    move-object v2, v3

    .line 191
    goto :goto_1
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 201
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 4
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 207
    iget-object v1, p0, Lcom/android/exsettings/hardware/VibratorIntensity;->mHardware:Lcyanogenmod/hardware/CMHardwareManager;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    iget v3, p0, Lcom/android/exsettings/hardware/VibratorIntensity;->mMinValue:I

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lcyanogenmod/hardware/CMHardwareManager;->setVibratorIntensity(I)Z

    .line 208
    invoke-virtual {p0}, Lcom/android/exsettings/hardware/VibratorIntensity;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "vibrator"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 209
    .local v0, "vib":Landroid/os/Vibrator;
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    .line 206
    return-void
.end method

.method protected showDialog(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    .line 131
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->showDialog(Landroid/os/Bundle;)V

    .line 135
    invoke-virtual {p0}, Lcom/android/exsettings/hardware/VibratorIntensity;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    check-cast v0, Landroid/app/AlertDialog;

    .line 136
    .local v0, "d":Landroid/app/AlertDialog;
    const/4 v2, -0x3

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    .line 137
    .local v1, "defaultsButton":Landroid/widget/Button;
    new-instance v2, Lcom/android/exsettings/hardware/VibratorIntensity$2;

    invoke-direct {v2, p0}, Lcom/android/exsettings/hardware/VibratorIntensity$2;-><init>(Lcom/android/exsettings/hardware/VibratorIntensity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    return-void
.end method
