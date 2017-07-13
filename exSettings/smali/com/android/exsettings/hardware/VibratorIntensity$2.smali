.class Lcom/android/exsettings/hardware/VibratorIntensity$2;
.super Ljava/lang/Object;
.source "VibratorIntensity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exsettings/hardware/VibratorIntensity;->showDialog(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/hardware/VibratorIntensity;


# direct methods
.method constructor <init>(Lcom/android/exsettings/hardware/VibratorIntensity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/exsettings/hardware/VibratorIntensity;

    .prologue
    .line 137
    iput-object p1, p0, Lcom/android/exsettings/hardware/VibratorIntensity$2;->this$0:Lcom/android/exsettings/hardware/VibratorIntensity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 140
    iget-object v0, p0, Lcom/android/exsettings/hardware/VibratorIntensity$2;->this$0:Lcom/android/exsettings/hardware/VibratorIntensity;

    invoke-static {v0}, Lcom/android/exsettings/hardware/VibratorIntensity;->-get2(Lcom/android/exsettings/hardware/VibratorIntensity;)Landroid/widget/SeekBar;

    move-result-object v0

    iget-object v1, p0, Lcom/android/exsettings/hardware/VibratorIntensity$2;->this$0:Lcom/android/exsettings/hardware/VibratorIntensity;

    invoke-static {v1}, Lcom/android/exsettings/hardware/VibratorIntensity;->-get0(Lcom/android/exsettings/hardware/VibratorIntensity;)I

    move-result v1

    iget-object v2, p0, Lcom/android/exsettings/hardware/VibratorIntensity$2;->this$0:Lcom/android/exsettings/hardware/VibratorIntensity;

    invoke-static {v2}, Lcom/android/exsettings/hardware/VibratorIntensity;->-get1(Lcom/android/exsettings/hardware/VibratorIntensity;)I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 139
    return-void
.end method
