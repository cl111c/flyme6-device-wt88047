.class public Lcom/android/exsettings/deviceinfo/UsbBackend;
.super Ljava/lang/Object;
.source "UsbBackend.java"


# instance fields
.field private mIsUnlocked:Z

.field private final mMidi:Z

.field private mPort:Landroid/hardware/usb/UsbPort;

.field private mPortStatus:Landroid/hardware/usb/UsbPortStatus;

.field private final mRestricted:Z

.field private mUsbManager:Landroid/hardware/usb/UsbManager;

.field private mUserManager:Landroid/os/UserManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v5, Landroid/content/IntentFilter;

    const-string/jumbo v6, "android.hardware.usb.action.USB_STATE"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 50
    const/4 v6, 0x0

    invoke-virtual {p1, v6, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v2

    .line 52
    .local v2, "intent":Landroid/content/Intent;
    const-string/jumbo v5, "unlocked"

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/exsettings/deviceinfo/UsbBackend;->mIsUnlocked:Z

    .line 54
    invoke-static {p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v5

    iput-object v5, p0, Lcom/android/exsettings/deviceinfo/UsbBackend;->mUserManager:Landroid/os/UserManager;

    .line 55
    const-class v5, Landroid/hardware/usb/UsbManager;

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/usb/UsbManager;

    iput-object v5, p0, Lcom/android/exsettings/deviceinfo/UsbBackend;->mUsbManager:Landroid/hardware/usb/UsbManager;

    .line 57
    iget-object v5, p0, Lcom/android/exsettings/deviceinfo/UsbBackend;->mUserManager:Landroid/os/UserManager;

    const-string/jumbo v6, "no_usb_file_transfer"

    invoke-virtual {v5, v6}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/exsettings/deviceinfo/UsbBackend;->mRestricted:Z

    .line 58
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const-string/jumbo v6, "android.software.midi"

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/exsettings/deviceinfo/UsbBackend;->mMidi:Z

    .line 60
    iget-object v5, p0, Lcom/android/exsettings/deviceinfo/UsbBackend;->mUsbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v5}, Landroid/hardware/usb/UsbManager;->getPorts()[Landroid/hardware/usb/UsbPort;

    move-result-object v3

    .line 63
    .local v3, "ports":[Landroid/hardware/usb/UsbPort;
    array-length v0, v3

    .line 64
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 65
    iget-object v5, p0, Lcom/android/exsettings/deviceinfo/UsbBackend;->mUsbManager:Landroid/hardware/usb/UsbManager;

    aget-object v6, v3, v1

    invoke-virtual {v5, v6}, Landroid/hardware/usb/UsbManager;->getPortStatus(Landroid/hardware/usb/UsbPort;)Landroid/hardware/usb/UsbPortStatus;

    move-result-object v4

    .line 66
    .local v4, "status":Landroid/hardware/usb/UsbPortStatus;
    invoke-virtual {v4}, Landroid/hardware/usb/UsbPortStatus;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 67
    aget-object v5, v3, v1

    iput-object v5, p0, Lcom/android/exsettings/deviceinfo/UsbBackend;->mPort:Landroid/hardware/usb/UsbPort;

    .line 68
    iput-object v4, p0, Lcom/android/exsettings/deviceinfo/UsbBackend;->mPortStatus:Landroid/hardware/usb/UsbPortStatus;

    .line 49
    .end local v4    # "status":Landroid/hardware/usb/UsbPortStatus;
    :cond_0
    return-void

    .line 64
    .restart local v4    # "status":Landroid/hardware/usb/UsbPortStatus;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private modeToPower(I)I
    .locals 2
    .param p1, "mode"    # I

    .prologue
    const/4 v0, 0x1

    .line 132
    and-int/lit8 v1, p1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    .line 133
    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method private setUsbFunction(I)V
    .locals 3
    .param p1, "mode"    # I

    .prologue
    const/4 v2, 0x1

    .line 97
    packed-switch p1, :pswitch_data_0

    .line 111
    :pswitch_0
    iget-object v0, p0, Lcom/android/exsettings/deviceinfo/UsbBackend;->mUsbManager:Landroid/hardware/usb/UsbManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;)V

    .line 112
    iget-object v0, p0, Lcom/android/exsettings/deviceinfo/UsbBackend;->mUsbManager:Landroid/hardware/usb/UsbManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/usb/UsbManager;->setUsbDataUnlocked(Z)V

    .line 96
    :goto_0
    return-void

    .line 99
    :pswitch_1
    iget-object v0, p0, Lcom/android/exsettings/deviceinfo/UsbBackend;->mUsbManager:Landroid/hardware/usb/UsbManager;

    const-string/jumbo v1, "mtp"

    invoke-virtual {v0, v1}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, Lcom/android/exsettings/deviceinfo/UsbBackend;->mUsbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v0, v2}, Landroid/hardware/usb/UsbManager;->setUsbDataUnlocked(Z)V

    goto :goto_0

    .line 103
    :pswitch_2
    iget-object v0, p0, Lcom/android/exsettings/deviceinfo/UsbBackend;->mUsbManager:Landroid/hardware/usb/UsbManager;

    const-string/jumbo v1, "ptp"

    invoke-virtual {v0, v1}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Lcom/android/exsettings/deviceinfo/UsbBackend;->mUsbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v0, v2}, Landroid/hardware/usb/UsbManager;->setUsbDataUnlocked(Z)V

    goto :goto_0

    .line 107
    :pswitch_3
    iget-object v0, p0, Lcom/android/exsettings/deviceinfo/UsbBackend;->mUsbManager:Landroid/hardware/usb/UsbManager;

    const-string/jumbo v1, "midi"

    invoke-virtual {v0, v1}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;)V

    .line 108
    iget-object v0, p0, Lcom/android/exsettings/deviceinfo/UsbBackend;->mUsbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v0, v2}, Landroid/hardware/usb/UsbManager;->setUsbDataUnlocked(Z)V

    goto :goto_0

    .line 97
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public getCurrentMode()I
    .locals 3

    .prologue
    .line 75
    iget-object v1, p0, Lcom/android/exsettings/deviceinfo/UsbBackend;->mPort:Landroid/hardware/usb/UsbPort;

    if-eqz v1, :cond_1

    .line 76
    iget-object v1, p0, Lcom/android/exsettings/deviceinfo/UsbBackend;->mPortStatus:Landroid/hardware/usb/UsbPortStatus;

    invoke-virtual {v1}, Landroid/hardware/usb/UsbPortStatus;->getCurrentPowerRole()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 77
    const/4 v0, 0x1

    .line 78
    .local v0, "power":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/exsettings/deviceinfo/UsbBackend;->getUsbDataMode()I

    move-result v1

    or-int/2addr v1, v0

    return v1

    .line 77
    .end local v0    # "power":I
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "power":I
    goto :goto_0

    .line 80
    .end local v0    # "power":I
    :cond_1
    invoke-virtual {p0}, Lcom/android/exsettings/deviceinfo/UsbBackend;->getUsbDataMode()I

    move-result v1

    or-int/lit8 v1, v1, 0x0

    return v1
