.class public Lcom/android/exsettings/HomeSettings;
.super Lcom/android/exsettings/SettingsPreferenceFragment;
.source "HomeSettings.java"

# interfaces
.implements Lcom/android/exsettings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exsettings/HomeSettings$HomePackageReceiver;,
        Lcom/android/exsettings/HomeSettings$HomeAppPreference;,
        Lcom/android/exsettings/HomeSettings$1;,
        Lcom/android/exsettings/HomeSettings$2;,
        Lcom/android/exsettings/HomeSettings$3;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/exsettings/search/Indexable$SearchIndexProvider;


# instance fields
.field private mCurrentHome:Lcom/android/exsettings/HomeSettings$HomeAppPreference;

.field mDeleteClickListener:Landroid/view/View$OnClickListener;

.field mHomeClickListener:Landroid/view/View$OnClickListener;

.field private mHomeComponentSet:[Landroid/content/ComponentName;

.field private final mHomeFilter:Landroid/content/IntentFilter;

.field private mHomePackageReceiver:Lcom/android/exsettings/HomeSettings$HomePackageReceiver;

.field private mPm:Landroid/content/pm/PackageManager;

.field private mPrefGroup:Landroid/preference/PreferenceGroup;

.field private mPrefs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/exsettings/HomeSettings$HomeAppPreference;",
            ">;"
        }
    .end annotation
.end field

.field private mShowNotice:Z


