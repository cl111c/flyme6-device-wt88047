.class public Lcom/android/exsettings/applications/AppOpsCategory;
.super Landroid/app/ListFragment;
.source "AppOpsCategory.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exsettings/applications/AppOpsCategory$InterestingConfigChanges;,
        Lcom/android/exsettings/applications/AppOpsCategory$PackageIntentReceiver;,
        Lcom/android/exsettings/applications/AppOpsCategory$AppListLoader;,
        Lcom/android/exsettings/applications/AppOpsCategory$AppListAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/ListFragment;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/android/exsettings/applications/AppOpsState$AppOpEntry;",
        ">;>;"
    }
.end annotation


# instance fields
.field mAdapter:Lcom/android/exsettings/applications/AppOpsCategory$AppListAdapter;

.field mCurrentPkgName:Ljava/lang/String;

.field mState:Lcom/android/exsettings/applications/AppOpsState;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/android/exsettings/applications/AppOpsState$OpsTemplate;)V
    .locals 2
    .param p1, "template"    # Lcom/android/exsettings/applications/AppOpsState$OpsTemplate;

    .prologue
    .line 60
    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    .line 61
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 62
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v1, "template"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 63
    invoke-virtual {p0, v0}, Lcom/android/exsettings/applications/AppOpsCategory;->setArguments(Landroid/os/Bundle;)V

    .line 60
    return-void
.end method

.method private startApplicationDetailsActivity()V
    .locals 7

    .prologue
    .line 333
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 334
    .local v2, "args":Landroid/os/Bundle;
    const-string/jumbo v1, "package"

    iget-object v3, p0, Lcom/android/exsettings/applications/AppOpsCategory;->mCurrentPkgName:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    invoke-virtual {p0}, Lcom/android/exsettings/applications/AppOpsCategory;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/exsettings/SettingsActivity;

    .line 337
    .local v0, "sa":Lcom/android/exsettings/SettingsActivity;
    const-class v1, Lcom/android/exsettings/applications/AppOpsDetails;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 338
    const v3, 0x7f0c02c3

    const/4 v4, 0x0

    const/4 v6, 0x1

    move-object v5, p0

    .line 337
    invoke-virtual/range {v0 .. v6}, Lcom/android/exsettings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 331
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 310
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 314
    const-string/jumbo v0, "No applications"

    invoke-virtual {p0, v0}, Lcom/android/exsettings/applications/AppOpsCategory;->setEmptyText(Ljava/lang/CharSequence;)V

    .line 317
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/exsettings/applications/AppOpsCategory;->setHasOptionsMenu(Z)V

    .line 320
    new-instance v0, Lcom/android/exsettings/applications/AppOpsCategory$AppListAdapter;

    invoke-virtual {p0}, Lcom/android/exsettings/applications/AppOpsCategory;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/exsettings/applications/AppOpsCategory;->mState:Lcom/android/exsettings/applications/AppOpsState;

    invoke-direct {v0, v1, v2}, Lcom/android/exsettings/applications/AppOpsCategory$AppListAdapter;-><init>(Landroid/content/Context;Lcom/android/exsettings/applications/AppOpsState;)V

    iput-object v0, p0, Lcom/android/exsettings/applications/AppOpsCategory;->mAdapter:Lcom/android/exsettings/applications/AppOpsCategory$AppListAdapter;

    .line 321
    iget-object v0, p0, Lcom/android/exsettings/applications/AppOpsCategory;->mAdapter:Lcom/android/exsettings/applications/AppOpsCategory$AppListAdapter;

    invoke-virtual {p0, v0}, Lcom/android/exsettings/applications/AppOpsCategory;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 324
    invoke-virtual {p0, v3}, Lcom/android/exsettings/applications/AppOpsCategory;->setListShown(Z)V

    .line 327
    invoke-virtual {p0}, Lcom/android/exsettings/applications/AppOpsCategory;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v3, v1, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 309
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 305
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 306
    new-instance v0, Lcom/android/exsettings/applications/AppOpsState;

    invoke-virtual {p0}, Lcom/android/exsettings/applications/AppOpsCategory;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/exsettings/applications/AppOpsState;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/exsettings/applications/AppOpsCategory;->mState:Lcom/android/exsettings/applications/AppOpsState;

    .line 304
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 5
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
            "Lcom/android/exsettings/applications/AppOpsState$AppOpEntry;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 350
    invoke-virtual {p0}, Lcom/android/exsettings/applications/AppOpsCategory;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 351
    .local v0, "fargs":Landroid/os/Bundle;
    const/4 v1, 0x0

    .line 352
    .local v1, "template":Lcom/android/exsettings/applications/AppOpsState$OpsTemplate;
    if-eqz v0, :cond_0

    .line 353
    const-string/jumbo v2, "template"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    .end local v1    # "template":Lcom/android/exsettings/applications/AppOpsState$OpsTemplate;
    check-cast v1, Lcom/android/exsettings/applications/AppOpsState$OpsTemplate;

    .line 355
    :cond_0
    new-instance v2, Lcom/android/exsettings/applications/AppOpsCategory$AppListLoader;

    invoke-virtual {p0}, Lcom/android/exsettings/applications/AppOpsCategory;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/android/exsettings/applications/AppOpsCategory;->mState:Lcom/android/exsettings/applications/AppOpsState;

    invoke-direct {v2, v3, v4, v1}, Lcom/android/exsettings/applications/AppOpsCategory$AppListLoader;-><init>(Landroid/content/Context;Lcom/android/exsettings/applications/AppOpsState;Lcom/android/exsettings/applications/AppOpsState$OpsTemplate;)V

    return-object v2
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 2
    .param p1, "l"    # Landroid/widget/ListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 342
    iget-object v1, p0, Lcom/android/exsettings/applications/AppOpsCategory;->mAdapter:Lcom/android/exsettings/applications/AppOpsCategory$AppListAdapter;

    invoke-virtual {v1, p3}, Lcom/android/exsettings/applications/AppOpsCategory$AppListAdapter;->getItem(I)Lcom/android/exsettings/applications/AppOpsState$AppOpEntry;

    move-result-object v0

    .line 343
    .local v0, "entry":Lcom/android/exsettings/applications/AppOpsState$AppOpEntry;
    if-eqz v0, :cond_0

    .line 344
    invoke-virtual {v0}, Lcom/android/exsettings/applications/AppOpsState$AppOpEntry;->getAppEntry()Lcom/android/exsettings/applications/AppOpsState$AppEntry;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/exsettings/applications/AppOpsState$AppEntry;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/exsettings/applications/AppOpsCategory;->mCurrentPkgName:Ljava/lang/String;

    .line 345
    invoke-direct {p0}, Lcom/android/exsettings/applications/AppOpsCategory;->startApplicationDetailsActivity()V

    .line 341
    :cond_0
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .param p1, "loader"    # Landroid/content/Loader;
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    .line 358
    check-cast p2, Ljava/util/List;

    .end local p2    # "data":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/exsettings/applications/AppOpsCategory;->onLoadFinished(Landroid/content/Loader;Ljava/util/List;)V

    return-void
