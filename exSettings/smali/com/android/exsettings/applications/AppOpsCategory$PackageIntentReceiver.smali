.class public Lcom/android/exsettings/applications/AppOpsCategory$PackageIntentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AppOpsCategory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/applications/AppOpsCategory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PackageIntentReceiver"
.end annotation


# instance fields
.field final mLoader:Lcom/android/exsettings/applications/AppOpsCategory$AppListLoader;


# direct methods
.method public constructor <init>(Lcom/android/exsettings/applications/AppOpsCategory$AppListLoader;)V
    .locals 3
    .param p1, "loader"    # Lcom/android/exsettings/applications/AppOpsCategory$AppListLoader;

    .prologue
    .line 93
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 94
    iput-object p1, p0, Lcom/android/exsettings/applications/AppOpsCategory$PackageIntentReceiver;->mLoader:Lcom/android/exsettings/applications/AppOpsCategory$AppListLoader;

    .line 95
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v2, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 96
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 97
    const-string/jumbo v2, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 98
    const-string/jumbo v2, "package"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 99
    iget-object v2, p0, Lcom/android/exsettings/applications/AppOpsCategory$PackageIntentReceiver;->mLoader:Lcom/android/exsettings/applications/AppOpsCategory$AppListLoader;

    invoke-virtual {v2}, Lcom/android/exsettings/applications/AppOpsCategory$AppListLoader;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 101
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 102
    .local v1, "sdFilter":Landroid/content/IntentFilter;
    const-string/jumbo v2, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 103
    const-string/jumbo v2, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 104
    iget-object v2, p0, Lcom/android/exsettings/applications/AppOpsCategory$PackageIntentReceiver;->mLoader:Lcom/android/exsettings/applications/AppOpsCategory$AppListLoader;

    invoke-virtual {v2}, Lcom/android/exsettings/applications/AppOpsCategory$AppListLoader;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 93
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/exsettings/applications/AppOpsCategory$PackageIntentReceiver;->mLoader:Lcom/android/exsettings/applications/AppOpsCategory$AppListLoader;

    invoke-virtual {v0}, Lcom/android/exsettings/applications/AppOpsCategory$AppListLoader;->onContentChanged()V

    .line 107
    return-void
.end method
