.class public Lcom/android/exsettings/inputmethod/StylusGestures;
.super Lcom/android/exsettings/SettingsPreferenceFragment;
.source "StylusGestures.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mActionNames:[Ljava/lang/String;

.field private mActionValues:[Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mResolver:Landroid/content/ContentResolver;

.field private mSwipeDouble:Landroid/preference/ListPreference;

.field private mSwipeDown:Landroid/preference/ListPreference;

.field private mSwipeLeft:Landroid/preference/ListPreference;

.field private mSwipeLong:Landroid/preference/ListPreference;

.field private mSwipeRight:Landroid/preference/ListPreference;

.field private mSwipeUp:Landroid/preference/ListPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private addApplicationEntries(Landroid/preference/ListPreference;Ljava/lang/String;)V
    .locals 11
    .param p1, "pref"    # Landroid/preference/ListPreference;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    .line 157
    invoke-virtual {p0}, Lcom/android/exsettings/inputmethod/StylusGestures;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 159
    .local v7, "pm":Landroid/content/pm/PackageManager;
    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v9, "android.intent.action.MAIN"

    invoke-direct {v4, v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 160
    .local v4, "intent":Landroid/content/Intent;
    const-string/jumbo v9, "android.intent.category.LAUNCHER"

    invoke-virtual {v4, v9}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 162
    const/4 v9, 0x0

    .line 161
    invoke-virtual {v7, v4, v9}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v6

    .line 164
    .local v6, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v9, Landroid/content/pm/ResolveInfo$DisplayNameComparator;

    invoke-direct {v9, v7}, Landroid/content/pm/ResolveInfo$DisplayNameComparator;-><init>(Landroid/content/pm/PackageManager;)V

    invoke-static {v6, v9}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 166
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v9

    iget-object v10, p0, Lcom/android/exsettings/inputmethod/StylusGestures;->mActionValues:[Ljava/lang/String;

    array-length v10, v10

    add-int v0, v9, v10

    .line 167
    .local v0, "count":I
    new-array v1, v0, [Ljava/lang/CharSequence;

    .line 168
    .local v1, "entries":[Ljava/lang/CharSequence;
    new-array v8, v0, [Ljava/lang/CharSequence;

    .line 171
    .local v8, "values":[Ljava/lang/CharSequence;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v9, p0, Lcom/android/exsettings/inputmethod/StylusGestures;->mActionValues:[Ljava/lang/String;

    array-length v9, v9

    if-ge v2, v9, :cond_0

    .line 172
    iget-object v9, p0, Lcom/android/exsettings/inputmethod/StylusGestures;->mActionNames:[Ljava/lang/String;

    aget-object v9, v9, v2

    aput-object v9, v1, v2

    .line 173
    iget-object v9, p0, Lcom/android/exsettings/inputmethod/StylusGestures;->mActionValues:[Ljava/lang/String;

    aget-object v9, v9, v2

    aput-object v9, v8, v2

    .line 171
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 177
    :cond_0
    iget-object v9, p0, Lcom/android/exsettings/inputmethod/StylusGestures;->mActionValues:[Ljava/lang/String;

    array-length v2, v9

    :goto_1
    if-ge v2, v0, :cond_2

    .line 178
    iget-object v9, p0, Lcom/android/exsettings/inputmethod/StylusGestures;->mActionValues:[Ljava/lang/String;

    array-length v9, v9

    sub-int v9, v2, v9

    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 179
    .local v3, "info":Landroid/content/pm/ResolveInfo;
    invoke-virtual {v3, v7}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    .line 180
    .local v5, "label":Ljava/lang/CharSequence;
    if-nez v5, :cond_1

    .line 181
    iget-object v9, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v9, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 184
    :cond_1
    aput-object v5, v1, v2

    .line 185
    iget-object v9, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    aput-object v9, v8, v2

    .line 177
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 188
    .end local v3    # "info":Landroid/content/pm/ResolveInfo;
    .end local v5    # "label":Ljava/lang/CharSequence;
    :cond_2
    invoke-virtual {p1, v1}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 189
    invoke-virtual {p1, v8}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 190
    invoke-direct {p0, p1, p2}, Lcom/android/exsettings/inputmethod/StylusGestures;->setPrefValue(Landroid/preference/ListPreference;Ljava/lang/String;)V

    .line 156
    return-void
.end method

.method private getAppName(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 194
    iget-object v3, p0, Lcom/android/exsettings/inputmethod/StylusGestures;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 198
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 203
    :goto_0
    if-eqz v0, :cond_0

    .line 204
    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v3

    return-object v3

    .line 199
    :catch_0
    move-exception v1

    .line 200
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v0, 0x0

    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    goto :goto_0

    .line 206
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    return-object v4
.end method

.method private mapUpdateValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "time"    # Ljava/lang/String;

    .prologue
    .line 126
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/exsettings/inputmethod/StylusGestures;->mActionValues:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 127
    iget-object v1, p0, Lcom/android/exsettings/inputmethod/StylusGestures;->mActionValues:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 128
    iget-object v1, p0, Lcom/android/exsettings/inputmethod/StylusGestures;->mActionNames:[Ljava/lang/String;

    aget-object v1, v1, v0

    return-object v1

    .line 126
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 131
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method private setPrefValue(Landroid/preference/ListPreference;Ljava/lang/String;)V
    .locals 5
    .param p1, "pref"    # Landroid/preference/ListPreference;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 135
    if-nez p2, :cond_0

    .line 136
    const/16 v2, 0x3e8

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    .line 139
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/exsettings/inputmethod/StylusGestures;->mapUpdateValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 140
    .local v1, "text":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 141
    invoke-virtual {p1, p2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 142
    invoke-virtual {p1, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 134
    :goto_0
    return-void

    .line 144
    :cond_1
    invoke-direct {p0, p2}, Lcom/android/exsettings/inputmethod/StylusGestures;->getAppName(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 145
    .local v0, "appName":Ljava/lang/CharSequence;
    if-eqz v0, :cond_2

    .line 146
    invoke-virtual {p1, p2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 147
    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 149
    :cond_2
    iget-object v2, p0, Lcom/android/exsettings/inputmethod/StylusGestures;->mContext:Landroid/content/Context;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    .line 150
    const/4 v4, 0x0

    aput-object p2, v3, v4

    .line 149
    const v4, 0x7f0c0284

    invoke-virtual {v2, v4, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private setupGesturePref(Ljava/lang/String;Ljava/lang/String;)Landroid/preference/ListPreference;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "settingName"    # Ljava/lang/String;

    .prologue
    .line 92
    invoke-virtual {p0, p1}, Lcom/android/exsettings/inputmethod/StylusGestures;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    .line 93
    .local v0, "pref":Landroid/preference/ListPreference;
    iget-object v2, p0, Lcom/android/exsettings/inputmethod/StylusGestures;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v2, p2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 94
    .local v1, "setting":Ljava/lang/String;
    invoke-direct {p0, v0, v1}, Lcom/android/exsettings/inputmethod/StylusGestures;->addApplicationEntries(Landroid/preference/ListPreference;Ljava/lang/String;)V

    .line 95
    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 96
    return-object v0
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 88
    const v0, -0x7fffffeb

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 68
    invoke-super {p0, p1}, Lcom/android/exsettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 69
    const v1, 0x7f08002a

    invoke-virtual {p0, v1}, Lcom/android/exsettings/inputmethod/StylusGestures;->addPreferencesFromResource(I)V

    .line 70
    invoke-virtual {p0}, Lcom/android/exsettings/inputmethod/StylusGestures;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iput-object v1, p0, Lcom/android/exsettings/inputmethod/StylusGestures;->mContext:Landroid/content/Context;

    .line 71
    invoke-virtual {p0}, Lcom/android/exsettings/inputmethod/StylusGestures;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/exsettings/inputmethod/StylusGestures;->mResolver:Landroid/content/ContentResolver;

    .line 73
    iget-object v1, p0, Lcom/android/exsettings/inputmethod/StylusGestures;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 74
    .local v0, "resources":Landroid/content/res/Resources;
    const v1, 0x7f0a008b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/exsettings/inputmethod/StylusGestures;->mActionNames:[Ljava/lang/String;

    .line 75
    const v1, 0x7f0a008c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/exsettings/inputmethod/StylusGestures;->mActionValues:[Ljava/lang/String;

    .line 78
    const-string/jumbo v1, "gestures_left"

    const-string/jumbo v2, "gestures_left_swipe"

    invoke-direct {p0, v1, v2}, Lcom/android/exsettings/inputmethod/StylusGestures;->setupGesturePref(Ljava/lang/String;Ljava/lang/String;)Landroid/preference/ListPreference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/exsettings/inputmethod/StylusGestures;->mSwipeLeft:Landroid/preference/ListPreference;

    .line 79
    const-string/jumbo v1, "gestures_right"

    const-string/jumbo v2, "gestures_right_swipe"

    invoke-direct {p0, v1, v2}, Lcom/android/exsettings/inputmethod/StylusGestures;->setupGesturePref(Ljava/lang/String;Ljava/lang/String;)Landroid/preference/ListPreference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/exsettings/inputmethod/StylusGestures;->mSwipeRight:Landroid/preference/ListPreference;

    .line 80
    const-string/jumbo v1, "gestures_up"

    const-string/jumbo v2, "gestures_up_swipe"

    invoke-direct {p0, v1, v2}, Lcom/android/exsettings/inputmethod/StylusGestures;->setupGesturePref(Ljava/lang/String;Ljava/lang/String;)Landroid/preference/ListPreference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/exsettings/inputmethod/StylusGestures;->mSwipeUp:Landroid/preference/ListPreference;

    .line 81
    const-string/jumbo v1, "gestures_down"

    const-string/jumbo v2, "gestures_down_swipe"

    invoke-direct {p0, v1, v2}, Lcom/android/exsettings/inputmethod/StylusGestures;->setupGesturePref(Ljava/lang/String;Ljava/lang/String;)Landroid/preference/ListPreference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/exsettings/inputmethod/StylusGestures;->mSwipeDown:Landroid/preference/ListPreference;

    .line 82
    const-string/jumbo v1, "gestures_long"

    const-string/jumbo v2, "gestures_long_press"

    invoke-direct {p0, v1, v2}, Lcom/android/exsettings/inputmethod/StylusGestures;->setupGesturePref(Ljava/lang/String;Ljava/lang/String;)Landroid/preference/ListPreference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/exsettings/inputmethod/StylusGestures;->mSwipeLong:Landroid/preference/ListPreference;

    .line 83
    const-string/jumbo v1, "gestures_double"

    const-string/jumbo v2, "gestures_double_tap"

    invoke-direct {p0, v1, v2}, Lcom/android/exsettings/inputmethod/StylusGestures;->setupGesturePref(Ljava/lang/String;Ljava/lang/String;)Landroid/preference/ListPreference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/exsettings/inputmethod/StylusGestures;->mSwipeDouble:Landroid/preference/ListPreference;

    .line 67
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 101
    const/4 v1, 0x0

    .line 103
    .local v1, "settingName":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/exsettings/inputmethod/StylusGestures;->mSwipeLeft:Landroid/preference/ListPreference;

    if-ne p1, v2, :cond_0

    .line 104
    const-string/jumbo v1, "gestures_left_swipe"

    .line 119
    .local v1, "settingName":Ljava/lang/String;
    :goto_0
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 120
    .local v0, "packageName":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/exsettings/inputmethod/StylusGestures;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v2, v1, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 121
    check-cast p1, Landroid/preference/ListPreference;

    .end local p1    # "preference":Landroid/preference/Preference;
    invoke-direct {p0, p1, v0}, Lcom/android/exsettings/inputmethod/StylusGestures;->setPrefValue(Landroid/preference/ListPreference;Ljava/lang/String;)V

    .line 122
    const/4 v2, 0x1

    return v2

    .line 105
    .end local v0    # "packageName":Ljava/lang/String;
    .local v1, "settingName":Ljava/lang/String;
    .restart local p1    # "preference":Landroid/preference/Preference;
    :cond_0
    iget-object v2, p0, Lcom/android/exsettings/inputmethod/StylusGestures;->mSwipeRight:Landroid/preference/ListPreference;

    if-ne p1, v2, :cond_1

    .line 106
    const-string/jumbo v1, "gestures_right_swipe"

    .local v1, "settingName":Ljava/lang/String;
    goto :goto_0

    .line 107
    .local v1, "settingName":Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lcom/android/exsettings/inputmethod/StylusGestures;->mSwipeUp:Landroid/preference/ListPreference;

    if-ne p1, v2, :cond_2

    .line 108
    const-string/jumbo v1, "gestures_up_swipe"

    .local v1, "settingName":Ljava/lang/String;
    goto :goto_0

    .line 109
    .local v1, "settingName":Ljava/lang/String;
    :cond_2
    iget-object v2, p0, Lcom/android/exsettings/inputmethod/StylusGestures;->mSwipeDown:Landroid/preference/ListPreference;

    if-ne p1, v2, :cond_3

    .line 110
    const-string/jumbo v1, "gestures_down_swipe"

    .local v1, "settingName":Ljava/lang/String;
    goto :goto_0

    .line 111
    .local v1, "settingName":Ljava/lang/String;
    :cond_3
    iget-object v2, p0, Lcom/android/exsettings/inputmethod/StylusGestures;->mSwipeLong:Landroid/preference/ListPreference;

    if-ne p1, v2, :cond_4

    .line 112
    const-string/jumbo v1, "gestures_long_press"

    .local v1, "settingName":Ljava/lang/String;
    goto :goto_0

    .line 113
    .local v1, "settingName":Ljava/lang/String;
    :cond_4
    iget-object v2, p0, Lcom/android/exsettings/inputmethod/StylusGestures;->mSwipeDouble:Landroid/preference/ListPreference;

    if-ne p1, v2, :cond_5

    .line 114
    const-string/jumbo v1, "gestures_double_tap"

    .local v1, "settingName":Ljava/lang/String;
    goto :goto_0

    .line 116
    .local v1, "settingName":Ljava/lang/String;
    :cond_5
    const/4 v2, 0x0

    return v2
.end method
