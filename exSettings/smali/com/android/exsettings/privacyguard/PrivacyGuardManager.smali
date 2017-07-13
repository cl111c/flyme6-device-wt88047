.class public Lcom/android/exsettings/privacyguard/PrivacyGuardManager;
.super Landroid/app/Fragment;
.source "PrivacyGuardManager.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exsettings/privacyguard/PrivacyGuardManager$AppInfo;,
        Lcom/android/exsettings/privacyguard/PrivacyGuardManager$HelpDialogFragment;,
        Lcom/android/exsettings/privacyguard/PrivacyGuardManager$ResetDialogFragment;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/Fragment;",
        "Landroid/widget/AdapterView$OnItemClickListener;",
        "Landroid/widget/AdapterView$OnItemLongClickListener;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/android/exsettings/privacyguard/PrivacyGuardManager$AppInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mAdapter:Lcom/android/exsettings/privacyguard/PrivacyGuardAppListAdapter;

.field private mAppOps:Landroid/app/AppOpsManager;

.field private mApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/exsettings/privacyguard/PrivacyGuardManager$AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mAppsList:Landroid/widget/ListView;

.field private mLoadingContainer:Landroid/view/View;

.field private mNoUserAppsInstalled:Landroid/widget/TextView;

.field private mPreferences:Landroid/content/SharedPreferences;

.field private mSavedFirstItemOffset:I

.field private mSavedFirstVisiblePosition:I


