.class public Lcom/android/exsettings/applications/ManageDefaultApps;
.super Lcom/android/exsettings/SettingsPreferenceFragment;
.source "ManageDefaultApps.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;
.implements Lcom/android/exsettings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exsettings/applications/ManageDefaultApps$1;,
        Lcom/android/exsettings/applications/ManageDefaultApps$2;,
        Lcom/android/exsettings/applications/ManageDefaultApps$3;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/exsettings/search/Indexable$SearchIndexProvider;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mDefaultBrowserPreference:Lcom/android/exsettings/applications/DefaultBrowserPreference;

.field private final mHandler:Landroid/os/Handler;

.field private final mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

.field private mPm:Landroid/content/pm/PackageManager;

.field private final mUpdateRunnable:Ljava/lang/Runnable;

.field private myUserId:I


# direct methods
.method static synthetic -get0(Lcom/android/exsettings/applications/ManageDefaultApps;)Lcom/android/exsettings/applications/DefaultBrowserPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/applications/ManageDefaultApps;->mDefaultBrowserPreference:Lcom/android/exsettings/applications/DefaultBrowserPreference;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/exsettings/applications/ManageDefaultApps;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/applications/ManageDefaultApps;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/exsettings/applications/ManageDefaultApps;)Landroid/content/pm/PackageManager;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/applications/ManageDefaultApps;->mPm:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/exsettings/applications/ManageDefaultApps;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/applications/ManageDefaultApps;->mUpdateRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/exsettings/applications/ManageDefaultApps;)I
    .locals 1

    iget v0, p0, Lcom/android/exsettings/applications/ManageDefaultApps;->myUserId:I

    return v0
.end method

