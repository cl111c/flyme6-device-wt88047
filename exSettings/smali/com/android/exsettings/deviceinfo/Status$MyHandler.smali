.class Lcom/android/exsettings/deviceinfo/Status$MyHandler;
.super Landroid/os/Handler;
.source "Status.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/deviceinfo/Status;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyHandler"
.end annotation


# instance fields
.field private mStatus:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/exsettings/deviceinfo/Status;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/exsettings/deviceinfo/Status;)V
    .locals 1
    .param p1, "activity"    # Lcom/android/exsettings/deviceinfo/Status;

    .prologue
    .line 113
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 114
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/exsettings/deviceinfo/Status$MyHandler;->mStatus:Ljava/lang/ref/WeakReference;

    .line 113
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 119
    iget-object v1, p0, Lcom/android/exsettings/deviceinfo/Status$MyHandler;->mStatus:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/exsettings/deviceinfo/Status;

    .line 120
    .local v0, "status":Lcom/android/exsettings/deviceinfo/Status;
    if-nez v0, :cond_0

    .line 121
    return-void

    .line 124
    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 118
    :goto_0
    return-void

    .line 126
    :sswitch_0
    invoke-virtual {v0}, Lcom/android/exsettings/deviceinfo/Status;->updateTimes()V

    .line 127
    const-wide/16 v2, 0x3e8

    const/16 v1, 0x1f4

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/exsettings/deviceinfo/Status$MyHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 131
    :sswitch_1
    invoke-virtual {v0}, Lcom/android/exsettings/deviceinfo/Status;->updateConnectivity()V

    goto :goto_0

    .line 124
    :sswitch_data_0
    .sparse-switch
        0x1f4 -> :sswitch_0
        0x258 -> :sswitch_1
    .end sparse-switch
.end method
