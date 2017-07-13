.class Lcom/android/exsettings/DataUsageSummary$9;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


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
    .line 1587
    iput-object p1, p0, Lcom/android/exsettings/DataUsageSummary$9;->this$0:Lcom/android/exsettings/DataUsageSummary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 1590
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/exsettings/DataUsageSummary$CycleItem;

    .line 1591
    .local v0, "cycle":Lcom/android/exsettings/DataUsageSummary$CycleItem;
    instance-of v1, v0, Lcom/android/exsettings/DataUsageSummary$CycleChangeItem;

    if-eqz v1, :cond_0

    .line 1594
    iget-object v1, p0, Lcom/android/exsettings/DataUsageSummary$9;->this$0:Lcom/android/exsettings/DataUsageSummary;

    invoke-static {v1}, Lcom/android/exsettings/DataUsageSummary$CycleEditorFragment;->show(Lcom/android/exsettings/DataUsageSummary;)V

    .line 1597
    iget-object v1, p0, Lcom/android/exsettings/DataUsageSummary$9;->this$0:Lcom/android/exsettings/DataUsageSummary;

    invoke-static {v1}, Lcom/android/exsettings/DataUsageSummary;->-get8(Lcom/android/exsettings/DataUsageSummary;)Landroid/widget/Spinner;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setSelection(I)V

    .line 1589
    :goto_0
    return-void

    .line 1607
    :cond_0
    iget-object v1, p0, Lcom/android/exsettings/DataUsageSummary$9;->this$0:Lcom/android/exsettings/DataUsageSummary;

    invoke-static {v1}, Lcom/android/exsettings/DataUsageSummary;->-get5(Lcom/android/exsettings/DataUsageSummary;)Lcom/android/exsettings/widget/ChartDataUsageView;

    move-result-object v1

    iget-wide v2, v0, Lcom/android/exsettings/DataUsageSummary$CycleItem;->start:J

    iget-wide v4, v0, Lcom/android/exsettings/DataUsageSummary$CycleItem;->end:J

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/exsettings/widget/ChartDataUsageView;->setVisibleRange(JJ)V

    .line 1609
    iget-object v1, p0, Lcom/android/exsettings/DataUsageSummary$9;->this$0:Lcom/android/exsettings/DataUsageSummary;

    invoke-static {v1}, Lcom/android/exsettings/DataUsageSummary;->-wrap12(Lcom/android/exsettings/DataUsageSummary;)V

    goto :goto_0
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 1614
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method
