.class final Lcom/android/exsettingslib/bluetooth/BluetoothDeviceFilter$TransferFilter;
.super Lcom/android/exsettingslib/bluetooth/BluetoothDeviceFilter$ClassUuidFilter;
.source "BluetoothDeviceFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettingslib/bluetooth/BluetoothDeviceFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TransferFilter"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 133
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/exsettingslib/bluetooth/BluetoothDeviceFilter$ClassUuidFilter;-><init>(Lcom/android/exsettingslib/bluetooth/BluetoothDeviceFilter$ClassUuidFilter;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/exsettingslib/bluetooth/BluetoothDeviceFilter$TransferFilter;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/android/exsettingslib/bluetooth/BluetoothDeviceFilter$TransferFilter;-><init>()V

    return-void
.end method


# virtual methods
.method matches([Landroid/os/ParcelUuid;Landroid/bluetooth/BluetoothClass;)Z
    .locals 1
    .param p1, "uuids"    # [Landroid/os/ParcelUuid;
    .param p2, "btClass"    # Landroid/bluetooth/BluetoothClass;

    .prologue
    .line 136
    if-eqz p1, :cond_0

    .line 137
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->ObexObjectPush:Landroid/os/ParcelUuid;

    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    const/4 v0, 0x1

    return v0

    .line 141
    :cond_0
    if-eqz p2, :cond_1

    .line 142
    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Landroid/bluetooth/BluetoothClass;->doesClassMatch(I)Z

    move-result v0

    .line 141
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
