.class Lcom/android/exsettings/livedisplay/DisplayTemperature$ColorTemperatureSeekBar;
.super Ljava/lang/Object;
.source "DisplayTemperature.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/livedisplay/DisplayTemperature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ColorTemperatureSeekBar"
.end annotation


# instance fields
.field private final mBalanceCurve:[D

.field private final mBalanceMax:I

.field private final mBalanceMin:I

.field private final mBarMax:I

.field private final mMax:I

.field private final mMin:I

.field private final mSeekBar:Landroid/widget/SeekBar;

.field private final mUseBalance:Z

.field private final mValue:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/android/exsettings/livedisplay/DisplayTemperature;


# direct methods
.method public constructor <init>(Lcom/android/exsettings/livedisplay/DisplayTemperature;Landroid/widget/SeekBar;Landroid/widget/TextView;)V
    .locals 8
    .param p1, "this$0"    # Lcom/android/exsettings/livedisplay/DisplayTemperature;
    .param p2, "seekBar"    # Landroid/widget/SeekBar;
    .param p3, "value"    # Landroid/widget/TextView;

    .prologue
    const/4 v1, 0x1

    const/4 v7, 0x0

    .line 228
    iput-object p1, p0, Lcom/android/exsettings/livedisplay/DisplayTemperature$ColorTemperatureSeekBar;->this$0:Lcom/android/exsettings/livedisplay/DisplayTemperature;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 229
    iput-object p2, p0, Lcom/android/exsettings/livedisplay/DisplayTemperature$ColorTemperatureSeekBar;->mSeekBar:Landroid/widget/SeekBar;

    .line 230
    iput-object p3, p0, Lcom/android/exsettings/livedisplay/DisplayTemperature$ColorTemperatureSeekBar;->mValue:Landroid/widget/TextView;

    .line 231
    invoke-static {p1}, Lcom/android/exsettings/livedisplay/DisplayTemperature;->-get0(Lcom/android/exsettings/livedisplay/DisplayTemperature;)Lcyanogenmod/hardware/LiveDisplayConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcyanogenmod/hardware/LiveDisplayConfig;->getColorTemperatureRange()Landroid/util/Range;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/exsettings/livedisplay/DisplayTemperature$ColorTemperatureSeekBar;->mMin:I

    .line 232
    invoke-static {p1}, Lcom/android/exsettings/livedisplay/DisplayTemperature;->-get0(Lcom/android/exsettings/livedisplay/DisplayTemperature;)Lcyanogenmod/hardware/LiveDisplayConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcyanogenmod/hardware/LiveDisplayConfig;->getColorTemperatureRange()Landroid/util/Range;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/exsettings/livedisplay/DisplayTemperature$ColorTemperatureSeekBar;->mMax:I

    .line 233
    invoke-static {p1}, Lcom/android/exsettings/livedisplay/DisplayTemperature;->-get0(Lcom/android/exsettings/livedisplay/DisplayTemperature;)Lcyanogenmod/hardware/LiveDisplayConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcyanogenmod/hardware/LiveDisplayConfig;->getColorBalanceRange()Landroid/util/Range;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/exsettings/livedisplay/DisplayTemperature$ColorTemperatureSeekBar;->mBalanceMin:I

    .line 234
    invoke-static {p1}, Lcom/android/exsettings/livedisplay/DisplayTemperature;->-get0(Lcom/android/exsettings/livedisplay/DisplayTemperature;)Lcyanogenmod/hardware/LiveDisplayConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcyanogenmod/hardware/LiveDisplayConfig;->getColorBalanceRange()Landroid/util/Range;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/exsettings/livedisplay/DisplayTemperature$ColorTemperatureSeekBar;->mBalanceMax:I

    .line 235
    invoke-static {p1}, Lcom/android/exsettings/livedisplay/DisplayTemperature;->-get0(Lcom/android/exsettings/livedisplay/DisplayTemperature;)Lcyanogenmod/hardware/LiveDisplayConfig;

    move-result-object v0

    const/16 v2, 0x10

    invoke-virtual {v0, v2}, Lcyanogenmod/hardware/LiveDisplayConfig;->hasFeature(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 236
    iget v0, p0, Lcom/android/exsettings/livedisplay/DisplayTemperature$ColorTemperatureSeekBar;->mBalanceMin:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/exsettings/livedisplay/DisplayTemperature$ColorTemperatureSeekBar;->mBalanceMax:I

    if-eqz v0, :cond_1

    :cond_0
    move v0, v1

    .line 235
    :goto_0
    iput-boolean v0, p0, Lcom/android/exsettings/livedisplay/DisplayTemperature$ColorTemperatureSeekBar;->mUseBalance:Z

    .line 238
    iget-boolean v0, p0, Lcom/android/exsettings/livedisplay/DisplayTemperature$ColorTemperatureSeekBar;->mUseBalance:Z

    if-eqz v0, :cond_3

    .line 239
    iget v0, p0, Lcom/android/exsettings/livedisplay/DisplayTemperature$ColorTemperatureSeekBar;->mMin:I

    int-to-double v0, v0

    invoke-static {p1}, Lcom/android/exsettings/livedisplay/DisplayTemperature;->-get0(Lcom/android/exsettings/livedisplay/DisplayTemperature;)Lcyanogenmod/hardware/LiveDisplayConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcyanogenmod/hardware/LiveDisplayConfig;->getDefaultDayTemperature()I

    move-result v2

    int-to-double v2, v2

    iget v4, p0, Lcom/android/exsettings/livedisplay/DisplayTemperature$ColorTemperatureSeekBar;->mMax:I

    int-to-double v4, v4

    invoke-static/range {v0 .. v5}, Lorg/cyanogenmod/internal/util/MathUtils;->powerCurve(DDD)[D

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/livedisplay/DisplayTemperature$ColorTemperatureSeekBar;->mBalanceCurve:[D

    .line 240
    iget v0, p0, Lcom/android/exsettings/livedisplay/DisplayTemperature$ColorTemperatureSeekBar;->mBalanceMax:I

    iget v1, p0, Lcom/android/exsettings/livedisplay/DisplayTemperature$ColorTemperatureSeekBar;->mBalanceMin:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/exsettings/livedisplay/DisplayTemperature$ColorTemperatureSeekBar;->mBarMax:I

    .line 245
    :goto_1
    iget-object v0, p0, Lcom/android/exsettings/livedisplay/DisplayTemperature$ColorTemperatureSeekBar;->mSeekBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/android/exsettings/livedisplay/DisplayTemperature$ColorTemperatureSeekBar;->mBarMax:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 246
    iget-object v0, p0, Lcom/android/exsettings/livedisplay/DisplayTemperature$ColorTemperatureSeekBar;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 249
    iget-object v0, p0, Lcom/android/exsettings/livedisplay/DisplayTemperature$ColorTemperatureSeekBar;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v6

    .line 250
    .local v6, "p":I
    iget-object v0, p0, Lcom/android/exsettings/livedisplay/DisplayTemperature$ColorTemperatureSeekBar;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {p0, v0, v6, v7}, Lcom/android/exsettings/livedisplay/DisplayTemperature$ColorTemperatureSeekBar;->onProgressChanged(Landroid/widget/SeekBar;IZ)V

    .line 228
    return-void

    .end local v6    # "p":I
    :cond_1
    move v0, v7

    .line 236
    goto :goto_0

    :cond_2
    move v0, v7

    .line 235
    goto :goto_0

    .line 242
    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/exsettings/livedisplay/DisplayTemperature$ColorTemperatureSeekBar;->mBalanceCurve:[D

    .line 243
    iget v0, p0, Lcom/android/exsettings/livedisplay/DisplayTemperature$ColorTemperatureSeekBar;->mMax:I

    iget v1, p0, Lcom/android/exsettings/livedisplay/DisplayTemperature$ColorTemperatureSeekBar;->mMin:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x64

    iput v0, p0, Lcom/android/exsettings/livedisplay/DisplayTemperature$ColorTemperatureSeekBar;->mBarMax:I

    goto :goto_1
.end method


# virtual methods
.method public getTemperature()I
    .locals 6

    .prologue
    .line 283
    iget-boolean v0, p0, Lcom/android/exsettings/livedisplay/DisplayTemperature$ColorTemperatureSeekBar;->mUseBalance:Z

    if-eqz v0, :cond_0

    .line 285
    iget-object v0, p0, Lcom/android/exsettings/livedisplay/DisplayTemperature$ColorTemperatureSeekBar;->mBalanceCurve:[D

    iget-object v1, p0, Lcom/android/exsettings/livedisplay/DisplayTemperature$ColorTemperatureSeekBar;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    int-to-double v2, v1

    iget v1, p0, Lcom/android/exsettings/livedisplay/DisplayTemperature$ColorTemperatureSeekBar;->mBarMax:I

    int-to-double v4, v1

    div-double/2addr v2, v4

    .line 284
    invoke-static {v0, v2, v3}, Lorg/cyanogenmod/internal/util/MathUtils;->linearToPowerCurve([DD)D

    move-result-wide v0

    double-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0

    .line 287
    :cond_0
    iget-object v0, p0, Lcom/android/exsettings/livedisplay/DisplayTemperature$ColorTemperatureSeekBar;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    mul-int/lit8 v0, v0, 0x64

    iget v1, p0, Lcom/android/exsettings/livedisplay/DisplayTemperature$ColorTemperatureSeekBar;->mMin:I

    add-int/2addr v0, v1

    return v0
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 9
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    const/4 v8, 0x1

    .line 255
    if-eqz p3, :cond_0

    .line 256
    iget-object v1, p0, Lcom/android/exsettings/livedisplay/DisplayTemperature$ColorTemperatureSeekBar;->this$0:Lcom/android/exsettings/livedisplay/DisplayTemperature;

    invoke-static {v1, v8}, Lcom/android/exsettings/livedisplay/DisplayTemperature;->-wrap0(Lcom/android/exsettings/livedisplay/DisplayTemperature;Z)V

    .line 260
    :cond_0
    iget-boolean v1, p0, Lcom/android/exsettings/livedisplay/DisplayTemperature$ColorTemperatureSeekBar;->mUseBalance:Z

    if-eqz v1, :cond_1

    .line 261
    iget-object v1, p0, Lcom/android/exsettings/livedisplay/DisplayTemperature$ColorTemperatureSeekBar;->this$0:Lcom/android/exsettings/livedisplay/DisplayTemperature;

    .line 262
    iget-object v2, p0, Lcom/android/exsettings/livedisplay/DisplayTemperature$ColorTemperatureSeekBar;->mBalanceCurve:[D

    int-to-double v4, p2

    iget v3, p0, Lcom/android/exsettings/livedisplay/DisplayTemperature$ColorTemperatureSeekBar;->mBarMax:I

    int-to-double v6, v3

    div-double/2addr v4, v6

    .line 261
    invoke-static {v2, v4, v5}, Lorg/cyanogenmod/internal/util/MathUtils;->linearToPowerCurve([DD)D

    move-result-wide v2

    double-to-float v2, v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/exsettings/livedisplay/DisplayTemperature;->roundUp(I)I

    move-result v0

    .line 266
    .local v0, "displayValue":I
    :goto_0
    const-string/jumbo v1, "DisplayTemperature"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onProgressChanged: progress="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " displayValue="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    iget-object v1, p0, Lcom/android/exsettings/livedisplay/DisplayTemperature$ColorTemperatureSeekBar;->mValue:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/exsettings/livedisplay/DisplayTemperature$ColorTemperatureSeekBar;->this$0:Lcom/android/exsettings/livedisplay/DisplayTemperature;

    invoke-static {v2}, Lcom/android/exsettings/livedisplay/DisplayTemperature;->-get1(Lcom/android/exsettings/livedisplay/DisplayTemperature;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    new-array v3, v8, [Ljava/lang/Object;

    .line 269
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const v4, 0x7f0c0243

    .line 268
    invoke-virtual {v2, v4, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 254
    return-void

    .line 264
    .end local v0    # "displayValue":I
    :cond_1
    mul-int/lit8 v1, p2, 0x64

    iget v2, p0, Lcom/android/exsettings/livedisplay/DisplayTemperature$ColorTemperatureSeekBar;->mMin:I

    add-int v0, v1, v2

    .restart local v0    # "displayValue":I
    goto :goto_0
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 291
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 296
    return-void
.end method

.method public setTemperature(I)V
    .locals 6
    .param p1, "temperature"    # I

    .prologue
    .line 273
    iget-boolean v1, p0, Lcom/android/exsettings/livedisplay/DisplayTemperature$ColorTemperatureSeekBar;->mUseBalance:Z

    if-eqz v1, :cond_0

    .line 274
    iget-object v1, p0, Lcom/android/exsettings/livedisplay/DisplayTemperature$ColorTemperatureSeekBar;->mBalanceCurve:[D

    int-to-double v4, p1

    invoke-static {v1, v4, v5}, Lorg/cyanogenmod/internal/util/MathUtils;->powerCurveToLinear([DD)D

    move-result-wide v2

    .line 275
    .local v2, "z":D
    iget-object v1, p0, Lcom/android/exsettings/livedisplay/DisplayTemperature$ColorTemperatureSeekBar;->mSeekBar:Landroid/widget/SeekBar;

    iget v4, p0, Lcom/android/exsettings/livedisplay/DisplayTemperature$ColorTemperatureSeekBar;->mBarMax:I

    int-to-double v4, v4

    mul-double/2addr v4, v2

    double-to-float v4, v4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 276
    return-void

    .line 278
    .end local v2    # "z":D
    :cond_0
    iget v1, p0, Lcom/android/exsettings/livedisplay/DisplayTemperature$ColorTemperatureSeekBar;->mMin:I

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget v4, p0, Lcom/android/exsettings/livedisplay/DisplayTemperature$ColorTemperatureSeekBar;->mMin:I

    sub-int v0, v1, v4

    .line 279
    .local v0, "p":I
    iget-object v1, p0, Lcom/android/exsettings/livedisplay/DisplayTemperature$ColorTemperatureSeekBar;->mSeekBar:Landroid/widget/SeekBar;

    int-to-float v4, v0

    const/high16 v5, 0x42c80000    # 100.0f

    div-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 272
    return-void
.end method
