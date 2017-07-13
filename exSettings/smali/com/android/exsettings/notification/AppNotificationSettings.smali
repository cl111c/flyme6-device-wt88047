.class public Lcom/android/exsettings/notification/AppNotificationSettings;
.super Lcom/android/exsettings/SettingsPreferenceFragment;
.source "AppNotificationSettings.java"


# static fields
.field private static final APP_NOTIFICATION_PREFS_CATEGORY_INTENT:Landroid/content/Intent;

.field private static final DEBUG:Z


# instance fields
.field private mAppRow:Lcom/android/exsettings/notification/NotificationBackend$AppRow;

.field private final mBackend:Lcom/android/exsettings/notification/NotificationBackend;

.field private mBlock:Landroid/preference/SwitchPreference;

.field private mContext:Landroid/content/Context;

.field private mCreated:Z

.field private mIsSystemPackage:Z

.field private mPeekable:Landroid/preference/SwitchPreference;

.field private mPriority:Landroid/preference/SwitchPreference;

.field private mSensitive:Landroid/preference/SwitchPreference;

.field private mShowNoOngoingOnKeyguard:Landroid/preference/SwitchPreference;

.field private mShowOnKeyguard:Landroid/preference/SwitchPreference;

.field private mUid:I


# direct methods
.method static synthetic -get0(Lcom/android/exsettings/notification/AppNotificationSettings;)Lcom/android/exsettings/notification/NotificationBackend$AppRow;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/notification/AppNotificationSettings;->mAppRow:Lcom/android/exsettings/notification/NotificationBackend$AppRow;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/exsettings/notification/AppNotificationSettings;)Lcom/android/exsettings/notification/NotificationBackend;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/notification/AppNotificationSettings;->mBackend:Lcom/android/exsettings/notification/NotificationBackend;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/exsettings/notification/AppNotificationSettings;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/notification/AppNotificationSettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/exsettings/notification/AppNotificationSettings;)I
    .locals 1

    iget v0, p0, Lcom/android/exsettings/notification/AppNotificationSettings;->mUid:I

    return v0
.end method

