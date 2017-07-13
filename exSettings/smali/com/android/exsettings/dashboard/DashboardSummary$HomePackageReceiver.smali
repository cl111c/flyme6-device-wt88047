.class Lcom/android/exsettings/dashboard/DashboardSummary$HomePackageReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DashboardSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/dashboard/DashboardSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HomePackageReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/dashboard/DashboardSummary;


# direct methods
.method private constructor <init>(Lcom/android/exsettings/dashboard/DashboardSummary;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/exsettings/dashboard/DashboardSummary;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/android/exsettings/dashboard/DashboardSummary$HomePackageReceiver;->this$0:Lcom/android/exsettings/dashboard/DashboardSummary;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/exsettings/dashboard/DashboardSummary;Lcom/android/exsettings/dashboard/DashboardSummary$HomePackageReceiver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/exsettings/dashboard/DashboardSummary;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/exsettings/dashboard/DashboardSummary$HomePackageReceiver;-><init>(Lcom/android/exsettings/dashboard/DashboardSummary;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/exsettings/dashboard/DashboardSummary$HomePackageReceiver;->this$0:Lcom/android/exsettings/dashboard/DashboardSummary;

    invoke-static {v0, p1}, Lcom/android/exsettings/dashboard/DashboardSummary;->-wrap0(Lcom/android/exsettings/dashboard/DashboardSummary;Landroid/content/Context;)V

    .line 72
    return-void
.end method
