.class Lcom/qti/dpm/DpmService$DpmWifiInfo;
.super Lcom/qti/dpm/DpmService$DpmRatInfo;
.source "DpmService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qti/dpm/DpmService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DpmWifiInfo"
.end annotation


# instance fields
.field bssid:Ljava/lang/String;

.field rssi:I

.field softApState:I

.field ssid:Ljava/lang/String;

.field final synthetic this$0:Lcom/qti/dpm/DpmService;


# direct methods
.method public constructor <init>(Lcom/qti/dpm/DpmService;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 290
    iput-object p1, p0, Lcom/qti/dpm/DpmService$DpmWifiInfo;->this$0:Lcom/qti/dpm/DpmService;

    .line 291
    invoke-direct {p0, p1}, Lcom/qti/dpm/DpmService$DpmRatInfo;-><init>(Lcom/qti/dpm/DpmService;)V

    .line 292
    const/16 v0, 0xb

    iput v0, p0, Lcom/qti/dpm/DpmService$DpmWifiInfo;->softApState:I

    .line 293
    const/4 v0, 0x0

    iput v0, p0, Lcom/qti/dpm/DpmService$DpmWifiInfo;->rssi:I

    .line 294
    iput-object v1, p0, Lcom/qti/dpm/DpmService$DpmWifiInfo;->ssid:Ljava/lang/String;

    .line 295
    iput-object v1, p0, Lcom/qti/dpm/DpmService$DpmWifiInfo;->bssid:Ljava/lang/String;

    .line 296
    const/4 v0, 0x1

    iput v0, p0, Lcom/qti/dpm/DpmService$DpmWifiInfo;->networkType:I

    .line 297
    return-void
.end method
