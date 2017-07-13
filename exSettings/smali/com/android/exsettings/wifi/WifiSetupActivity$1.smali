.class Lcom/android/exsettings/wifi/WifiSetupActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiSetupActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/wifi/WifiSetupActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/wifi/WifiSetupActivity;


# direct methods
.method constructor <init>(Lcom/android/exsettings/wifi/WifiSetupActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/exsettings/wifi/WifiSetupActivity;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/android/exsettings/wifi/WifiSetupActivity$1;->this$0:Lcom/android/exsettings/wifi/WifiSetupActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiSetupActivity$1;->this$0:Lcom/android/exsettings/wifi/WifiSetupActivity;

    invoke-static {v0}, Lcom/android/exsettings/wifi/WifiSetupActivity;->-wrap0(Lcom/android/exsettings/wifi/WifiSetupActivity;)V

    .line 79
    return-void
.end method
