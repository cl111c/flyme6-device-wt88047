.class Lcom/android/exsettings/fuelgauge/PowerUsageDetail$1;
.super Landroid/content/BroadcastReceiver;
.source "PowerUsageDetail.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/fuelgauge/PowerUsageDetail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/fuelgauge/PowerUsageDetail;


# direct methods
.method constructor <init>(Lcom/android/exsettings/fuelgauge/PowerUsageDetail;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/exsettings/fuelgauge/PowerUsageDetail;

    .prologue
    .line 695
    iput-object p1, p0, Lcom/android/exsettings/fuelgauge/PowerUsageDetail$1;->this$0:Lcom/android/exsettings/fuelgauge/PowerUsageDetail;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v0, 0x0

    .line 698
    iget-object v1, p0, Lcom/android/exsettings/fuelgauge/PowerUsageDetail$1;->this$0:Lcom/android/exsettings/fuelgauge/PowerUsageDetail;

    invoke-static {v1}, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->-get0(Lcom/android/exsettings/fuelgauge/PowerUsageDetail;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/exsettings/fuelgauge/PowerUsageDetail$1;->getResultCode()I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 697
    return-void
.end method
