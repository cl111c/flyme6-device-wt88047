.class Lcom/android/exsettings/bluetooth/DockService$5;
.super Ljava/lang/Object;
.source "DockService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exsettings/bluetooth/DockService;->msgTypeDocked(Landroid/bluetooth/BluetoothDevice;II)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/bluetooth/DockService;

.field final synthetic val$d:Landroid/bluetooth/BluetoothDevice;

.field final synthetic val$startId:I

.field final synthetic val$state:I


# direct methods
.method constructor <init>(Lcom/android/exsettings/bluetooth/DockService;Landroid/bluetooth/BluetoothDevice;II)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/exsettings/bluetooth/DockService;
    .param p2, "val$d"    # Landroid/bluetooth/BluetoothDevice;
    .param p3, "val$state"    # I
    .param p4, "val$startId"    # I

    .prologue
    .line 404
    iput-object p1, p0, Lcom/android/exsettings/bluetooth/DockService$5;->this$0:Lcom/android/exsettings/bluetooth/DockService;

    iput-object p2, p0, Lcom/android/exsettings/bluetooth/DockService$5;->val$d:Landroid/bluetooth/BluetoothDevice;

    iput p3, p0, Lcom/android/exsettings/bluetooth/DockService$5;->val$state:I

    iput p4, p0, Lcom/android/exsettings/bluetooth/DockService$5;->val$startId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 406
    iget-object v0, p0, Lcom/android/exsettings/bluetooth/DockService$5;->this$0:Lcom/android/exsettings/bluetooth/DockService;

    iget-object v1, p0, Lcom/android/exsettings/bluetooth/DockService$5;->val$d:Landroid/bluetooth/BluetoothDevice;

    iget v2, p0, Lcom/android/exsettings/bluetooth/DockService$5;->val$state:I

    iget v3, p0, Lcom/android/exsettings/bluetooth/DockService$5;->val$startId:I

    invoke-static {v0, v1, v2, v3}, Lcom/android/exsettings/bluetooth/DockService;->-wrap1(Lcom/android/exsettings/bluetooth/DockService;Landroid/bluetooth/BluetoothDevice;II)V

    .line 405
    return-void
.end method
