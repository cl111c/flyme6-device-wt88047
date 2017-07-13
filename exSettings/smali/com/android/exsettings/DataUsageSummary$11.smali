.class Lcom/android/exsettings/DataUsageSummary$11;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/net/NetworkStats;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/DataUsageSummary;


# direct methods
.method constructor <init>(Lcom/android/exsettings/DataUsageSummary;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/exsettings/DataUsageSummary;

    .prologue
    .line 1718
    iput-object p1, p0, Lcom/android/exsettings/DataUsageSummary$11;->this$0:Lcom/android/exsettings/DataUsageSummary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1719
    return-void
.end method

.method private updateEmptyVisible()V
    .locals 5

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 1740
    iget-object v1, p0, Lcom/android/exsettings/DataUsageSummary$11;->this$0:Lcom/android/exsettings/DataUsageSummary;

    invoke-static {v1}, Lcom/android/exsettings/DataUsageSummary;->-get0(Lcom/android/exsettings/DataUsageSummary;)Lcom/android/exsettings/DataUsageSummary$DataUsageAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/exsettings/DataUsageSummary$DataUsageAdapter;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/exsettings/DataUsageSummary$11;->this$0:Lcom/android/exsettings/DataUsageSummary;

    invoke-static {v1}, Lcom/android/exsettings/DataUsageSummary;->-wrap0(Lcom/android/exsettings/DataUsageSummary;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 1741
    .local v0, "isEmpty":Z
    :goto_0
    iget-object v1, p0, Lcom/android/exsettings/DataUsageSummary$11;->this$0:Lcom/android/exsettings/DataUsageSummary;

    invoke-static {v1}, Lcom/android/exsettings/DataUsageSummary;->-get11(Lcom/android/exsettings/DataUsageSummary;)Landroid/widget/TextView;

    move-result-object v4

    if-eqz v0, :cond_2

    move v1, v2

    :goto_1
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1742
    iget-object v1, p0, Lcom/android/exsettings/DataUsageSummary$11;->this$0:Lcom/android/exsettings/DataUsageSummary;

    invoke-static {v1}, Lcom/android/exsettings/DataUsageSummary;->-get18(Lcom/android/exsettings/DataUsageSummary;)Landroid/view/View;

    move-result-object v1

    if-eqz v0, :cond_3

    :goto_2
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1739
    return-void

    .line 1740
    .end local v0    # "isEmpty":Z
    :cond_1
    const/4 v0, 0x1

    .restart local v0    # "isEmpty":Z
    goto :goto_0

    :cond_2
    move v1, v3

    .line 1741
    goto :goto_1

    :cond_3
    move v2, v3

    .line 1742
    goto :goto_2
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 3
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Landroid/net/NetworkStats;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1722
    new-instance v0, Lcom/android/exsettingslib/net/SummaryForAllUidLoader;

    iget-object v1, p0, Lcom/android/exsettings/DataUsageSummary$11;->this$0:Lcom/android/exsettings/DataUsageSummary;

    invoke-virtual {v1}, Lcom/android/exsettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/exsettings/DataUsageSummary$11;->this$0:Lcom/android/exsettings/DataUsageSummary;

    invoke-static {v2}, Lcom/android/exsettings/DataUsageSummary;->-get17(Lcom/android/exsettings/DataUsageSummary;)Landroid/net/INetworkStatsSession;

    move-result-object v2

    invoke-direct {v0, v1, v2, p2}, Lcom/android/exsettingslib/net/SummaryForAllUidLoader;-><init>(Landroid/content/Context;Landroid/net/INetworkStatsSession;Landroid/os/Bundle;)V

    return-object v0
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/net/NetworkStats;)V
    .locals 3
    .param p2, "data"    # Landroid/net/NetworkStats;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/net/NetworkStats;",
            ">;",
            "Landroid/net/NetworkStats;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1727
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/net/NetworkStats;>;"
    iget-object v1, p0, Lcom/android/exsettings/DataUsageSummary$11;->this$0:Lcom/android/exsettings/DataUsageSummary;

    invoke-static {v1}, Lcom/android/exsettings/DataUsageSummary;->-get14(Lcom/android/exsettings/DataUsageSummary;)Landroid/net/NetworkPolicyManager;

    move-result-object v1

    .line 1728
    const/4 v2, 0x1

    .line 1727
    invoke-virtual {v1, v2}, Landroid/net/NetworkPolicyManager;->getUidsWithPolicy(I)[I

    move-result-object v0

    .line 1729
    .local v0, "restrictedUids":[I
    iget-object v1, p0, Lcom/android/exsettings/DataUsageSummary$11;->this$0:Lcom/android/exsettings/DataUsageSummary;

    invoke-static {v1}, Lcom/android/exsettings/DataUsageSummary;->-get0(Lcom/android/exsettings/DataUsageSummary;)Lcom/android/exsettings/DataUsageSummary$DataUsageAdapter;

    move-result-object v1

    invoke-virtual {v1, p2, v0}, Lcom/android/exsettings/DataUsageSummary$DataUsageAdapter;->bindStats(Landroid/net/NetworkStats;[I)V

    .line 1730
    invoke-direct {p0}, Lcom/android/exsettings/DataUsageSummary$11;->updateEmptyVisible()V

    .line 1726
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .param p1, "loader"    # Landroid/content/Loader;
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    .line 1726
    check-cast p2, Landroid/net/NetworkStats;

    .end local p2    # "data":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/exsettings/DataUsageSummary$11;->onLoadFinished(Landroid/content/Loader;Landroid/net/NetworkStats;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/net/NetworkStats;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1735
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/net/NetworkStats;>;"
    iget-object v0, p0, Lcom/android/exsettings/DataUsageSummary$11;->this$0:Lcom/android/exsettings/DataUsageSummary;

    invoke-static {v0}, Lcom/android/exsettings/DataUsageSummary;->-get0(Lcom/android/exsettings/DataUsageSummary;)Lcom/android/exsettings/DataUsageSummary$DataUsageAdapter;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [I

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/android/exsettings/DataUsageSummary$DataUsageAdapter;->bindStats(Landroid/net/NetworkStats;[I)V

    .line 1736
    invoke-direct {p0}, Lcom/android/exsettings/DataUsageSummary$11;->updateEmptyVisible()V

    .line 1734
    return-void
.end method