.end method

.method public getUsbDataMode()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 84
    iget-boolean v0, p0, Lcom/android/exsettings/deviceinfo/UsbBackend;->mIsUnlocked:Z

    if-nez v0, :cond_0

    .line 85
    return v2

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/android/exsettings/deviceinfo/UsbBackend;->mUsbManager:Landroid/hardware/usb/UsbManager;

    const-string/jumbo v1, "mtp"

    invoke-virtual {v0, v1}, Landroid/hardware/usb/UsbManager;->isFunctionEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 87
    const/4 v0, 0x2

    return v0

    .line 88
    :cond_1
    iget-object v0, p0, Lcom/android/exsettings/deviceinfo/UsbBackend;->mUsbManager:Landroid/hardware/usb/UsbManager;

    const-string/jumbo v1, "ptp"

    invoke-virtual {v0, v1}, Landroid/hardware/usb/UsbManager;->isFunctionEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 89
    const/4 v0, 0x4

    return v0

    .line 90
    :cond_2
    iget-object v0, p0, Lcom/android/exsettings/deviceinfo/UsbBackend;->mUsbManager:Landroid/hardware/usb/UsbManager;

    const-string/jumbo v1, "midi"

    invoke-virtual {v0, v1}, Landroid/hardware/usb/UsbManager;->isFunctionEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 91
    const/4 v0, 0x6

    return v0

    .line 93
    :cond_3
    return v2
.end method

