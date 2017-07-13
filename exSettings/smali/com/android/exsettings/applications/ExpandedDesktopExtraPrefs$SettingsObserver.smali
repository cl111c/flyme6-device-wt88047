.class final Lcom/android/exsettings/applications/ExpandedDesktopExtraPrefs$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "ExpandedDesktopExtraPrefs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/applications/ExpandedDesktopExtraPrefs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SettingsObserver"
.end annotation


# instance fields
.field private final DEFAULT_WINDOW_POLICY_STYLE:Landroid/net/Uri;

.field final synthetic this$0:Lcom/android/exsettings/applications/ExpandedDesktopExtraPrefs;


# direct methods
.method public constructor <init>(Lcom/android/exsettings/applications/ExpandedDesktopExtraPrefs;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/exsettings/applications/ExpandedDesktopExtraPrefs;

    .prologue
    .line 144
    iput-object p1, p0, Lcom/android/exsettings/applications/ExpandedDesktopExtraPrefs$SettingsObserver;->this$0:Lcom/android/exsettings/applications/ExpandedDesktopExtraPrefs;

    .line 145
    invoke-static {p1}, Lcom/android/exsettings/applications/ExpandedDesktopExtraPrefs;->-get0(Lcom/android/exsettings/applications/ExpandedDesktopExtraPrefs;)Landroid/os/Handler;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 142
    const-string/jumbo v0, "policy_control_style"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 141
    iput-object v0, p0, Lcom/android/exsettings/applications/ExpandedDesktopExtraPrefs$SettingsObserver;->DEFAULT_WINDOW_POLICY_STYLE:Landroid/net/Uri;

    .line 144
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 1
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 159
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 160
    iget-object v0, p0, Lcom/android/exsettings/applications/ExpandedDesktopExtraPrefs$SettingsObserver;->DEFAULT_WINDOW_POLICY_STYLE:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/android/exsettings/applications/ExpandedDesktopExtraPrefs$SettingsObserver;->this$0:Lcom/android/exsettings/applications/ExpandedDesktopExtraPrefs;

    invoke-static {v0}, Lcom/android/exsettings/applications/ExpandedDesktopExtraPrefs;->-wrap1(Lcom/android/exsettings/applications/ExpandedDesktopExtraPrefs;)V

    .line 158
    :cond_0
    return-void
.end method

.method public register(Z)V
    .locals 3
    .param p1, "register"    # Z

    .prologue
    .line 149
    iget-object v1, p0, Lcom/android/exsettings/applications/ExpandedDesktopExtraPrefs$SettingsObserver;->this$0:Lcom/android/exsettings/applications/ExpandedDesktopExtraPrefs;

    invoke-static {v1}, Lcom/android/exsettings/applications/ExpandedDesktopExtraPrefs;->-wrap0(Lcom/android/exsettings/applications/ExpandedDesktopExtraPrefs;)Landroid/content/ContentResolver;

    move-result-object v0

    .line 150
    .local v0, "cr":Landroid/content/ContentResolver;
    if-eqz p1, :cond_0

    .line 151
    iget-object v1, p0, Lcom/android/exsettings/applications/ExpandedDesktopExtraPrefs$SettingsObserver;->DEFAULT_WINDOW_POLICY_STYLE:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 148
    :goto_0
    return-void

    .line 153
    :cond_0
    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    goto :goto_0
.end method
