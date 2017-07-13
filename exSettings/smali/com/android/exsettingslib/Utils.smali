.class public final Lcom/android/exsettingslib/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getTetheringLabel(Landroid/net/ConnectivityManager;)I
    .locals 7
    .param p0, "cm"    # Landroid/net/ConnectivityManager;

    .prologue
    .line 21
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getTetherableUsbRegexs()[Ljava/lang/String;

    move-result-object v3

    .line 22
    .local v3, "usbRegexs":[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v5

    .line 23
    .local v5, "wifiRegexs":[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getTetherableBluetoothRegexs()[Ljava/lang/String;

    move-result-object v1

    .line 25
    .local v1, "bluetoothRegexs":[Ljava/lang/String;
    array-length v6, v3

    if-eqz v6, :cond_0

    const/4 v2, 0x1

    .line 26
    .local v2, "usbAvailable":Z
    :goto_0
    array-length v6, v5

    if-eqz v6, :cond_1

    const/4 v4, 0x1

    .line 27
    .local v4, "wifiAvailable":Z
    :goto_1
    array-length v6, v1

    if-eqz v6, :cond_2

    const/4 v0, 0x1

    .line 29
    .local v0, "bluetoothAvailable":Z
    :goto_2
    if-eqz v4, :cond_3

    if-eqz v2, :cond_3

    if-eqz v0, :cond_3

    .line 30
    sget v6, Lcom/android/exsettingslib/R$string;->tether_settings_title_all:I

    return v6

    .line 25
    .end local v0    # "bluetoothAvailable":Z
    .end local v2    # "usbAvailable":Z
    .end local v4    # "wifiAvailable":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "usbAvailable":Z
    goto :goto_0

    .line 26
    :cond_1
    const/4 v4, 0x0

    .restart local v4    # "wifiAvailable":Z
    goto :goto_1

    .line 27
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "bluetoothAvailable":Z
    goto :goto_2

    .line 31
    :cond_3
    if-eqz v4, :cond_4

    if-eqz v2, :cond_4

    .line 32
    sget v6, Lcom/android/exsettingslib/R$string;->tether_settings_title_all:I

    return v6

    .line 33
    :cond_4
    if-eqz v4, :cond_5

    if-eqz v0, :cond_5

    .line 34
    sget v6, Lcom/android/exsettingslib/R$string;->tether_settings_title_all:I

    return v6

    .line 35
    :cond_5
    if-eqz v4, :cond_6

    .line 36
    sget v6, Lcom/android/exsettingslib/R$string;->tether_settings_title_wifi:I

    return v6

    .line 37
    :cond_6
    if-eqz v2, :cond_7

    if-eqz v0, :cond_7

    .line 38
    sget v6, Lcom/android/exsettingslib/R$string;->tether_settings_title_usb_bluetooth:I

    return v6

    .line 39
    :cond_7
    if-eqz v2, :cond_8

    .line 40
    sget v6, Lcom/android/exsettingslib/R$string;->tether_settings_title_usb:I

    return v6

    .line 42
    :cond_8
    sget v6, Lcom/android/exsettingslib/R$string;->tether_settings_title_bluetooth:I

    return v6
.end method

.method public static getUserIcon(Landroid/content/Context;Landroid/os/UserManager;Landroid/content/pm/UserInfo;)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "um"    # Landroid/os/UserManager;
    .param p2, "user"    # Landroid/content/pm/UserInfo;

    .prologue
    .line 69
    invoke-virtual {p2}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 71
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 72
    const v3, 0x1080333

    .line 71
    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 73
    .local v0, "b":Landroid/graphics/Bitmap;
    invoke-static {p0, v0}, Lcom/android/exsettingslib/drawable/CircleFramedDrawable;->getInstance(Landroid/content/Context;Landroid/graphics/Bitmap;)Lcom/android/exsettingslib/drawable/CircleFramedDrawable;

    move-result-object v2

    return-object v2

    .line 75
    .end local v0    # "b":Landroid/graphics/Bitmap;
    :cond_0
    iget-object v2, p2, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 76
    iget v2, p2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p1, v2}, Landroid/os/UserManager;->getUserIcon(I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 77
    .local v1, "icon":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_1

    .line 78
    invoke-static {p0, v1}, Lcom/android/exsettingslib/drawable/CircleFramedDrawable;->getInstance(Landroid/content/Context;Landroid/graphics/Bitmap;)Lcom/android/exsettingslib/drawable/CircleFramedDrawable;

    move-result-object v2

    return-object v2

    .line 82
    .end local v1    # "icon":Landroid/graphics/Bitmap;
    :cond_1
    iget v2, p2, Landroid/content/pm/UserInfo;->id:I

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/internal/util/UserIcons;->getDefaultUserIcon(IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 81
    invoke-static {v2}, Lcom/android/internal/util/UserIcons;->convertToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/exsettingslib/drawable/CircleFramedDrawable;->getInstance(Landroid/content/Context;Landroid/graphics/Bitmap;)Lcom/android/exsettingslib/drawable/CircleFramedDrawable;

    move-result-object v2

    return-object v2
.end method

.method public static getUserLabel(Landroid/content/Context;Landroid/content/pm/UserInfo;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "info"    # Landroid/content/pm/UserInfo;

    .prologue
    .line 50
    if-eqz p1, :cond_0

    iget-object v0, p1, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    .line 51
    :goto_0
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 53
    sget v1, Lcom/android/exsettingslib/R$string;->managed_user_title:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 50
    :cond_0
    const/4 v0, 0x0

    .local v0, "name":Ljava/lang/String;
    goto :goto_0

    .line 54
    .end local v0    # "name":Ljava/lang/String;
    :cond_1
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 55
    sget v1, Lcom/android/exsettingslib/R$string;->user_guest:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 57
    :cond_2
    if-nez v0, :cond_4

    if-eqz p1, :cond_4

    .line 58
    iget v1, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 62
    :cond_3
    :goto_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/exsettingslib/R$string;->running_process_item_user_label:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 59
    :cond_4
    if-nez p1, :cond_3

    .line 60
    sget v1, Lcom/android/exsettingslib/R$string;->unknown:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .local v0, "name":Ljava/lang/String;
    goto :goto_1
.end method
