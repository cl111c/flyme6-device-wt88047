.class public Lcom/android/exsettings/applications/DrawOverlayDetails;
.super Lcom/android/exsettings/applications/AppInfoWithHeader;
.source "DrawOverlayDetails.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# static fields
.field private static final APP_OPS_OP_CODE:[I


# instance fields
.field private mAppOpsManager:Landroid/app/AppOpsManager;

.field private mOverlayBridge:Lcom/android/exsettings/applications/AppStateOverlayBridge;

.field private mOverlayDesc:Landroid/preference/Preference;

.field private mOverlayPrefs:Landroid/preference/Preference;

.field private mOverlayState:Lcom/android/exsettings/applications/AppStateOverlayBridge$OverlayState;

.field private mSettingsIntent:Landroid/content/Intent;

.field private mSwitchPref:Landroid/preference/SwitchPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 54
    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 55
    const/16 v1, 0x18

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 54
    sput-object v0, Lcom/android/exsettings/applications/DrawOverlayDetails;->APP_OPS_OP_CODE:[I

    .line 46
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/exsettings/applications/AppInfoWithHeader;-><init>()V

    return-void
.end method

.method public static getSummary(Landroid/content/Context;Lcom/android/exsettings/applications/AppStateOverlayBridge$OverlayState;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "overlayState"    # Lcom/android/exsettings/applications/AppStateOverlayBridge$OverlayState;

    .prologue
    .line 175
    invoke-virtual {p1}, Lcom/android/exsettings/applications/AppStateOverlayBridge$OverlayState;->isPermissible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 176
    const v0, 0x7f0c0faa

    .line 175
    :goto_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 176
    :cond_0
    const v0, 0x7f0c0fab

    goto :goto_0
.end method

.method public static getSummary(Landroid/content/Context;Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;)Ljava/lang/CharSequence;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "entry"    # Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;

    .prologue
    .line 165
    iget-object v0, p1, Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 166
    new-instance v1, Lcom/android/exsettings/applications/AppStateOverlayBridge$OverlayState;

    iget-object v0, p1, Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    check-cast v0, Lcom/android/exsettings/applications/AppStateAppOpsBridge$PermissionState;

    invoke-direct {v1, v0}, Lcom/android/exsettings/applications/AppStateOverlayBridge$OverlayState;-><init>(Lcom/android/exsettings/applications/AppStateAppOpsBridge$PermissionState;)V

    invoke-static {p0, v1}, Lcom/android/exsettings/applications/DrawOverlayDetails;->getSummary(Landroid/content/Context;Lcom/android/exsettings/applications/AppStateOverlayBridge$OverlayState;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 171
    :cond_0
    iget-object v0, p1, Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/android/exsettings/applications/DrawOverlayDetails;->getSummary(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static getSummary(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    const v6, 0x7f0c0faa

    const v7, 0x7f0c0fab

    .line 181
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 182
    .local v4, "packageManager":Landroid/content/pm/PackageManager;
    const/4 v5, -0x1

    .line 184
    .local v5, "uid":I
    const/4 v8, 0x0

    :try_start_0
    invoke-virtual {v4, p1, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 185
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget v5, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 186
    iget v8, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_0

    .line 187
    const v6, 0x7f0c0faa

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    return-object v6

    .line 189
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v2

    .line 191
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v6, "DrawOverlayDetails"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Package "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " not found"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 192
    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 195
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_0
    const-string/jumbo v8, "appops"

    invoke-virtual {p0, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager;

    .line 197
    .local v1, "appOpsManager":Landroid/app/AppOpsManager;
    const/4 v8, -0x1

    if-ne v5, v8, :cond_1

    .line 198
    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 201
    :cond_1
    const/16 v8, 0x18

    invoke-virtual {v1, v8, v5, p1}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;)I

    move-result v3

    .line 202
    .local v3, "mode":I
    if-nez v3, :cond_2

    :goto_0
    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    return-object v6

    :cond_2
    move v6, v7

    .line 203
    goto :goto_0
.end method

.method private setCanDrawOverlay(Z)V
    .locals 5
    .param p1, "newState"    # Z

    .prologue
    .line 124
    iget-object v1, p0, Lcom/android/exsettings/applications/DrawOverlayDetails;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 125
    iget-object v0, p0, Lcom/android/exsettings/applications/DrawOverlayDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v3, p0, Lcom/android/exsettings/applications/DrawOverlayDetails;->mPackageName:Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 126
    const/4 v0, 0x0

    .line 124
    :goto_0
    const/16 v4, 0x18

    invoke-virtual {v1, v4, v2, v3, v0}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    .line 123
    return-void

    .line 126
    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method


# virtual methods
.method protected createDialog(II)Landroid/app/AlertDialog;
    .locals 1
    .param p1, "id"    # I
    .param p2, "errorCode"    # I

    .prologue
    .line 156
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 161
    const/16 v0, 0xdd

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 70
    invoke-super {p0, p1}, Lcom/android/exsettings/applications/AppInfoWithHeader;->onCreate(Landroid/os/Bundle;)V

    .line 72
    invoke-virtual {p0}, Lcom/android/exsettings/applications/DrawOverlayDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 73
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Lcom/android/exsettings/applications/AppStateOverlayBridge;

    iget-object v2, p0, Lcom/android/exsettings/applications/DrawOverlayDetails;->mState:Lcom/android/exsettingslib/applications/ApplicationsState;

    const/4 v3, 0x0

    invoke-direct {v1, v0, v2, v3}, Lcom/android/exsettings/applications/AppStateOverlayBridge;-><init>(Landroid/content/Context;Lcom/android/exsettingslib/applications/ApplicationsState;Lcom/android/exsettings/applications/AppStateBaseBridge$Callback;)V

    iput-object v1, p0, Lcom/android/exsettings/applications/DrawOverlayDetails;->mOverlayBridge:Lcom/android/exsettings/applications/AppStateOverlayBridge;

    .line 74
    const-string/jumbo v1, "appops"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager;

    iput-object v1, p0, Lcom/android/exsettings/applications/DrawOverlayDetails;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 77
    const v1, 0x7f08000c

    invoke-virtual {p0, v1}, Lcom/android/exsettings/applications/DrawOverlayDetails;->addPreferencesFromResource(I)V

    .line 78
    const-string/jumbo v1, "app_ops_settings_switch"

    invoke-virtual {p0, v1}, Lcom/android/exsettings/applications/DrawOverlayDetails;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreference;

    iput-object v1, p0, Lcom/android/exsettings/applications/DrawOverlayDetails;->mSwitchPref:Landroid/preference/SwitchPreference;

    .line 79
    const-string/jumbo v1, "app_ops_settings_preference"

    invoke-virtual {p0, v1}, Lcom/android/exsettings/applications/DrawOverlayDetails;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/exsettings/applications/DrawOverlayDetails;->mOverlayPrefs:Landroid/preference/Preference;

    .line 80
    const-string/jumbo v1, "app_ops_settings_description"

    invoke-virtual {p0, v1}, Lcom/android/exsettings/applications/DrawOverlayDetails;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/exsettings/applications/DrawOverlayDetails;->mOverlayDesc:Landroid/preference/Preference;

    .line 83
    invoke-virtual {p0}, Lcom/android/exsettings/applications/DrawOverlayDetails;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const v2, 0x7f0c0f9f

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->setTitle(I)V

    .line 84
    iget-object v1, p0, Lcom/android/exsettings/applications/DrawOverlayDetails;->mSwitchPref:Landroid/preference/SwitchPreference;

    const v2, 0x7f0c0fa3

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setTitle(I)V

    .line 85
    iget-object v1, p0, Lcom/android/exsettings/applications/DrawOverlayDetails;->mOverlayPrefs:Landroid/preference/Preference;

    const v2, 0x7f0c0fa4

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setTitle(I)V

    .line 86
    iget-object v1, p0, Lcom/android/exsettings/applications/DrawOverlayDetails;->mOverlayDesc:Landroid/preference/Preference;

    const v2, 0x7f0c0fa5

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(I)V

    .line 89
    iget-object v1, p0, Lcom/android/exsettings/applications/DrawOverlayDetails;->mSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 90
    iget-object v1, p0, Lcom/android/exsettings/applications/DrawOverlayDetails;->mOverlayPrefs:Landroid/preference/Preference;

    invoke-virtual {v1, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 92
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 93
    const-string/jumbo v2, "android.settings.action.MANAGE_OVERLAY_PERMISSION"

    .line 92
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/exsettings/applications/DrawOverlayDetails;->mSettingsIntent:Landroid/content/Intent;

    .line 69
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 113
    iget-object v2, p0, Lcom/android/exsettings/applications/DrawOverlayDetails;->mSwitchPref:Landroid/preference/SwitchPreference;

    if-ne p1, v2, :cond_2

    .line 114
    iget-object v2, p0, Lcom/android/exsettings/applications/DrawOverlayDetails;->mOverlayState:Lcom/android/exsettings/applications/AppStateOverlayBridge$OverlayState;

    if-eqz v2, :cond_0

    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iget-object v3, p0, Lcom/android/exsettings/applications/DrawOverlayDetails;->mOverlayState:Lcom/android/exsettings/applications/AppStateOverlayBridge$OverlayState;

    invoke-virtual {v3}, Lcom/android/exsettings/applications/AppStateOverlayBridge$OverlayState;->isPermissible()Z

    move-result v3

    if-eq v2, v3, :cond_0

    .line 115
    iget-object v2, p0, Lcom/android/exsettings/applications/DrawOverlayDetails;->mOverlayState:Lcom/android/exsettings/applications/AppStateOverlayBridge$OverlayState;

    invoke-virtual {v2}, Lcom/android/exsettings/applications/AppStateOverlayBridge$OverlayState;->isPermissible()Z

    move-result v2

    if-eqz v2, :cond_1

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/exsettings/applications/DrawOverlayDetails;->setCanDrawOverlay(Z)V

    .line 116
    invoke-virtual {p0}, Lcom/android/exsettings/applications/DrawOverlayDetails;->refreshUi()Z

    .line 118
    :cond_0
    return v1

    :cond_1
    move v0, v1

    .line 115
    goto :goto_0

    .line 120
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_2
    return v0
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 5
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 98
    iget-object v1, p0, Lcom/android/exsettings/applications/DrawOverlayDetails;->mOverlayPrefs:Landroid/preference/Preference;

    if-ne p1, v1, :cond_1

    .line 99
    iget-object v1, p0, Lcom/android/exsettings/applications/DrawOverlayDetails;->mSettingsIntent:Landroid/content/Intent;

    if-eqz v1, :cond_0

    .line 101
    :try_start_0
    invoke-virtual {p0}, Lcom/android/exsettings/applications/DrawOverlayDetails;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/exsettings/applications/DrawOverlayDetails;->mSettingsIntent:Landroid/content/Intent;

    new-instance v3, Landroid/os/UserHandle;

    iget v4, p0, Lcom/android/exsettings/applications/DrawOverlayDetails;->mUserId:I

    invoke-direct {v3, v4}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    :cond_0
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 102
    :catch_0
    move-exception v0

    .line 103
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string/jumbo v1, "DrawOverlayDetails"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unable to launch app draw overlay settings "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/exsettings/applications/DrawOverlayDetails;->mSettingsIntent:Landroid/content/Intent;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 108
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method protected refreshUi()Z
    .locals 4

    .prologue
    .line 141
    iget-object v1, p0, Lcom/android/exsettings/applications/DrawOverlayDetails;->mOverlayBridge:Lcom/android/exsettings/applications/AppStateOverlayBridge;

    iget-object v2, p0, Lcom/android/exsettings/applications/DrawOverlayDetails;->mPackageName:Ljava/lang/String;

    .line 142
    iget-object v3, p0, Lcom/android/exsettings/applications/DrawOverlayDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 141
    invoke-virtual {v1, v2, v3}, Lcom/android/exsettings/applications/AppStateOverlayBridge;->getOverlayInfo(Ljava/lang/String;I)Lcom/android/exsettings/applications/AppStateOverlayBridge$OverlayState;

    move-result-object v1

    iput-object v1, p0, Lcom/android/exsettings/applications/DrawOverlayDetails;->mOverlayState:Lcom/android/exsettings/applications/AppStateOverlayBridge$OverlayState;

    .line 144
    iget-object v1, p0, Lcom/android/exsettings/applications/DrawOverlayDetails;->mOverlayState:Lcom/android/exsettings/applications/AppStateOverlayBridge$OverlayState;

    invoke-virtual {v1}, Lcom/android/exsettings/applications/AppStateOverlayBridge$OverlayState;->isPermissible()Z

    move-result v0

    .line 145
    .local v0, "isAllowed":Z
    iget-object v1, p0, Lcom/android/exsettings/applications/DrawOverlayDetails;->mSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 147
    iget-object v1, p0, Lcom/android/exsettings/applications/DrawOverlayDetails;->mSwitchPref:Landroid/preference/SwitchPreference;

    iget-object v2, p0, Lcom/android/exsettings/applications/DrawOverlayDetails;->mOverlayState:Lcom/android/exsettings/applications/AppStateOverlayBridge$OverlayState;

    iget-boolean v2, v2, Lcom/android/exsettings/applications/AppStateOverlayBridge$OverlayState;->permissionDeclared:Z

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 148
    iget-object v1, p0, Lcom/android/exsettings/applications/DrawOverlayDetails;->mOverlayPrefs:Landroid/preference/Preference;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 149
    invoke-virtual {p0}, Lcom/android/exsettings/applications/DrawOverlayDetails;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/exsettings/applications/DrawOverlayDetails;->mOverlayPrefs:Landroid/preference/Preference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 151
    const/4 v1, 0x1

    return v1
.end method
