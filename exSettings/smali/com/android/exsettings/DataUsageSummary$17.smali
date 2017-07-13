.class Lcom/android/exsettings/DataUsageSummary$17;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exsettings/DataUsageSummary;->updateAppDetail()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/DataUsageSummary;

.field final synthetic val$uid:I


# direct methods
.method constructor <init>(Lcom/android/exsettings/DataUsageSummary;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/exsettings/DataUsageSummary;
    .param p2, "val$uid"    # I

    .prologue
    .line 1092
    iput-object p1, p0, Lcom/android/exsettings/DataUsageSummary$17;->this$0:Lcom/android/exsettings/DataUsageSummary;

    iput p2, p0, Lcom/android/exsettings/DataUsageSummary$17;->val$uid:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1095
    iget-object v0, p0, Lcom/android/exsettings/DataUsageSummary$17;->this$0:Lcom/android/exsettings/DataUsageSummary;

    invoke-virtual {v0}, Lcom/android/exsettings/DataUsageSummary;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1096
    return-void

    .line 1100
    :cond_0
    iget-object v0, p0, Lcom/android/exsettings/DataUsageSummary$17;->this$0:Lcom/android/exsettings/DataUsageSummary;

    invoke-virtual {v0}, Lcom/android/exsettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/exsettings/DataUsageSummary$17;->this$0:Lcom/android/exsettings/DataUsageSummary;

    invoke-static {v1}, Lcom/android/exsettings/DataUsageSummary;->-get3(Lcom/android/exsettings/DataUsageSummary;)Landroid/content/Intent;

    move-result-object v1

    .line 1101
    new-instance v2, Landroid/os/UserHandle;

    iget v3, p0, Lcom/android/exsettings/DataUsageSummary$17;->val$uid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    .line 1100
    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1094
    return-void
.end method
