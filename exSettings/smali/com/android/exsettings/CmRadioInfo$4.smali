.class Lcom/android/exsettings/CmRadioInfo$4;
.super Ljava/lang/Object;
.source "CmRadioInfo.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/CmRadioInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/CmRadioInfo;


# direct methods
.method constructor <init>(Lcom/android/exsettings/CmRadioInfo;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/exsettings/CmRadioInfo;

    .prologue
    .line 153
    iput-object p1, p0, Lcom/android/exsettings/CmRadioInfo$4;->this$0:Lcom/android/exsettings/CmRadioInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 156
    const-string/jumbo v1, "persist.data.iwlan.enable"

    iget-object v0, p0, Lcom/android/exsettings/CmRadioInfo$4;->this$0:Lcom/android/exsettings/CmRadioInfo;

    invoke-static {v0}, Lcom/android/exsettings/CmRadioInfo;->-wrap5(Lcom/android/exsettings/CmRadioInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "false"

    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    const-string/jumbo v1, "persist.dbg.wfc_avail_ovr"

    iget-object v0, p0, Lcom/android/exsettings/CmRadioInfo$4;->this$0:Lcom/android/exsettings/CmRadioInfo;

    invoke-static {v0}, Lcom/android/exsettings/CmRadioInfo;->-wrap5(Lcom/android/exsettings/CmRadioInfo;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "0"

    :goto_1
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    iget-object v0, p0, Lcom/android/exsettings/CmRadioInfo$4;->this$0:Lcom/android/exsettings/CmRadioInfo;

    invoke-static {v0}, Lcom/android/exsettings/CmRadioInfo;->-wrap11(Lcom/android/exsettings/CmRadioInfo;)V

    .line 155
    return-void

    .line 156
    :cond_0
    const-string/jumbo v0, "true"

    goto :goto_0

    .line 157
    :cond_1
    const-string/jumbo v0, "1"

    goto :goto_1
.end method
