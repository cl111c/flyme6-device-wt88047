.class Lcom/android/exsettings/DataUsageSummary$12;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Lcom/android/exsettings/widget/ChartDataUsageView$DataUsageChartListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/DataUsageSummary;


# direct methods
.method constructor <init>(Lcom/android/exsettings/DataUsageSummary;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/exsettings/DataUsageSummary;

    .prologue
    .line 1761
    iput-object p1, p0, Lcom/android/exsettings/DataUsageSummary$12;->this$0:Lcom/android/exsettings/DataUsageSummary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLimitChanged()V
    .locals 4

    .prologue
    .line 1769
    iget-object v0, p0, Lcom/android/exsettings/DataUsageSummary$12;->this$0:Lcom/android/exsettings/DataUsageSummary;

    iget-object v1, p0, Lcom/android/exsettings/DataUsageSummary$12;->this$0:Lcom/android/exsettings/DataUsageSummary;

    invoke-static {v1}, Lcom/android/exsettings/DataUsageSummary;->-get5(Lcom/android/exsettings/DataUsageSummary;)Lcom/android/exsettings/widget/ChartDataUsageView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/exsettings/widget/ChartDataUsageView;->getLimitBytes()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/android/exsettings/DataUsageSummary;->-wrap8(Lcom/android/exsettings/DataUsageSummary;J)V

    .line 1770
    iget-object v0, p0, Lcom/android/exsettings/DataUsageSummary$12;->this$0:Lcom/android/exsettings/DataUsageSummary;

    invoke-static {v0}, Lcom/android/exsettings/DataUsageSummary;->-wrap11(Lcom/android/exsettings/DataUsageSummary;)V

    .line 1768
    return-void
.end method

.method public onWarningChanged()V
    .locals 4

    .prologue
    .line 1764
    iget-object v0, p0, Lcom/android/exsettings/DataUsageSummary$12;->this$0:Lcom/android/exsettings/DataUsageSummary;

    iget-object v1, p0, Lcom/android/exsettings/DataUsageSummary$12;->this$0:Lcom/android/exsettings/DataUsageSummary;

    invoke-static {v1}, Lcom/android/exsettings/DataUsageSummary;->-get5(Lcom/android/exsettings/DataUsageSummary;)Lcom/android/exsettings/widget/ChartDataUsageView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/exsettings/widget/ChartDataUsageView;->getWarningBytes()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/android/exsettings/DataUsageSummary;->-wrap9(Lcom/android/exsettings/DataUsageSummary;J)V

    .line 1763
    return-void
.end method

.method public requestLimitEdit()V
    .locals 1

    .prologue
    .line 1780
    iget-object v0, p0, Lcom/android/exsettings/DataUsageSummary$12;->this$0:Lcom/android/exsettings/DataUsageSummary;

    invoke-static {v0}, Lcom/android/exsettings/DataUsageSummary$LimitEditorFragment;->show(Lcom/android/exsettings/DataUsageSummary;)V

    .line 1779
    return-void
.end method

.method public requestWarningEdit()V
    .locals 1

    .prologue
    .line 1775
    iget-object v0, p0, Lcom/android/exsettings/DataUsageSummary$12;->this$0:Lcom/android/exsettings/DataUsageSummary;

    invoke-static {v0}, Lcom/android/exsettings/DataUsageSummary$WarningEditorFragment;->show(Lcom/android/exsettings/DataUsageSummary;)V

    .line 1774
    return-void
.end method
