.class final Lcom/android/exsettingslib/wifi/WifiTracker$MainHandler;
.super Landroid/os/Handler;
.source "WifiTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettingslib/wifi/WifiTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MainHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettingslib/wifi/WifiTracker;


# direct methods
.method public constructor <init>(Lcom/android/exsettingslib/wifi/WifiTracker;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/exsettingslib/wifi/WifiTracker;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 540
    iput-object p1, p0, Lcom/android/exsettingslib/wifi/WifiTracker$MainHandler;->this$0:Lcom/android/exsettingslib/wifi/WifiTracker;

    .line 541
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 540
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 546
    iget-object v0, p0, Lcom/android/exsettingslib/wifi/WifiTracker$MainHandler;->this$0:Lcom/android/exsettingslib/wifi/WifiTracker;

    invoke-static {v0}, Lcom/android/exsettingslib/wifi/WifiTracker;->-get2(Lcom/android/exsettingslib/wifi/WifiTracker;)Lcom/android/exsettingslib/wifi/WifiTracker$WifiListener;

    move-result-object v0

    if-nez v0, :cond_0

    .line 547
    return-void

    .line 549
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 545
    :cond_1
    :goto_0
    return-void

    .line 551
    :pswitch_0
    iget-object v0, p0, Lcom/android/exsettingslib/wifi/WifiTracker$MainHandler;->this$0:Lcom/android/exsettingslib/wifi/WifiTracker;

    invoke-static {v0}, Lcom/android/exsettingslib/wifi/WifiTracker;->-get2(Lcom/android/exsettingslib/wifi/WifiTracker;)Lcom/android/exsettingslib/wifi/WifiTracker$WifiListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/exsettingslib/wifi/WifiTracker$WifiListener;->onConnectedChanged()V

    goto :goto_0

    .line 554
    :pswitch_1
    iget-object v0, p0, Lcom/android/exsettingslib/wifi/WifiTracker$MainHandler;->this$0:Lcom/android/exsettingslib/wifi/WifiTracker;

    invoke-static {v0}, Lcom/android/exsettingslib/wifi/WifiTracker;->-get2(Lcom/android/exsettingslib/wifi/WifiTracker;)Lcom/android/exsettingslib/wifi/WifiTracker$WifiListener;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v1}, Lcom/android/exsettingslib/wifi/WifiTracker$WifiListener;->onWifiStateChanged(I)V

    goto :goto_0

    .line 557
    :pswitch_2
    iget-object v0, p0, Lcom/android/exsettingslib/wifi/WifiTracker$MainHandler;->this$0:Lcom/android/exsettingslib/wifi/WifiTracker;

    invoke-static {v0}, Lcom/android/exsettingslib/wifi/WifiTracker;->-get2(Lcom/android/exsettingslib/wifi/WifiTracker;)Lcom/android/exsettingslib/wifi/WifiTracker$WifiListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/exsettingslib/wifi/WifiTracker$WifiListener;->onAccessPointsChanged()V

    goto :goto_0

    .line 560
    :pswitch_3
    iget-object v0, p0, Lcom/android/exsettingslib/wifi/WifiTracker$MainHandler;->this$0:Lcom/android/exsettingslib/wifi/WifiTracker;

    iget-object v0, v0, Lcom/android/exsettingslib/wifi/WifiTracker;->mScanner:Lcom/android/exsettingslib/wifi/WifiTracker$Scanner;

    if-eqz v0, :cond_1

    .line 561
    iget-object v0, p0, Lcom/android/exsettingslib/wifi/WifiTracker$MainHandler;->this$0:Lcom/android/exsettingslib/wifi/WifiTracker;

    iget-object v0, v0, Lcom/android/exsettingslib/wifi/WifiTracker;->mScanner:Lcom/android/exsettingslib/wifi/WifiTracker$Scanner;

    invoke-virtual {v0}, Lcom/android/exsettingslib/wifi/WifiTracker$Scanner;->resume()V

    goto :goto_0

    .line 565
    :pswitch_4
    iget-object v0, p0, Lcom/android/exsettingslib/wifi/WifiTracker$MainHandler;->this$0:Lcom/android/exsettingslib/wifi/WifiTracker;

    iget-object v0, v0, Lcom/android/exsettingslib/wifi/WifiTracker;->mScanner:Lcom/android/exsettingslib/wifi/WifiTracker$Scanner;

    if-eqz v0, :cond_1

    .line 566
    iget-object v0, p0, Lcom/android/exsettingslib/wifi/WifiTracker$MainHandler;->this$0:Lcom/android/exsettingslib/wifi/WifiTracker;

    iget-object v0, v0, Lcom/android/exsettingslib/wifi/WifiTracker;->mScanner:Lcom/android/exsettingslib/wifi/WifiTracker$Scanner;

    invoke-virtual {v0}, Lcom/android/exsettingslib/wifi/WifiTracker$Scanner;->pause()V

    goto :goto_0

    .line 549
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
