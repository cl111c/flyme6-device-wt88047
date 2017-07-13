.class final Lcom/android/exsettings/livedisplay/LiveDisplay$1;
.super Lcom/android/exsettings/search/BaseSearchIndexProvider;
.source "LiveDisplay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/livedisplay/LiveDisplay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 384
    invoke-direct {p0}, Lcom/android/exsettings/search/BaseSearchIndexProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getNonIndexableKeys(Landroid/content/Context;)Ljava/util/List;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 401
    invoke-static {p1}, Lcyanogenmod/hardware/CMHardwareManager;->getInstance(Landroid/content/Context;)Lcyanogenmod/hardware/CMHardwareManager;

    move-result-object v1

    .line 402
    .local v1, "hardware":Lcyanogenmod/hardware/CMHardwareManager;
    invoke-static {p1}, Lcyanogenmod/hardware/LiveDisplayManager;->getInstance(Landroid/content/Context;)Lcyanogenmod/hardware/LiveDisplayManager;

    move-result-object v3

    invoke-virtual {v3}, Lcyanogenmod/hardware/LiveDisplayManager;->getConfig()Lcyanogenmod/hardware/LiveDisplayConfig;

    move-result-object v0

    .line 404
    .local v0, "config":Lcyanogenmod/hardware/LiveDisplayConfig;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 405
    .local v2, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/16 v3, 0xf

    invoke-virtual {v1, v3}, Lcyanogenmod/hardware/CMHardwareManager;->isSupported(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 406
    const-string/jumbo v3, "live_display_color_profile"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 408
    :cond_0
    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Lcyanogenmod/hardware/LiveDisplayConfig;->hasFeature(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 409
    const-string/jumbo v3, "display_auto_outdoor_mode"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 411
    :cond_1
    const/16 v3, 0xc

    invoke-virtual {v0, v3}, Lcyanogenmod/hardware/LiveDisplayConfig;->hasFeature(I)Z

    move-result v3

    if-nez v3, :cond_2

    .line 412
    const-string/jumbo v3, "display_color_enhance"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 414
    :cond_2
    const/16 v3, 0xa

    invoke-virtual {v0, v3}, Lcyanogenmod/hardware/LiveDisplayConfig;->hasFeature(I)Z

    move-result v3

    if-nez v3, :cond_3

    .line 415
    const-string/jumbo v3, "display_low_power"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 417
    :cond_3
    const/16 v3, 0xd

    invoke-virtual {v0, v3}, Lcyanogenmod/hardware/LiveDisplayConfig;->hasFeature(I)Z

    move-result v3

    if-nez v3, :cond_4

    .line 418
    const-string/jumbo v3, "color_calibration"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 420
    :cond_4
    const/16 v3, 0x11

    invoke-virtual {v0, v3}, Lcyanogenmod/hardware/LiveDisplayConfig;->hasFeature(I)Z

    move-result v3

    if-nez v3, :cond_5

    .line 421
    const-string/jumbo v3, "picture_adjustment"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 423
    :cond_5
    return-object v2
.end method

.method public getXmlResourcesToIndex(Landroid/content/Context;Z)Ljava/util/List;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "enabled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Landroid/provider/SearchIndexableResource;",
            ">;"
        }
    .end annotation

    .prologue
    .line 390
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 392
    .local v0, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/provider/SearchIndexableResource;>;"
    new-instance v1, Landroid/provider/SearchIndexableResource;

    invoke-direct {v1, p1}, Landroid/provider/SearchIndexableResource;-><init>(Landroid/content/Context;)V

    .line 393
    .local v1, "sir":Landroid/provider/SearchIndexableResource;
    const v2, 0x7f080033

    iput v2, v1, Landroid/provider/SearchIndexableResource;->xmlResId:I

    .line 394
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 396
    return-object v0
.end method