# direct methods
.method static synthetic -wrap0(Lcom/android/exsettings/privacyguard/PrivacyGuardManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/exsettings/privacyguard/PrivacyGuardManager;->doReset()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 65
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 82
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/exsettings/privacyguard/PrivacyGuardManager;->mSavedFirstVisiblePosition:I

    .line 65
    return-void
.end method

.method private createAdapter()Lcom/android/exsettings/privacyguard/PrivacyGuardAppListAdapter;
    .locals 11

    .prologue
    .line 240
    const/4 v3, 0x0

    .line 241
    .local v3, "lastSectionIndex":Ljava/lang/String;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 242
    .local v7, "sections":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 243
    .local v5, "positions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v8, p0, Lcom/android/exsettings/privacyguard/PrivacyGuardManager;->mApps:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v1

    .local v1, "count":I
    const/4 v4, 0x0

    .line 245
    .local v4, "offset":I
    const/4 v2, 0x0

    .end local v3    # "lastSectionIndex":Ljava/lang/String;
    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_3

    .line 246
    iget-object v8, p0, Lcom/android/exsettings/privacyguard/PrivacyGuardManager;->mApps:Ljava/util/List;

    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/exsettings/privacyguard/PrivacyGuardManager$AppInfo;

    .line 249
    .local v0, "app":Lcom/android/exsettings/privacyguard/PrivacyGuardManager$AppInfo;
    iget-boolean v8, v0, Lcom/android/exsettings/privacyguard/PrivacyGuardManager$AppInfo;->enabled:Z

    if-nez v8, :cond_0

    .line 250
    const-string/jumbo v6, "--"

    .line 257
    .local v6, "sectionIndex":Ljava/lang/String;
    :goto_1
    if-eqz v3, :cond_2

    .line 258
    invoke-static {v6, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 263
    :goto_2
    add-int/lit8 v4, v4, 0x1

    .line 245
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 251
    .end local v6    # "sectionIndex":Ljava/lang/String;
    :cond_0
    iget-object v8, v0, Lcom/android/exsettings/privacyguard/PrivacyGuardManager$AppInfo;->title:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 252
    const-string/jumbo v6, ""

    .restart local v6    # "sectionIndex":Ljava/lang/String;
    goto :goto_1

    .line 254
    .end local v6    # "sectionIndex":Ljava/lang/String;
    :cond_1
    iget-object v8, v0, Lcom/android/exsettings/privacyguard/PrivacyGuardManager$AppInfo;->title:Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "sectionIndex":Ljava/lang/String;
    goto :goto_1

    .line 259
    :cond_2
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 260
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 261
    move-object v3, v6

    .local v3, "lastSectionIndex":Ljava/lang/String;
    goto :goto_2

    .line 266
    .end local v0    # "app":Lcom/android/exsettings/privacyguard/PrivacyGuardManager$AppInfo;
    .end local v3    # "lastSectionIndex":Ljava/lang/String;
    .end local v6    # "sectionIndex":Ljava/lang/String;
    :cond_3
    new-instance v8, Lcom/android/exsettings/privacyguard/PrivacyGuardAppListAdapter;

    iget-object v9, p0, Lcom/android/exsettings/privacyguard/PrivacyGuardManager;->mActivity:Landroid/app/Activity;

    iget-object v10, p0, Lcom/android/exsettings/privacyguard/PrivacyGuardManager;->mApps:Ljava/util/List;

    invoke-direct {v8, v9, v10, v7, v5}, Lcom/android/exsettings/privacyguard/PrivacyGuardAppListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-object v8
.end method

.method private doReset()V
    .locals 3

    .prologue
    .line 359
    iget-object v2, p0, Lcom/android/exsettings/privacyguard/PrivacyGuardManager;->mApps:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "app$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/exsettings/privacyguard/PrivacyGuardManager$AppInfo;

    .line 360
    .local v0, "app":Lcom/android/exsettings/privacyguard/PrivacyGuardManager$AppInfo;
    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/android/exsettings/privacyguard/PrivacyGuardManager$AppInfo;->privacyGuardEnabled:Z

    goto :goto_0

    .line 362
    .end local v0    # "app":Lcom/android/exsettings/privacyguard/PrivacyGuardManager$AppInfo;
    :cond_0
    iget-object v2, p0, Lcom/android/exsettings/privacyguard/PrivacyGuardManager;->mAppOps:Landroid/app/AppOpsManager;

    invoke-virtual {v2}, Landroid/app/AppOpsManager;->resetAllModes()V

    .line 363
    iget-object v2, p0, Lcom/android/exsettings/privacyguard/PrivacyGuardManager;->mAdapter:Lcom/android/exsettings/privacyguard/PrivacyGuardAppListAdapter;

    invoke-virtual {v2}, Lcom/android/exsettings/privacyguard/PrivacyGuardAppListAdapter;->notifyDataSetChanged()V

    .line 357
    return-void
.end method

.method private prepareAppAdapter()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 225
    iget-object v0, p0, Lcom/android/exsettings/privacyguard/PrivacyGuardManager;->mApps:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/exsettings/privacyguard/PrivacyGuardManager;->mApps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 226
    :cond_0
    iget-object v0, p0, Lcom/android/exsettings/privacyguard/PrivacyGuardManager;->mNoUserAppsInstalled:Landroid/widget/TextView;

    const v1, 0x7f0c02c5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 227
    iget-object v0, p0, Lcom/android/exsettings/privacyguard/PrivacyGuardManager;->mNoUserAppsInstalled:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 228
    iget-object v0, p0, Lcom/android/exsettings/privacyguard/PrivacyGuardManager;->mAppsList:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setVisibility(I)V

    .line 229
    iget-object v0, p0, Lcom/android/exsettings/privacyguard/PrivacyGuardManager;->mAppsList:Landroid/widget/ListView;

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 222
    :goto_0
    return-void

    .line 231
    :cond_1
    iget-object v0, p0, Lcom/android/exsettings/privacyguard/PrivacyGuardManager;->mNoUserAppsInstalled:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 232
    iget-object v0, p0, Lcom/android/exsettings/privacyguard/PrivacyGuardManager;->mAppsList:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 233
    invoke-direct {p0}, Lcom/android/exsettings/privacyguard/PrivacyGuardManager;->createAdapter()Lcom/android/exsettings/privacyguard/PrivacyGuardAppListAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/privacyguard/PrivacyGuardManager;->mAdapter:Lcom/android/exsettings/privacyguard/PrivacyGuardAppListAdapter;

    .line 234
    iget-object v0, p0, Lcom/android/exsettings/privacyguard/PrivacyGuardManager;->mAppsList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/exsettings/privacyguard/PrivacyGuardManager;->mAdapter:Lcom/android/exsettings/privacyguard/PrivacyGuardAppListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 235
    iget-object v0, p0, Lcom/android/exsettings/privacyguard/PrivacyGuardManager;->mAppsList:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setFastScrollEnabled(Z)V

    goto :goto_0
.end method

.method private resetPrivacyGuard()V
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lcom/android/exsettings/privacyguard/PrivacyGuardManager;->mApps:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/exsettings/privacyguard/PrivacyGuardManager;->mApps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 271
    :cond_0
    return-void

    .line 273
    :cond_1
    invoke-direct {p0}, Lcom/android/exsettings/privacyguard/PrivacyGuardManager;->showResetDialog()V

    .line 269
    return-void
.end method

.method private scheduleAppsLoad()V
    .locals 3

    .prologue
    .line 219
    invoke-virtual {p0}, Lcom/android/exsettings/privacyguard/PrivacyGuardManager;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 218
    return-void
.end method

.method private shouldShowSystemApps()Z
    .locals 3

    .prologue
    .line 302
    iget-object v0, p0, Lcom/android/exsettings/privacyguard/PrivacyGuardManager;->mPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "show_system_apps"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 303
    iget-object v0, p0, Lcom/android/exsettings/privacyguard/PrivacyGuardManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f10001c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 302
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private showHelp()V
    .locals 3

    .prologue
    .line 331
    new-instance v0, Lcom/android/exsettings/privacyguard/PrivacyGuardManager$HelpDialogFragment;

    invoke-direct {v0}, Lcom/android/exsettings/privacyguard/PrivacyGuardManager$HelpDialogFragment;-><init>()V

    .line 332
    .local v0, "fragment":Lcom/android/exsettings/privacyguard/PrivacyGuardManager$HelpDialogFragment;
    invoke-virtual {p0}, Lcom/android/exsettings/privacyguard/PrivacyGuardManager;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v2, "help_dialog"

    invoke-virtual {v0, v1, v2}, Lcom/android/exsettings/privacyguard/PrivacyGuardManager$HelpDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 330
    return-void
.end method

.method private showResetDialog()V
    .locals 3

    .prologue
    .line 367
    new-instance v0, Lcom/android/exsettings/privacyguard/PrivacyGuardManager$ResetDialogFragment;

    invoke-direct {v0}, Lcom/android/exsettings/privacyguard/PrivacyGuardManager$ResetDialogFragment;-><init>()V

    .line 368
    .local v0, "dialog":Lcom/android/exsettings/privacyguard/PrivacyGuardManager$ResetDialogFragment;
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/android/exsettings/privacyguard/PrivacyGuardManager$ResetDialogFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 369
    invoke-virtual {p0}, Lcom/android/exsettings/privacyguard/PrivacyGuardManager;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v2, "reset_dialog"

    invoke-virtual {v0, v1, v2}, Lcom/android/exsettings/privacyguard/PrivacyGuardManager$ResetDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 366
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 119
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 121
    iget-object v0, p0, Lcom/android/exsettings/privacyguard/PrivacyGuardManager;->mActivity:Landroid/app/Activity;

    const v1, 0x7f130072

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/exsettings/privacyguard/PrivacyGuardManager;->mNoUserAppsInstalled:Landroid/widget/TextView;

    .line 123
    iget-object v0, p0, Lcom/android/exsettings/privacyguard/PrivacyGuardManager;->mActivity:Landroid/app/Activity;

    const v1, 0x7f1301b8

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/exsettings/privacyguard/PrivacyGuardManager;->mAppsList:Landroid/widget/ListView;

    .line 124
    iget-object v0, p0, Lcom/android/exsettings/privacyguard/PrivacyGuardManager;->mAppsList:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 125
    iget-object v0, p0, Lcom/android/exsettings/privacyguard/PrivacyGuardManager;->mAppsList:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 127
    iget-object v0, p0, Lcom/android/exsettings/privacyguard/PrivacyGuardManager;->mActivity:Landroid/app/Activity;

    const v1, 0x7f130138

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/privacyguard/PrivacyGuardManager;->mLoadingContainer:Landroid/view/View;

    .line 130
    iget-object v0, p0, Lcom/android/exsettings/privacyguard/PrivacyGuardManager;->mActivity:Landroid/app/Activity;

    const-string/jumbo v1, "privacy_guard_manager"

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/privacyguard/PrivacyGuardManager;->mPreferences:Landroid/content/SharedPreferences;

    .line 131
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/exsettings/privacyguard/PrivacyGuardManager;->mPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "first_help_shown"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 135
    :cond_0
    :goto_0
    if-eqz p1, :cond_2

    .line 136
    const-string/jumbo v0, "last_list_pos"

    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/exsettings/privacyguard/PrivacyGuardManager;->mSavedFirstVisiblePosition:I

    .line 138
    const-string/jumbo v0, "last_list_offset"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/exsettings/privacyguard/PrivacyGuardManager;->mSavedFirstItemOffset:I

    .line 145
    :goto_1
    invoke-direct {p0}, Lcom/android/exsettings/privacyguard/PrivacyGuardManager;->scheduleAppsLoad()V

    .line 147
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/exsettings/privacyguard/PrivacyGuardManager;->setHasOptionsMenu(Z)V

    .line 118
    return-void

    .line 132
    :cond_1
    invoke-direct {p0}, Lcom/android/exsettings/privacyguard/PrivacyGuardManager;->showHelp()V

    goto :goto_0

    .line 140
    :cond_2
    iput v3, p0, Lcom/android/exsettings/privacyguard/PrivacyGuardManager;->mSavedFirstVisiblePosition:I

    .line 141
    iput v2, p0, Lcom/android/exsettings/privacyguard/PrivacyGuardManager;->mSavedFirstItemOffset:I

    goto :goto_1
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 3
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/android/exsettings/privacyguard/PrivacyGuardManager$AppInfo;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 185
    iget-object v0, p0, Lcom/android/exsettings/privacyguard/PrivacyGuardManager;->mLoadingContainer:Landroid/view/View;

    .line 186
    iget-object v1, p0, Lcom/android/exsettings/privacyguard/PrivacyGuardManager;->mActivity:Landroid/app/Activity;

    const/high16 v2, 0x10a0000

    .line 185
    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 187
    iget-object v0, p0, Lcom/android/exsettings/privacyguard/PrivacyGuardManager;->mAppsList:Landroid/widget/ListView;

    .line 188
    iget-object v1, p0, Lcom/android/exsettings/privacyguard/PrivacyGuardManager;->mActivity:Landroid/app/Activity;

    const v2, 0x10a0001

    .line 187
    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 190
    iget-object v0, p0, Lcom/android/exsettings/privacyguard/PrivacyGuardManager;->mAppsList:Landroid/widget/ListView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 191
    iget-object v0, p0, Lcom/android/exsettings/privacyguard/PrivacyGuardManager;->mLoadingContainer:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 192
    new-instance v0, Lcom/android/exsettings/privacyguard/AppInfoLoader;

    iget-object v1, p0, Lcom/android/exsettings/privacyguard/PrivacyGuardManager;->mActivity:Landroid/app/Activity;

    invoke-direct {p0}, Lcom/android/exsettings/privacyguard/PrivacyGuardManager;->shouldShowSystemApps()Z

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/android/exsettings/privacyguard/AppInfoLoader;-><init>(Landroid/content/Context;Z)V

    return-object v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const v2, 0x7f13031a

    .line 374
    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 375
    const v0, 0x7f140009

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 376
    iget-object v0, p0, Lcom/android/exsettings/privacyguard/PrivacyGuardManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f10001c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 377
    invoke-interface {p1, v2}, Landroid/view/Menu;->removeItem(I)V

    .line 373
    :goto_0
    return-void

    .line 379
    :cond_0
    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/exsettings/privacyguard/PrivacyGuardManager;->shouldShowSystemApps()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 104
    invoke-virtual {p0}, Lcom/android/exsettings/privacyguard/PrivacyGuardManager;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iput-object v3, p0, Lcom/android/exsettings/privacyguard/PrivacyGuardManager;->mActivity:Landroid/app/Activity;

    .line 105
    invoke-virtual {p0}, Lcom/android/exsettings/privacyguard/PrivacyGuardManager;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string/jumbo v4, "appops"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AppOpsManager;

    iput-object v3, p0, Lcom/android/exsettings/privacyguard/PrivacyGuardManager;->mAppOps:Landroid/app/AppOpsManager;

    .line 107
    const v3, 0x7f0400db

    const/4 v4, 0x0

    invoke-virtual {p1, v3, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 109
    .local v1, "hostView":Landroid/view/View;
    invoke-static {}, Lcom/android/exsettings/privacyguard/PrivacyGuardPrefs;->newInstance()Lcom/android/exsettings/privacyguard/PrivacyGuardPrefs;

    move-result-object v2

    .line 110
    .local v2, "privacyGuardPrefs":Landroid/app/Fragment;
    invoke-virtual {p0}, Lcom/android/exsettings/privacyguard/PrivacyGuardManager;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 112
    .local v0, "fragmentTransaction":Landroid/app/FragmentTransaction;
    const-string/jumbo v3, "privacy_guard_fragment"

    .line 111
    const v4, 0x7f1301b7

    invoke-virtual {v0, v4, v2, v3}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 113
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 114
    return-object v1
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
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
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 279
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/exsettings/privacyguard/PrivacyGuardManager$AppInfo;

    .line 281
    .local v0, "app":Lcom/android/exsettings/privacyguard/PrivacyGuardManager$AppInfo;
    iget-boolean v1, v0, Lcom/android/exsettings/privacyguard/PrivacyGuardManager$AppInfo;->privacyGuardEnabled:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, v0, Lcom/android/exsettings/privacyguard/PrivacyGuardManager$AppInfo;->privacyGuardEnabled:Z

    .line 282
    iget-object v1, p0, Lcom/android/exsettings/privacyguard/PrivacyGuardManager;->mAppOps:Landroid/app/AppOpsManager;

    iget v2, v0, Lcom/android/exsettings/privacyguard/PrivacyGuardManager$AppInfo;->uid:I

    iget-object v3, v0, Lcom/android/exsettings/privacyguard/PrivacyGuardManager$AppInfo;->packageName:Ljava/lang/String;

    iget-boolean v4, v0, Lcom/android/exsettings/privacyguard/PrivacyGuardManager$AppInfo;->privacyGuardEnabled:Z

    invoke-virtual {v1, v2, v3, v4}, Landroid/app/AppOpsManager;->setPrivacyGuardSettingForPackage(ILjava/lang/String;Z)V

    .line 284
    iget-object v1, p0, Lcom/android/exsettings/privacyguard/PrivacyGuardManager;->mAdapter:Lcom/android/exsettings/privacyguard/PrivacyGuardAppListAdapter;

    invoke-virtual {v1}, Lcom/android/exsettings/privacyguard/PrivacyGuardAppListAdapter;->notifyDataSetChanged()V

    .line 277
    return-void

    .line 281
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 8
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
    .line 290
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/exsettings/privacyguard/PrivacyGuardManager$AppInfo;

    .line 292
    .local v7, "app":Lcom/android/exsettings/privacyguard/PrivacyGuardManager$AppInfo;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 293
    .local v2, "args":Landroid/os/Bundle;
    const-string/jumbo v1, "package"

    iget-object v3, v7, Lcom/android/exsettings/privacyguard/PrivacyGuardManager$AppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    invoke-virtual {p0}, Lcom/android/exsettings/privacyguard/PrivacyGuardManager;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/exsettings/SubSettings;

    .line 296
    .local v0, "ssa":Lcom/android/exsettings/SubSettings;
    const-class v1, Lcom/android/exsettings/applications/AppOpsDetails;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 297
    const v3, 0x7f0c02c3

    const/4 v4, 0x0

    const/4 v6, 0x2

    move-object v5, p0

    .line 296
    invoke-virtual/range {v0 .. v6}, Lcom/android/exsettings/SubSettings;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 298
    const/4 v1, 0x1

    return v1
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .param p1, "loader"    # Landroid/content/Loader;
    .param p2, "apps"    # Ljava/lang/Object;

    .prologue
    .line 196
    check-cast p2, Ljava/util/List;

    .end local p2    # "apps":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/exsettings/privacyguard/PrivacyGuardManager;->onLoadFinished(Landroid/content/Loader;Ljava/util/List;)V

    return-void
.end method

.method public onLoadFinished(Landroid/content/Loader;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/android/exsettings/privacyguard/PrivacyGuardManager$AppInfo;",
            ">;>;",
            "Ljava/util/List",
            "<",
            "Lcom/android/exsettings/privacyguard/PrivacyGuardManager$AppInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Ljava/util/List<Lcom/android/exsettings/privacyguard/PrivacyGuardManager$AppInfo;>;>;"
    .local p2, "apps":Ljava/util/List;, "Ljava/util/List<Lcom/android/exsettings/privacyguard/PrivacyGuardManager$AppInfo;>;"
    const/4 v3, -0x1

    .line 197
    iput-object p2, p0, Lcom/android/exsettings/privacyguard/PrivacyGuardManager;->mApps:Ljava/util/List;

    .line 198
    invoke-direct {p0}, Lcom/android/exsettings/privacyguard/PrivacyGuardManager;->prepareAppAdapter()V

    .line 200
    iget-object v0, p0, Lcom/android/exsettings/privacyguard/PrivacyGuardManager;->mLoadingContainer:Landroid/view/View;

    .line 201
    iget-object v1, p0, Lcom/android/exsettings/privacyguard/PrivacyGuardManager;->mActivity:Landroid/app/Activity;

    const v2, 0x10a0001

    .line 200
    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 202
    iget-object v0, p0, Lcom/android/exsettings/privacyguard/PrivacyGuardManager;->mAppsList:Landroid/widget/ListView;

    .line 203
    iget-object v1, p0, Lcom/android/exsettings/privacyguard/PrivacyGuardManager;->mActivity:Landroid/app/Activity;

    const/high16 v2, 0x10a0000

    .line 202
    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 205
    iget v0, p0, Lcom/android/exsettings/privacyguard/PrivacyGuardManager;->mSavedFirstVisiblePosition:I

    if-eq v0, v3, :cond_0

    .line 206
    iget-object v0, p0, Lcom/android/exsettings/privacyguard/PrivacyGuardManager;->mAppsList:Landroid/widget/ListView;

    iget v1, p0, Lcom/android/exsettings/privacyguard/PrivacyGuardManager;->mSavedFirstVisiblePosition:I

    iget v2, p0, Lcom/android/exsettings/privacyguard/PrivacyGuardManager;->mSavedFirstItemOffset:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 207
    iput v3, p0, Lcom/android/exsettings/privacyguard/PrivacyGuardManager;->mSavedFirstVisiblePosition:I

    .line 210
    :cond_0
    iget-object v0, p0, Lcom/android/exsettings/privacyguard/PrivacyGuardManager;->mLoadingContainer:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 211
    iget-object v0, p0, Lcom/android/exsettings/privacyguard/PrivacyGuardManager;->mAppsList:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 196
    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/android/exsettings/privacyguard/PrivacyGuardManager$AppInfo;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 215
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Ljava/util/List<Lcom/android/exsettings/privacyguard/PrivacyGuardManager$AppInfo;>;>;"
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v3, 0x1

    .line 385
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 406
    invoke-super {p0, p1}, Landroid/app/Fragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    return v2

    .line 387
    :sswitch_0
    invoke-direct {p0}, Lcom/android/exsettings/privacyguard/PrivacyGuardManager;->showHelp()V

    .line 388
    return v3

    .line 390
    :sswitch_1
    invoke-direct {p0}, Lcom/android/exsettings/privacyguard/PrivacyGuardManager;->resetPrivacyGuard()V

    .line 391
    return v3

    .line 393
    :sswitch_2
    const-string/jumbo v1, "show_system_apps"

    .line 396
    .local v1, "prefName":Ljava/lang/String;
    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {p1, v2}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 397
    iget-object v2, p0, Lcom/android/exsettings/privacyguard/PrivacyGuardManager;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string/jumbo v4, "show_system_apps"

    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v5

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 398
    invoke-direct {p0}, Lcom/android/exsettings/privacyguard/PrivacyGuardManager;->scheduleAppsLoad()V

    .line 399
    return v3

    :cond_0
    move v2, v3

    .line 396
    goto :goto_0

    .line 401
    .end local v1    # "prefName":Ljava/lang/String;
    :sswitch_3
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.MAIN"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 402
    .local v0, "i":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/exsettings/privacyguard/PrivacyGuardManager;->mActivity:Landroid/app/Activity;

    const-class v4, Lcom/android/exsettings/Settings$AppOpsSummaryActivity;

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 403
    iget-object v2, p0, Lcom/android/exsettings/privacyguard/PrivacyGuardManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 404
    return v3

    .line 385
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f13031a -> :sswitch_2
        0x7f130329 -> :sswitch_3
        0x7f130335 -> :sswitch_1
        0x7f130336 -> :sswitch_0
    .end sparse-switch
.end method

.method public onPause()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 165
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 170
    iget-object v2, p0, Lcom/android/exsettings/privacyguard/PrivacyGuardManager;->mAppsList:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v2

    iput v2, p0, Lcom/android/exsettings/privacyguard/PrivacyGuardManager;->mSavedFirstVisiblePosition:I

    .line 171
    iget-object v2, p0, Lcom/android/exsettings/privacyguard/PrivacyGuardManager;->mAppsList:Landroid/widget/ListView;

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 172
    .local v0, "firstChild":Landroid/view/View;
    if-nez v0, :cond_0

    :goto_0
    iput v1, p0, Lcom/android/exsettings/privacyguard/PrivacyGuardManager;->mSavedFirstItemOffset:I

    .line 164
    return-void

    .line 172
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v1

    goto :goto_0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 177
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 180
    invoke-direct {p0}, Lcom/android/exsettings/privacyguard/PrivacyGuardManager;->scheduleAppsLoad()V

    .line 176
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 157
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 159
    const-string/jumbo v0, "last_list_pos"

    iget v1, p0, Lcom/android/exsettings/privacyguard/PrivacyGuardManager;->mSavedFirstVisiblePosition:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 160
    const-string/jumbo v0, "last_list_offset"

    iget v1, p0, Lcom/android/exsettings/privacyguard/PrivacyGuardManager;->mSavedFirstItemOffset:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 156
    return-void
.end method

.method public onViewStateRestored(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 152
    invoke-super {p0, p1}, Landroid/app/Fragment;->onViewStateRestored(Landroid/os/Bundle;)V

    .line 151
    return-void
.end method
