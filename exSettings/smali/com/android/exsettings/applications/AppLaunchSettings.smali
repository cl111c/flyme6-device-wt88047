.class public Lcom/android/exsettings/applications/AppLaunchSettings;
.super Lcom/android/exsettings/applications/AppInfoWithHeader;
.source "AppLaunchSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final sBrowserIntent:Landroid/content/Intent;


# instance fields
.field private mAppDomainUrls:Lcom/android/exsettings/applications/AppDomainsPreference;

.field private mAppLinkState:Lcom/android/exsettings/DropDownPreference;

.field private mClearDefaultsPreference:Lcom/android/exsettings/applications/ClearDefaultsPreference;

.field private mHasDomainUrls:Z

.field private mIsBrowser:Z

.field private mPm:Landroid/content/pm/PackageManager;


# direct methods
.method static synthetic -wrap0(Lcom/android/exsettings/applications/AppLaunchSettings;I)Z
    .locals 1
    .param p1, "newState"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/exsettings/applications/AppLaunchSettings;->updateAppLinkState(I)Z

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 59
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 60
    const-string/jumbo v1, "android.intent.action.VIEW"

    .line 59
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 61
    const-string/jumbo v1, "android.intent.category.BROWSABLE"

    .line 59
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 62
    const-string/jumbo v1, "http:"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 59
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/android/exsettings/applications/AppLaunchSettings;->sBrowserIntent:Landroid/content/Intent;

    .line 49
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/exsettings/applications/AppInfoWithHeader;-><init>()V

    return-void
.end method

.method private buildStateDropDown()V
    .locals 5

    .prologue
    const/4 v1, 0x4

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 115
    iget-boolean v2, p0, Lcom/android/exsettings/applications/AppLaunchSettings;->mIsBrowser:Z

    if-eqz v2, :cond_1

    .line 117
    iget-object v1, p0, Lcom/android/exsettings/applications/AppLaunchSettings;->mAppLinkState:Lcom/android/exsettings/DropDownPreference;

    invoke-virtual {v1, v4}, Lcom/android/exsettings/DropDownPreference;->setShouldDisableView(Z)V

    .line 118
    iget-object v1, p0, Lcom/android/exsettings/applications/AppLaunchSettings;->mAppLinkState:Lcom/android/exsettings/DropDownPreference;

    invoke-virtual {v1, v3}, Lcom/android/exsettings/DropDownPreference;->setEnabled(Z)V

    .line 119
    iget-object v1, p0, Lcom/android/exsettings/applications/AppLaunchSettings;->mAppDomainUrls:Lcom/android/exsettings/applications/AppDomainsPreference;

    invoke-virtual {v1, v4}, Lcom/android/exsettings/applications/AppDomainsPreference;->setShouldDisableView(Z)V

    .line 120
    iget-object v1, p0, Lcom/android/exsettings/applications/AppLaunchSettings;->mAppDomainUrls:Lcom/android/exsettings/applications/AppDomainsPreference;

    invoke-virtual {v1, v3}, Lcom/android/exsettings/applications/AppDomainsPreference;->setEnabled(Z)V

    .line 114
    :cond_0
    :goto_0
    return-void

    .line 127
    :cond_1
    iget-object v2, p0, Lcom/android/exsettings/applications/AppLaunchSettings;->mAppLinkState:Lcom/android/exsettings/DropDownPreference;

    .line 128
    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 127
    const v4, 0x7f0c0f40

    invoke-virtual {v2, v4, v3}, Lcom/android/exsettings/DropDownPreference;->addItem(ILjava/lang/Object;)V

    .line 129
    iget-object v2, p0, Lcom/android/exsettings/applications/AppLaunchSettings;->mAppLinkState:Lcom/android/exsettings/DropDownPreference;

    .line 130
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 129
    const v4, 0x7f0c0f41

    invoke-virtual {v2, v4, v3}, Lcom/android/exsettings/DropDownPreference;->addItem(ILjava/lang/Object;)V

    .line 131
    iget-object v2, p0, Lcom/android/exsettings/applications/AppLaunchSettings;->mAppLinkState:Lcom/android/exsettings/DropDownPreference;

    .line 132
    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 131
    const v4, 0x7f0c0f42

    invoke-virtual {v2, v4, v3}, Lcom/android/exsettings/DropDownPreference;->addItem(ILjava/lang/Object;)V

    .line 134
    iget-object v2, p0, Lcom/android/exsettings/applications/AppLaunchSettings;->mAppLinkState:Lcom/android/exsettings/DropDownPreference;

    iget-boolean v3, p0, Lcom/android/exsettings/applications/AppLaunchSettings;->mHasDomainUrls:Z

    invoke-virtual {v2, v3}, Lcom/android/exsettings/DropDownPreference;->setEnabled(Z)V

    .line 135
    iget-boolean v2, p0, Lcom/android/exsettings/applications/AppLaunchSettings;->mHasDomainUrls:Z

    if-eqz v2, :cond_0

    .line 139
    iget-object v2, p0, Lcom/android/exsettings/applications/AppLaunchSettings;->mPm:Landroid/content/pm/PackageManager;

    iget-object v3, p0, Lcom/android/exsettings/applications/AppLaunchSettings;->mPackageName:Ljava/lang/String;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getIntentVerificationStatus(Ljava/lang/String;I)I

    move-result v0

    .line 140
    .local v0, "state":I
    iget-object v2, p0, Lcom/android/exsettings/applications/AppLaunchSettings;->mAppLinkState:Lcom/android/exsettings/DropDownPreference;

    .line 141
    if-nez v0, :cond_2

    move v0, v1

    .end local v0    # "state":I
    :cond_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 140
    invoke-virtual {v2, v1}, Lcom/android/exsettings/DropDownPreference;->setSelectedValue(Ljava/lang/Object;)V

    .line 146
    iget-object v1, p0, Lcom/android/exsettings/applications/AppLaunchSettings;->mAppLinkState:Lcom/android/exsettings/DropDownPreference;

    new-instance v2, Lcom/android/exsettings/applications/AppLaunchSettings$1;

    invoke-direct {v2, p0}, Lcom/android/exsettings/applications/AppLaunchSettings$1;-><init>(Lcom/android/exsettings/applications/AppLaunchSettings;)V

    invoke-virtual {v1, v2}, Lcom/android/exsettings/DropDownPreference;->setCallback(Lcom/android/exsettings/DropDownPreference$Callback;)V

    goto :goto_0