.method static synthetic -wrap0(Lcom/android/exsettings/notification/AppNotificationSettings;Z)V
    .locals 0
    .param p1, "banned"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/exsettings/notification/AppNotificationSettings;->updateDependents(Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 55
    const-string/jumbo v0, "AppNotificationSettings"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/exsettings/notification/AppNotificationSettings;->DEBUG:Z

    .line 66
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 67
    const-string/jumbo v1, "android.intent.category.NOTIFICATION_PREFERENCES"

    .line 66
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 65
    sput-object v0, Lcom/android/exsettings/notification/AppNotificationSettings;->APP_NOTIFICATION_PREFS_CATEGORY_INTENT:Landroid/content/Intent;

    .line 53
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;-><init>()V

    .line 69
    new-instance v0, Lcom/android/exsettings/notification/NotificationBackend;

    invoke-direct {v0}, Lcom/android/exsettings/notification/NotificationBackend;-><init>()V

    iput-object v0, p0, Lcom/android/exsettings/notification/AppNotificationSettings;->mBackend:Lcom/android/exsettings/notification/NotificationBackend;

    .line 53
    return-void
.end method

.method public static applyConfigActivities(Landroid/content/pm/PackageManager;Landroid/util/ArrayMap;Ljava/util/List;)V
    .locals 8
    .param p0, "pm"    # Landroid/content/pm/PackageManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/exsettings/notification/NotificationBackend$AppRow;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 340
    .local p1, "rows":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/exsettings/notification/NotificationBackend$AppRow;>;"
    .local p2, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    sget-boolean v5, Lcom/android/exsettings/notification/AppNotificationSettings;->DEBUG:Z

    if-eqz v5, :cond_0

    const-string/jumbo v6, "AppNotificationSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Found "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, " preference activities"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 341
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_2

    const-string/jumbo v5, " ;_;"

    .line 340
    :goto_0
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    :cond_0
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "ri$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 343
    .local v2, "ri":Landroid/content/pm/ResolveInfo;
    iget-object v0, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 344
    .local v0, "activityInfo":Landroid/content/pm/ActivityInfo;
    iget-object v1, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 345
    .local v1, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v5, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/exsettings/notification/NotificationBackend$AppRow;

    .line 346
    .local v4, "row":Lcom/android/exsettings/notification/NotificationBackend$AppRow;
    if-nez v4, :cond_3

    .line 347
    sget-boolean v5, Lcom/android/exsettings/notification/AppNotificationSettings;->DEBUG:Z

    if-eqz v5, :cond_1

    const-string/jumbo v5, "AppNotificationSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Ignoring notification preference activity ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 348
    iget-object v7, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 347
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 348
    const-string/jumbo v7, ") for unknown package "

    .line 347
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 349
    iget-object v7, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 347
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 341
    .end local v0    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .end local v1    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v3    # "ri$iterator":Ljava/util/Iterator;
    .end local v4    # "row":Lcom/android/exsettings/notification/NotificationBackend$AppRow;
    :cond_2
    const-string/jumbo v5, ""

    goto :goto_0

    .line 352
    .restart local v0    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .restart local v1    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v2    # "ri":Landroid/content/pm/ResolveInfo;
    .restart local v3    # "ri$iterator":Ljava/util/Iterator;
    .restart local v4    # "row":Lcom/android/exsettings/notification/NotificationBackend$AppRow;
    :cond_3
    iget-object v5, v4, Lcom/android/exsettings/notification/NotificationBackend$AppRow;->settingsIntent:Landroid/content/Intent;

    if-eqz v5, :cond_4

    .line 353
    sget-boolean v5, Lcom/android/exsettings/notification/AppNotificationSettings;->DEBUG:Z

    if-eqz v5, :cond_1

    const-string/jumbo v5, "AppNotificationSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Ignoring duplicate notification preference activity ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 354
    iget-object v7, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 353
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 354
    const-string/jumbo v7, ") for package "

    .line 353
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 355
    iget-object v7, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 353
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 358
    :cond_4
    new-instance v5, Landroid/content/Intent;

    sget-object v6, Lcom/android/exsettings/notification/AppNotificationSettings;->APP_NOTIFICATION_PREFS_CATEGORY_INTENT:Landroid/content/Intent;

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 359
    iget-object v6, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v7, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 358
    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    iput-object v5, v4, Lcom/android/exsettings/notification/NotificationBackend$AppRow;->settingsIntent:Landroid/content/Intent;

    goto/16 :goto_1

    .line 339
    .end local v0    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .end local v1    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v4    # "row":Lcom/android/exsettings/notification/NotificationBackend$AppRow;
    :cond_5
    return-void
.end method

.method public static collectConfigActivities(Landroid/content/pm/PackageManager;Landroid/util/ArrayMap;)V
    .locals 1
    .param p0, "pm"    # Landroid/content/pm/PackageManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/exsettings/notification/NotificationBackend$AppRow;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 334
    .local p1, "rows":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/exsettings/notification/NotificationBackend$AppRow;>;"
    invoke-static {p0}, Lcom/android/exsettings/notification/AppNotificationSettings;->queryNotificationConfigActivities(Landroid/content/pm/PackageManager;)Ljava/util/List;

    move-result-object v0

    .line 335
    .local v0, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-static {p0, p1, v0}, Lcom/android/exsettings/notification/AppNotificationSettings;->applyConfigActivities(Landroid/content/pm/PackageManager;Landroid/util/ArrayMap;Ljava/util/List;)V

    .line 333
    return-void
.end method

.method private static findPackageInfo(Landroid/content/pm/PackageManager;Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    .locals 9
    .param p0, "pm"    # Landroid/content/pm/PackageManager;
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    const/4 v8, 0x0

    .line 306
    invoke-virtual {p0, p2}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v4

    .line 307
    .local v4, "packages":[Ljava/lang/String;
    if-eqz v4, :cond_1

    if-eqz p1, :cond_1

    .line 308
    array-length v0, v4

    .line 309
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 310
    aget-object v3, v4, v2

    .line 311
    .local v3, "p":Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 313
    const/16 v5, 0x40

    :try_start_0
    invoke-virtual {p0, p1, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    return-object v5

    .line 314
    :catch_0
    move-exception v1

    .line 315
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v5, "AppNotificationSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Failed to load package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 309
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 320
    .end local v0    # "N":I
    .end local v2    # "i":I
    .end local v3    # "p":Ljava/lang/String;
    :cond_1
    return-object v8
.end method

.method private getLockscreenAllowPrivateNotifications()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 296
    invoke-virtual {p0}, Lcom/android/exsettings/notification/AppNotificationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 297
    const-string/jumbo v2, "lock_screen_allow_private_notifications"

    .line 296
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

    .line 291
    invoke-virtual {p0}, Lcom/android/exsettings/notification/AppNotificationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 292
    const-string/jumbo v2, "lock_screen_show_notifications"

    .line 291
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static queryNotificationConfigActivities(Landroid/content/pm/PackageManager;)Ljava/util/List;
    .locals 4
    .param p0, "pm"    # Landroid/content/pm/PackageManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 324
    sget-boolean v1, Lcom/android/exsettings/notification/AppNotificationSettings;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "AppNotificationSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "APP_NOTIFICATION_PREFS_CATEGORY_INTENT is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 325
    sget-object v3, Lcom/android/exsettings/notification/AppNotificationSettings;->APP_NOTIFICATION_PREFS_CATEGORY_INTENT:Landroid/content/Intent;

    .line 324
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    :cond_0
    sget-object v1, Lcom/android/exsettings/notification/AppNotificationSettings;->APP_NOTIFICATION_PREFS_CATEGORY_INTENT:Landroid/content/Intent;

    .line 328
    const/4 v2, 0x0

    .line 326
    invoke-virtual {p0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 330
    .local v0, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    return-object v0
.end method

.method private setVisible(Landroid/preference/Preference;Z)V
    .locals 3
    .param p1, "p"    # Landroid/preference/Preference;
    .param p2, "visible"    # Z

    .prologue
    .line 281
    invoke-virtual {p0}, Lcom/android/exsettings/notification/AppNotificationSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 282
    .local v0, "isVisible":Z
    :goto_0
    if-ne v0, p2, :cond_1

    return-void

    .line 281
    .end local v0    # "isVisible":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "isVisible":Z
    goto :goto_0

    .line 283
    :cond_1
    if-eqz p2, :cond_2

    .line 284
    invoke-virtual {p0}, Lcom/android/exsettings/notification/AppNotificationSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 280
    :goto_1
    return-void

    .line 286
    :cond_2
    invoke-virtual {p0}, Lcom/android/exsettings/notification/AppNotificationSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_1
.end method

.method private toastAndFinish()V
    .locals 3

    .prologue
    .line 301
    iget-object v0, p0, Lcom/android/exsettings/notification/AppNotificationSettings;->mContext:Landroid/content/Context;

    const v1, 0x7f0c09e5

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 302
    invoke-virtual {p0}, Lcom/android/exsettings/notification/AppNotificationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 300
    return-void
.end method

.method private updateDependents(Z)V
    .locals 8
    .param p1, "banned"    # Z

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 264
    new-instance v4, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/exsettings/notification/AppNotificationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v4, v7}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 265
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    .line 264
    invoke-virtual {v4, v7}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v3

    .line 266
    .local v3, "lockscreenSecure":Z
    invoke-direct {p0}, Lcom/android/exsettings/notification/AppNotificationSettings;->getLockscreenNotificationsEnabled()Z

    move-result v2

    .line 267
    .local v2, "lockscreenNotificationsEnabled":Z
    invoke-direct {p0}, Lcom/android/exsettings/notification/AppNotificationSettings;->getLockscreenAllowPrivateNotifications()Z

    move-result v0

    .line 268
    .local v0, "allowPrivate":Z
    iget-object v4, p0, Lcom/android/exsettings/notification/AppNotificationSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 269
    const-string/jumbo v7, "heads_up_notifications_enabled"

    .line 268
    invoke-static {v4, v7, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_1

    const/4 v1, 0x1

    .line 271
    .local v1, "headsUpEnabled":Z
    :goto_0
    iget-object v7, p0, Lcom/android/exsettings/notification/AppNotificationSettings;->mBlock:Landroid/preference/SwitchPreference;

    iget-boolean v4, p0, Lcom/android/exsettings/notification/AppNotificationSettings;->mIsSystemPackage:Z

    if-eqz v4, :cond_2

    move v4, v5

    :goto_1
    invoke-direct {p0, v7, v4}, Lcom/android/exsettings/notification/AppNotificationSettings;->setVisible(Landroid/preference/Preference;Z)V

    .line 272
    iget-object v7, p0, Lcom/android/exsettings/notification/AppNotificationSettings;->mPriority:Landroid/preference/SwitchPreference;

    iget-boolean v4, p0, Lcom/android/exsettings/notification/AppNotificationSettings;->mIsSystemPackage:Z

    if-nez v4, :cond_3

    if-eqz p1, :cond_3

    move v4, v5

    :goto_2
    invoke-direct {p0, v7, v4}, Lcom/android/exsettings/notification/AppNotificationSettings;->setVisible(Landroid/preference/Preference;Z)V

    .line 273
    iget-object v4, p0, Lcom/android/exsettings/notification/AppNotificationSettings;->mPeekable:Landroid/preference/SwitchPreference;

    iget-boolean v7, p0, Lcom/android/exsettings/notification/AppNotificationSettings;->mIsSystemPackage:Z

    if-nez v7, :cond_4

    if-nez p1, :cond_5

    .end local v1    # "headsUpEnabled":Z
    :goto_3
    invoke-direct {p0, v4, v1}, Lcom/android/exsettings/notification/AppNotificationSettings;->setVisible(Landroid/preference/Preference;Z)V

    .line 274
    iget-object v4, p0, Lcom/android/exsettings/notification/AppNotificationSettings;->mSensitive:Landroid/preference/SwitchPreference;

    iget-boolean v7, p0, Lcom/android/exsettings/notification/AppNotificationSettings;->mIsSystemPackage:Z

    if-nez v7, :cond_6

    if-nez p1, :cond_7

    if-eqz v3, :cond_7

    if-eqz v2, :cond_7

    .end local v0    # "allowPrivate":Z
    :goto_4
    invoke-direct {p0, v4, v0}, Lcom/android/exsettings/notification/AppNotificationSettings;->setVisible(Landroid/preference/Preference;Z)V

    .line 276
    iget-object v7, p0, Lcom/android/exsettings/notification/AppNotificationSettings;->mShowOnKeyguard:Landroid/preference/SwitchPreference;

    iget-boolean v4, p0, Lcom/android/exsettings/notification/AppNotificationSettings;->mIsSystemPackage:Z

    if-nez v4, :cond_8

    if-eqz p1, :cond_8

    move v4, v5

    :goto_5
    invoke-direct {p0, v7, v4}, Lcom/android/exsettings/notification/AppNotificationSettings;->setVisible(Landroid/preference/Preference;Z)V

    .line 277
    iget-object v4, p0, Lcom/android/exsettings/notification/AppNotificationSettings;->mShowNoOngoingOnKeyguard:Landroid/preference/SwitchPreference;

    iget-boolean v7, p0, Lcom/android/exsettings/notification/AppNotificationSettings;->mIsSystemPackage:Z

    if-nez v7, :cond_0

    if-eqz p1, :cond_0

    move v6, v5

    :cond_0
    invoke-direct {p0, v4, v6}, Lcom/android/exsettings/notification/AppNotificationSettings;->setVisible(Landroid/preference/Preference;Z)V

    .line 263
    return-void

    .line 268
    .restart local v0    # "allowPrivate":Z
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "headsUpEnabled":Z
    goto :goto_0

    :cond_2
    move v4, v6

    .line 271
    goto :goto_1

    :cond_3
    move v4, v6

    .line 272
    goto :goto_2

    :cond_4
    move v1, v6

    .line 273
    goto :goto_3

    :cond_5
    move v1, v5

    goto :goto_3

    .end local v1    # "headsUpEnabled":Z
    :cond_6
    move v0, v6

    .line 274
    goto :goto_4

    :cond_7
    move v0, v5

    goto :goto_4

    .end local v0    # "allowPrivate":Z
    :cond_8
    move v4, v6

    .line 276
    goto :goto_5
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 99
    const/16 v0, 0x48

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 85
    invoke-super {p0, p1}, Lcom/android/exsettings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 86
    sget-boolean v0, Lcom/android/exsettings/notification/AppNotificationSettings;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "AppNotificationSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onActivityCreated mCreated="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/exsettings/notification/AppNotificationSettings;->mCreated:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    :cond_0
    iget-boolean v0, p0, Lcom/android/exsettings/notification/AppNotificationSettings;->mCreated:Z

    if-eqz v0, :cond_1

    .line 88
    const-string/jumbo v0, "AppNotificationSettings"

    const-string/jumbo v1, "onActivityCreated: ignoring duplicate call"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    return-void

    .line 91
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/exsettings/notification/AppNotificationSettings;->mCreated:Z

    .line 92
    iget-object v0, p0, Lcom/android/exsettings/notification/AppNotificationSettings;->mAppRow:Lcom/android/exsettings/notification/NotificationBackend$AppRow;

    if-nez v0, :cond_2

    return-void

    .line 93
    :cond_2
    iget-object v0, p0, Lcom/android/exsettings/notification/AppNotificationSettings;->mAppRow:Lcom/android/exsettings/notification/NotificationBackend$AppRow;

    iget-object v0, v0, Lcom/android/exsettings/notification/NotificationBackend$AppRow;->icon:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/android/exsettings/notification/AppNotificationSettings;->mAppRow:Lcom/android/exsettings/notification/NotificationBackend$AppRow;

    iget-object v1, v1, Lcom/android/exsettings/notification/NotificationBackend$AppRow;->label:Ljava/lang/CharSequence;

    .line 94
    iget-object v2, p0, Lcom/android/exsettings/notification/AppNotificationSettings;->mAppRow:Lcom/android/exsettings/notification/NotificationBackend$AppRow;

    iget-object v2, v2, Lcom/android/exsettings/notification/NotificationBackend$AppRow;->pkg:Ljava/lang/String;

    invoke-static {p0, v2}, Lcom/android/exsettings/applications/AppInfoWithHeader;->getInfoIntent(Landroid/app/Fragment;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 93
    invoke-static {p0, v0, v1, v2}, Lcom/android/exsettings/AppHeader;->createAppHeader(Lcom/android/exsettings/SettingsPreferenceFragment;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Landroid/content/Intent;)V

    .line 84
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 13
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x1

    const/4 v12, -0x1

    const/4 v9, 0x0

    .line 104
    invoke-super {p0, p1}, Lcom/android/exsettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 105
    invoke-virtual {p0}, Lcom/android/exsettings/notification/AppNotificationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    iput-object v7, p0, Lcom/android/exsettings/notification/AppNotificationSettings;->mContext:Landroid/content/Context;

    .line 106
    invoke-virtual {p0}, Lcom/android/exsettings/notification/AppNotificationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 107
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/exsettings/notification/AppNotificationSettings;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 108
    .local v0, "args":Landroid/os/Bundle;
    sget-boolean v7, Lcom/android/exsettings/notification/AppNotificationSettings;->DEBUG:Z

    if-eqz v7, :cond_0

    const-string/jumbo v7, "AppNotificationSettings"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "onCreate getIntent()="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    :cond_0
    if-nez v2, :cond_1

    if-nez v0, :cond_1

    .line 110
    const-string/jumbo v7, "AppNotificationSettings"

    const-string/jumbo v8, "No intent"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    invoke-direct {p0}, Lcom/android/exsettings/notification/AppNotificationSettings;->toastAndFinish()V

    .line 112
    return-void

    .line 115
    :cond_1
    if-eqz v0, :cond_3

    const-string/jumbo v7, "package"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 116
    const-string/jumbo v7, "package"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 118
    .local v4, "pkg":Ljava/lang/String;
    :goto_0
    if-eqz v0, :cond_4

    const-string/jumbo v7, "uid"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 119
    const-string/jumbo v7, "uid"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    .line 118
    :goto_1
    iput v7, p0, Lcom/android/exsettings/notification/AppNotificationSettings;->mUid:I

    .line 121
    iget v7, p0, Lcom/android/exsettings/notification/AppNotificationSettings;->mUid:I

    if-eq v7, v12, :cond_2

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 122
    :cond_2
    const-string/jumbo v7, "AppNotificationSettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Missing extras: app_package was "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 123
    const-string/jumbo v9, "app_uid"

    .line 122
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 123
    const-string/jumbo v9, " was "

    .line 122
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 123
    iget v9, p0, Lcom/android/exsettings/notification/AppNotificationSettings;->mUid:I

    .line 122
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    invoke-direct {p0}, Lcom/android/exsettings/notification/AppNotificationSettings;->toastAndFinish()V

    .line 125
    return-void

    .line 117
    .end local v4    # "pkg":Ljava/lang/String;
    :cond_3
    const-string/jumbo v7, "app_package"

    invoke-virtual {v2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "pkg":Ljava/lang/String;
    goto :goto_0

    .line 120
    :cond_4
    const-string/jumbo v7, "app_uid"

    invoke-virtual {v2, v7, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    goto :goto_1

    .line 128
    :cond_5
    sget-boolean v7, Lcom/android/exsettings/notification/AppNotificationSettings;->DEBUG:Z

    if-eqz v7, :cond_6

    const-string/jumbo v7, "AppNotificationSettings"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Load details for pkg="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " uid="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/exsettings/notification/AppNotificationSettings;->mUid:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    :cond_6
    invoke-virtual {p0}, Lcom/android/exsettings/notification/AppNotificationSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 130
    .local v5, "pm":Landroid/content/pm/PackageManager;
    iget v7, p0, Lcom/android/exsettings/notification/AppNotificationSettings;->mUid:I

    invoke-static {v5, v4, v7}, Lcom/android/exsettings/notification/AppNotificationSettings;->findPackageInfo(Landroid/content/pm/PackageManager;Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 131
    .local v1, "info":Landroid/content/pm/PackageInfo;
    if-nez v1, :cond_7

    .line 132
    const-string/jumbo v7, "AppNotificationSettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Failed to find package info: app_package was "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 133
    const-string/jumbo v9, ", "

    .line 132
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 133
    const-string/jumbo v9, "app_uid"

    .line 132
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 133
    const-string/jumbo v9, " was "

    .line 132
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 133
    iget v9, p0, Lcom/android/exsettings/notification/AppNotificationSettings;->mUid:I

    .line 132
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    invoke-direct {p0}, Lcom/android/exsettings/notification/AppNotificationSettings;->toastAndFinish()V

    .line 135
    return-void

    .line 137
    :cond_7
    invoke-static {v5, v1}, Lcom/android/exsettings/Utils;->isSystemPackage(Landroid/content/pm/PackageManager;Landroid/content/pm/PackageInfo;)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/exsettings/notification/AppNotificationSettings;->mIsSystemPackage:Z

    .line 139
    const v7, 0x7f08000b

    invoke-virtual {p0, v7}, Lcom/android/exsettings/notification/AppNotificationSettings;->addPreferencesFromResource(I)V

    .line 140
    const-string/jumbo v7, "block"

    invoke-virtual {p0, v7}, Lcom/android/exsettings/notification/AppNotificationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/SwitchPreference;

    iput-object v7, p0, Lcom/android/exsettings/notification/AppNotificationSettings;->mBlock:Landroid/preference/SwitchPreference;

    .line 141
    const-string/jumbo v7, "priority"

    invoke-virtual {p0, v7}, Lcom/android/exsettings/notification/AppNotificationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/SwitchPreference;

    iput-object v7, p0, Lcom/android/exsettings/notification/AppNotificationSettings;->mPriority:Landroid/preference/SwitchPreference;

    .line 142
    const-string/jumbo v7, "peekable"

    invoke-virtual {p0, v7}, Lcom/android/exsettings/notification/AppNotificationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/SwitchPreference;

    iput-object v7, p0, Lcom/android/exsettings/notification/AppNotificationSettings;->mPeekable:Landroid/preference/SwitchPreference;

    .line 143
    const-string/jumbo v7, "sensitive"

    invoke-virtual {p0, v7}, Lcom/android/exsettings/notification/AppNotificationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/SwitchPreference;

    iput-object v7, p0, Lcom/android/exsettings/notification/AppNotificationSettings;->mSensitive:Landroid/preference/SwitchPreference;

    .line 144
    const-string/jumbo v7, "show_on_keyguard"

    invoke-virtual {p0, v7}, Lcom/android/exsettings/notification/AppNotificationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/SwitchPreference;

    iput-object v7, p0, Lcom/android/exsettings/notification/AppNotificationSettings;->mShowOnKeyguard:Landroid/preference/SwitchPreference;

    .line 145
    const-string/jumbo v7, "no_ongoing_on_keyguard"

    invoke-virtual {p0, v7}, Lcom/android/exsettings/notification/AppNotificationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/SwitchPreference;

    iput-object v7, p0, Lcom/android/exsettings/notification/AppNotificationSettings;->mShowNoOngoingOnKeyguard:Landroid/preference/SwitchPreference;

    .line 147
    iget-object v7, p0, Lcom/android/exsettings/notification/AppNotificationSettings;->mBackend:Lcom/android/exsettings/notification/NotificationBackend;

    iget-object v10, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v7, v5, v10}, Lcom/android/exsettings/notification/NotificationBackend;->loadAppRow(Landroid/content/pm/PackageManager;Landroid/content/pm/ApplicationInfo;)Lcom/android/exsettings/notification/NotificationBackend$AppRow;

    move-result-object v7

    iput-object v7, p0, Lcom/android/exsettings/notification/AppNotificationSettings;->mAppRow:Lcom/android/exsettings/notification/NotificationBackend$AppRow;

    .line 150
    new-instance v6, Landroid/util/ArrayMap;

    invoke-direct {v6}, Landroid/util/ArrayMap;-><init>()V

    .line 151
    .local v6, "rows":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/exsettings/notification/NotificationBackend$AppRow;>;"
    iget-object v7, p0, Lcom/android/exsettings/notification/AppNotificationSettings;->mAppRow:Lcom/android/exsettings/notification/NotificationBackend$AppRow;

    iget-object v7, v7, Lcom/android/exsettings/notification/NotificationBackend$AppRow;->pkg:Ljava/lang/String;

    iget-object v10, p0, Lcom/android/exsettings/notification/AppNotificationSettings;->mAppRow:Lcom/android/exsettings/notification/NotificationBackend$AppRow;

    invoke-virtual {v6, v7, v10}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    invoke-virtual {p0}, Lcom/android/exsettings/notification/AppNotificationSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-static {v7, v6}, Lcom/android/exsettings/notification/AppNotificationSettings;->collectConfigActivities(Landroid/content/pm/PackageManager;Landroid/util/ArrayMap;)V

    .line 154
    iget-object v7, p0, Lcom/android/exsettings/notification/AppNotificationSettings;->mBlock:Landroid/preference/SwitchPreference;

    iget-object v10, p0, Lcom/android/exsettings/notification/AppNotificationSettings;->mAppRow:Lcom/android/exsettings/notification/NotificationBackend$AppRow;

    iget-boolean v10, v10, Lcom/android/exsettings/notification/NotificationBackend$AppRow;->banned:Z

    invoke-virtual {v7, v10}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 155
    iget-object v7, p0, Lcom/android/exsettings/notification/AppNotificationSettings;->mAppRow:Lcom/android/exsettings/notification/NotificationBackend$AppRow;

    iget-boolean v7, v7, Lcom/android/exsettings/notification/NotificationBackend$AppRow;->banned:Z

    invoke-direct {p0, v7}, Lcom/android/exsettings/notification/AppNotificationSettings;->updateDependents(Z)V

    .line 156
    iget-object v7, p0, Lcom/android/exsettings/notification/AppNotificationSettings;->mPriority:Landroid/preference/SwitchPreference;

    iget-object v10, p0, Lcom/android/exsettings/notification/AppNotificationSettings;->mAppRow:Lcom/android/exsettings/notification/NotificationBackend$AppRow;

    iget-boolean v10, v10, Lcom/android/exsettings/notification/NotificationBackend$AppRow;->priority:Z

    invoke-virtual {v7, v10}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 157
    iget-object v7, p0, Lcom/android/exsettings/notification/AppNotificationSettings;->mPeekable:Landroid/preference/SwitchPreference;

    iget-object v10, p0, Lcom/android/exsettings/notification/AppNotificationSettings;->mAppRow:Lcom/android/exsettings/notification/NotificationBackend$AppRow;

    iget-boolean v10, v10, Lcom/android/exsettings/notification/NotificationBackend$AppRow;->peekable:Z

    invoke-virtual {v7, v10}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 158
    iget-object v7, p0, Lcom/android/exsettings/notification/AppNotificationSettings;->mSensitive:Landroid/preference/SwitchPreference;

    iget-object v10, p0, Lcom/android/exsettings/notification/AppNotificationSettings;->mAppRow:Lcom/android/exsettings/notification/NotificationBackend$AppRow;

    iget-boolean v10, v10, Lcom/android/exsettings/notification/NotificationBackend$AppRow;->sensitive:Z

    invoke-virtual {v7, v10}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 160
    iget-object v7, p0, Lcom/android/exsettings/notification/AppNotificationSettings;->mBlock:Landroid/preference/SwitchPreference;

    new-instance v10, Lcom/android/exsettings/notification/AppNotificationSettings$1;

    invoke-direct {v10, p0, v4}, Lcom/android/exsettings/notification/AppNotificationSettings$1;-><init>(Lcom/android/exsettings/notification/AppNotificationSettings;Ljava/lang/String;)V

    invoke-virtual {v7, v10}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 175
    iget-object v7, p0, Lcom/android/exsettings/notification/AppNotificationSettings;->mPriority:Landroid/preference/SwitchPreference;

    new-instance v10, Lcom/android/exsettings/notification/AppNotificationSettings$2;

    invoke-direct {v10, p0, v4}, Lcom/android/exsettings/notification/AppNotificationSettings$2;-><init>(Lcom/android/exsettings/notification/AppNotificationSettings;Ljava/lang/String;)V

    invoke-virtual {v7, v10}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 183
    iget-object v7, p0, Lcom/android/exsettings/notification/AppNotificationSettings;->mPeekable:Landroid/preference/SwitchPreference;

    new-instance v10, Lcom/android/exsettings/notification/AppNotificationSettings$3;

    invoke-direct {v10, p0, v4}, Lcom/android/exsettings/notification/AppNotificationSettings$3;-><init>(Lcom/android/exsettings/notification/AppNotificationSettings;Ljava/lang/String;)V

    invoke-virtual {v7, v10}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 191
    iget-object v7, p0, Lcom/android/exsettings/notification/AppNotificationSettings;->mSensitive:Landroid/preference/SwitchPreference;

    new-instance v10, Lcom/android/exsettings/notification/AppNotificationSettings$4;

    invoke-direct {v10, p0, v4}, Lcom/android/exsettings/notification/AppNotificationSettings$4;-><init>(Lcom/android/exsettings/notification/AppNotificationSettings;Ljava/lang/String;)V

    invoke-virtual {v7, v10}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 199
    iget-object v7, p0, Lcom/android/exsettings/notification/AppNotificationSettings;->mAppRow:Lcom/android/exsettings/notification/NotificationBackend$AppRow;

    iget-object v7, v7, Lcom/android/exsettings/notification/NotificationBackend$AppRow;->settingsIntent:Landroid/content/Intent;

    if-eqz v7, :cond_8

    .line 200
    const-string/jumbo v7, "app_settings"

    invoke-virtual {p0, v7}, Lcom/android/exsettings/notification/AppNotificationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    .line 201
    new-instance v10, Lcom/android/exsettings/notification/AppNotificationSettings$5;

    invoke-direct {v10, p0}, Lcom/android/exsettings/notification/AppNotificationSettings$5;-><init>(Lcom/android/exsettings/notification/AppNotificationSettings;)V

    .line 200
    invoke-virtual {v7, v10}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 212
    :goto_2
    iget-object v7, p0, Lcom/android/exsettings/notification/AppNotificationSettings;->mBackend:Lcom/android/exsettings/notification/NotificationBackend;

    iget v10, p0, Lcom/android/exsettings/notification/AppNotificationSettings;->mUid:I

    invoke-virtual {v7, v4, v10}, Lcom/android/exsettings/notification/NotificationBackend;->getShowNotificationForPackageOnKeyguard(Ljava/lang/String;I)I

    move-result v3

    .line 213
    .local v3, "keyguard":I
    iget-object v10, p0, Lcom/android/exsettings/notification/AppNotificationSettings;->mShowOnKeyguard:Landroid/preference/SwitchPreference;

    and-int/lit8 v7, v3, 0x1

    if-eqz v7, :cond_9

    move v7, v8

    :goto_3
    invoke-virtual {v10, v7}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 214
    iget-object v7, p0, Lcom/android/exsettings/notification/AppNotificationSettings;->mShowNoOngoingOnKeyguard:Landroid/preference/SwitchPreference;

    .line 215
    and-int/lit8 v10, v3, 0x2

    if-eqz v10, :cond_a

    .line 214
    :goto_4
    invoke-virtual {v7, v8}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 217
    iget-object v7, p0, Lcom/android/exsettings/notification/AppNotificationSettings;->mShowOnKeyguard:Landroid/preference/SwitchPreference;

    new-instance v8, Lcom/android/exsettings/notification/AppNotificationSettings$6;

    invoke-direct {v8, p0, v4}, Lcom/android/exsettings/notification/AppNotificationSettings$6;-><init>(Lcom/android/exsettings/notification/AppNotificationSettings;Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 232
    iget-object v7, p0, Lcom/android/exsettings/notification/AppNotificationSettings;->mShowNoOngoingOnKeyguard:Landroid/preference/SwitchPreference;

    new-instance v8, Lcom/android/exsettings/notification/AppNotificationSettings$7;

    invoke-direct {v8, p0, v4}, Lcom/android/exsettings/notification/AppNotificationSettings$7;-><init>(Lcom/android/exsettings/notification/AppNotificationSettings;Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 248
    iget-boolean v7, p0, Lcom/android/exsettings/notification/AppNotificationSettings;->mIsSystemPackage:Z

    if-nez v7, :cond_b

    invoke-direct {p0}, Lcom/android/exsettings/notification/AppNotificationSettings;->getLockscreenNotificationsEnabled()Z

    move-result v7

    if-eqz v7, :cond_b

    .line 103
    :goto_5
    return-void

    .line 209
    .end local v3    # "keyguard":I
    :cond_8
    const-string/jumbo v7, "app_settings"

    invoke-virtual {p0, v7}, Lcom/android/exsettings/notification/AppNotificationSettings;->removePreference(Ljava/lang/String;)V

    goto :goto_2

    .restart local v3    # "keyguard":I
    :cond_9
    move v7, v9

    .line 213
    goto :goto_3

    :cond_a
    move v8, v9

    .line 215
    goto :goto_4

    .line 249
    :cond_b
    invoke-virtual {p0}, Lcom/android/exsettings/notification/AppNotificationSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    iget-object v8, p0, Lcom/android/exsettings/notification/AppNotificationSettings;->mShowNoOngoingOnKeyguard:Landroid/preference/SwitchPreference;

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 250
    invoke-virtual {p0}, Lcom/android/exsettings/notification/AppNotificationSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    iget-object v8, p0, Lcom/android/exsettings/notification/AppNotificationSettings;->mShowOnKeyguard:Landroid/preference/SwitchPreference;

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_5
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 256
    invoke-super {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;->onResume()V

    .line 257
    iget v0, p0, Lcom/android/exsettings/notification/AppNotificationSettings;->mUid:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/exsettings/notification/AppNotificationSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget v1, p0, Lcom/android/exsettings/notification/AppNotificationSettings;->mUid:I

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 259
    invoke-virtual {p0}, Lcom/android/exsettings/notification/AppNotificationSettings;->finish()V

    .line 255
    :cond_0
    return-void
.end method
