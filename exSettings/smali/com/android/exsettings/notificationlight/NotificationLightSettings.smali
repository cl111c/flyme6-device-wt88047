.class public Lcom/android/exsettings/notificationlight/NotificationLightSettings;
.super Lcom/android/exsettings/SettingsPreferenceFragment;
.source "NotificationLightSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exsettings/notificationlight/NotificationLightSettings$Package;
    }
.end annotation


# instance fields
.field private mApplicationPrefList:Landroid/preference/PreferenceGroup;

.field private mAutoGenerateColors:Lcom/android/exsettings/cyanogenmod/CMSystemSettingSwitchPreference;

.field private mCallPref:Lcom/android/exsettings/notificationlight/ApplicationLightPreference;

.field private mCustomEnabledPref:Lcom/android/exsettings/cyanogenmod/CMSystemSettingSwitchPreference;

.field private mDefaultColor:I

.field private mDefaultLedOff:I

.field private mDefaultLedOn:I

.field private mDefaultPref:Lcom/android/exsettings/notificationlight/ApplicationLightPreference;

.field private mEnabledPref:Lcom/android/exsettings/cyanogenmod/SystemSettingSwitchPreference;

.field private mMenu:Landroid/view/Menu;

.field private mMultiColorLed:Z

.field private mMultipleLedsEnabledPref:Lcom/android/exsettings/cyanogenmod/CMSystemSettingSwitchPreference;

.field private mNotificationLedBrightnessPref:Landroid/preference/PreferenceScreen;

.field private mPackageAdapter:Lcom/android/exsettings/cyanogenmod/PackageListAdapter;

.field private mPackageList:Ljava/lang/String;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mPackages:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/exsettings/notificationlight/NotificationLightSettings$Package;",
            ">;"
        }
    .end annotation
.end field

.field private mScreenOnLightsPref:Lcom/android/exsettings/cyanogenmod/CMSystemSettingSwitchPreference;

.field private mVoicemailPref:Lcom/android/exsettings/notificationlight/ApplicationLightPreference;


