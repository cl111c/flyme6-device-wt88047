.class Lcom/android/exsettings/fuelgauge/PowerUsageSummary$2;
.super Ljava/lang/Object;
.source "PowerUsageSummary.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exsettings/fuelgauge/PowerUsageSummary;->resetStats()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/fuelgauge/PowerUsageSummary;


# direct methods
.method constructor <init>(Lcom/android/exsettings/fuelgauge/PowerUsageSummary;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/exsettings/fuelgauge/PowerUsageSummary;

    .prologue
    .line 309
    iput-object p1, p0, Lcom/android/exsettings/fuelgauge/PowerUsageSummary$2;->this$0:Lcom/android/exsettings/fuelgauge/PowerUsageSummary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 313
    iget-object v0, p0, Lcom/android/exsettings/fuelgauge/PowerUsageSummary$2;->this$0:Lcom/android/exsettings/fuelgauge/PowerUsageSummary;

    iget-object v0, v0, Lcom/android/exsettings/fuelgauge/PowerUsageSummary;->mStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsHelper;->resetStatistics()V

    .line 314
    iget-object v0, p0, Lcom/android/exsettings/fuelgauge/PowerUsageSummary$2;->this$0:Lcom/android/exsettings/fuelgauge/PowerUsageSummary;

    invoke-virtual {v0}, Lcom/android/exsettings/fuelgauge/PowerUsageSummary;->refreshStats()V

    .line 315
    iget-object v0, p0, Lcom/android/exsettings/fuelgauge/PowerUsageSummary$2;->this$0:Lcom/android/exsettings/fuelgauge/PowerUsageSummary;

    iget-object v0, v0, Lcom/android/exsettings/fuelgauge/PowerUsageSummary;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 311
    return-void
.end method
