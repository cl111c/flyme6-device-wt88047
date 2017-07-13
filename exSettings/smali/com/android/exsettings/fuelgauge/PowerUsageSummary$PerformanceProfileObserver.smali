.class Lcom/android/exsettings/fuelgauge/PowerUsageSummary$PerformanceProfileObserver;
.super Landroid/database/ContentObserver;
.source "PowerUsageSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/fuelgauge/PowerUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PerformanceProfileObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/fuelgauge/PowerUsageSummary;


# direct methods
.method public constructor <init>(Lcom/android/exsettings/fuelgauge/PowerUsageSummary;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/exsettings/fuelgauge/PowerUsageSummary;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 116
    iput-object p1, p0, Lcom/android/exsettings/fuelgauge/PowerUsageSummary$PerformanceProfileObserver;->this$0:Lcom/android/exsettings/fuelgauge/PowerUsageSummary;

    .line 117
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 116
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 1
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/exsettings/fuelgauge/PowerUsageSummary$PerformanceProfileObserver;->this$0:Lcom/android/exsettings/fuelgauge/PowerUsageSummary;

    invoke-static {v0}, Lcom/android/exsettings/fuelgauge/PowerUsageSummary;->-wrap0(Lcom/android/exsettings/fuelgauge/PowerUsageSummary;)V

    .line 121
    return-void
.end method
