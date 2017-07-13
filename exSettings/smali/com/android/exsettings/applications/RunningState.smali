.class public Lcom/android/exsettings/applications/RunningState;
.super Ljava/lang/Object;
.source "RunningState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exsettings/applications/RunningState$AppProcessInfo;,
        Lcom/android/exsettings/applications/RunningState$BackgroundHandler;,
        Lcom/android/exsettings/applications/RunningState$UserManagerBroadcastReceiver;,
        Lcom/android/exsettings/applications/RunningState$OnRefreshUiListener;,
        Lcom/android/exsettings/applications/RunningState$UserState;,
        Lcom/android/exsettings/applications/RunningState$BaseItem;,
        Lcom/android/exsettings/applications/RunningState$ServiceItem;,
        Lcom/android/exsettings/applications/RunningState$ProcessItem;,
        Lcom/android/exsettings/applications/RunningState$MergedItem;,
        Lcom/android/exsettings/applications/RunningState$ServiceProcessComparator;,
        Lcom/android/exsettings/applications/RunningState$1;,
        Lcom/android/exsettings/applications/RunningState$2;
    }
.end annotation


# static fields
.field static sGlobalLock:Ljava/lang/Object;

.field static sInstance:Lcom/android/exsettings/applications/RunningState;


# instance fields
.field final mAllProcessItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/exsettings/applications/RunningState$ProcessItem;",
            ">;"
        }
    .end annotation
.end field

.field final mAm:Landroid/app/ActivityManager;

.field final mApplicationContext:Landroid/content/Context;

.field final mBackgroundComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/exsettings/applications/RunningState$MergedItem;",
            ">;"
        }
    .end annotation
.end field

.field final mBackgroundHandler:Lcom/android/exsettings/applications/RunningState$BackgroundHandler;

.field mBackgroundItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/exsettings/applications/RunningState$MergedItem;",
            ">;"
        }
    .end annotation
.end field

.field mBackgroundProcessMemory:J

.field final mBackgroundThread:Landroid/os/HandlerThread;

.field mForegroundProcessMemory:J

.field final mHandler:Landroid/os/Handler;

.field mHaveData:Z

.field final mHideManagedProfiles:Z

.field final mInterestingConfigChanges:Lcom/android/exsettingslib/applications/InterestingConfigChanges;

.field final mInterestingProcesses:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/exsettings/applications/RunningState$ProcessItem;",
            ">;"
        }
    .end annotation
.end field

.field mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/exsettings/applications/RunningState$BaseItem;",
            ">;"
        }
    .end annotation
.end field

.field final mLock:Ljava/lang/Object;

.field mMergedItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/exsettings/applications/RunningState$MergedItem;",
            ">;"
        }
    .end annotation
.end field

.field final mMyUserId:I

.field mNumBackgroundProcesses:I

.field mNumForegroundProcesses:I

.field mNumServiceProcesses:I

.field final mOtherUserBackgroundItems:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/exsettings/applications/RunningState$MergedItem;",
            ">;"
        }
    .end annotation
.end field

.field final mOtherUserMergedItems:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/exsettings/applications/RunningState$MergedItem;",
            ">;"
        }
    .end annotation
.end field

.field final mPm:Landroid/content/pm/PackageManager;

.field final mProcessItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/exsettings/applications/RunningState$ProcessItem;",
            ">;"
        }
    .end annotation
.end field

.field mRefreshUiListener:Lcom/android/exsettings/applications/RunningState$OnRefreshUiListener;

.field mResumed:Z

.field final mRunningProcesses:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/exsettings/applications/RunningState$ProcessItem;",
            ">;"
        }
    .end annotation
.end field

.field mSequence:I

.field final mServiceProcessComparator:Lcom/android/exsettings/applications/RunningState$ServiceProcessComparator;

.field mServiceProcessMemory:J

.field final mServiceProcessesByName:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/exsettings/applications/RunningState$ProcessItem;",
            ">;>;"
        }
    .end annotation
.end field

.field final mServiceProcessesByPid:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/exsettings/applications/RunningState$ProcessItem;",
            ">;"
        }
    .end annotation
.end field

.field final mTmpAppProcesses:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/exsettings/applications/RunningState$AppProcessInfo;",
            ">;"
        }
    .end annotation
.end field

.field final mUm:Landroid/os/UserManager;

.field private final mUmBroadcastReceiver:Lcom/android/exsettings/applications/RunningState$UserManagerBroadcastReceiver;

.field mUserBackgroundItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/exsettings/applications/RunningState$MergedItem;",
            ">;"
        }
    .end annotation
.end field

.field mWatchingBackgroundItems:Z


