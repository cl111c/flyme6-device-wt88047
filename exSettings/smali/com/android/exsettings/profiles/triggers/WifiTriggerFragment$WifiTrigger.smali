.class public Lcom/android/exsettings/profiles/triggers/WifiTriggerFragment$WifiTrigger;
.super Lcom/android/exsettings/profiles/triggers/AbstractTriggerItem;
.source "WifiTriggerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/profiles/triggers/WifiTriggerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WifiTrigger"
.end annotation


# instance fields
.field public mConfig:Landroid/net/wifi/WifiConfiguration;

.field public mSSID:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/net/wifi/WifiConfiguration;)V
    .locals 0
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 255
    invoke-direct {p0}, Lcom/android/exsettings/profiles/triggers/AbstractTriggerItem;-><init>()V

    .line 256
    iput-object p1, p0, Lcom/android/exsettings/profiles/triggers/WifiTriggerFragment$WifiTrigger;->mConfig:Landroid/net/wifi/WifiConfiguration;

    .line 257
    invoke-direct {p0, p1}, Lcom/android/exsettings/profiles/triggers/WifiTriggerFragment$WifiTrigger;->loadConfig(Landroid/net/wifi/WifiConfiguration;)V

    .line 255
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "ssid"    # Ljava/lang/String;

    .prologue
    .line 260
    invoke-direct {p0}, Lcom/android/exsettings/profiles/triggers/AbstractTriggerItem;-><init>()V

    .line 261
    iput-object p1, p0, Lcom/android/exsettings/profiles/triggers/WifiTriggerFragment$WifiTrigger;->mSSID:Ljava/lang/String;

    .line 260
    return-void
.end method

.method private loadConfig(Landroid/net/wifi/WifiConfiguration;)V
    .locals 1
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 274
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string/jumbo v0, ""

    :goto_0
    iput-object v0, p0, Lcom/android/exsettings/profiles/triggers/WifiTriggerFragment$WifiTrigger;->mSSID:Ljava/lang/String;

    .line 275
    iput-object p1, p0, Lcom/android/exsettings/profiles/triggers/WifiTriggerFragment$WifiTrigger;->mConfig:Landroid/net/wifi/WifiConfiguration;

    .line 273
    return-void

    .line 274
    :cond_0
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/exsettings/profiles/triggers/WifiTriggerFragment$WifiTrigger;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    .line 279
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 280
    .local v0, "length":I
    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    .line 281
    const-string/jumbo v1, "\""

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "\""

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 282
    add-int/lit8 v1, v0, -0x1

    const/4 v2, 0x1

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 285
    :cond_0
    return-object p0
.end method


# virtual methods
.method public getSSID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lcom/android/exsettings/profiles/triggers/WifiTriggerFragment$WifiTrigger;->mSSID:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lcom/android/exsettings/profiles/triggers/WifiTriggerFragment$WifiTrigger;->mSSID:Ljava/lang/String;

    return-object v0
.end method
