.class final Lcom/android/exsettings/notification/SoundSettings$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "SoundSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/notification/SoundSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SettingsObserver"
.end annotation


# instance fields
.field private final LOCK_SCREEN_PRIVATE_URI:Landroid/net/Uri;

.field private final LOCK_SCREEN_SHOW_URI:Landroid/net/Uri;

.field private final NOTIFICATION_LIGHT_PULSE_URI:Landroid/net/Uri;

.field private final VIBRATE_WHEN_RINGING_URI:Landroid/net/Uri;

.field private final VOLUME_LINK_NOTIFICATION_URI:Landroid/net/Uri;

.field final synthetic this$0:Lcom/android/exsettings/notification/SoundSettings;


# direct methods
.method public constructor <init>(Lcom/android/exsettings/notification/SoundSettings;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/exsettings/notification/SoundSettings;

    .prologue
    .line 558
    iput-object p1, p0, Lcom/android/exsettings/notification/SoundSettings$SettingsObserver;->this$0:Lcom/android/exsettings/notification/SoundSettings;

    .line 559
    invoke-static {p1}, Lcom/android/exsettings/notification/SoundSettings;->-get1(Lcom/android/exsettings/notification/SoundSettings;)Lcom/android/exsettings/notification/SoundSettings$H;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 548
    const-string/jumbo v0, "vibrate_when_ringing"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 547
    iput-object v0, p0, Lcom/android/exsettings/notification/SoundSettings$SettingsObserver;->VIBRATE_WHEN_RINGING_URI:Landroid/net/Uri;

    .line 550
    const-string/jumbo v0, "notification_light_pulse"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 549
    iput-object v0, p0, Lcom/android/exsettings/notification/SoundSettings$SettingsObserver;->NOTIFICATION_LIGHT_PULSE_URI:Landroid/net/Uri;

    .line 552
    const-string/jumbo v0, "lock_screen_allow_private_notifications"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 551
    iput-object v0, p0, Lcom/android/exsettings/notification/SoundSettings$SettingsObserver;->LOCK_SCREEN_PRIVATE_URI:Landroid/net/Uri;

    .line 554
    const-string/jumbo v0, "lock_screen_show_notifications"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 553
    iput-object v0, p0, Lcom/android/exsettings/notification/SoundSettings$SettingsObserver;->LOCK_SCREEN_SHOW_URI:Landroid/net/Uri;

    .line 556
    const-string/jumbo v0, "volume_link_notification"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 555
    iput-object v0, p0, Lcom/android/exsettings/notification/SoundSettings$SettingsObserver;->VOLUME_LINK_NOTIFICATION_URI:Landroid/net/Uri;

    .line 558
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 1
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 577
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 578
    iget-object v0, p0, Lcom/android/exsettings/notification/SoundSettings$SettingsObserver;->VIBRATE_WHEN_RINGING_URI:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 579
    iget-object v0, p0, Lcom/android/exsettings/notification/SoundSettings$SettingsObserver;->this$0:Lcom/android/exsettings/notification/SoundSettings;

    invoke-static {v0}, Lcom/android/exsettings/notification/SoundSettings;->-wrap5(Lcom/android/exsettings/notification/SoundSettings;)V

    .line 581
    :cond_0
    iget-object v0, p0, Lcom/android/exsettings/notification/SoundSettings$SettingsObserver;->VOLUME_LINK_NOTIFICATION_URI:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 582
    iget-object v0, p0, Lcom/android/exsettings/notification/SoundSettings$SettingsObserver;->this$0:Lcom/android/exsettings/notification/SoundSettings;

    invoke-static {v0}, Lcom/android/exsettings/notification/SoundSettings;->-wrap3(Lcom/android/exsettings/notification/SoundSettings;)V

    .line 576
    :cond_1
    return-void
.end method

.method public register(Z)V
    .locals 3
    .param p1, "register"    # Z

    .prologue
    const/4 v2, 0x0

    .line 563
    iget-object v1, p0, Lcom/android/exsettings/notification/SoundSettings$SettingsObserver;->this$0:Lcom/android/exsettings/notification/SoundSettings;

    invoke-static {v1}, Lcom/android/exsettings/notification/SoundSettings;->-wrap0(Lcom/android/exsettings/notification/SoundSettings;)Landroid/content/ContentResolver;

    move-result-object v0

    .line 564
    .local v0, "cr":Landroid/content/ContentResolver;
    if-eqz p1, :cond_0

    .line 565
    iget-object v1, p0, Lcom/android/exsettings/notification/SoundSettings$SettingsObserver;->VIBRATE_WHEN_RINGING_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 566
    iget-object v1, p0, Lcom/android/exsettings/notification/SoundSettings$SettingsObserver;->NOTIFICATION_LIGHT_PULSE_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 567
    iget-object v1, p0, Lcom/android/exsettings/notification/SoundSettings$SettingsObserver;->LOCK_SCREEN_PRIVATE_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 568
    iget-object v1, p0, Lcom/android/exsettings/notification/SoundSettings$SettingsObserver;->LOCK_SCREEN_SHOW_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 569
    iget-object v1, p0, Lcom/android/exsettings/notification/SoundSettings$SettingsObserver;->VOLUME_LINK_NOTIFICATION_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 562
    :goto_0
    return-void

    .line 571
    :cond_0
    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    goto :goto_0
.end method
