.class final Lcom/android/exsettingslib/bluetooth/PanProfile$PanServiceListener;
.super Ljava/lang/Object;
.source "PanProfile.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettingslib/bluetooth/PanProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PanServiceListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettingslib/bluetooth/PanProfile;


# direct methods
.method private constructor <init>(Lcom/android/exsettingslib/bluetooth/PanProfile;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/exsettingslib/bluetooth/PanProfile;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/android/exsettingslib/bluetooth/PanProfile$PanServiceListener;->this$0:Lcom/android/exsettingslib/bluetooth/PanProfile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/exsettingslib/bluetooth/PanProfile;Lcom/android/exsettingslib/bluetooth/PanProfile$PanServiceListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/exsettingslib/bluetooth/PanProfile;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/exsettingslib/bluetooth/PanProfile$PanServiceListener;-><init>(Lcom/android/exsettingslib/bluetooth/PanProfile;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 2
    .param p1, "profile"    # I
    .param p2, "proxy"    # Landroid/bluetooth/BluetoothProfile;

    .prologue
    .line 56
    invoke-static {}, Lcom/android/exsettingslib/bluetooth/PanProfile;->-get0()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "PanProfile"

    const-string/jumbo v1, "Bluetooth service connected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/android/exsettingslib/bluetooth/PanProfile$PanServiceListener;->this$0:Lcom/android/exsettingslib/bluetooth/PanProfile;

    check-cast p2, Landroid/bluetooth/BluetoothPan;

    .end local p2    # "proxy":Landroid/bluetooth/BluetoothProfile;
    invoke-static {v0, p2}, Lcom/android/exsettingslib/bluetooth/PanProfile;->-set1(Lcom/android/exsettingslib/bluetooth/PanProfile;Landroid/bluetooth/BluetoothPan;)Landroid/bluetooth/BluetoothPan;

    .line 58
    iget-object v0, p0, Lcom/android/exsettingslib/bluetooth/PanProfile$PanServiceListener;->this$0:Lcom/android/exsettingslib/bluetooth/PanProfile;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/exsettingslib/bluetooth/PanProfile;->-set0(Lcom/android/exsettingslib/bluetooth/PanProfile;Z)Z

    .line 55
    return-void
.end method

.method public onServiceDisconnected(I)V
    .locals 2
    .param p1, "profile"    # I

    .prologue
    .line 62
    invoke-static {}, Lcom/android/exsettingslib/bluetooth/PanProfile;->-get0()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "PanProfile"

    const-string/jumbo v1, "Bluetooth service disconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/android/exsettingslib/bluetooth/PanProfile$PanServiceListener;->this$0:Lcom/android/exsettingslib/bluetooth/PanProfile;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/exsettingslib/bluetooth/PanProfile;->-set0(Lcom/android/exsettingslib/bluetooth/PanProfile;Z)Z

    .line 61
    return-void
.end method