.method static synthetic -wrap0(Lcom/android/exsettings/applications/ManageDefaultApps;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/exsettings/applications/ManageDefaultApps;->updateDefaultBrowserPreference()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const-class v0, Lcom/android/exsettings/applications/ManageDefaultApps;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/exsettings/applications/ManageDefaultApps;->TAG:Ljava/lang/String;

    .line 206
    new-instance v0, Lcom/android/exsettings/applications/ManageDefaultApps$3;

    invoke-direct {v0}, Lcom/android/exsettings/applications/ManageDefaultApps$3;-><init>()V

    .line 205
    sput-object v0, Lcom/android/exsettings/applications/ManageDefaultApps;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/exsettings/search/Indexable$SearchIndexProvider;

    .line 47
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;-><init>()V

    .line 63
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/exsettings/applications/ManageDefaultApps;->mHandler:Landroid/os/Handler;

    .line 65
    new-instance v0, Lcom/android/exsettings/applications/ManageDefaultApps$1;

    invoke-direct {v0, p0}, Lcom/android/exsettings/applications/ManageDefaultApps$1;-><init>(Lcom/android/exsettings/applications/ManageDefaultApps;)V

    iput-object v0, p0, Lcom/android/exsettings/applications/ManageDefaultApps;->mUpdateRunnable:Ljava/lang/Runnable;

    .line 72
    new-instance v0, Lcom/android/exsettings/applications/ManageDefaultApps$2;

    invoke-direct {v0, p0}, Lcom/android/exsettings/applications/ManageDefaultApps$2;-><init>(Lcom/android/exsettings/applications/ManageDefaultApps;)V

    iput-object v0, p0, Lcom/android/exsettings/applications/ManageDefaultApps;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    .line 47
    return-void
.end method

.method private updateDefaultBrowserPreference()V
    .locals 9

    .prologue
    const v8, 0x7f0c0f4f

    .line 99
    iget-object v5, p0, Lcom/android/exsettings/applications/ManageDefaultApps;->mDefaultBrowserPreference:Lcom/android/exsettings/applications/DefaultBrowserPreference;

    invoke-virtual {v5}, Lcom/android/exsettings/applications/DefaultBrowserPreference;->refreshBrowserApps()V

    .line 101
    invoke-virtual {p0}, Lcom/android/exsettings/applications/ManageDefaultApps;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 103
    .local v4, "pm":Landroid/content/pm/PackageManager;
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getDefaultBrowserPackageName(I)Ljava/lang/String;

    move-result-object v3

    .line 104
    .local v3, "packageName":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 106
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 107
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 108
    const-string/jumbo v5, "android.intent.action.VIEW"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 109
    const-string/jumbo v5, "android.intent.category.BROWSABLE"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 110
    const-string/jumbo v5, "http:"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 112
    iget-object v5, p0, Lcom/android/exsettings/applications/ManageDefaultApps;->mPm:Landroid/content/pm/PackageManager;

    iget v6, p0, Lcom/android/exsettings/applications/ManageDefaultApps;->myUserId:I

    const/4 v7, 0x0

    invoke-virtual {v5, v1, v7, v6}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 113
    .local v0, "info":Landroid/content/pm/ResolveInfo;
    if-eqz v0, :cond_0

    .line 114
    iget-object v5, p0, Lcom/android/exsettings/applications/ManageDefaultApps;->mDefaultBrowserPreference:Lcom/android/exsettings/applications/DefaultBrowserPreference;

    invoke-virtual {v5, v3}, Lcom/android/exsettings/applications/DefaultBrowserPreference;->setValue(Ljava/lang/String;)V

    .line 115
    invoke-virtual {v0, v4}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 116
    .local v2, "label":Ljava/lang/CharSequence;
    iget-object v5, p0, Lcom/android/exsettings/applications/ManageDefaultApps;->mDefaultBrowserPreference:Lcom/android/exsettings/applications/DefaultBrowserPreference;

    invoke-virtual {v5, v2}, Lcom/android/exsettings/applications/DefaultBrowserPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 98
    .end local v0    # "info":Landroid/content/pm/ResolveInfo;
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "label":Ljava/lang/CharSequence;
    :goto_0
    return-void

    .line 118
    .restart local v0    # "info":Landroid/content/pm/ResolveInfo;
    .restart local v1    # "intent":Landroid/content/Intent;
    :cond_0
    iget-object v5, p0, Lcom/android/exsettings/applications/ManageDefaultApps;->mDefaultBrowserPreference:Lcom/android/exsettings/applications/DefaultBrowserPreference;

    invoke-virtual {v5, v8}, Lcom/android/exsettings/applications/DefaultBrowserPreference;->setSummary(I)V

    goto :goto_0

    .line 121
    .end local v0    # "info":Landroid/content/pm/ResolveInfo;
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_1
    iget-object v5, p0, Lcom/android/exsettings/applications/ManageDefaultApps;->mDefaultBrowserPreference:Lcom/android/exsettings/applications/DefaultBrowserPreference;

    invoke-virtual {v5, v8}, Lcom/android/exsettings/applications/DefaultBrowserPreference;->setSummary(I)V

    .line 122
    sget-object v5, Lcom/android/exsettings/applications/ManageDefaultApps;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "Cannot set empty default Browser value!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 197
    const/16 v0, 0xb5

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x1

    .line 128
    invoke-super {p0, p1}, Lcom/android/exsettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 130
    const v1, 0x7f08001d

    invoke-virtual {p0, v1}, Lcom/android/exsettings/applications/ManageDefaultApps;->addPreferencesFromResource(I)V

    .line 132
    invoke-virtual {p0}, Lcom/android/exsettings/applications/ManageDefaultApps;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/exsettings/applications/ManageDefaultApps;->mPm:Landroid/content/pm/PackageManager;

    .line 133
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    iput v1, p0, Lcom/android/exsettings/applications/ManageDefaultApps;->myUserId:I

    .line 135
    const-string/jumbo v1, "default_browser"

    invoke-virtual {p0, v1}, Lcom/android/exsettings/applications/ManageDefaultApps;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/exsettings/applications/DefaultBrowserPreference;

    iput-object v1, p0, Lcom/android/exsettings/applications/ManageDefaultApps;->mDefaultBrowserPreference:Lcom/android/exsettings/applications/DefaultBrowserPreference;

    .line 136
    iget-object v1, p0, Lcom/android/exsettings/applications/ManageDefaultApps;->mDefaultBrowserPreference:Lcom/android/exsettings/applications/DefaultBrowserPreference;

    .line 137
    new-instance v2, Lcom/android/exsettings/applications/ManageDefaultApps$4;

    invoke-direct {v2, p0}, Lcom/android/exsettings/applications/ManageDefaultApps$4;-><init>(Lcom/android/exsettings/applications/ManageDefaultApps;)V

    .line 136
    invoke-virtual {v1, v2}, Lcom/android/exsettings/applications/DefaultBrowserPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 157
    invoke-virtual {p0}, Lcom/android/exsettings/applications/ManageDefaultApps;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    .line 158
    iget v2, p0, Lcom/android/exsettings/applications/ManageDefaultApps;->myUserId:I

    .line 157
    invoke-virtual {v1, v2}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v0

    .line 162
    .local v0, "isRestrictedUser":Z
    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/android/exsettings/applications/ManageDefaultApps;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/exsettings/Utils;->canUserMakeCallsSms(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 163
    invoke-virtual {p0}, Lcom/android/exsettings/applications/ManageDefaultApps;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/exsettings/applications/DefaultSmsPreference;->isAvailable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 167
    :goto_0
    invoke-virtual {p0}, Lcom/android/exsettings/applications/ManageDefaultApps;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/exsettings/applications/DefaultPhonePreference;->isAvailable(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 168
    const-string/jumbo v1, "default_phone_app"

    invoke-virtual {p0, v1}, Lcom/android/exsettings/applications/ManageDefaultApps;->removePreference(Ljava/lang/String;)V

    .line 171
    :cond_0
    invoke-virtual {p0}, Lcom/android/exsettings/applications/ManageDefaultApps;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/exsettings/applications/DefaultEmergencyPreference;->isAvailable(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 172
    const-string/jumbo v1, "default_emergency_app"

    invoke-virtual {p0, v1}, Lcom/android/exsettings/applications/ManageDefaultApps;->removePreference(Ljava/lang/String;)V

    .line 175
    :cond_1
    invoke-virtual {p0}, Lcom/android/exsettings/applications/ManageDefaultApps;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/exsettings/applications/DefaultEmergencyPreference;->isCapable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 176
    invoke-virtual {p0}, Lcom/android/exsettings/applications/ManageDefaultApps;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/exsettings/search/Index;->getInstance(Landroid/content/Context;)Lcom/android/exsettings/search/Index;

    move-result-object v1

    .line 177
    const-class v2, Lcom/android/exsettings/applications/ManageDefaultApps;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 176
    invoke-virtual {v1, v2, v3, v3}, Lcom/android/exsettings/search/Index;->updateFromClassNameResource(Ljava/lang/String;ZZ)V

    .line 127
    :cond_2
    return-void

    .line 164
    :cond_3
    const-string/jumbo v1, "default_sms_app"

    invoke-virtual {p0, v1}, Lcom/android/exsettings/applications/ManageDefaultApps;->removePreference(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 190
    invoke-super {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;->onPause()V

    .line 192
    iget-object v0, p0, Lcom/android/exsettings/applications/ManageDefaultApps;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {v0}, Lcom/android/internal/content/PackageMonitor;->unregister()V

    .line 189
    return-void
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 1
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 202
    const/4 v0, 0x0

    return v0
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 183
    invoke-super {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;->onResume()V

    .line 184
    invoke-direct {p0}, Lcom/android/exsettings/applications/ManageDefaultApps;->updateDefaultBrowserPreference()V

    .line 185
    iget-object v0, p0, Lcom/android/exsettings/applications/ManageDefaultApps;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {p0}, Lcom/android/exsettings/applications/ManageDefaultApps;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/exsettings/applications/ManageDefaultApps;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Z)V

    .line 182
    return-void
.end method
