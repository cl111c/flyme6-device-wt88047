.class public Lcom/android/exsettings/profiles/triggers/BluetoothTriggerFragment$BluetoothTrigger;
.super Lcom/android/exsettings/profiles/triggers/AbstractTriggerItem;
.source "BluetoothTriggerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/profiles/triggers/BluetoothTriggerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BluetoothTrigger"
.end annotation


# instance fields
.field private mAddress:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/bluetooth/BluetoothDevice;)V
    .locals 1
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 260
    invoke-direct {p0}, Lcom/android/exsettings/profiles/triggers/AbstractTriggerItem;-><init>()V

    .line 261
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/profiles/triggers/BluetoothTriggerFragment$BluetoothTrigger;->mAddress:Ljava/lang/String;

    .line 262
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAlias()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 263
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAlias()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/exsettings/profiles/triggers/BluetoothTriggerFragment$BluetoothTrigger;->setTitle(Ljava/lang/String;)V

    .line 260
    :goto_0
    return-void

    .line 265
    :cond_0
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/exsettings/profiles/triggers/BluetoothTriggerFragment$BluetoothTrigger;->setTitle(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "address"    # Ljava/lang/String;

    .prologue
    .line 269
    invoke-direct {p0}, Lcom/android/exsettings/profiles/triggers/AbstractTriggerItem;-><init>()V

    .line 270
    iput-object p2, p0, Lcom/android/exsettings/profiles/triggers/BluetoothTriggerFragment$BluetoothTrigger;->mAddress:Ljava/lang/String;

    .line 271
    invoke-virtual {p0, p1}, Lcom/android/exsettings/profiles/triggers/BluetoothTriggerFragment$BluetoothTrigger;->setTitle(Ljava/lang/String;)V

    .line 269
    return-void
.end method


# virtual methods
.method public getAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lcom/android/exsettings/profiles/triggers/BluetoothTriggerFragment$BluetoothTrigger;->mAddress:Ljava/lang/String;

    return-object v0
.end method
