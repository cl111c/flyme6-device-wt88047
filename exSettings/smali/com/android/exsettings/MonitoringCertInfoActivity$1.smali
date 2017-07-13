.class Lcom/android/exsettings/MonitoringCertInfoActivity$1;
.super Ljava/lang/Object;
.source "MonitoringCertInfoActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exsettings/MonitoringCertInfoActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/MonitoringCertInfoActivity;


# direct methods
.method constructor <init>(Lcom/android/exsettings/MonitoringCertInfoActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/exsettings/MonitoringCertInfoActivity;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/android/exsettings/MonitoringCertInfoActivity$1;->this$0:Lcom/android/exsettings/MonitoringCertInfoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/exsettings/MonitoringCertInfoActivity$1;->this$0:Lcom/android/exsettings/MonitoringCertInfoActivity;

    invoke-virtual {v0}, Lcom/android/exsettings/MonitoringCertInfoActivity;->finish()V

    .line 74
    return-void
.end method
