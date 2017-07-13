.class Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment$ActivityFilter;
.super Ljava/lang/Object;
.source "ExpandedDesktopPreferenceFragment.java"

# interfaces
.implements Lcom/android/exsettingslib/applications/ApplicationsState$AppFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActivityFilter"
.end annotation


# instance fields
.field private final launcherResolveInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field private onlyLauncher:Z

.field final synthetic this$0:Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment;


# direct methods
.method private constructor <init>(Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment;Landroid/content/pm/PackageManager;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment;
    .param p2, "packageManager"    # Landroid/content/pm/PackageManager;

    .prologue
    .line 579
    iput-object p1, p0, Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment$ActivityFilter;->this$0:Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 576
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment$ActivityFilter;->launcherResolveInfoList:Ljava/util/List;

    .line 577
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment$ActivityFilter;->onlyLauncher:Z

    .line 580
    iput-object p2, p0, Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment$ActivityFilter;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 582
    invoke-virtual {p0}, Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment$ActivityFilter;->updateLauncherInfoList()V

    .line 579
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment;Landroid/content/pm/PackageManager;Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment$ActivityFilter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment;
    .param p2, "packageManager"    # Landroid/content/pm/PackageManager;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment$ActivityFilter;-><init>(Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment;Landroid/content/pm/PackageManager;)V

    return-void
.end method


# virtual methods
.method public filterApp(Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;)Z
    .locals 4
    .param p1, "info"    # Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;

    .prologue
    .line 604
    iget-object v1, p0, Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment$ActivityFilter;->this$0:Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment;

    invoke-static {v1}, Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment;->-get0(Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment;)Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment$AllPackagesAdapter;

    move-result-object v1

    invoke-static {v1}, Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment$AllPackagesAdapter;->-get0(Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment$AllPackagesAdapter;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p1, Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    .line 605
    .local v0, "show":Z
    :goto_0
    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment$ActivityFilter;->onlyLauncher:Z

    if-eqz v1, :cond_0

    .line 606
    iget-object v2, p0, Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment$ActivityFilter;->launcherResolveInfoList:Ljava/util/List;

    monitor-enter v2

    .line 607
    :try_start_0
    iget-object v1, p0, Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment$ActivityFilter;->launcherResolveInfoList:Ljava/util/List;

    iget-object v3, p1, Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .local v0, "show":Z
    monitor-exit v2

    .line 610
    .end local v0    # "show":Z
    :cond_0
    return v0

    .line 604
    :cond_1
    const/4 v0, 0x1

    .local v0, "show":Z
    goto :goto_0

    .line 606
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public init()V
    .locals 0

    .prologue
    .line 599
    return-void
.end method

.method public updateLauncherInfoList()V
    .locals 7

    .prologue
    .line 586
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.MAIN"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 587
    .local v0, "i":Landroid/content/Intent;
    const-string/jumbo v4, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 588
    iget-object v4, p0, Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment$ActivityFilter;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 590
    .local v1, "resolveInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    iget-object v5, p0, Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment$ActivityFilter;->launcherResolveInfoList:Ljava/util/List;

    monitor-enter v5

    .line 591
    :try_start_0
    iget-object v4, p0, Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment$ActivityFilter;->launcherResolveInfoList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 592
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "ri$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 593
    .local v2, "ri":Landroid/content/pm/ResolveInfo;
    iget-object v4, p0, Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment$ActivityFilter;->launcherResolveInfoList:Ljava/util/List;

    iget-object v6, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 590
    .end local v2    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v3    # "ri$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .restart local v3    # "ri$iterator":Ljava/util/Iterator;
    :cond_0
    monitor-exit v5

    .line 585
    return-void
.end method
