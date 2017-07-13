.class public Lcom/android/exsettings/ButtonSettings;
.super Lcom/android/exsettings/SettingsPreferenceFragment;
.source "ButtonSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mAppSwitchLongPressAction:Landroid/preference/ListPreference;

.field private mAppSwitchPressAction:Landroid/preference/ListPreference;

.field private mAssistLongPressAction:Landroid/preference/ListPreference;

.field private mAssistPressAction:Landroid/preference/ListPreference;

.field private mCameraDoubleTapPowerGesture:Landroid/preference/SwitchPreference;

.field private mCameraLaunch:Landroid/preference/SwitchPreference;

.field private mCameraSleepOnRelease:Landroid/preference/SwitchPreference;

.field private mCameraWakeScreen:Landroid/preference/SwitchPreference;

.field private mDisableNavigationKeys:Landroid/preference/SwitchPreference;

.field private mHandler:Landroid/os/Handler;

.field private mHomeAnswerCall:Landroid/preference/SwitchPreference;

.field private mHomeDoubleTapAction:Landroid/preference/ListPreference;

.field private mHomeLongPressAction:Landroid/preference/ListPreference;

.field private mMenuLongPressAction:Landroid/preference/ListPreference;

.field private mMenuPressAction:Landroid/preference/ListPreference;

.field private mNavigationBarHeight:Landroid/preference/SeekBarPreference;

.field private mNavigationBarLeftPref:Landroid/preference/SwitchPreference;

.field private mNavigationPreferencesCat:Landroid/preference/PreferenceCategory;

.field private mNavigationRecentsLongPressAction:Landroid/preference/ListPreference;

.field private mPowerEndCall:Landroid/preference/SwitchPreference;

.field private mSwapVolumeButtons:Landroid/preference/SwitchPreference;

.field private mVolumeKeyCursorControl:Landroid/preference/ListPreference;

.field private mVolumeMusicControls:Landroid/preference/SwitchPreference;

.field private mVolumeWakeScreen:Landroid/preference/SwitchPreference;


# direct methods
.method static synthetic -get0(Lcom/android/exsettings/ButtonSettings;)Landroid/preference/SwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/ButtonSettings;->mDisableNavigationKeys:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/exsettings/ButtonSettings;)Landroid/preference/PreferenceCategory;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/ButtonSettings;->mNavigationPreferencesCat:Landroid/preference/PreferenceCategory;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/exsettings/ButtonSettings;Z)V
    .locals 0
    .param p1, "navbarEnabled"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/exsettings/ButtonSettings;->updateDisableNavkeysCategories(Z)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private handleActionListChange(Landroid/preference/ListPreference;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 4
    .param p1, "pref"    # Landroid/preference/ListPreference;
    .param p2, "newValue"    # Ljava/lang/Object;
    .param p3, "setting"    # Ljava/lang/String;

    .prologue
    move-object v1, p2

    .line 569
    check-cast v1, Ljava/lang/String;

    .line 570
    .local v1, "value":Ljava/lang/String;
    invoke-virtual {p1, v1}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 571
    .local v0, "index":I
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 572
    invoke-virtual {p0}, Lcom/android/exsettings/ButtonSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v2, p3, v3}, Lcyanogenmod/providers/CMSettings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 568
    return-void
.end method

