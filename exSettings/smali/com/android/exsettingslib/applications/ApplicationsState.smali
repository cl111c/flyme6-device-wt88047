.class public Lcom/android/exsettingslib/applications/ApplicationsState;
.super Ljava/lang/Object;
.source "ApplicationsState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exsettingslib/applications/ApplicationsState$Session;,
        Lcom/android/exsettingslib/applications/ApplicationsState$MainHandler;,
        Lcom/android/exsettingslib/applications/ApplicationsState$BackgroundHandler;,
        Lcom/android/exsettingslib/applications/ApplicationsState$PackageIntentReceiver;,
        Lcom/android/exsettingslib/applications/ApplicationsState$Callbacks;,
        Lcom/android/exsettingslib/applications/ApplicationsState$SizeInfo;,
        Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;,
        Lcom/android/exsettingslib/applications/ApplicationsState$AppFilter;,
        Lcom/android/exsettingslib/applications/ApplicationsState$VolumeFilter;,
        Lcom/android/exsettingslib/applications/ApplicationsState$CompoundFilter;,
        Lcom/android/exsettingslib/applications/ApplicationsState$1;,
        Lcom/android/exsettingslib/applications/ApplicationsState$2;,
        Lcom/android/exsettingslib/applications/ApplicationsState$3;,
        Lcom/android/exsettingslib/applications/ApplicationsState$4;,
        Lcom/android/exsettingslib/applications/ApplicationsState$5;,
        Lcom/android/exsettingslib/applications/ApplicationsState$6;,
        Lcom/android/exsettingslib/applications/ApplicationsState$7;,
        Lcom/android/exsettingslib/applications/ApplicationsState$8;,
        Lcom/android/exsettingslib/applications/ApplicationsState$9;,
        Lcom/android/exsettingslib/applications/ApplicationsState$10;,
        Lcom/android/exsettingslib/applications/ApplicationsState$11;,
        Lcom/android/exsettingslib/applications/ApplicationsState$12;,
        Lcom/android/exsettingslib/applications/ApplicationsState$13;
    }
.end annotation


# static fields
.field public static final ALPHA_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation
.end field

.field public static final EXTERNAL_SIZE_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation
.end field

.field public static final FILTER_ALL_ENABLED:Lcom/android/exsettingslib/applications/ApplicationsState$AppFilter;

.field public static final FILTER_DISABLED:Lcom/android/exsettingslib/applications/ApplicationsState$AppFilter;

.field public static final FILTER_DOWNLOADED_AND_LAUNCHER:Lcom/android/exsettingslib/applications/ApplicationsState$AppFilter;

.field public static final FILTER_EVERYTHING:Lcom/android/exsettingslib/applications/ApplicationsState$AppFilter;

.field public static final FILTER_PERSONAL:Lcom/android/exsettingslib/applications/ApplicationsState$AppFilter;

.field public static final FILTER_PERSONAL_WITHOUT_DISABLED_UNTIL_USED:Lcom/android/exsettingslib/applications/ApplicationsState$AppFilter;

.field public static final FILTER_THIRD_PARTY:Lcom/android/exsettingslib/applications/ApplicationsState$AppFilter;

.field public static final FILTER_WITH_DOMAIN_URLS:Lcom/android/exsettingslib/applications/ApplicationsState$AppFilter;

.field public static final FILTER_WORK:Lcom/android/exsettingslib/applications/ApplicationsState$AppFilter;

.field public static final INTERNAL_SIZE_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation
.end field

.field static final REMOVE_DIACRITICALS_PATTERN:Ljava/util/regex/Pattern;

.field public static final SIZE_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation
.end field

.field static sInstance:Lcom/android/exsettingslib/applications/ApplicationsState;

.field static final sLock:Ljava/lang/Object;


# instance fields
.field final mActiveSessions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/exsettingslib/applications/ApplicationsState$Session;",
            ">;"
        }
    .end annotation
.end field

.field final mAppEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation
.end field

.field mApplications:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field

.field final mBackgroundHandler:Lcom/android/exsettingslib/applications/ApplicationsState$BackgroundHandler;

.field final mContext:Landroid/content/Context;

.field mCurComputingSizePkg:Ljava/lang/String;

.field mCurComputingSizeUserId:I

.field mCurId:J

.field final mEntriesMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;",
            ">;>;"
        }
    .end annotation
.end field

.field mHaveDisabledApps:Z

.field final mInterestingConfigChanges:Lcom/android/exsettingslib/applications/InterestingConfigChanges;

.field final mIpm:Landroid/content/pm/IPackageManager;

.field final mMainHandler:Lcom/android/exsettingslib/applications/ApplicationsState$MainHandler;

.field final mOwnerRetrieveFlags:I

.field mPackageIntentReceiver:Lcom/android/exsettingslib/applications/ApplicationsState$PackageIntentReceiver;

.field final mPm:Landroid/content/pm/PackageManager;

.field final mRebuildingSessions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/exsettingslib/applications/ApplicationsState$Session;",
            ">;"
        }
    .end annotation
.end field

.field mResumed:Z

.field final mRetrieveFlags:I

.field final mSessions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/exsettingslib/applications/ApplicationsState$Session;",
            ">;"
        }
    .end annotation
.end field

.field mSessionsChanged:Z

.field final mThread:Landroid/os/HandlerThread;

.field final mUm:Landroid/os/UserManager;


