.class Lcom/android/exsettings/applications/ProcessStatsDetail$5;
.super Ljava/lang/Object;
.source "ProcessStatsDetail.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exsettings/applications/ProcessStatsDetail;->showStopServiceDialog(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/applications/ProcessStatsDetail;

.field final synthetic val$name:Ljava/lang/String;

.field final synthetic val$pkg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/exsettings/applications/ProcessStatsDetail;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/exsettings/applications/ProcessStatsDetail;
    .param p2, "val$pkg"    # Ljava/lang/String;
    .param p3, "val$name"    # Ljava/lang/String;

    .prologue
    .line 401
    iput-object p1, p0, Lcom/android/exsettings/applications/ProcessStatsDetail$5;->this$0:Lcom/android/exsettings/applications/ProcessStatsDetail;

    iput-object p2, p0, Lcom/android/exsettings/applications/ProcessStatsDetail$5;->val$pkg:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/exsettings/applications/ProcessStatsDetail$5;->val$name:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 403
    iget-object v0, p0, Lcom/android/exsettings/applications/ProcessStatsDetail$5;->this$0:Lcom/android/exsettings/applications/ProcessStatsDetail;

    iget-object v1, p0, Lcom/android/exsettings/applications/ProcessStatsDetail$5;->val$pkg:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/exsettings/applications/ProcessStatsDetail$5;->val$name:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/android/exsettings/applications/ProcessStatsDetail;->-wrap0(Lcom/android/exsettings/applications/ProcessStatsDetail;Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    return-void
.end method