.method private handleSystemActionListChange(Landroid/preference/ListPreference;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 4
    .param p1, "pref"    # Landroid/preference/ListPreference;
    .param p2, "newValue"    # Ljava/lang/Object;
    .param p3, "setting"    # Ljava/lang/String;

    .prologue
    move-object v1, p2

    .line 576
    check-cast v1, Ljava/lang/String;

    .line 577
    .local v1, "value":Ljava/lang/String;
    invoke-virtual {p1, v1}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 578
    .local v0, "index":I
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 579
    invoke-virtual {p0}, Lcom/android/exsettings/ButtonSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v2, p3, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 575
    return-void
.end method

.method private handleToggleHomeButtonAnswersCallPreferenceClick()V
    .locals 3

    .prologue
    .line 758
    invoke-virtual {p0}, Lcom/android/exsettings/ButtonSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 759
    const-string/jumbo v2, "ring_home_button_behavior"

    iget-object v0, p0, Lcom/android/exsettings/ButtonSettings;->mHomeAnswerCall:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 760
    const/4 v0, 0x2

    .line 758
    :goto_0
    invoke-static {v1, v2, v0}, Lcyanogenmod/providers/CMSettings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 757
    return-void

    .line 761
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private handleTogglePowerButtonEndsCallPreferenceClick()V
    .locals 3

    .prologue
    .line 751
    invoke-virtual {p0}, Lcom/android/exsettings/ButtonSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 752
    const-string/jumbo v2, "incall_power_button_behavior"

    iget-object v0, p0, Lcom/android/exsettings/ButtonSettings;->mPowerEndCall:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 753
    const/4 v0, 0x2

    .line 751
    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 750
    return-void

    .line 754
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private initActionList(Ljava/lang/String;I)Landroid/preference/ListPreference;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    const/4 v2, 0x0

    .line 495
    invoke-virtual {p0}, Lcom/android/exsettings/ButtonSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    .line 496
    .local v0, "list":Landroid/preference/ListPreference;
    if-nez v0, :cond_0

    return-object v2

    .line 497
    :cond_0
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 498
    invoke-virtual {v0}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 499
    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 500
    return-object v0
.end method

.method private initRecentsLongPressAction(Ljava/lang/String;)Landroid/preference/ListPreference;
    .locals 17
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 504
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/ButtonSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/ListPreference;

    .line 505
    .local v9, "list":Landroid/preference/ListPreference;
    move-object/from16 v0, p0

    invoke-virtual {v9, v0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 508
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/ButtonSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    .line 509
    const-string/jumbo v15, "recents_long_press_activity"

    .line 508
    invoke-static {v14, v15}, Lcyanogenmod/providers/CMSettings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 510
    .local v1, "componentString":Ljava/lang/String;
    const/4 v12, 0x0

    .line 511
    .local v12, "targetComponent":Landroid/content/ComponentName;
    if-nez v1, :cond_0

    .line 512
    const v14, 0x7f0c01f1

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/exsettings/ButtonSettings;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v14}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 519
    .end local v12    # "targetComponent":Landroid/content/ComponentName;
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/ButtonSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    .line 520
    .local v10, "pm":Landroid/content/pm/PackageManager;
    new-instance v8, Landroid/content/Intent;

    const-string/jumbo v14, "cyanogenmod.intent.action.RECENTS_LONG_PRESS"

    invoke-direct {v8, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 522
    .local v8, "intent":Landroid/content/Intent;
    const/high16 v14, 0x10000

    .line 521
    invoke-virtual {v10, v8, v14}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v11

    .line 523
    .local v11, "recentsActivities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v14

    if-nez v14, :cond_1

    .line 525
    const v14, 0x7f0c01f1

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/exsettings/ButtonSettings;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v14}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 526
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/ButtonSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    .line 527
    const-string/jumbo v15, "recents_long_press_activity"

    const/16 v16, 0x0

    .line 526
    invoke-static/range {v14 .. v16}, Lcyanogenmod/providers/CMSettings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 528
    const/4 v14, 0x0

    invoke-virtual {v9, v14}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 529
    return-object v9

    .line 514
    .end local v8    # "intent":Landroid/content/Intent;
    .end local v10    # "pm":Landroid/content/pm/PackageManager;
    .end local v11    # "recentsActivities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v12    # "targetComponent":Landroid/content/ComponentName;
    :cond_0
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v12

    .local v12, "targetComponent":Landroid/content/ComponentName;
    goto :goto_0

    .line 532
    .end local v12    # "targetComponent":Landroid/content/ComponentName;
    .restart local v8    # "intent":Landroid/content/Intent;
    .restart local v10    # "pm":Landroid/content/pm/PackageManager;
    .restart local v11    # "recentsActivities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_1
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v14

    add-int/lit8 v14, v14, 0x1

    new-array v3, v14, [Ljava/lang/CharSequence;

    .line 533
    .local v3, "entries":[Ljava/lang/CharSequence;
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v14

    add-int/lit8 v14, v14, 0x1

    new-array v13, v14, [Ljava/lang/CharSequence;

    .line 535
    .local v13, "values":[Ljava/lang/CharSequence;
    const v14, 0x7f0c01f1

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/exsettings/ButtonSettings;->getString(I)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    aput-object v14, v3, v15

    .line 536
    const-string/jumbo v14, ""

    const/4 v15, 0x0

    aput-object v14, v13, v15

    .line 537
    const/4 v14, 0x0

    aget-object v14, v13, v14

    invoke-interface {v14}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v14}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 538
    const/4 v5, 0x1

    .line 539
    .local v5, "i":I
    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "info$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    .line 543
    .local v6, "info":Landroid/content/pm/ResolveInfo;
    :try_start_0
    iget-object v14, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v14, v14, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/4 v15, 0x0

    invoke-virtual {v10, v14, v15}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v14

    invoke-virtual {v14, v10}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v14

    aput-object v14, v3, v5
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 551
    :goto_2
    new-instance v4, Landroid/content/ComponentName;

    iget-object v14, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v14, v14, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 552
    iget-object v15, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v15, v15, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 551
    invoke-direct {v4, v14, v15}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 553
    .local v4, "entryComponent":Landroid/content/ComponentName;
    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v13, v5

    .line 554
    if-eqz v12, :cond_2

    .line 555
    invoke-virtual {v4, v12}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 557
    aget-object v14, v3, v5

    invoke-virtual {v9, v14}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 558
    aget-object v14, v13, v5

    invoke-interface {v14}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v14}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 561
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 544
    .end local v4    # "entryComponent":Landroid/content/ComponentName;
    :catch_0
    move-exception v2

    .line 545
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v14, "SystemSettings"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Error package not found: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget-object v0, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 547
    iget-object v14, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v14, v14, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    aput-object v14, v3, v5

    goto :goto_2

    .line 563
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v6    # "info":Landroid/content/pm/ResolveInfo;
    :cond_3
    invoke-virtual {v9, v3}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 564
    invoke-virtual {v9, v13}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 565
    return-object v9
.end method

.method private static isCameraDoubleTapPowerGestureAvailable(Landroid/content/res/Resources;)Z
    .locals 1
    .param p0, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 766
    const v0, 0x11200be

    .line 765
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public static restoreKeyDisabler(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 708
    invoke-static {p0}, Lcyanogenmod/hardware/CMHardwareManager;->getInstance(Landroid/content/Context;)Lcyanogenmod/hardware/CMHardwareManager;

    move-result-object v0

    .line 709
    .local v0, "hardware":Lcyanogenmod/hardware/CMHardwareManager;
    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Lcyanogenmod/hardware/CMHardwareManager;->isSupported(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 710
    return-void

    .line 713
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 714
    const-string/jumbo v3, "dev_force_show_navbar"

    .line 713
    invoke-static {v2, v3, v1}, Lcyanogenmod/providers/CMSettings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-static {p0, v1}, Lcom/android/exsettings/ButtonSettings;->writeDisableNavkeysOption(Landroid/content/Context;Z)V

    .line 707
    return-void
.end method

.method private updateDisableNavkeysCategories(Z)V
    .locals 10
    .param p1, "navbarEnabled"    # Z

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 666
    invoke-virtual {p0}, Lcom/android/exsettings/ButtonSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    .line 670
    .local v6, "prefScreen":Landroid/preference/PreferenceScreen;
    const-string/jumbo v7, "home_key"

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceCategory;

    .line 672
    .local v4, "homeCategory":Landroid/preference/PreferenceCategory;
    const-string/jumbo v7, "back_key"

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceCategory;

    .line 674
    .local v2, "backCategory":Landroid/preference/PreferenceCategory;
    const-string/jumbo v7, "menu_key"

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceCategory;

    .line 676
    .local v5, "menuCategory":Landroid/preference/PreferenceCategory;
    const-string/jumbo v7, "assist_key"

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    .line 678
    .local v1, "assistCategory":Landroid/preference/PreferenceCategory;
    const-string/jumbo v7, "app_switch_key"

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 680
    .local v0, "appSwitchCategory":Landroid/preference/PreferenceCategory;
    const-string/jumbo v7, "button_backlight"

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/android/exsettings/cyanogenmod/ButtonBacklightBrightness;

    .line 684
    .local v3, "backlight":Lcom/android/exsettings/cyanogenmod/ButtonBacklightBrightness;
    if-eqz v3, :cond_0

    .line 685
    if-eqz p1, :cond_6

    move v7, v8

    :goto_0
    invoke-virtual {v3, v7}, Lcom/android/exsettings/cyanogenmod/ButtonBacklightBrightness;->setEnabled(Z)V

    .line 686
    invoke-virtual {v3}, Lcom/android/exsettings/cyanogenmod/ButtonBacklightBrightness;->updateSummary()V

    .line 690
    :cond_0
    if-eqz v4, :cond_1

    .line 691
    if-eqz p1, :cond_7

    move v7, v8

    :goto_1
    invoke-virtual {v4, v7}, Landroid/preference/PreferenceCategory;->setEnabled(Z)V

    .line 693
    :cond_1
    if-eqz v2, :cond_2

    .line 694
    if-eqz p1, :cond_8

    move v7, v8

    :goto_2
    invoke-virtual {v2, v7}, Landroid/preference/PreferenceCategory;->setEnabled(Z)V

    .line 696
    :cond_2
    if-eqz v5, :cond_3

    .line 697
    if-eqz p1, :cond_9

    move v7, v8

    :goto_3
    invoke-virtual {v5, v7}, Landroid/preference/PreferenceCategory;->setEnabled(Z)V

    .line 699
    :cond_3
    if-eqz v1, :cond_4

    .line 700
    if-eqz p1, :cond_a

    move v7, v8

    :goto_4
    invoke-virtual {v1, v7}, Landroid/preference/PreferenceCategory;->setEnabled(Z)V

    .line 702
    :cond_4
    if-eqz v0, :cond_5

    .line 703
    if-eqz p1, :cond_b

    :goto_5
    invoke-virtual {v0, v8}, Landroid/preference/PreferenceCategory;->setEnabled(Z)V

    .line 665
    :cond_5
    return-void

    :cond_6
    move v7, v9

    .line 685
    goto :goto_0

    :cond_7
    move v7, v9

    .line 691
    goto :goto_1

    :cond_8
    move v7, v9

    .line 694
    goto :goto_2

    :cond_9
    move v7, v9

    .line 697
    goto :goto_3

    :cond_a
    move v7, v9

    .line 700
    goto :goto_4

    :cond_b
    move v8, v9

    .line 703
    goto :goto_5
.end method

.method private updateDisableNavkeysOption()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 659
    invoke-virtual {p0}, Lcom/android/exsettings/ButtonSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 660
    const-string/jumbo v2, "dev_force_show_navbar"

    .line 659
    invoke-static {v1, v2, v3}, Lcyanogenmod/providers/CMSettings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 662
    .local v0, "enabled":Z
    :goto_0
    iget-object v1, p0, Lcom/android/exsettings/ButtonSettings;->mDisableNavigationKeys:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 658
    return-void

    .line 659
    .end local v0    # "enabled":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "enabled":Z
    goto :goto_0
.end method

.method private static writeDisableNavkeysOption(Landroid/content/Context;Z)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enabled"    # Z

    .prologue
    .line 654
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 655
    const-string/jumbo v2, "dev_force_show_navbar"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 654
    :goto_0
    invoke-static {v1, v2, v0}, Lcyanogenmod/providers/CMSettings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 653
    return-void

    .line 655
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 584
    const v0, -0x7ffffff9

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 51
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 156
    invoke-super/range {p0 .. p1}, Lcom/android/exsettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 158
    const v47, 0x7f080018

    move-object/from16 v0, p0

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Lcom/android/exsettings/ButtonSettings;->addPreferencesFromResource(I)V

    .line 160
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/ButtonSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v35

    .line 161
    .local v35, "res":Landroid/content/res/Resources;
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/ButtonSettings;->getActivity()Landroid/app/Activity;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v36

    .line 162
    .local v36, "resolver":Landroid/content/ContentResolver;
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/ButtonSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v33

    .line 164
    .local v33, "prefScreen":Landroid/preference/PreferenceScreen;
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/ButtonSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v47

    .line 165
    const v48, 0x10e0062

    .line 164
    invoke-virtual/range {v47 .. v48}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v12

    .line 166
    .local v12, "deviceKeys":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/ButtonSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v47

    .line 167
    const v48, 0x10e0063

    .line 166
    invoke-virtual/range {v47 .. v48}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v13

    .line 169
    .local v13, "deviceWakeKeys":I
    const/16 v47, 0x1a

    invoke-static/range {v47 .. v47}, Landroid/view/KeyCharacterMap;->deviceHasKey(I)Z

    move-result v26

    .line 170
    .local v26, "hasPowerKey":Z
    and-int/lit8 v47, v12, 0x1

    if-eqz v47, :cond_15

    const/16 v23, 0x1

    .line 171
    .local v23, "hasHomeKey":Z
    :goto_0
    and-int/lit8 v47, v12, 0x2

    if-eqz v47, :cond_16

    const/16 v21, 0x1

    .line 172
    .local v21, "hasBackKey":Z
    :goto_1
    and-int/lit8 v47, v12, 0x4

    if-eqz v47, :cond_17

    const/16 v24, 0x1

    .line 173
    .local v24, "hasMenuKey":Z
    :goto_2
    and-int/lit8 v47, v12, 0x8

    if-eqz v47, :cond_18

    const/16 v20, 0x1

    .line 174
    .local v20, "hasAssistKey":Z
    :goto_3
    and-int/lit8 v47, v12, 0x10

    if-eqz v47, :cond_19

    const/16 v19, 0x1

    .line 175
    .local v19, "hasAppSwitchKey":Z
    :goto_4
    and-int/lit8 v47, v12, 0x20

    if-eqz v47, :cond_1a

    const/16 v22, 0x1

    .line 176
    .local v22, "hasCameraKey":Z
    :goto_5
    and-int/lit8 v47, v12, 0x40

    if-eqz v47, :cond_1b

    const/16 v27, 0x1

    .line 178
    .local v27, "hasVolumeKeys":Z
    :goto_6
    and-int/lit8 v47, v13, 0x1

    if-eqz v47, :cond_1c

    const/16 v41, 0x1

    .line 179
    .local v41, "showHomeWake":Z
    :goto_7
    and-int/lit8 v47, v13, 0x2

    if-eqz v47, :cond_1d

    const/16 v39, 0x1

    .line 180
    .local v39, "showBackWake":Z
    :goto_8
    and-int/lit8 v47, v13, 0x4

    if-eqz v47, :cond_1e

    const/16 v42, 0x1

    .line 181
    .local v42, "showMenuWake":Z
    :goto_9
    and-int/lit8 v47, v13, 0x8

    if-eqz v47, :cond_1f

    const/16 v38, 0x1

    .line 182
    .local v38, "showAssistWake":Z
    :goto_a
    and-int/lit8 v47, v13, 0x10

    if-eqz v47, :cond_20

    const/16 v37, 0x1

    .line 183
    .local v37, "showAppSwitchWake":Z
    :goto_b
    and-int/lit8 v47, v13, 0x20

    if-eqz v47, :cond_21

    const/16 v40, 0x1

    .line 184
    .local v40, "showCameraWake":Z
    :goto_c
    and-int/lit8 v47, v13, 0x40

    if-eqz v47, :cond_22

    const/16 v43, 0x1

    .line 186
    .local v43, "showVolumeWake":Z
    :goto_d
    const/16 v18, 0x0

    .line 188
    .local v18, "hasAnyBindableKey":Z
    const-string/jumbo v47, "power_key"

    move-object/from16 v0, v33

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v32

    check-cast v32, Landroid/preference/PreferenceCategory;

    .line 190
    .local v32, "powerCategory":Landroid/preference/PreferenceCategory;
    const-string/jumbo v47, "home_key"

    move-object/from16 v0, v33

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v28

    check-cast v28, Landroid/preference/PreferenceCategory;

    .line 192
    .local v28, "homeCategory":Landroid/preference/PreferenceCategory;
    const-string/jumbo v47, "back_key"

    move-object/from16 v0, v33

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceCategory;

    .line 194
    .local v5, "backCategory":Landroid/preference/PreferenceCategory;
    const-string/jumbo v47, "menu_key"

    move-object/from16 v0, v33

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v30

    check-cast v30, Landroid/preference/PreferenceCategory;

    .line 196
    .local v30, "menuCategory":Landroid/preference/PreferenceCategory;
    const-string/jumbo v47, "assist_key"

    move-object/from16 v0, v33

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceCategory;

    .line 198
    .local v4, "assistCategory":Landroid/preference/PreferenceCategory;
    const-string/jumbo v47, "app_switch_key"

    move-object/from16 v0, v33

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceCategory;

    .line 200
    .local v3, "appSwitchCategory":Landroid/preference/PreferenceCategory;
    const-string/jumbo v47, "volume_keys"

    move-object/from16 v0, v33

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v45

    check-cast v45, Landroid/preference/PreferenceCategory;

    .line 202
    .local v45, "volumeCategory":Landroid/preference/PreferenceCategory;
    const-string/jumbo v47, "camera_key"

    move-object/from16 v0, v33

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/PreferenceCategory;

    .line 205
    .local v7, "cameraCategory":Landroid/preference/PreferenceCategory;
    const-string/jumbo v47, "power_end_call"

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Lcom/android/exsettings/ButtonSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v47

    check-cast v47, Landroid/preference/SwitchPreference;

    move-object/from16 v0, v47

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/ButtonSettings;->mPowerEndCall:Landroid/preference/SwitchPreference;

    .line 209
    const-string/jumbo v47, "camera_double_tap_power_gesture"

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Lcom/android/exsettings/ButtonSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v47

    check-cast v47, Landroid/preference/SwitchPreference;

    .line 208
    move-object/from16 v0, v47

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/ButtonSettings;->mCameraDoubleTapPowerGesture:Landroid/preference/SwitchPreference;

    .line 212
    const-string/jumbo v47, "home_answer_call"

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Lcom/android/exsettings/ButtonSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v47

    check-cast v47, Landroid/preference/SwitchPreference;

    move-object/from16 v0, v47

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/ButtonSettings;->mHomeAnswerCall:Landroid/preference/SwitchPreference;

    .line 214
    new-instance v47, Landroid/os/Handler;

    invoke-direct/range {v47 .. v47}, Landroid/os/Handler;-><init>()V

    move-object/from16 v0, v47

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/ButtonSettings;->mHandler:Landroid/os/Handler;

    .line 217
    const-string/jumbo v47, "disable_nav_keys"

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Lcom/android/exsettings/ButtonSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v47

    check-cast v47, Landroid/preference/SwitchPreference;

    move-object/from16 v0, v47

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/ButtonSettings;->mDisableNavigationKeys:Landroid/preference/SwitchPreference;

    .line 219
    const-string/jumbo v47, "navigation_bar_category"

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Lcom/android/exsettings/ButtonSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v47

    check-cast v47, Landroid/preference/PreferenceCategory;

    move-object/from16 v0, v47

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/ButtonSettings;->mNavigationPreferencesCat:Landroid/preference/PreferenceCategory;

    .line 222
    const-string/jumbo v47, "navigation_bar_left"

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Lcom/android/exsettings/ButtonSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v47

    check-cast v47, Landroid/preference/SwitchPreference;

    move-object/from16 v0, v47

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/ButtonSettings;->mNavigationBarLeftPref:Landroid/preference/SwitchPreference;

    .line 226
    const-string/jumbo v47, "navigation_recents_long_press"

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    invoke-direct {v0, v1}, Lcom/android/exsettings/ButtonSettings;->initRecentsLongPressAction(Ljava/lang/String;)Landroid/preference/ListPreference;

    move-result-object v47

    .line 225
    move-object/from16 v0, v47

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/ButtonSettings;->mNavigationRecentsLongPressAction:Landroid/preference/ListPreference;

    .line 228
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/ButtonSettings;->getActivity()Landroid/app/Activity;

    move-result-object v47

    invoke-static/range {v47 .. v47}, Lcyanogenmod/hardware/CMHardwareManager;->getInstance(Landroid/content/Context;)Lcyanogenmod/hardware/CMHardwareManager;

    move-result-object v17

    .line 232
    .local v17, "hardware":Lcyanogenmod/hardware/CMHardwareManager;
    const/16 v31, 0x0

    .line 233
    .local v31, "needsNavigationBar":Z
    const/16 v47, 0x20

    move-object/from16 v0, v17

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Lcyanogenmod/hardware/CMHardwareManager;->isSupported(I)Z

    move-result v47

    if-eqz v47, :cond_24

    .line 235
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v46

    .line 236
    .local v46, "wm":Landroid/view/IWindowManager;
    invoke-interface/range {v46 .. v46}, Landroid/view/IWindowManager;->needsNavigationBar()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v31

    .line 240
    .end local v31    # "needsNavigationBar":Z
    .end local v46    # "wm":Landroid/view/IWindowManager;
    :goto_e
    if-eqz v31, :cond_23

    .line 241
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/ButtonSettings;->mDisableNavigationKeys:Landroid/preference/SwitchPreference;

    move-object/from16 v47, v0

    move-object/from16 v0, v33

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 252
    :goto_f
    if-eqz v26, :cond_27

    .line 253
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/ButtonSettings;->getActivity()Landroid/app/Activity;

    move-result-object v47

    invoke-static/range {v47 .. v47}, Lcom/android/exsettings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v47

    if-nez v47, :cond_0

    .line 254
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/ButtonSettings;->mPowerEndCall:Landroid/preference/SwitchPreference;

    move-object/from16 v47, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 255
    const/16 v47, 0x0

    move-object/from16 v0, v47

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/ButtonSettings;->mPowerEndCall:Landroid/preference/SwitchPreference;

    .line 257
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/ButtonSettings;->mCameraDoubleTapPowerGesture:Landroid/preference/SwitchPreference;

    move-object/from16 v47, v0

    if-eqz v47, :cond_26

    .line 258
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/ButtonSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v47

    invoke-static/range {v47 .. v47}, Lcom/android/exsettings/ButtonSettings;->isCameraDoubleTapPowerGestureAvailable(Landroid/content/res/Resources;)Z

    move-result v47

    .line 257
    if-eqz v47, :cond_26

    .line 260
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/ButtonSettings;->mCameraDoubleTapPowerGesture:Landroid/preference/SwitchPreference;

    move-object/from16 v47, v0

    move-object/from16 v0, v47

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 262
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/ButtonSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v47

    const-string/jumbo v48, "camera_double_tap_power_gesture_disabled"

    const/16 v49, 0x0

    .line 261
    invoke-static/range {v47 .. v49}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    .line 263
    .local v8, "cameraDoubleTapPowerDisabled":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/ButtonSettings;->mCameraDoubleTapPowerGesture:Landroid/preference/SwitchPreference;

    move-object/from16 v48, v0

    if-nez v8, :cond_25

    const/16 v47, 0x1

    :goto_10
    move-object/from16 v0, v48

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 272
    .end local v8    # "cameraDoubleTapPowerDisabled":I
    :goto_11
    if-eqz v23, :cond_28

    .line 273
    if-nez v41, :cond_1

    .line 274
    const-string/jumbo v47, "home_wake_screen"

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Lcom/android/exsettings/ButtonSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v47

    move-object/from16 v0, v28

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 277
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/ButtonSettings;->getActivity()Landroid/app/Activity;

    move-result-object v47

    invoke-static/range {v47 .. v47}, Lcom/android/exsettings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v47

    if-nez v47, :cond_2

    .line 278
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/ButtonSettings;->mHomeAnswerCall:Landroid/preference/SwitchPreference;

    move-object/from16 v47, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 279
    const/16 v47, 0x0

    move-object/from16 v0, v47

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/ButtonSettings;->mHomeAnswerCall:Landroid/preference/SwitchPreference;

    .line 283
    :cond_2
    const v47, 0x10e005e

    .line 282
    move-object/from16 v0, v35

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v11

    .line 284
    .local v11, "defaultLongPressAction":I
    if-ltz v11, :cond_3

    .line 285
    const/16 v47, 0x8

    move/from16 v0, v47

    if-le v11, v0, :cond_4

    .line 286
    :cond_3
    const/4 v11, 0x0

    .line 290
    :cond_4
    const v47, 0x10e005f

    .line 289
    move-object/from16 v0, v35

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v10

    .line 291
    .local v10, "defaultDoubleTapAction":I
    if-ltz v10, :cond_5

    .line 292
    const/16 v47, 0x8

    move/from16 v0, v47

    if-le v10, v0, :cond_6

    .line 293
    :cond_5
    const/4 v10, 0x0

    .line 297
    :cond_6
    const-string/jumbo v47, "key_home_long_press_action"

    .line 296
    move-object/from16 v0, v36

    move-object/from16 v1, v47

    invoke-static {v0, v1, v11}, Lcyanogenmod/providers/CMSettings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v29

    .line 299
    .local v29, "longPressAction":I
    const-string/jumbo v47, "hardware_keys_home_long_press"

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    move/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/android/exsettings/ButtonSettings;->initActionList(Ljava/lang/String;I)Landroid/preference/ListPreference;

    move-result-object v47

    move-object/from16 v0, v47

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/ButtonSettings;->mHomeLongPressAction:Landroid/preference/ListPreference;

    .line 302
    const-string/jumbo v47, "key_home_double_tap_action"

    .line 301
    move-object/from16 v0, v36

    move-object/from16 v1, v47

    invoke-static {v0, v1, v10}, Lcyanogenmod/providers/CMSettings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v14

    .line 304
    .local v14, "doubleTapAction":I
    const-string/jumbo v47, "hardware_keys_home_double_tap"

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    invoke-direct {v0, v1, v14}, Lcom/android/exsettings/ButtonSettings;->initActionList(Ljava/lang/String;I)Landroid/preference/ListPreference;

    move-result-object v47

    move-object/from16 v0, v47

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/ButtonSettings;->mHomeDoubleTapAction:Landroid/preference/ListPreference;

    .line 306
    const/16 v18, 0x1

    .line 311
    .end local v10    # "defaultDoubleTapAction":I
    .end local v11    # "defaultLongPressAction":I
    .end local v14    # "doubleTapAction":I
    .end local v29    # "longPressAction":I
    :goto_12
    if-eqz v21, :cond_29

    .line 312
    if-nez v39, :cond_7

    .line 313
    const-string/jumbo v47, "back_wake_screen"

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Lcom/android/exsettings/ButtonSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v47

    move-object/from16 v0, v47

    invoke-virtual {v5, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 314
    move-object/from16 v0, v33

    invoke-virtual {v0, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 320
    :cond_7
    :goto_13
    if-eqz v24, :cond_2b

    .line 321
    if-nez v42, :cond_8

    .line 322
    const-string/jumbo v47, "menu_wake_screen"

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Lcom/android/exsettings/ButtonSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v47

    move-object/from16 v0, v30

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 326
    :cond_8
    const-string/jumbo v47, "key_menu_action"

    const/16 v48, 0x1

    .line 325
    move-object/from16 v0, v36

    move-object/from16 v1, v47

    move/from16 v2, v48

    invoke-static {v0, v1, v2}, Lcyanogenmod/providers/CMSettings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v34

    .line 327
    .local v34, "pressAction":I
    const-string/jumbo v47, "hardware_keys_menu_press"

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    move/from16 v2, v34

    invoke-direct {v0, v1, v2}, Lcom/android/exsettings/ButtonSettings;->initActionList(Ljava/lang/String;I)Landroid/preference/ListPreference;

    move-result-object v47

    move-object/from16 v0, v47

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/ButtonSettings;->mMenuPressAction:Landroid/preference/ListPreference;

    .line 330
    const-string/jumbo v48, "key_menu_long_press_action"

    .line 331
    if-eqz v20, :cond_2a

    const/16 v47, 0x0

    .line 329
    :goto_14
    move-object/from16 v0, v36

    move-object/from16 v1, v48

    move/from16 v2, v47

    invoke-static {v0, v1, v2}, Lcyanogenmod/providers/CMSettings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v29

    .line 332
    .restart local v29    # "longPressAction":I
    const-string/jumbo v47, "hardware_keys_menu_long_press"

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    move/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/android/exsettings/ButtonSettings;->initActionList(Ljava/lang/String;I)Landroid/preference/ListPreference;

    move-result-object v47

    move-object/from16 v0, v47

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/ButtonSettings;->mMenuLongPressAction:Landroid/preference/ListPreference;

    .line 334
    const/16 v18, 0x1

    .line 339
    .end local v29    # "longPressAction":I
    .end local v34    # "pressAction":I
    :goto_15
    if-eqz v20, :cond_2c

    .line 340
    if-nez v38, :cond_9

    .line 341
    const-string/jumbo v47, "assist_wake_screen"

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Lcom/android/exsettings/ButtonSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v47

    move-object/from16 v0, v47

    invoke-virtual {v4, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 345
    :cond_9
    const-string/jumbo v47, "key_assist_action"

    const/16 v48, 0x3

    .line 344
    move-object/from16 v0, v36

    move-object/from16 v1, v47

    move/from16 v2, v48

    invoke-static {v0, v1, v2}, Lcyanogenmod/providers/CMSettings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v34

    .line 346
    .restart local v34    # "pressAction":I
    const-string/jumbo v47, "hardware_keys_assist_press"

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    move/from16 v2, v34

    invoke-direct {v0, v1, v2}, Lcom/android/exsettings/ButtonSettings;->initActionList(Ljava/lang/String;I)Landroid/preference/ListPreference;

    move-result-object v47

    move-object/from16 v0, v47

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/ButtonSettings;->mAssistPressAction:Landroid/preference/ListPreference;

    .line 349
    const-string/jumbo v47, "key_assist_long_press_action"

    const/16 v48, 0x4

    .line 348
    move-object/from16 v0, v36

    move-object/from16 v1, v47

    move/from16 v2, v48

    invoke-static {v0, v1, v2}, Lcyanogenmod/providers/CMSettings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v29

    .line 350
    .restart local v29    # "longPressAction":I
    const-string/jumbo v47, "hardware_keys_assist_long_press"

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    move/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/android/exsettings/ButtonSettings;->initActionList(Ljava/lang/String;I)Landroid/preference/ListPreference;

    move-result-object v47

    move-object/from16 v0, v47

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/ButtonSettings;->mAssistLongPressAction:Landroid/preference/ListPreference;

    .line 352
    const/16 v18, 0x1

    .line 357
    .end local v29    # "longPressAction":I
    .end local v34    # "pressAction":I
    :goto_16
    if-eqz v19, :cond_2d

    .line 358
    if-nez v37, :cond_a

    .line 360
    const-string/jumbo v47, "app_switch_wake_screen"

    .line 359
    move-object/from16 v0, p0

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Lcom/android/exsettings/ButtonSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v47

    move-object/from16 v0, v47

    invoke-virtual {v3, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 364
    :cond_a
    const-string/jumbo v47, "key_app_switch_action"

    const/16 v48, 0x2

    .line 363
    move-object/from16 v0, v36

    move-object/from16 v1, v47

    move/from16 v2, v48

    invoke-static {v0, v1, v2}, Lcyanogenmod/providers/CMSettings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v34

    .line 365
    .restart local v34    # "pressAction":I
    const-string/jumbo v47, "hardware_keys_app_switch_press"

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    move/from16 v2, v34

    invoke-direct {v0, v1, v2}, Lcom/android/exsettings/ButtonSettings;->initActionList(Ljava/lang/String;I)Landroid/preference/ListPreference;

    move-result-object v47

    move-object/from16 v0, v47

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/ButtonSettings;->mAppSwitchPressAction:Landroid/preference/ListPreference;

    .line 368
    const-string/jumbo v47, "key_app_switch_long_press_action"

    const/16 v48, 0x0

    .line 367
    move-object/from16 v0, v36

    move-object/from16 v1, v47

    move/from16 v2, v48

    invoke-static {v0, v1, v2}, Lcyanogenmod/providers/CMSettings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v29

    .line 369
    .restart local v29    # "longPressAction":I
    const-string/jumbo v47, "hardware_keys_app_switch_long_press"

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    move/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/android/exsettings/ButtonSettings;->initActionList(Ljava/lang/String;I)Landroid/preference/ListPreference;

    move-result-object v47

    move-object/from16 v0, v47

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/ButtonSettings;->mAppSwitchLongPressAction:Landroid/preference/ListPreference;

    .line 371
    if-nez v21, :cond_b

    .line 373
    const-string/jumbo v47, "app_switch_swap_buttons"

    .line 372
    move-object/from16 v0, p0

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Lcom/android/exsettings/ButtonSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v47

    move-object/from16 v0, v47

    invoke-virtual {v3, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 376
    :cond_b
    const/16 v18, 0x1

    .line 381
    .end local v29    # "longPressAction":I
    .end local v34    # "pressAction":I
    :goto_17
    if-eqz v22, :cond_2e

    .line 382
    const-string/jumbo v47, "camera_wake_screen"

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Lcom/android/exsettings/ButtonSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v47

    check-cast v47, Landroid/preference/SwitchPreference;

    move-object/from16 v0, v47

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/ButtonSettings;->mCameraWakeScreen:Landroid/preference/SwitchPreference;

    .line 384
    const-string/jumbo v47, "camera_sleep_on_release"

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Lcom/android/exsettings/ButtonSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v47

    check-cast v47, Landroid/preference/SwitchPreference;

    .line 383
    move-object/from16 v0, v47

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/ButtonSettings;->mCameraSleepOnRelease:Landroid/preference/SwitchPreference;

    .line 385
    const-string/jumbo v47, "camera_launch"

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Lcom/android/exsettings/ButtonSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v47

    check-cast v47, Landroid/preference/SwitchPreference;

    move-object/from16 v0, v47

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/ButtonSettings;->mCameraLaunch:Landroid/preference/SwitchPreference;

    .line 387
    if-nez v40, :cond_c

    .line 388
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/ButtonSettings;->mCameraWakeScreen:Landroid/preference/SwitchPreference;

    move-object/from16 v47, v0

    move-object/from16 v0, v33

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 391
    :cond_c
    const v47, 0x1120054

    move-object/from16 v0, v35

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v47

    if-eqz v47, :cond_d

    .line 392
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/ButtonSettings;->mCameraSleepOnRelease:Landroid/preference/SwitchPreference;

    move-object/from16 v47, v0

    move-object/from16 v0, v33

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 398
    :cond_d
    :goto_18
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/ButtonSettings;->getActivity()Landroid/app/Activity;

    move-result-object v47

    invoke-static/range {v47 .. v47}, Lcom/android/exsettings/Utils;->hasVolumeRocker(Landroid/content/Context;)Z

    move-result v47

    if-eqz v47, :cond_30

    .line 399
    if-nez v43, :cond_e

    .line 400
    const-string/jumbo v47, "volume_wake_screen"

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Lcom/android/exsettings/ButtonSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v47

    move-object/from16 v0, v45

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 404
    :cond_e
    const-string/jumbo v47, "volume_key_cursor_control"

    const/16 v48, 0x0

    .line 403
    move-object/from16 v0, v36

    move-object/from16 v1, v47

    move/from16 v2, v48

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    .line 405
    .local v9, "cursorControlAction":I
    const-string/jumbo v47, "volume_key_cursor_control"

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    invoke-direct {v0, v1, v9}, Lcom/android/exsettings/ButtonSettings;->initActionList(Ljava/lang/String;I)Landroid/preference/ListPreference;

    move-result-object v47

    move-object/from16 v0, v47

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/ButtonSettings;->mVolumeKeyCursorControl:Landroid/preference/ListPreference;

    .line 408
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/ButtonSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v47

    .line 409
    const-string/jumbo v48, "swap_volume_keys_on_rotation"

    const/16 v49, 0x0

    .line 408
    invoke-static/range {v47 .. v49}, Lcyanogenmod/providers/CMSettings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v44

    .line 411
    .local v44, "swapVolumeKeys":I
    const-string/jumbo v47, "swap_volume_buttons"

    move-object/from16 v0, v33

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v47

    .line 410
    check-cast v47, Landroid/preference/SwitchPreference;

    move-object/from16 v0, v47

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/ButtonSettings;->mSwapVolumeButtons:Landroid/preference/SwitchPreference;

    .line 412
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/ButtonSettings;->mSwapVolumeButtons:Landroid/preference/SwitchPreference;

    move-object/from16 v47, v0

    if-eqz v47, :cond_f

    .line 413
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/ButtonSettings;->mSwapVolumeButtons:Landroid/preference/SwitchPreference;

    move-object/from16 v48, v0

    if-lez v44, :cond_2f

    const/16 v47, 0x1

    :goto_19
    move-object/from16 v0, v48

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 422
    .end local v9    # "cursorControlAction":I
    .end local v44    # "swapVolumeKeys":I
    :cond_f
    :goto_1a
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/ButtonSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v47

    .line 423
    const-string/jumbo v48, "dev_force_show_navbar"

    const/16 v49, 0x0

    .line 422
    invoke-static/range {v47 .. v49}, Lcyanogenmod/providers/CMSettings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v47

    .line 423
    const/16 v48, 0x1

    .line 422
    move/from16 v0, v47

    move/from16 v1, v48

    if-ne v0, v1, :cond_31

    const/16 v16, 0x1

    .line 424
    .local v16, "forceNavbar":Z
    :goto_1b
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v47

    invoke-interface/range {v47 .. v47}, Landroid/view/IWindowManager;->hasNavigationBar()Z

    move-result v47

    if-nez v47, :cond_32

    .line 425
    move/from16 v25, v16

    .line 427
    :goto_1c
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/ButtonSettings;->getActivity()Landroid/app/Activity;

    move-result-object v47

    invoke-static/range {v47 .. v47}, Lorg/cyanogenmod/internal/util/ScreenType;->isPhone(Landroid/content/Context;)Z

    move-result v47

    if-nez v47, :cond_10

    .line 428
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/ButtonSettings;->mNavigationPreferencesCat:Landroid/preference/PreferenceCategory;

    move-object/from16 v47, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/ButtonSettings;->mNavigationBarLeftPref:Landroid/preference/SwitchPreference;

    move-object/from16 v48, v0

    invoke-virtual/range {v47 .. v48}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 431
    :cond_10
    if-nez v25, :cond_11

    if-nez v31, :cond_33

    .line 432
    const/16 v47, 0x20

    move-object/from16 v0, v17

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Lcyanogenmod/hardware/CMHardwareManager;->isSupported(I)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v47

    if-eqz v47, :cond_33

    .line 441
    .end local v16    # "forceNavbar":Z
    :cond_11
    :goto_1d
    const-string/jumbo v47, "button_backlight"

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Lcom/android/exsettings/ButtonSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Lcom/android/exsettings/cyanogenmod/ButtonBacklightBrightness;

    .line 442
    .local v6, "backlight":Lcom/android/exsettings/cyanogenmod/ButtonBacklightBrightness;
    invoke-virtual {v6}, Lcom/android/exsettings/cyanogenmod/ButtonBacklightBrightness;->isButtonSupported()Z

    move-result v47

    if-nez v47, :cond_12

    invoke-virtual {v6}, Lcom/android/exsettings/cyanogenmod/ButtonBacklightBrightness;->isKeyboardSupported()Z

    move-result v47

    if-eqz v47, :cond_34

    .line 446
    :cond_12
    :goto_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/ButtonSettings;->mCameraWakeScreen:Landroid/preference/SwitchPreference;

    move-object/from16 v47, v0

    if-eqz v47, :cond_13

    .line 447
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/ButtonSettings;->mCameraSleepOnRelease:Landroid/preference/SwitchPreference;

    move-object/from16 v47, v0

    if-eqz v47, :cond_13

    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/ButtonSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v47

    .line 448
    const v48, 0x1120054

    .line 447
    invoke-virtual/range {v47 .. v48}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v47

    if-eqz v47, :cond_35

    .line 452
    :cond_13
    :goto_1f
    const-string/jumbo v47, "volume_wake_screen"

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Lcom/android/exsettings/ButtonSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v47

    check-cast v47, Landroid/preference/SwitchPreference;

    move-object/from16 v0, v47

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/ButtonSettings;->mVolumeWakeScreen:Landroid/preference/SwitchPreference;

    .line 453
    const-string/jumbo v47, "volbtn_music_controls"

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Lcom/android/exsettings/ButtonSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v47

    check-cast v47, Landroid/preference/SwitchPreference;

    move-object/from16 v0, v47

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/ButtonSettings;->mVolumeMusicControls:Landroid/preference/SwitchPreference;

    .line 455
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/ButtonSettings;->mVolumeWakeScreen:Landroid/preference/SwitchPreference;

    move-object/from16 v47, v0

    if-eqz v47, :cond_14

    .line 456
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/ButtonSettings;->mVolumeMusicControls:Landroid/preference/SwitchPreference;

    move-object/from16 v47, v0

    if-eqz v47, :cond_14

    .line 457
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/ButtonSettings;->mVolumeMusicControls:Landroid/preference/SwitchPreference;

    move-object/from16 v47, v0

    const-string/jumbo v48, "volume_wake_screen"

    invoke-virtual/range {v47 .. v48}, Landroid/preference/SwitchPreference;->setDependency(Ljava/lang/String;)V

    .line 458
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/ButtonSettings;->mVolumeWakeScreen:Landroid/preference/SwitchPreference;

    move-object/from16 v47, v0

    const/16 v48, 0x1

    invoke-virtual/range {v47 .. v48}, Landroid/preference/SwitchPreference;->setDisableDependentsState(Z)V

    .line 462
    :cond_14
    const-string/jumbo v47, "navigation_bar_height"

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Lcom/android/exsettings/ButtonSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v47

    check-cast v47, Landroid/preference/SeekBarPreference;

    move-object/from16 v0, v47

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/ButtonSettings;->mNavigationBarHeight:Landroid/preference/SeekBarPreference;

    .line 463
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/ButtonSettings;->mNavigationBarHeight:Landroid/preference/SeekBarPreference;

    move-object/from16 v47, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/ButtonSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v48

    .line 464
    const-string/jumbo v49, "navigation_bar_height"

    const/high16 v50, 0x3f800000    # 1.0f

    .line 463
    invoke-static/range {v48 .. v50}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v48

    .line 464
    const/high16 v49, 0x42c80000    # 100.0f

    .line 463
    mul-float v48, v48, v49

    move/from16 v0, v48

    float-to-int v0, v0

    move/from16 v48, v0

    invoke-virtual/range {v47 .. v48}, Landroid/preference/SeekBarPreference;->setProgress(I)V

    .line 465
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/ButtonSettings;->mNavigationBarHeight:Landroid/preference/SeekBarPreference;

    move-object/from16 v47, v0

    new-instance v48, Ljava/lang/StringBuilder;

    invoke-direct/range {v48 .. v48}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/ButtonSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v49

    const v50, 0x7f0c03ee

    invoke-virtual/range {v49 .. v50}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v49

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v48

    const-string/jumbo v49, " "

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/ButtonSettings;->mNavigationBarHeight:Landroid/preference/SeekBarPreference;

    move-object/from16 v49, v0

    invoke-virtual/range {v49 .. v49}, Landroid/preference/SeekBarPreference;->getProgress()I

    move-result v49

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v48

    const-string/jumbo v49, "%"

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    invoke-virtual/range {v47 .. v48}, Landroid/preference/SeekBarPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 466
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/ButtonSettings;->mNavigationBarHeight:Landroid/preference/SeekBarPreference;

    move-object/from16 v47, v0

    move-object/from16 v0, v47

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/SeekBarPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 155
    return-void

    .line 170
    .end local v3    # "appSwitchCategory":Landroid/preference/PreferenceCategory;
    .end local v4    # "assistCategory":Landroid/preference/PreferenceCategory;
    .end local v5    # "backCategory":Landroid/preference/PreferenceCategory;
    .end local v6    # "backlight":Lcom/android/exsettings/cyanogenmod/ButtonBacklightBrightness;
    .end local v7    # "cameraCategory":Landroid/preference/PreferenceCategory;
    .end local v17    # "hardware":Lcyanogenmod/hardware/CMHardwareManager;
    .end local v18    # "hasAnyBindableKey":Z
    .end local v19    # "hasAppSwitchKey":Z
    .end local v20    # "hasAssistKey":Z
    .end local v21    # "hasBackKey":Z
    .end local v22    # "hasCameraKey":Z
    .end local v23    # "hasHomeKey":Z
    .end local v24    # "hasMenuKey":Z
    .end local v27    # "hasVolumeKeys":Z
    .end local v28    # "homeCategory":Landroid/preference/PreferenceCategory;
    .end local v30    # "menuCategory":Landroid/preference/PreferenceCategory;
    .end local v32    # "powerCategory":Landroid/preference/PreferenceCategory;
    .end local v37    # "showAppSwitchWake":Z
    .end local v38    # "showAssistWake":Z
    .end local v39    # "showBackWake":Z
    .end local v40    # "showCameraWake":Z
    .end local v41    # "showHomeWake":Z
    .end local v42    # "showMenuWake":Z
    .end local v43    # "showVolumeWake":Z
    .end local v45    # "volumeCategory":Landroid/preference/PreferenceCategory;
    :cond_15
    const/16 v23, 0x0

    .restart local v23    # "hasHomeKey":Z
    goto/16 :goto_0

    .line 171
    :cond_16
    const/16 v21, 0x0

    .restart local v21    # "hasBackKey":Z
    goto/16 :goto_1

    .line 172
    :cond_17
    const/16 v24, 0x0

    .restart local v24    # "hasMenuKey":Z
    goto/16 :goto_2

    .line 173
    :cond_18
    const/16 v20, 0x0

    .restart local v20    # "hasAssistKey":Z
    goto/16 :goto_3

    .line 174
    :cond_19
    const/16 v19, 0x0

    .restart local v19    # "hasAppSwitchKey":Z
    goto/16 :goto_4

    .line 175
    :cond_1a
    const/16 v22, 0x0

    .restart local v22    # "hasCameraKey":Z
    goto/16 :goto_5

    .line 176
    :cond_1b
    const/16 v27, 0x0

    .restart local v27    # "hasVolumeKeys":Z
    goto/16 :goto_6

    .line 178
    :cond_1c
    const/16 v41, 0x0

    .restart local v41    # "showHomeWake":Z
    goto/16 :goto_7

    .line 179
    :cond_1d
    const/16 v39, 0x0

    .restart local v39    # "showBackWake":Z
    goto/16 :goto_8

    .line 180
    :cond_1e
    const/16 v42, 0x0

    .restart local v42    # "showMenuWake":Z
    goto/16 :goto_9

    .line 181
    :cond_1f
    const/16 v38, 0x0

    .restart local v38    # "showAssistWake":Z
    goto/16 :goto_a

    .line 182
    :cond_20
    const/16 v37, 0x0

    .restart local v37    # "showAppSwitchWake":Z
    goto/16 :goto_b

    .line 183
    :cond_21
    const/16 v40, 0x0

    .restart local v40    # "showCameraWake":Z
    goto/16 :goto_c

    .line 184
    :cond_22
    const/16 v43, 0x0

    .restart local v43    # "showVolumeWake":Z
    goto/16 :goto_d

    .line 244
    .restart local v3    # "appSwitchCategory":Landroid/preference/PreferenceCategory;
    .restart local v4    # "assistCategory":Landroid/preference/PreferenceCategory;
    .restart local v5    # "backCategory":Landroid/preference/PreferenceCategory;
    .restart local v7    # "cameraCategory":Landroid/preference/PreferenceCategory;
    .restart local v17    # "hardware":Lcyanogenmod/hardware/CMHardwareManager;
    .restart local v18    # "hasAnyBindableKey":Z
    .restart local v28    # "homeCategory":Landroid/preference/PreferenceCategory;
    .restart local v30    # "menuCategory":Landroid/preference/PreferenceCategory;
    .restart local v32    # "powerCategory":Landroid/preference/PreferenceCategory;
    .restart local v45    # "volumeCategory":Landroid/preference/PreferenceCategory;
    :cond_23
    invoke-direct/range {p0 .. p0}, Lcom/android/exsettings/ButtonSettings;->updateDisableNavkeysOption()V

    .line 245
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/ButtonSettings;->mNavigationPreferencesCat:Landroid/preference/PreferenceCategory;

    move-object/from16 v47, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/ButtonSettings;->mDisableNavigationKeys:Landroid/preference/SwitchPreference;

    move-object/from16 v48, v0

    invoke-virtual/range {v48 .. v48}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v48

    invoke-virtual/range {v47 .. v48}, Landroid/preference/PreferenceCategory;->setEnabled(Z)V

    .line 246
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/ButtonSettings;->mDisableNavigationKeys:Landroid/preference/SwitchPreference;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v47

    move-object/from16 v0, p0

    move/from16 v1, v47

    invoke-direct {v0, v1}, Lcom/android/exsettings/ButtonSettings;->updateDisableNavkeysCategories(Z)V

    goto/16 :goto_f

    .line 249
    .restart local v31    # "needsNavigationBar":Z
    :cond_24
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/ButtonSettings;->mDisableNavigationKeys:Landroid/preference/SwitchPreference;

    move-object/from16 v47, v0

    move-object/from16 v0, v33

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_f

    .line 263
    .end local v31    # "needsNavigationBar":Z
    .restart local v8    # "cameraDoubleTapPowerDisabled":I
    :cond_25
    const/16 v47, 0x0

    goto/16 :goto_10

    .line 265
    .end local v8    # "cameraDoubleTapPowerDisabled":I
    :cond_26
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/ButtonSettings;->mCameraDoubleTapPowerGesture:Landroid/preference/SwitchPreference;

    move-object/from16 v47, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 266
    const/16 v47, 0x0

    move-object/from16 v0, v47

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/ButtonSettings;->mCameraDoubleTapPowerGesture:Landroid/preference/SwitchPreference;

    goto/16 :goto_11

    .line 269
    :cond_27
    move-object/from16 v0, v33

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_11

    .line 308
    :cond_28
    move-object/from16 v0, v33

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_12

    .line 317
    :cond_29
    move-object/from16 v0, v33

    invoke-virtual {v0, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_13

    .line 331
    .restart local v34    # "pressAction":I
    :cond_2a
    const/16 v47, 0x3

    goto/16 :goto_14

    .line 336
    .end local v34    # "pressAction":I
    :cond_2b
    move-object/from16 v0, v33

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_15

    .line 354
    :cond_2c
    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_16

    .line 378
    :cond_2d
    move-object/from16 v0, v33

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_17

    .line 395
    :cond_2e
    move-object/from16 v0, v33

    invoke-virtual {v0, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_18

    .line 413
    .restart local v9    # "cursorControlAction":I
    .restart local v44    # "swapVolumeKeys":I
    :cond_2f
    const/16 v47, 0x0

    goto/16 :goto_19

    .line 416
    .end local v9    # "cursorControlAction":I
    .end local v44    # "swapVolumeKeys":I
    :cond_30
    move-object/from16 v0, v33

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_1a

    .line 422
    :cond_31
    const/16 v16, 0x0

    .restart local v16    # "forceNavbar":Z
    goto/16 :goto_1b

    .line 424
    :cond_32
    const/16 v25, 0x1

    .local v25, "hasNavBar":Z
    goto/16 :goto_1c

    .line 434
    .end local v25    # "hasNavBar":Z
    :cond_33
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/ButtonSettings;->mNavigationPreferencesCat:Landroid/preference/PreferenceCategory;

    move-object/from16 v47, v0

    move-object/from16 v0, v33

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1d

    .line 436
    .end local v16    # "forceNavbar":Z
    :catch_0
    move-exception v15

    .line 437
    .local v15, "e":Landroid/os/RemoteException;
    const-string/jumbo v47, "SystemSettings"

    const-string/jumbo v48, "Error getting navigation bar status"

    invoke-static/range {v47 .. v48}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1d

    .line 443
    .end local v15    # "e":Landroid/os/RemoteException;
    .restart local v6    # "backlight":Lcom/android/exsettings/cyanogenmod/ButtonBacklightBrightness;
    :cond_34
    move-object/from16 v0, v33

    invoke-virtual {v0, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_1e

    .line 449
    :cond_35
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/ButtonSettings;->mCameraSleepOnRelease:Landroid/preference/SwitchPreference;

    move-object/from16 v47, v0

    const-string/jumbo v48, "camera_wake_screen"

    invoke-virtual/range {v47 .. v48}, Landroid/preference/SwitchPreference;->setDependency(Ljava/lang/String;)V

    goto/16 :goto_1f

    .line 237
    .end local v6    # "backlight":Lcom/android/exsettings/cyanogenmod/ButtonBacklightBrightness;
    .restart local v31    # "needsNavigationBar":Z
    :catch_1
    move-exception v15

    .restart local v15    # "e":Landroid/os/RemoteException;
    goto/16 :goto_e
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 9
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 589
    iget-object v6, p0, Lcom/android/exsettings/ButtonSettings;->mHomeLongPressAction:Landroid/preference/ListPreference;

    if-ne p1, v6, :cond_0

    .line 590
    iget-object v4, p0, Lcom/android/exsettings/ButtonSettings;->mHomeLongPressAction:Landroid/preference/ListPreference;

    .line 591
    const-string/jumbo v6, "key_home_long_press_action"

    .line 590
    invoke-direct {p0, v4, p2, v6}, Lcom/android/exsettings/ButtonSettings;->handleActionListChange(Landroid/preference/ListPreference;Ljava/lang/Object;Ljava/lang/String;)V

    .line 592
    return v5

    .line 593
    :cond_0
    iget-object v6, p0, Lcom/android/exsettings/ButtonSettings;->mHomeDoubleTapAction:Landroid/preference/ListPreference;

    if-ne p1, v6, :cond_1

    .line 594
    iget-object v4, p0, Lcom/android/exsettings/ButtonSettings;->mHomeDoubleTapAction:Landroid/preference/ListPreference;

    .line 595
    const-string/jumbo v6, "key_home_double_tap_action"

    .line 594
    invoke-direct {p0, v4, p2, v6}, Lcom/android/exsettings/ButtonSettings;->handleActionListChange(Landroid/preference/ListPreference;Ljava/lang/Object;Ljava/lang/String;)V

    .line 596
    return v5

    .line 597
    :cond_1
    iget-object v6, p0, Lcom/android/exsettings/ButtonSettings;->mMenuPressAction:Landroid/preference/ListPreference;

    if-ne p1, v6, :cond_2

    .line 598
    iget-object v4, p0, Lcom/android/exsettings/ButtonSettings;->mMenuPressAction:Landroid/preference/ListPreference;

    .line 599
    const-string/jumbo v6, "key_menu_action"

    .line 598
    invoke-direct {p0, v4, p2, v6}, Lcom/android/exsettings/ButtonSettings;->handleActionListChange(Landroid/preference/ListPreference;Ljava/lang/Object;Ljava/lang/String;)V

    .line 600
    return v5

    .line 601
    :cond_2
    iget-object v6, p0, Lcom/android/exsettings/ButtonSettings;->mMenuLongPressAction:Landroid/preference/ListPreference;

    if-ne p1, v6, :cond_3

    .line 602
    iget-object v4, p0, Lcom/android/exsettings/ButtonSettings;->mMenuLongPressAction:Landroid/preference/ListPreference;

    .line 603
    const-string/jumbo v6, "key_menu_long_press_action"

    .line 602
    invoke-direct {p0, v4, p2, v6}, Lcom/android/exsettings/ButtonSettings;->handleActionListChange(Landroid/preference/ListPreference;Ljava/lang/Object;Ljava/lang/String;)V

    .line 604
    return v5

    .line 605
    :cond_3
    iget-object v6, p0, Lcom/android/exsettings/ButtonSettings;->mAssistPressAction:Landroid/preference/ListPreference;

    if-ne p1, v6, :cond_4

    .line 606
    iget-object v4, p0, Lcom/android/exsettings/ButtonSettings;->mAssistPressAction:Landroid/preference/ListPreference;

    .line 607
    const-string/jumbo v6, "key_assist_action"

    .line 606
    invoke-direct {p0, v4, p2, v6}, Lcom/android/exsettings/ButtonSettings;->handleActionListChange(Landroid/preference/ListPreference;Ljava/lang/Object;Ljava/lang/String;)V

    .line 608
    return v5

    .line 609
    :cond_4
    iget-object v6, p0, Lcom/android/exsettings/ButtonSettings;->mAssistLongPressAction:Landroid/preference/ListPreference;

    if-ne p1, v6, :cond_5

    .line 610
    iget-object v4, p0, Lcom/android/exsettings/ButtonSettings;->mAssistLongPressAction:Landroid/preference/ListPreference;

    .line 611
    const-string/jumbo v6, "key_assist_long_press_action"

    .line 610
    invoke-direct {p0, v4, p2, v6}, Lcom/android/exsettings/ButtonSettings;->handleActionListChange(Landroid/preference/ListPreference;Ljava/lang/Object;Ljava/lang/String;)V

    .line 612
    return v5

    .line 613
    :cond_5
    iget-object v6, p0, Lcom/android/exsettings/ButtonSettings;->mNavigationBarHeight:Landroid/preference/SeekBarPreference;

    if-ne p1, v6, :cond_6

    .line 614
    invoke-virtual {p0}, Lcom/android/exsettings/ButtonSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 615
    const-string/jumbo v7, "navigation_bar_height"

    move-object v4, p2

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-float v4, v4

    const/high16 v8, 0x42c80000    # 100.0f

    div-float/2addr v4, v8

    .line 614
    invoke-static {v6, v7, v4}, Landroid/provider/Settings$System;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    .line 616
    iget-object v4, p0, Lcom/android/exsettings/ButtonSettings;->mNavigationBarHeight:Landroid/preference/SeekBarPreference;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/exsettings/ButtonSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c03ee

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "%"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/preference/SeekBarPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 617
    return v5

    .line 618
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_6
    iget-object v6, p0, Lcom/android/exsettings/ButtonSettings;->mAppSwitchPressAction:Landroid/preference/ListPreference;

    if-ne p1, v6, :cond_7

    .line 619
    iget-object v4, p0, Lcom/android/exsettings/ButtonSettings;->mAppSwitchPressAction:Landroid/preference/ListPreference;

    .line 620
    const-string/jumbo v6, "key_app_switch_action"

    .line 619
    invoke-direct {p0, v4, p2, v6}, Lcom/android/exsettings/ButtonSettings;->handleActionListChange(Landroid/preference/ListPreference;Ljava/lang/Object;Ljava/lang/String;)V

    .line 621
    return v5

    .line 622
    :cond_7
    iget-object v6, p0, Lcom/android/exsettings/ButtonSettings;->mAppSwitchLongPressAction:Landroid/preference/ListPreference;

    if-ne p1, v6, :cond_8

    .line 623
    iget-object v4, p0, Lcom/android/exsettings/ButtonSettings;->mAppSwitchLongPressAction:Landroid/preference/ListPreference;

    .line 624
    const-string/jumbo v6, "key_app_switch_long_press_action"

    .line 623
    invoke-direct {p0, v4, p2, v6}, Lcom/android/exsettings/ButtonSettings;->handleActionListChange(Landroid/preference/ListPreference;Ljava/lang/Object;Ljava/lang/String;)V

    .line 625
    return v5

    .line 626
    :cond_8
    iget-object v6, p0, Lcom/android/exsettings/ButtonSettings;->mVolumeKeyCursorControl:Landroid/preference/ListPreference;

    if-ne p1, v6, :cond_9

    .line 627
    iget-object v4, p0, Lcom/android/exsettings/ButtonSettings;->mVolumeKeyCursorControl:Landroid/preference/ListPreference;

    .line 628
    const-string/jumbo v6, "volume_key_cursor_control"

    .line 627
    invoke-direct {p0, v4, p2, v6}, Lcom/android/exsettings/ButtonSettings;->handleSystemActionListChange(Landroid/preference/ListPreference;Ljava/lang/Object;Ljava/lang/String;)V

    .line 629
    return v5

    .line 630
    :cond_9
    iget-object v6, p0, Lcom/android/exsettings/ButtonSettings;->mNavigationRecentsLongPressAction:Landroid/preference/ListPreference;

    if-ne p1, v6, :cond_b

    move-object v1, p2

    .line 633
    check-cast v1, Ljava/lang/String;

    .line 634
    .local v1, "putString":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/exsettings/ButtonSettings;->mNavigationRecentsLongPressAction:Landroid/preference/ListPreference;

    invoke-virtual {v4, v1}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 635
    .local v0, "index":I
    iget-object v4, p0, Lcom/android/exsettings/ButtonSettings;->mNavigationRecentsLongPressAction:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    aget-object v2, v4, v0

    .line 637
    .local v2, "summary":Ljava/lang/CharSequence;
    iget-object v4, p0, Lcom/android/exsettings/ButtonSettings;->mNavigationRecentsLongPressAction:Landroid/preference/ListPreference;

    invoke-virtual {v4, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 638
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_a

    .line 639
    const/4 v1, 0x0

    .line 641
    .end local v1    # "putString":Ljava/lang/String;
    :cond_a
    invoke-virtual {p0}, Lcom/android/exsettings/ButtonSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 642
    const-string/jumbo v6, "recents_long_press_activity"

    .line 641
    invoke-static {v4, v6, v1}, Lcyanogenmod/providers/CMSettings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 643
    return v5

    .line 644
    .end local v0    # "index":I
    .end local v2    # "summary":Ljava/lang/CharSequence;
    :cond_b
    iget-object v6, p0, Lcom/android/exsettings/ButtonSettings;->mCameraDoubleTapPowerGesture:Landroid/preference/SwitchPreference;

    if-ne p1, v6, :cond_d

    .line 645
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 646
    .local v3, "value":Z
    invoke-virtual {p0}, Lcom/android/exsettings/ButtonSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "camera_double_tap_power_gesture_disabled"

    .line 647
    if-eqz v3, :cond_c

    .line 646
    :goto_0
    invoke-static {v6, v7, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 648
    return v5

    :cond_c
    move v4, v5

    .line 647
    goto :goto_0

    .line 650
    .end local v3    # "value":Z
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_d
    return v4
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 6
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 720
    iget-object v1, p0, Lcom/android/exsettings/ButtonSettings;->mSwapVolumeButtons:Landroid/preference/SwitchPreference;

    if-ne p2, v1, :cond_3

    .line 721
    iget-object v1, p0, Lcom/android/exsettings/ButtonSettings;->mSwapVolumeButtons:Landroid/preference/SwitchPreference;

    invoke-virtual {v1}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 722
    invoke-virtual {p0}, Lcom/android/exsettings/ButtonSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lorg/cyanogenmod/internal/util/ScreenType;->isTablet(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x2

    .line 723
    .local v0, "value":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/exsettings/ButtonSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 724
    const-string/jumbo v2, "swap_volume_keys_on_rotation"

    .line 723
    invoke-static {v1, v2, v0}, Lcyanogenmod/providers/CMSettings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 747
    .end local v0    # "value":I
    :cond_0
    :goto_1
    invoke-super {p0, p1, p2}, Lcom/android/exsettings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    return v1

    .line 722
    :cond_1
    const/4 v0, 0x1

    .restart local v0    # "value":I
    goto :goto_0

    .end local v0    # "value":I
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "value":I
    goto :goto_0

    .line 725
    .end local v0    # "value":I
    :cond_3
    iget-object v1, p0, Lcom/android/exsettings/ButtonSettings;->mDisableNavigationKeys:Landroid/preference/SwitchPreference;

    if-ne p2, v1, :cond_4

    .line 726
    iget-object v1, p0, Lcom/android/exsettings/ButtonSettings;->mDisableNavigationKeys:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 727
    iget-object v1, p0, Lcom/android/exsettings/ButtonSettings;->mNavigationPreferencesCat:Landroid/preference/PreferenceCategory;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->setEnabled(Z)V

    .line 728
    invoke-virtual {p0}, Lcom/android/exsettings/ButtonSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/exsettings/ButtonSettings;->mDisableNavigationKeys:Landroid/preference/SwitchPreference;

    invoke-virtual {v2}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/android/exsettings/ButtonSettings;->writeDisableNavkeysOption(Landroid/content/Context;Z)V

    .line 729
    invoke-direct {p0}, Lcom/android/exsettings/ButtonSettings;->updateDisableNavkeysOption()V

    .line 730
    invoke-direct {p0, v3}, Lcom/android/exsettings/ButtonSettings;->updateDisableNavkeysCategories(Z)V

    .line 731
    iget-object v1, p0, Lcom/android/exsettings/ButtonSettings;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/exsettings/ButtonSettings$1;

    invoke-direct {v2, p0}, Lcom/android/exsettings/ButtonSettings$1;-><init>(Lcom/android/exsettings/ButtonSettings;)V

    .line 738
    const-wide/16 v4, 0x3e8

    .line 731
    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 739
    :cond_4
    iget-object v1, p0, Lcom/android/exsettings/ButtonSettings;->mPowerEndCall:Landroid/preference/SwitchPreference;

    if-ne p2, v1, :cond_5

    .line 740
    invoke-direct {p0}, Lcom/android/exsettings/ButtonSettings;->handleTogglePowerButtonEndsCallPreferenceClick()V

    .line 741
    return v3

    .line 742
    :cond_5
    iget-object v1, p0, Lcom/android/exsettings/ButtonSettings;->mHomeAnswerCall:Landroid/preference/SwitchPreference;

    if-ne p2, v1, :cond_0

    .line 743
    invoke-direct {p0}, Lcom/android/exsettings/ButtonSettings;->handleToggleHomeButtonAnswersCallPreferenceClick()V

    .line 744
    return v3
.end method

.method public onResume()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 471
    invoke-super {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;->onResume()V

    .line 474
    iget-object v4, p0, Lcom/android/exsettings/ButtonSettings;->mPowerEndCall:Landroid/preference/SwitchPreference;

    if-eqz v4, :cond_0

    .line 475
    invoke-virtual {p0}, Lcom/android/exsettings/ButtonSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 476
    const-string/jumbo v5, "incall_power_button_behavior"

    .line 475
    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 479
    .local v2, "incallPowerBehavior":I
    if-ne v2, v7, :cond_2

    const/4 v3, 0x1

    .line 480
    .local v3, "powerButtonEndsCall":Z
    :goto_0
    iget-object v4, p0, Lcom/android/exsettings/ButtonSettings;->mPowerEndCall:Landroid/preference/SwitchPreference;

    invoke-virtual {v4, v3}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 484
    .end local v2    # "incallPowerBehavior":I
    .end local v3    # "powerButtonEndsCall":Z
    :cond_0
    iget-object v4, p0, Lcom/android/exsettings/ButtonSettings;->mHomeAnswerCall:Landroid/preference/SwitchPreference;

    if-eqz v4, :cond_1

    .line 485
    invoke-virtual {p0}, Lcom/android/exsettings/ButtonSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 486
    const-string/jumbo v5, "ring_home_button_behavior"

    .line 485
    invoke-static {v4, v5, v6}, Lcyanogenmod/providers/CMSettings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 489
    .local v1, "incallHomeBehavior":I
    if-ne v1, v7, :cond_3

    const/4 v0, 0x1

    .line 490
    .local v0, "homeButtonAnswersCall":Z
    :goto_1
    iget-object v4, p0, Lcom/android/exsettings/ButtonSettings;->mHomeAnswerCall:Landroid/preference/SwitchPreference;

    invoke-virtual {v4, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 470
    .end local v0    # "homeButtonAnswersCall":Z
    .end local v1    # "incallHomeBehavior":I
    :cond_1
    return-void

    .line 479
    .restart local v2    # "incallPowerBehavior":I
    :cond_2
    const/4 v3, 0x0

    .restart local v3    # "powerButtonEndsCall":Z
    goto :goto_0

    .line 489
    .end local v2    # "incallPowerBehavior":I
    .end local v3    # "powerButtonEndsCall":Z
    .restart local v1    # "incallHomeBehavior":I
    :cond_3
    const/4 v0, 0x0

    .restart local v0    # "homeButtonAnswersCall":Z
    goto :goto_1
.end method
