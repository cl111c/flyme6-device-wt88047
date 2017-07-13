.class public Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment;
.super Lcom/android/exsettings/SettingsPreferenceFragment;
.source "ExpandedDesktopPreferenceFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/android/exsettingslib/applications/ApplicationsState$Callbacks;
.implements Lcom/android/exsettings/widget/SwitchBar$OnSwitchChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment$AllPackagesAdapter;,
        Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment$ViewHolder;,
        Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment$ModeAdapter;,
        Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment$ActivityFilter;
    }
.end annotation


# instance fields
.field private mActivityFilter:Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment$ActivityFilter;

.field private mAllPackagesAdapter:Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment$AllPackagesAdapter;

.field private mApplicationsState:Lcom/android/exsettingslib/applications/ApplicationsState;

.field private mEmptyView:Landroid/view/View;

.field private mEntryMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mExpandedDesktopState:I

.field private mExtraOptions:Landroid/widget/FrameLayout;

.field private mProgressBar:Landroid/view/View;

.field private mSession:Lcom/android/exsettingslib/applications/ApplicationsState$Session;

.field private mSwitchBar:Lcom/android/exsettings/widget/SwitchBar;

.field private mUserListView:Landroid/widget/ListView;


# direct methods
.method static synthetic -get0(Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment;)Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment$AllPackagesAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment;->mAllPackagesAdapter:Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment$AllPackagesAdapter;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment;)Lcom/android/exsettingslib/applications/ApplicationsState;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment;->mApplicationsState:Lcom/android/exsettingslib/applications/ApplicationsState;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment;->mEmptyView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment;->mUserListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment;Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment$ActivityFilter;)Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment$ActivityFilter;
    .locals 0

    iput-object p1, p0, Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment;->mActivityFilter:Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment$ActivityFilter;

    return-object p1
.end method

