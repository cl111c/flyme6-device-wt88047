.class final Lcom/android/exsettings/bluetooth/DockService$ServiceHandler;
.super Landroid/os/Handler;
.source "DockService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/bluetooth/DockService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/bluetooth/DockService;


# direct methods
.method private constructor <init>(Lcom/android/exsettings/bluetooth/DockService;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/exsettings/bluetooth/DockService;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 254
    iput-object p1, p0, Lcom/android/exsettings/bluetooth/DockService$ServiceHandler;->this$0:Lcom/android/exsettings/bluetooth/DockService;

    .line 255
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 254
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/exsettings/bluetooth/DockService;Landroid/os/Looper;Lcom/android/exsettings/bluetooth/DockService$ServiceHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/exsettings/bluetooth/DockService;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/exsettings/bluetooth/DockService$ServiceHandler;-><init>(Lcom/android/exsettings/bluetooth/DockService;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 260
    iget-object v0, p0, Lcom/android/exsettings/bluetooth/DockService$ServiceHandler;->this$0:Lcom/android/exsettings/bluetooth/DockService;

    invoke-static {v0, p1}, Lcom/android/exsettings/bluetooth/DockService;->-wrap2(Lcom/android/exsettings/bluetooth/DockService;Landroid/os/Message;)V

    .line 259
    return-void
.end method
