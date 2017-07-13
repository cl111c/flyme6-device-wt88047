.class public Lcom/android/exsettings/IntervalSeekBar;
.super Landroid/widget/SeekBar;
.source "IntervalSeekBar.java"


# instance fields
.field private mDefault:F

.field private mMax:F

.field private mMin:F

.field private mMultiplier:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v5, 0x0

    .line 21
    invoke-direct {p0, p1, p2}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    sget-object v3, Lcom/android/exsettings/R$styleable;->IntervalSeekBar:[I

    .line 23
    invoke-virtual {p1, p2, v3, v5, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 26
    .local v1, "seekBarType":Landroid/content/res/TypedArray;
    const/4 v3, 0x1

    const/high16 v4, 0x3fc00000    # 1.5f

    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, p0, Lcom/android/exsettings/IntervalSeekBar;->mMax:F

    .line 27
    const/high16 v3, 0x3f000000    # 0.5f

    invoke-virtual {v1, v5, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, p0, Lcom/android/exsettings/IntervalSeekBar;->mMin:F

    .line 28
    const/4 v3, 0x2

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, p0, Lcom/android/exsettings/IntervalSeekBar;->mDefault:F

    .line 30
    const/4 v3, 0x3

    invoke-virtual {v1, v3, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    .line 31
    .local v0, "digits":I
    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    int-to-double v6, v0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-float v3, v4

    iput v3, p0, Lcom/android/exsettings/IntervalSeekBar;->mMultiplier:F

    .line 33
    iget v3, p0, Lcom/android/exsettings/IntervalSeekBar;->mMin:F

    iget v4, p0, Lcom/android/exsettings/IntervalSeekBar;->mMax:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_0

    .line 34
    iget v2, p0, Lcom/android/exsettings/IntervalSeekBar;->mMax:F

    .line 35
    .local v2, "temp":F
    iget v3, p0, Lcom/android/exsettings/IntervalSeekBar;->mMin:F

    iput v3, p0, Lcom/android/exsettings/IntervalSeekBar;->mMax:F

    .line 36
    iput v2, p0, Lcom/android/exsettings/IntervalSeekBar;->mMin:F

    .line 39
    .end local v2    # "temp":F
    :cond_0
    iget v3, p0, Lcom/android/exsettings/IntervalSeekBar;->mMax:F

    invoke-direct {p0, v3}, Lcom/android/exsettings/IntervalSeekBar;->convertFloatToProgress(F)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/exsettings/IntervalSeekBar;->setMax(I)V

    .line 40
    iget v3, p0, Lcom/android/exsettings/IntervalSeekBar;->mDefault:F

    invoke-virtual {p0, v3}, Lcom/android/exsettings/IntervalSeekBar;->setProgressFloat(F)V

    .line 42
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 20
    return-void
.end method

.method private convertFloatToProgress(F)I
    .locals 2
    .param p1, "value"    # F

    .prologue
    .line 64
    iget v0, p0, Lcom/android/exsettings/IntervalSeekBar;->mMin:F

    sub-float v0, p1, v0

    iget v1, p0, Lcom/android/exsettings/IntervalSeekBar;->mMultiplier:F

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method


# virtual methods
.method public getDefault()F
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Lcom/android/exsettings/IntervalSeekBar;->mDefault:F

    return v0
.end method

.method public getProgressFloat()F
    .locals 2

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/android/exsettings/IntervalSeekBar;->getProgress()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/android/exsettings/IntervalSeekBar;->mMultiplier:F

    div-float/2addr v0, v1

    iget v1, p0, Lcom/android/exsettings/IntervalSeekBar;->mMin:F

    add-float/2addr v0, v1

    return v0
.end method

.method public setMaximum(F)V
    .locals 1
    .param p1, "max"    # F

    .prologue
    .line 80
    iput p1, p0, Lcom/android/exsettings/IntervalSeekBar;->mMax:F

    .line 81
    iget v0, p0, Lcom/android/exsettings/IntervalSeekBar;->mMax:F

    invoke-direct {p0, v0}, Lcom/android/exsettings/IntervalSeekBar;->convertFloatToProgress(F)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/exsettings/IntervalSeekBar;->setMax(I)V

    .line 79
    return-void
.end method

.method public setMinimum(F)V
    .locals 0
    .param p1, "min"    # F

    .prologue
    .line 85
    iput p1, p0, Lcom/android/exsettings/IntervalSeekBar;->mMin:F

    .line 84
    return-void
.end method

.method public setProgressFloat(F)V
    .locals 1
    .param p1, "progress"    # F

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/android/exsettings/IntervalSeekBar;->convertFloatToProgress(F)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/exsettings/IntervalSeekBar;->setProgress(I)V

    .line 59
    return-void
.end method