.end method

.method public onLoadFinished(Landroid/content/Loader;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/android/exsettings/applications/AppOpsState$AppOpEntry;",
            ">;>;",
            "Ljava/util/List",
            "<",
            "Lcom/android/exsettings/applications/AppOpsState$AppOpEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Ljava/util/List<Lcom/android/exsettings/applications/AppOpsState$AppOpEntry;>;>;"
    .local p2, "data":Ljava/util/List;, "Ljava/util/List<Lcom/android/exsettings/applications/AppOpsState$AppOpEntry;>;"
    const/4 v1, 0x1

    .line 360
    iget-object v0, p0, Lcom/android/exsettings/applications/AppOpsCategory;->mAdapter:Lcom/android/exsettings/applications/AppOpsCategory$AppListAdapter;

    invoke-virtual {v0, p2}, Lcom/android/exsettings/applications/AppOpsCategory$AppListAdapter;->setData(Ljava/util/List;)V

    .line 363
    invoke-virtual {p0}, Lcom/android/exsettings/applications/AppOpsCategory;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 364
    invoke-virtual {p0, v1}, Lcom/android/exsettings/applications/AppOpsCategory;->setListShown(Z)V

    .line 358
    :goto_0
    return-void

    .line 366
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/exsettings/applications/AppOpsCategory;->setListShownNoAnimation(Z)V

    goto :goto_0
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/android/exsettings/applications/AppOpsState$AppOpEntry;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 372
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Ljava/util/List<Lcom/android/exsettings/applications/AppOpsState$AppOpEntry;>;>;"
    iget-object v0, p0, Lcom/android/exsettings/applications/AppOpsCategory;->mAdapter:Lcom/android/exsettings/applications/AppOpsCategory$AppListAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/exsettings/applications/AppOpsCategory$AppListAdapter;->setData(Ljava/util/List;)V

    .line 370
    return-void
.end method