# direct methods
.method static synthetic -wrap0(Lcom/android/exsettings/applications/RunningState;Landroid/content/Context;Landroid/app/ActivityManager;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "am"    # Landroid/app/ActivityManager;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/exsettings/applications/RunningState;->update(Landroid/content/Context;Landroid/app/ActivityManager;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/exsettings/applications/RunningState;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/exsettings/applications/RunningState;->reset()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 66
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/exsettings/applications/RunningState;->sGlobalLock:Ljava/lang/Object;

    .line 62
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 778
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    new-instance v0, Lcom/android/exsettingslib/applications/InterestingConfigChanges;

    invoke-direct {v0}, Lcom/android/exsettingslib/applications/InterestingConfigChanges;-><init>()V

    iput-object v0, p0, Lcom/android/exsettings/applications/RunningState;->mInterestingConfigChanges:Lcom/android/exsettingslib/applications/InterestingConfigChanges;

    .line 95
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 94
    iput-object v0, p0, Lcom/android/exsettings/applications/RunningState;->mServiceProcessesByName:Landroid/util/SparseArray;

    .line 100
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 99
    iput-object v0, p0, Lcom/android/exsettings/applications/RunningState;->mServiceProcessesByPid:Landroid/util/SparseArray;

    .line 104
    new-instance v0, Lcom/android/exsettings/applications/RunningState$ServiceProcessComparator;

    invoke-direct {v0, p0}, Lcom/android/exsettings/applications/RunningState$ServiceProcessComparator;-><init>(Lcom/android/exsettings/applications/RunningState;)V

    .line 103
    iput-object v0, p0, Lcom/android/exsettings/applications/RunningState;->mServiceProcessComparator:Lcom/android/exsettings/applications/RunningState$ServiceProcessComparator;

    .line 108
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/exsettings/applications/RunningState;->mInterestingProcesses:Ljava/util/ArrayList;

    .line 112
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 111
    iput-object v0, p0, Lcom/android/exsettings/applications/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    .line 115
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/exsettings/applications/RunningState;->mProcessItems:Ljava/util/ArrayList;

    .line 118
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/exsettings/applications/RunningState;->mAllProcessItems:Ljava/util/ArrayList;

    .line 122
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/exsettings/applications/RunningState;->mOtherUserMergedItems:Landroid/util/SparseArray;

    .line 126
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/exsettings/applications/RunningState;->mOtherUserBackgroundItems:Landroid/util/SparseArray;

    .line 139
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/exsettings/applications/RunningState;->mTmpAppProcesses:Landroid/util/SparseArray;

    .line 141
    iput v1, p0, Lcom/android/exsettings/applications/RunningState;->mSequence:I

    .line 144
    new-instance v0, Lcom/android/exsettings/applications/RunningState$1;

    invoke-direct {v0, p0}, Lcom/android/exsettings/applications/RunningState$1;-><init>(Lcom/android/exsettings/applications/RunningState;)V

    .line 143
    iput-object v0, p0, Lcom/android/exsettings/applications/RunningState;->mBackgroundComparator:Ljava/util/Comparator;

    .line 204
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/exsettings/applications/RunningState;->mLock:Ljava/lang/Object;

    .line 210
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/exsettings/applications/RunningState;->mItems:Ljava/util/ArrayList;

    .line 211
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/exsettings/applications/RunningState;->mMergedItems:Ljava/util/ArrayList;

    .line 212
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/exsettings/applications/RunningState;->mBackgroundItems:Ljava/util/ArrayList;

    .line 213
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/exsettings/applications/RunningState;->mUserBackgroundItems:Ljava/util/ArrayList;

    .line 255
    new-instance v0, Lcom/android/exsettings/applications/RunningState$2;

    invoke-direct {v0, p0}, Lcom/android/exsettings/applications/RunningState$2;-><init>(Lcom/android/exsettings/applications/RunningState;)V

    iput-object v0, p0, Lcom/android/exsettings/applications/RunningState;->mHandler:Landroid/os/Handler;

    .line 321
    new-instance v0, Lcom/android/exsettings/applications/RunningState$UserManagerBroadcastReceiver;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/android/exsettings/applications/RunningState$UserManagerBroadcastReceiver;-><init>(Lcom/android/exsettings/applications/RunningState;Lcom/android/exsettings/applications/RunningState$UserManagerBroadcastReceiver;)V

    .line 320
    iput-object v0, p0, Lcom/android/exsettings/applications/RunningState;->mUmBroadcastReceiver:Lcom/android/exsettings/applications/RunningState$UserManagerBroadcastReceiver;

    .line 779
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/applications/RunningState;->mApplicationContext:Landroid/content/Context;

    .line 780
    iget-object v0, p0, Lcom/android/exsettings/applications/RunningState;->mApplicationContext:Landroid/content/Context;

    const-string/jumbo v2, "activity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/android/exsettings/applications/RunningState;->mAm:Landroid/app/ActivityManager;

    .line 781
    iget-object v0, p0, Lcom/android/exsettings/applications/RunningState;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/applications/RunningState;->mPm:Landroid/content/pm/PackageManager;

    .line 782
    iget-object v0, p0, Lcom/android/exsettings/applications/RunningState;->mApplicationContext:Landroid/content/Context;

    const-string/jumbo v2, "user"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/exsettings/applications/RunningState;->mUm:Landroid/os/UserManager;

    .line 783
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    iput v0, p0, Lcom/android/exsettings/applications/RunningState;->mMyUserId:I

    .line 784
    iget v0, p0, Lcom/android/exsettings/applications/RunningState;->mMyUserId:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/exsettings/applications/RunningState;->mHideManagedProfiles:Z

    .line 785
    iput-boolean v1, p0, Lcom/android/exsettings/applications/RunningState;->mResumed:Z

    .line 786
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "RunningState:Background"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/exsettings/applications/RunningState;->mBackgroundThread:Landroid/os/HandlerThread;

    .line 787
    iget-object v0, p0, Lcom/android/exsettings/applications/RunningState;->mBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 788
    new-instance v0, Lcom/android/exsettings/applications/RunningState$BackgroundHandler;

    iget-object v1, p0, Lcom/android/exsettings/applications/RunningState;->mBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/exsettings/applications/RunningState$BackgroundHandler;-><init>(Lcom/android/exsettings/applications/RunningState;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/exsettings/applications/RunningState;->mBackgroundHandler:Lcom/android/exsettings/applications/RunningState$BackgroundHandler;

    .line 789
    iget-object v0, p0, Lcom/android/exsettings/applications/RunningState;->mUmBroadcastReceiver:Lcom/android/exsettings/applications/RunningState$UserManagerBroadcastReceiver;

    iget-object v1, p0, Lcom/android/exsettings/applications/RunningState;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/exsettings/applications/RunningState$UserManagerBroadcastReceiver;->register(Landroid/content/Context;)V

    .line 778
    return-void

    :cond_0
    move v0, v1

    .line 784
    goto :goto_0
.end method

.method private addOtherUserItem(Landroid/content/Context;Ljava/util/ArrayList;Landroid/util/SparseArray;Lcom/android/exsettings/applications/RunningState$MergedItem;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p4, "newItem"    # Lcom/android/exsettings/applications/RunningState$MergedItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/exsettings/applications/RunningState$MergedItem;",
            ">;",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/exsettings/applications/RunningState$MergedItem;",
            ">;",
            "Lcom/android/exsettings/applications/RunningState$MergedItem;",
            ")V"
        }
    .end annotation

    .prologue
    .line 869
    .local p2, "newMergedItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/exsettings/applications/RunningState$MergedItem;>;"
    .local p3, "userItems":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/exsettings/applications/RunningState$MergedItem;>;"
    iget v3, p4, Lcom/android/exsettings/applications/RunningState$MergedItem;->mUserId:I

    invoke-virtual {p3, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/exsettings/applications/RunningState$MergedItem;

    .line 870
    .local v2, "userItem":Lcom/android/exsettings/applications/RunningState$MergedItem;
    if-eqz v2, :cond_0

    iget v3, v2, Lcom/android/exsettings/applications/RunningState$MergedItem;->mCurSeq:I

    iget v4, p0, Lcom/android/exsettings/applications/RunningState;->mSequence:I

    if-eq v3, v4, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 871
    .local v0, "first":Z
    :goto_0
    if-eqz v0, :cond_4

    .line 872
    iget-object v3, p0, Lcom/android/exsettings/applications/RunningState;->mUm:Landroid/os/UserManager;

    iget v4, p4, Lcom/android/exsettings/applications/RunningState$MergedItem;->mUserId:I

    invoke-virtual {v3, v4}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 873
    .local v1, "info":Landroid/content/pm/UserInfo;
    if-nez v1, :cond_2

    .line 875
    return-void

    .line 870
    .end local v0    # "first":Z
    .end local v1    # "info":Landroid/content/pm/UserInfo;
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "first":Z
    goto :goto_0

    .line 877
    .restart local v1    # "info":Landroid/content/pm/UserInfo;
    :cond_2
    iget-boolean v3, p0, Lcom/android/exsettings/applications/RunningState;->mHideManagedProfiles:Z

    if-eqz v3, :cond_3

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 878
    return-void

    .line 880
    :cond_3
    if-nez v2, :cond_5

    .line 881
    new-instance v2, Lcom/android/exsettings/applications/RunningState$MergedItem;

    .end local v2    # "userItem":Lcom/android/exsettings/applications/RunningState$MergedItem;
    iget v3, p4, Lcom/android/exsettings/applications/RunningState$MergedItem;->mUserId:I

    invoke-direct {v2, v3}, Lcom/android/exsettings/applications/RunningState$MergedItem;-><init>(I)V

    .line 882
    .restart local v2    # "userItem":Lcom/android/exsettings/applications/RunningState$MergedItem;
    iget v3, p4, Lcom/android/exsettings/applications/RunningState$MergedItem;->mUserId:I

    invoke-virtual {p3, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 886
    :goto_1
    iget v3, p0, Lcom/android/exsettings/applications/RunningState;->mSequence:I

    iput v3, v2, Lcom/android/exsettings/applications/RunningState$MergedItem;->mCurSeq:I

    .line 887
    new-instance v3, Lcom/android/exsettings/applications/RunningState$UserState;

    invoke-direct {v3}, Lcom/android/exsettings/applications/RunningState$UserState;-><init>()V

    iput-object v3, v2, Lcom/android/exsettings/applications/RunningState$MergedItem;->mUser:Lcom/android/exsettings/applications/RunningState$UserState;

    .line 888
    iget-object v3, v2, Lcom/android/exsettings/applications/RunningState$MergedItem;->mUser:Lcom/android/exsettings/applications/RunningState$UserState;

    iput-object v1, v3, Lcom/android/exsettings/applications/RunningState$UserState;->mInfo:Landroid/content/pm/UserInfo;

    .line 889
    iget-object v3, v2, Lcom/android/exsettings/applications/RunningState$MergedItem;->mUser:Lcom/android/exsettings/applications/RunningState$UserState;

    iget-object v4, p0, Lcom/android/exsettings/applications/RunningState;->mUm:Landroid/os/UserManager;

    invoke-static {p1, v4, v1}, Lcom/android/exsettingslib/Utils;->getUserIcon(Landroid/content/Context;Landroid/os/UserManager;Landroid/content/pm/UserInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, v3, Lcom/android/exsettings/applications/RunningState$UserState;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 890
    iget-object v3, v2, Lcom/android/exsettings/applications/RunningState$MergedItem;->mUser:Lcom/android/exsettings/applications/RunningState$UserState;

    invoke-static {p1, v1}, Lcom/android/exsettingslib/Utils;->getUserLabel(Landroid/content/Context;Landroid/content/pm/UserInfo;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/exsettings/applications/RunningState$UserState;->mLabel:Ljava/lang/String;

    .line 891
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 893
    .end local v1    # "info":Landroid/content/pm/UserInfo;
    :cond_4
    iget-object v3, v2, Lcom/android/exsettings/applications/RunningState$MergedItem;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 868
    return-void

    .line 884
    .restart local v1    # "info":Landroid/content/pm/UserInfo;
    :cond_5
    iget-object v3, v2, Lcom/android/exsettings/applications/RunningState$MergedItem;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    goto :goto_1
.end method

.method static getInstance(Landroid/content/Context;)Lcom/android/exsettings/applications/RunningState;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 770
    sget-object v1, Lcom/android/exsettings/applications/RunningState;->sGlobalLock:Ljava/lang/Object;

    monitor-enter v1

    .line 771
    :try_start_0
    sget-object v0, Lcom/android/exsettings/applications/RunningState;->sInstance:Lcom/android/exsettings/applications/RunningState;

    if-nez v0, :cond_0

    .line 772
    new-instance v0, Lcom/android/exsettings/applications/RunningState;

    invoke-direct {v0, p0}, Lcom/android/exsettings/applications/RunningState;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/exsettings/applications/RunningState;->sInstance:Lcom/android/exsettings/applications/RunningState;

    .line 774
    :cond_0
    sget-object v0, Lcom/android/exsettings/applications/RunningState;->sInstance:Lcom/android/exsettings/applications/RunningState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 770
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private isInterestingProcess(Landroid/app/ActivityManager$RunningAppProcessInfo;)Z
    .locals 4
    .param p1, "pi"    # Landroid/app/ActivityManager$RunningAppProcessInfo;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 845
    iget v0, p1, Landroid/app/ActivityManager$RunningAppProcessInfo;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 846
    return v3

    .line 848
    :cond_0
    iget v0, p1, Landroid/app/ActivityManager$RunningAppProcessInfo;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    .line 849
    iget v0, p1, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v1, 0x64

    if-lt v0, v1, :cond_1

    .line 850
    iget v0, p1, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v1, 0xaa

    if-ge v0, v1, :cond_1

    .line 851
    iget v0, p1, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonCode:I

    if-nez v0, :cond_1

    .line 853
    return v3

    .line 855
    :cond_1
    return v2
.end method

.method static makeLabel(Landroid/content/pm/PackageManager;Ljava/lang/String;Landroid/content/pm/PackageItemInfo;)Ljava/lang/CharSequence;
    .locals 5
    .param p0, "pm"    # Landroid/content/pm/PackageManager;
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "item"    # Landroid/content/pm/PackageItemInfo;

    .prologue
    .line 753
    if-eqz p2, :cond_1

    iget v3, p2, Landroid/content/pm/PackageItemInfo;->labelRes:I

    if-nez v3, :cond_0

    .line 754
    iget-object v3, p2, Landroid/content/pm/PackageItemInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    if-eqz v3, :cond_1

    .line 755
    :cond_0
    invoke-virtual {p2, p0}, Landroid/content/pm/PackageItemInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 756
    .local v0, "label":Ljava/lang/CharSequence;
    if-eqz v0, :cond_1

    .line 757
    return-object v0

    .line 761
    .end local v0    # "label":Ljava/lang/CharSequence;
    :cond_1
    move-object v1, p1

    .line 762
    .local v1, "label":Ljava/lang/String;
    const/16 v3, 0x2e

    invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 763
    .local v2, "tail":I
    if-ltz v2, :cond_2

    .line 764
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 766
    :cond_2
    return-object v1
.end method

.method private reset()V
    .locals 1

    .prologue
    .line 859
    iget-object v0, p0, Lcom/android/exsettings/applications/RunningState;->mServiceProcessesByName:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 860
    iget-object v0, p0, Lcom/android/exsettings/applications/RunningState;->mServiceProcessesByPid:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 861
    iget-object v0, p0, Lcom/android/exsettings/applications/RunningState;->mInterestingProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 862
    iget-object v0, p0, Lcom/android/exsettings/applications/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 863
    iget-object v0, p0, Lcom/android/exsettings/applications/RunningState;->mProcessItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 864
    iget-object v0, p0, Lcom/android/exsettings/applications/RunningState;->mAllProcessItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 858
    return-void
.end method

.method private update(Landroid/content/Context;Landroid/app/ActivityManager;)Z
    .locals 68
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "am"    # Landroid/app/ActivityManager;

    .prologue
    .line 897
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v46

    .line 899
    .local v46, "pm":Landroid/content/pm/PackageManager;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/exsettings/applications/RunningState;->mSequence:I

    move/from16 v63, v0

    add-int/lit8 v63, v63, 0x1

    move/from16 v0, v63

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/exsettings/applications/RunningState;->mSequence:I

    .line 901
    const/16 v18, 0x0

    .line 906
    .local v18, "changed":Z
    const/16 v63, 0x64

    move-object/from16 v0, p2

    move/from16 v1, v63

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v51

    .line 907
    .local v51, "services":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    if-eqz v51, :cond_1

    invoke-interface/range {v51 .. v51}, Ljava/util/List;->size()I

    move-result v11

    .line 908
    .local v11, "NS":I
    :goto_0
    const/16 v27, 0x0

    .local v27, "i":I
    :goto_1
    move/from16 v0, v27

    if-ge v0, v11, :cond_3

    .line 909
    move-object/from16 v0, v51

    move/from16 v1, v27

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v54

    check-cast v54, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 913
    .local v54, "si":Landroid/app/ActivityManager$RunningServiceInfo;
    move-object/from16 v0, v54

    iget-boolean v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->started:Z

    move/from16 v63, v0

    if-nez v63, :cond_2

    move-object/from16 v0, v54

    iget v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->clientLabel:I

    move/from16 v63, v0

    if-nez v63, :cond_2

    .line 914
    move-object/from16 v0, v51

    move/from16 v1, v27

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 915
    add-int/lit8 v27, v27, -0x1

    .line 916
    add-int/lit8 v11, v11, -0x1

    .line 908
    :cond_0
    :goto_2
    add-int/lit8 v27, v27, 0x1

    goto :goto_1

    .line 907
    .end local v11    # "NS":I
    .end local v27    # "i":I
    .end local v54    # "si":Landroid/app/ActivityManager$RunningServiceInfo;
    :cond_1
    const/4 v11, 0x0

    .restart local v11    # "NS":I
    goto :goto_0

    .line 921
    .restart local v27    # "i":I
    .restart local v54    # "si":Landroid/app/ActivityManager$RunningServiceInfo;
    :cond_2
    move-object/from16 v0, v54

    iget v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->flags:I

    move/from16 v63, v0

    and-int/lit8 v63, v63, 0x8

    if-eqz v63, :cond_0

    .line 923
    move-object/from16 v0, v51

    move/from16 v1, v27

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 924
    add-int/lit8 v27, v27, -0x1

    .line 925
    add-int/lit8 v11, v11, -0x1

    .line 926
    goto :goto_2

    .line 933
    .end local v54    # "si":Landroid/app/ActivityManager$RunningServiceInfo;
    :cond_3
    invoke-virtual/range {p2 .. p2}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v48

    .line 934
    .local v48, "processes":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    if-eqz v48, :cond_4

    invoke-interface/range {v48 .. v48}, Ljava/util/List;->size()I

    move-result v9

    .line 935
    .local v9, "NP":I
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/applications/RunningState;->mTmpAppProcesses:Landroid/util/SparseArray;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Landroid/util/SparseArray;->clear()V

    .line 936
    const/16 v27, 0x0

    :goto_4
    move/from16 v0, v27

    if-ge v0, v9, :cond_5

    .line 937
    move-object/from16 v0, v48

    move/from16 v1, v27

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 938
    .local v40, "pi":Landroid/app/ActivityManager$RunningAppProcessInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/applications/RunningState;->mTmpAppProcesses:Landroid/util/SparseArray;

    move-object/from16 v63, v0

    move-object/from16 v0, v40

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    move/from16 v64, v0

    new-instance v65, Lcom/android/exsettings/applications/RunningState$AppProcessInfo;

    move-object/from16 v0, v65

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/exsettings/applications/RunningState$AppProcessInfo;-><init>(Landroid/app/ActivityManager$RunningAppProcessInfo;)V

    invoke-virtual/range {v63 .. v65}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 936
    add-int/lit8 v27, v27, 0x1

    goto :goto_4

    .line 934
    .end local v9    # "NP":I
    .end local v40    # "pi":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_4
    const/4 v9, 0x0

    .restart local v9    # "NP":I
    goto :goto_3

    .line 943
    :cond_5
    const/16 v27, 0x0

    :goto_5
    move/from16 v0, v27

    if-ge v0, v11, :cond_7

    .line 944
    move-object/from16 v0, v51

    move/from16 v1, v27

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v54

    check-cast v54, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 945
    .restart local v54    # "si":Landroid/app/ActivityManager$RunningServiceInfo;
    move-object/from16 v0, v54

    iget-wide v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->restarting:J

    move-wide/from16 v64, v0

    const-wide/16 v66, 0x0

    cmp-long v63, v64, v66

    if-nez v63, :cond_6

    move-object/from16 v0, v54

    iget v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->pid:I

    move/from16 v63, v0

    if-lez v63, :cond_6

    .line 946
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/applications/RunningState;->mTmpAppProcesses:Landroid/util/SparseArray;

    move-object/from16 v63, v0

    move-object/from16 v0, v54

    iget v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->pid:I

    move/from16 v64, v0

    invoke-virtual/range {v63 .. v64}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/exsettings/applications/RunningState$AppProcessInfo;

    .line 947
    .local v13, "ainfo":Lcom/android/exsettings/applications/RunningState$AppProcessInfo;
    if-eqz v13, :cond_6

    .line 948
    const/16 v63, 0x1

    move/from16 v0, v63

    iput-boolean v0, v13, Lcom/android/exsettings/applications/RunningState$AppProcessInfo;->hasServices:Z

    .line 949
    move-object/from16 v0, v54

    iget-boolean v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->foreground:Z

    move/from16 v63, v0

    if-eqz v63, :cond_6

    .line 950
    const/16 v63, 0x1

    move/from16 v0, v63

    iput-boolean v0, v13, Lcom/android/exsettings/applications/RunningState$AppProcessInfo;->hasForegroundServices:Z

    .line 943
    .end local v13    # "ainfo":Lcom/android/exsettings/applications/RunningState$AppProcessInfo;
    :cond_6
    add-int/lit8 v27, v27, 0x1

    goto :goto_5

    .line 957
    .end local v54    # "si":Landroid/app/ActivityManager$RunningServiceInfo;
    :cond_7
    const/16 v27, 0x0

    .end local v18    # "changed":Z
    :goto_6
    move/from16 v0, v27

    if-ge v0, v11, :cond_14

    .line 958
    move-object/from16 v0, v51

    move/from16 v1, v27

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v54

    check-cast v54, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 965
    .restart local v54    # "si":Landroid/app/ActivityManager$RunningServiceInfo;
    move-object/from16 v0, v54

    iget-wide v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->restarting:J

    move-wide/from16 v64, v0

    const-wide/16 v66, 0x0

    cmp-long v63, v64, v66

    if-nez v63, :cond_8

    move-object/from16 v0, v54

    iget v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->pid:I

    move/from16 v63, v0

    if-lez v63, :cond_8

    .line 966
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/applications/RunningState;->mTmpAppProcesses:Landroid/util/SparseArray;

    move-object/from16 v63, v0

    move-object/from16 v0, v54

    iget v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->pid:I

    move/from16 v64, v0

    invoke-virtual/range {v63 .. v64}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/exsettings/applications/RunningState$AppProcessInfo;

    .line 967
    .restart local v13    # "ainfo":Lcom/android/exsettings/applications/RunningState$AppProcessInfo;
    if-eqz v13, :cond_8

    iget-boolean v0, v13, Lcom/android/exsettings/applications/RunningState$AppProcessInfo;->hasForegroundServices:Z

    move/from16 v63, v0

    if-eqz v63, :cond_f

    .line 993
    .end local v13    # "ainfo":Lcom/android/exsettings/applications/RunningState$AppProcessInfo;
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/applications/RunningState;->mServiceProcessesByName:Landroid/util/SparseArray;

    move-object/from16 v63, v0

    move-object/from16 v0, v54

    iget v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->uid:I

    move/from16 v64, v0

    invoke-virtual/range {v63 .. v64}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v49

    check-cast v49, Ljava/util/HashMap;

    .line 994
    .local v49, "procs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/exsettings/applications/RunningState$ProcessItem;>;"
    if-nez v49, :cond_9

    .line 995
    new-instance v49, Ljava/util/HashMap;

    .end local v49    # "procs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/exsettings/applications/RunningState$ProcessItem;>;"
    invoke-direct/range {v49 .. v49}, Ljava/util/HashMap;-><init>()V

    .line 996
    .restart local v49    # "procs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/exsettings/applications/RunningState$ProcessItem;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/applications/RunningState;->mServiceProcessesByName:Landroid/util/SparseArray;

    move-object/from16 v63, v0

    move-object/from16 v0, v54

    iget v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->uid:I

    move/from16 v64, v0

    move-object/from16 v0, v63

    move/from16 v1, v64

    move-object/from16 v2, v49

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 998
    :cond_9
    move-object/from16 v0, v54

    iget-object v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->process:Ljava/lang/String;

    move-object/from16 v63, v0

    move-object/from16 v0, v49

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v47

    check-cast v47, Lcom/android/exsettings/applications/RunningState$ProcessItem;

    .line 999
    .local v47, "proc":Lcom/android/exsettings/applications/RunningState$ProcessItem;
    if-nez v47, :cond_a

    .line 1000
    const/16 v18, 0x1

    .line 1001
    .restart local v18    # "changed":Z
    new-instance v47, Lcom/android/exsettings/applications/RunningState$ProcessItem;

    .end local v47    # "proc":Lcom/android/exsettings/applications/RunningState$ProcessItem;
    move-object/from16 v0, v54

    iget v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->uid:I

    move/from16 v63, v0

    move-object/from16 v0, v54

    iget-object v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->process:Ljava/lang/String;

    move-object/from16 v64, v0

    move-object/from16 v0, v47

    move-object/from16 v1, p1

    move/from16 v2, v63

    move-object/from16 v3, v64

    invoke-direct {v0, v1, v2, v3}, Lcom/android/exsettings/applications/RunningState$ProcessItem;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    .line 1002
    .restart local v47    # "proc":Lcom/android/exsettings/applications/RunningState$ProcessItem;
    move-object/from16 v0, v54

    iget-object v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->process:Ljava/lang/String;

    move-object/from16 v63, v0

    move-object/from16 v0, v49

    move-object/from16 v1, v63

    move-object/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1005
    .end local v18    # "changed":Z
    :cond_a
    move-object/from16 v0, v47

    iget v0, v0, Lcom/android/exsettings/applications/RunningState$ProcessItem;->mCurSeq:I

    move/from16 v63, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/exsettings/applications/RunningState;->mSequence:I

    move/from16 v64, v0

    move/from16 v0, v63

    move/from16 v1, v64

    if-eq v0, v1, :cond_e

    .line 1006
    move-object/from16 v0, v54

    iget-wide v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->restarting:J

    move-wide/from16 v64, v0

    const-wide/16 v66, 0x0

    cmp-long v63, v64, v66

    if-nez v63, :cond_13

    move-object/from16 v0, v54

    iget v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->pid:I

    move/from16 v43, v0

    .line 1007
    .local v43, "pid":I
    :goto_7
    move-object/from16 v0, v47

    iget v0, v0, Lcom/android/exsettings/applications/RunningState$ProcessItem;->mPid:I

    move/from16 v63, v0

    move/from16 v0, v43

    move/from16 v1, v63

    if-eq v0, v1, :cond_d

    .line 1008
    const/16 v18, 0x1

    .line 1009
    .restart local v18    # "changed":Z
    move-object/from16 v0, v47

    iget v0, v0, Lcom/android/exsettings/applications/RunningState$ProcessItem;->mPid:I

    move/from16 v63, v0

    move/from16 v0, v63

    move/from16 v1, v43

    if-eq v0, v1, :cond_d

    .line 1010
    move-object/from16 v0, v47

    iget v0, v0, Lcom/android/exsettings/applications/RunningState$ProcessItem;->mPid:I

    move/from16 v63, v0

    if-eqz v63, :cond_b

    .line 1011
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/applications/RunningState;->mServiceProcessesByPid:Landroid/util/SparseArray;

    move-object/from16 v63, v0

    move-object/from16 v0, v47

    iget v0, v0, Lcom/android/exsettings/applications/RunningState$ProcessItem;->mPid:I

    move/from16 v64, v0

    invoke-virtual/range {v63 .. v64}, Landroid/util/SparseArray;->remove(I)V

    .line 1013
    :cond_b
    if-eqz v43, :cond_c

    .line 1014
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/applications/RunningState;->mServiceProcessesByPid:Landroid/util/SparseArray;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    move/from16 v1, v43

    move-object/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1016
    :cond_c
    move/from16 v0, v43

    move-object/from16 v1, v47

    iput v0, v1, Lcom/android/exsettings/applications/RunningState$ProcessItem;->mPid:I

    .line 1019
    .end local v18    # "changed":Z
    :cond_d
    move-object/from16 v0, v47

    iget-object v0, v0, Lcom/android/exsettings/applications/RunningState$ProcessItem;->mDependentProcesses:Landroid/util/SparseArray;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Landroid/util/SparseArray;->clear()V

    .line 1020
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/exsettings/applications/RunningState;->mSequence:I

    move/from16 v63, v0

    move/from16 v0, v63

    move-object/from16 v1, v47

    iput v0, v1, Lcom/android/exsettings/applications/RunningState$ProcessItem;->mCurSeq:I

    .line 1022
    .end local v43    # "pid":I
    :cond_e
    move-object/from16 v0, v47

    move-object/from16 v1, p1

    move-object/from16 v2, v54

    invoke-virtual {v0, v1, v2}, Lcom/android/exsettings/applications/RunningState$ProcessItem;->updateService(Landroid/content/Context;Landroid/app/ActivityManager$RunningServiceInfo;)Z

    move-result v63

    or-int v18, v18, v63

    .line 957
    .end local v47    # "proc":Lcom/android/exsettings/applications/RunningState$ProcessItem;
    .end local v49    # "procs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/exsettings/applications/RunningState$ProcessItem;>;"
    :goto_8
    add-int/lit8 v27, v27, 0x1

    goto/16 :goto_6

    .line 973
    .restart local v13    # "ainfo":Lcom/android/exsettings/applications/RunningState$AppProcessInfo;
    :cond_f
    iget-object v0, v13, Lcom/android/exsettings/applications/RunningState$AppProcessInfo;->info:Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    move/from16 v63, v0

    .line 974
    const/16 v64, 0x12c

    .line 973
    move/from16 v0, v63

    move/from16 v1, v64

    if-ge v0, v1, :cond_8

    .line 977
    const/16 v58, 0x0

    .line 978
    .local v58, "skip":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/applications/RunningState;->mTmpAppProcesses:Landroid/util/SparseArray;

    move-object/from16 v63, v0

    iget-object v0, v13, Lcom/android/exsettings/applications/RunningState$AppProcessInfo;->info:Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-object/from16 v64, v0

    move-object/from16 v0, v64

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonPid:I

    move/from16 v64, v0

    invoke-virtual/range {v63 .. v64}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v13

    .end local v13    # "ainfo":Lcom/android/exsettings/applications/RunningState$AppProcessInfo;
    check-cast v13, Lcom/android/exsettings/applications/RunningState$AppProcessInfo;

    .line 979
    .restart local v13    # "ainfo":Lcom/android/exsettings/applications/RunningState$AppProcessInfo;
    :goto_9
    if-eqz v13, :cond_11

    .line 980
    iget-boolean v0, v13, Lcom/android/exsettings/applications/RunningState$AppProcessInfo;->hasServices:Z

    move/from16 v63, v0

    if-nez v63, :cond_10

    iget-object v0, v13, Lcom/android/exsettings/applications/RunningState$AppProcessInfo;->info:Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-object/from16 v63, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    invoke-direct {v0, v1}, Lcom/android/exsettings/applications/RunningState;->isInterestingProcess(Landroid/app/ActivityManager$RunningAppProcessInfo;)Z

    move-result v63

    if-eqz v63, :cond_12

    .line 981
    :cond_10
    const/16 v58, 0x1

    .line 986
    :cond_11
    if-eqz v58, :cond_8

    goto :goto_8

    .line 984
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/applications/RunningState;->mTmpAppProcesses:Landroid/util/SparseArray;

    move-object/from16 v63, v0

    iget-object v0, v13, Lcom/android/exsettings/applications/RunningState$AppProcessInfo;->info:Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-object/from16 v64, v0

    move-object/from16 v0, v64

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonPid:I

    move/from16 v64, v0

    invoke-virtual/range {v63 .. v64}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v13

    .end local v13    # "ainfo":Lcom/android/exsettings/applications/RunningState$AppProcessInfo;
    check-cast v13, Lcom/android/exsettings/applications/RunningState$AppProcessInfo;

    .restart local v13    # "ainfo":Lcom/android/exsettings/applications/RunningState$AppProcessInfo;
    goto :goto_9

    .line 1006
    .end local v13    # "ainfo":Lcom/android/exsettings/applications/RunningState$AppProcessInfo;
    .end local v58    # "skip":Z
    .restart local v47    # "proc":Lcom/android/exsettings/applications/RunningState$ProcessItem;
    .restart local v49    # "procs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/exsettings/applications/RunningState$ProcessItem;>;"
    :cond_13
    const/16 v43, 0x0

    .restart local v43    # "pid":I
    goto/16 :goto_7

    .line 1027
    .end local v43    # "pid":I
    .end local v47    # "proc":Lcom/android/exsettings/applications/RunningState$ProcessItem;
    .end local v49    # "procs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/exsettings/applications/RunningState$ProcessItem;>;"
    .end local v54    # "si":Landroid/app/ActivityManager$RunningServiceInfo;
    :cond_14
    const/16 v27, 0x0

    :goto_a
    move/from16 v0, v27

    if-ge v0, v9, :cond_19

    .line 1028
    move-object/from16 v0, v48

    move/from16 v1, v27

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 1029
    .restart local v40    # "pi":Landroid/app/ActivityManager$RunningAppProcessInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/applications/RunningState;->mServiceProcessesByPid:Landroid/util/SparseArray;

    move-object/from16 v63, v0

    move-object/from16 v0, v40

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    move/from16 v64, v0

    invoke-virtual/range {v63 .. v64}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v47

    check-cast v47, Lcom/android/exsettings/applications/RunningState$ProcessItem;

    .line 1030
    .restart local v47    # "proc":Lcom/android/exsettings/applications/RunningState$ProcessItem;
    if-nez v47, :cond_16

    .line 1034
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/applications/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    move-object/from16 v63, v0

    move-object/from16 v0, v40

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    move/from16 v64, v0

    invoke-virtual/range {v63 .. v64}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v47

    .end local v47    # "proc":Lcom/android/exsettings/applications/RunningState$ProcessItem;
    check-cast v47, Lcom/android/exsettings/applications/RunningState$ProcessItem;

    .line 1035
    .restart local v47    # "proc":Lcom/android/exsettings/applications/RunningState$ProcessItem;
    if-nez v47, :cond_15

    .line 1036
    const/16 v18, 0x1

    .line 1037
    .restart local v18    # "changed":Z
    new-instance v47, Lcom/android/exsettings/applications/RunningState$ProcessItem;

    .end local v47    # "proc":Lcom/android/exsettings/applications/RunningState$ProcessItem;
    move-object/from16 v0, v40

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    move/from16 v63, v0

    move-object/from16 v0, v40

    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    move-object/from16 v64, v0

    move-object/from16 v0, v47

    move-object/from16 v1, p1

    move/from16 v2, v63

    move-object/from16 v3, v64

    invoke-direct {v0, v1, v2, v3}, Lcom/android/exsettings/applications/RunningState$ProcessItem;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    .line 1038
    .restart local v47    # "proc":Lcom/android/exsettings/applications/RunningState$ProcessItem;
    move-object/from16 v0, v40

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    move/from16 v63, v0

    move/from16 v0, v63

    move-object/from16 v1, v47

    iput v0, v1, Lcom/android/exsettings/applications/RunningState$ProcessItem;->mPid:I

    .line 1039
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/applications/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    move-object/from16 v63, v0

    move-object/from16 v0, v40

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    move/from16 v64, v0

    move-object/from16 v0, v63

    move/from16 v1, v64

    move-object/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1041
    .end local v18    # "changed":Z
    :cond_15
    move-object/from16 v0, v47

    iget-object v0, v0, Lcom/android/exsettings/applications/RunningState$ProcessItem;->mDependentProcesses:Landroid/util/SparseArray;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Landroid/util/SparseArray;->clear()V

    .line 1044
    :cond_16
    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/exsettings/applications/RunningState;->isInterestingProcess(Landroid/app/ActivityManager$RunningAppProcessInfo;)Z

    move-result v63

    if-eqz v63, :cond_18

    .line 1045
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/applications/RunningState;->mInterestingProcesses:Ljava/util/ArrayList;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v63

    if-nez v63, :cond_17

    .line 1046
    const/16 v18, 0x1

    .line 1047
    .restart local v18    # "changed":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/applications/RunningState;->mInterestingProcesses:Ljava/util/ArrayList;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1049
    .end local v18    # "changed":Z
    :cond_17
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/exsettings/applications/RunningState;->mSequence:I

    move/from16 v63, v0

    move/from16 v0, v63

    move-object/from16 v1, v47

    iput v0, v1, Lcom/android/exsettings/applications/RunningState$ProcessItem;->mCurSeq:I

    .line 1050
    const/16 v63, 0x1

    move/from16 v0, v63

    move-object/from16 v1, v47

    iput-boolean v0, v1, Lcom/android/exsettings/applications/RunningState$ProcessItem;->mInteresting:Z

    .line 1051
    move-object/from16 v0, v47

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/android/exsettings/applications/RunningState$ProcessItem;->ensureLabel(Landroid/content/pm/PackageManager;)V

    .line 1056
    :goto_b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/exsettings/applications/RunningState;->mSequence:I

    move/from16 v63, v0

    move/from16 v0, v63

    move-object/from16 v1, v47

    iput v0, v1, Lcom/android/exsettings/applications/RunningState$ProcessItem;->mRunningSeq:I

    .line 1057
    move-object/from16 v0, v40

    move-object/from16 v1, v47

    iput-object v0, v1, Lcom/android/exsettings/applications/RunningState$ProcessItem;->mRunningProcessInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 1027
    add-int/lit8 v27, v27, 0x1

    goto/16 :goto_a

    .line 1053
    :cond_18
    const/16 v63, 0x0

    move/from16 v0, v63

    move-object/from16 v1, v47

    iput-boolean v0, v1, Lcom/android/exsettings/applications/RunningState$ProcessItem;->mInteresting:Z

    goto :goto_b

    .line 1062
    .end local v40    # "pi":Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v47    # "proc":Lcom/android/exsettings/applications/RunningState$ProcessItem;
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/applications/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Landroid/util/SparseArray;->size()I

    move-result v10

    .line 1063
    .local v10, "NRP":I
    const/16 v27, 0x0

    :goto_c
    move/from16 v0, v27

    if-ge v0, v10, :cond_1e

    .line 1064
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/applications/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v47

    check-cast v47, Lcom/android/exsettings/applications/RunningState$ProcessItem;

    .line 1065
    .restart local v47    # "proc":Lcom/android/exsettings/applications/RunningState$ProcessItem;
    move-object/from16 v0, v47

    iget v0, v0, Lcom/android/exsettings/applications/RunningState$ProcessItem;->mRunningSeq:I

    move/from16 v63, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/exsettings/applications/RunningState;->mSequence:I

    move/from16 v64, v0

    move/from16 v0, v63

    move/from16 v1, v64

    if-ne v0, v1, :cond_1d

    .line 1066
    move-object/from16 v0, v47

    iget-object v0, v0, Lcom/android/exsettings/applications/RunningState$ProcessItem;->mRunningProcessInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonPid:I

    move/from16 v20, v0

    .line 1067
    .local v20, "clientPid":I
    if-eqz v20, :cond_1c

    .line 1068
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/applications/RunningState;->mServiceProcessesByPid:Landroid/util/SparseArray;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/exsettings/applications/RunningState$ProcessItem;

    .line 1069
    .local v19, "client":Lcom/android/exsettings/applications/RunningState$ProcessItem;
    if-nez v19, :cond_1a

    .line 1070
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/applications/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v19

    .end local v19    # "client":Lcom/android/exsettings/applications/RunningState$ProcessItem;
    check-cast v19, Lcom/android/exsettings/applications/RunningState$ProcessItem;

    .line 1072
    .restart local v19    # "client":Lcom/android/exsettings/applications/RunningState$ProcessItem;
    :cond_1a
    if-eqz v19, :cond_1b

    .line 1073
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/exsettings/applications/RunningState$ProcessItem;->mDependentProcesses:Landroid/util/SparseArray;

    move-object/from16 v63, v0

    move-object/from16 v0, v47

    iget v0, v0, Lcom/android/exsettings/applications/RunningState$ProcessItem;->mPid:I

    move/from16 v64, v0

    move-object/from16 v0, v63

    move/from16 v1, v64

    move-object/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1081
    .end local v19    # "client":Lcom/android/exsettings/applications/RunningState$ProcessItem;
    :cond_1b
    :goto_d
    add-int/lit8 v27, v27, 0x1

    goto :goto_c

    .line 1079
    :cond_1c
    const/16 v63, 0x0

    move-object/from16 v0, v63

    move-object/from16 v1, v47

    iput-object v0, v1, Lcom/android/exsettings/applications/RunningState$ProcessItem;->mClient:Lcom/android/exsettings/applications/RunningState$ProcessItem;

    goto :goto_d

    .line 1083
    .end local v20    # "clientPid":I
    :cond_1d
    const/16 v18, 0x1

    .line 1084
    .restart local v18    # "changed":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/applications/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    move-object/from16 v63, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/applications/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    move-object/from16 v64, v0

    move-object/from16 v0, v64

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v64

    invoke-virtual/range {v63 .. v64}, Landroid/util/SparseArray;->remove(I)V

    .line 1085
    add-int/lit8 v10, v10, -0x1

    goto/16 :goto_c

    .line 1090
    .end local v18    # "changed":Z
    .end local v47    # "proc":Lcom/android/exsettings/applications/RunningState$ProcessItem;
    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/applications/RunningState;->mInterestingProcesses:Ljava/util/ArrayList;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 1091
    .local v8, "NHP":I
    const/16 v27, 0x0

    :goto_e
    move/from16 v0, v27

    if-ge v0, v8, :cond_21

    .line 1092
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/applications/RunningState;->mInterestingProcesses:Ljava/util/ArrayList;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v47

    check-cast v47, Lcom/android/exsettings/applications/RunningState$ProcessItem;

    .line 1093
    .restart local v47    # "proc":Lcom/android/exsettings/applications/RunningState$ProcessItem;
    move-object/from16 v0, v47

    iget-boolean v0, v0, Lcom/android/exsettings/applications/RunningState$ProcessItem;->mInteresting:Z

    move/from16 v63, v0

    if-eqz v63, :cond_1f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/applications/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    move-object/from16 v63, v0

    move-object/from16 v0, v47

    iget v0, v0, Lcom/android/exsettings/applications/RunningState$ProcessItem;->mPid:I

    move/from16 v64, v0

    invoke-virtual/range {v63 .. v64}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v63

    if-nez v63, :cond_20

    .line 1094
    :cond_1f
    const/16 v18, 0x1

    .line 1095
    .restart local v18    # "changed":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/applications/RunningState;->mInterestingProcesses:Ljava/util/ArrayList;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1096
    add-int/lit8 v27, v27, -0x1

    .line 1097
    add-int/lit8 v8, v8, -0x1

    .line 1091
    .end local v18    # "changed":Z
    :cond_20
    add-int/lit8 v27, v27, 0x1

    goto :goto_e

    .line 1104
    .end local v47    # "proc":Lcom/android/exsettings/applications/RunningState$ProcessItem;
    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/applications/RunningState;->mServiceProcessesByPid:Landroid/util/SparseArray;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Landroid/util/SparseArray;->size()I

    move-result v6

    .line 1105
    .local v6, "NAP":I
    const/16 v27, 0x0

    :goto_f
    move/from16 v0, v27

    if-ge v0, v6, :cond_23

    .line 1106
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/applications/RunningState;->mServiceProcessesByPid:Landroid/util/SparseArray;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v47

    check-cast v47, Lcom/android/exsettings/applications/RunningState$ProcessItem;

    .line 1107
    .restart local v47    # "proc":Lcom/android/exsettings/applications/RunningState$ProcessItem;
    move-object/from16 v0, v47

    iget v0, v0, Lcom/android/exsettings/applications/RunningState$ProcessItem;->mCurSeq:I

    move/from16 v63, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/exsettings/applications/RunningState;->mSequence:I

    move/from16 v64, v0

    move/from16 v0, v63

    move/from16 v1, v64

    if-ne v0, v1, :cond_22

    .line 1108
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/exsettings/applications/RunningState;->mSequence:I

    move/from16 v63, v0

    move-object/from16 v0, v47

    move-object/from16 v1, p1

    move-object/from16 v2, v46

    move/from16 v3, v63

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/exsettings/applications/RunningState$ProcessItem;->buildDependencyChain(Landroid/content/Context;Landroid/content/pm/PackageManager;I)Z

    move-result v63

    or-int v18, v18, v63

    .line 1105
    :cond_22
    add-int/lit8 v27, v27, 0x1

    goto :goto_f

    .line 1113
    .end local v47    # "proc":Lcom/android/exsettings/applications/RunningState$ProcessItem;
    :cond_23
    const/16 v61, 0x0

    .line 1114
    .local v61, "uidToDelete":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/16 v27, 0x0

    .end local v61    # "uidToDelete":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :goto_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/applications/RunningState;->mServiceProcessesByName:Landroid/util/SparseArray;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Landroid/util/SparseArray;->size()I

    move-result v63

    move/from16 v0, v27

    move/from16 v1, v63

    if-ge v0, v1, :cond_2b

    .line 1115
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/applications/RunningState;->mServiceProcessesByName:Landroid/util/SparseArray;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v49

    check-cast v49, Ljava/util/HashMap;

    .line 1116
    .restart local v49    # "procs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/exsettings/applications/RunningState$ProcessItem;>;"
    invoke-virtual/range {v49 .. v49}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v63

    invoke-interface/range {v63 .. v63}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v45

    .line 1117
    .local v45, "pit":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/exsettings/applications/RunningState$ProcessItem;>;"
    :cond_24
    :goto_11
    invoke-interface/range {v45 .. v45}, Ljava/util/Iterator;->hasNext()Z

    move-result v63

    if-eqz v63, :cond_2a

    .line 1118
    invoke-interface/range {v45 .. v45}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Lcom/android/exsettings/applications/RunningState$ProcessItem;

    .line 1119
    .local v41, "pi":Lcom/android/exsettings/applications/RunningState$ProcessItem;
    move-object/from16 v0, v41

    iget v0, v0, Lcom/android/exsettings/applications/RunningState$ProcessItem;->mCurSeq:I

    move/from16 v63, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/exsettings/applications/RunningState;->mSequence:I

    move/from16 v64, v0

    move/from16 v0, v63

    move/from16 v1, v64

    if-ne v0, v1, :cond_27

    .line 1120
    move-object/from16 v0, v41

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/android/exsettings/applications/RunningState$ProcessItem;->ensureLabel(Landroid/content/pm/PackageManager;)V

    .line 1121
    move-object/from16 v0, v41

    iget v0, v0, Lcom/android/exsettings/applications/RunningState$ProcessItem;->mPid:I

    move/from16 v63, v0

    if-nez v63, :cond_25

    .line 1124
    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/android/exsettings/applications/RunningState$ProcessItem;->mDependentProcesses:Landroid/util/SparseArray;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Landroid/util/SparseArray;->clear()V

    .line 1140
    :cond_25
    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/android/exsettings/applications/RunningState$ProcessItem;->mServices:Ljava/util/HashMap;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v63

    invoke-interface/range {v63 .. v63}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v57

    .line 1141
    .local v57, "sit":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/exsettings/applications/RunningState$ServiceItem;>;"
    :cond_26
    :goto_12
    invoke-interface/range {v57 .. v57}, Ljava/util/Iterator;->hasNext()Z

    move-result v63

    if-eqz v63, :cond_24

    .line 1142
    invoke-interface/range {v57 .. v57}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v55

    check-cast v55, Lcom/android/exsettings/applications/RunningState$ServiceItem;

    .line 1143
    .local v55, "si":Lcom/android/exsettings/applications/RunningState$ServiceItem;
    move-object/from16 v0, v55

    iget v0, v0, Lcom/android/exsettings/applications/RunningState$ServiceItem;->mCurSeq:I

    move/from16 v63, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/exsettings/applications/RunningState;->mSequence:I

    move/from16 v64, v0

    move/from16 v0, v63

    move/from16 v1, v64

    if-eq v0, v1, :cond_26

    .line 1144
    const/16 v18, 0x1

    .line 1145
    .restart local v18    # "changed":Z
    invoke-interface/range {v57 .. v57}, Ljava/util/Iterator;->remove()V

    goto :goto_12

    .line 1127
    .end local v18    # "changed":Z
    .end local v55    # "si":Lcom/android/exsettings/applications/RunningState$ServiceItem;
    .end local v57    # "sit":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/exsettings/applications/RunningState$ServiceItem;>;"
    :cond_27
    const/16 v18, 0x1

    .line 1128
    .restart local v18    # "changed":Z
    invoke-interface/range {v45 .. v45}, Ljava/util/Iterator;->remove()V

    .line 1129
    invoke-virtual/range {v49 .. v49}, Ljava/util/HashMap;->size()I

    move-result v63

    if-nez v63, :cond_29

    .line 1130
    if-nez v61, :cond_28

    .line 1131
    new-instance v61, Ljava/util/ArrayList;

    invoke-direct/range {v61 .. v61}, Ljava/util/ArrayList;-><init>()V

    .line 1133
    :cond_28
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/applications/RunningState;->mServiceProcessesByName:Landroid/util/SparseArray;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v63

    invoke-static/range {v63 .. v63}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v63

    move-object/from16 v0, v61

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1135
    :cond_29
    move-object/from16 v0, v41

    iget v0, v0, Lcom/android/exsettings/applications/RunningState$ProcessItem;->mPid:I

    move/from16 v63, v0

    if-eqz v63, :cond_24

    .line 1136
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/applications/RunningState;->mServiceProcessesByPid:Landroid/util/SparseArray;

    move-object/from16 v63, v0

    move-object/from16 v0, v41

    iget v0, v0, Lcom/android/exsettings/applications/RunningState$ProcessItem;->mPid:I

    move/from16 v64, v0

    invoke-virtual/range {v63 .. v64}, Landroid/util/SparseArray;->remove(I)V

    goto/16 :goto_11

    .line 1114
    .end local v18    # "changed":Z
    .end local v41    # "pi":Lcom/android/exsettings/applications/RunningState$ProcessItem;
    :cond_2a
    add-int/lit8 v27, v27, 0x1

    goto/16 :goto_10

    .line 1151
    .end local v45    # "pit":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/exsettings/applications/RunningState$ProcessItem;>;"
    .end local v49    # "procs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/exsettings/applications/RunningState$ProcessItem;>;"
    :cond_2b
    if-eqz v61, :cond_2c

    .line 1152
    const/16 v27, 0x0

    :goto_13
    invoke-virtual/range {v61 .. v61}, Ljava/util/ArrayList;->size()I

    move-result v63

    move/from16 v0, v27

    move/from16 v1, v63

    if-ge v0, v1, :cond_2c

    .line 1153
    move-object/from16 v0, v61

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v63

    check-cast v63, Ljava/lang/Integer;

    invoke-virtual/range {v63 .. v63}, Ljava/lang/Integer;->intValue()I

    move-result v60

    .line 1154
    .local v60, "uid":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/applications/RunningState;->mServiceProcessesByName:Landroid/util/SparseArray;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    move/from16 v1, v60

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 1152
    add-int/lit8 v27, v27, 0x1

    goto :goto_13

    .line 1158
    .end local v60    # "uid":I
    :cond_2c
    if-eqz v18, :cond_42

    .line 1160
    new-instance v59, Ljava/util/ArrayList;

    invoke-direct/range {v59 .. v59}, Ljava/util/ArrayList;-><init>()V

    .line 1161
    .local v59, "sortedProcesses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/exsettings/applications/RunningState$ProcessItem;>;"
    const/16 v27, 0x0

    :goto_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/applications/RunningState;->mServiceProcessesByName:Landroid/util/SparseArray;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Landroid/util/SparseArray;->size()I

    move-result v63

    move/from16 v0, v27

    move/from16 v1, v63

    if-ge v0, v1, :cond_31

    .line 1162
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/applications/RunningState;->mServiceProcessesByName:Landroid/util/SparseArray;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v63

    check-cast v63, Ljava/util/HashMap;

    invoke-virtual/range {v63 .. v63}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v63

    invoke-interface/range {v63 .. v63}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v42

    .local v42, "pi$iterator":Ljava/util/Iterator;
    :goto_15
    invoke-interface/range {v42 .. v42}, Ljava/util/Iterator;->hasNext()Z

    move-result v63

    if-eqz v63, :cond_30

    invoke-interface/range {v42 .. v42}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Lcom/android/exsettings/applications/RunningState$ProcessItem;

    .line 1163
    .restart local v41    # "pi":Lcom/android/exsettings/applications/RunningState$ProcessItem;
    const/16 v63, 0x0

    move/from16 v0, v63

    move-object/from16 v1, v41

    iput-boolean v0, v1, Lcom/android/exsettings/applications/RunningState$ProcessItem;->mIsSystem:Z

    .line 1164
    const/16 v63, 0x1

    move/from16 v0, v63

    move-object/from16 v1, v41

    iput-boolean v0, v1, Lcom/android/exsettings/applications/RunningState$ProcessItem;->mIsStarted:Z

    .line 1165
    const-wide v64, 0x7fffffffffffffffL

    move-wide/from16 v0, v64

    move-object/from16 v2, v41

    iput-wide v0, v2, Lcom/android/exsettings/applications/RunningState$ProcessItem;->mActiveSince:J

    .line 1166
    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/android/exsettings/applications/RunningState$ProcessItem;->mServices:Ljava/util/HashMap;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v63

    invoke-interface/range {v63 .. v63}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v56

    .local v56, "si$iterator":Ljava/util/Iterator;
    :cond_2d
    :goto_16
    invoke-interface/range {v56 .. v56}, Ljava/util/Iterator;->hasNext()Z

    move-result v63

    if-eqz v63, :cond_2f

    invoke-interface/range {v56 .. v56}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v55

    check-cast v55, Lcom/android/exsettings/applications/RunningState$ServiceItem;

    .line 1167
    .restart local v55    # "si":Lcom/android/exsettings/applications/RunningState$ServiceItem;
    move-object/from16 v0, v55

    iget-object v0, v0, Lcom/android/exsettings/applications/RunningState$ServiceItem;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v63, v0

    if-eqz v63, :cond_2e

    .line 1168
    move-object/from16 v0, v55

    iget-object v0, v0, Lcom/android/exsettings/applications/RunningState$ServiceItem;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v63, v0

    and-int/lit8 v63, v63, 0x1

    if-eqz v63, :cond_2e

    .line 1170
    const/16 v63, 0x1

    move/from16 v0, v63

    move-object/from16 v1, v41

    iput-boolean v0, v1, Lcom/android/exsettings/applications/RunningState$ProcessItem;->mIsSystem:Z

    .line 1172
    :cond_2e
    move-object/from16 v0, v55

    iget-object v0, v0, Lcom/android/exsettings/applications/RunningState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    move-object/from16 v63, v0

    if-eqz v63, :cond_2d

    .line 1173
    move-object/from16 v0, v55

    iget-object v0, v0, Lcom/android/exsettings/applications/RunningState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    iget v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->clientLabel:I

    move/from16 v63, v0

    if-eqz v63, :cond_2d

    .line 1174
    const/16 v63, 0x0

    move/from16 v0, v63

    move-object/from16 v1, v41

    iput-boolean v0, v1, Lcom/android/exsettings/applications/RunningState$ProcessItem;->mIsStarted:Z

    .line 1175
    move-object/from16 v0, v41

    iget-wide v0, v0, Lcom/android/exsettings/applications/RunningState$ProcessItem;->mActiveSince:J

    move-wide/from16 v64, v0

    move-object/from16 v0, v55

    iget-object v0, v0, Lcom/android/exsettings/applications/RunningState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    iget-wide v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->activeSince:J

    move-wide/from16 v66, v0

    cmp-long v63, v64, v66

    if-lez v63, :cond_2d

    .line 1176
    move-object/from16 v0, v55

    iget-object v0, v0, Lcom/android/exsettings/applications/RunningState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    iget-wide v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->activeSince:J

    move-wide/from16 v64, v0

    move-wide/from16 v0, v64

    move-object/from16 v2, v41

    iput-wide v0, v2, Lcom/android/exsettings/applications/RunningState$ProcessItem;->mActiveSince:J

    goto :goto_16

    .line 1180
    .end local v55    # "si":Lcom/android/exsettings/applications/RunningState$ServiceItem;
    :cond_2f
    move-object/from16 v0, v59

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_15

    .line 1161
    .end local v41    # "pi":Lcom/android/exsettings/applications/RunningState$ProcessItem;
    .end local v56    # "si$iterator":Ljava/util/Iterator;
    :cond_30
    add-int/lit8 v27, v27, 0x1

    goto/16 :goto_14

    .line 1184
    .end local v42    # "pi$iterator":Ljava/util/Iterator;
    :cond_31
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/applications/RunningState;->mServiceProcessComparator:Lcom/android/exsettings/applications/RunningState$ServiceProcessComparator;

    move-object/from16 v63, v0

    move-object/from16 v0, v59

    move-object/from16 v1, v63

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1186
    new-instance v33, Ljava/util/ArrayList;

    invoke-direct/range {v33 .. v33}, Ljava/util/ArrayList;-><init>()V

    .line 1187
    .local v33, "newItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/exsettings/applications/RunningState$BaseItem;>;"
    new-instance v34, Ljava/util/ArrayList;

    invoke-direct/range {v34 .. v34}, Ljava/util/ArrayList;-><init>()V

    .line 1188
    .local v34, "newMergedItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/exsettings/applications/RunningState$MergedItem;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/applications/RunningState;->mProcessItems:Ljava/util/ArrayList;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Ljava/util/ArrayList;->clear()V

    .line 1189
    const/16 v27, 0x0

    :goto_17
    invoke-virtual/range {v59 .. v59}, Ljava/util/ArrayList;->size()I

    move-result v63

    move/from16 v0, v27

    move/from16 v1, v63

    if-ge v0, v1, :cond_3b

    .line 1190
    move-object/from16 v0, v59

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Lcom/android/exsettings/applications/RunningState$ProcessItem;

    .line 1191
    .restart local v41    # "pi":Lcom/android/exsettings/applications/RunningState$ProcessItem;
    const/16 v63, 0x0

    move/from16 v0, v63

    move-object/from16 v1, v41

    iput-boolean v0, v1, Lcom/android/exsettings/applications/RunningState$ProcessItem;->mNeedDivider:Z

    .line 1193
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/applications/RunningState;->mProcessItems:Ljava/util/ArrayList;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Ljava/util/ArrayList;->size()I

    move-result v23

    .line 1195
    .local v23, "firstProc":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/applications/RunningState;->mProcessItems:Ljava/util/ArrayList;

    move-object/from16 v63, v0

    move-object/from16 v0, v41

    move-object/from16 v1, v33

    move-object/from16 v2, v63

    invoke-virtual {v0, v1, v2}, Lcom/android/exsettings/applications/RunningState$ProcessItem;->addDependentProcesses(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1197
    move-object/from16 v0, v33

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1198
    move-object/from16 v0, v41

    iget v0, v0, Lcom/android/exsettings/applications/RunningState$ProcessItem;->mPid:I

    move/from16 v63, v0

    if-lez v63, :cond_32

    .line 1199
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/applications/RunningState;->mProcessItems:Ljava/util/ArrayList;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1203
    :cond_32
    const/16 v28, 0x0

    .line 1204
    .local v28, "mergedItem":Lcom/android/exsettings/applications/RunningState$MergedItem;
    const/16 v26, 0x0

    .line 1205
    .local v26, "haveAllMerged":Z
    const/16 v30, 0x0

    .line 1206
    .local v30, "needDivider":Z
    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/android/exsettings/applications/RunningState$ProcessItem;->mServices:Ljava/util/HashMap;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v63

    invoke-interface/range {v63 .. v63}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v56

    .end local v28    # "mergedItem":Lcom/android/exsettings/applications/RunningState$MergedItem;
    .restart local v56    # "si$iterator":Ljava/util/Iterator;
    :goto_18
    invoke-interface/range {v56 .. v56}, Ljava/util/Iterator;->hasNext()Z

    move-result v63

    if-eqz v63, :cond_35

    invoke-interface/range {v56 .. v56}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v55

    check-cast v55, Lcom/android/exsettings/applications/RunningState$ServiceItem;

    .line 1207
    .restart local v55    # "si":Lcom/android/exsettings/applications/RunningState$ServiceItem;
    move/from16 v0, v30

    move-object/from16 v1, v55

    iput-boolean v0, v1, Lcom/android/exsettings/applications/RunningState$ServiceItem;->mNeedDivider:Z

    .line 1208
    const/16 v30, 0x1

    .line 1209
    move-object/from16 v0, v33

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1210
    move-object/from16 v0, v55

    iget-object v0, v0, Lcom/android/exsettings/applications/RunningState$ServiceItem;->mMergedItem:Lcom/android/exsettings/applications/RunningState$MergedItem;

    move-object/from16 v63, v0

    if-eqz v63, :cond_34

    .line 1211
    if-eqz v28, :cond_33

    move-object/from16 v0, v55

    iget-object v0, v0, Lcom/android/exsettings/applications/RunningState$ServiceItem;->mMergedItem:Lcom/android/exsettings/applications/RunningState$MergedItem;

    move-object/from16 v63, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v63

    if-eq v0, v1, :cond_33

    .line 1212
    const/16 v26, 0x0

    .line 1214
    :cond_33
    move-object/from16 v0, v55

    iget-object v0, v0, Lcom/android/exsettings/applications/RunningState$ServiceItem;->mMergedItem:Lcom/android/exsettings/applications/RunningState$MergedItem;

    move-object/from16 v28, v0

    .local v28, "mergedItem":Lcom/android/exsettings/applications/RunningState$MergedItem;
    goto :goto_18

    .line 1216
    .end local v28    # "mergedItem":Lcom/android/exsettings/applications/RunningState$MergedItem;
    :cond_34
    const/16 v26, 0x0

    goto :goto_18

    .line 1220
    .end local v55    # "si":Lcom/android/exsettings/applications/RunningState$ServiceItem;
    :cond_35
    if-eqz v26, :cond_36

    if-nez v28, :cond_37

    .line 1223
    :cond_36
    new-instance v28, Lcom/android/exsettings/applications/RunningState$MergedItem;

    move-object/from16 v0, v41

    iget v0, v0, Lcom/android/exsettings/applications/RunningState$ProcessItem;->mUserId:I

    move/from16 v63, v0

    move-object/from16 v0, v28

    move/from16 v1, v63

    invoke-direct {v0, v1}, Lcom/android/exsettings/applications/RunningState$MergedItem;-><init>(I)V

    .line 1224
    .restart local v28    # "mergedItem":Lcom/android/exsettings/applications/RunningState$MergedItem;
    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/android/exsettings/applications/RunningState$ProcessItem;->mServices:Ljava/util/HashMap;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v63

    invoke-interface/range {v63 .. v63}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v56

    :goto_19
    invoke-interface/range {v56 .. v56}, Ljava/util/Iterator;->hasNext()Z

    move-result v63

    if-eqz v63, :cond_39

    invoke-interface/range {v56 .. v56}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v55

    check-cast v55, Lcom/android/exsettings/applications/RunningState$ServiceItem;

    .line 1225
    .restart local v55    # "si":Lcom/android/exsettings/applications/RunningState$ServiceItem;
    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/exsettings/applications/RunningState$MergedItem;->mServices:Ljava/util/ArrayList;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1226
    move-object/from16 v0, v28

    move-object/from16 v1, v55

    iput-object v0, v1, Lcom/android/exsettings/applications/RunningState$ServiceItem;->mMergedItem:Lcom/android/exsettings/applications/RunningState$MergedItem;

    goto :goto_19

    .line 1221
    .end local v28    # "mergedItem":Lcom/android/exsettings/applications/RunningState$MergedItem;
    .end local v55    # "si":Lcom/android/exsettings/applications/RunningState$ServiceItem;
    :cond_37
    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/exsettings/applications/RunningState$MergedItem;->mServices:Ljava/util/ArrayList;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Ljava/util/ArrayList;->size()I

    move-result v63

    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/android/exsettings/applications/RunningState$ProcessItem;->mServices:Ljava/util/HashMap;

    move-object/from16 v64, v0

    invoke-virtual/range {v64 .. v64}, Ljava/util/HashMap;->size()I

    move-result v64

    move/from16 v0, v63

    move/from16 v1, v64

    if-ne v0, v1, :cond_36

    .line 1235
    :cond_38
    const/16 v63, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, p1

    move/from16 v2, v63

    invoke-virtual {v0, v1, v2}, Lcom/android/exsettings/applications/RunningState$MergedItem;->update(Landroid/content/Context;Z)Z

    .line 1236
    move-object/from16 v0, v28

    iget v0, v0, Lcom/android/exsettings/applications/RunningState$MergedItem;->mUserId:I

    move/from16 v63, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/exsettings/applications/RunningState;->mMyUserId:I

    move/from16 v64, v0

    move/from16 v0, v63

    move/from16 v1, v64

    if-eq v0, v1, :cond_3a

    .line 1237
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/applications/RunningState;->mOtherUserMergedItems:Landroid/util/SparseArray;

    move-object/from16 v63, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v34

    move-object/from16 v3, v63

    move-object/from16 v4, v28

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/exsettings/applications/RunningState;->addOtherUserItem(Landroid/content/Context;Ljava/util/ArrayList;Landroid/util/SparseArray;Lcom/android/exsettings/applications/RunningState$MergedItem;)V

    .line 1189
    :goto_1a
    add-int/lit8 v27, v27, 0x1

    goto/16 :goto_17

    .line 1228
    .restart local v28    # "mergedItem":Lcom/android/exsettings/applications/RunningState$MergedItem;
    :cond_39
    move-object/from16 v0, v41

    move-object/from16 v1, v28

    iput-object v0, v1, Lcom/android/exsettings/applications/RunningState$MergedItem;->mProcess:Lcom/android/exsettings/applications/RunningState$ProcessItem;

    .line 1229
    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/exsettings/applications/RunningState$MergedItem;->mOtherProcesses:Ljava/util/ArrayList;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Ljava/util/ArrayList;->clear()V

    .line 1230
    move/from16 v29, v23

    .local v29, "mpi":I
    :goto_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/applications/RunningState;->mProcessItems:Ljava/util/ArrayList;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Ljava/util/ArrayList;->size()I

    move-result v63

    add-int/lit8 v63, v63, -0x1

    move/from16 v0, v29

    move/from16 v1, v63

    if-ge v0, v1, :cond_38

    .line 1231
    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/exsettings/applications/RunningState$MergedItem;->mOtherProcesses:Ljava/util/ArrayList;

    move-object/from16 v64, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/applications/RunningState;->mProcessItems:Ljava/util/ArrayList;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v63

    check-cast v63, Lcom/android/exsettings/applications/RunningState$ProcessItem;

    move-object/from16 v0, v64

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1230
    add-int/lit8 v29, v29, 0x1

    goto :goto_1b

    .line 1239
    .end local v28    # "mergedItem":Lcom/android/exsettings/applications/RunningState$MergedItem;
    .end local v29    # "mpi":I
    :cond_3a
    move-object/from16 v0, v34

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1a

    .line 1245
    .end local v23    # "firstProc":I
    .end local v26    # "haveAllMerged":Z
    .end local v30    # "needDivider":Z
    .end local v41    # "pi":Lcom/android/exsettings/applications/RunningState$ProcessItem;
    .end local v56    # "si$iterator":Ljava/util/Iterator;
    :cond_3b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/applications/RunningState;->mInterestingProcesses:Ljava/util/ArrayList;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 1246
    const/16 v27, 0x0

    :goto_1c
    move/from16 v0, v27

    if-ge v0, v8, :cond_3f

    .line 1247
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/applications/RunningState;->mInterestingProcesses:Ljava/util/ArrayList;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v47

    check-cast v47, Lcom/android/exsettings/applications/RunningState$ProcessItem;

    .line 1248
    .restart local v47    # "proc":Lcom/android/exsettings/applications/RunningState$ProcessItem;
    move-object/from16 v0, v47

    iget-object v0, v0, Lcom/android/exsettings/applications/RunningState$ProcessItem;->mClient:Lcom/android/exsettings/applications/RunningState$ProcessItem;

    move-object/from16 v63, v0

    if-nez v63, :cond_3d

    move-object/from16 v0, v47

    iget-object v0, v0, Lcom/android/exsettings/applications/RunningState$ProcessItem;->mServices:Ljava/util/HashMap;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Ljava/util/HashMap;->size()I

    move-result v63

    if-gtz v63, :cond_3d

    .line 1249
    move-object/from16 v0, v47

    iget-object v0, v0, Lcom/android/exsettings/applications/RunningState$ProcessItem;->mMergedItem:Lcom/android/exsettings/applications/RunningState$MergedItem;

    move-object/from16 v63, v0

    if-nez v63, :cond_3c

    .line 1250
    new-instance v63, Lcom/android/exsettings/applications/RunningState$MergedItem;

    move-object/from16 v0, v47

    iget v0, v0, Lcom/android/exsettings/applications/RunningState$ProcessItem;->mUserId:I

    move/from16 v64, v0

    invoke-direct/range {v63 .. v64}, Lcom/android/exsettings/applications/RunningState$MergedItem;-><init>(I)V

    move-object/from16 v0, v63

    move-object/from16 v1, v47

    iput-object v0, v1, Lcom/android/exsettings/applications/RunningState$ProcessItem;->mMergedItem:Lcom/android/exsettings/applications/RunningState$MergedItem;

    .line 1251
    move-object/from16 v0, v47

    iget-object v0, v0, Lcom/android/exsettings/applications/RunningState$ProcessItem;->mMergedItem:Lcom/android/exsettings/applications/RunningState$MergedItem;

    move-object/from16 v63, v0

    move-object/from16 v0, v47

    move-object/from16 v1, v63

    iput-object v0, v1, Lcom/android/exsettings/applications/RunningState$MergedItem;->mProcess:Lcom/android/exsettings/applications/RunningState$ProcessItem;

    .line 1253
    :cond_3c
    move-object/from16 v0, v47

    iget-object v0, v0, Lcom/android/exsettings/applications/RunningState$ProcessItem;->mMergedItem:Lcom/android/exsettings/applications/RunningState$MergedItem;

    move-object/from16 v63, v0

    const/16 v64, 0x0

    move-object/from16 v0, v63

    move-object/from16 v1, p1

    move/from16 v2, v64

    invoke-virtual {v0, v1, v2}, Lcom/android/exsettings/applications/RunningState$MergedItem;->update(Landroid/content/Context;Z)Z

    .line 1254
    move-object/from16 v0, v47

    iget-object v0, v0, Lcom/android/exsettings/applications/RunningState$ProcessItem;->mMergedItem:Lcom/android/exsettings/applications/RunningState$MergedItem;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    iget v0, v0, Lcom/android/exsettings/applications/RunningState$MergedItem;->mUserId:I

    move/from16 v63, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/exsettings/applications/RunningState;->mMyUserId:I

    move/from16 v64, v0

    move/from16 v0, v63

    move/from16 v1, v64

    if-eq v0, v1, :cond_3e

    .line 1255
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/applications/RunningState;->mOtherUserMergedItems:Landroid/util/SparseArray;

    move-object/from16 v63, v0

    .line 1256
    move-object/from16 v0, v47

    iget-object v0, v0, Lcom/android/exsettings/applications/RunningState$ProcessItem;->mMergedItem:Lcom/android/exsettings/applications/RunningState$MergedItem;

    move-object/from16 v64, v0

    .line 1255
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v34

    move-object/from16 v3, v63

    move-object/from16 v4, v64

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/exsettings/applications/RunningState;->addOtherUserItem(Landroid/content/Context;Ljava/util/ArrayList;Landroid/util/SparseArray;Lcom/android/exsettings/applications/RunningState$MergedItem;)V

    .line 1260
    :goto_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/applications/RunningState;->mProcessItems:Ljava/util/ArrayList;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1246
    :cond_3d
    add-int/lit8 v27, v27, 0x1

    goto/16 :goto_1c

    .line 1258
    :cond_3e
    move-object/from16 v0, v47

    iget-object v0, v0, Lcom/android/exsettings/applications/RunningState$ProcessItem;->mMergedItem:Lcom/android/exsettings/applications/RunningState$MergedItem;

    move-object/from16 v63, v0

    const/16 v64, 0x0

    move-object/from16 v0, v34

    move/from16 v1, v64

    move-object/from16 v2, v63

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_1d

    .line 1266
    .end local v47    # "proc":Lcom/android/exsettings/applications/RunningState$ProcessItem;
    :cond_3f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/applications/RunningState;->mOtherUserMergedItems:Landroid/util/SparseArray;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Landroid/util/SparseArray;->size()I

    move-result v12

    .line 1267
    .local v12, "NU":I
    const/16 v27, 0x0

    :goto_1e
    move/from16 v0, v27

    if-ge v0, v12, :cond_41

    .line 1268
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/applications/RunningState;->mOtherUserMergedItems:Landroid/util/SparseArray;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v62

    check-cast v62, Lcom/android/exsettings/applications/RunningState$MergedItem;

    .line 1269
    .local v62, "user":Lcom/android/exsettings/applications/RunningState$MergedItem;
    move-object/from16 v0, v62

    iget v0, v0, Lcom/android/exsettings/applications/RunningState$MergedItem;->mCurSeq:I

    move/from16 v63, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/exsettings/applications/RunningState;->mSequence:I

    move/from16 v64, v0

    move/from16 v0, v63

    move/from16 v1, v64

    if-ne v0, v1, :cond_40

    .line 1270
    const/16 v63, 0x0

    move-object/from16 v0, v62

    move-object/from16 v1, p1

    move/from16 v2, v63

    invoke-virtual {v0, v1, v2}, Lcom/android/exsettings/applications/RunningState$MergedItem;->update(Landroid/content/Context;Z)Z

    .line 1267
    :cond_40
    add-int/lit8 v27, v27, 0x1

    goto :goto_1e

    .line 1274
    .end local v62    # "user":Lcom/android/exsettings/applications/RunningState$MergedItem;
    :cond_41
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/applications/RunningState;->mLock:Ljava/lang/Object;

    move-object/from16 v64, v0

    monitor-enter v64

    .line 1275
    :try_start_0
    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/applications/RunningState;->mItems:Ljava/util/ArrayList;

    .line 1276
    move-object/from16 v0, v34

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/applications/RunningState;->mMergedItems:Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v64

    .line 1282
    .end local v12    # "NU":I
    .end local v33    # "newItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/exsettings/applications/RunningState$BaseItem;>;"
    .end local v34    # "newMergedItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/exsettings/applications/RunningState$MergedItem;>;"
    .end local v59    # "sortedProcesses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/exsettings/applications/RunningState$ProcessItem;>;"
    :cond_42
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/applications/RunningState;->mAllProcessItems:Ljava/util/ArrayList;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Ljava/util/ArrayList;->clear()V

    .line 1283
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/applications/RunningState;->mAllProcessItems:Ljava/util/ArrayList;

    move-object/from16 v63, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/applications/RunningState;->mProcessItems:Ljava/util/ArrayList;

    move-object/from16 v64, v0

    invoke-virtual/range {v63 .. v64}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1284
    const/16 v36, 0x0

    .line 1285
    .local v36, "numBackgroundProcesses":I
    const/16 v37, 0x0

    .line 1286
    .local v37, "numForegroundProcesses":I
    const/16 v39, 0x0

    .line 1287
    .local v39, "numServiceProcesses":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/applications/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Landroid/util/SparseArray;->size()I

    move-result v10

    .line 1288
    const/16 v27, 0x0

    :goto_1f
    move/from16 v0, v27

    if-ge v0, v10, :cond_46

    .line 1289
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/applications/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v47

    check-cast v47, Lcom/android/exsettings/applications/RunningState$ProcessItem;

    .line 1290
    .restart local v47    # "proc":Lcom/android/exsettings/applications/RunningState$ProcessItem;
    move-object/from16 v0, v47

    iget v0, v0, Lcom/android/exsettings/applications/RunningState$ProcessItem;->mCurSeq:I

    move/from16 v63, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/exsettings/applications/RunningState;->mSequence:I

    move/from16 v64, v0

    move/from16 v0, v63

    move/from16 v1, v64

    if-eq v0, v1, :cond_45

    .line 1293
    move-object/from16 v0, v47

    iget-object v0, v0, Lcom/android/exsettings/applications/RunningState$ProcessItem;->mRunningProcessInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    move/from16 v63, v0

    .line 1294
    const/16 v64, 0x190

    .line 1293
    move/from16 v0, v63

    move/from16 v1, v64

    if-lt v0, v1, :cond_43

    .line 1295
    add-int/lit8 v36, v36, 0x1

    .line 1296
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/applications/RunningState;->mAllProcessItems:Ljava/util/ArrayList;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1288
    :goto_20
    add-int/lit8 v27, v27, 0x1

    goto :goto_1f

    .line 1274
    .end local v36    # "numBackgroundProcesses":I
    .end local v37    # "numForegroundProcesses":I
    .end local v39    # "numServiceProcesses":I
    .end local v47    # "proc":Lcom/android/exsettings/applications/RunningState$ProcessItem;
    .restart local v12    # "NU":I
    .restart local v33    # "newItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/exsettings/applications/RunningState$BaseItem;>;"
    .restart local v34    # "newMergedItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/exsettings/applications/RunningState$MergedItem;>;"
    .restart local v59    # "sortedProcesses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/exsettings/applications/RunningState$ProcessItem;>;"
    :catchall_0
    move-exception v63

    monitor-exit v64

    throw v63

    .line 1297
    .end local v12    # "NU":I
    .end local v33    # "newItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/exsettings/applications/RunningState$BaseItem;>;"
    .end local v34    # "newMergedItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/exsettings/applications/RunningState$MergedItem;>;"
    .end local v59    # "sortedProcesses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/exsettings/applications/RunningState$ProcessItem;>;"
    .restart local v36    # "numBackgroundProcesses":I
    .restart local v37    # "numForegroundProcesses":I
    .restart local v39    # "numServiceProcesses":I
    .restart local v47    # "proc":Lcom/android/exsettings/applications/RunningState$ProcessItem;
    :cond_43
    move-object/from16 v0, v47

    iget-object v0, v0, Lcom/android/exsettings/applications/RunningState$ProcessItem;->mRunningProcessInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    move/from16 v63, v0

    .line 1298
    const/16 v64, 0xc8

    .line 1297
    move/from16 v0, v63

    move/from16 v1, v64

    if-gt v0, v1, :cond_44

    .line 1299
    add-int/lit8 v37, v37, 0x1

    .line 1300
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/applications/RunningState;->mAllProcessItems:Ljava/util/ArrayList;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_20

    .line 1302
    :cond_44
    const-string/jumbo v63, "RunningState"

    new-instance v64, Ljava/lang/StringBuilder;

    invoke-direct/range {v64 .. v64}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v65, "Unknown non-service process: "

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    .line 1303
    move-object/from16 v0, v47

    iget-object v0, v0, Lcom/android/exsettings/applications/RunningState$ProcessItem;->mProcessName:Ljava/lang/String;

    move-object/from16 v65, v0

    .line 1302
    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    .line 1303
    const-string/jumbo v65, " #"

    .line 1302
    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    .line 1303
    move-object/from16 v0, v47

    iget v0, v0, Lcom/android/exsettings/applications/RunningState$ProcessItem;->mPid:I

    move/from16 v65, v0

    .line 1302
    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v64

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_20

    .line 1306
    :cond_45
    add-int/lit8 v39, v39, 0x1

    goto :goto_20

    .line 1310
    .end local v47    # "proc":Lcom/android/exsettings/applications/RunningState$ProcessItem;
    :cond_46
    const-wide/16 v14, 0x0

    .line 1311
    .local v14, "backgroundProcessMemory":J
    const-wide/16 v24, 0x0

    .line 1312
    .local v24, "foregroundProcessMemory":J
    const-wide/16 v52, 0x0

    .line 1313
    .local v52, "serviceProcessMemory":J
    const/16 v31, 0x0

    .line 1314
    .local v31, "newBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/exsettings/applications/RunningState$MergedItem;>;"
    const/16 v35, 0x0

    .line 1315
    .local v35, "newUserBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/exsettings/applications/RunningState$MergedItem;>;"
    const/16 v21, 0x0

    .line 1317
    .local v21, "diffUsers":Z
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/applications/RunningState;->mAllProcessItems:Ljava/util/ArrayList;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Ljava/util/ArrayList;->size()I

    move-result v38

    .line 1318
    .local v38, "numProc":I
    move/from16 v0, v38

    new-array v0, v0, [I

    move-object/from16 v44, v0

    .line 1319
    .local v44, "pids":[I
    const/16 v27, 0x0

    :goto_21
    move/from16 v0, v27

    move/from16 v1, v38

    if-ge v0, v1, :cond_47

    .line 1320
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/applications/RunningState;->mAllProcessItems:Ljava/util/ArrayList;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v63

    check-cast v63, Lcom/android/exsettings/applications/RunningState$ProcessItem;

    move-object/from16 v0, v63

    iget v0, v0, Lcom/android/exsettings/applications/RunningState$ProcessItem;->mPid:I

    move/from16 v63, v0

    aput v63, v44, v27

    .line 1319
    add-int/lit8 v27, v27, 0x1

    goto :goto_21

    .line 1322
    :cond_47
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v63

    move-object/from16 v0, v63

    move-object/from16 v1, v44

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->getProcessPss([I)[J
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v50

    .line 1324
    .local v50, "pss":[J
    const/16 v16, 0x0

    .line 1325
    .local v16, "bgIndex":I
    const/16 v27, 0x0

    move-object/from16 v32, v31

    .end local v21    # "diffUsers":Z
    .end local v31    # "newBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/exsettings/applications/RunningState$MergedItem;>;"
    .local v32, "newBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/exsettings/applications/RunningState$MergedItem;>;"
    :goto_22
    :try_start_2
    move-object/from16 v0, v44

    array-length v0, v0

    move/from16 v63, v0

    move/from16 v0, v27

    move/from16 v1, v63

    if-ge v0, v1, :cond_51

    .line 1326
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/applications/RunningState;->mAllProcessItems:Ljava/util/ArrayList;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v47

    check-cast v47, Lcom/android/exsettings/applications/RunningState$ProcessItem;

    .line 1327
    .restart local v47    # "proc":Lcom/android/exsettings/applications/RunningState$ProcessItem;
    aget-wide v64, v50, v27

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/exsettings/applications/RunningState;->mSequence:I

    move/from16 v63, v0

    move-object/from16 v0, v47

    move-object/from16 v1, p1

    move-wide/from16 v2, v64

    move/from16 v4, v63

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/exsettings/applications/RunningState$ProcessItem;->updateSize(Landroid/content/Context;JI)Z

    move-result v63

    or-int v18, v18, v63

    .line 1328
    .local v18, "changed":Z
    move-object/from16 v0, v47

    iget v0, v0, Lcom/android/exsettings/applications/RunningState$ProcessItem;->mCurSeq:I

    move/from16 v63, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/exsettings/applications/RunningState;->mSequence:I

    move/from16 v64, v0

    move/from16 v0, v63

    move/from16 v1, v64

    if-ne v0, v1, :cond_48

    .line 1329
    move-object/from16 v0, v47

    iget-wide v0, v0, Lcom/android/exsettings/applications/RunningState$ProcessItem;->mSize:J

    move-wide/from16 v64, v0

    add-long v52, v52, v64

    move-object/from16 v31, v32

    .line 1325
    .end local v32    # "newBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/exsettings/applications/RunningState$MergedItem;>;"
    .local v31, "newBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/exsettings/applications/RunningState$MergedItem;>;"
    :goto_23
    add-int/lit8 v27, v27, 0x1

    move-object/from16 v32, v31

    .end local v31    # "newBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/exsettings/applications/RunningState$MergedItem;>;"
    .restart local v32    # "newBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/exsettings/applications/RunningState$MergedItem;>;"
    goto :goto_22

    .line 1330
    :cond_48
    move-object/from16 v0, v47

    iget-object v0, v0, Lcom/android/exsettings/applications/RunningState$ProcessItem;->mRunningProcessInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    move/from16 v63, v0

    .line 1331
    const/16 v64, 0x190

    .line 1330
    move/from16 v0, v63

    move/from16 v1, v64

    if-lt v0, v1, :cond_50

    .line 1332
    move-object/from16 v0, v47

    iget-wide v0, v0, Lcom/android/exsettings/applications/RunningState$ProcessItem;->mSize:J

    move-wide/from16 v64, v0

    add-long v14, v14, v64

    .line 1334
    if-eqz v32, :cond_4a

    .line 1335
    new-instance v28, Lcom/android/exsettings/applications/RunningState$MergedItem;

    move-object/from16 v0, v47

    iget v0, v0, Lcom/android/exsettings/applications/RunningState$ProcessItem;->mUserId:I

    move/from16 v63, v0

    move-object/from16 v0, v28

    move/from16 v1, v63

    invoke-direct {v0, v1}, Lcom/android/exsettings/applications/RunningState$MergedItem;-><init>(I)V

    move-object/from16 v0, v28

    move-object/from16 v1, v47

    iput-object v0, v1, Lcom/android/exsettings/applications/RunningState$ProcessItem;->mMergedItem:Lcom/android/exsettings/applications/RunningState$MergedItem;

    .line 1336
    .restart local v28    # "mergedItem":Lcom/android/exsettings/applications/RunningState$MergedItem;
    move-object/from16 v0, v47

    iget-object v0, v0, Lcom/android/exsettings/applications/RunningState$ProcessItem;->mMergedItem:Lcom/android/exsettings/applications/RunningState$MergedItem;

    move-object/from16 v63, v0

    move-object/from16 v0, v47

    move-object/from16 v1, v63

    iput-object v0, v1, Lcom/android/exsettings/applications/RunningState$MergedItem;->mProcess:Lcom/android/exsettings/applications/RunningState$ProcessItem;

    .line 1337
    move-object/from16 v0, v28

    iget v0, v0, Lcom/android/exsettings/applications/RunningState$MergedItem;->mUserId:I

    move/from16 v63, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/exsettings/applications/RunningState;->mMyUserId:I

    move/from16 v64, v0

    move/from16 v0, v63

    move/from16 v1, v64

    if-eq v0, v1, :cond_49

    const/16 v63, 0x1

    :goto_24
    or-int v21, v21, v63

    .line 1338
    .local v21, "diffUsers":Z
    move-object/from16 v0, v32

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    move-object/from16 v31, v32

    .line 1356
    .end local v21    # "diffUsers":Z
    .end local v32    # "newBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/exsettings/applications/RunningState$MergedItem;>;"
    .restart local v31    # "newBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/exsettings/applications/RunningState$MergedItem;>;"
    :goto_25
    const/16 v63, 0x1

    :try_start_3
    move-object/from16 v0, v28

    move-object/from16 v1, p1

    move/from16 v2, v63

    invoke-virtual {v0, v1, v2}, Lcom/android/exsettings/applications/RunningState$MergedItem;->update(Landroid/content/Context;Z)Z

    .line 1357
    move-object/from16 v0, v28

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/exsettings/applications/RunningState$MergedItem;->updateSize(Landroid/content/Context;)Z
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    .line 1358
    add-int/lit8 v16, v16, 0x1

    goto :goto_23

    .line 1337
    .end local v31    # "newBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/exsettings/applications/RunningState$MergedItem;>;"
    .restart local v32    # "newBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/exsettings/applications/RunningState$MergedItem;>;"
    :cond_49
    const/16 v63, 0x0

    goto :goto_24

    .line 1340
    .end local v28    # "mergedItem":Lcom/android/exsettings/applications/RunningState$MergedItem;
    :cond_4a
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/applications/RunningState;->mBackgroundItems:Ljava/util/ArrayList;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Ljava/util/ArrayList;->size()I

    move-result v63

    move/from16 v0, v16

    move/from16 v1, v63

    if-ge v0, v1, :cond_4b

    .line 1341
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/applications/RunningState;->mBackgroundItems:Ljava/util/ArrayList;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v63

    check-cast v63, Lcom/android/exsettings/applications/RunningState$MergedItem;

    move-object/from16 v0, v63

    iget-object v0, v0, Lcom/android/exsettings/applications/RunningState$MergedItem;->mProcess:Lcom/android/exsettings/applications/RunningState$ProcessItem;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    move-object/from16 v1, v47

    if-eq v0, v1, :cond_4f

    .line 1342
    :cond_4b
    new-instance v31, Ljava/util/ArrayList;

    move-object/from16 v0, v31

    move/from16 v1, v36

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    .line 1343
    .end local v32    # "newBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/exsettings/applications/RunningState$MergedItem;>;"
    .restart local v31    # "newBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/exsettings/applications/RunningState$MergedItem;>;"
    const/16 v17, 0x0

    .local v17, "bgi":I
    :goto_26
    move/from16 v0, v17

    move/from16 v1, v16

    if-ge v0, v1, :cond_4d

    .line 1344
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/applications/RunningState;->mBackgroundItems:Ljava/util/ArrayList;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/android/exsettings/applications/RunningState$MergedItem;

    .line 1345
    .restart local v28    # "mergedItem":Lcom/android/exsettings/applications/RunningState$MergedItem;
    move-object/from16 v0, v28

    iget v0, v0, Lcom/android/exsettings/applications/RunningState$MergedItem;->mUserId:I

    move/from16 v63, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/exsettings/applications/RunningState;->mMyUserId:I

    move/from16 v64, v0

    move/from16 v0, v63

    move/from16 v1, v64

    if-eq v0, v1, :cond_4c

    const/16 v63, 0x1

    :goto_27
    or-int v21, v21, v63

    .line 1346
    .restart local v21    # "diffUsers":Z
    move-object/from16 v0, v31

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1343
    add-int/lit8 v17, v17, 0x1

    goto :goto_26

    .line 1345
    .end local v21    # "diffUsers":Z
    :cond_4c
    const/16 v63, 0x0

    goto :goto_27

    .line 1348
    .end local v28    # "mergedItem":Lcom/android/exsettings/applications/RunningState$MergedItem;
    :cond_4d
    new-instance v28, Lcom/android/exsettings/applications/RunningState$MergedItem;

    move-object/from16 v0, v47

    iget v0, v0, Lcom/android/exsettings/applications/RunningState$ProcessItem;->mUserId:I

    move/from16 v63, v0

    move-object/from16 v0, v28

    move/from16 v1, v63

    invoke-direct {v0, v1}, Lcom/android/exsettings/applications/RunningState$MergedItem;-><init>(I)V

    move-object/from16 v0, v28

    move-object/from16 v1, v47

    iput-object v0, v1, Lcom/android/exsettings/applications/RunningState$ProcessItem;->mMergedItem:Lcom/android/exsettings/applications/RunningState$MergedItem;

    .line 1349
    .restart local v28    # "mergedItem":Lcom/android/exsettings/applications/RunningState$MergedItem;
    move-object/from16 v0, v47

    iget-object v0, v0, Lcom/android/exsettings/applications/RunningState$ProcessItem;->mMergedItem:Lcom/android/exsettings/applications/RunningState$MergedItem;

    move-object/from16 v63, v0

    move-object/from16 v0, v47

    move-object/from16 v1, v63

    iput-object v0, v1, Lcom/android/exsettings/applications/RunningState$MergedItem;->mProcess:Lcom/android/exsettings/applications/RunningState$ProcessItem;

    .line 1350
    move-object/from16 v0, v28

    iget v0, v0, Lcom/android/exsettings/applications/RunningState$MergedItem;->mUserId:I

    move/from16 v63, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/exsettings/applications/RunningState;->mMyUserId:I

    move/from16 v64, v0

    move/from16 v0, v63

    move/from16 v1, v64

    if-eq v0, v1, :cond_4e

    const/16 v63, 0x1

    :goto_28
    or-int v21, v21, v63

    .line 1351
    .restart local v21    # "diffUsers":Z
    move-object/from16 v0, v31

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_25

    .line 1364
    .end local v16    # "bgIndex":I
    .end local v17    # "bgi":I
    .end local v18    # "changed":Z
    .end local v21    # "diffUsers":Z
    .end local v28    # "mergedItem":Lcom/android/exsettings/applications/RunningState$MergedItem;
    .end local v31    # "newBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/exsettings/applications/RunningState$MergedItem;>;"
    .end local v38    # "numProc":I
    .end local v44    # "pids":[I
    .end local v47    # "proc":Lcom/android/exsettings/applications/RunningState$ProcessItem;
    .end local v50    # "pss":[J
    :catch_0
    move-exception v22

    .line 1367
    :goto_29
    if-nez v31, :cond_53

    .line 1369
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/applications/RunningState;->mBackgroundItems:Ljava/util/ArrayList;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Ljava/util/ArrayList;->size()I

    move-result v63

    move/from16 v0, v63

    move/from16 v1, v36

    if-le v0, v1, :cond_53

    .line 1370
    new-instance v31, Ljava/util/ArrayList;

    move-object/from16 v0, v31

    move/from16 v1, v36

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1371
    .restart local v31    # "newBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/exsettings/applications/RunningState$MergedItem;>;"
    const/16 v17, 0x0

    .restart local v17    # "bgi":I
    :goto_2a
    move/from16 v0, v17

    move/from16 v1, v36

    if-ge v0, v1, :cond_53

    .line 1372
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/applications/RunningState;->mBackgroundItems:Ljava/util/ArrayList;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/android/exsettings/applications/RunningState$MergedItem;

    .line 1373
    .restart local v28    # "mergedItem":Lcom/android/exsettings/applications/RunningState$MergedItem;
    move-object/from16 v0, v28

    iget v0, v0, Lcom/android/exsettings/applications/RunningState$MergedItem;->mUserId:I

    move/from16 v63, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/exsettings/applications/RunningState;->mMyUserId:I

    move/from16 v64, v0

    move/from16 v0, v63

    move/from16 v1, v64

    if-eq v0, v1, :cond_52

    const/16 v63, 0x1

    :goto_2b
    or-int v21, v21, v63

    .line 1374
    .restart local v21    # "diffUsers":Z
    move-object/from16 v0, v31

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1371
    add-int/lit8 v17, v17, 0x1

    goto :goto_2a

    .line 1350
    .end local v21    # "diffUsers":Z
    .restart local v16    # "bgIndex":I
    .restart local v18    # "changed":Z
    .restart local v38    # "numProc":I
    .restart local v44    # "pids":[I
    .restart local v47    # "proc":Lcom/android/exsettings/applications/RunningState$ProcessItem;
    .restart local v50    # "pss":[J
    :cond_4e
    const/16 v63, 0x0

    goto :goto_28

    .line 1353
    .end local v17    # "bgi":I
    .end local v28    # "mergedItem":Lcom/android/exsettings/applications/RunningState$MergedItem;
    .end local v31    # "newBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/exsettings/applications/RunningState$MergedItem;>;"
    .restart local v32    # "newBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/exsettings/applications/RunningState$MergedItem;>;"
    :cond_4f
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/applications/RunningState;->mBackgroundItems:Ljava/util/ArrayList;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/android/exsettings/applications/RunningState$MergedItem;

    .restart local v28    # "mergedItem":Lcom/android/exsettings/applications/RunningState$MergedItem;
    move-object/from16 v31, v32

    .end local v32    # "newBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/exsettings/applications/RunningState$MergedItem;>;"
    .restart local v31    # "newBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/exsettings/applications/RunningState$MergedItem;>;"
    goto/16 :goto_25

    .line 1359
    .end local v28    # "mergedItem":Lcom/android/exsettings/applications/RunningState$MergedItem;
    .end local v31    # "newBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/exsettings/applications/RunningState$MergedItem;>;"
    .restart local v32    # "newBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/exsettings/applications/RunningState$MergedItem;>;"
    :cond_50
    move-object/from16 v0, v47

    iget-object v0, v0, Lcom/android/exsettings/applications/RunningState$ProcessItem;->mRunningProcessInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    move/from16 v63, v0

    .line 1360
    const/16 v64, 0xc8

    .line 1359
    move/from16 v0, v63

    move/from16 v1, v64

    if-gt v0, v1, :cond_5c

    .line 1361
    move-object/from16 v0, v47

    iget-wide v0, v0, Lcom/android/exsettings/applications/RunningState$ProcessItem;->mSize:J

    move-wide/from16 v64, v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1

    add-long v24, v24, v64

    move-object/from16 v31, v32

    .end local v32    # "newBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/exsettings/applications/RunningState$MergedItem;>;"
    .restart local v31    # "newBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/exsettings/applications/RunningState$MergedItem;>;"
    goto/16 :goto_23

    .end local v18    # "changed":Z
    .end local v31    # "newBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/exsettings/applications/RunningState$MergedItem;>;"
    .end local v47    # "proc":Lcom/android/exsettings/applications/RunningState$ProcessItem;
    .restart local v32    # "newBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/exsettings/applications/RunningState$MergedItem;>;"
    :cond_51
    move-object/from16 v31, v32

    .end local v32    # "newBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/exsettings/applications/RunningState$MergedItem;>;"
    .restart local v31    # "newBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/exsettings/applications/RunningState$MergedItem;>;"
    goto/16 :goto_29

    .line 1373
    .end local v16    # "bgIndex":I
    .end local v38    # "numProc":I
    .end local v44    # "pids":[I
    .end local v50    # "pss":[J
    .restart local v17    # "bgi":I
    .restart local v28    # "mergedItem":Lcom/android/exsettings/applications/RunningState$MergedItem;
    :cond_52
    const/16 v63, 0x0

    goto :goto_2b

    .line 1379
    .end local v17    # "bgi":I
    .end local v28    # "mergedItem":Lcom/android/exsettings/applications/RunningState$MergedItem;
    .end local v31    # "newBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/exsettings/applications/RunningState$MergedItem;>;"
    :cond_53
    if-eqz v31, :cond_54

    .line 1382
    if-nez v21, :cond_55

    .line 1384
    move-object/from16 v35, v31

    .line 1412
    .end local v35    # "newUserBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/exsettings/applications/RunningState$MergedItem;>;"
    :cond_54
    const/16 v27, 0x0

    :goto_2c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/applications/RunningState;->mMergedItems:Ljava/util/ArrayList;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Ljava/util/ArrayList;->size()I

    move-result v63

    move/from16 v0, v27

    move/from16 v1, v63

    if-ge v0, v1, :cond_59

    .line 1413
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/applications/RunningState;->mMergedItems:Ljava/util/ArrayList;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v63

    check-cast v63, Lcom/android/exsettings/applications/RunningState$MergedItem;

    move-object/from16 v0, v63

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/exsettings/applications/RunningState$MergedItem;->updateSize(Landroid/content/Context;)Z

    .line 1412
    add-int/lit8 v27, v27, 0x1

    goto :goto_2c

    .line 1388
    .restart local v35    # "newUserBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/exsettings/applications/RunningState$MergedItem;>;"
    :cond_55
    new-instance v35, Ljava/util/ArrayList;

    .end local v35    # "newUserBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/exsettings/applications/RunningState$MergedItem;>;"
    invoke-direct/range {v35 .. v35}, Ljava/util/ArrayList;-><init>()V

    .line 1389
    .local v35, "newUserBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/exsettings/applications/RunningState$MergedItem;>;"
    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 1390
    .local v7, "NB":I
    const/16 v27, 0x0

    :goto_2d
    move/from16 v0, v27

    if-ge v0, v7, :cond_57

    .line 1391
    move-object/from16 v0, v31

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/android/exsettings/applications/RunningState$MergedItem;

    .line 1392
    .restart local v28    # "mergedItem":Lcom/android/exsettings/applications/RunningState$MergedItem;
    move-object/from16 v0, v28

    iget v0, v0, Lcom/android/exsettings/applications/RunningState$MergedItem;->mUserId:I

    move/from16 v63, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/exsettings/applications/RunningState;->mMyUserId:I

    move/from16 v64, v0

    move/from16 v0, v63

    move/from16 v1, v64

    if-eq v0, v1, :cond_56

    .line 1394
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/applications/RunningState;->mOtherUserBackgroundItems:Landroid/util/SparseArray;

    move-object/from16 v63, v0

    .line 1393
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v35

    move-object/from16 v3, v63

    move-object/from16 v4, v28

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/exsettings/applications/RunningState;->addOtherUserItem(Landroid/content/Context;Ljava/util/ArrayList;Landroid/util/SparseArray;Lcom/android/exsettings/applications/RunningState$MergedItem;)V

    .line 1390
    :goto_2e
    add-int/lit8 v27, v27, 0x1

    goto :goto_2d

    .line 1396
    :cond_56
    move-object/from16 v0, v35

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2e

    .line 1401
    .end local v28    # "mergedItem":Lcom/android/exsettings/applications/RunningState$MergedItem;
    :cond_57
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/applications/RunningState;->mOtherUserBackgroundItems:Landroid/util/SparseArray;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Landroid/util/SparseArray;->size()I

    move-result v12

    .line 1402
    .restart local v12    # "NU":I
    const/16 v27, 0x0

    :goto_2f
    move/from16 v0, v27

    if-ge v0, v12, :cond_54

    .line 1403
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/applications/RunningState;->mOtherUserBackgroundItems:Landroid/util/SparseArray;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v62

    check-cast v62, Lcom/android/exsettings/applications/RunningState$MergedItem;

    .line 1404
    .restart local v62    # "user":Lcom/android/exsettings/applications/RunningState$MergedItem;
    move-object/from16 v0, v62

    iget v0, v0, Lcom/android/exsettings/applications/RunningState$MergedItem;->mCurSeq:I

    move/from16 v63, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/exsettings/applications/RunningState;->mSequence:I

    move/from16 v64, v0

    move/from16 v0, v63

    move/from16 v1, v64

    if-ne v0, v1, :cond_58

    .line 1405
    const/16 v63, 0x1

    move-object/from16 v0, v62

    move-object/from16 v1, p1

    move/from16 v2, v63

    invoke-virtual {v0, v1, v2}, Lcom/android/exsettings/applications/RunningState$MergedItem;->update(Landroid/content/Context;Z)Z

    .line 1406
    move-object/from16 v0, v62

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/exsettings/applications/RunningState$MergedItem;->updateSize(Landroid/content/Context;)Z

    .line 1402
    :cond_58
    add-int/lit8 v27, v27, 0x1

    goto :goto_2f

    .line 1416
    .end local v7    # "NB":I
    .end local v12    # "NU":I
    .end local v35    # "newUserBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/exsettings/applications/RunningState$MergedItem;>;"
    .end local v62    # "user":Lcom/android/exsettings/applications/RunningState$MergedItem;
    :cond_59
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/applications/RunningState;->mLock:Ljava/lang/Object;

    move-object/from16 v64, v0

    monitor-enter v64

    .line 1417
    :try_start_7
    move/from16 v0, v36

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/exsettings/applications/RunningState;->mNumBackgroundProcesses:I

    .line 1418
    move/from16 v0, v37

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/exsettings/applications/RunningState;->mNumForegroundProcesses:I

    .line 1419
    move/from16 v0, v39

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/exsettings/applications/RunningState;->mNumServiceProcesses:I

    .line 1420
    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/android/exsettings/applications/RunningState;->mBackgroundProcessMemory:J

    .line 1421
    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/exsettings/applications/RunningState;->mForegroundProcessMemory:J

    .line 1422
    move-wide/from16 v0, v52

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/exsettings/applications/RunningState;->mServiceProcessMemory:J

    .line 1423
    if-eqz v31, :cond_5a

    .line 1424
    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/applications/RunningState;->mBackgroundItems:Ljava/util/ArrayList;

    .line 1425
    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/applications/RunningState;->mUserBackgroundItems:Ljava/util/ArrayList;

    .line 1426
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/exsettings/applications/RunningState;->mWatchingBackgroundItems:Z

    move/from16 v63, v0

    if-eqz v63, :cond_5a

    .line 1427
    const/16 v18, 0x1

    .line 1430
    :cond_5a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/exsettings/applications/RunningState;->mHaveData:Z

    move/from16 v63, v0

    if-nez v63, :cond_5b

    .line 1431
    const/16 v63, 0x1

    move/from16 v0, v63

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/exsettings/applications/RunningState;->mHaveData:Z

    .line 1432
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/applications/RunningState;->mLock:Ljava/lang/Object;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Ljava/lang/Object;->notifyAll()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :cond_5b
    monitor-exit v64

    .line 1436
    return v18

    .line 1416
    :catchall_1
    move-exception v63

    monitor-exit v64

    throw v63

    .line 1364
    .restart local v16    # "bgIndex":I
    .restart local v32    # "newBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/exsettings/applications/RunningState$MergedItem;>;"
    .local v35, "newUserBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/exsettings/applications/RunningState$MergedItem;>;"
    .restart local v38    # "numProc":I
    .restart local v44    # "pids":[I
    .restart local v50    # "pss":[J
    :catch_1
    move-exception v22

    .local v22, "e":Landroid/os/RemoteException;
    move-object/from16 v31, v32

    .end local v32    # "newBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/exsettings/applications/RunningState$MergedItem;>;"
    .restart local v31    # "newBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/exsettings/applications/RunningState$MergedItem;>;"
    goto/16 :goto_29

    .end local v22    # "e":Landroid/os/RemoteException;
    .end local v31    # "newBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/exsettings/applications/RunningState$MergedItem;>;"
    .restart local v18    # "changed":Z
    .restart local v32    # "newBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/exsettings/applications/RunningState$MergedItem;>;"
    .restart local v47    # "proc":Lcom/android/exsettings/applications/RunningState$ProcessItem;
    :cond_5c
    move-object/from16 v31, v32

    .end local v32    # "newBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/exsettings/applications/RunningState$MergedItem;>;"
    .restart local v31    # "newBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/exsettings/applications/RunningState$MergedItem;>;"
    goto/16 :goto_23
.end method


# virtual methods
.method getCurrentBackgroundItems()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/exsettings/applications/RunningState$MergedItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1452
    iget-object v0, p0, Lcom/android/exsettings/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1453
    :try_start_0
    iget-object v1, p0, Lcom/android/exsettings/applications/RunningState;->mUserBackgroundItems:Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 1452
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method getCurrentMergedItems()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/exsettings/applications/RunningState$MergedItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1446
    iget-object v0, p0, Lcom/android/exsettings/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1447
    :try_start_0
    iget-object v1, p0, Lcom/android/exsettings/applications/RunningState;->mMergedItems:Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 1446
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method hasData()Z
    .locals 2

    .prologue
    .line 820
    iget-object v0, p0, Lcom/android/exsettings/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 821
    :try_start_0
    iget-boolean v1, p0, Lcom/android/exsettings/applications/RunningState;->mHaveData:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    .line 820
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method pause()V
    .locals 3

    .prologue
    .line 837
    iget-object v1, p0, Lcom/android/exsettings/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 838
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/exsettings/applications/RunningState;->mResumed:Z

    .line 839
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/exsettings/applications/RunningState;->mRefreshUiListener:Lcom/android/exsettings/applications/RunningState$OnRefreshUiListener;

    .line 840
    iget-object v0, p0, Lcom/android/exsettings/applications/RunningState;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 836
    return-void

    .line 837
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method resume(Lcom/android/exsettings/applications/RunningState$OnRefreshUiListener;)V
    .locals 5
    .param p1, "listener"    # Lcom/android/exsettings/applications/RunningState$OnRefreshUiListener;

    .prologue
    .line 793
    iget-object v3, p0, Lcom/android/exsettings/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 794
    const/4 v2, 0x1

    :try_start_0
    iput-boolean v2, p0, Lcom/android/exsettings/applications/RunningState;->mResumed:Z

    .line 795
    iput-object p1, p0, Lcom/android/exsettings/applications/RunningState;->mRefreshUiListener:Lcom/android/exsettings/applications/RunningState$OnRefreshUiListener;

    .line 796
    iget-object v2, p0, Lcom/android/exsettings/applications/RunningState;->mUmBroadcastReceiver:Lcom/android/exsettings/applications/RunningState$UserManagerBroadcastReceiver;

    invoke-virtual {v2}, Lcom/android/exsettings/applications/RunningState$UserManagerBroadcastReceiver;->checkUsersChangedLocked()Z

    move-result v1

    .line 798
    .local v1, "usersChanged":Z
    iget-object v2, p0, Lcom/android/exsettings/applications/RunningState;->mInterestingConfigChanges:Lcom/android/exsettingslib/applications/InterestingConfigChanges;

    iget-object v4, p0, Lcom/android/exsettings/applications/RunningState;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/exsettingslib/applications/InterestingConfigChanges;->applyNewConfig(Landroid/content/res/Resources;)Z

    move-result v0

    .line 799
    .local v0, "configChanged":Z
    if-nez v1, :cond_0

    if-eqz v0, :cond_1

    .line 800
    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/exsettings/applications/RunningState;->mHaveData:Z

    .line 801
    iget-object v2, p0, Lcom/android/exsettings/applications/RunningState;->mBackgroundHandler:Lcom/android/exsettings/applications/RunningState$BackgroundHandler;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/android/exsettings/applications/RunningState$BackgroundHandler;->removeMessages(I)V

    .line 802
    iget-object v2, p0, Lcom/android/exsettings/applications/RunningState;->mBackgroundHandler:Lcom/android/exsettings/applications/RunningState$BackgroundHandler;

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Lcom/android/exsettings/applications/RunningState$BackgroundHandler;->removeMessages(I)V

    .line 803
    iget-object v2, p0, Lcom/android/exsettings/applications/RunningState;->mBackgroundHandler:Lcom/android/exsettings/applications/RunningState$BackgroundHandler;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/android/exsettings/applications/RunningState$BackgroundHandler;->sendEmptyMessage(I)Z

    .line 805
    :cond_1
    iget-object v2, p0, Lcom/android/exsettings/applications/RunningState;->mBackgroundHandler:Lcom/android/exsettings/applications/RunningState$BackgroundHandler;

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Lcom/android/exsettings/applications/RunningState$BackgroundHandler;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 806
    iget-object v2, p0, Lcom/android/exsettings/applications/RunningState;->mBackgroundHandler:Lcom/android/exsettings/applications/RunningState$BackgroundHandler;

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Lcom/android/exsettings/applications/RunningState$BackgroundHandler;->sendEmptyMessage(I)Z

    .line 808
    :cond_2
    iget-object v2, p0, Lcom/android/exsettings/applications/RunningState;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    .line 792
    return-void

    .line 793
    .end local v0    # "configChanged":Z
    .end local v1    # "usersChanged":Z
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method setWatchingBackgroundItems(Z)V
    .locals 2
    .param p1, "watching"    # Z

    .prologue
    .line 1440
    iget-object v0, p0, Lcom/android/exsettings/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1441
    :try_start_0
    iput-boolean p1, p0, Lcom/android/exsettings/applications/RunningState;->mWatchingBackgroundItems:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 1439
    return-void

    .line 1440
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method updateNow()V
    .locals 3

    .prologue
    .line 813
    iget-object v1, p0, Lcom/android/exsettings/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 814
    :try_start_0
    iget-object v0, p0, Lcom/android/exsettings/applications/RunningState;->mBackgroundHandler:Lcom/android/exsettings/applications/RunningState$BackgroundHandler;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/android/exsettings/applications/RunningState$BackgroundHandler;->removeMessages(I)V

    .line 815
    iget-object v0, p0, Lcom/android/exsettings/applications/RunningState;->mBackgroundHandler:Lcom/android/exsettings/applications/RunningState$BackgroundHandler;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/android/exsettings/applications/RunningState$BackgroundHandler;->sendEmptyMessage(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 812
    return-void

    .line 813
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method waitForData()V
    .locals 6

    .prologue
    .line 826
    iget-object v2, p0, Lcom/android/exsettings/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 827
    :goto_0
    :try_start_0
    iget-boolean v1, p0, Lcom/android/exsettings/applications/RunningState;->mHaveData:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 829
    :try_start_1
    iget-object v1, p0, Lcom/android/exsettings/applications/RunningState;->mLock:Ljava/lang/Object;

    const-wide/16 v4, 0x0

    invoke-virtual {v1, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 830
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/InterruptedException;
    goto :goto_0

    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_0
    monitor-exit v2

    .line 825
    return-void

    .line 826
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method
