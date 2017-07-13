.class public Lcom/android/exsettings/notification/ZenAccessSettings;
.super Lcom/android/exsettings/SettingsPreferenceFragment;
.source "ZenAccessSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exsettings/notification/ZenAccessSettings$SettingObserver;,
        Lcom/android/exsettings/notification/ZenAccessSettings$ScaryWarningDialogFragment;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEmpty:Landroid/widget/TextView;

.field private mNoMan:Landroid/app/NotificationManager;

.field private final mObserver:Lcom/android/exsettings/notification/ZenAccessSettings$SettingObserver;

.field private mPkgMan:Landroid/content/pm/PackageManager;


# direct methods
.method static synthetic -get0(Lcom/android/exsettings/notification/ZenAccessSettings;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/notification/ZenAccessSettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/exsettings/notification/ZenAccessSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/exsettings/notification/ZenAccessSettings;->reloadList()V

    return-void
.end method

.method static synthetic -wrap1(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "access"    # Z

    .prologue
    invoke-static {p0, p1, p2}, Lcom/android/exsettings/notification/ZenAccessSettings;->setAccess(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;-><init>()V

    .line 56
    new-instance v0, Lcom/android/exsettings/notification/ZenAccessSettings$SettingObserver;

    invoke-direct {v0, p0}, Lcom/android/exsettings/notification/ZenAccessSettings$SettingObserver;-><init>(Lcom/android/exsettings/notification/ZenAccessSettings;)V

    iput-object v0, p0, Lcom/android/exsettings/notification/ZenAccessSettings;->mObserver:Lcom/android/exsettings/notification/ZenAccessSettings$SettingObserver;

    .line 54
    return-void
.end method

.method private hasAccess(Ljava/lang/String;)Z
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/exsettings/notification/ZenAccessSettings;->mNoMan:Landroid/app/NotificationManager;

    invoke-virtual {v0, p1}, Landroid/app/NotificationManager;->isNotificationPolicyAccessGrantedForPackage(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private reloadList()V
    .locals 12

    .prologue
    const/4 v9, 0x0

    .line 103
    invoke-virtual {p0}, Lcom/android/exsettings/notification/ZenAccessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    .line 104
    .local v8, "screen":Landroid/preference/PreferenceScreen;
    invoke-virtual {v8}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 105
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 106
    .local v2, "apps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ApplicationInfo;>;"
    iget-object v10, p0, Lcom/android/exsettings/notification/ZenAccessSettings;->mNoMan:Landroid/app/NotificationManager;

    invoke-virtual {v10}, Landroid/app/NotificationManager;->getPackagesRequestingNotificationPolicyAccess()Landroid/util/ArraySet;

    move-result-object v7

    .line 107
    .local v7, "requesting":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-eqz v7, :cond_0

    invoke-virtual {v7}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 117
    :cond_0
    new-instance v10, Landroid/content/pm/PackageItemInfo$DisplayNameComparator;

    iget-object v11, p0, Lcom/android/exsettings/notification/ZenAccessSettings;->mPkgMan:Landroid/content/pm/PackageManager;

    invoke-direct {v10, v11}, Landroid/content/pm/PackageItemInfo$DisplayNameComparator;-><init>(Landroid/content/pm/PackageManager;)V

    invoke-static {v2, v10}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 118
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "app$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 119
    .local v0, "app":Landroid/content/pm/ApplicationInfo;
    iget-object v5, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 120
    .local v5, "pkg":Ljava/lang/String;
    iget-object v10, p0, Lcom/android/exsettings/notification/ZenAccessSettings;->mPkgMan:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v10}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 121
    .local v4, "label":Ljava/lang/CharSequence;
    new-instance v6, Landroid/preference/SwitchPreference;

    iget-object v10, p0, Lcom/android/exsettings/notification/ZenAccessSettings;->mContext:Landroid/content/Context;

    invoke-direct {v6, v10}, Landroid/preference/SwitchPreference;-><init>(Landroid/content/Context;)V

    .line 122
    .local v6, "pref":Landroid/preference/SwitchPreference;
    invoke-virtual {v6, v9}, Landroid/preference/SwitchPreference;->setPersistent(Z)V

    .line 123
    iget-object v10, p0, Lcom/android/exsettings/notification/ZenAccessSettings;->mPkgMan:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v10}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v6, v10}, Landroid/preference/SwitchPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 124
    invoke-virtual {v6, v4}, Landroid/preference/SwitchPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 125
    invoke-direct {p0, v5}, Lcom/android/exsettings/notification/ZenAccessSettings;->hasAccess(Ljava/lang/String;)Z

    move-result v10

    invoke-virtual {v6, v10}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 126
    new-instance v10, Lcom/android/exsettings/notification/ZenAccessSettings$1;

    invoke-direct {v10, p0, v5, v4}, Lcom/android/exsettings/notification/ZenAccessSettings$1;-><init>(Lcom/android/exsettings/notification/ZenAccessSettings;Ljava/lang/String;Ljava/lang/CharSequence;)V

    invoke-virtual {v6, v10}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 142
    invoke-virtual {v8, v6}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 108
    .end local v0    # "app":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "app$iterator":Ljava/util/Iterator;
    .end local v4    # "label":Ljava/lang/CharSequence;
    .end local v5    # "pkg":Ljava/lang/String;
    .end local v6    # "pref":Landroid/preference/SwitchPreference;
    :cond_1
    iget-object v10, p0, Lcom/android/exsettings/notification/ZenAccessSettings;->mPkgMan:Landroid/content/pm/PackageManager;

    invoke-virtual {v10, v9}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v3

    .line 109
    .local v3, "installed":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    if-eqz v3, :cond_0

    .line 110
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1    # "app$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 111
    .restart local v0    # "app":Landroid/content/pm/ApplicationInfo;
    iget-object v10, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v10}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 112
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 144
    .end local v0    # "app":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "installed":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    :cond_3
    iget-object v10, p0, Lcom/android/exsettings/notification/ZenAccessSettings;->mEmpty:Landroid/widget/TextView;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_4

    :goto_2
    invoke-virtual {v10, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 102
    return-void

    .line 144
    :cond_4
    const/16 v9, 0x8

    goto :goto_2
.end method

.method private static setAccess(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "access"    # Z

    .prologue
    .line 152
    new-instance v0, Lcom/android/exsettings/notification/ZenAccessSettings$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/exsettings/notification/ZenAccessSettings$2;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 151
    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 65
    const/16 v0, 0xb4

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 70
    invoke-super {p0, p1}, Lcom/android/exsettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 72
    invoke-virtual {p0}, Lcom/android/exsettings/notification/ZenAccessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/notification/ZenAccessSettings;->mContext:Landroid/content/Context;

    .line 73
    iget-object v0, p0, Lcom/android/exsettings/notification/ZenAccessSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/notification/ZenAccessSettings;->mPkgMan:Landroid/content/pm/PackageManager;

    .line 74
    iget-object v0, p0, Lcom/android/exsettings/notification/ZenAccessSettings;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/NotificationManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/exsettings/notification/ZenAccessSettings;->mNoMan:Landroid/app/NotificationManager;

    .line 75
    invoke-virtual {p0}, Lcom/android/exsettings/notification/ZenAccessSettings;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/exsettings/notification/ZenAccessSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/exsettings/notification/ZenAccessSettings;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    .line 69
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 81
    const v1, 0x7f040095

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 82
    .local v0, "v":Landroid/view/View;
    const v1, 0x1020004

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/exsettings/notification/ZenAccessSettings;->mEmpty:Landroid/widget/TextView;

    .line 83
    iget-object v1, p0, Lcom/android/exsettings/notification/ZenAccessSettings;->mEmpty:Landroid/widget/TextView;

    const v2, 0x7f0c0e9f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 84
    return-object v0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 98
    invoke-super {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;->onPause()V

    .line 99
    invoke-virtual {p0}, Lcom/android/exsettings/notification/ZenAccessSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/exsettings/notification/ZenAccessSettings;->mObserver:Lcom/android/exsettings/notification/ZenAccessSettings$SettingObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 97
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 89
    invoke-super {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;->onResume()V

    .line 90
    invoke-direct {p0}, Lcom/android/exsettings/notification/ZenAccessSettings;->reloadList()V

    .line 91
    invoke-virtual {p0}, Lcom/android/exsettings/notification/ZenAccessSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 92
    const-string/jumbo v1, "enabled_notification_policy_access_packages"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 93
    iget-object v2, p0, Lcom/android/exsettings/notification/ZenAccessSettings;->mObserver:Lcom/android/exsettings/notification/ZenAccessSettings$SettingObserver;

    .line 92
    const/4 v3, 0x0

    .line 91
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 88
    return-void
.end method
