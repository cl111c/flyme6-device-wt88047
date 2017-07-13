.class Lcom/android/exsettings/DataUsageSummary$6;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 1549
    iput-object p1, p0, Lcom/android/exsettings/DataUsageSummary$6;->this$0:Lcom/android/exsettings/DataUsageSummary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1552
    iget-object v1, p0, Lcom/android/exsettings/DataUsageSummary$6;->this$0:Lcom/android/exsettings/DataUsageSummary;

    invoke-static {v1}, Lcom/android/exsettings/DataUsageSummary;->-get1(Lcom/android/exsettings/DataUsageSummary;)Landroid/widget/Switch;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Switch;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    .line 1554
    .local v0, "restrictCellular":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 1558
    iget-object v1, p0, Lcom/android/exsettings/DataUsageSummary$6;->this$0:Lcom/android/exsettings/DataUsageSummary;

    invoke-static {v1}, Lcom/android/exsettings/DataUsageSummary$ConfirmAppRestrictCellularFragment;->show(Lcom/android/exsettings/DataUsageSummary;)V

    .line 1551
    :goto_1
    return-void

    .line 1552
    .end local v0    # "restrictCellular":Z
    :cond_0
    const/4 v0, 0x1

    .restart local v0    # "restrictCellular":Z
    goto :goto_0

    .line 1560
    :cond_1
    iget-object v1, p0, Lcom/android/exsettings/DataUsageSummary$6;->this$0:Lcom/android/exsettings/DataUsageSummary;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/exsettings/DataUsageSummary;->-wrap6(Lcom/android/exsettings/DataUsageSummary;Z)V

    goto :goto_1
.end method
