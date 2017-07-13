.class public Lcom/android/exsettings/applications/ProtectedAppsActivity;
.super Landroid/app/Activity;
.source "ProtectedAppsActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exsettings/applications/ProtectedAppsActivity$AppEntry;,
        Lcom/android/exsettings/applications/ProtectedAppsActivity$AppProtectList;,
        Lcom/android/exsettings/applications/ProtectedAppsActivity$StoreComponentProtectedStatus;,
        Lcom/android/exsettings/applications/ProtectedAppsActivity$AppViewHolder;,
        Lcom/android/exsettings/applications/ProtectedAppsActivity$AppsAdapter;,
        Lcom/android/exsettings/applications/ProtectedAppsActivity$1;
    }
.end annotation


# instance fields
.field private mAppClickListener:Landroid/view/View$OnClickListener;

.field private mAppsAdapter:Lcom/android/exsettings/applications/ProtectedAppsActivity$AppsAdapter;

.field private mListView:Landroid/widget/ListView;

.field private mOrientation:I

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mProtect:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private mProtectedApps:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetIntent:Landroid/content/Intent;

.field private mUserIsAuth:Z

.field private mWaitUserAuth:Z


# direct methods
.method static synthetic -get0(Lcom/android/exsettings/applications/ProtectedAppsActivity;)Landroid/view/View$OnClickListener;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/applications/ProtectedAppsActivity;->mAppClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/exsettings/applications/ProtectedAppsActivity;)Lcom/android/exsettings/applications/ProtectedAppsActivity$AppsAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/applications/ProtectedAppsActivity;->mAppsAdapter:Lcom/android/exsettings/applications/ProtectedAppsActivity$AppsAdapter;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/exsettings/applications/ProtectedAppsActivity;)Landroid/content/pm/PackageManager;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/applications/ProtectedAppsActivity;->mPackageManager:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/exsettings/applications/ProtectedAppsActivity;Landroid/content/ComponentName;)Z
    .locals 1
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/exsettings/applications/ProtectedAppsActivity;->getProtectedStateFromComponentName(Landroid/content/ComponentName;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/exsettings/applications/ProtectedAppsActivity;)Ljava/util/List;
    .locals 1

    invoke-direct {p0}, Lcom/android/exsettings/applications/ProtectedAppsActivity;->refreshApps()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2(Lcom/android/exsettings/applications/ProtectedAppsActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/exsettings/applications/ProtectedAppsActivity;->updateProtectedComponentsList()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 54
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 72
    iput-boolean v0, p0, Lcom/android/exsettings/applications/ProtectedAppsActivity;->mWaitUserAuth:Z

    .line 73
    iput-boolean v0, p0, Lcom/android/exsettings/applications/ProtectedAppsActivity;->mUserIsAuth:Z

    .line 77
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/exsettings/applications/ProtectedAppsActivity;->mProtectedApps:Ljava/util/HashSet;

    .line 497
    new-instance v0, Lcom/android/exsettings/applications/ProtectedAppsActivity$1;

    invoke-direct {v0, p0}, Lcom/android/exsettings/applications/ProtectedAppsActivity$1;-><init>(Lcom/android/exsettings/applications/ProtectedAppsActivity;)V

    iput-object v0, p0, Lcom/android/exsettings/applications/ProtectedAppsActivity;->mAppClickListener:Landroid/view/View$OnClickListener;

    .line 54
    return-void
.end method

.method private getProtectedStateFromComponentName(Landroid/content/ComponentName;)Z
    .locals 1
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/exsettings/applications/ProtectedAppsActivity;->mProtectedApps:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private launchTargetActivityInfoAndFinish()V
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/android/exsettings/applications/ProtectedAppsActivity;->mTargetIntent:Landroid/content/Intent;

    .line 212
    .local v0, "launchIntent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/android/exsettings/applications/ProtectedAppsActivity;->startActivity(Landroid/content/Intent;)V

    .line 213
    invoke-virtual {p0}, Lcom/android/exsettings/applications/ProtectedAppsActivity;->finish()V

    .line 210
    return-void
.end method

.method private refreshApps()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/exsettings/applications/ProtectedAppsActivity$AppEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 259
    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v5, "android.intent.action.MAIN"

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 260
    .local v4, "mainIntent":Landroid/content/Intent;
    const-string/jumbo v5, "android.intent.category.LAUNCHER"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 261
    iget-object v5, p0, Lcom/android/exsettings/applications/ProtectedAppsActivity;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v6, 0x0

    invoke-virtual {v5, v4, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 262
    .local v1, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v5, Landroid/content/pm/ResolveInfo$DisplayNameComparator;

    iget-object v6, p0, Lcom/android/exsettings/applications/ProtectedAppsActivity;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-direct {v5, v6}, Landroid/content/pm/ResolveInfo$DisplayNameComparator;-><init>(Landroid/content/pm/PackageManager;)V

    invoke-static {v1, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 263
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 264
    .local v0, "appEntries":Ljava/util/List;, "Ljava/util/List<Lcom/android/exsettings/applications/ProtectedAppsActivity$AppEntry;>;"
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "info$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 265
    .local v2, "info":Landroid/content/pm/ResolveInfo;
    new-instance v5, Lcom/android/exsettings/applications/ProtectedAppsActivity$AppEntry;

    invoke-direct {v5, p0, v2}, Lcom/android/exsettings/applications/ProtectedAppsActivity$AppEntry;-><init>(Lcom/android/exsettings/applications/ProtectedAppsActivity;Landroid/content/pm/ResolveInfo;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 267
    .end local v2    # "info":Landroid/content/pm/ResolveInfo;
    :cond_0
    return-object v0
.end method

.method private reset()V
    .locals 13

    .prologue
    const/4 v12, 0x1

    const/4 v8, 0x0

    .line 226
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 231
    .local v1, "componentsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    invoke-virtual {p0}, Lcom/android/exsettings/applications/ProtectedAppsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 233
    .local v5, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v7, "protected_components"

    .line 232
    invoke-static {v5, v7}, Lcyanogenmod/providers/CMSettings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 235
    .local v3, "hiddenComponents":Ljava/lang/String;
    if-eqz v3, :cond_0

    const-string/jumbo v7, ""

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 245
    :cond_0
    new-instance v4, Lcom/android/exsettings/applications/ProtectedAppsActivity$AppProtectList;

    invoke-direct {v4, p0, v1, v12}, Lcom/android/exsettings/applications/ProtectedAppsActivity$AppProtectList;-><init>(Lcom/android/exsettings/applications/ProtectedAppsActivity;Ljava/util/ArrayList;Z)V

    .line 247
    .local v4, "list":Lcom/android/exsettings/applications/ProtectedAppsActivity$AppProtectList;
    new-instance v6, Lcom/android/exsettings/applications/ProtectedAppsActivity$StoreComponentProtectedStatus;

    invoke-direct {v6, p0, p0}, Lcom/android/exsettings/applications/ProtectedAppsActivity$StoreComponentProtectedStatus;-><init>(Lcom/android/exsettings/applications/ProtectedAppsActivity;Landroid/content/Context;)V

    .line 248
    .local v6, "task":Lcom/android/exsettings/applications/ProtectedAppsActivity$StoreComponentProtectedStatus;
    new-array v7, v12, [Lcom/android/exsettings/applications/ProtectedAppsActivity$AppProtectList;

    aput-object v4, v7, v8

    invoke-virtual {v6, v7}, Lcom/android/exsettings/applications/ProtectedAppsActivity$StoreComponentProtectedStatus;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 225
    return-void

    .line 236
    .end local v4    # "list":Lcom/android/exsettings/applications/ProtectedAppsActivity$AppProtectList;
    .end local v6    # "task":Lcom/android/exsettings/applications/ProtectedAppsActivity$StoreComponentProtectedStatus;
    :cond_1
    const-string/jumbo v7, "\\|"

    invoke-virtual {v3, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    array-length v10, v9

    move v7, v8

    :goto_0
    if-ge v7, v10, :cond_0

    aget-object v2, v9, v7

    .line 237
    .local v2, "flattened":Ljava/lang/String;
    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 239
    .local v0, "cmp":Landroid/content/ComponentName;
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 240
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 236
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0
.end method

.method private resetLock()V
    .locals 4

    .prologue
    .line 252
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/exsettings/applications/ProtectedAppsActivity;->mWaitUserAuth:Z

    .line 253
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "recreate_pattern_lock"

    .line 254
    const-class v2, Lcom/android/exsettings/applications/LockPatternActivity;

    .line 253
    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, p0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 255
    .local v0, "lockPattern":Landroid/content/Intent;
    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/android/exsettings/applications/ProtectedAppsActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 251
    return-void
.end method

.method private updateProtectedComponentsList()V
    .locals 7

    .prologue
    .line 156
    invoke-virtual {p0}, Lcom/android/exsettings/applications/ProtectedAppsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 157
    const-string/jumbo v5, "protected_components"

    .line 156
    invoke-static {v4, v5}, Lcyanogenmod/providers/CMSettings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 158
    .local v3, "protectedComponents":Ljava/lang/String;
    if-nez v3, :cond_0

    const-string/jumbo v3, ""

    .line 159
    :cond_0
    const-string/jumbo v4, "\\|"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 160
    .local v2, "flattened":[Ljava/lang/String;
    new-instance v4, Ljava/util/HashSet;

    array-length v5, v2

    invoke-direct {v4, v5}, Ljava/util/HashSet;-><init>(I)V

    iput-object v4, p0, Lcom/android/exsettings/applications/ProtectedAppsActivity;->mProtectedApps:Ljava/util/HashSet;

    .line 161
    const/4 v4, 0x0

    array-length v5, v2

    :goto_0
    if-ge v4, v5, :cond_2

    aget-object v1, v2, v4

    .line 162
    .local v1, "flat":Ljava/lang/String;
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 163
    .local v0, "cmp":Landroid/content/ComponentName;
    if-eqz v0, :cond_1

    .line 164
    iget-object v6, p0, Lcom/android/exsettings/applications/ProtectedAppsActivity;->mProtectedApps:Ljava/util/HashSet;

    invoke-virtual {v6, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 161
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 155
    .end local v0    # "cmp":Landroid/content/ComponentName;
    .end local v1    # "flat":Ljava/lang/String;
    :cond_2
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v0, 0x0

    .line 187
    packed-switch p1, :pswitch_data_0

    .line 186
    :cond_0
    :goto_0
    return-void

    .line 189
    :pswitch_0
    iput-boolean v0, p0, Lcom/android/exsettings/applications/ProtectedAppsActivity;->mWaitUserAuth:Z

    .line 190
    packed-switch p2, :pswitch_data_1

    goto :goto_0

    .line 193
    :pswitch_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/exsettings/applications/ProtectedAppsActivity;->mUserIsAuth:Z

    .line 194
    iget-object v0, p0, Lcom/android/exsettings/applications/ProtectedAppsActivity;->mTargetIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 195
    invoke-direct {p0}, Lcom/android/exsettings/applications/ProtectedAppsActivity;->launchTargetActivityInfoAndFinish()V

    goto :goto_0

    .line 200
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/exsettings/applications/ProtectedAppsActivity;->finish()V

    goto :goto_0

    .line 205
    :pswitch_3
    iput-boolean v0, p0, Lcom/android/exsettings/applications/ProtectedAppsActivity;->mWaitUserAuth:Z

    .line 206
    iput-boolean v0, p0, Lcom/android/exsettings/applications/ProtectedAppsActivity;->mUserIsAuth:Z

    goto :goto_0

    .line 187
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
    .end packed-switch

    .line 190
    :pswitch_data_1
    .packed-switch -0x1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 371
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 370
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1

    .line 81
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 84
    invoke-virtual {p0}, Lcom/android/exsettings/applications/ProtectedAppsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 85
    .local v0, "incomingIntent":Landroid/content/Intent;
    const-string/jumbo v2, "com.android.settings.PROTECTED_APP_TARGET_INTENT"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 88
    const-string/jumbo v2, "com.android.settings.PROTECTED_APP_TARGET_INTENT"

    .line 87
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    .line 86
    iput-object v2, p0, Lcom/android/exsettings/applications/ProtectedAppsActivity;->mTargetIntent:Landroid/content/Intent;

    .line 91
    :cond_0
    const v2, 0x7f0c032c

    invoke-virtual {p0, v2}, Lcom/android/exsettings/applications/ProtectedAppsActivity;->setTitle(I)V

    .line 92
    const v2, 0x7f040081

    invoke-virtual {p0, v2}, Lcom/android/exsettings/applications/ProtectedAppsActivity;->setContentView(I)V

    .line 94
    invoke-virtual {p0}, Lcom/android/exsettings/applications/ProtectedAppsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/exsettings/applications/ProtectedAppsActivity;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 95
    new-instance v2, Lcom/android/exsettings/applications/ProtectedAppsActivity$AppsAdapter;

    const v3, 0x7f040082

    invoke-direct {v2, p0, p0, v3}, Lcom/android/exsettings/applications/ProtectedAppsActivity$AppsAdapter;-><init>(Lcom/android/exsettings/applications/ProtectedAppsActivity;Landroid/content/Context;I)V

    iput-object v2, p0, Lcom/android/exsettings/applications/ProtectedAppsActivity;->mAppsAdapter:Lcom/android/exsettings/applications/ProtectedAppsActivity$AppsAdapter;

    .line 96
    iget-object v2, p0, Lcom/android/exsettings/applications/ProtectedAppsActivity;->mAppsAdapter:Lcom/android/exsettings/applications/ProtectedAppsActivity$AppsAdapter;

    invoke-virtual {v2, v4}, Lcom/android/exsettings/applications/ProtectedAppsActivity$AppsAdapter;->setNotifyOnChange(Z)V

    .line 98
    const v2, 0x7f130129

    invoke-virtual {p0, v2}, Lcom/android/exsettings/applications/ProtectedAppsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/android/exsettings/applications/ProtectedAppsActivity;->mListView:Landroid/widget/ListView;

    .line 99
    iget-object v2, p0, Lcom/android/exsettings/applications/ProtectedAppsActivity;->mListView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/android/exsettings/applications/ProtectedAppsActivity;->mAppsAdapter:Lcom/android/exsettings/applications/ProtectedAppsActivity$AppsAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 101
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/exsettings/applications/ProtectedAppsActivity;->mProtect:Ljava/util/ArrayList;

    .line 103
    if-eqz p1, :cond_2

    .line 104
    const-string/jumbo v2, "needs_unlock"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/exsettings/applications/ProtectedAppsActivity;->mUserIsAuth:Z

    .line 105
    const-string/jumbo v2, "target_intent"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    iput-object v2, p0, Lcom/android/exsettings/applications/ProtectedAppsActivity;->mTargetIntent:Landroid/content/Intent;

    .line 119
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/exsettings/applications/ProtectedAppsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    iput v2, p0, Lcom/android/exsettings/applications/ProtectedAppsActivity;->mOrientation:I

    .line 80
    return-void

    .line 107
    :cond_2
    iget-boolean v2, p0, Lcom/android/exsettings/applications/ProtectedAppsActivity;->mUserIsAuth:Z

    if-nez v2, :cond_3

    .line 109
    iput-boolean v4, p0, Lcom/android/exsettings/applications/ProtectedAppsActivity;->mWaitUserAuth:Z

    .line 110
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/exsettings/applications/LockPatternActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 111
    .local v1, "lockPattern":Landroid/content/Intent;
    invoke-virtual {p0, v1, v4}, Lcom/android/exsettings/applications/ProtectedAppsActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 114
    .end local v1    # "lockPattern":Landroid/content/Intent;
    :cond_3
    iget-object v2, p0, Lcom/android/exsettings/applications/ProtectedAppsActivity;->mTargetIntent:Landroid/content/Intent;

    if-eqz v2, :cond_1

    .line 115
    invoke-direct {p0}, Lcom/android/exsettings/applications/ProtectedAppsActivity;->launchTargetActivityInfoAndFinish()V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 218
    const v0, 0x7f0c032a

    invoke-interface {p1, v1, v1, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 220
    const v0, 0x7f0c032b

    invoke-interface {p1, v1, v2, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 222
    return v2
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v1, 0x1

    .line 272
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 283
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 274
    :sswitch_0
    invoke-direct {p0}, Lcom/android/exsettings/applications/ProtectedAppsActivity;->reset()V

    .line 275
    return v1

    .line 277
    :sswitch_1
    invoke-direct {p0}, Lcom/android/exsettings/applications/ProtectedAppsActivity;->resetLock()V

    .line 278
    return v1

    .line 280
    :sswitch_2
    invoke-virtual {p0}, Lcom/android/exsettings/applications/ProtectedAppsActivity;->finish()V

    .line 281
    return v1

    .line 272
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x102002c -> :sswitch_2
    .end sparse-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 171
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 176
    iget-boolean v0, p0, Lcom/android/exsettings/applications/ProtectedAppsActivity;->mWaitUserAuth:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/exsettings/applications/ProtectedAppsActivity;->mOrientation:I

    invoke-virtual {p0}, Lcom/android/exsettings/applications/ProtectedAppsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_0

    .line 177
    invoke-virtual {p0}, Lcom/android/exsettings/applications/ProtectedAppsActivity;->finish()V

    .line 170
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 131
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 134
    new-instance v0, Lcom/android/exsettings/applications/ProtectedAppsActivity$2;

    invoke-direct {v0, p0}, Lcom/android/exsettings/applications/ProtectedAppsActivity$2;-><init>(Lcom/android/exsettings/applications/ProtectedAppsActivity;)V

    .line 147
    .local v0, "refreshAppsTask":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/util/List<Lcom/android/exsettings/applications/ProtectedAppsActivity$AppEntry;>;>;"
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Void;

    const/4 v2, 0x0

    aput-object v3, v1, v2

    aput-object v3, v1, v4

    const/4 v2, 0x2

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 149
    invoke-virtual {p0}, Lcom/android/exsettings/applications/ProtectedAppsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 152
    invoke-direct {p0}, Lcom/android/exsettings/applications/ProtectedAppsActivity;->updateProtectedComponentsList()V

    .line 130
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 124
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 125
    const-string/jumbo v0, "needs_unlock"

    iget-boolean v1, p0, Lcom/android/exsettings/applications/ProtectedAppsActivity;->mUserIsAuth:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 126
    const-string/jumbo v0, "target_intent"

    iget-object v1, p0, Lcom/android/exsettings/applications/ProtectedAppsActivity;->mTargetIntent:Landroid/content/Intent;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 123
    return-void
.end method