# direct methods
.method static synthetic -wrap0(Lcom/android/exsettingslib/applications/ApplicationsState;Landroid/content/pm/ApplicationInfo;)Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;
    .locals 1
    .param p1, "info"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/exsettingslib/applications/ApplicationsState;->getEntryLocked(Landroid/content/pm/ApplicationInfo;)Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/exsettingslib/applications/ApplicationsState;J)Ljava/lang/String;
    .locals 1
    .param p1, "size"    # J

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/exsettingslib/applications/ApplicationsState;->getSizeStr(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2(Lcom/android/exsettingslib/applications/ApplicationsState;Landroid/content/pm/PackageStats;)J
    .locals 2
    .param p1, "ps"    # Landroid/content/pm/PackageStats;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/exsettingslib/applications/ApplicationsState;->getTotalExternalSize(Landroid/content/pm/PackageStats;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic -wrap3(Lcom/android/exsettingslib/applications/ApplicationsState;Landroid/content/pm/PackageStats;)J
    .locals 2
    .param p1, "ps"    # Landroid/content/pm/PackageStats;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/exsettingslib/applications/ApplicationsState;->getTotalInternalSize(Landroid/content/pm/PackageStats;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic -wrap4(Lcom/android/exsettingslib/applications/ApplicationsState;I)V
    .locals 0
    .param p1, "userId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/exsettingslib/applications/ApplicationsState;->addUser(I)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/exsettingslib/applications/ApplicationsState;I)V
    .locals 0
    .param p1, "userId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/exsettingslib/applications/ApplicationsState;->removeUser(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 73
    const-string/jumbo v0, "\\p{InCombiningDiacriticalMarks}+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 72
    sput-object v0, Lcom/android/exsettingslib/applications/ApplicationsState;->REMOVE_DIACRITICALS_PATTERN:Ljava/util/regex/Pattern;

    .line 75
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/exsettingslib/applications/ApplicationsState;->sLock:Ljava/lang/Object;

    .line 1183
    new-instance v0, Lcom/android/exsettingslib/applications/ApplicationsState$1;

    invoke-direct {v0}, Lcom/android/exsettingslib/applications/ApplicationsState$1;-><init>()V

    sput-object v0, Lcom/android/exsettingslib/applications/ApplicationsState;->ALPHA_COMPARATOR:Ljava/util/Comparator;

    .line 1192
    new-instance v0, Lcom/android/exsettingslib/applications/ApplicationsState$2;

    invoke-direct {v0}, Lcom/android/exsettingslib/applications/ApplicationsState$2;-><init>()V

    .line 1191
    sput-object v0, Lcom/android/exsettingslib/applications/ApplicationsState;->SIZE_COMPARATOR:Ljava/util/Comparator;

    .line 1203
    new-instance v0, Lcom/android/exsettingslib/applications/ApplicationsState$3;

    invoke-direct {v0}, Lcom/android/exsettingslib/applications/ApplicationsState$3;-><init>()V

    .line 1202
    sput-object v0, Lcom/android/exsettingslib/applications/ApplicationsState;->INTERNAL_SIZE_COMPARATOR:Ljava/util/Comparator;

    .line 1214
    new-instance v0, Lcom/android/exsettingslib/applications/ApplicationsState$4;

    invoke-direct {v0}, Lcom/android/exsettingslib/applications/ApplicationsState$4;-><init>()V

    .line 1213
    sput-object v0, Lcom/android/exsettingslib/applications/ApplicationsState;->EXTERNAL_SIZE_COMPARATOR:Ljava/util/Comparator;

    .line 1229
    new-instance v0, Lcom/android/exsettingslib/applications/ApplicationsState$5;

    invoke-direct {v0}, Lcom/android/exsettingslib/applications/ApplicationsState$5;-><init>()V

    sput-object v0, Lcom/android/exsettingslib/applications/ApplicationsState;->FILTER_PERSONAL:Lcom/android/exsettingslib/applications/ApplicationsState$AppFilter;

    .line 1242
    new-instance v0, Lcom/android/exsettingslib/applications/ApplicationsState$6;

    invoke-direct {v0}, Lcom/android/exsettingslib/applications/ApplicationsState$6;-><init>()V

    sput-object v0, Lcom/android/exsettingslib/applications/ApplicationsState;->FILTER_PERSONAL_WITHOUT_DISABLED_UNTIL_USED:Lcom/android/exsettingslib/applications/ApplicationsState$AppFilter;

    .line 1257
    new-instance v0, Lcom/android/exsettingslib/applications/ApplicationsState$7;

    invoke-direct {v0}, Lcom/android/exsettingslib/applications/ApplicationsState$7;-><init>()V

    sput-object v0, Lcom/android/exsettingslib/applications/ApplicationsState;->FILTER_WORK:Lcom/android/exsettingslib/applications/ApplicationsState$AppFilter;

    .line 1270
    new-instance v0, Lcom/android/exsettingslib/applications/ApplicationsState$8;

    invoke-direct {v0}, Lcom/android/exsettingslib/applications/ApplicationsState$8;-><init>()V

    sput-object v0, Lcom/android/exsettingslib/applications/ApplicationsState;->FILTER_DOWNLOADED_AND_LAUNCHER:Lcom/android/exsettingslib/applications/ApplicationsState$AppFilter;

    .line 1287
    new-instance v0, Lcom/android/exsettingslib/applications/ApplicationsState$9;

    invoke-direct {v0}, Lcom/android/exsettingslib/applications/ApplicationsState$9;-><init>()V

    sput-object v0, Lcom/android/exsettingslib/applications/ApplicationsState;->FILTER_THIRD_PARTY:Lcom/android/exsettingslib/applications/ApplicationsState$AppFilter;

    .line 1302
    new-instance v0, Lcom/android/exsettingslib/applications/ApplicationsState$10;

    invoke-direct {v0}, Lcom/android/exsettingslib/applications/ApplicationsState$10;-><init>()V

    sput-object v0, Lcom/android/exsettingslib/applications/ApplicationsState;->FILTER_DISABLED:Lcom/android/exsettingslib/applications/ApplicationsState$AppFilter;

    .line 1312
    new-instance v0, Lcom/android/exsettingslib/applications/ApplicationsState$11;

    invoke-direct {v0}, Lcom/android/exsettingslib/applications/ApplicationsState$11;-><init>()V

    sput-object v0, Lcom/android/exsettingslib/applications/ApplicationsState;->FILTER_ALL_ENABLED:Lcom/android/exsettingslib/applications/ApplicationsState$AppFilter;

    .line 1322
    new-instance v0, Lcom/android/exsettingslib/applications/ApplicationsState$12;

    invoke-direct {v0}, Lcom/android/exsettingslib/applications/ApplicationsState$12;-><init>()V

    sput-object v0, Lcom/android/exsettingslib/applications/ApplicationsState;->FILTER_EVERYTHING:Lcom/android/exsettingslib/applications/ApplicationsState$AppFilter;

    .line 1332
    new-instance v0, Lcom/android/exsettingslib/applications/ApplicationsState$13;

    invoke-direct {v0}, Lcom/android/exsettingslib/applications/ApplicationsState$13;-><init>()V

    sput-object v0, Lcom/android/exsettingslib/applications/ApplicationsState;->FILTER_WITH_DOMAIN_URLS:Lcom/android/exsettingslib/applications/ApplicationsState$AppFilter;

    .line 64
    return-void
.end method

.method private constructor <init>(Landroid/app/Application;)V
    .locals 8
    .param p1, "app"    # Landroid/app/Application;

    .prologue
    const-wide/16 v4, 0x1

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/exsettingslib/applications/ApplicationsState;->mSessions:Ljava/util/ArrayList;

    .line 101
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/exsettingslib/applications/ApplicationsState;->mRebuildingSessions:Ljava/util/ArrayList;

    .line 102
    new-instance v3, Lcom/android/exsettingslib/applications/InterestingConfigChanges;

    invoke-direct {v3}, Lcom/android/exsettingslib/applications/InterestingConfigChanges;-><init>()V

    iput-object v3, p0, Lcom/android/exsettingslib/applications/ApplicationsState;->mInterestingConfigChanges:Lcom/android/exsettingslib/applications/InterestingConfigChanges;

    .line 105
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    .line 104
    iput-object v3, p0, Lcom/android/exsettingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    .line 106
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/exsettingslib/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    .line 107
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/exsettingslib/applications/ApplicationsState;->mApplications:Ljava/util/List;

    .line 108
    iput-wide v4, p0, Lcom/android/exsettingslib/applications/ApplicationsState;->mCurId:J

    .line 114
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/exsettingslib/applications/ApplicationsState;->mActiveSessions:Ljava/util/ArrayList;

    .line 118
    new-instance v3, Lcom/android/exsettingslib/applications/ApplicationsState$MainHandler;

    invoke-direct {v3, p0}, Lcom/android/exsettingslib/applications/ApplicationsState$MainHandler;-><init>(Lcom/android/exsettingslib/applications/ApplicationsState;)V

    iput-object v3, p0, Lcom/android/exsettingslib/applications/ApplicationsState;->mMainHandler:Lcom/android/exsettingslib/applications/ApplicationsState$MainHandler;

    .line 121
    iput-object p1, p0, Lcom/android/exsettingslib/applications/ApplicationsState;->mContext:Landroid/content/Context;

    .line 122
    iget-object v3, p0, Lcom/android/exsettingslib/applications/ApplicationsState;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/exsettingslib/applications/ApplicationsState;->mPm:Landroid/content/pm/PackageManager;

    .line 123
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/exsettingslib/applications/ApplicationsState;->mIpm:Landroid/content/pm/IPackageManager;

    .line 124
    const-string/jumbo v3, "user"

    invoke-virtual {p1, v3}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserManager;

    iput-object v3, p0, Lcom/android/exsettingslib/applications/ApplicationsState;->mUm:Landroid/os/UserManager;

    .line 125
    iget-object v3, p0, Lcom/android/exsettingslib/applications/ApplicationsState;->mUm:Landroid/os/UserManager;

    invoke-virtual {v3}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "user$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserHandle;

    .line 126
    .local v1, "user":Landroid/os/UserHandle;
    iget-object v3, p0, Lcom/android/exsettingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v3, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 128
    .end local v1    # "user":Landroid/os/UserHandle;
    :cond_0
    new-instance v3, Landroid/os/HandlerThread;

    const-string/jumbo v4, "ApplicationsState.Loader"

    .line 129
    const/16 v5, 0xa

    .line 128
    invoke-direct {v3, v4, v5}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v3, p0, Lcom/android/exsettingslib/applications/ApplicationsState;->mThread:Landroid/os/HandlerThread;

    .line 130
    iget-object v3, p0, Lcom/android/exsettingslib/applications/ApplicationsState;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->start()V

    .line 131
    new-instance v3, Lcom/android/exsettingslib/applications/ApplicationsState$BackgroundHandler;

    iget-object v4, p0, Lcom/android/exsettingslib/applications/ApplicationsState;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/android/exsettingslib/applications/ApplicationsState$BackgroundHandler;-><init>(Lcom/android/exsettingslib/applications/ApplicationsState;Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/android/exsettingslib/applications/ApplicationsState;->mBackgroundHandler:Lcom/android/exsettingslib/applications/ApplicationsState$BackgroundHandler;

    .line 134
    const v3, 0xa200

    iput v3, p0, Lcom/android/exsettingslib/applications/ApplicationsState;->mOwnerRetrieveFlags:I

    .line 137
    const v3, 0x8200

    iput v3, p0, Lcom/android/exsettingslib/applications/ApplicationsState;->mRetrieveFlags:I

    .line 154
    iget-object v4, p0, Lcom/android/exsettingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    monitor-enter v4

    .line 156
    :try_start_0
    iget-object v3, p0, Lcom/android/exsettingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    const-wide/16 v6, 0x1

    invoke-virtual {v3, v6, v7}, Landroid/util/SparseArray;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    monitor-exit v4

    .line 120
    return-void

    .line 154
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 157
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/InterruptedException;
    goto :goto_1
.end method

.method private addUser(I)V
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 428
    iget-object v0, p0, Lcom/android/exsettingslib/applications/ApplicationsState;->mUm:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v0

    new-instance v1, Landroid/os/UserHandle;

    invoke-direct {v1, p1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 429
    iget-object v1, p0, Lcom/android/exsettingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    monitor-enter v1

    .line 430
    :try_start_0
    iget-object v0, p0, Lcom/android/exsettingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v0, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 431
    iget-boolean v0, p0, Lcom/android/exsettingslib/applications/ApplicationsState;->mResumed:Z

    if-eqz v0, :cond_0

    .line 435
    invoke-virtual {p0}, Lcom/android/exsettingslib/applications/ApplicationsState;->doPauseLocked()V

    .line 436
    invoke-virtual {p0}, Lcom/android/exsettingslib/applications/ApplicationsState;->doResumeIfNeededLocked()V

    .line 438
    :cond_0
    iget-object v0, p0, Lcom/android/exsettingslib/applications/ApplicationsState;->mMainHandler:Lcom/android/exsettingslib/applications/ApplicationsState$MainHandler;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/android/exsettingslib/applications/ApplicationsState$MainHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 439
    iget-object v0, p0, Lcom/android/exsettingslib/applications/ApplicationsState;->mMainHandler:Lcom/android/exsettingslib/applications/ApplicationsState$MainHandler;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/android/exsettingslib/applications/ApplicationsState$MainHandler;->sendEmptyMessage(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v1

    .line 427
    :cond_2
    return-void

    .line 429
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private clearEntries()V
    .locals 2

    .prologue
    .line 240
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/exsettingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 241
    iget-object v1, p0, Lcom/android/exsettingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 240
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 243
    :cond_0
    iget-object v1, p0, Lcom/android/exsettingslib/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 239
    return-void
.end method

.method private getAppInfoLocked(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 294
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/exsettingslib/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 295
    iget-object v2, p0, Lcom/android/exsettingslib/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ApplicationInfo;

    .line 296
    .local v1, "info":Landroid/content/pm/ApplicationInfo;
    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 297
    iget v2, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    if-ne p2, v2, :cond_0

    .line 298
    return-object v1

    .line 294
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 301
    .end local v1    # "info":Landroid/content/pm/ApplicationInfo;
    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method private getEntryLocked(Landroid/content/pm/ApplicationInfo;)Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;
    .locals 8
    .param p1, "info"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    .line 462
    iget v2, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 463
    .local v1, "userId":I
    iget-object v2, p0, Lcom/android/exsettingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    iget-object v3, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;

    .line 465
    .local v0, "entry":Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;
    if-nez v0, :cond_1

    .line 467
    new-instance v0, Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;

    .end local v0    # "entry":Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;
    iget-object v2, p0, Lcom/android/exsettingslib/applications/ApplicationsState;->mContext:Landroid/content/Context;

    iget-wide v4, p0, Lcom/android/exsettingslib/applications/ApplicationsState;->mCurId:J

    const-wide/16 v6, 0x1

    add-long/2addr v6, v4

    iput-wide v6, p0, Lcom/android/exsettingslib/applications/ApplicationsState;->mCurId:J

    invoke-direct {v0, v2, p1, v4, v5}, Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;-><init>(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;J)V

    .line 468
    .restart local v0    # "entry":Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;
    iget-object v2, p0, Lcom/android/exsettingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    iget-object v3, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 469
    iget-object v2, p0, Lcom/android/exsettingslib/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 473
    :cond_0
    :goto_0
    return-object v0

    .line 470
    :cond_1
    iget-object v2, v0, Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    if-eq v2, p1, :cond_0

    .line 471
    iput-object p1, v0, Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    goto :goto_0
.end method

.method public static getInstance(Landroid/app/Application;)Lcom/android/exsettingslib/applications/ApplicationsState;
    .locals 2
    .param p0, "app"    # Landroid/app/Application;

    .prologue
    .line 79
    sget-object v1, Lcom/android/exsettingslib/applications/ApplicationsState;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 80
    :try_start_0
    sget-object v0, Lcom/android/exsettingslib/applications/ApplicationsState;->sInstance:Lcom/android/exsettingslib/applications/ApplicationsState;

    if-nez v0, :cond_0

    .line 81
    new-instance v0, Lcom/android/exsettingslib/applications/ApplicationsState;

    invoke-direct {v0, p0}, Lcom/android/exsettingslib/applications/ApplicationsState;-><init>(Landroid/app/Application;)V

    sput-object v0, Lcom/android/exsettingslib/applications/ApplicationsState;->sInstance:Lcom/android/exsettingslib/applications/ApplicationsState;

    .line 83
    :cond_0
    sget-object v0, Lcom/android/exsettingslib/applications/ApplicationsState;->sInstance:Lcom/android/exsettingslib/applications/ApplicationsState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 79
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getSizeStr(J)Ljava/lang/String;
    .locals 3
    .param p1, "size"    # J

    .prologue
    .line 497
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 498
    iget-object v0, p0, Lcom/android/exsettingslib/applications/ApplicationsState;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 500
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private getTotalExternalSize(Landroid/content/pm/PackageStats;)J
    .locals 4
    .param p1, "ps"    # Landroid/content/pm/PackageStats;

    .prologue
    .line 486
    if-eqz p1, :cond_0

    .line 489
    iget-wide v0, p1, Landroid/content/pm/PackageStats;->externalCodeSize:J

    iget-wide v2, p1, Landroid/content/pm/PackageStats;->externalDataSize:J

    add-long/2addr v0, v2

    .line 490
    iget-wide v2, p1, Landroid/content/pm/PackageStats;->externalCacheSize:J

    .line 489
    add-long/2addr v0, v2

    .line 491
    iget-wide v2, p1, Landroid/content/pm/PackageStats;->externalMediaSize:J

    .line 489
    add-long/2addr v0, v2

    .line 491
    iget-wide v2, p1, Landroid/content/pm/PackageStats;->externalObbSize:J

    .line 489
    add-long/2addr v0, v2

    return-wide v0

    .line 493
    :cond_0
    const-wide/16 v0, -0x2

    return-wide v0
.end method

.method private getTotalInternalSize(Landroid/content/pm/PackageStats;)J
    .locals 4
    .param p1, "ps"    # Landroid/content/pm/PackageStats;

    .prologue
    .line 479
    if-eqz p1, :cond_0

    .line 480
    iget-wide v0, p1, Landroid/content/pm/PackageStats;->codeSize:J

    iget-wide v2, p1, Landroid/content/pm/PackageStats;->dataSize:J

    add-long/2addr v0, v2

    return-wide v0

    .line 482
    :cond_0
    const-wide/16 v0, -0x2

    return-wide v0
.end method

.method public static normalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 519
    sget-object v1, Ljava/text/Normalizer$Form;->NFD:Ljava/text/Normalizer$Form;

    invoke-static {p0, v1}, Ljava/text/Normalizer;->normalize(Ljava/lang/CharSequence;Ljava/text/Normalizer$Form;)Ljava/lang/String;

    move-result-object v0

    .line 520
    .local v0, "tmp":Ljava/lang/String;
    sget-object v1, Lcom/android/exsettingslib/applications/ApplicationsState;->REMOVE_DIACRITICALS_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 521
    const-string/jumbo v2, ""

    .line 520
    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private removeUser(I)V
    .locals 6
    .param p1, "userId"    # I

    .prologue
    .line 446
    iget-object v4, p0, Lcom/android/exsettingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    monitor-enter v4

    .line 447
    :try_start_0
    iget-object v3, p0, Lcom/android/exsettingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    .line 448
    .local v2, "userMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;>;"
    if-eqz v2, :cond_1

    .line 449
    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "appEntry$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;

    .line 450
    .local v0, "appEntry":Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;
    iget-object v3, p0, Lcom/android/exsettingslib/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 451
    iget-object v3, p0, Lcom/android/exsettingslib/applications/ApplicationsState;->mApplications:Ljava/util/List;

    iget-object v5, v0, Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    invoke-interface {v3, v5}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 446
    .end local v0    # "appEntry":Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;
    .end local v1    # "appEntry$iterator":Ljava/util/Iterator;
    .end local v2    # "userMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;>;"
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 453
    .restart local v1    # "appEntry$iterator":Ljava/util/Iterator;
    .restart local v2    # "userMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;>;"
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/android/exsettingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 454
    iget-object v3, p0, Lcom/android/exsettingslib/applications/ApplicationsState;->mMainHandler:Lcom/android/exsettingslib/applications/ApplicationsState$MainHandler;

    const/4 v5, 0x2

    invoke-virtual {v3, v5}, Lcom/android/exsettingslib/applications/ApplicationsState$MainHandler;->hasMessages(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 455
    iget-object v3, p0, Lcom/android/exsettingslib/applications/ApplicationsState;->mMainHandler:Lcom/android/exsettingslib/applications/ApplicationsState$MainHandler;

    const/4 v5, 0x2

    invoke-virtual {v3, v5}, Lcom/android/exsettingslib/applications/ApplicationsState$MainHandler;->sendEmptyMessage(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v1    # "appEntry$iterator":Ljava/util/Iterator;
    :cond_1
    monitor-exit v4

    .line 445
    return-void
.end method


# virtual methods
.method addPackage(Ljava/lang/String;I)V
    .locals 5
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 350
    :try_start_0
    iget-object v3, p0, Lcom/android/exsettingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    monitor-enter v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 353
    :try_start_1
    iget-boolean v2, p0, Lcom/android/exsettingslib/applications/ApplicationsState;->mResumed:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v2, :cond_0

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 358
    return-void

    .line 360
    :cond_0
    :try_start_3
    invoke-virtual {p0, p1, p2}, Lcom/android/exsettingslib/applications/ApplicationsState;->indexOfApplicationInfoLocked(Ljava/lang/String;I)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v2

    if-ltz v2, :cond_1

    :try_start_4
    monitor-exit v3
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    .line 363
    return-void

    .line 365
    :cond_1
    :try_start_5
    iget-object v4, p0, Lcom/android/exsettingslib/applications/ApplicationsState;->mIpm:Landroid/content/pm/IPackageManager;

    .line 366
    if-nez p2, :cond_2

    iget v2, p0, Lcom/android/exsettingslib/applications/ApplicationsState;->mOwnerRetrieveFlags:I

    .line 365
    :goto_0
    invoke-interface {v4, p1, v2, p2}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v1

    .line 368
    .local v1, "info":Landroid/content/pm/ApplicationInfo;
    if-nez v1, :cond_3

    :try_start_6
    monitor-exit v3
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_0

    .line 369
    return-void

    .line 366
    .end local v1    # "info":Landroid/content/pm/ApplicationInfo;
    :cond_2
    :try_start_7
    iget v2, p0, Lcom/android/exsettingslib/applications/ApplicationsState;->mRetrieveFlags:I

    goto :goto_0

    .line 371
    .restart local v1    # "info":Landroid/content/pm/ApplicationInfo;
    :cond_3
    iget-boolean v2, v1, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v2, :cond_5

    .line 372
    iget v2, v1, Landroid/content/pm/ApplicationInfo;->enabledSetting:I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 373
    const/4 v4, 0x3

    .line 372
    if-eq v2, v4, :cond_4

    :try_start_8
    monitor-exit v3
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_0

    .line 374
    return-void

    .line 376
    :cond_4
    const/4 v2, 0x1

    :try_start_9
    iput-boolean v2, p0, Lcom/android/exsettingslib/applications/ApplicationsState;->mHaveDisabledApps:Z

    .line 378
    :cond_5
    iget-object v2, p0, Lcom/android/exsettingslib/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 379
    iget-object v2, p0, Lcom/android/exsettingslib/applications/ApplicationsState;->mBackgroundHandler:Lcom/android/exsettingslib/applications/ApplicationsState$BackgroundHandler;

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Lcom/android/exsettingslib/applications/ApplicationsState$BackgroundHandler;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_6

    .line 380
    iget-object v2, p0, Lcom/android/exsettingslib/applications/ApplicationsState;->mBackgroundHandler:Lcom/android/exsettingslib/applications/ApplicationsState$BackgroundHandler;

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Lcom/android/exsettingslib/applications/ApplicationsState$BackgroundHandler;->sendEmptyMessage(I)Z

    .line 382
    :cond_6
    iget-object v2, p0, Lcom/android/exsettingslib/applications/ApplicationsState;->mMainHandler:Lcom/android/exsettingslib/applications/ApplicationsState$MainHandler;

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Lcom/android/exsettingslib/applications/ApplicationsState$MainHandler;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_7

    .line 383
    iget-object v2, p0, Lcom/android/exsettingslib/applications/ApplicationsState;->mMainHandler:Lcom/android/exsettingslib/applications/ApplicationsState$MainHandler;

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Lcom/android/exsettingslib/applications/ApplicationsState$MainHandler;->sendEmptyMessage(I)Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :cond_7
    :try_start_a
    monitor-exit v3

    .line 348
    .end local v1    # "info":Landroid/content/pm/ApplicationInfo;
    :goto_1
    return-void

    .line 350
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_0

    .line 387
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_1
.end method

.method doPauseIfNeededLocked()V
    .locals 2

    .prologue
    .line 251
    iget-boolean v1, p0, Lcom/android/exsettingslib/applications/ApplicationsState;->mResumed:Z

    if-nez v1, :cond_0

    .line 252
    return-void

    .line 254
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/exsettingslib/applications/ApplicationsState;->mSessions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 255
    iget-object v1, p0, Lcom/android/exsettingslib/applications/ApplicationsState;->mSessions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/exsettingslib/applications/ApplicationsState$Session;

    iget-boolean v1, v1, Lcom/android/exsettingslib/applications/ApplicationsState$Session;->mResumed:Z

    if-eqz v1, :cond_1

    .line 256
    return-void

    .line 254
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 259
    :cond_2
    invoke-virtual {p0}, Lcom/android/exsettingslib/applications/ApplicationsState;->doPauseLocked()V

    .line 250
    return-void
.end method

.method doPauseLocked()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 263
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/exsettingslib/applications/ApplicationsState;->mResumed:Z

    .line 264
    iget-object v0, p0, Lcom/android/exsettingslib/applications/ApplicationsState;->mPackageIntentReceiver:Lcom/android/exsettingslib/applications/ApplicationsState$PackageIntentReceiver;

    if-eqz v0, :cond_0

    .line 265
    iget-object v0, p0, Lcom/android/exsettingslib/applications/ApplicationsState;->mPackageIntentReceiver:Lcom/android/exsettingslib/applications/ApplicationsState$PackageIntentReceiver;

    invoke-virtual {v0}, Lcom/android/exsettingslib/applications/ApplicationsState$PackageIntentReceiver;->unregisterReceiver()V

    .line 266
    iput-object v1, p0, Lcom/android/exsettingslib/applications/ApplicationsState;->mPackageIntentReceiver:Lcom/android/exsettingslib/applications/ApplicationsState$PackageIntentReceiver;

    .line 262
    :cond_0
    return-void
.end method

.method doResumeIfNeededLocked()V
    .locals 15

    .prologue
    const/4 v14, 0x2

    const/4 v13, 0x0

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 175
    iget-boolean v8, p0, Lcom/android/exsettingslib/applications/ApplicationsState;->mResumed:Z

    if-eqz v8, :cond_0

    .line 176
    return-void

    .line 178
    :cond_0
    iput-boolean v12, p0, Lcom/android/exsettingslib/applications/ApplicationsState;->mResumed:Z

    .line 179
    iget-object v8, p0, Lcom/android/exsettingslib/applications/ApplicationsState;->mPackageIntentReceiver:Lcom/android/exsettingslib/applications/ApplicationsState$PackageIntentReceiver;

    if-nez v8, :cond_1

    .line 180
    new-instance v8, Lcom/android/exsettingslib/applications/ApplicationsState$PackageIntentReceiver;

    invoke-direct {v8, p0, v11}, Lcom/android/exsettingslib/applications/ApplicationsState$PackageIntentReceiver;-><init>(Lcom/android/exsettingslib/applications/ApplicationsState;Lcom/android/exsettingslib/applications/ApplicationsState$PackageIntentReceiver;)V

    iput-object v8, p0, Lcom/android/exsettingslib/applications/ApplicationsState;->mPackageIntentReceiver:Lcom/android/exsettingslib/applications/ApplicationsState$PackageIntentReceiver;

    .line 181
    iget-object v8, p0, Lcom/android/exsettingslib/applications/ApplicationsState;->mPackageIntentReceiver:Lcom/android/exsettingslib/applications/ApplicationsState$PackageIntentReceiver;

    invoke-virtual {v8}, Lcom/android/exsettingslib/applications/ApplicationsState$PackageIntentReceiver;->registerReceiver()V

    .line 183
    :cond_1
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lcom/android/exsettingslib/applications/ApplicationsState;->mApplications:Ljava/util/List;

    .line 184
    iget-object v8, p0, Lcom/android/exsettingslib/applications/ApplicationsState;->mUm:Landroid/os/UserManager;

    invoke-virtual {v8}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "user$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/UserHandle;

    .line 187
    .local v5, "user":Landroid/os/UserHandle;
    :try_start_0
    iget-object v8, p0, Lcom/android/exsettingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v8

    if-gez v8, :cond_2

    .line 188
    iget-object v8, p0, Lcom/android/exsettingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v9

    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v8, v9, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 192
    :cond_2
    iget-object v9, p0, Lcom/android/exsettingslib/applications/ApplicationsState;->mIpm:Landroid/content/pm/IPackageManager;

    .line 193
    invoke-virtual {v5}, Landroid/os/UserHandle;->isOwner()Z

    move-result v8

    if-eqz v8, :cond_3

    iget v8, p0, Lcom/android/exsettingslib/applications/ApplicationsState;->mOwnerRetrieveFlags:I

    .line 194
    :goto_1
    invoke-virtual {v5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v10

    .line 192
    invoke-interface {v9, v8, v10}, Landroid/content/pm/IPackageManager;->getInstalledApplications(II)Landroid/content/pm/ParceledListSlice;

    move-result-object v4

    .line 195
    .local v4, "list":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/pm/ApplicationInfo;>;"
    iget-object v8, p0, Lcom/android/exsettingslib/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-virtual {v4}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 196
    .end local v4    # "list":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/pm/ApplicationInfo;>;"
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 193
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_3
    iget v8, p0, Lcom/android/exsettingslib/applications/ApplicationsState;->mRetrieveFlags:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 200
    .end local v5    # "user":Landroid/os/UserHandle;
    :cond_4
    iget-object v8, p0, Lcom/android/exsettingslib/applications/ApplicationsState;->mInterestingConfigChanges:Lcom/android/exsettingslib/applications/InterestingConfigChanges;

    iget-object v9, p0, Lcom/android/exsettingslib/applications/ApplicationsState;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/exsettingslib/applications/InterestingConfigChanges;->applyNewConfig(Landroid/content/res/Resources;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 203
    invoke-direct {p0}, Lcom/android/exsettingslib/applications/ApplicationsState;->clearEntries()V

    .line 210
    :cond_5
    iput-boolean v13, p0, Lcom/android/exsettingslib/applications/ApplicationsState;->mHaveDisabledApps:Z

    .line 211
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    iget-object v8, p0, Lcom/android/exsettingslib/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v2, v8, :cond_a

    .line 212
    iget-object v8, p0, Lcom/android/exsettingslib/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ApplicationInfo;

    .line 215
    .local v3, "info":Landroid/content/pm/ApplicationInfo;
    iget-boolean v8, v3, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v8, :cond_9

    .line 216
    iget v8, v3, Landroid/content/pm/ApplicationInfo;->enabledSetting:I

    const/4 v9, 0x3

    if-eq v8, v9, :cond_8

    .line 217
    iget-object v8, p0, Lcom/android/exsettingslib/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {v8, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 218
    add-int/lit8 v2, v2, -0x1

    .line 211
    :cond_6
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 205
    .end local v2    # "i":I
    .end local v3    # "info":Landroid/content/pm/ApplicationInfo;
    :cond_7
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_4
    iget-object v8, p0, Lcom/android/exsettingslib/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v2, v8, :cond_5

    .line 206
    iget-object v8, p0, Lcom/android/exsettingslib/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;

    iput-boolean v12, v8, Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;->sizeStale:Z

    .line 205
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 221
    .restart local v3    # "info":Landroid/content/pm/ApplicationInfo;
    :cond_8
    iput-boolean v12, p0, Lcom/android/exsettingslib/applications/ApplicationsState;->mHaveDisabledApps:Z

    .line 223
    :cond_9
    iget v8, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    .line 224
    .local v7, "userId":I
    iget-object v8, p0, Lcom/android/exsettingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    invoke-virtual {v8, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/HashMap;

    iget-object v9, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;

    .line 225
    .local v1, "entry":Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;
    if-eqz v1, :cond_6

    .line 226
    iput-object v3, v1, Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    goto :goto_3

    .line 229
    .end local v1    # "entry":Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;
    .end local v3    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v7    # "userId":I
    :cond_a
    iget-object v8, p0, Lcom/android/exsettingslib/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    iget-object v9, p0, Lcom/android/exsettingslib/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-le v8, v9, :cond_b

    .line 231
    invoke-direct {p0}, Lcom/android/exsettingslib/applications/ApplicationsState;->clearEntries()V

    .line 233
    :cond_b
    iput-object v11, p0, Lcom/android/exsettingslib/applications/ApplicationsState;->mCurComputingSizePkg:Ljava/lang/String;

    .line 234
    iget-object v8, p0, Lcom/android/exsettingslib/applications/ApplicationsState;->mBackgroundHandler:Lcom/android/exsettingslib/applications/ApplicationsState$BackgroundHandler;

    invoke-virtual {v8, v14}, Lcom/android/exsettingslib/applications/ApplicationsState$BackgroundHandler;->hasMessages(I)Z

    move-result v8

    if-nez v8, :cond_c

    .line 235
    iget-object v8, p0, Lcom/android/exsettingslib/applications/ApplicationsState;->mBackgroundHandler:Lcom/android/exsettingslib/applications/ApplicationsState$BackgroundHandler;

    invoke-virtual {v8, v14}, Lcom/android/exsettingslib/applications/ApplicationsState$BackgroundHandler;->sendEmptyMessage(I)Z

    .line 174
    :cond_c
    return-void
.end method

.method public ensureIcon(Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;)V
    .locals 2
    .param p1, "entry"    # Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;

    .prologue
    .line 305
    iget-object v0, p1, Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 306
    return-void

    .line 308
    :cond_0
    monitor-enter p1

    .line 309
    :try_start_0
    iget-object v0, p0, Lcom/android/exsettingslib/applications/ApplicationsState;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/exsettingslib/applications/ApplicationsState;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, v0, v1}, Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;->ensureIconLocked(Landroid/content/Context;Landroid/content/pm/PackageManager;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p1

    .line 304
    return-void

    .line 308
    :catchall_0
    move-exception v0

    monitor-exit p1

    throw v0
.end method

.method public getBackgroundLooper()Landroid/os/Looper;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/exsettingslib/applications/ApplicationsState;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method public getEntry(Ljava/lang/String;I)Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    const/4 v6, 0x0

    .line 272
    iget-object v4, p0, Lcom/android/exsettingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    monitor-enter v4

    .line 273
    :try_start_0
    iget-object v3, p0, Lcom/android/exsettingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    invoke-virtual {v3, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;

    .line 274
    .local v1, "entry":Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;
    if-nez v1, :cond_1

    .line 275
    invoke-direct {p0, p1, p2}, Lcom/android/exsettingslib/applications/ApplicationsState;->getAppInfoLocked(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 276
    .local v2, "info":Landroid/content/pm/ApplicationInfo;
    if-nez v2, :cond_0

    .line 278
    :try_start_1
    iget-object v3, p0, Lcom/android/exsettingslib/applications/ApplicationsState;->mIpm:Landroid/content/pm/IPackageManager;

    const/4 v5, 0x0

    invoke-interface {v3, p1, v5, p2}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    .line 284
    :cond_0
    if-eqz v2, :cond_1

    .line 285
    :try_start_2
    invoke-direct {p0, v2}, Lcom/android/exsettingslib/applications/ApplicationsState;->getEntryLocked(Landroid/content/pm/ApplicationInfo;)Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v1

    .end local v2    # "info":Landroid/content/pm/ApplicationInfo;
    :cond_1
    monitor-exit v4

    .line 289
    return-object v1

    .line 279
    .restart local v2    # "info":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v0

    .line 280
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_3
    const-string/jumbo v3, "ApplicationsState"

    const-string/jumbo v5, "getEntry couldn\'t reach PackageManager"

    invoke-static {v3, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v4

    .line 281
    return-object v6

    .line 272
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "entry":Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;
    .end local v2    # "info":Landroid/content/pm/ApplicationInfo;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public haveDisabledApps()Z
    .locals 1

    .prologue
    .line 247
    iget-boolean v0, p0, Lcom/android/exsettingslib/applications/ApplicationsState;->mHaveDisabledApps:Z

    return v0
.end method

.method indexOfApplicationInfoLocked(Ljava/lang/String;I)I
    .locals 3
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 338
    iget-object v2, p0, Lcom/android/exsettingslib/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 339
    iget-object v2, p0, Lcom/android/exsettingslib/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 340
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 341
    iget v2, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    if-ne v2, p2, :cond_0

    .line 342
    return v1

    .line 338
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 345
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_1
    const/4 v2, -0x1

    return v2
.end method

.method public invalidatePackage(Ljava/lang/String;I)V
    .locals 0
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 423
    invoke-virtual {p0, p1, p2}, Lcom/android/exsettingslib/applications/ApplicationsState;->removePackage(Ljava/lang/String;I)V

    .line 424
    invoke-virtual {p0, p1, p2}, Lcom/android/exsettingslib/applications/ApplicationsState;->addPackage(Ljava/lang/String;I)V

    .line 422
    return-void
.end method

.method public newSession(Lcom/android/exsettingslib/applications/ApplicationsState$Callbacks;)Lcom/android/exsettingslib/applications/ApplicationsState$Session;
    .locals 3
    .param p1, "callbacks"    # Lcom/android/exsettingslib/applications/ApplicationsState$Callbacks;

    .prologue
    .line 167
    new-instance v0, Lcom/android/exsettingslib/applications/ApplicationsState$Session;

    invoke-direct {v0, p0, p1}, Lcom/android/exsettingslib/applications/ApplicationsState$Session;-><init>(Lcom/android/exsettingslib/applications/ApplicationsState;Lcom/android/exsettingslib/applications/ApplicationsState$Callbacks;)V

    .line 168
    .local v0, "s":Lcom/android/exsettingslib/applications/ApplicationsState$Session;
    iget-object v2, p0, Lcom/android/exsettingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    monitor-enter v2

    .line 169
    :try_start_0
    iget-object v1, p0, Lcom/android/exsettingslib/applications/ApplicationsState;->mSessions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 171
    return-object v0

    .line 168
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method rebuildActiveSessions()V
    .locals 4

    .prologue
    .line 504
    iget-object v3, p0, Lcom/android/exsettingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    monitor-enter v3

    .line 505
    :try_start_0
    iget-boolean v2, p0, Lcom/android/exsettingslib/applications/ApplicationsState;->mSessionsChanged:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    monitor-exit v3

    .line 506
    return-void

    .line 508
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/exsettingslib/applications/ApplicationsState;->mActiveSessions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 509
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/exsettingslib/applications/ApplicationsState;->mSessions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 510
    iget-object v2, p0, Lcom/android/exsettingslib/applications/ApplicationsState;->mSessions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/exsettingslib/applications/ApplicationsState$Session;

    .line 511
    .local v1, "s":Lcom/android/exsettingslib/applications/ApplicationsState$Session;
    iget-boolean v2, v1, Lcom/android/exsettingslib/applications/ApplicationsState$Session;->mResumed:Z

    if-eqz v2, :cond_1

    .line 512
    iget-object v2, p0, Lcom/android/exsettingslib/applications/ApplicationsState;->mActiveSessions:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 509
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v1    # "s":Lcom/android/exsettingslib/applications/ApplicationsState$Session;
    :cond_2
    monitor-exit v3

    .line 503
    return-void

    .line 504
    .end local v0    # "i":I
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public removePackage(Ljava/lang/String;I)V
    .locals 7
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 392
    iget-object v5, p0, Lcom/android/exsettingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    monitor-enter v5

    .line 394
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/exsettingslib/applications/ApplicationsState;->indexOfApplicationInfoLocked(Ljava/lang/String;I)I

    move-result v2

    .line 396
    .local v2, "idx":I
    if-ltz v2, :cond_2

    .line 397
    iget-object v4, p0, Lcom/android/exsettingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    invoke-virtual {v4, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;

    .line 399
    .local v0, "entry":Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;
    if-eqz v0, :cond_0

    .line 400
    iget-object v4, p0, Lcom/android/exsettingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    invoke-virtual {v4, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 401
    iget-object v4, p0, Lcom/android/exsettingslib/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 403
    :cond_0
    iget-object v4, p0, Lcom/android/exsettingslib/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ApplicationInfo;

    .line 404
    .local v3, "info":Landroid/content/pm/ApplicationInfo;
    iget-object v4, p0, Lcom/android/exsettingslib/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 405
    iget-boolean v4, v3, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v4, :cond_1

    .line 406
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/exsettingslib/applications/ApplicationsState;->mHaveDisabledApps:Z

    .line 407
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v4, p0, Lcom/android/exsettingslib/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 408
    iget-object v4, p0, Lcom/android/exsettingslib/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ApplicationInfo;

    iget-boolean v4, v4, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v4, :cond_3

    .line 409
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/exsettingslib/applications/ApplicationsState;->mHaveDisabledApps:Z

    .line 414
    .end local v1    # "i":I
    :cond_1
    iget-object v4, p0, Lcom/android/exsettingslib/applications/ApplicationsState;->mMainHandler:Lcom/android/exsettingslib/applications/ApplicationsState$MainHandler;

    const/4 v6, 0x2

    invoke-virtual {v4, v6}, Lcom/android/exsettingslib/applications/ApplicationsState$MainHandler;->hasMessages(I)Z

    move-result v4

    if-nez v4, :cond_2

    .line 415
    iget-object v4, p0, Lcom/android/exsettingslib/applications/ApplicationsState;->mMainHandler:Lcom/android/exsettingslib/applications/ApplicationsState$MainHandler;

    const/4 v6, 0x2

    invoke-virtual {v4, v6}, Lcom/android/exsettingslib/applications/ApplicationsState$MainHandler;->sendEmptyMessage(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "entry":Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;
    .end local v3    # "info":Landroid/content/pm/ApplicationInfo;
    :cond_2
    monitor-exit v5

    .line 391
    return-void

    .line 407
    .restart local v0    # "entry":Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;
    .restart local v1    # "i":I
    .restart local v3    # "info":Landroid/content/pm/ApplicationInfo;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 392
    .end local v0    # "entry":Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;
    .end local v1    # "i":I
    .end local v2    # "idx":I
    .end local v3    # "info":Landroid/content/pm/ApplicationInfo;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method public requestSize(Ljava/lang/String;I)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 315
    iget-object v2, p0, Lcom/android/exsettingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    monitor-enter v2

    .line 316
    :try_start_0
    iget-object v1, p0, Lcom/android/exsettingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;

    .line 317
    .local v0, "entry":Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;
    if-eqz v0, :cond_0

    .line 318
    iget-object v1, p0, Lcom/android/exsettingslib/applications/ApplicationsState;->mPm:Landroid/content/pm/PackageManager;

    iget-object v3, p0, Lcom/android/exsettingslib/applications/ApplicationsState;->mBackgroundHandler:Lcom/android/exsettingslib/applications/ApplicationsState$BackgroundHandler;

    iget-object v3, v3, Lcom/android/exsettingslib/applications/ApplicationsState$BackgroundHandler;->mStatsObserver:Landroid/content/pm/IPackageStatsObserver$Stub;

    invoke-virtual {v1, p1, p2, v3}, Landroid/content/pm/PackageManager;->getPackageSizeInfo(Ljava/lang/String;ILandroid/content/pm/IPackageStatsObserver;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v2

    .line 313
    return-void

    .line 315
    .end local v0    # "entry":Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method
