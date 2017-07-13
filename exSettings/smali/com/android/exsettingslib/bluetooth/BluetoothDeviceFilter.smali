.class public final Lcom/android/exsettingslib/bluetooth/BluetoothDeviceFilter;
.super Ljava/lang/Object;
.source "BluetoothDeviceFilter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exsettingslib/bluetooth/BluetoothDeviceFilter$Filter;,
        Lcom/android/exsettingslib/bluetooth/BluetoothDeviceFilter$AllFilter;,
        Lcom/android/exsettingslib/bluetooth/BluetoothDeviceFilter$BondedDeviceFilter;,
        Lcom/android/exsettingslib/bluetooth/BluetoothDeviceFilter$UnbondedDeviceFilter;,
        Lcom/android/exsettingslib/bluetooth/BluetoothDeviceFilter$ClassUuidFilter;,
        Lcom/android/exsettingslib/bluetooth/BluetoothDeviceFilter$AudioFilter;,
        Lcom/android/exsettingslib/bluetooth/BluetoothDeviceFilter$TransferFilter;,
        Lcom/android/exsettingslib/bluetooth/BluetoothDeviceFilter$PanuFilter;,
        Lcom/android/exsettingslib/bluetooth/BluetoothDeviceFilter$NapFilter;
    }
.end annotation


# static fields
.field public static final ALL_FILTER:Lcom/android/exsettingslib/bluetooth/BluetoothDeviceFilter$Filter;

.field public static final BONDED_DEVICE_FILTER:Lcom/android/exsettingslib/bluetooth/BluetoothDeviceFilter$Filter;

.field private static final FILTERS:[Lcom/android/exsettingslib/bluetooth/BluetoothDeviceFilter$Filter;

.field public static final UNBONDED_DEVICE_FILTER:Lcom/android/exsettingslib/bluetooth/BluetoothDeviceFilter$Filter;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 40
    new-instance v0, Lcom/android/exsettingslib/bluetooth/BluetoothDeviceFilter$AllFilter;

    invoke-direct {v0, v3}, Lcom/android/exsettingslib/bluetooth/BluetoothDeviceFilter$AllFilter;-><init>(Lcom/android/exsettingslib/bluetooth/BluetoothDeviceFilter$AllFilter;)V

    sput-object v0, Lcom/android/exsettingslib/bluetooth/BluetoothDeviceFilter;->ALL_FILTER:Lcom/android/exsettingslib/bluetooth/BluetoothDeviceFilter$Filter;

    .line 43
    new-instance v0, Lcom/android/exsettingslib/bluetooth/BluetoothDeviceFilter$BondedDeviceFilter;

    invoke-direct {v0, v3}, Lcom/android/exsettingslib/bluetooth/BluetoothDeviceFilter$BondedDeviceFilter;-><init>(Lcom/android/exsettingslib/bluetooth/BluetoothDeviceFilter$BondedDeviceFilter;)V

    sput-object v0, Lcom/android/exsettingslib/bluetooth/BluetoothDeviceFilter;->BONDED_DEVICE_FILTER:Lcom/android/exsettingslib/bluetooth/BluetoothDeviceFilter$Filter;

    .line 46
    new-instance v0, Lcom/android/exsettingslib/bluetooth/BluetoothDeviceFilter$UnbondedDeviceFilter;

    invoke-direct {v0, v3}, Lcom/android/exsettingslib/bluetooth/BluetoothDeviceFilter$UnbondedDeviceFilter;-><init>(Lcom/android/exsettingslib/bluetooth/BluetoothDeviceFilter$UnbondedDeviceFilter;)V

    sput-object v0, Lcom/android/exsettingslib/bluetooth/BluetoothDeviceFilter;->UNBONDED_DEVICE_FILTER:Lcom/android/exsettingslib/bluetooth/BluetoothDeviceFilter$Filter;

    .line 49
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/exsettingslib/bluetooth/BluetoothDeviceFilter$Filter;

    .line 50
    sget-object v1, Lcom/android/exsettingslib/bluetooth/BluetoothDeviceFilter;->ALL_FILTER:Lcom/android/exsettingslib/bluetooth/BluetoothDeviceFilter$Filter;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 51
    new-instance v1, Lcom/android/exsettingslib/bluetooth/BluetoothDeviceFilter$AudioFilter;

    invoke-direct {v1, v3}, Lcom/android/exsettingslib/bluetooth/BluetoothDeviceFilter$AudioFilter;-><init>(Lcom/android/exsettingslib/bluetooth/BluetoothDeviceFilter$AudioFilter;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 52
    new-instance v1, Lcom/android/exsettingslib/bluetooth/BluetoothDeviceFilter$TransferFilter;

    invoke-direct {v1, v3}, Lcom/android/exsettingslib/bluetooth/BluetoothDeviceFilter$TransferFilter;-><init>(Lcom/android/exsettingslib/bluetooth/BluetoothDeviceFilter$TransferFilter;)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 53
    new-instance v1, Lcom/android/exsettingslib/bluetooth/BluetoothDeviceFilter$PanuFilter;

    invoke-direct {v1, v3}, Lcom/android/exsettingslib/bluetooth/BluetoothDeviceFilter$PanuFilter;-><init>(Lcom/android/exsettingslib/bluetooth/BluetoothDeviceFilter$PanuFilter;)V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 54
    new-instance v1, Lcom/android/exsettingslib/bluetooth/BluetoothDeviceFilter$NapFilter;

    invoke-direct {v1, v3}, Lcom/android/exsettingslib/bluetooth/BluetoothDeviceFilter$NapFilter;-><init>(Lcom/android/exsettingslib/bluetooth/BluetoothDeviceFilter$NapFilter;)V

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 49
    sput-object v0, Lcom/android/exsettingslib/bluetooth/BluetoothDeviceFilter;->FILTERS:[Lcom/android/exsettingslib/bluetooth/BluetoothDeviceFilter$Filter;

    .line 31
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFilter(I)Lcom/android/exsettingslib/bluetooth/BluetoothDeviceFilter$Filter;
    .locals 3
    .param p0, "filterType"    # I

    .prologue
    .line 69
    if-ltz p0, :cond_0

    sget-object v0, Lcom/android/exsettingslib/bluetooth/BluetoothDeviceFilter;->FILTERS:[Lcom/android/exsettingslib/bluetooth/BluetoothDeviceFilter$Filter;

    array-length v0, v0

    if-ge p0, v0, :cond_0

    .line 70
    sget-object v0, Lcom/android/exsettingslib/bluetooth/BluetoothDeviceFilter;->FILTERS:[Lcom/android/exsettingslib/bluetooth/BluetoothDeviceFilter$Filter;

    aget-object v0, v0, p0

    return-object v0

    .line 72
    :cond_0
    const-string/jumbo v0, "BluetoothDeviceFilter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid filter type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " for device picker"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    sget-object v0, Lcom/android/exsettingslib/bluetooth/BluetoothDeviceFilter;->ALL_FILTER:Lcom/android/exsettingslib/bluetooth/BluetoothDeviceFilter$Filter;

    return-object v0
.end method
