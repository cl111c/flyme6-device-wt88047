.class public Lcom/android/exsettings/cyanogenmod/BacklightTimeoutSeekBar;
.super Landroid/widget/SeekBar;
.source "BacklightTimeoutSeekBar.java"


# instance fields
.field private mGap:I

.field private mMax:I

.field private mUpdatingThumb:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 38
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    return-void
.end method


# virtual methods
.method protected onSizeChanged(IIII)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/exsettings/cyanogenmod/BacklightTimeoutSeekBar;->mUpdatingThumb:Z

    .line 44
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/SeekBar;->onSizeChanged(IIII)V

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/exsettings/cyanogenmod/BacklightTimeoutSeekBar;->mUpdatingThumb:Z

    .line 42
    return-void
.end method

.method public setMax(I)V
    .locals 1
    .param p1, "max"    # I

    .prologue
    .line 57
    iput p1, p0, Lcom/android/exsettings/cyanogenmod/BacklightTimeoutSeekBar;->mMax:I

    .line 58
    div-int/lit8 v0, p1, 0xa

    iput v0, p0, Lcom/android/exsettings/cyanogenmod/BacklightTimeoutSeekBar;->mGap:I

    .line 59
    iget v0, p0, Lcom/android/exsettings/cyanogenmod/BacklightTimeoutSeekBar;->mGap:I

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x1

    invoke-super {p0, v0}, Landroid/widget/SeekBar;->setMax(I)V

    .line 56
    return-void
.end method

.method public setThumb(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "thumb"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 50
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/exsettings/cyanogenmod/BacklightTimeoutSeekBar;->mUpdatingThumb:Z

    .line 51
    invoke-super {p0, p1}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/exsettings/cyanogenmod/BacklightTimeoutSeekBar;->mUpdatingThumb:Z

    .line 49
    return-void
.end method

.method protected updateTouchProgress(II)I
    .locals 2
    .param p1, "lastProgress"    # I
    .param p2, "newProgress"    # I

    .prologue
    .line 64
    iget v0, p0, Lcom/android/exsettings/cyanogenmod/BacklightTimeoutSeekBar;->mMax:I

    if-ge p2, v0, :cond_0

    .line 65
    return p2

    .line 67
    :cond_0
    iget v0, p0, Lcom/android/exsettings/cyanogenmod/BacklightTimeoutSeekBar;->mMax:I

    iget v1, p0, Lcom/android/exsettings/cyanogenmod/BacklightTimeoutSeekBar;->mGap:I

    add-int/2addr v0, v1

    if-ge p2, v0, :cond_1

    .line 68
    iget v0, p0, Lcom/android/exsettings/cyanogenmod/BacklightTimeoutSeekBar;->mMax:I

    add-int/lit8 v0, v0, -0x1

    return v0

    .line 70
    :cond_1
    invoke-virtual {p0}, Lcom/android/exsettings/cyanogenmod/BacklightTimeoutSeekBar;->getMax()I

    move-result v0

    return v0
.end method
