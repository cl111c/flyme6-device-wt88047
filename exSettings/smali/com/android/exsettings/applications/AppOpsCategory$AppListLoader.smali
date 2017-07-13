.class public Lcom/android/exsettings/applications/AppOpsCategory$AppListLoader;
.super Landroid/content/AsyncTaskLoader;
.source "AppOpsCategory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/applications/AppOpsCategory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppListLoader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/content/AsyncTaskLoader",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/android/exsettings/applications/AppOpsState$AppOpEntry;",
        ">;>;"
    }
.end annotation


# instance fields
.field mApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/exsettings/applications/AppOpsState$AppOpEntry;",
            ">;"
        }
    .end annotation
.end field

.field final mLastConfig:Lcom/android/exsettings/applications/AppOpsCategory$InterestingConfigChanges;

.field mPackageObserver:Lcom/android/exsettings/applications/AppOpsCategory$PackageIntentReceiver;

.field final mState:Lcom/android/exsettings/applications/AppOpsState;

.field final mTemplate:Lcom/android/exsettings/applications/AppOpsState$OpsTemplate;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/exsettings/applications/AppOpsState;Lcom/android/exsettings/applications/AppOpsState$OpsTemplate;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "state"    # Lcom/android/exsettings/applications/AppOpsState;
    .param p3, "template"    # Lcom/android/exsettings/applications/AppOpsState$OpsTemplate;

    .prologue
    .line 125
    invoke-direct {p0, p1}, Landroid/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 117
    new-instance v0, Lcom/android/exsettings/applications/AppOpsCategory$InterestingConfigChanges;

    invoke-direct {v0}, Lcom/android/exsettings/applications/AppOpsCategory$InterestingConfigChanges;-><init>()V

    iput-object v0, p0, Lcom/android/exsettings/applications/AppOpsCategory$AppListLoader;->mLastConfig:Lcom/android/exsettings/applications/AppOpsCategory$InterestingConfigChanges;

    .line 126
    iput-object p2, p0, Lcom/android/exsettings/applications/AppOpsCategory$AppListLoader;->mState:Lcom/android/exsettings/applications/AppOpsState;

    .line 127
    iput-object p3, p0, Lcom/android/exsettings/applications/AppOpsCategory$AppListLoader;->mTemplate:Lcom/android/exsettings/applications/AppOpsState$OpsTemplate;

    .line 124
    return-void
.end method


# virtual methods
.method public bridge synthetic deliverResult(Ljava/lang/Object;)V
    .locals 0
    .param p1, "apps"    # Ljava/lang/Object;

    .prologue
    .line 139
    check-cast p1, Ljava/util/List;

    .end local p1    # "apps":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/exsettings/applications/AppOpsCategory$AppListLoader;->deliverResult(Ljava/util/List;)V

    return-void
.end method