# direct methods
.method static synthetic -wrap0(Lcom/android/exsettings/notificationlight/NotificationLightSettings;Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/exsettings/notificationlight/NotificationLightSettings;->addCustomApplicationPref(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/exsettings/notificationlight/NotificationLightSettings;Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/exsettings/notificationlight/NotificationLightSettings;->removeCustomApplicationPref(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private addCustomApplicationPref(Ljava/lang/String;)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 318
    iget-object v2, p0, Lcom/android/exsettings/notificationlight/NotificationLightSettings;->mPackages:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/exsettings/notificationlight/NotificationLightSettings$Package;

    .line 319
    .local v1, "pkg":Lcom/android/exsettings/notificationlight/NotificationLightSettings$Package;
    if-nez v1, :cond_0

    .line 320
    invoke-direct {p0, p1}, Lcom/android/exsettings/notificationlight/NotificationLightSettings;->getInitialColorForPackage(Ljava/lang/String;)I

    move-result v0

    .line 321
    .local v0, "color":I
    new-instance v1, Lcom/android/exsettings/notificationlight/NotificationLightSettings$Package;

    .end local v1    # "pkg":Lcom/android/exsettings/notificationlight/NotificationLightSettings$Package;
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Lcom/android/exsettings/notificationlight/NotificationLightSettings;->mDefaultLedOn:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, p0, Lcom/android/exsettings/notificationlight/NotificationLightSettings;->mDefaultLedOff:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v1, p1, v2, v3, v4}, Lcom/android/exsettings/notificationlight/NotificationLightSettings$Package;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 322
    .restart local v1    # "pkg":Lcom/android/exsettings/notificationlight/NotificationLightSettings$Package;
    iget-object v2, p0, Lcom/android/exsettings/notificationlight/NotificationLightSettings;->mPackages:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/exsettings/notificationlight/NotificationLightSettings;->savePackageList(Z)V

    .line 324
    invoke-direct {p0}, Lcom/android/exsettings/notificationlight/NotificationLightSettings;->refreshCustomApplicationPrefs()V

    .line 317
    .end local v0    # "color":I
    :cond_0
    return-void
.end method

.method private getInitialColorForPackage(Ljava/lang/String;)I
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    .line 303
    invoke-virtual {p0}, Lcom/android/exsettings/notificationlight/NotificationLightSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 304
    const-string/jumbo v7, "notification_light_color_auto"

    iget-boolean v4, p0, Lcom/android/exsettings/notificationlight/NotificationLightSettings;->mMultiColorLed:Z

    if-eqz v4, :cond_1

    move v4, v5

    .line 303
    :goto_0
    invoke-static {v6, v7, v4}, Lcyanogenmod/providers/CMSettings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v5, :cond_2

    const/4 v0, 0x1

    .line 305
    .local v0, "autoColor":Z
    :goto_1
    iget v1, p0, Lcom/android/exsettings/notificationlight/NotificationLightSettings;->mDefaultColor:I

    .line 306
    .local v1, "color":I
    if-eqz v0, :cond_0

    .line 308
    :try_start_0
    iget-object v4, p0, Lcom/android/exsettings/notificationlight/NotificationLightSettings;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v4, p1}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 309
    .local v3, "icon":Landroid/graphics/drawable/Drawable;
    invoke-static {v3}, Lcyanogenmod/util/ColorUtils;->generateAlertColorFromDrawable(Landroid/graphics/drawable/Drawable;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 314
    .end local v3    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_0
    :goto_2
    return v1

    .line 304
    .end local v0    # "autoColor":Z
    .end local v1    # "color":I
    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    .line 303
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "autoColor":Z
    goto :goto_1

    .line 310
    .restart local v1    # "color":I
    :catch_0
    move-exception v2

    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_2
.end method

.method private parsePackageList()Z
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 336
    invoke-virtual {p0}, Lcom/android/exsettings/notificationlight/NotificationLightSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 337
    const-string/jumbo v6, "notification_light_pulse_custom_values"

    .line 336
    invoke-static {v5, v6}, Lcyanogenmod/providers/CMSettings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 339
    .local v1, "baseString":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/exsettings/notificationlight/NotificationLightSettings;->mPackageList:Ljava/lang/String;

    invoke-static {v5, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 340
    return v4

    .line 343
    :cond_0
    iput-object v1, p0, Lcom/android/exsettings/notificationlight/NotificationLightSettings;->mPackageList:Ljava/lang/String;

    .line 344
    iget-object v5, p0, Lcom/android/exsettings/notificationlight/NotificationLightSettings;->mPackages:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->clear()V

    .line 346
    if-eqz v1, :cond_3

    .line 347
    const-string/jumbo v5, "\\|"

    invoke-static {v1, v5}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 348
    .local v0, "array":[Ljava/lang/String;
    array-length v5, v0

    :goto_0
    if-ge v4, v5, :cond_3

    aget-object v2, v0, v4

    .line 349
    .local v2, "item":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 348
    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 352
    :cond_2
    invoke-static {v2}, Lcom/android/exsettings/notificationlight/NotificationLightSettings$Package;->fromString(Ljava/lang/String;)Lcom/android/exsettings/notificationlight/NotificationLightSettings$Package;

    move-result-object v3

    .line 353
    .local v3, "pkg":Lcom/android/exsettings/notificationlight/NotificationLightSettings$Package;
    if-eqz v3, :cond_1

    .line 354
    iget-object v6, p0, Lcom/android/exsettings/notificationlight/NotificationLightSettings;->mPackages:Ljava/util/Map;

    iget-object v7, v3, Lcom/android/exsettings/notificationlight/NotificationLightSettings$Package;->name:Ljava/lang/String;

    invoke-interface {v6, v7, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 359
    .end local v0    # "array":[Ljava/lang/String;
    .end local v2    # "item":Ljava/lang/String;
    .end local v3    # "pkg":Lcom/android/exsettings/notificationlight/NotificationLightSettings$Package;
    :cond_3
    const/4 v4, 0x1

    return v4
.end method

.method private refreshCustomApplicationPrefs()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    .line 259
    invoke-virtual {p0}, Lcom/android/exsettings/notificationlight/NotificationLightSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 261
    .local v0, "context":Landroid/content/Context;
    invoke-direct {p0}, Lcom/android/exsettings/notificationlight/NotificationLightSettings;->parsePackageList()Z

    move-result v9

    if-nez v9, :cond_0

    .line 262
    return-void

    .line 266
    :cond_0
    iget-object v9, p0, Lcom/android/exsettings/notificationlight/NotificationLightSettings;->mApplicationPrefList:Landroid/preference/PreferenceGroup;

    if-eqz v9, :cond_2

    .line 267
    iget-object v9, p0, Lcom/android/exsettings/notificationlight/NotificationLightSettings;->mApplicationPrefList:Landroid/preference/PreferenceGroup;

    invoke-virtual {v9}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 269
    iget-object v9, p0, Lcom/android/exsettings/notificationlight/NotificationLightSettings;->mPackages:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "pkg$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/exsettings/notificationlight/NotificationLightSettings$Package;

    .line 271
    .local v3, "pkg":Lcom/android/exsettings/notificationlight/NotificationLightSettings$Package;
    :try_start_0
    iget-object v9, p0, Lcom/android/exsettings/notificationlight/NotificationLightSettings;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v10, v3, Lcom/android/exsettings/notificationlight/NotificationLightSettings$Package;->name:Ljava/lang/String;

    .line 272
    const/16 v11, 0x80

    .line 271
    invoke-virtual {v9, v10, v11}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 274
    .local v2, "info":Landroid/content/pm/PackageInfo;
    new-instance v6, Lcom/android/exsettings/notificationlight/ApplicationLightPreference;

    iget-object v9, v3, Lcom/android/exsettings/notificationlight/NotificationLightSettings$Package;->color:Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iget-object v10, v3, Lcom/android/exsettings/notificationlight/NotificationLightSettings$Package;->timeon:Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    iget-object v11, v3, Lcom/android/exsettings/notificationlight/NotificationLightSettings$Package;->timeoff:Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-direct {v6, v0, v9, v10, v11}, Lcom/android/exsettings/notificationlight/ApplicationLightPreference;-><init>(Landroid/content/Context;III)V

    .line 276
    .local v6, "pref":Lcom/android/exsettings/notificationlight/ApplicationLightPreference;
    iget-object v9, v3, Lcom/android/exsettings/notificationlight/NotificationLightSettings$Package;->name:Ljava/lang/String;

    invoke-virtual {v6, v9}, Lcom/android/exsettings/notificationlight/ApplicationLightPreference;->setKey(Ljava/lang/String;)V

    .line 277
    iget-object v9, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v10, p0, Lcom/android/exsettings/notificationlight/NotificationLightSettings;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v9, v10}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/android/exsettings/notificationlight/ApplicationLightPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 278
    iget-object v9, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v10, p0, Lcom/android/exsettings/notificationlight/NotificationLightSettings;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v9, v10}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/android/exsettings/notificationlight/ApplicationLightPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 279
    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Lcom/android/exsettings/notificationlight/ApplicationLightPreference;->setPersistent(Z)V

    .line 280
    invoke-virtual {v6, p0}, Lcom/android/exsettings/notificationlight/ApplicationLightPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 282
    iget-object v9, p0, Lcom/android/exsettings/notificationlight/NotificationLightSettings;->mApplicationPrefList:Landroid/preference/PreferenceGroup;

    invoke-virtual {v9, v6}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 283
    .end local v2    # "info":Landroid/content/pm/PackageInfo;
    .end local v6    # "pref":Lcom/android/exsettings/notificationlight/ApplicationLightPreference;
    :catch_0
    move-exception v1

    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0

    .line 289
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v3    # "pkg":Lcom/android/exsettings/notificationlight/NotificationLightSettings$Package;
    :cond_1
    iget-object v9, p0, Lcom/android/exsettings/notificationlight/NotificationLightSettings;->mPackages:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->size()I

    move-result v9

    if-nez v9, :cond_2

    .line 290
    invoke-virtual {p0}, Lcom/android/exsettings/notificationlight/NotificationLightSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 291
    const v10, 0x7f0c0131

    .line 290
    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 292
    .local v7, "summary":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/exsettings/notificationlight/NotificationLightSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 293
    const v10, 0x7f0c0125

    .line 292
    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 294
    .local v8, "useCustom":Ljava/lang/String;
    new-instance v5, Landroid/preference/Preference;

    invoke-direct {v5, v0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 295
    .local v5, "pref":Landroid/preference/Preference;
    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v8, v9, v12

    invoke-static {v7, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 296
    invoke-virtual {v5, v12}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 297
    iget-object v9, p0, Lcom/android/exsettings/notificationlight/NotificationLightSettings;->mApplicationPrefList:Landroid/preference/PreferenceGroup;

    invoke-virtual {v9, v5}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 258
    .end local v4    # "pkg$iterator":Ljava/util/Iterator;
    .end local v5    # "pref":Landroid/preference/Preference;
    .end local v7    # "summary":Ljava/lang/String;
    .end local v8    # "useCustom":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private refreshDefault()V
    .locals 12

    .prologue
    .line 221
    invoke-virtual {p0}, Lcom/android/exsettings/notificationlight/NotificationLightSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 223
    .local v4, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v10, "notification_light_pulse_default_color"

    iget v11, p0, Lcom/android/exsettings/notificationlight/NotificationLightSettings;->mDefaultColor:I

    .line 222
    invoke-static {v4, v10, v11}, Lcyanogenmod/providers/CMSettings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 225
    .local v3, "color":I
    const-string/jumbo v10, "notification_light_pulse_default_led_on"

    iget v11, p0, Lcom/android/exsettings/notificationlight/NotificationLightSettings;->mDefaultLedOn:I

    .line 224
    invoke-static {v4, v10, v11}, Lcyanogenmod/providers/CMSettings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    .line 227
    .local v6, "timeOn":I
    const-string/jumbo v10, "notification_light_pulse_default_led_off"

    iget v11, p0, Lcom/android/exsettings/notificationlight/NotificationLightSettings;->mDefaultLedOff:I

    .line 226
    invoke-static {v4, v10, v11}, Lcyanogenmod/providers/CMSettings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 229
    .local v5, "timeOff":I
    iget-object v10, p0, Lcom/android/exsettings/notificationlight/NotificationLightSettings;->mDefaultPref:Lcom/android/exsettings/notificationlight/ApplicationLightPreference;

    invoke-virtual {v10, v3, v6, v5}, Lcom/android/exsettings/notificationlight/ApplicationLightPreference;->setAllValues(III)V

    .line 232
    iget-object v10, p0, Lcom/android/exsettings/notificationlight/NotificationLightSettings;->mCallPref:Lcom/android/exsettings/notificationlight/ApplicationLightPreference;

    if-eqz v10, :cond_0

    .line 234
    const-string/jumbo v10, "notification_light_pulse_call_color"

    iget v11, p0, Lcom/android/exsettings/notificationlight/NotificationLightSettings;->mDefaultColor:I

    .line 233
    invoke-static {v4, v10, v11}, Lcyanogenmod/providers/CMSettings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 236
    .local v0, "callColor":I
    const-string/jumbo v10, "notification_light_pulse_call_led_on"

    iget v11, p0, Lcom/android/exsettings/notificationlight/NotificationLightSettings;->mDefaultLedOn:I

    .line 235
    invoke-static {v4, v10, v11}, Lcyanogenmod/providers/CMSettings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 238
    .local v2, "callTimeOn":I
    const-string/jumbo v10, "notification_light_pulse_call_led_off"

    iget v11, p0, Lcom/android/exsettings/notificationlight/NotificationLightSettings;->mDefaultLedOff:I

    .line 237
    invoke-static {v4, v10, v11}, Lcyanogenmod/providers/CMSettings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 240
    .local v1, "callTimeOff":I
    iget-object v10, p0, Lcom/android/exsettings/notificationlight/NotificationLightSettings;->mCallPref:Lcom/android/exsettings/notificationlight/ApplicationLightPreference;

    invoke-virtual {v10, v0, v2, v1}, Lcom/android/exsettings/notificationlight/ApplicationLightPreference;->setAllValues(III)V

    .line 243
    .end local v0    # "callColor":I
    .end local v1    # "callTimeOff":I
    .end local v2    # "callTimeOn":I
    :cond_0
    iget-object v10, p0, Lcom/android/exsettings/notificationlight/NotificationLightSettings;->mVoicemailPref:Lcom/android/exsettings/notificationlight/ApplicationLightPreference;

    if-eqz v10, :cond_1

    .line 245
    const-string/jumbo v10, "notification_light_pulse_vmail_color"

    iget v11, p0, Lcom/android/exsettings/notificationlight/NotificationLightSettings;->mDefaultColor:I

    .line 244
    invoke-static {v4, v10, v11}, Lcyanogenmod/providers/CMSettings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    .line 247
    .local v7, "vmailColor":I
    const-string/jumbo v10, "notification_light_pulse_vmail_led_on"

    iget v11, p0, Lcom/android/exsettings/notificationlight/NotificationLightSettings;->mDefaultLedOn:I

    .line 246
    invoke-static {v4, v10, v11}, Lcyanogenmod/providers/CMSettings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    .line 249
    .local v9, "vmailTimeOn":I
    const-string/jumbo v10, "notification_light_pulse_vmail_led_off"

    iget v11, p0, Lcom/android/exsettings/notificationlight/NotificationLightSettings;->mDefaultLedOff:I

    .line 248
    invoke-static {v4, v10, v11}, Lcyanogenmod/providers/CMSettings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    .line 251
    .local v8, "vmailTimeOff":I
    iget-object v10, p0, Lcom/android/exsettings/notificationlight/NotificationLightSettings;->mVoicemailPref:Lcom/android/exsettings/notificationlight/ApplicationLightPreference;

    invoke-virtual {v10, v7, v9, v8}, Lcom/android/exsettings/notificationlight/ApplicationLightPreference;->setAllValues(III)V

    .line 254
    .end local v7    # "vmailColor":I
    .end local v8    # "vmailTimeOff":I
    .end local v9    # "vmailTimeOn":I
    :cond_1
    const-string/jumbo v10, "applications_list"

    invoke-virtual {p0, v10}, Lcom/android/exsettings/notificationlight/NotificationLightSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/PreferenceGroup;

    iput-object v10, p0, Lcom/android/exsettings/notificationlight/NotificationLightSettings;->mApplicationPrefList:Landroid/preference/PreferenceGroup;

    .line 255
    iget-object v10, p0, Lcom/android/exsettings/notificationlight/NotificationLightSettings;->mApplicationPrefList:Landroid/preference/PreferenceGroup;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/preference/PreferenceGroup;->setOrderingAsAdded(Z)V

    .line 220
    return-void
.end method

.method private removeCustomApplicationPref(Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 329
    iget-object v0, p0, Lcom/android/exsettings/notificationlight/NotificationLightSettings;->mPackages:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 330
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/exsettings/notificationlight/NotificationLightSettings;->savePackageList(Z)V

    .line 331
    invoke-direct {p0}, Lcom/android/exsettings/notificationlight/NotificationLightSettings;->refreshCustomApplicationPrefs()V

    .line 328
    :cond_0
    return-void
.end method

.method private savePackageList(Z)V
    .locals 6
    .param p1, "preferencesUpdated"    # Z

    .prologue
    .line 363
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 364
    .local v2, "settings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/android/exsettings/notificationlight/NotificationLightSettings;->mPackages:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "app$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/exsettings/notificationlight/NotificationLightSettings$Package;

    .line 365
    .local v0, "app":Lcom/android/exsettings/notificationlight/NotificationLightSettings$Package;
    invoke-virtual {v0}, Lcom/android/exsettings/notificationlight/NotificationLightSettings$Package;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 367
    .end local v0    # "app":Lcom/android/exsettings/notificationlight/NotificationLightSettings$Package;
    :cond_0
    const-string/jumbo v4, "|"

    invoke-static {v4, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    .line 368
    .local v3, "value":Ljava/lang/String;
    if-eqz p1, :cond_1

    .line 369
    iput-object v3, p0, Lcom/android/exsettings/notificationlight/NotificationLightSettings;->mPackageList:Ljava/lang/String;

    .line 371
    :cond_1
    invoke-virtual {p0}, Lcom/android/exsettings/notificationlight/NotificationLightSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 372
    const-string/jumbo v5, "notification_light_pulse_custom_values"

    .line 371
    invoke-static {v4, v5, v3}, Lcyanogenmod/providers/CMSettings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 362
    return-void
.end method

.method private setChildrenStarted(Landroid/preference/PreferenceGroup;Z)V
    .locals 5
    .param p1, "group"    # Landroid/preference/PreferenceGroup;
    .param p2, "started"    # Z

    .prologue
    .line 204
    invoke-virtual {p1}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v1

    .line 205
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_3

    .line 206
    invoke-virtual {p1, v2}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v3

    .line 207
    .local v3, "pref":Landroid/preference/Preference;
    instance-of v4, v3, Lcom/android/exsettings/notificationlight/ApplicationLightPreference;

    if-eqz v4, :cond_2

    move-object v0, v3

    .line 208
    check-cast v0, Lcom/android/exsettings/notificationlight/ApplicationLightPreference;

    .line 209
    .local v0, "ap":Lcom/android/exsettings/notificationlight/ApplicationLightPreference;
    if-eqz p2, :cond_1

    .line 210
    invoke-virtual {v0}, Lcom/android/exsettings/notificationlight/ApplicationLightPreference;->onStart()V

    .line 205
    .end local v0    # "ap":Lcom/android/exsettings/notificationlight/ApplicationLightPreference;
    .end local v3    # "pref":Landroid/preference/Preference;
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 212
    .restart local v0    # "ap":Lcom/android/exsettings/notificationlight/ApplicationLightPreference;
    .restart local v3    # "pref":Landroid/preference/Preference;
    :cond_1
    invoke-virtual {v0}, Lcom/android/exsettings/notificationlight/ApplicationLightPreference;->onStop()V

    goto :goto_1

    .line 214
    .end local v0    # "ap":Lcom/android/exsettings/notificationlight/ApplicationLightPreference;
    :cond_2
    instance-of v4, v3, Landroid/preference/PreferenceGroup;

    if-eqz v4, :cond_0

    .line 215
    check-cast v3, Landroid/preference/PreferenceGroup;

    .end local v3    # "pref":Landroid/preference/Preference;
    invoke-direct {p0, v3, p2}, Lcom/android/exsettings/notificationlight/NotificationLightSettings;->setChildrenStarted(Landroid/preference/PreferenceGroup;Z)V

    goto :goto_1

    .line 203
    :cond_3
    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 179
    const v0, -0x7ffffff5

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x0

    .line 94
    invoke-super {p0, p1}, Lcom/android/exsettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 95
    const v5, 0x7f08003c

    invoke-virtual {p0, v5}, Lcom/android/exsettings/notificationlight/NotificationLightSettings;->addPreferencesFromResource(I)V

    .line 97
    invoke-virtual {p0}, Lcom/android/exsettings/notificationlight/NotificationLightSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    .line 98
    .local v2, "prefSet":Landroid/preference/PreferenceScreen;
    invoke-virtual {p0}, Lcom/android/exsettings/notificationlight/NotificationLightSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 100
    .local v3, "resources":Landroid/content/res/Resources;
    const-string/jumbo v5, "advanced_section"

    invoke-virtual {v2, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    .line 104
    .local v0, "mAdvancedPrefs":Landroid/preference/PreferenceGroup;
    const v5, 0x1060104

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v5

    .line 103
    iput v5, p0, Lcom/android/exsettings/notificationlight/NotificationLightSettings;->mDefaultColor:I

    .line 107
    const v5, 0x10e0056

    .line 106
    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    iput v5, p0, Lcom/android/exsettings/notificationlight/NotificationLightSettings;->mDefaultLedOn:I

    .line 109
    const v5, 0x10e0057

    .line 108
    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    iput v5, p0, Lcom/android/exsettings/notificationlight/NotificationLightSettings;->mDefaultLedOff:I

    .line 112
    const-string/jumbo v5, "notification_light_pulse"

    invoke-virtual {p0, v5}, Lcom/android/exsettings/notificationlight/NotificationLightSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    .line 111
    check-cast v5, Lcom/android/exsettings/cyanogenmod/SystemSettingSwitchPreference;

    iput-object v5, p0, Lcom/android/exsettings/notificationlight/NotificationLightSettings;->mEnabledPref:Lcom/android/exsettings/cyanogenmod/SystemSettingSwitchPreference;

    .line 113
    iget-object v5, p0, Lcom/android/exsettings/notificationlight/NotificationLightSettings;->mEnabledPref:Lcom/android/exsettings/cyanogenmod/SystemSettingSwitchPreference;

    invoke-virtual {v5, p0}, Lcom/android/exsettings/cyanogenmod/SystemSettingSwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 115
    const-string/jumbo v5, "default"

    invoke-virtual {p0, v5}, Lcom/android/exsettings/notificationlight/NotificationLightSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Lcom/android/exsettings/notificationlight/ApplicationLightPreference;

    iput-object v5, p0, Lcom/android/exsettings/notificationlight/NotificationLightSettings;->mDefaultPref:Lcom/android/exsettings/notificationlight/ApplicationLightPreference;

    .line 116
    iget-object v5, p0, Lcom/android/exsettings/notificationlight/NotificationLightSettings;->mDefaultPref:Lcom/android/exsettings/notificationlight/ApplicationLightPreference;

    invoke-virtual {v5, p0}, Lcom/android/exsettings/notificationlight/ApplicationLightPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 119
    const-string/jumbo v5, "notification_light_color_auto"

    invoke-virtual {p0, v5}, Lcom/android/exsettings/notificationlight/NotificationLightSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    .line 118
    check-cast v5, Lcom/android/exsettings/cyanogenmod/CMSystemSettingSwitchPreference;

    iput-object v5, p0, Lcom/android/exsettings/notificationlight/NotificationLightSettings;->mAutoGenerateColors:Lcom/android/exsettings/cyanogenmod/CMSystemSettingSwitchPreference;

    .line 123
    const-string/jumbo v5, "notification_light_brightness_level"

    invoke-virtual {p0, v5}, Lcom/android/exsettings/notificationlight/NotificationLightSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    .line 122
    check-cast v5, Landroid/preference/PreferenceScreen;

    iput-object v5, p0, Lcom/android/exsettings/notificationlight/NotificationLightSettings;->mNotificationLedBrightnessPref:Landroid/preference/PreferenceScreen;

    .line 125
    const-string/jumbo v5, "notification_light_multiple_leds_enable"

    invoke-virtual {p0, v5}, Lcom/android/exsettings/notificationlight/NotificationLightSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    .line 124
    check-cast v5, Lcom/android/exsettings/cyanogenmod/CMSystemSettingSwitchPreference;

    iput-object v5, p0, Lcom/android/exsettings/notificationlight/NotificationLightSettings;->mMultipleLedsEnabledPref:Lcom/android/exsettings/cyanogenmod/CMSystemSettingSwitchPreference;

    .line 127
    const-string/jumbo v5, "notification_light_screen_on_enable"

    invoke-virtual {p0, v5}, Lcom/android/exsettings/notificationlight/NotificationLightSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    .line 126
    check-cast v5, Lcom/android/exsettings/cyanogenmod/CMSystemSettingSwitchPreference;

    iput-object v5, p0, Lcom/android/exsettings/notificationlight/NotificationLightSettings;->mScreenOnLightsPref:Lcom/android/exsettings/cyanogenmod/CMSystemSettingSwitchPreference;

    .line 128
    iget-object v5, p0, Lcom/android/exsettings/notificationlight/NotificationLightSettings;->mScreenOnLightsPref:Lcom/android/exsettings/cyanogenmod/CMSystemSettingSwitchPreference;

    invoke-virtual {v5, p0}, Lcom/android/exsettings/cyanogenmod/CMSystemSettingSwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 130
    const-string/jumbo v5, "notification_light_pulse_custom_enable"

    invoke-virtual {p0, v5}, Lcom/android/exsettings/notificationlight/NotificationLightSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    .line 129
    check-cast v5, Lcom/android/exsettings/cyanogenmod/CMSystemSettingSwitchPreference;

    iput-object v5, p0, Lcom/android/exsettings/notificationlight/NotificationLightSettings;->mCustomEnabledPref:Lcom/android/exsettings/cyanogenmod/CMSystemSettingSwitchPreference;

    .line 131
    iget-object v5, p0, Lcom/android/exsettings/notificationlight/NotificationLightSettings;->mCustomEnabledPref:Lcom/android/exsettings/cyanogenmod/CMSystemSettingSwitchPreference;

    invoke-virtual {v5, p0}, Lcom/android/exsettings/cyanogenmod/CMSystemSettingSwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 133
    const v5, 0x3f050008

    .line 132
    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 134
    iget-object v5, p0, Lcom/android/exsettings/notificationlight/NotificationLightSettings;->mNotificationLedBrightnessPref:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v5}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 139
    :goto_0
    const v5, 0x3f050009

    .line 138
    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    if-nez v5, :cond_1

    .line 140
    iget-object v5, p0, Lcom/android/exsettings/notificationlight/NotificationLightSettings;->mMultipleLedsEnabledPref:Lcom/android/exsettings/cyanogenmod/CMSystemSettingSwitchPreference;

    invoke-virtual {v0, v5}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 146
    :goto_1
    invoke-virtual {p0}, Lcom/android/exsettings/notificationlight/NotificationLightSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-string/jumbo v6, "phone"

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    .line 147
    .local v4, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v5

    if-nez v5, :cond_2

    .line 148
    const-string/jumbo v5, "phone_list"

    invoke-virtual {p0, v5}, Lcom/android/exsettings/notificationlight/NotificationLightSettings;->removePreference(Ljava/lang/String;)V

    .line 157
    :goto_2
    const-string/jumbo v5, "applications_list"

    invoke-virtual {p0, v5}, Lcom/android/exsettings/notificationlight/NotificationLightSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceGroup;

    iput-object v5, p0, Lcom/android/exsettings/notificationlight/NotificationLightSettings;->mApplicationPrefList:Landroid/preference/PreferenceGroup;

    .line 158
    iget-object v5, p0, Lcom/android/exsettings/notificationlight/NotificationLightSettings;->mApplicationPrefList:Landroid/preference/PreferenceGroup;

    invoke-virtual {v5, v7}, Landroid/preference/PreferenceGroup;->setOrderingAsAdded(Z)V

    .line 161
    invoke-virtual {p0}, Lcom/android/exsettings/notificationlight/NotificationLightSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    iput-object v5, p0, Lcom/android/exsettings/notificationlight/NotificationLightSettings;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 162
    new-instance v5, Lcom/android/exsettings/cyanogenmod/PackageListAdapter;

    invoke-virtual {p0}, Lcom/android/exsettings/notificationlight/NotificationLightSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/android/exsettings/cyanogenmod/PackageListAdapter;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/exsettings/notificationlight/NotificationLightSettings;->mPackageAdapter:Lcom/android/exsettings/cyanogenmod/PackageListAdapter;

    .line 164
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, p0, Lcom/android/exsettings/notificationlight/NotificationLightSettings;->mPackages:Ljava/util/Map;

    .line 165
    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Lcom/android/exsettings/notificationlight/NotificationLightSettings;->setHasOptionsMenu(Z)V

    .line 167
    const v5, 0x1120048

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/exsettings/notificationlight/NotificationLightSettings;->mMultiColorLed:Z

    .line 168
    iget-boolean v5, p0, Lcom/android/exsettings/notificationlight/NotificationLightSettings;->mMultiColorLed:Z

    if-nez v5, :cond_3

    .line 169
    invoke-virtual {p0}, Lcom/android/exsettings/notificationlight/NotificationLightSettings;->resetColors()V

    .line 170
    const-string/jumbo v5, "general_section"

    invoke-virtual {v2, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceGroup;

    .line 171
    .local v1, "mGeneralPrefs":Landroid/preference/PreferenceGroup;
    iget-object v5, p0, Lcom/android/exsettings/notificationlight/NotificationLightSettings;->mAutoGenerateColors:Lcom/android/exsettings/cyanogenmod/CMSystemSettingSwitchPreference;

    invoke-virtual {v1, v5}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 93
    .end local v1    # "mGeneralPrefs":Landroid/preference/PreferenceGroup;
    :goto_3
    return-void

    .line 136
    .end local v4    # "tm":Landroid/telephony/TelephonyManager;
    :cond_0
    iget-object v5, p0, Lcom/android/exsettings/notificationlight/NotificationLightSettings;->mNotificationLedBrightnessPref:Landroid/preference/PreferenceScreen;

    invoke-virtual {v5, p0}, Landroid/preference/PreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_0

    .line 142
    :cond_1
    iget-object v5, p0, Lcom/android/exsettings/notificationlight/NotificationLightSettings;->mMultipleLedsEnabledPref:Lcom/android/exsettings/cyanogenmod/CMSystemSettingSwitchPreference;

    invoke-virtual {v5, p0}, Lcom/android/exsettings/cyanogenmod/CMSystemSettingSwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_1

    .line 150
    .restart local v4    # "tm":Landroid/telephony/TelephonyManager;
    :cond_2
    const-string/jumbo v5, "missed_call"

    invoke-virtual {p0, v5}, Lcom/android/exsettings/notificationlight/NotificationLightSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Lcom/android/exsettings/notificationlight/ApplicationLightPreference;

    iput-object v5, p0, Lcom/android/exsettings/notificationlight/NotificationLightSettings;->mCallPref:Lcom/android/exsettings/notificationlight/ApplicationLightPreference;

    .line 151
    iget-object v5, p0, Lcom/android/exsettings/notificationlight/NotificationLightSettings;->mCallPref:Lcom/android/exsettings/notificationlight/ApplicationLightPreference;

    invoke-virtual {v5, p0}, Lcom/android/exsettings/notificationlight/ApplicationLightPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 153
    const-string/jumbo v5, "voicemail"

    invoke-virtual {p0, v5}, Lcom/android/exsettings/notificationlight/NotificationLightSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Lcom/android/exsettings/notificationlight/ApplicationLightPreference;

    iput-object v5, p0, Lcom/android/exsettings/notificationlight/NotificationLightSettings;->mVoicemailPref:Lcom/android/exsettings/notificationlight/ApplicationLightPreference;

    .line 154
    iget-object v5, p0, Lcom/android/exsettings/notificationlight/NotificationLightSettings;->mVoicemailPref:Lcom/android/exsettings/notificationlight/ApplicationLightPreference;

    invoke-virtual {v5, p0}, Lcom/android/exsettings/notificationlight/ApplicationLightPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_2

    .line 173
    :cond_3
    iget-object v5, p0, Lcom/android/exsettings/notificationlight/NotificationLightSettings;->mAutoGenerateColors:Lcom/android/exsettings/cyanogenmod/CMSystemSettingSwitchPreference;

    invoke-virtual {v5, p0}, Lcom/android/exsettings/cyanogenmod/CMSystemSettingSwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_3
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 4
    .param p1, "id"    # I

    .prologue
    .line 495
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/exsettings/notificationlight/NotificationLightSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 497
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    packed-switch p1, :pswitch_data_0

    .line 517
    const/4 v1, 0x0

    .line 519
    :goto_0
    return-object v1

    .line 499
    :pswitch_0
    new-instance v2, Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/android/exsettings/notificationlight/NotificationLightSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 500
    .local v2, "list":Landroid/widget/ListView;
    iget-object v3, p0, Lcom/android/exsettings/notificationlight/NotificationLightSettings;->mPackageAdapter:Lcom/android/exsettings/cyanogenmod/PackageListAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 502
    const v3, 0x7f0c00c7

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 503
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 504
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 506
    .local v1, "dialog":Landroid/app/Dialog;
    new-instance v3, Lcom/android/exsettings/notificationlight/NotificationLightSettings$2;

    invoke-direct {v3, p0, v1}, Lcom/android/exsettings/notificationlight/NotificationLightSettings$2;-><init>(Lcom/android/exsettings/notificationlight/NotificationLightSettings;Landroid/app/Dialog;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_0

    .line 497
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v2, 0x0

    .line 468
    iput-object p1, p0, Lcom/android/exsettings/notificationlight/NotificationLightSettings;->mMenu:Landroid/view/Menu;

    .line 469
    iget-object v0, p0, Lcom/android/exsettings/notificationlight/NotificationLightSettings;->mMenu:Landroid/view/Menu;

    const v1, 0x7f0c0088

    invoke-interface {v0, v2, v2, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 470
    const v1, 0x7f020087

    .line 469
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 471
    const/4 v1, 0x6

    .line 469
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    .line 467
    return-void
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 5
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .line 428
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p0}, Lcom/android/exsettings/notificationlight/NotificationLightSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/PreferenceScreen;->getRootAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    invoke-interface {v2, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/preference/Preference;

    .line 430
    .local v1, "pref":Landroid/preference/Preference;
    iget-object v2, p0, Lcom/android/exsettings/notificationlight/NotificationLightSettings;->mApplicationPrefList:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    if-eq v2, v1, :cond_0

    .line 431
    const/4 v2, 0x0

    return v2

    .line 434
    :cond_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/exsettings/notificationlight/NotificationLightSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 435
    const v3, 0x7f0c010e

    .line 434
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 436
    const v3, 0x7f0c010f

    .line 434
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 437
    const v3, 0x1010355

    .line 434
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 438
    new-instance v3, Lcom/android/exsettings/notificationlight/NotificationLightSettings$1;

    invoke-direct {v3, p0, v1}, Lcom/android/exsettings/notificationlight/NotificationLightSettings$1;-><init>(Lcom/android/exsettings/notificationlight/NotificationLightSettings;Landroid/preference/Preference;)V

    const v4, 0x104000a

    .line 434
    invoke-virtual {v2, v4, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 444
    const/high16 v3, 0x1040000

    const/4 v4, 0x0

    .line 434
    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 446
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 447
    const/4 v2, 0x1

    return v2
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v1, 0x0

    .line 482
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 487
    return v1

    .line 484
    :pswitch_0
    invoke-virtual {p0, v1}, Lcom/android/exsettings/notificationlight/NotificationLightSettings;->showDialog(I)V

    .line 485
    const/4 v0, 0x1

    return v0

    .line 482
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "objValue"    # Ljava/lang/Object;

    .prologue
    .line 451
    iget-object v1, p0, Lcom/android/exsettings/notificationlight/NotificationLightSettings;->mEnabledPref:Lcom/android/exsettings/cyanogenmod/SystemSettingSwitchPreference;

    if-eq p1, v1, :cond_0

    iget-object v1, p0, Lcom/android/exsettings/notificationlight/NotificationLightSettings;->mCustomEnabledPref:Lcom/android/exsettings/cyanogenmod/CMSystemSettingSwitchPreference;

    if-ne p1, v1, :cond_1

    .line 456
    :cond_0
    invoke-virtual {p0}, Lcom/android/exsettings/notificationlight/NotificationLightSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 463
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 452
    :cond_1
    iget-object v1, p0, Lcom/android/exsettings/notificationlight/NotificationLightSettings;->mMultipleLedsEnabledPref:Lcom/android/exsettings/cyanogenmod/CMSystemSettingSwitchPreference;

    if-eq p1, v1, :cond_0

    .line 453
    iget-object v1, p0, Lcom/android/exsettings/notificationlight/NotificationLightSettings;->mNotificationLedBrightnessPref:Landroid/preference/PreferenceScreen;

    if-eq p1, v1, :cond_0

    .line 454
    iget-object v1, p0, Lcom/android/exsettings/notificationlight/NotificationLightSettings;->mScreenOnLightsPref:Lcom/android/exsettings/cyanogenmod/CMSystemSettingSwitchPreference;

    if-eq p1, v1, :cond_0

    .line 455
    iget-object v1, p0, Lcom/android/exsettings/notificationlight/NotificationLightSettings;->mAutoGenerateColors:Lcom/android/exsettings/cyanogenmod/CMSystemSettingSwitchPreference;

    if-eq p1, v1, :cond_0

    move-object v0, p1

    .line 458
    check-cast v0, Lcom/android/exsettings/notificationlight/ApplicationLightPreference;

    .line 459
    .local v0, "lightPref":Lcom/android/exsettings/notificationlight/ApplicationLightPreference;
    invoke-virtual {v0}, Lcom/android/exsettings/notificationlight/ApplicationLightPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/exsettings/notificationlight/ApplicationLightPreference;->getColor()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 460
    invoke-virtual {v0}, Lcom/android/exsettings/notificationlight/ApplicationLightPreference;->getOnValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/exsettings/notificationlight/ApplicationLightPreference;->getOffValue()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 459
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/exsettings/notificationlight/NotificationLightSettings;->updateValues(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 476
    iget-object v1, p0, Lcom/android/exsettings/notificationlight/NotificationLightSettings;->mEnabledPref:Lcom/android/exsettings/cyanogenmod/SystemSettingSwitchPreference;

    invoke-virtual {v1}, Lcom/android/exsettings/cyanogenmod/SystemSettingSwitchPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/exsettings/notificationlight/NotificationLightSettings;->mCustomEnabledPref:Lcom/android/exsettings/cyanogenmod/CMSystemSettingSwitchPreference;

    invoke-virtual {v1}, Lcom/android/exsettings/cyanogenmod/CMSystemSettingSwitchPreference;->isChecked()Z

    move-result v0

    .line 477
    :goto_0
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 475
    return-void

    .line 476
    :cond_0
    const/4 v0, 0x0

    .local v0, "enableAddButton":Z
    goto :goto_0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 184
    invoke-super {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;->onResume()V

    .line 185
    invoke-direct {p0}, Lcom/android/exsettings/notificationlight/NotificationLightSettings;->refreshDefault()V

    .line 186
    invoke-direct {p0}, Lcom/android/exsettings/notificationlight/NotificationLightSettings;->refreshCustomApplicationPrefs()V

    .line 187
    invoke-virtual {p0}, Lcom/android/exsettings/notificationlight/NotificationLightSettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 188
    invoke-virtual {p0}, Lcom/android/exsettings/notificationlight/NotificationLightSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 183
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 193
    invoke-super {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;->onStart()V

    .line 194
    invoke-virtual {p0}, Lcom/android/exsettings/notificationlight/NotificationLightSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/exsettings/notificationlight/NotificationLightSettings;->setChildrenStarted(Landroid/preference/PreferenceGroup;Z)V

    .line 192
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 199
    invoke-super {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;->onStop()V

    .line 200
    invoke-virtual {p0}, Lcom/android/exsettings/notificationlight/NotificationLightSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/exsettings/notificationlight/NotificationLightSettings;->setChildrenStarted(Landroid/preference/PreferenceGroup;Z)V

    .line 198
    return-void
.end method

.method protected resetColors()V
    .locals 3

    .prologue
    .line 417
    invoke-virtual {p0}, Lcom/android/exsettings/notificationlight/NotificationLightSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 420
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v1, "notification_light_pulse_default_color"

    iget v2, p0, Lcom/android/exsettings/notificationlight/NotificationLightSettings;->mDefaultColor:I

    invoke-static {v0, v1, v2}, Lcyanogenmod/providers/CMSettings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 421
    const-string/jumbo v1, "notification_light_pulse_call_color"

    iget v2, p0, Lcom/android/exsettings/notificationlight/NotificationLightSettings;->mDefaultColor:I

    invoke-static {v0, v1, v2}, Lcyanogenmod/providers/CMSettings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 422
    const-string/jumbo v1, "notification_light_pulse_vmail_color"

    iget v2, p0, Lcom/android/exsettings/notificationlight/NotificationLightSettings;->mDefaultColor:I

    invoke-static {v0, v1, v2}, Lcyanogenmod/providers/CMSettings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 424
    invoke-direct {p0}, Lcom/android/exsettings/notificationlight/NotificationLightSettings;->refreshDefault()V

    .line 416
    return-void
.end method

.method protected updateValues(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "color"    # Ljava/lang/Integer;
    .param p3, "timeon"    # Ljava/lang/Integer;
    .param p4, "timeoff"    # Ljava/lang/Integer;

    .prologue
    .line 384
    invoke-virtual {p0}, Lcom/android/exsettings/notificationlight/NotificationLightSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 386
    .local v1, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v2, "default"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 387
    const-string/jumbo v2, "notification_light_pulse_default_color"

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v1, v2, v3}, Lcyanogenmod/providers/CMSettings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 388
    const-string/jumbo v2, "notification_light_pulse_default_led_on"

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v1, v2, v3}, Lcyanogenmod/providers/CMSettings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 389
    const-string/jumbo v2, "notification_light_pulse_default_led_off"

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v1, v2, v3}, Lcyanogenmod/providers/CMSettings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 390
    invoke-direct {p0}, Lcom/android/exsettings/notificationlight/NotificationLightSettings;->refreshDefault()V

    .line 391
    return-void

    .line 392
    :cond_0
    const-string/jumbo v2, "missed_call"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 393
    const-string/jumbo v2, "notification_light_pulse_call_color"

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v1, v2, v3}, Lcyanogenmod/providers/CMSettings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 394
    const-string/jumbo v2, "notification_light_pulse_call_led_on"

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v1, v2, v3}, Lcyanogenmod/providers/CMSettings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 395
    const-string/jumbo v2, "notification_light_pulse_call_led_off"

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v1, v2, v3}, Lcyanogenmod/providers/CMSettings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 396
    invoke-direct {p0}, Lcom/android/exsettings/notificationlight/NotificationLightSettings;->refreshDefault()V

    .line 397
    return-void

    .line 398
    :cond_1
    const-string/jumbo v2, "voicemail"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 399
    const-string/jumbo v2, "notification_light_pulse_vmail_color"

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v1, v2, v3}, Lcyanogenmod/providers/CMSettings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 400
    const-string/jumbo v2, "notification_light_pulse_vmail_led_on"

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v1, v2, v3}, Lcyanogenmod/providers/CMSettings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 401
    const-string/jumbo v2, "notification_light_pulse_vmail_led_off"

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v1, v2, v3}, Lcyanogenmod/providers/CMSettings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 402
    invoke-direct {p0}, Lcom/android/exsettings/notificationlight/NotificationLightSettings;->refreshDefault()V

    .line 403
    return-void

    .line 407
    :cond_2
    iget-object v2, p0, Lcom/android/exsettings/notificationlight/NotificationLightSettings;->mPackages:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/exsettings/notificationlight/NotificationLightSettings$Package;

    .line 408
    .local v0, "app":Lcom/android/exsettings/notificationlight/NotificationLightSettings$Package;
    if-eqz v0, :cond_3

    .line 409
    iput-object p2, v0, Lcom/android/exsettings/notificationlight/NotificationLightSettings$Package;->color:Ljava/lang/Integer;

    .line 410
    iput-object p3, v0, Lcom/android/exsettings/notificationlight/NotificationLightSettings$Package;->timeon:Ljava/lang/Integer;

    .line 411
    iput-object p4, v0, Lcom/android/exsettings/notificationlight/NotificationLightSettings$Package;->timeoff:Ljava/lang/Integer;

    .line 412
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/exsettings/notificationlight/NotificationLightSettings;->savePackageList(Z)V

    .line 383
    :cond_3
    return-void
.end method