# direct methods
.method static synthetic -get0(Lcom/android/exsettings/HomeSettings;)Lcom/android/exsettings/HomeSettings$HomeAppPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/HomeSettings;->mCurrentHome:Lcom/android/exsettings/HomeSettings$HomeAppPreference;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/exsettings/HomeSettings;)Landroid/content/pm/PackageManager;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/HomeSettings;->mPm:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/exsettings/HomeSettings;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/HomeSettings;->mPrefs:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/exsettings/HomeSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/exsettings/HomeSettings;->buildHomeActivitiesList()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 389
    new-instance v0, Lcom/android/exsettings/HomeSettings$3;

    invoke-direct {v0}, Lcom/android/exsettings/HomeSettings$3;-><init>()V

    .line 388
    sput-object v0, Lcom/android/exsettings/HomeSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/exsettings/search/Indexable$SearchIndexProvider;

    .line 60
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 92
    invoke-direct {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;-><init>()V

    .line 87
    iput-object v1, p0, Lcom/android/exsettings/HomeSettings;->mCurrentHome:Lcom/android/exsettings/HomeSettings$HomeAppPreference;

    .line 90
    new-instance v0, Lcom/android/exsettings/HomeSettings$HomePackageReceiver;

    invoke-direct {v0, p0, v1}, Lcom/android/exsettings/HomeSettings$HomePackageReceiver;-><init>(Lcom/android/exsettings/HomeSettings;Lcom/android/exsettings/HomeSettings$HomePackageReceiver;)V

    iput-object v0, p0, Lcom/android/exsettings/HomeSettings;->mHomePackageReceiver:Lcom/android/exsettings/HomeSettings$HomePackageReceiver;

    .line 98
    new-instance v0, Lcom/android/exsettings/HomeSettings$1;

    invoke-direct {v0, p0}, Lcom/android/exsettings/HomeSettings$1;-><init>(Lcom/android/exsettings/HomeSettings;)V

    iput-object v0, p0, Lcom/android/exsettings/HomeSettings;->mHomeClickListener:Landroid/view/View$OnClickListener;

    .line 109
    new-instance v0, Lcom/android/exsettings/HomeSettings$2;

    invoke-direct {v0, p0}, Lcom/android/exsettings/HomeSettings$2;-><init>(Lcom/android/exsettings/HomeSettings;)V

    iput-object v0, p0, Lcom/android/exsettings/HomeSettings;->mDeleteClickListener:Landroid/view/View$OnClickListener;

    .line 93
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/exsettings/HomeSettings;->mHomeFilter:Landroid/content/IntentFilter;

    .line 94
    iget-object v0, p0, Lcom/android/exsettings/HomeSettings;->mHomeFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 95
    iget-object v0, p0, Lcom/android/exsettings/HomeSettings;->mHomeFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 92
    return-void
.end method

.method private buildHomeActivitiesList()V
    .locals 19

    .prologue
    .line 176
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 177
    .local v15, "homeActivities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/HomeSettings;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v15}, Landroid/content/pm/PackageManager;->getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;

    move-result-object v13

    .line 179
    .local v13, "currentDefaultHome":Landroid/content/ComponentName;
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/HomeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    .line 180
    .local v3, "context":Landroid/content/Context;
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/exsettings/HomeSettings;->mCurrentHome:Lcom/android/exsettings/HomeSettings$HomeAppPreference;

    .line 181
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/HomeSettings;->mPrefGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v2}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 182
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/exsettings/HomeSettings;->mPrefs:Ljava/util/ArrayList;

    .line 183
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Landroid/content/ComponentName;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/exsettings/HomeSettings;->mHomeComponentSet:[Landroid/content/ComponentName;

    .line 184
    const/4 v5, 0x0

    .line 186
    .local v5, "prefIndex":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/HomeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v8, "support_managed_profiles"

    const/4 v10, 0x0

    invoke-virtual {v2, v8, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v18

    .line 187
    .local v18, "supportManagedProfilesExtra":Z
    invoke-direct/range {p0 .. p0}, Lcom/android/exsettings/HomeSettings;->hasManagedProfile()Z

    move-result v2

    if-nez v2, :cond_2

    .line 188
    move/from16 v17, v18

    .line 189
    :goto_0
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_1
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, v16

    if-ge v0, v2, :cond_4

    .line 190
    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/pm/ResolveInfo;

    .line 191
    .local v12, "candidate":Landroid/content/pm/ResolveInfo;
    iget-object v9, v12, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 192
    .local v9, "info":Landroid/content/pm/ActivityInfo;
    new-instance v4, Landroid/content/ComponentName;

    iget-object v2, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v8, v9, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v4, v2, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    .local v4, "activityName":Landroid/content/ComponentName;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/HomeSettings;->mHomeComponentSet:[Landroid/content/ComponentName;

    aput-object v4, v2, v16

    .line 195
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/HomeSettings;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v9, v2}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 196
    .local v6, "icon":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/HomeSettings;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v9, v2}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    .line 199
    .local v7, "name":Ljava/lang/CharSequence;
    if-eqz v17, :cond_0

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/exsettings/HomeSettings;->launcherHasManagedProfilesFeature(Landroid/content/pm/ResolveInfo;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 204
    :cond_0
    new-instance v1, Lcom/android/exsettings/HomeSettings$HomeAppPreference;

    .line 205
    const/4 v10, 0x1

    const/4 v11, 0x0

    move-object/from16 v2, p0

    move-object/from16 v8, p0

    .line 204
    invoke-direct/range {v1 .. v11}, Lcom/android/exsettings/HomeSettings$HomeAppPreference;-><init>(Lcom/android/exsettings/HomeSettings;Landroid/content/Context;Landroid/content/ComponentName;ILandroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Lcom/android/exsettings/HomeSettings;Landroid/content/pm/ActivityInfo;ZLjava/lang/CharSequence;)V

    .line 208
    .local v1, "pref":Lcom/android/exsettings/HomeSettings$HomeAppPreference;
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/HomeSettings;->mPrefs:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 209
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/HomeSettings;->mPrefGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v2, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 210
    invoke-virtual {v4, v13}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 211
    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/exsettings/HomeSettings;->mCurrentHome:Lcom/android/exsettings/HomeSettings$HomeAppPreference;

    .line 213
    :cond_1
    add-int/lit8 v5, v5, 0x1

    .line 189
    .end local v1    # "pref":Lcom/android/exsettings/HomeSettings$HomeAppPreference;
    .end local v6    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v7    # "name":Ljava/lang/CharSequence;
    :goto_3
    add-int/lit8 v16, v16, 0x1

    goto :goto_1

    .line 187
    .end local v4    # "activityName":Landroid/content/ComponentName;
    .end local v9    # "info":Landroid/content/pm/ActivityInfo;
    .end local v12    # "candidate":Landroid/content/pm/ResolveInfo;
    .end local v16    # "i":I
    :cond_2
    const/16 v17, 0x1

    .local v17, "mustSupportManagedProfile":Z
    goto :goto_0

    .line 200
    .end local v17    # "mustSupportManagedProfile":Z
    .restart local v4    # "activityName":Landroid/content/ComponentName;
    .restart local v6    # "icon":Landroid/graphics/drawable/Drawable;
    .restart local v7    # "name":Ljava/lang/CharSequence;
    .restart local v9    # "info":Landroid/content/pm/ActivityInfo;
    .restart local v12    # "candidate":Landroid/content/pm/ResolveInfo;
    .restart local v16    # "i":I
    :cond_3
    new-instance v1, Lcom/android/exsettings/HomeSettings$HomeAppPreference;

    .line 202
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/HomeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v8, 0x7f0c07d3

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 201
    const/4 v10, 0x0

    move-object/from16 v2, p0

    move-object/from16 v8, p0

    .line 200
    invoke-direct/range {v1 .. v11}, Lcom/android/exsettings/HomeSettings$HomeAppPreference;-><init>(Lcom/android/exsettings/HomeSettings;Landroid/content/Context;Landroid/content/ComponentName;ILandroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Lcom/android/exsettings/HomeSettings;Landroid/content/pm/ActivityInfo;ZLjava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 199
    .restart local v1    # "pref":Lcom/android/exsettings/HomeSettings$HomeAppPreference;
    goto :goto_2

    .line 214
    .end local v1    # "pref":Lcom/android/exsettings/HomeSettings$HomeAppPreference;
    .end local v6    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v7    # "name":Ljava/lang/CharSequence;
    :catch_0
    move-exception v14

    .line 215
    .local v14, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "HomeSettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Problem dealing with activity "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 219
    .end local v4    # "activityName":Landroid/content/ComponentName;
    .end local v9    # "info":Landroid/content/pm/ActivityInfo;
    .end local v12    # "candidate":Landroid/content/pm/ResolveInfo;
    .end local v14    # "e":Ljava/lang/Exception;
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/HomeSettings;->mCurrentHome:Lcom/android/exsettings/HomeSettings$HomeAppPreference;

    if-eqz v2, :cond_6

    .line 220
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/HomeSettings;->mCurrentHome:Lcom/android/exsettings/HomeSettings$HomeAppPreference;

    invoke-virtual {v2}, Lcom/android/exsettings/HomeSettings$HomeAppPreference;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 221
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/HomeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v8, -0x1

    invoke-virtual {v2, v8}, Landroid/app/Activity;->setResult(I)V

    .line 224
    :cond_5
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    new-instance v8, Lcom/android/exsettings/HomeSettings$4;

    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Lcom/android/exsettings/HomeSettings$4;-><init>(Lcom/android/exsettings/HomeSettings;)V

    invoke-virtual {v2, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 175
    :cond_6
    return-void
.end method

.method private hasManagedProfile()Z
    .locals 6

    .prologue
    .line 233
    invoke-virtual {p0}, Lcom/android/exsettings/HomeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 234
    .local v0, "context":Landroid/content/Context;
    const-string/jumbo v5, "user"

    invoke-virtual {p0, v5}, Lcom/android/exsettings/HomeSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UserManager;

    .line 235
    .local v4, "userManager":Landroid/os/UserManager;
    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v1

    .line 236
    .local v1, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "userInfo$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 237
    .local v2, "userInfo":Landroid/content/pm/UserInfo;
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    return v5

    .line 239
    .end local v2    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_1
    const/4 v5, 0x0

    return v5
.end method

.method private launcherHasManagedProfilesFeature(Landroid/content/pm/ResolveInfo;)Z
    .locals 6
    .param p1, "resolveInfo"    # Landroid/content/pm/ResolveInfo;

    .prologue
    const/4 v5, 0x0

    .line 244
    :try_start_0
    invoke-virtual {p0}, Lcom/android/exsettings/HomeSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 245
    iget-object v3, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/4 v4, 0x0

    .line 244
    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 246
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget v2, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    invoke-direct {p0, v2}, Lcom/android/exsettings/HomeSettings;->versionNumberAtLeastL(I)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 247
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v1

    .line 248
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    return v5
.end method

.method private versionNumberAtLeastL(I)Z
    .locals 1
    .param p1, "versionNumber"    # I

    .prologue
    .line 253
    const/16 v0, 0x15

    if-lt p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 258
    const/16 v0, 0x37

    return v0
.end method

.method makeCurrentHome(Lcom/android/exsettings/HomeSettings$HomeAppPreference;)V
    .locals 5
    .param p1, "newHome"    # Lcom/android/exsettings/HomeSettings$HomeAppPreference;

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/exsettings/HomeSettings;->mCurrentHome:Lcom/android/exsettings/HomeSettings$HomeAppPreference;

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/android/exsettings/HomeSettings;->mCurrentHome:Lcom/android/exsettings/HomeSettings$HomeAppPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/exsettings/HomeSettings$HomeAppPreference;->setChecked(Z)V

    .line 121
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/exsettings/HomeSettings$HomeAppPreference;->setChecked(Z)V

    .line 122
    iput-object p1, p0, Lcom/android/exsettings/HomeSettings;->mCurrentHome:Lcom/android/exsettings/HomeSettings$HomeAppPreference;

    .line 124
    iget-object v0, p0, Lcom/android/exsettings/HomeSettings;->mPm:Landroid/content/pm/PackageManager;

    iget-object v1, p0, Lcom/android/exsettings/HomeSettings;->mHomeFilter:Landroid/content/IntentFilter;

    .line 125
    iget-object v2, p0, Lcom/android/exsettings/HomeSettings;->mHomeComponentSet:[Landroid/content/ComponentName;

    iget-object v3, p1, Lcom/android/exsettings/HomeSettings$HomeAppPreference;->activityName:Landroid/content/ComponentName;

    .line 124
    const/high16 v4, 0x100000

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/pm/PackageManager;->replacePreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    .line 127
    invoke-virtual {p0}, Lcom/android/exsettings/HomeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 117
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 141
    invoke-super {p0, p1, p2, p3}, Lcom/android/exsettings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 144
    invoke-direct {p0}, Lcom/android/exsettings/HomeSettings;->buildHomeActivitiesList()V

    .line 147
    const/16 v2, 0xa

    if-le p1, v2, :cond_0

    .line 152
    iget-object v2, p0, Lcom/android/exsettings/HomeSettings;->mCurrentHome:Lcom/android/exsettings/HomeSettings$HomeAppPreference;

    if-nez v2, :cond_0

    .line 153
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/exsettings/HomeSettings;->mPrefs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 154
    iget-object v2, p0, Lcom/android/exsettings/HomeSettings;->mPrefs:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/exsettings/HomeSettings$HomeAppPreference;

    .line 155
    .local v1, "pref":Lcom/android/exsettings/HomeSettings$HomeAppPreference;
    iget-boolean v2, v1, Lcom/android/exsettings/HomeSettings$HomeAppPreference;->isSystem:Z

    if-eqz v2, :cond_3

    .line 156
    invoke-virtual {p0, v1}, Lcom/android/exsettings/HomeSettings;->makeCurrentHome(Lcom/android/exsettings/HomeSettings$HomeAppPreference;)V

    .line 166
    .end local v0    # "i":I
    .end local v1    # "pref":Lcom/android/exsettings/HomeSettings$HomeAppPreference;
    :cond_0
    iget-object v2, p0, Lcom/android/exsettings/HomeSettings;->mPrefs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x2

    if-ge v2, v3, :cond_2

    .line 167
    iget-boolean v2, p0, Lcom/android/exsettings/HomeSettings;->mShowNotice:Z

    if-eqz v2, :cond_1

    .line 168
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/exsettings/HomeSettings;->mShowNotice:Z

    .line 169
    invoke-static {}, Lcom/android/exsettings/SettingsActivity;->requestHomeNotice()V

    .line 171
    :cond_1
    invoke-virtual {p0}, Lcom/android/exsettings/HomeSettings;->finishFragment()V

    .line 140
    :cond_2
    return-void

    .line 153
    .restart local v0    # "i":I
    .restart local v1    # "pref":Lcom/android/exsettings/HomeSettings$HomeAppPreference;
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 263
    invoke-super {p0, p1}, Lcom/android/exsettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 264
    const v1, 0x7f08002c

    invoke-virtual {p0, v1}, Lcom/android/exsettings/HomeSettings;->addPreferencesFromResource(I)V

    .line 266
    invoke-virtual {p0}, Lcom/android/exsettings/HomeSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/exsettings/HomeSettings;->mPm:Landroid/content/pm/PackageManager;

    .line 267
    const-string/jumbo v1, "home"

    invoke-virtual {p0, v1}, Lcom/android/exsettings/HomeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceGroup;

    iput-object v1, p0, Lcom/android/exsettings/HomeSettings;->mPrefGroup:Landroid/preference/PreferenceGroup;

    .line 269
    invoke-virtual {p0}, Lcom/android/exsettings/HomeSettings;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 270
    .local v0, "args":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    const-string/jumbo v1, "show"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    :goto_0
    iput-boolean v1, p0, Lcom/android/exsettings/HomeSettings;->mShowNotice:Z

    .line 262
    return-void

    :cond_0
    move v1, v2

    .line 270
    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 289
    invoke-super {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;->onPause()V

    .line 290
    invoke-virtual {p0}, Lcom/android/exsettings/HomeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/exsettings/HomeSettings;->mHomePackageReceiver:Lcom/android/exsettings/HomeSettings$HomePackageReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 288
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 275
    invoke-super {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;->onResume()V

    .line 277
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 278
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 279
    const-string/jumbo v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 280
    const-string/jumbo v1, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 281
    const-string/jumbo v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 282
    invoke-virtual {p0}, Lcom/android/exsettings/HomeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/exsettings/HomeSettings;->mHomePackageReceiver:Lcom/android/exsettings/HomeSettings$HomePackageReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 284
    invoke-direct {p0}, Lcom/android/exsettings/HomeSettings;->buildHomeActivitiesList()V

    .line 274
    return-void
.end method

.method uninstallApp(Lcom/android/exsettings/HomeSettings$HomeAppPreference;)V
    .locals 6
    .param p1, "pref"    # Lcom/android/exsettings/HomeSettings$HomeAppPreference;

    .prologue
    const/4 v3, 0x0

    .line 132
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "package:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/android/exsettings/HomeSettings$HomeAppPreference;->uninstallTarget:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 133
    .local v0, "packageURI":Landroid/net/Uri;
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.UNINSTALL_PACKAGE"

    invoke-direct {v2, v4, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 134
    .local v2, "uninstallIntent":Landroid/content/Intent;
    const-string/jumbo v4, "android.intent.extra.UNINSTALL_ALL_USERS"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 135
    iget-boolean v4, p1, Lcom/android/exsettings/HomeSettings$HomeAppPreference;->isChecked:Z

    if-eqz v4, :cond_0

    const/4 v3, 0x1

    :cond_0
    add-int/lit8 v1, v3, 0xa

    .line 136
    .local v1, "requestCode":I
    invoke-virtual {p0, v2, v1}, Lcom/android/exsettings/HomeSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 130
    return-void
.end method
