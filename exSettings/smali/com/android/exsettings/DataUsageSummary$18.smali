.class Lcom/android/exsettings/DataUsageSummary$18;
.super Landroid/os/AsyncTask;
.source "DataUsageSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exsettings/DataUsageSummary;->resetDataStats(Landroid/net/NetworkTemplate;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
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
    .line 1209
    iput-object p1, p0, Lcom/android/exsettings/DataUsageSummary$18;->this$0:Lcom/android/exsettings/DataUsageSummary;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 1211
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "params":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/exsettings/DataUsageSummary$18;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 6
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 1213
    :try_start_0
    iget-object v1, p0, Lcom/android/exsettings/DataUsageSummary$18;->this$0:Lcom/android/exsettings/DataUsageSummary;

    invoke-static {v1}, Lcom/android/exsettings/DataUsageSummary;->-get16(Lcom/android/exsettings/DataUsageSummary;)Landroid/net/INetworkStatsService;

    move-result-object v1

    iget-object v2, p0, Lcom/android/exsettings/DataUsageSummary$18;->this$0:Lcom/android/exsettings/DataUsageSummary;

    invoke-static {v2}, Lcom/android/exsettings/DataUsageSummary;->-get20(Lcom/android/exsettings/DataUsageSummary;)Landroid/net/NetworkTemplate;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/net/INetworkStatsService;->resetDataUsageHistoryForAllUid(Landroid/net/NetworkTemplate;)V

    .line 1214
    iget-object v1, p0, Lcom/android/exsettings/DataUsageSummary$18;->this$0:Lcom/android/exsettings/DataUsageSummary;

    invoke-static {v1}, Lcom/android/exsettings/DataUsageSummary;->-get13(Lcom/android/exsettings/DataUsageSummary;)Lcom/android/exsettingslib/NetworkPolicyEditor;

    move-result-object v1

    iget-object v2, p0, Lcom/android/exsettings/DataUsageSummary$18;->this$0:Lcom/android/exsettings/DataUsageSummary;

    invoke-static {v2}, Lcom/android/exsettings/DataUsageSummary;->-get20(Lcom/android/exsettings/DataUsageSummary;)Landroid/net/NetworkTemplate;

    move-result-object v2

    .line 1215
    iget-object v3, p0, Lcom/android/exsettings/DataUsageSummary$18;->this$0:Lcom/android/exsettings/DataUsageSummary;

    invoke-static {v3}, Lcom/android/exsettings/DataUsageSummary;->-get13(Lcom/android/exsettings/DataUsageSummary;)Lcom/android/exsettingslib/NetworkPolicyEditor;

    move-result-object v3

    iget-object v4, p0, Lcom/android/exsettings/DataUsageSummary$18;->this$0:Lcom/android/exsettings/DataUsageSummary;

    invoke-static {v4}, Lcom/android/exsettings/DataUsageSummary;->-get20(Lcom/android/exsettings/DataUsageSummary;)Landroid/net/NetworkTemplate;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/exsettingslib/NetworkPolicyEditor;->getPolicyLimitBytes(Landroid/net/NetworkTemplate;)J

    move-result-wide v4

    .line 1214
    invoke-virtual {v1, v2, v4, v5}, Lcom/android/exsettingslib/NetworkPolicyEditor;->setPolicyLimitBytes(Landroid/net/NetworkTemplate;J)V

    .line 1216
    iget-object v1, p0, Lcom/android/exsettings/DataUsageSummary$18;->this$0:Lcom/android/exsettings/DataUsageSummary;

    invoke-static {v1}, Lcom/android/exsettings/DataUsageSummary;->-get16(Lcom/android/exsettings/DataUsageSummary;)Landroid/net/INetworkStatsService;

    move-result-object v1

    invoke-interface {v1}, Landroid/net/INetworkStatsService;->forceUpdate()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1220
    :goto_0
    const/4 v1, 0x0

    return-object v1

    .line 1217
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 1223
    check-cast p1, Ljava/lang/Void;

    .end local p1    # "result":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/exsettings/DataUsageSummary$18;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 1224
    iget-object v0, p0, Lcom/android/exsettings/DataUsageSummary$18;->this$0:Lcom/android/exsettings/DataUsageSummary;

    invoke-static {v0}, Lcom/android/exsettings/DataUsageSummary;->-wrap11(Lcom/android/exsettings/DataUsageSummary;)V

    .line 1223
    return-void
.end method
