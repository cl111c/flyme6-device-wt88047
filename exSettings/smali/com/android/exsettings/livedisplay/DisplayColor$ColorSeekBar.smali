.class Lcom/android/exsettings/livedisplay/DisplayColor$ColorSeekBar;
.super Ljava/lang/Object;
.source "DisplayColor.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/livedisplay/DisplayColor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ColorSeekBar"
.end annotation


# instance fields
.field private mIndex:I

.field private final mSeekBar:Lcom/android/exsettings/IntervalSeekBar;

.field private mValue:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/android/exsettings/livedisplay/DisplayColor;


# direct methods
.method static synthetic -get0(Lcom/android/exsettings/livedisplay/DisplayColor$ColorSeekBar;)Lcom/android/exsettings/IntervalSeekBar;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/livedisplay/DisplayColor$ColorSeekBar;->mSeekBar:Lcom/android/exsettings/IntervalSeekBar;

    return-object v0
.end method

.method public constructor <init>(Lcom/android/exsettings/livedisplay/DisplayColor;Lcom/android/exsettings/IntervalSeekBar;Landroid/widget/TextView;I)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/exsettings/livedisplay/DisplayColor;
    .param p2, "seekBar"    # Lcom/android/exsettings/IntervalSeekBar;
    .param p3, "value"    # Landroid/widget/TextView;
    .param p4, "index"    # I

    .prologue
    .line 209
    iput-object p1, p0, Lcom/android/exsettings/livedisplay/DisplayColor$ColorSeekBar;->this$0:Lcom/android/exsettings/livedisplay/DisplayColor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 210
    iput-object p2, p0, Lcom/android/exsettings/livedisplay/DisplayColor$ColorSeekBar;->mSeekBar:Lcom/android/exsettings/IntervalSeekBar;

    .line 211
    iput-object p3, p0, Lcom/android/exsettings/livedisplay/DisplayColor$ColorSeekBar;->mValue:Landroid/widget/TextView;

    .line 212
    iput p4, p0, Lcom/android/exsettings/livedisplay/DisplayColor$ColorSeekBar;->mIndex:I

    .line 214
    iget-object v0, p0, Lcom/android/exsettings/livedisplay/DisplayColor$ColorSeekBar;->mSeekBar:Lcom/android/exsettings/IntervalSeekBar;

    invoke-virtual {v0, p0}, Lcom/android/exsettings/IntervalSeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 209
    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 8
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    move-object v1, p1

    .line 219
    check-cast v1, Lcom/android/exsettings/IntervalSeekBar;

    .line 220
    .local v1, "isb":Lcom/android/exsettings/IntervalSeekBar;
    invoke-virtual {v1}, Lcom/android/exsettings/IntervalSeekBar;->getProgressFloat()F

    move-result v0

    .line 221
    .local v0, "fp":F
    if-eqz p3, :cond_0

    .line 222
    iget-object v4, p0, Lcom/android/exsettings/livedisplay/DisplayColor$ColorSeekBar;->this$0:Lcom/android/exsettings/livedisplay/DisplayColor;

    invoke-static {v4}, Lcom/android/exsettings/livedisplay/DisplayColor;->-get0(Lcom/android/exsettings/livedisplay/DisplayColor;)[F

    move-result-object v4

    iget v5, p0, Lcom/android/exsettings/livedisplay/DisplayColor$ColorSeekBar;->mIndex:I

    cmpl-float v6, v0, v3

    if-lez v6, :cond_1

    :goto_0
    aput v3, v4, v5

    .line 223
    iget-object v3, p0, Lcom/android/exsettings/livedisplay/DisplayColor$ColorSeekBar;->this$0:Lcom/android/exsettings/livedisplay/DisplayColor;

    iget-object v4, p0, Lcom/android/exsettings/livedisplay/DisplayColor$ColorSeekBar;->this$0:Lcom/android/exsettings/livedisplay/DisplayColor;

    invoke-static {v4}, Lcom/android/exsettings/livedisplay/DisplayColor;->-get0(Lcom/android/exsettings/livedisplay/DisplayColor;)[F

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/exsettings/livedisplay/DisplayColor;->-wrap0(Lcom/android/exsettings/livedisplay/DisplayColor;[F)V

    .line 226
    :cond_0
    const/high16 v3, 0x42c80000    # 100.0f

    mul-float/2addr v3, v0

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 227
    .local v2, "percent":I
    iget-object v3, p0, Lcom/android/exsettings/livedisplay/DisplayColor$ColorSeekBar;->mValue:Landroid/widget/TextView;

    const-string/jumbo v4, "%d%%"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 218
    return-void

    .end local v2    # "percent":I
    :cond_1
    move v3, v0

    .line 222
    goto :goto_0
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 231
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 236
    return-void
.end method
