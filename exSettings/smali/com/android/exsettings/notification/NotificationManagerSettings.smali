.class public Lcom/android/exsettings/notification/NotificationManagerSettings;
.super Lcom/android/exsettings/SettingsPreferenceFragment;
.source "NotificationManagerSettings.java"

# interfaces
.implements Lcom/android/exsettings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exsettings/notification/NotificationManagerSettings$1;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/exsettings/search/Indexable$SearchIndexProvider;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mLockscreen:Lcom/android/exsettings/DropDownPreference;

.field private mLockscreenSelectedValue:I

.field private mSecure:Z


# direct methods
.method static synthetic -get0(Lcom/android/exsettings/notification/NotificationManagerSettings;)I
    .locals 1

    iget v0, p0, Lcom/android/exsettings/notification/NotificationManagerSettings;->mLockscreenSelectedValue:I

    return v0
.end method

.method static synthetic -set0(Lcom/android/exsettings/notification/NotificationManagerSettings;I)I
    .locals 0

    iput p1, p0, Lcom/android/exsettings/notification/NotificationManagerSettings;->mLockscreenSelectedValue:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/exsettings/notification/NotificationManagerSettings;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/android/exsettings/notification/NotificationManagerSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-class v0, Lcom/android/exsettings/notification/NotificationManagerSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/exsettings/notification/NotificationManagerSettings;->TAG:Ljava/lang/String;

    .line 118
    new-instance v0, Lcom/android/exsettings/notification/NotificationManagerSettings$1;

    invoke-direct {v0}, Lcom/android/exsettings/notification/NotificationManagerSettings$1;-><init>()V

    .line 117
    sput-object v0, Lcom/android/exsettings/notification/NotificationManagerSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/exsettings/search/Indexable$SearchIndexProvider;

    .line 39
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private getLockscreenAllowPrivateNotifications()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 113
    invoke-virtual {p0}, Lcom/android/exsettings/notification/NotificationManagerSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 114
    const-string/jumbo v2, "lock_screen_allow_private_notifications"

    .line 113
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private getLockscreenNotificationsEnabled()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 108
    invoke-virtual {p0}, Lcom/android/exsettings/notification/NotificationManagerSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 109
    const-string/jumbo v2, "lock_screen_show_notifications"

    .line 108
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private initLockscreenNotifications()V
    .locals 5

    .prologue
    const v4, 0x7f0c0e88

    const v3, 0x7f0c0e87

    const v2, 0x7f0c0e86

    .line 61
    const-string/jumbo v0, "lock_screen_notifications"

    invoke-virtual {p0, v0}, Lcom/android/exsettings/notification/NotificationManagerSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/exsettings/DropDownPreference;

    iput-object v0, p0, Lcom/android/exsettings/notification/NotificationManagerSettings;->mLockscreen:Lcom/android/exsettings/DropDownPreference;

    .line 62
    iget-object v0, p0, Lcom/android/exsettings/notification/NotificationManagerSettings;->mLockscreen:Lcom/android/exsettings/DropDownPreference;

    if-nez v0, :cond_0

    .line 63
    sget-object v0, Lcom/android/exsettings/notification/NotificationManagerSettings;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Preference not found: lock_screen_notifications"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    return-void

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/android/exsettings/notification/NotificationManagerSettings;->mLockscreen:Lcom/android/exsettings/DropDownPreference;

    .line 68
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 67
    invoke-virtual {v0, v2, v1}, Lcom/android/exsettings/DropDownPreference;->addItem(ILjava/lang/Object;)V

    .line 69
    iget-boolean v0, p0, Lcom/android/exsettings/notification/NotificationManagerSettings;->mSecure:Z

    if-eqz v0, :cond_1

    .line 70
    iget-object v0, p0, Lcom/android/exsettings/notification/NotificationManagerSettings;->mLockscreen:Lcom/android/exsettings/DropDownPreference;

    .line 71
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 70
    invoke-virtual {v0, v3, v1}, Lcom/android/exsettings/DropDownPreference;->addItem(ILjava/lang/Object;)V

    .line 73
    :cond_1
    iget-object v0, p0, Lcom/android/exsettings/notification/NotificationManagerSettings;->mLockscreen:Lcom/android/exsettings/DropDownPreference;

    .line 74
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 73
    invoke-virtual {v0, v4, v1}, Lcom/android/exsettings/DropDownPreference;->addItem(ILjava/lang/Object;)V

    .line 75
    invoke-direct {p0}, Lcom/android/exsettings/notification/NotificationManagerSettings;->updateLockscreenNotifications()V

    .line 76
    iget-object v0, p0, Lcom/android/exsettings/notification/NotificationManagerSettings;->mLockscreen:Lcom/android/exsettings/DropDownPreference;

    new-instance v1, Lcom/android/exsettings/notification/NotificationManagerSettings$2;

    invoke-direct {v1, p0}, Lcom/android/exsettings/notification/NotificationManagerSettings$2;-><init>(Lcom/android/exsettings/notification/NotificationManagerSettings;)V

    invoke-virtual {v0, v1}, Lcom/android/exsettings/DropDownPreference;->setCallback(Lcom/android/exsettings/DropDownPreference$Callback;)V

    .line 60
    return-void
