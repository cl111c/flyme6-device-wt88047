.class Lcom/android/exsettings/applications/ProcessStatsDetail$4;
.super Ljava/lang/Object;
.source "ProcessStatsDetail.java"

# interfaces
.implements Lcom/android/exsettings/CancellablePreference$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exsettings/applications/ProcessStatsDetail;->updateRunningServices()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/applications/ProcessStatsDetail;

.field final synthetic val$service:Landroid/content/ComponentName;


# direct methods
.method constructor <init>(Lcom/android/exsettings/applications/ProcessStatsDetail;Landroid/content/ComponentName;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/exsettings/applications/ProcessStatsDetail;
    .param p2, "val$service"    # Landroid/content/ComponentName;

    .prologue
    .line 165
    iput-object p1, p0, Lcom/android/exsettings/applications/ProcessStatsDetail$4;->this$0:Lcom/android/exsettings/applications/ProcessStatsDetail;

    iput-object p2, p0, Lcom/android/exsettings/applications/ProcessStatsDetail$4;->val$service:Landroid/content/ComponentName;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Lcom/android/exsettings/CancellablePreference;)V
    .locals 3
    .param p1, "preference"    # Lcom/android/exsettings/CancellablePreference;

    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/exsettings/applications/ProcessStatsDetail$4;->this$0:Lcom/android/exsettings/applications/ProcessStatsDetail;

    iget-object v1, p0, Lcom/android/exsettings/applications/ProcessStatsDetail$4;->val$service:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/exsettings/applications/ProcessStatsDetail$4;->val$service:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/exsettings/applications/ProcessStatsDetail;->-wrap1(Lcom/android/exsettings/applications/ProcessStatsDetail;Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    return-void
.end method
