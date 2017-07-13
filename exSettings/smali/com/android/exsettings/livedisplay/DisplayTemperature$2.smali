.class Lcom/android/exsettings/livedisplay/DisplayTemperature$2;
.super Ljava/lang/Object;
.source "DisplayTemperature.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exsettings/livedisplay/DisplayTemperature;->showDialog(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/livedisplay/DisplayTemperature;


# direct methods
.method constructor <init>(Lcom/android/exsettings/livedisplay/DisplayTemperature;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/exsettings/livedisplay/DisplayTemperature;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/android/exsettings/livedisplay/DisplayTemperature$2;->this$0:Lcom/android/exsettings/livedisplay/DisplayTemperature;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/exsettings/livedisplay/DisplayTemperature$2;->this$0:Lcom/android/exsettings/livedisplay/DisplayTemperature;

    invoke-static {v0}, Lcom/android/exsettings/livedisplay/DisplayTemperature;->-get2(Lcom/android/exsettings/livedisplay/DisplayTemperature;)Lcom/android/exsettings/livedisplay/DisplayTemperature$ColorTemperatureSeekBar;

    move-result-object v0

    iget-object v1, p0, Lcom/android/exsettings/livedisplay/DisplayTemperature$2;->this$0:Lcom/android/exsettings/livedisplay/DisplayTemperature;

    invoke-static {v1}, Lcom/android/exsettings/livedisplay/DisplayTemperature;->-get0(Lcom/android/exsettings/livedisplay/DisplayTemperature;)Lcyanogenmod/hardware/LiveDisplayConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcyanogenmod/hardware/LiveDisplayConfig;->getDefaultDayTemperature()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/exsettings/livedisplay/DisplayTemperature$ColorTemperatureSeekBar;->setTemperature(I)V

    .line 109
    iget-object v0, p0, Lcom/android/exsettings/livedisplay/DisplayTemperature$2;->this$0:Lcom/android/exsettings/livedisplay/DisplayTemperature;

    invoke-static {v0}, Lcom/android/exsettings/livedisplay/DisplayTemperature;->-get3(Lcom/android/exsettings/livedisplay/DisplayTemperature;)Lcom/android/exsettings/livedisplay/DisplayTemperature$ColorTemperatureSeekBar;

    move-result-object v0

    iget-object v1, p0, Lcom/android/exsettings/livedisplay/DisplayTemperature$2;->this$0:Lcom/android/exsettings/livedisplay/DisplayTemperature;

    invoke-static {v1}, Lcom/android/exsettings/livedisplay/DisplayTemperature;->-get0(Lcom/android/exsettings/livedisplay/DisplayTemperature;)Lcyanogenmod/hardware/LiveDisplayConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcyanogenmod/hardware/LiveDisplayConfig;->getDefaultNightTemperature()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/exsettings/livedisplay/DisplayTemperature$ColorTemperatureSeekBar;->setTemperature(I)V

    .line 110
    iget-object v0, p0, Lcom/android/exsettings/livedisplay/DisplayTemperature$2;->this$0:Lcom/android/exsettings/livedisplay/DisplayTemperature;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/exsettings/livedisplay/DisplayTemperature;->-wrap0(Lcom/android/exsettings/livedisplay/DisplayTemperature;Z)V

    .line 107
    return-void
.end method