.method static synthetic -wrap0(Ljava/lang/String;)I
    .locals 1
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    invoke-static {p0}, Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment;->getStateForPackage(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment;->save()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;-><init>()V

    .line 82
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 81
    iput-object v0, p0, Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment;->mEntryMap:Ljava/util/Map;

    .line 59
    return-void
.end method

.method private enableForAll()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 183
    iput v1, p0, Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment;->mExpandedDesktopState:I

    .line 184
    const-string/jumbo v0, "immersive.full=*"

    invoke-direct {p0, v0}, Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment;->writeValue(Ljava/lang/String;)V

    .line 185
    iget-object v0, p0, Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment;->mAllPackagesAdapter:Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment$AllPackagesAdapter;

    invoke-virtual {v0}, Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment$AllPackagesAdapter;->notifyDataSetInvalidated()V

    .line 186
    invoke-direct {p0}, Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment;->hideListView()V

    .line 187
    invoke-direct {p0}, Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment;->transactFragment()V

    .line 188
    iget-object v0, p0, Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment;->mExtraOptions:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 182
    return-void
.end method

.method private getExpandedDesktopState(Landroid/content/ContentResolver;)I
    .locals 2
    .param p1, "cr"    # Landroid/content/ContentResolver;

    .prologue
    .line 87
    const-string/jumbo v1, "policy_control"

    invoke-static {p1, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 88
    .local v0, "value":Ljava/lang/String;
    const-string/jumbo v1, "immersive.full=*"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 89
    const/4 v1, 0x0

    return v1

    .line 91
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method private static getStateForPackage(Ljava/lang/String;)I
    .locals 2
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    .line 233
    const/4 v0, 0x0

    .line 235
    .local v0, "state":I
    invoke-static {p0}, Landroid/view/WindowManagerPolicyControl;->immersiveStatusFilterMatches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 236
    const/4 v0, 0x1

    .line 238
    :cond_0
    invoke-static {p0}, Landroid/view/WindowManagerPolicyControl;->immersiveNavigationFilterMatches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 239
    if-nez v0, :cond_2

    .line 240
    const/4 v0, 0x2

    .line 246
    :cond_1
    :goto_0
    return v0

    .line 242
    :cond_2
    const/4 v0, 0x3

    goto :goto_0
.end method

.method private handleAppEntries(Ljava/util/List;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 287
    .local p1, "entries":Ljava/util/List;, "Ljava/util/List<Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;>;"
    const/4 v6, 0x0

    .line 288
    .local v6, "lastSectionIndex":Ljava/lang/String;
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 289
    .local v11, "sections":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 290
    .local v9, "positions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p0}, Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 291
    .local v8, "pm":Landroid/content/pm/PackageManager;
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .local v0, "count":I
    const/4 v7, 0x0

    .line 293
    .local v7, "offset":I
    const/4 v3, 0x0

    .end local v6    # "lastSectionIndex":Ljava/lang/String;
    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_3

    .line 294
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;

    iget-object v4, v12, Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    .line 295
    .local v4, "info":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v4, v8}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 298
    .local v5, "label":Ljava/lang/String;
    iget-boolean v12, v4, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v12, :cond_0

    .line 299
    const-string/jumbo v10, "--"

    .line 306
    .local v10, "sectionIndex":Ljava/lang/String;
    :goto_1
    if-eqz v6, :cond_2

    .line 307
    invoke-static {v10, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 313
    :goto_2
    add-int/lit8 v7, v7, 0x1

    .line 293
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 300
    .end local v10    # "sectionIndex":Ljava/lang/String;
    :cond_0
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 301
    const-string/jumbo v10, ""

    .restart local v10    # "sectionIndex":Ljava/lang/String;
    goto :goto_1

    .line 303
    .end local v10    # "sectionIndex":Ljava/lang/String;
    :cond_1
    const/4 v12, 0x0

    const/4 v13, 0x1

    invoke-virtual {v5, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v10

    .restart local v10    # "sectionIndex":Ljava/lang/String;
    goto :goto_1

    .line 308
    :cond_2
    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 309
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 310
    move-object v6, v10

    .local v6, "lastSectionIndex":Ljava/lang/String;
    goto :goto_2

    .line 316
    .end local v4    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v5    # "label":Ljava/lang/String;
    .end local v6    # "lastSectionIndex":Ljava/lang/String;
    .end local v10    # "sectionIndex":Ljava/lang/String;
    :cond_3
    iget-object v12, p0, Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment;->mAllPackagesAdapter:Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment$AllPackagesAdapter;

    invoke-static {v12, p1, v11, v9}, Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment$AllPackagesAdapter;->-wrap0(Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment$AllPackagesAdapter;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 317
    iget-object v12, p0, Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment;->mEntryMap:Ljava/util/Map;

    invoke-interface {v12}, Ljava/util/Map;->clear()V

    .line 318
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "e$iterator":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;

    .line 319
    .local v1, "e":Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;
    iget-object v12, p0, Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment;->mEntryMap:Ljava/util/Map;

    iget-object v13, v1, Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v13, v13, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v12, v13, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 322
    .end local v1    # "e":Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;
    :cond_4
    iget-object v12, p0, Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment;->mProgressBar:Landroid/view/View;

    if-eqz v12, :cond_5

    .line 323
    iget-object v12, p0, Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment;->mProgressBar:Landroid/view/View;

    const/16 v13, 0x8

    invoke-virtual {v12, v13}, Landroid/view/View;->setVisibility(I)V

    .line 326
    :cond_5
    iget v12, p0, Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment;->mExpandedDesktopState:I

    const/4 v13, 0x1

    if-eq v12, v13, :cond_6

    .line 327
    invoke-direct {p0}, Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment;->hideListView()V

    .line 286
    :cond_6
    return-void
.end method

.method private hideListView()V
    .locals 2

    .prologue
    .line 219
    iget-object v0, p0, Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment;->mUserListView:Landroid/widget/ListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 220
    iget-object v0, p0, Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment;->mEmptyView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 218
    return-void
.end method

.method private rebuild()V
    .locals 4

    .prologue
    .line 332
    iget-object v1, p0, Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment;->mSession:Lcom/android/exsettingslib/applications/ApplicationsState$Session;

    .line 333
    iget-object v2, p0, Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment;->mActivityFilter:Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment$ActivityFilter;

    sget-object v3, Lcom/android/exsettingslib/applications/ApplicationsState;->ALPHA_COMPARATOR:Ljava/util/Comparator;

    .line 332
    invoke-virtual {v1, v2, v3}, Lcom/android/exsettingslib/applications/ApplicationsState$Session;->rebuild(Lcom/android/exsettingslib/applications/ApplicationsState$AppFilter;Ljava/util/Comparator;)Ljava/util/ArrayList;

    move-result-object v0

    .line 334
    .local v0, "newEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;>;"
    if-eqz v0, :cond_0

    .line 335
    invoke-direct {p0, v0}, Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment;->handleAppEntries(Ljava/util/List;)V

    .line 336
    iget-object v1, p0, Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment;->mAllPackagesAdapter:Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment$AllPackagesAdapter;

    invoke-virtual {v1}, Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment$AllPackagesAdapter;->notifyDataSetChanged()V

    .line 331
    :cond_0
    return-void
.end method

.method private removeFragment()V
    .locals 4

    .prologue
    .line 210
    invoke-virtual {p0}, Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 211
    .local v1, "fragmentManager":Landroid/app/FragmentManager;
    const-string/jumbo v3, "desktop_prefs"

    invoke-virtual {v1, v3}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .line 212
    .local v0, "fragment":Landroid/app/Fragment;
    if-eqz v0, :cond_0

    .line 213
    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    .line 214
    .local v2, "fragmentTransaction":Landroid/app/FragmentTransaction;
    invoke-virtual {v2, v0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentTransaction;->commit()I

    .line 209
    .end local v2    # "fragmentTransaction":Landroid/app/FragmentTransaction;
    :cond_0
    return-void
.end method

.method private save()V
    .locals 2

    .prologue
    .line 341
    iget v0, p0, Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment;->mExpandedDesktopState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 342
    invoke-virtual {p0}, Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 343
    const-string/jumbo v1, "policy_control"

    .line 342
    invoke-static {v0, v1}, Landroid/view/WindowManagerPolicyControl;->saveToSettings(Landroid/content/Context;Ljava/lang/String;)V

    .line 340
    :cond_0
    return-void
.end method

.method private showListView()V
    .locals 2

    .prologue
    .line 224
    iget-object v0, p0, Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment;->mUserListView:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 225
    iget-object v0, p0, Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment;->mEmptyView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 223
    return-void
.end method

.method private transactFragment()V
    .locals 4

    .prologue
    .line 202
    invoke-static {}, Lcom/android/exsettings/applications/ExpandedDesktopExtraPrefs;->newInstance()Lcom/android/exsettings/applications/ExpandedDesktopExtraPrefs;

    move-result-object v0

    .line 203
    .local v0, "expandedDesktopExtraPrefs":Landroid/app/Fragment;
    invoke-virtual {p0}, Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 205
    .local v1, "fragmentTransaction":Landroid/app/FragmentTransaction;
    const-string/jumbo v2, "desktop_prefs"

    .line 204
    const v3, 0x7f13010d

    invoke-virtual {v1, v3, v0, v2}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 206
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    .line 201
    return-void
.end method

.method private userConfigurableSettings()V
    .locals 2

    .prologue
    .line 192
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment;->mExpandedDesktopState:I

    .line 193
    const-string/jumbo v0, ""

    invoke-direct {p0, v0}, Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment;->writeValue(Ljava/lang/String;)V

    .line 194
    invoke-virtual {p0}, Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/WindowManagerPolicyControl;->reloadFromSetting(Landroid/content/Context;)V

    .line 195
    iget-object v0, p0, Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment;->mAllPackagesAdapter:Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment$AllPackagesAdapter;

    invoke-virtual {v0}, Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment$AllPackagesAdapter;->notifyDataSetInvalidated()V

    .line 196
    invoke-direct {p0}, Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment;->showListView()V

    .line 197
    iget-object v0, p0, Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment;->mExtraOptions:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 198
    invoke-direct {p0}, Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment;->removeFragment()V

    .line 191
    return-void
.end method

.method private writeValue(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 229
    invoke-virtual {p0}, Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "policy_control"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 228
    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 114
    const/16 v0, 0x2e

    return v0
.end method

.method getStateDrawable(I)I
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 348
    packed-switch p1, :pswitch_data_0

    .line 357
    const v0, 0x7f020070

    return v0

    .line 350
    :pswitch_0
    const v0, 0x7f020071

    return v0

    .line 352
    :pswitch_1
    const v0, 0x7f02006f

    return v0

    .line 354
    :pswitch_2
    const v0, 0x7f02006e

    return v0

    .line 348
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onAllSizesComputed()V
    .locals 0

    .prologue
    .line 273
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x1

    .line 96
    invoke-super {p0, p1}, Lcom/android/exsettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 97
    invoke-virtual {p0}, Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/android/exsettingslib/applications/ApplicationsState;->getInstance(Landroid/app/Application;)Lcom/android/exsettingslib/applications/ApplicationsState;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment;->mApplicationsState:Lcom/android/exsettingslib/applications/ApplicationsState;

    .line 98
    iget-object v0, p0, Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment;->mApplicationsState:Lcom/android/exsettingslib/applications/ApplicationsState;

    invoke-virtual {v0, p0}, Lcom/android/exsettingslib/applications/ApplicationsState;->newSession(Lcom/android/exsettingslib/applications/ApplicationsState$Callbacks;)Lcom/android/exsettingslib/applications/ApplicationsState$Session;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment;->mSession:Lcom/android/exsettingslib/applications/ApplicationsState$Session;

    .line 99
    iget-object v0, p0, Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment;->mSession:Lcom/android/exsettingslib/applications/ApplicationsState$Session;

    invoke-virtual {v0}, Lcom/android/exsettingslib/applications/ApplicationsState$Session;->resume()V

    .line 100
    new-instance v0, Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment$ActivityFilter;

    invoke-virtual {p0}, Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment$ActivityFilter;-><init>(Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment;Landroid/content/pm/PackageManager;Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment$ActivityFilter;)V

    iput-object v0, p0, Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment;->mActivityFilter:Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment$ActivityFilter;

    .line 102
    invoke-virtual {p0}, Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment;->getExpandedDesktopState(Landroid/content/ContentResolver;)I

    move-result v0

    iput v0, p0, Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment;->mExpandedDesktopState:I

    .line 103
    iget v0, p0, Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment;->mExpandedDesktopState:I

    if-ne v0, v3, :cond_0

    .line 104
    invoke-virtual {p0}, Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 105
    const-string/jumbo v1, "policy_control"

    .line 104
    invoke-static {v0, v1}, Landroid/view/WindowManagerPolicyControl;->reloadFromSetting(Landroid/content/Context;Ljava/lang/String;)V

    .line 107
    :cond_0
    new-instance v0, Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment$AllPackagesAdapter;

    invoke-virtual {p0}, Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment$AllPackagesAdapter;-><init>(Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment;->mAllPackagesAdapter:Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment$AllPackagesAdapter;

    .line 109
    invoke-virtual {p0, v3}, Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment;->setHasOptionsMenu(Z)V

    .line 95
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 126
    const v0, 0x7f04006e

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 131
    invoke-super {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;->onDestroy()V

    .line 132
    invoke-direct {p0}, Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment;->save()V

    .line 133
    iget-object v0, p0, Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment;->mSession:Lcom/android/exsettingslib/applications/ApplicationsState$Session;

    invoke-virtual {v0}, Lcom/android/exsettingslib/applications/ApplicationsState$Session;->pause()V

    .line 134
    iget-object v0, p0, Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment;->mSession:Lcom/android/exsettingslib/applications/ApplicationsState$Session;

    invoke-virtual {v0}, Lcom/android/exsettingslib/applications/ApplicationsState$Session;->release()V

    .line 130
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 139
    invoke-super {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;->onDestroyView()V

    .line 140
    iget-object v0, p0, Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment;->mSwitchBar:Lcom/android/exsettings/widget/SwitchBar;

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment;->mSwitchBar:Lcom/android/exsettings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/exsettings/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/exsettings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 138
    :cond_0
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 178
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment$ViewHolder;

    .line 179
    .local v0, "holder":Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment$ViewHolder;
    invoke-static {v0}, Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment$ViewHolder;->-get1(Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment$ViewHolder;)Landroid/widget/Spinner;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Spinner;->performClick()Z

    .line 177
    return-void
.end method

.method public onLauncherInfoChanged()V
    .locals 0

    .prologue
    .line 277
    return-void
.end method

.method public onLoadEntriesCompleted()V
    .locals 0

    .prologue
    .line 283
    invoke-direct {p0}, Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment;->rebuild()V

    .line 282
    return-void
.end method

.method public onPackageIconChanged()V
    .locals 0

    .prologue
    .line 265
    return-void
.end method

.method public onPackageListChanged()V
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment;->mActivityFilter:Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment$ActivityFilter;

    invoke-virtual {v0}, Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment$ActivityFilter;->updateLauncherInfoList()V

    .line 256
    invoke-direct {p0}, Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment;->rebuild()V

    .line 254
    return-void
.end method

.method public onPackageSizeChanged(Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 269
    return-void
.end method

.method public onRebuildComplete(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 261
    .local p1, "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;>;"
    invoke-direct {p0}, Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment;->rebuild()V

    .line 260
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 119
    invoke-super {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;->onResume()V

    .line 120
    invoke-direct {p0}, Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment;->rebuild()V

    .line 118
    return-void
.end method

.method public onRunningStateChanged(Z)V
    .locals 0
    .param p1, "running"    # Z

    .prologue
    .line 250
    return-void
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 0
    .param p1, "switchView"    # Landroid/widget/Switch;
    .param p2, "isChecked"    # Z

    .prologue
    .line 363
    if-eqz p2, :cond_0

    .line 364
    invoke-direct {p0}, Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment;->enableForAll()V

    .line 362
    :goto_0
    return-void

    .line 366
    :cond_0
    invoke-direct {p0}, Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment;->userConfigurableSettings()V

    goto :goto_0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v5, 0x7f0c02e8

    const/16 v4, 0x8

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 147
    invoke-super {p0, p1, p2}, Lcom/android/exsettings/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 149
    const v0, 0x7f13010e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment;->mUserListView:Landroid/widget/ListView;

    .line 150
    const v0, 0x7f13010d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment;->mExtraOptions:Landroid/widget/FrameLayout;

    .line 151
    iget-object v0, p0, Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment;->mUserListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment;->mAllPackagesAdapter:Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment$AllPackagesAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 152
    iget-object v0, p0, Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment;->mUserListView:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setFastScrollEnabled(Z)V

    .line 153
    iget-object v0, p0, Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment;->mUserListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 155
    invoke-virtual {p0}, Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/exsettings/SettingsActivity;

    invoke-virtual {v0}, Lcom/android/exsettings/SettingsActivity;->getSwitchBar()Lcom/android/exsettings/widget/SwitchBar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment;->mSwitchBar:Lcom/android/exsettings/widget/SwitchBar;

    .line 156
    iget-object v0, p0, Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment;->mSwitchBar:Lcom/android/exsettings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/exsettings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/exsettings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 157
    iget-object v0, p0, Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment;->mSwitchBar:Lcom/android/exsettings/widget/SwitchBar;

    invoke-virtual {v0, v5}, Lcom/android/exsettings/widget/SwitchBar;->setOnStateOffLabel(I)V

    .line 158
    iget-object v0, p0, Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment;->mSwitchBar:Lcom/android/exsettings/widget/SwitchBar;

    invoke-virtual {v0, v5}, Lcom/android/exsettings/widget/SwitchBar;->setOnStateOnLabel(I)V

    .line 159
    iget-object v0, p0, Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment;->mSwitchBar:Lcom/android/exsettings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/exsettings/widget/SwitchBar;->show()V

    .line 161
    const v0, 0x7f13010f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment;->mEmptyView:Landroid/view/View;

    .line 162
    const v0, 0x7f13007f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment;->mProgressBar:Landroid/view/View;

    .line 164
    iget v0, p0, Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment;->mExpandedDesktopState:I

    if-ne v0, v2, :cond_0

    .line 165
    iget-object v0, p0, Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment;->mSwitchBar:Lcom/android/exsettings/widget/SwitchBar;

    invoke-virtual {v0, v3}, Lcom/android/exsettings/widget/SwitchBar;->setChecked(Z)V

    .line 166
    invoke-direct {p0}, Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment;->showListView()V

    .line 167
    iget-object v0, p0, Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment;->mExtraOptions:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 146
    :goto_0
    return-void

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment;->mSwitchBar:Lcom/android/exsettings/widget/SwitchBar;

    invoke-virtual {v0, v2}, Lcom/android/exsettings/widget/SwitchBar;->setChecked(Z)V

    .line 170
    iget-object v0, p0, Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment;->mProgressBar:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 171
    invoke-direct {p0}, Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment;->hideListView()V

    .line 172
    iget-object v0, p0, Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment;->mExtraOptions:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0
.end method
