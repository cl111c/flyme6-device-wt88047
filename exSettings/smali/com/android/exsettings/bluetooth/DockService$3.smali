.class Lcom/android/exsettings/bluetooth/DockService$3;
.super Ljava/lang/Object;
.source "DockService.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/bluetooth/DockService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/bluetooth/DockService;


# direct methods
.method constructor <init>(Lcom/android/exsettings/bluetooth/DockService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/exsettings/bluetooth/DockService;

    .prologue
    .line 600
    iput-object p1, p0, Lcom/android/exsettings/bluetooth/DockService$3;->this$0:Lcom/android/exsettings/bluetooth/DockService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 604
    iget-object v0, p0, Lcom/android/exsettings/bluetooth/DockService$3;->this$0:Lcom/android/exsettings/bluetooth/DockService;

    invoke-static {v0}, Lcom/android/exsettings/bluetooth/DockService;->-get3(Lcom/android/exsettings/bluetooth/DockService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    if-nez v0, :cond_0

    .line 606
    iget-object v0, p0, Lcom/android/exsettings/bluetooth/DockService$3;->this$0:Lcom/android/exsettings/bluetooth/DockService;

    iget-object v1, p0, Lcom/android/exsettings/bluetooth/DockService$3;->this$0:Lcom/android/exsettings/bluetooth/DockService;

    invoke-static {v1}, Lcom/android/exsettings/bluetooth/DockService;->-get4(Lcom/android/exsettings/bluetooth/DockService;)I

    move-result v1

    .line 605
    invoke-static {v0, v1}, Lcom/android/exsettings/bluetooth/DockEventReceiver;->finishStartingService(Landroid/app/Service;I)V

    .line 608
    :cond_0
    iget-object v0, p0, Lcom/android/exsettings/bluetooth/DockService$3;->this$0:Lcom/android/exsettings/bluetooth/DockService;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/exsettings/bluetooth/DockService;->stopForeground(Z)V

    .line 601
    return-void
.end method
