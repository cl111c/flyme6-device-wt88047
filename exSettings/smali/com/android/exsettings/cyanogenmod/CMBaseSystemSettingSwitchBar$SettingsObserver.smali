.class Lcom/android/exsettings/cyanogenmod/CMBaseSystemSettingSwitchBar$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "CMBaseSystemSettingSwitchBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/cyanogenmod/CMBaseSystemSettingSwitchBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/cyanogenmod/CMBaseSystemSettingSwitchBar;


# direct methods
.method constructor <init>(Lcom/android/exsettings/cyanogenmod/CMBaseSystemSettingSwitchBar;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/exsettings/cyanogenmod/CMBaseSystemSettingSwitchBar;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 126
    iput-object p1, p0, Lcom/android/exsettings/cyanogenmod/CMBaseSystemSettingSwitchBar$SettingsObserver;->this$0:Lcom/android/exsettings/cyanogenmod/CMBaseSystemSettingSwitchBar;

    .line 127
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 126
    return-void
.end method


# virtual methods
.method observe()V
    .locals 3

    .prologue
    .line 131
    iget-object v1, p0, Lcom/android/exsettings/cyanogenmod/CMBaseSystemSettingSwitchBar$SettingsObserver;->this$0:Lcom/android/exsettings/cyanogenmod/CMBaseSystemSettingSwitchBar;

    invoke-static {v1}, Lcom/android/exsettings/cyanogenmod/CMBaseSystemSettingSwitchBar;->-get0(Lcom/android/exsettings/cyanogenmod/CMBaseSystemSettingSwitchBar;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 133
    .local v0, "resolver":Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/android/exsettings/cyanogenmod/CMBaseSystemSettingSwitchBar$SettingsObserver;->this$0:Lcom/android/exsettings/cyanogenmod/CMBaseSystemSettingSwitchBar;

    invoke-static {v1}, Lcom/android/exsettings/cyanogenmod/CMBaseSystemSettingSwitchBar;->-get1(Lcom/android/exsettings/cyanogenmod/CMBaseSystemSettingSwitchBar;)Ljava/lang/String;

    move-result-object v1

    .line 132
    invoke-static {v1}, Lcyanogenmod/providers/CMSettings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 133
    const/4 v2, 0x0

    .line 132
    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 134
    invoke-virtual {p0}, Lcom/android/exsettings/cyanogenmod/CMBaseSystemSettingSwitchBar$SettingsObserver;->update()V

    .line 130
    return-void
.end method

.method public onChange(Z)V
    .locals 0
    .param p1, "selfChange"    # Z

    .prologue
    .line 144
    invoke-virtual {p0}, Lcom/android/exsettings/cyanogenmod/CMBaseSystemSettingSwitchBar$SettingsObserver;->update()V

    .line 143
    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 0
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 149
    invoke-virtual {p0}, Lcom/android/exsettings/cyanogenmod/CMBaseSystemSettingSwitchBar$SettingsObserver;->update()V

    .line 148
    return-void
.end method

.method unobserve()V
    .locals 2

    .prologue
    .line 138
    iget-object v1, p0, Lcom/android/exsettings/cyanogenmod/CMBaseSystemSettingSwitchBar$SettingsObserver;->this$0:Lcom/android/exsettings/cyanogenmod/CMBaseSystemSettingSwitchBar;

    invoke-static {v1}, Lcom/android/exsettings/cyanogenmod/CMBaseSystemSettingSwitchBar;->-get0(Lcom/android/exsettings/cyanogenmod/CMBaseSystemSettingSwitchBar;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 139
    .local v0, "resolver":Landroid/content/ContentResolver;
    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 137
    return-void
.end method

.method public update()V
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/android/exsettings/cyanogenmod/CMBaseSystemSettingSwitchBar$SettingsObserver;->this$0:Lcom/android/exsettings/cyanogenmod/CMBaseSystemSettingSwitchBar;

    invoke-static {v0}, Lcom/android/exsettings/cyanogenmod/CMBaseSystemSettingSwitchBar;->-wrap0(Lcom/android/exsettings/cyanogenmod/CMBaseSystemSettingSwitchBar;)V

    .line 152
    return-void
.end method
