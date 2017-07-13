.class public Lcom/android/exsettings/FontDialogPreference;
.super Landroid/preference/DialogPreference;
.source "FontDialogPreference.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field private mDescriptionText:Landroid/widget/TextView;

.field private mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private mLargeTextSp:I

.field private mPercentageText:Landroid/widget/TextView;

.field private mSeekBar:Lcom/android/exsettings/IntervalSeekBar;

.field private mSmallTextSp:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    const v0, 0x104000a

    invoke-virtual {p0, v0}, Lcom/android/exsettings/FontDialogPreference;->setPositiveButtonText(I)V

    .line 36
    const/high16 v0, 0x1040000

    invoke-virtual {p0, v0}, Lcom/android/exsettings/FontDialogPreference;->setNegativeButtonText(I)V

    .line 38
    invoke-direct {p0}, Lcom/android/exsettings/FontDialogPreference;->initDisplayMetrics()V

    .line 40
    const v0, 0x7f0400b5

    invoke-virtual {p0, v0}, Lcom/android/exsettings/FontDialogPreference;->setDialogLayoutResource(I)V

    .line 41
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/exsettings/FontDialogPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    .line 32
    return-void
.end method

.method static getFontSizeDescription(Landroid/content/res/Resources;F)Ljava/lang/String;
    .locals 7
    .param p0, "r"    # Landroid/content/res/Resources;
    .param p1, "val"    # F

    .prologue
    .line 111
    const v5, 0x7f0a0009

    invoke-virtual {p0, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 112
    .local v3, "names":[Ljava/lang/String;
    const v5, 0x7f0a000a

    invoke-virtual {p0, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 114
    .local v1, "indices":[Ljava/lang/String;
    const/4 v5, 0x0

    aget-object v5, v1, v5

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    .line 115
    .local v2, "lastVal":F
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    array-length v5, v1

    if-ge v0, v5, :cond_1

    .line 116
    aget-object v5, v1, v0

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    .line 117
    .local v4, "thisVal":F
    sub-float v5, v4, v2

    const/high16 v6, 0x3f000000    # 0.5f

    mul-float/2addr v5, v6

    add-float/2addr v5, v2

    cmpg-float v5, p1, v5

    if-gez v5, :cond_0

    .line 118
    add-int/lit8 v5, v0, -0x1

    aget-object v5, v3, v5

    return-object v5

    .line 120
    :cond_0
    move v2, v4

    .line 115
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 122
    .end local v4    # "thisVal":F
    :cond_1
    array-length v5, v1

    add-int/lit8 v5, v5, -0x1

    aget-object v5, v3, v5

    return-object v5
.end method

.method private initDisplayMetrics()V
    .locals 3

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/android/exsettings/FontDialogPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 72
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v1, p0, Lcom/android/exsettings/FontDialogPreference;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 73
    iget-object v1, p0, Lcom/android/exsettings/FontDialogPreference;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    iput v2, v1, Landroid/util/DisplayMetrics;->density:F

    .line 74
    iget-object v1, p0, Lcom/android/exsettings/FontDialogPreference;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v2, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 75
    iget-object v1, p0, Lcom/android/exsettings/FontDialogPreference;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v2, v0, Landroid/util/DisplayMetrics;->scaledDensity:F

    iput v2, v1, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 76
    iget-object v1, p0, Lcom/android/exsettings/FontDialogPreference;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 77
    iget-object v1, p0, Lcom/android/exsettings/FontDialogPreference;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v2, v0, Landroid/util/DisplayMetrics;->xdpi:F

    iput v2, v1, Landroid/util/DisplayMetrics;->xdpi:F

    .line 78
    iget-object v1, p0, Lcom/android/exsettings/FontDialogPreference;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v2, v0, Landroid/util/DisplayMetrics;->ydpi:F

    iput v2, v1, Landroid/util/DisplayMetrics;->ydpi:F

    .line 70
    return-void
.end method

.method private setPrompt(F)V
    .locals 7
    .param p1, "fontScaling"    # F

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    .line 130
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/high16 v4, 0x42c80000    # 100.0f

    mul-float/2addr v4, p1

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 131
    .local v1, "percentage":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/exsettings/FontDialogPreference;->mPercentageText:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    iget-object v3, p0, Lcom/android/exsettings/FontDialogPreference;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget-object v4, p0, Lcom/android/exsettings/FontDialogPreference;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v4, p1

    iput v4, v3, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 135
    iget v3, p0, Lcom/android/exsettings/FontDialogPreference;->mLargeTextSp:I

    int-to-float v3, v3

    .line 136
    iget-object v4, p0, Lcom/android/exsettings/FontDialogPreference;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 135
    invoke-static {v6, v3, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    .line 137
    .local v0, "largeSize":F
    iget v3, p0, Lcom/android/exsettings/FontDialogPreference;->mSmallTextSp:I

    int-to-float v3, v3

    .line 138
    iget-object v4, p0, Lcom/android/exsettings/FontDialogPreference;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 137
    invoke-static {v6, v3, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    .line 139
    .local v2, "smallSize":F
    iget-object v3, p0, Lcom/android/exsettings/FontDialogPreference;->mDescriptionText:Landroid/widget/TextView;

    invoke-virtual {v3, v5, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 140
    iget-object v3, p0, Lcom/android/exsettings/FontDialogPreference;->mPercentageText:Landroid/widget/TextView;

    invoke-virtual {v3, v5, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 128
    return-void
.end method


# virtual methods
.method public click()V
    .locals 0

    .prologue
    .line 101
    invoke-super {p0}, Landroid/preference/DialogPreference;->onClick()V

    .line 100
    return-void
.end method

.method protected onClick()V
    .locals 0

    .prologue
    .line 96
    return-void
.end method

.method protected onCreateDialogView()Landroid/view/View;
    .locals 6

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/android/exsettings/FontDialogPreference;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string/jumbo v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 48
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v4, 0x7f0400b5

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 50
    .local v3, "view":Landroid/view/View;
    const v4, 0x7f1300c4

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/exsettings/FontDialogPreference;->mDescriptionText:Landroid/widget/TextView;

    .line 51
    const v4, 0x7f13017c

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/exsettings/FontDialogPreference;->mPercentageText:Landroid/widget/TextView;

    .line 54
    iget-object v4, p0, Lcom/android/exsettings/FontDialogPreference;->mDescriptionText:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getTextSize()F

    move-result v4

    iget-object v5, p0, Lcom/android/exsettings/FontDialogPreference;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v5, v5, Landroid/util/DisplayMetrics;->scaledDensity:F

    div-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    iput v4, p0, Lcom/android/exsettings/FontDialogPreference;->mLargeTextSp:I

    .line 55
    iget-object v4, p0, Lcom/android/exsettings/FontDialogPreference;->mPercentageText:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getTextSize()F

    move-result v4

    iget-object v5, p0, Lcom/android/exsettings/FontDialogPreference;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v5, v5, Landroid/util/DisplayMetrics;->scaledDensity:F

    div-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    iput v4, p0, Lcom/android/exsettings/FontDialogPreference;->mSmallTextSp:I

    .line 57
    const v4, 0x7f13017d

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/exsettings/IntervalSeekBar;

    iput-object v4, p0, Lcom/android/exsettings/FontDialogPreference;->mSeekBar:Lcom/android/exsettings/IntervalSeekBar;

    .line 59
    iget-object v4, p0, Lcom/android/exsettings/FontDialogPreference;->mSeekBar:Lcom/android/exsettings/IntervalSeekBar;

    invoke-virtual {v4}, Lcom/android/exsettings/IntervalSeekBar;->getDefault()F

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/exsettings/FontDialogPreference;->getPersistedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 60
    .local v2, "strFontSize":Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    .line 62
    .local v0, "fontSize":F
    iget-object v4, p0, Lcom/android/exsettings/FontDialogPreference;->mSeekBar:Lcom/android/exsettings/IntervalSeekBar;

    invoke-virtual {v4, v0}, Lcom/android/exsettings/IntervalSeekBar;->setProgressFloat(F)V

    .line 63
    iget-object v4, p0, Lcom/android/exsettings/FontDialogPreference;->mSeekBar:Lcom/android/exsettings/IntervalSeekBar;

    invoke-virtual {v4, p0}, Lcom/android/exsettings/IntervalSeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 65
    invoke-direct {p0, v0}, Lcom/android/exsettings/FontDialogPreference;->setPrompt(F)V

    .line 67
    return-object v3
.end method

.method protected onDialogClosed(Z)V
    .locals 1
    .param p1, "positiveResult"    # Z

    .prologue
    .line 83
    if-eqz p1, :cond_0

    .line 87
    iget-object v0, p0, Lcom/android/exsettings/FontDialogPreference;->mSeekBar:Lcom/android/exsettings/IntervalSeekBar;

    invoke-virtual {v0}, Lcom/android/exsettings/IntervalSeekBar;->getProgressFloat()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/exsettings/FontDialogPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/android/exsettings/FontDialogPreference;->mSeekBar:Lcom/android/exsettings/IntervalSeekBar;

    invoke-virtual {v0}, Lcom/android/exsettings/IntervalSeekBar;->getProgressFloat()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/exsettings/FontDialogPreference;->persistString(Ljava/lang/String;)Z

    .line 82
    :cond_0
    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 1
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/exsettings/FontDialogPreference;->mSeekBar:Lcom/android/exsettings/IntervalSeekBar;

    invoke-virtual {v0}, Lcom/android/exsettings/IntervalSeekBar;->getProgressFloat()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/exsettings/FontDialogPreference;->setPrompt(F)V

    .line 144
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 150
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 154
    return-void
.end method
