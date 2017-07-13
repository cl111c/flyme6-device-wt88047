.class Lcom/android/exsettings/livedisplay/DisplayColor$2;
.super Ljava/lang/Object;
.source "DisplayColor.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exsettings/livedisplay/DisplayColor;->showDialog(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/livedisplay/DisplayColor;


# direct methods
.method constructor <init>(Lcom/android/exsettings/livedisplay/DisplayColor;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/exsettings/livedisplay/DisplayColor;

    .prologue
    .line 111
    iput-object p1, p0, Lcom/android/exsettings/livedisplay/DisplayColor$2;->this$0:Lcom/android/exsettings/livedisplay/DisplayColor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 114
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/exsettings/livedisplay/DisplayColor$2;->this$0:Lcom/android/exsettings/livedisplay/DisplayColor;

    invoke-static {v1}, Lcom/android/exsettings/livedisplay/DisplayColor;->-get1(Lcom/android/exsettings/livedisplay/DisplayColor;)[Lcom/android/exsettings/livedisplay/DisplayColor$ColorSeekBar;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 115
    iget-object v1, p0, Lcom/android/exsettings/livedisplay/DisplayColor$2;->this$0:Lcom/android/exsettings/livedisplay/DisplayColor;

    invoke-static {v1}, Lcom/android/exsettings/livedisplay/DisplayColor;->-get1(Lcom/android/exsettings/livedisplay/DisplayColor;)[Lcom/android/exsettings/livedisplay/DisplayColor$ColorSeekBar;

    move-result-object v1

    aget-object v1, v1, v0

    invoke-static {v1}, Lcom/android/exsettings/livedisplay/DisplayColor$ColorSeekBar;->-get0(Lcom/android/exsettings/livedisplay/DisplayColor$ColorSeekBar;)Lcom/android/exsettings/IntervalSeekBar;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/exsettings/IntervalSeekBar;->setProgressFloat(F)V

    .line 116
    iget-object v1, p0, Lcom/android/exsettings/livedisplay/DisplayColor$2;->this$0:Lcom/android/exsettings/livedisplay/DisplayColor;

    invoke-static {v1}, Lcom/android/exsettings/livedisplay/DisplayColor;->-get0(Lcom/android/exsettings/livedisplay/DisplayColor;)[F

    move-result-object v1

    aput v2, v1, v0

    .line 114
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 118
    :cond_0
    iget-object v1, p0, Lcom/android/exsettings/livedisplay/DisplayColor$2;->this$0:Lcom/android/exsettings/livedisplay/DisplayColor;

    iget-object v2, p0, Lcom/android/exsettings/livedisplay/DisplayColor$2;->this$0:Lcom/android/exsettings/livedisplay/DisplayColor;

    invoke-static {v2}, Lcom/android/exsettings/livedisplay/DisplayColor;->-get0(Lcom/android/exsettings/livedisplay/DisplayColor;)[F

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/exsettings/livedisplay/DisplayColor;->-wrap0(Lcom/android/exsettings/livedisplay/DisplayColor;[F)V

    .line 113
    return-void
.end method
