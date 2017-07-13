.class Lcom/android/exsettings/wifi/SavedAccessPointsWifiSettings$4;
.super Ljava/lang/Object;
.source "SavedAccessPointsWifiSettings.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exsettings/wifi/SavedAccessPointsWifiSettings;->initPreferences()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/exsettingslib/wifi/AccessPoint;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/wifi/SavedAccessPointsWifiSettings;


# direct methods
.method constructor <init>(Lcom/android/exsettings/wifi/SavedAccessPointsWifiSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/exsettings/wifi/SavedAccessPointsWifiSettings;

    .prologue
    .line 255
    iput-object p1, p0, Lcom/android/exsettings/wifi/SavedAccessPointsWifiSettings$4;->this$0:Lcom/android/exsettings/wifi/SavedAccessPointsWifiSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/exsettingslib/wifi/AccessPoint;Lcom/android/exsettingslib/wifi/AccessPoint;)I
    .locals 6
    .param p1, "lhs"    # Lcom/android/exsettingslib/wifi/AccessPoint;
    .param p2, "rhs"    # Lcom/android/exsettingslib/wifi/AccessPoint;

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    .line 258
    invoke-virtual {p1}, Lcom/android/exsettingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 259
    .local v0, "lwc":Landroid/net/wifi/WifiConfiguration;
    invoke-virtual {p2}, Lcom/android/exsettingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    .line 262
    .local v1, "rwc":Landroid/net/wifi/WifiConfiguration;
    iget v2, v0, Landroid/net/wifi/WifiConfiguration;->priority:I

    iget v3, v1, Landroid/net/wifi/WifiConfiguration;->priority:I

    if-ge v2, v3, :cond_0

    return v5

    .line 263
    :cond_0
    iget v2, v0, Landroid/net/wifi/WifiConfiguration;->priority:I

    iget v3, v1, Landroid/net/wifi/WifiConfiguration;->priority:I

    if-le v2, v3, :cond_1

    return v4

    .line 265
    :cond_1
    invoke-virtual {p1}, Lcom/android/exsettingslib/wifi/AccessPoint;->getNetworkId()I

    move-result v2

    invoke-virtual {p2}, Lcom/android/exsettingslib/wifi/AccessPoint;->getNetworkId()I

    move-result v3

    if-ge v2, v3, :cond_2

    return v4

    .line 266
    :cond_2
    invoke-virtual {p1}, Lcom/android/exsettingslib/wifi/AccessPoint;->getNetworkId()I

    move-result v2

    invoke-virtual {p2}, Lcom/android/exsettingslib/wifi/AccessPoint;->getNetworkId()I

    move-result v3

    if-le v2, v3, :cond_3

    return v5

    .line 267
    :cond_3
    const/4 v2, 0x0

    return v2
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "lhs"    # Ljava/lang/Object;
    .param p2, "rhs"    # Ljava/lang/Object;

    .prologue
    .line 257
    check-cast p1, Lcom/android/exsettingslib/wifi/AccessPoint;

    .end local p1    # "lhs":Ljava/lang/Object;
    check-cast p2, Lcom/android/exsettingslib/wifi/AccessPoint;

    .end local p2    # "rhs":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/exsettings/wifi/SavedAccessPointsWifiSettings$4;->compare(Lcom/android/exsettingslib/wifi/AccessPoint;Lcom/android/exsettingslib/wifi/AccessPoint;)I

    move-result v0

    return v0
.end method