.end method

.method private getEntries(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)[Ljava/lang/CharSequence;
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/IntentFilterVerificationInfo;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/content/IntentFilter;",
            ">;)[",
            "Ljava/lang/CharSequence;"
        }
    .end annotation

    .prologue
    .line 183
    .local p2, "iviList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/IntentFilterVerificationInfo;>;"
    .local p3, "filters":Ljava/util/List;, "Ljava/util/List<Landroid/content/IntentFilter;>;"
    iget-object v1, p0, Lcom/android/exsettings/applications/AppLaunchSettings;->mPm:Landroid/content/pm/PackageManager;

    invoke-static {v1, p1}, Lcom/android/exsettings/Utils;->getHandledDomains(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v0

    .line 184
    .local v0, "result":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/CharSequence;

    return-object v1
.end method

.method private isBrowserApp(Ljava/lang/String;)Z
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 101
    sget-object v4, Lcom/android/exsettings/applications/AppLaunchSettings;->sBrowserIntent:Landroid/content/Intent;

    invoke-virtual {v4, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 102
    iget-object v4, p0, Lcom/android/exsettings/applications/AppLaunchSettings;->mPm:Landroid/content/pm/PackageManager;

    sget-object v5, Lcom/android/exsettings/applications/AppLaunchSettings;->sBrowserIntent:Landroid/content/Intent;

    .line 103
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    const/high16 v7, 0x20000

    .line 102
    invoke-virtual {v4, v5, v7, v6}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v3

    .line 104
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    .line 105
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 106
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 107
    .local v2, "info":Landroid/content/pm/ResolveInfo;
    iget-object v4, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v4, :cond_0

    iget-boolean v4, v2, Landroid/content/pm/ResolveInfo;->handleAllWebDataURI:Z

    if-eqz v4, :cond_0

    .line 108
    const/4 v4, 0x1

    return v4

    .line 105
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 111
    .end local v2    # "info":Landroid/content/pm/ResolveInfo;
    :cond_1
    const/4 v4, 0x0

    return v4
.end method

.method private updateAppLinkState(I)Z
    .locals 7
    .param p1, "newState"    # I

    .prologue
    const/4 v6, 0x0

    .line 157
    iget-boolean v4, p0, Lcom/android/exsettings/applications/AppLaunchSettings;->mIsBrowser:Z

    if-eqz v4, :cond_0

    .line 160
    return v6

    .line 163
    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    .line 164
    .local v3, "userId":I
    iget-object v4, p0, Lcom/android/exsettings/applications/AppLaunchSettings;->mPm:Landroid/content/pm/PackageManager;

    iget-object v5, p0, Lcom/android/exsettings/applications/AppLaunchSettings;->mPackageName:Ljava/lang/String;

    invoke-virtual {v4, v5, v3}, Landroid/content/pm/PackageManager;->getIntentVerificationStatus(Ljava/lang/String;I)I

    move-result v0

    .line 166
    .local v0, "priorState":I
    if-ne v0, p1, :cond_1

    .line 167
    return v6

    .line 170
    :cond_1
    iget-object v4, p0, Lcom/android/exsettings/applications/AppLaunchSettings;->mPm:Landroid/content/pm/PackageManager;

    iget-object v5, p0, Lcom/android/exsettings/applications/AppLaunchSettings;->mPackageName:Ljava/lang/String;

    invoke-virtual {v4, v5, p1, v3}, Landroid/content/pm/PackageManager;->updateIntentVerificationStatus(Ljava/lang/String;II)Z

    move-result v1

    .line 171
    .local v1, "success":Z
    if-eqz v1, :cond_3

    .line 173
    iget-object v4, p0, Lcom/android/exsettings/applications/AppLaunchSettings;->mPm:Landroid/content/pm/PackageManager;

    iget-object v5, p0, Lcom/android/exsettings/applications/AppLaunchSettings;->mPackageName:Ljava/lang/String;

    invoke-virtual {v4, v5, v3}, Landroid/content/pm/PackageManager;->getIntentVerificationStatus(Ljava/lang/String;I)I

    move-result v2

    .line 174
    .local v2, "updatedState":I
    if-ne p1, v2, :cond_2

    const/4 v1, 0x1

    .line 178
    .end local v1    # "success":Z
    .end local v2    # "updatedState":I
    :goto_0
    return v1

    .line 174
    .restart local v1    # "success":Z
    .restart local v2    # "updatedState":I
    :cond_2
    const/4 v1, 0x0

    .local v1, "success":Z
    goto :goto_0

    .line 176
    .end local v2    # "updatedState":I
    .local v1, "success":Z
    :cond_3
    const-string/jumbo v4, "AppLaunchSettings"

    const-string/jumbo v5, "Couldn\'t update intent verification status!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method protected createDialog(II)Landroid/app/AlertDialog;
    .locals 1
    .param p1, "id"    # I
    .param p2, "errorCode"    # I

    .prologue
    .line 197
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 213
    const/16 v0, 0x11

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 201
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 75
    invoke-super {p0, p1}, Lcom/android/exsettings/applications/AppInfoWithHeader;->onCreate(Landroid/os/Bundle;)V

    .line 77
    const v3, 0x7f080031

    invoke-virtual {p0, v3}, Lcom/android/exsettings/applications/AppLaunchSettings;->addPreferencesFromResource(I)V

    .line 78
    const-string/jumbo v3, "app_launch_supported_domain_urls"

    invoke-virtual {p0, v3}, Lcom/android/exsettings/applications/AppLaunchSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/android/exsettings/applications/AppDomainsPreference;

    iput-object v3, p0, Lcom/android/exsettings/applications/AppLaunchSettings;->mAppDomainUrls:Lcom/android/exsettings/applications/AppDomainsPreference;

    .line 79
    const-string/jumbo v3, "app_launch_clear_defaults"

    invoke-virtual {p0, v3}, Lcom/android/exsettings/applications/AppLaunchSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/android/exsettings/applications/ClearDefaultsPreference;

    iput-object v3, p0, Lcom/android/exsettings/applications/AppLaunchSettings;->mClearDefaultsPreference:Lcom/android/exsettings/applications/ClearDefaultsPreference;

    .line 80
    const-string/jumbo v3, "app_link_state"

    invoke-virtual {p0, v3}, Lcom/android/exsettings/applications/AppLaunchSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/android/exsettings/DropDownPreference;

    iput-object v3, p0, Lcom/android/exsettings/applications/AppLaunchSettings;->mAppLinkState:Lcom/android/exsettings/DropDownPreference;

    .line 82
    invoke-virtual {p0}, Lcom/android/exsettings/applications/AppLaunchSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/exsettings/applications/AppLaunchSettings;->mPm:Landroid/content/pm/PackageManager;

    .line 84
    iget-object v3, p0, Lcom/android/exsettings/applications/AppLaunchSettings;->mPackageName:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/exsettings/applications/AppLaunchSettings;->isBrowserApp(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/exsettings/applications/AppLaunchSettings;->mIsBrowser:Z

    .line 86
    iget-object v3, p0, Lcom/android/exsettings/applications/AppLaunchSettings;->mAppEntry:Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit8 v3, v3, 0x10

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    .line 85
    :goto_0
    iput-boolean v3, p0, Lcom/android/exsettings/applications/AppLaunchSettings;->mHasDomainUrls:Z

    .line 88
    iget-boolean v3, p0, Lcom/android/exsettings/applications/AppLaunchSettings;->mIsBrowser:Z

    if-nez v3, :cond_0

    .line 89
    iget-object v3, p0, Lcom/android/exsettings/applications/AppLaunchSettings;->mPm:Landroid/content/pm/PackageManager;

    iget-object v4, p0, Lcom/android/exsettings/applications/AppLaunchSettings;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getIntentFilterVerifications(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 90
    .local v2, "iviList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/IntentFilterVerificationInfo;>;"
    iget-object v3, p0, Lcom/android/exsettings/applications/AppLaunchSettings;->mPm:Landroid/content/pm/PackageManager;

    iget-object v4, p0, Lcom/android/exsettings/applications/AppLaunchSettings;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getAllIntentFilters(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 91
    .local v1, "filters":Ljava/util/List;, "Ljava/util/List<Landroid/content/IntentFilter;>;"
    iget-object v3, p0, Lcom/android/exsettings/applications/AppLaunchSettings;->mPackageName:Ljava/lang/String;

    invoke-direct {p0, v3, v2, v1}, Lcom/android/exsettings/applications/AppLaunchSettings;->getEntries(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)[Ljava/lang/CharSequence;

    move-result-object v0

    .line 92
    .local v0, "entries":[Ljava/lang/CharSequence;
    iget-object v3, p0, Lcom/android/exsettings/applications/AppLaunchSettings;->mAppDomainUrls:Lcom/android/exsettings/applications/AppDomainsPreference;

    invoke-virtual {v3, v0}, Lcom/android/exsettings/applications/AppDomainsPreference;->setTitles([Ljava/lang/CharSequence;)V

    .line 93
    iget-object v3, p0, Lcom/android/exsettings/applications/AppLaunchSettings;->mAppDomainUrls:Lcom/android/exsettings/applications/AppDomainsPreference;

    array-length v4, v0

    new-array v4, v4, [I

    invoke-virtual {v3, v4}, Lcom/android/exsettings/applications/AppDomainsPreference;->setValues([I)V

    .line 95
    .end local v0    # "entries":[Ljava/lang/CharSequence;
    .end local v1    # "filters":Ljava/util/List;, "Ljava/util/List<Landroid/content/IntentFilter;>;"
    .end local v2    # "iviList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/IntentFilterVerificationInfo;>;"
    :cond_0
    invoke-direct {p0}, Lcom/android/exsettings/applications/AppLaunchSettings;->buildStateDropDown()V

    .line 74
    return-void

    :cond_1
    move v3, v4

    .line 86
    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 208
    const/4 v0, 0x1

    return v0
.end method

.method protected refreshUi()Z
    .locals 2

    .prologue
    .line 189
    iget-object v0, p0, Lcom/android/exsettings/applications/AppLaunchSettings;->mClearDefaultsPreference:Lcom/android/exsettings/applications/ClearDefaultsPreference;

    iget-object v1, p0, Lcom/android/exsettings/applications/AppLaunchSettings;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/exsettings/applications/ClearDefaultsPreference;->setPackageName(Ljava/lang/String;)V

    .line 190
    iget-object v0, p0, Lcom/android/exsettings/applications/AppLaunchSettings;->mClearDefaultsPreference:Lcom/android/exsettings/applications/ClearDefaultsPreference;

    iget-object v1, p0, Lcom/android/exsettings/applications/AppLaunchSettings;->mAppEntry:Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;

    invoke-virtual {v0, v1}, Lcom/android/exsettings/applications/ClearDefaultsPreference;->setAppEntry(Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;)V

    .line 191
    const/4 v0, 0x1

    return v0
.end method
