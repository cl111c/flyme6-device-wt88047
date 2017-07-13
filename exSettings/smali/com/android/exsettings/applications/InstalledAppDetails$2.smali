.class Lcom/android/exsettings/applications/InstalledAppDetails$2;
.super Landroid/content/BroadcastReceiver;
.source "InstalledAppDetails.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/applications/InstalledAppDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/applications/InstalledAppDetails;


# direct methods
.method constructor <init>(Lcom/android/exsettings/applications/InstalledAppDetails;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/exsettings/applications/InstalledAppDetails;

    .prologue
    .line 1020
    iput-object p1, p0, Lcom/android/exsettings/applications/InstalledAppDetails$2;->this$0:Lcom/android/exsettings/applications/InstalledAppDetails;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v0, 0x0

    .line 1023
    iget-object v1, p0, Lcom/android/exsettings/applications/InstalledAppDetails$2;->this$0:Lcom/android/exsettings/applications/InstalledAppDetails;

    invoke-virtual {v1}, Lcom/android/exsettings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/exsettings/applications/InstalledAppDetails$2;->this$0:Lcom/android/exsettings/applications/InstalledAppDetails;

    invoke-virtual {v1}, Lcom/android/exsettings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1022
    :cond_0
    :goto_0
    return-void

    .line 1024
    :cond_1
    iget-object v1, p0, Lcom/android/exsettings/applications/InstalledAppDetails$2;->this$0:Lcom/android/exsettings/applications/InstalledAppDetails;

    invoke-virtual {p0}, Lcom/android/exsettings/applications/InstalledAppDetails$2;->getResultCode()I

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x1

    :cond_2
    invoke-static {v1, v0}, Lcom/android/exsettings/applications/InstalledAppDetails;->-wrap3(Lcom/android/exsettings/applications/InstalledAppDetails;Z)V

    goto :goto_0
.end method