.method public isModeSupported(I)Z
    .locals 6
    .param p1, "mode"    # I

    .prologue
    const/4 v5, 0x6

    const/4 v4, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 137
    iget-boolean v3, p0, Lcom/android/exsettings/deviceinfo/UsbBackend;->mRestricted:Z

    if-eqz v3, :cond_0

    and-int/lit8 v3, p1, 0x6

    if-eqz v3, :cond_0

    .line 138
    and-int/lit8 v3, p1, 0x6

    if-eq v3, v5, :cond_0

    .line 140
    return v2

    .line 143
    :cond_0
    iget-boolean v3, p0, Lcom/android/exsettings/deviceinfo/UsbBackend;->mMidi:Z

    if-nez v3, :cond_1

    and-int/lit8 v3, p1, 0x6

    if-ne v3, v5, :cond_1

    .line 144
    return v2

    .line 147
    :cond_1
    iget-object v3, p0, Lcom/android/exsettings/deviceinfo/UsbBackend;->mPort:Landroid/hardware/usb/UsbPort;

    if-eqz v3, :cond_4

    .line 148
    invoke-direct {p0, p1}, Lcom/android/exsettings/deviceinfo/UsbBackend;->modeToPower(I)I

    move-result v0

    .line 149
    .local v0, "power":I
    and-int/lit8 v2, p1, 0x6

    if-eqz v2, :cond_2

    .line 151
    iget-object v1, p0, Lcom/android/exsettings/deviceinfo/UsbBackend;->mPortStatus:Landroid/hardware/usb/UsbPortStatus;

    invoke-virtual {v1, v0, v4}, Landroid/hardware/usb/UsbPortStatus;->isRoleCombinationSupported(II)Z

    move-result v1

    return v1

    .line 155
    :cond_2
    iget-object v2, p0, Lcom/android/exsettings/deviceinfo/UsbBackend;->mPortStatus:Landroid/hardware/usb/UsbPortStatus;

    invoke-virtual {v2, v0, v4}, Landroid/hardware/usb/UsbPortStatus;->isRoleCombinationSupported(II)Z

    move-result v2

    if-nez v2, :cond_3

    .line 156
    iget-object v2, p0, Lcom/android/exsettings/deviceinfo/UsbBackend;->mPortStatus:Landroid/hardware/usb/UsbPortStatus;

    invoke-virtual {v2, v0, v1}, Landroid/hardware/usb/UsbPortStatus;->isRoleCombinationSupported(II)Z

    move-result v1

    .line 155
    :cond_3
    return v1

    .line 160
    .end local v0    # "power":I
    :cond_4
    and-int/lit8 v3, p1, 0x1

    if-eq v3, v1, :cond_5

    :goto_0
    return v1

    :cond_5
    move v1, v2

    goto :goto_0
.end method

.method public setMode(I)V
    .locals 4
    .param p1, "mode"    # I

    .prologue
    .line 118
    iget-object v2, p0, Lcom/android/exsettings/deviceinfo/UsbBackend;->mPort:Landroid/hardware/usb/UsbPort;

    if-eqz v2, :cond_0

    .line 119
    invoke-direct {p0, p1}, Lcom/android/exsettings/deviceinfo/UsbBackend;->modeToPower(I)I

    move-result v1

    .line 123
    .local v1, "powerRole":I
    and-int/lit8 v2, p1, 0x6

    if-nez v2, :cond_1

    .line 124
    iget-object v2, p0, Lcom/android/exsettings/deviceinfo/UsbBackend;->mPortStatus:Landroid/hardware/usb/UsbPortStatus;

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Landroid/hardware/usb/UsbPortStatus;->isRoleCombinationSupported(II)Z

    move-result v2

    .line 123
    if-eqz v2, :cond_1

    .line 125
    const/4 v0, 0x1

    .line 126
    .local v0, "dataRole":I
    :goto_0
    iget-object v2, p0, Lcom/android/exsettings/deviceinfo/UsbBackend;->mUsbManager:Landroid/hardware/usb/UsbManager;

    iget-object v3, p0, Lcom/android/exsettings/deviceinfo/UsbBackend;->mPort:Landroid/hardware/usb/UsbPort;

    invoke-virtual {v2, v3, v1, v0}, Landroid/hardware/usb/UsbManager;->setPortRoles(Landroid/hardware/usb/UsbPort;II)V

    .line 128
    .end local v0    # "dataRole":I
    .end local v1    # "powerRole":I
    :cond_0
    and-int/lit8 v2, p1, 0x6

    invoke-direct {p0, v2}, Lcom/android/exsettings/deviceinfo/UsbBackend;->setUsbFunction(I)V

    .line 117
    return-void

    .line 125
    .restart local v1    # "powerRole":I
    :cond_1
    const/4 v0, 0x2

    .restart local v0    # "dataRole":I
    goto :goto_0
.end method