.method public deliverResult(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/exsettings/applications/AppOpsState$AppOpEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 140
    .local p1, "apps":Ljava/util/List;, "Ljava/util/List<Lcom/android/exsettings/applications/AppOpsState$AppOpEntry;>;"
    invoke-virtual {p0}, Lcom/android/exsettings/applications/AppOpsCategory$AppListLoader;->isReset()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 143
    if-eqz p1, :cond_0

    .line 144
    invoke-virtual {p0, p1}, Lcom/android/exsettings/applications/AppOpsCategory$AppListLoader;->onReleaseResources(Ljava/util/List;)V

    .line 147
    :cond_0
    move-object v0, p1

    .line 148
    .local v0, "oldApps":Ljava/util/List;, "Ljava/util/List<Lcom/android/exsettings/applications/AppOpsState$AppOpEntry;>;"
    iput-object p1, p0, Lcom/android/exsettings/applications/AppOpsCategory$AppListLoader;->mApps:Ljava/util/List;

    .line 150
    invoke-virtual {p0}, Lcom/android/exsettings/applications/AppOpsCategory$AppListLoader;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 153
    invoke-super {p0, p1}, Landroid/content/AsyncTaskLoader;->deliverResult(Ljava/lang/Object;)V

    .line 159
    :cond_1
    if-eqz v0, :cond_2

    .line 160
    invoke-virtual {p0, v0}, Lcom/android/exsettings/applications/AppOpsCategory$AppListLoader;->onReleaseResources(Ljava/util/List;)V

    .line 139
    :cond_2
    return-void
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 130
    invoke-virtual {p0}, Lcom/android/exsettings/applications/AppOpsCategory$AppListLoader;->loadInBackground()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public loadInBackground()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/exsettings/applications/AppOpsState$AppOpEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/exsettings/applications/AppOpsCategory$AppListLoader;->mState:Lcom/android/exsettings/applications/AppOpsState;

    iget-object v1, p0, Lcom/android/exsettings/applications/AppOpsCategory$AppListLoader;->mTemplate:Lcom/android/exsettings/applications/AppOpsState$OpsTemplate;

    invoke-virtual {v0, v1}, Lcom/android/exsettings/applications/AppOpsState;->buildState(Lcom/android/exsettings/applications/AppOpsState$OpsTemplate;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic onCanceled(Ljava/lang/Object;)V
    .locals 0
    .param p1, "apps"    # Ljava/lang/Object;

    .prologue
    .line 205
    check-cast p1, Ljava/util/List;

    .end local p1    # "apps":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/exsettings/applications/AppOpsCategory$AppListLoader;->onCanceled(Ljava/util/List;)V

    return-void
.end method

.method public onCanceled(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/exsettings/applications/AppOpsState$AppOpEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 206
    .local p1, "apps":Ljava/util/List;, "Ljava/util/List<Lcom/android/exsettings/applications/AppOpsState$AppOpEntry;>;"
    invoke-super {p0, p1}, Landroid/content/AsyncTaskLoader;->onCanceled(Ljava/lang/Object;)V

    .line 210
    invoke-virtual {p0, p1}, Lcom/android/exsettings/applications/AppOpsCategory$AppListLoader;->onReleaseResources(Ljava/util/List;)V

    .line 205
    return-void
.end method

.method protected onReleaseResources(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/exsettings/applications/AppOpsState$AppOpEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 240
    .local p1, "apps":Ljava/util/List;, "Ljava/util/List<Lcom/android/exsettings/applications/AppOpsState$AppOpEntry;>;"
    return-void
.end method

.method protected onReset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 217
    invoke-super {p0}, Landroid/content/AsyncTaskLoader;->onReset()V

    .line 220
    invoke-virtual {p0}, Lcom/android/exsettings/applications/AppOpsCategory$AppListLoader;->onStopLoading()V

    .line 224
    iget-object v0, p0, Lcom/android/exsettings/applications/AppOpsCategory$AppListLoader;->mApps:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/android/exsettings/applications/AppOpsCategory$AppListLoader;->mApps:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/android/exsettings/applications/AppOpsCategory$AppListLoader;->onReleaseResources(Ljava/util/List;)V

    .line 226
    iput-object v2, p0, Lcom/android/exsettings/applications/AppOpsCategory$AppListLoader;->mApps:Ljava/util/List;

    .line 230
    :cond_0
    iget-object v0, p0, Lcom/android/exsettings/applications/AppOpsCategory$AppListLoader;->mPackageObserver:Lcom/android/exsettings/applications/AppOpsCategory$PackageIntentReceiver;

    if-eqz v0, :cond_1

    .line 231
    invoke-virtual {p0}, Lcom/android/exsettings/applications/AppOpsCategory$AppListLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/exsettings/applications/AppOpsCategory$AppListLoader;->mPackageObserver:Lcom/android/exsettings/applications/AppOpsCategory$PackageIntentReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 232
    iput-object v2, p0, Lcom/android/exsettings/applications/AppOpsCategory$AppListLoader;->mPackageObserver:Lcom/android/exsettings/applications/AppOpsCategory$PackageIntentReceiver;

    .line 216
    :cond_1
    return-void
.end method

.method protected onStartLoading()V
    .locals 3

    .prologue
    .line 170
    invoke-virtual {p0}, Lcom/android/exsettings/applications/AppOpsCategory$AppListLoader;->onContentChanged()V

    .line 172
    iget-object v1, p0, Lcom/android/exsettings/applications/AppOpsCategory$AppListLoader;->mApps:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 175
    iget-object v1, p0, Lcom/android/exsettings/applications/AppOpsCategory$AppListLoader;->mApps:Ljava/util/List;

    invoke-virtual {p0, v1}, Lcom/android/exsettings/applications/AppOpsCategory$AppListLoader;->deliverResult(Ljava/util/List;)V

    .line 179
    :cond_0
    iget-object v1, p0, Lcom/android/exsettings/applications/AppOpsCategory$AppListLoader;->mPackageObserver:Lcom/android/exsettings/applications/AppOpsCategory$PackageIntentReceiver;

    if-nez v1, :cond_1

    .line 180
    new-instance v1, Lcom/android/exsettings/applications/AppOpsCategory$PackageIntentReceiver;

    invoke-direct {v1, p0}, Lcom/android/exsettings/applications/AppOpsCategory$PackageIntentReceiver;-><init>(Lcom/android/exsettings/applications/AppOpsCategory$AppListLoader;)V

    iput-object v1, p0, Lcom/android/exsettings/applications/AppOpsCategory$AppListLoader;->mPackageObserver:Lcom/android/exsettings/applications/AppOpsCategory$PackageIntentReceiver;

    .line 185
    :cond_1
    iget-object v1, p0, Lcom/android/exsettings/applications/AppOpsCategory$AppListLoader;->mLastConfig:Lcom/android/exsettings/applications/AppOpsCategory$InterestingConfigChanges;

    invoke-virtual {p0}, Lcom/android/exsettings/applications/AppOpsCategory$AppListLoader;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/exsettings/applications/AppOpsCategory$InterestingConfigChanges;->applyNewConfig(Landroid/content/res/Resources;)Z

    move-result v0

    .line 187
    .local v0, "configChange":Z
    invoke-virtual {p0}, Lcom/android/exsettings/applications/AppOpsCategory$AppListLoader;->takeContentChanged()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/exsettings/applications/AppOpsCategory$AppListLoader;->mApps:Ljava/util/List;

    if-nez v1, :cond_4

    .line 190
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/android/exsettings/applications/AppOpsCategory$AppListLoader;->forceLoad()V

    .line 167
    :cond_3
    return-void

    .line 187
    :cond_4
    if-eqz v0, :cond_3

    goto :goto_0
.end method

.method protected onStopLoading()V
    .locals 0

    .prologue
    .line 199
    invoke-virtual {p0}, Lcom/android/exsettings/applications/AppOpsCategory$AppListLoader;->cancelLoad()Z

    .line 197
    return-void
.end method
