.class Lcom/android/exsettings/TetherService$2;
.super Ljava/lang/Object;
.source "TetherService.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exsettings/TetherService;->disableBtTethering()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/TetherService;

.field final synthetic val$adapter:Landroid/bluetooth/BluetoothAdapter;


# direct methods
.method constructor <init>(Lcom/android/exsettings/TetherService;Landroid/bluetooth/BluetoothAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/exsettings/TetherService;
    .param p2, "val$adapter"    # Landroid/bluetooth/BluetoothAdapter;

    .prologue
    .line 195
    iput-object p1, p0, Lcom/android/exsettings/TetherService$2;->this$0:Lcom/android/exsettings/TetherService;

    iput-object p2, p0, Lcom/android/exsettings/TetherService$2;->val$adapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 2
    .param p1, "profile"    # I
    .param p2, "proxy"    # Landroid/bluetooth/BluetoothProfile;

    .prologue
    move-object v0, p2

    .line 201
    check-cast v0, Landroid/bluetooth/BluetoothPan;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothPan;->setBluetoothTethering(Z)V

    .line 202
    iget-object v0, p0, Lcom/android/exsettings/TetherService$2;->val$adapter:Landroid/bluetooth/BluetoothAdapter;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p2}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    .line 200
    return-void
.end method

.method public onServiceDisconnected(I)V
    .locals 0
    .param p1, "profile"    # I

    .prologue
    .line 197
    return-void
.end method
