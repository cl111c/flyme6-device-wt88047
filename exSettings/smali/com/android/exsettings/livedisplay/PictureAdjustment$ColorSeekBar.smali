.class Lcom/android/exsettings/livedisplay/PictureAdjustment$ColorSeekBar;
.super Ljava/lang/Object;
.source "PictureAdjustment.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/livedisplay/PictureAdjustment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ColorSeekBar"
.end annotation


# instance fields
.field private mIndex:I

.field private mRange:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final mSeekBar:Lcom/android/exsettings/IntervalSeekBar;

.field private mValue:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/android/exsettings/livedisplay/PictureAdjustment;


# direct methods
.method public constructor <init>(Lcom/android/exsettings/livedisplay/PictureAdjustment;Lcom/android/exsettings/IntervalSeekBar;Landroid/util/Range;Landroid/widget/TextView;I)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/exsettings/livedisplay/PictureAdjustment;
    .param p2, "seekBar"    # Lcom/android/exsettings/IntervalSeekBar;
    .param p4, "value"    # Landroid/widget/TextView;
    .param p5, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/exsettings/IntervalSeekBar;",
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Float;",
            ">;",
            "Landroid/widget/TextView;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 218
    .local p3, "range":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Float;>;"
    iput-object p1, p0, Lcom/android/exsettings/livedisplay/PictureAdjustment$ColorSeekBar;->this$0:Lcom/android/exsettings/livedisplay/PictureAdjustment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 219
    iput-object p2, p0, Lcom/android/exsettings/livedisplay/PictureAdjustment$ColorSeekBar;->mSeekBar:Lcom/android/exsettings/IntervalSeekBar;

    .line 220
    iput-object p4, p0, Lcom/android/exsettings/livedisplay/PictureAdjustment$ColorSeekBar;->mValue:Landroid/widget/TextView;

    .line 221
    iput p5, p0, Lcom/android/exsettings/livedisplay/PictureAdjustment$ColorSeekBar;->mIndex:I

    .line 222
    iput-object p3, p0, Lcom/android/exsettings/livedisplay/PictureAdjustment$ColorSeekBar;->mRange:Landroid/util/Range;

    .line 223
    iget-object v1, p0, Lcom/android/exsettings/livedisplay/PictureAdjustment$ColorSeekBar;->mSeekBar:Lcom/android/exsettings/IntervalSeekBar;

    invoke-virtual {p3}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/exsettings/IntervalSeekBar;->setMinimum(F)V

    .line 224
    iget-object v1, p0, Lcom/android/exsettings/livedisplay/PictureAdjustment$ColorSeekBar;->mSeekBar:Lcom/android/exsettings/IntervalSeekBar;

    invoke-virtual {p3}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/exsettings/IntervalSeekBar;->setMaximum(F)V

    .line 226
    iget-object v0, p0, Lcom/android/exsettings/livedisplay/PictureAdjustment$ColorSeekBar;->mSeekBar:Lcom/android/exsettings/IntervalSeekBar;

    invoke-virtual {v0, p0}, Lcom/android/exsettings/IntervalSeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 218
    return-void
.end method

.method private getLabel(F)Ljava/lang/String;
    .locals 4
    .param p1, "value"    # F

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 251
    iget-object v0, p0, Lcom/android/exsettings/livedisplay/PictureAdjustment$ColorSeekBar;->mRange:Landroid/util/Range;

    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 252
    const-string/jumbo v0, "%d%%"

    new-array v1, v2, [Ljava/lang/Object;

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v2, p1

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 254
    :cond_0
    const-string/jumbo v0, "%d"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 6
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    move-object v1, p1

    .line 231
    check-cast v1, Lcom/android/exsettings/IntervalSeekBar;

    .line 232
    .local v1, "isb":Lcom/android/exsettings/IntervalSeekBar;
    invoke-virtual {v1}, Lcom/android/exsettings/IntervalSeekBar;->getProgressFloat()F

    move-result v0

    .line 233
    .local v0, "fp":F
    if-eqz p3, :cond_0

    .line 234
    iget-object v2, p0, Lcom/android/exsettings/livedisplay/PictureAdjustment$ColorSeekBar;->this$0:Lcom/android/exsettings/livedisplay/PictureAdjustment;

    invoke-static {v2}, Lcom/android/exsettings/livedisplay/PictureAdjustment;->-get0(Lcom/android/exsettings/livedisplay/PictureAdjustment;)[F

    move-result-object v3

    iget v4, p0, Lcom/android/exsettings/livedisplay/PictureAdjustment$ColorSeekBar;->mIndex:I

    iget-object v2, p0, Lcom/android/exsettings/livedisplay/PictureAdjustment$ColorSeekBar;->this$0:Lcom/android/exsettings/livedisplay/PictureAdjustment;

    invoke-static {v2}, Lcom/android/exsettings/livedisplay/PictureAdjustment;->-get2(Lcom/android/exsettings/livedisplay/PictureAdjustment;)Ljava/util/List;

    move-result-object v2

    iget v5, p0, Lcom/android/exsettings/livedisplay/PictureAdjustment$ColorSeekBar;->mIndex:I

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Range;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/util/Range;->clamp(Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    aput v2, v3, v4

    .line 235
    iget-object v2, p0, Lcom/android/exsettings/livedisplay/PictureAdjustment$ColorSeekBar;->this$0:Lcom/android/exsettings/livedisplay/PictureAdjustment;

    iget-object v3, p0, Lcom/android/exsettings/livedisplay/PictureAdjustment$ColorSeekBar;->this$0:Lcom/android/exsettings/livedisplay/PictureAdjustment;

    invoke-static {v3}, Lcom/android/exsettings/livedisplay/PictureAdjustment;->-get0(Lcom/android/exsettings/livedisplay/PictureAdjustment;)[F

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/exsettings/livedisplay/PictureAdjustment;->-wrap0(Lcom/android/exsettings/livedisplay/PictureAdjustment;[F)V

    .line 237
    :cond_0
    iget-object v2, p0, Lcom/android/exsettings/livedisplay/PictureAdjustment$ColorSeekBar;->mValue:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/exsettings/livedisplay/PictureAdjustment$ColorSeekBar;->this$0:Lcom/android/exsettings/livedisplay/PictureAdjustment;

    invoke-static {v3}, Lcom/android/exsettings/livedisplay/PictureAdjustment;->-get0(Lcom/android/exsettings/livedisplay/PictureAdjustment;)[F

    move-result-object v3

    iget v4, p0, Lcom/android/exsettings/livedisplay/PictureAdjustment$ColorSeekBar;->mIndex:I

    aget v3, v3, v4

    invoke-direct {p0, v3}, Lcom/android/exsettings/livedisplay/PictureAdjustment$ColorSeekBar;->getLabel(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 230
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 241
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 246
    return-void
.end method

.method public setValue(F)V
    .locals 2
    .param p1, "value"    # F

    .prologue
    .line 258
    iget-object v0, p0, Lcom/android/exsettings/livedisplay/PictureAdjustment$ColorSeekBar;->mSeekBar:Lcom/android/exsettings/IntervalSeekBar;

    invoke-virtual {v0, p1}, Lcom/android/exsettings/IntervalSeekBar;->setProgressFloat(F)V

    .line 259
    iget-object v0, p0, Lcom/android/exsettings/livedisplay/PictureAdjustment$ColorSeekBar;->mValue:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lcom/android/exsettings/livedisplay/PictureAdjustment$ColorSeekBar;->getLabel(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 257
    return-void
.end method