.end method

.method private updateLockscreenNotifications()V
    .locals 4

    .prologue
    .line 96
    iget-object v2, p0, Lcom/android/exsettings/notification/NotificationManagerSettings;->mLockscreen:Lcom/android/exsettings/DropDownPreference;

    if-nez v2, :cond_0

    .line 97
    return-void

    .line 99
    :cond_0
    invoke-direct {p0}, Lcom/android/exsettings/notification/NotificationManagerSettings;->getLockscreenNotificationsEnabled()Z

    move-result v1

    .line 100
    .local v1, "enabled":Z
    iget-boolean v2, p0, Lcom/android/exsettings/notification/NotificationManagerSettings;->mSecure:Z

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/android/exsettings/notification/NotificationManagerSettings;->getLockscreenAllowPrivateNotifications()Z

    move-result v0

    .line 101
    :goto_0
    if-nez v1, :cond_2

    const v2, 0x7f0c0e88

    :goto_1
    iput v2, p0, Lcom/android/exsettings/notification/NotificationManagerSettings;->mLockscreenSelectedValue:I

    .line 104
    iget-object v2, p0, Lcom/android/exsettings/notification/NotificationManagerSettings;->mLockscreen:Lcom/android/exsettings/DropDownPreference;

    iget v3, p0, Lcom/android/exsettings/notification/NotificationManagerSettings;->mLockscreenSelectedValue:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/exsettings/DropDownPreference;->setSelectedValue(Ljava/lang/Object;)V

    .line 95
    return-void

    .line 100
    :cond_1
    const/4 v0, 0x1

    .local v0, "allowPrivate":Z
    goto :goto_0

    .line 102
    .end local v0    # "allowPrivate":Z
    :cond_2
    if-eqz v0, :cond_3

    const v2, 0x7f0c0e86

    goto :goto_1

    .line 103
    :cond_3
    const v2, 0x7f0c0e87

    goto :goto_1
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 135
    const v0, -0x7ffffff4

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 52
    invoke-super {p0, p1}, Lcom/android/exsettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 53
    const v0, 0x7f08003d

    invoke-virtual {p0, v0}, Lcom/android/exsettings/notification/NotificationManagerSettings;->addPreferencesFromResource(I)V

    .line 54
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/exsettings/notification/NotificationManagerSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/exsettings/notification/NotificationManagerSettings;->mSecure:Z

    .line 55
    invoke-direct {p0}, Lcom/android/exsettings/notification/NotificationManagerSettings;->initLockscreenNotifications()V

    .line 51
    return-void
.end method
