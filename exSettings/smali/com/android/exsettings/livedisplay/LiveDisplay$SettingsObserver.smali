.class final Lcom/android/exsettings/livedisplay/LiveDisplay$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "LiveDisplay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/livedisplay/LiveDisplay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SettingsObserver"
.end annotation


# instance fields
.field private final DISPLAY_TEMPERATURE_DAY_URI:Landroid/net/Uri;

.field private final DISPLAY_TEMPERATURE_MODE_URI:Landroid/net/Uri;

.field private final DISPLAY_TEMPERATURE_NIGHT_URI:Landroid/net/Uri;

.field final synthetic this$0:Lcom/android/exsettings/livedisplay/LiveDisplay;


# direct methods
.method public constructor <init>(Lcom/android/exsettings/livedisplay/LiveDisplay;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/exsettings/livedisplay/LiveDisplay;

    .prologue
    .line 360
    iput-object p1, p0, Lcom/android/exsettings/livedisplay/LiveDisplay$SettingsObserver;->this$0:Lcom/android/exsettings/livedisplay/LiveDisplay;

    .line 361
    invoke-static {p1}, Lcom/android/exsettings/livedisplay/LiveDisplay;->-get0(Lcom/android/exsettings/livedisplay/LiveDisplay;)Landroid/os/Handler;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 354
    const-string/jumbo v0, "display_temperature_day"

    invoke-static {v0}, Lcyanogenmod/providers/CMSettings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 353
    iput-object v0, p0, Lcom/android/exsettings/livedisplay/LiveDisplay$SettingsObserver;->DISPLAY_TEMPERATURE_DAY_URI:Landroid/net/Uri;

    .line 356
    const-string/jumbo v0, "display_temperature_night"

    invoke-static {v0}, Lcyanogenmod/providers/CMSettings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 355
    iput-object v0, p0, Lcom/android/exsettings/livedisplay/LiveDisplay$SettingsObserver;->DISPLAY_TEMPERATURE_NIGHT_URI:Landroid/net/Uri;

    .line 358
    const-string/jumbo v0, "display_temperature_mode"

    invoke-static {v0}, Lcyanogenmod/providers/CMSettings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 357
    iput-object v0, p0, Lcom/android/exsettings/livedisplay/LiveDisplay$SettingsObserver;->DISPLAY_TEMPERATURE_MODE_URI:Landroid/net/Uri;

    .line 360
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 1
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 377
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 378
    iget-object v0, p0, Lcom/android/exsettings/livedisplay/LiveDisplay$SettingsObserver;->this$0:Lcom/android/exsettings/livedisplay/LiveDisplay;

    invoke-static {v0}, Lcom/android/exsettings/livedisplay/LiveDisplay;->-wrap1(Lcom/android/exsettings/livedisplay/LiveDisplay;)V

    .line 379
    iget-object v0, p0, Lcom/android/exsettings/livedisplay/LiveDisplay$SettingsObserver;->this$0:Lcom/android/exsettings/livedisplay/LiveDisplay;

    invoke-static {v0}, Lcom/android/exsettings/livedisplay/LiveDisplay;->-wrap2(Lcom/android/exsettings/livedisplay/LiveDisplay;)V

    .line 376
    return-void
.end method

.method public register(Z)V
    .locals 4
    .param p1, "register"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 365
    iget-object v1, p0, Lcom/android/exsettings/livedisplay/LiveDisplay$SettingsObserver;->this$0:Lcom/android/exsettings/livedisplay/LiveDisplay;

    invoke-static {v1}, Lcom/android/exsettings/livedisplay/LiveDisplay;->-wrap0(Lcom/android/exsettings/livedisplay/LiveDisplay;)Landroid/content/ContentResolver;

    move-result-object v0

    .line 366
    .local v0, "cr":Landroid/content/ContentResolver;
    if-eqz p1, :cond_0

    .line 367
    iget-object v1, p0, Lcom/android/exsettings/livedisplay/LiveDisplay$SettingsObserver;->DISPLAY_TEMPERATURE_DAY_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 368
    iget-object v1, p0, Lcom/android/exsettings/livedisplay/LiveDisplay$SettingsObserver;->DISPLAY_TEMPERATURE_NIGHT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 369
    iget-object v1, p0, Lcom/android/exsettings/livedisplay/LiveDisplay$SettingsObserver;->DISPLAY_TEMPERATURE_MODE_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 364
    :goto_0
    return-void

    .line 371
    :cond_0
    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    goto :goto_0
.end method
