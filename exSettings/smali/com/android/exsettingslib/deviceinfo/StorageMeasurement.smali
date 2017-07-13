.class public Lcom/android/exsettingslib/deviceinfo/StorageMeasurement;
.super Ljava/lang/Object;
.source "StorageMeasurement.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exsettingslib/deviceinfo/StorageMeasurement$MeasurementDetails;,
        Lcom/android/exsettingslib/deviceinfo/StorageMeasurement$MeasurementReceiver;,
        Lcom/android/exsettingslib/deviceinfo/StorageMeasurement$StatsObserver;,
        Lcom/android/exsettingslib/deviceinfo/StorageMeasurement$MainHandler;,
        Lcom/android/exsettingslib/deviceinfo/StorageMeasurement$MeasurementHandler;
    }
.end annotation


# static fields
.field public static final DEFAULT_CONTAINER_COMPONENT:Landroid/content/ComponentName;

.field static final LOGV:Z

.field private static final sMeasureMediaTypes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mMainHandler:Lcom/android/exsettingslib/deviceinfo/StorageMeasurement$MainHandler;

.field private final mMeasurementHandler:Lcom/android/exsettingslib/deviceinfo/StorageMeasurement$MeasurementHandler;

.field private mReceiver:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/exsettingslib/deviceinfo/StorageMeasurement$MeasurementReceiver;",
            ">;"
        }
    .end annotation
.end field

.field private final mSharedVolume:Landroid/os/storage/VolumeInfo;

.field private final mVolume:Landroid/os/storage/VolumeInfo;


# direct methods
.method static synthetic -get0(Lcom/android/exsettingslib/deviceinfo/StorageMeasurement;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettingslib/deviceinfo/StorageMeasurement;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/exsettingslib/deviceinfo/StorageMeasurement;)Lcom/android/exsettingslib/deviceinfo/StorageMeasurement$MainHandler;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettingslib/deviceinfo/StorageMeasurement;->mMainHandler:Lcom/android/exsettingslib/deviceinfo/StorageMeasurement$MainHandler;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/exsettingslib/deviceinfo/StorageMeasurement;)Ljava/lang/ref/WeakReference;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettingslib/deviceinfo/StorageMeasurement;->mReceiver:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic -wrap0(Landroid/util/SparseLongArray;IJ)V
    .locals 0
    .param p0, "array"    # Landroid/util/SparseLongArray;
    .param p1, "key"    # I
    .param p2, "value"    # J

    .prologue
    invoke-static {p0, p1, p2, p3}, Lcom/android/exsettingslib/deviceinfo/StorageMeasurement;->addValueIfKeyExists(Landroid/util/SparseLongArray;IJ)V

    return-void
.end method

.method static synthetic -wrap1(Landroid/util/SparseLongArray;IJ)V
    .locals 0
    .param p0, "array"    # Landroid/util/SparseLongArray;
    .param p1, "key"    # I
    .param p2, "value"    # J

    .prologue
    invoke-static {p0, p1, p2, p3}, Lcom/android/exsettingslib/deviceinfo/StorageMeasurement;->addValue(Landroid/util/SparseLongArray;IJ)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/exsettingslib/deviceinfo/StorageMeasurement;Lcom/android/internal/app/IMediaContainerService;)V
    .locals 0
    .param p1, "imcs"    # Lcom/android/internal/app/IMediaContainerService;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/exsettingslib/deviceinfo/StorageMeasurement;->measureExactStorage(Lcom/android/internal/app/IMediaContainerService;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 64
    const-string/jumbo v0, "StorageMeasurement"

    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/exsettingslib/deviceinfo/StorageMeasurement;->LOGV:Z

    .line 68
    new-instance v0, Landroid/content/ComponentName;

    .line 69
    const-string/jumbo v1, "com.android.defcontainer"

    const-string/jumbo v2, "com.android.defcontainer.DefaultContainerService"

    .line 68
    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/exsettingslib/deviceinfo/StorageMeasurement;->DEFAULT_CONTAINER_COMPONENT:Landroid/content/ComponentName;

    .line 72
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    .line 73
    sget-object v1, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Landroid/os/Environment;->DIRECTORY_MOVIES:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 74
    sget-object v1, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    aput-object v1, v0, v3

    sget-object v1, Landroid/os/Environment;->DIRECTORY_MUSIC:Ljava/lang/String;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 75
    sget-object v1, Landroid/os/Environment;->DIRECTORY_ALARMS:Ljava/lang/String;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Landroid/os/Environment;->DIRECTORY_NOTIFICATIONS:Ljava/lang/String;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 76
    sget-object v1, Landroid/os/Environment;->DIRECTORY_RINGTONES:Ljava/lang/String;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Landroid/os/Environment;->DIRECTORY_PODCASTS:Ljava/lang/String;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 77
    sget-object v1, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string/jumbo v1, "Android"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 72
    invoke-static {v0}, Lcom/google/android/collect/Sets;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v0

    sput-object v0, Lcom/android/exsettingslib/deviceinfo/StorageMeasurement;->sMeasureMediaTypes:Ljava/util/Set;

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/storage/VolumeInfo;Landroid/os/storage/VolumeInfo;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "volume"    # Landroid/os/storage/VolumeInfo;
    .param p3, "sharedVolume"    # Landroid/os/storage/VolumeInfo;

    .prologue
    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 146
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/android/exsettingslib/deviceinfo/StorageMeasurement;->mContext:Landroid/content/Context;

    .line 148
    iput-object p2, p0, Lcom/android/exsettingslib/deviceinfo/StorageMeasurement;->mVolume:Landroid/os/storage/VolumeInfo;

    .line 149
    iput-object p3, p0, Lcom/android/exsettingslib/deviceinfo/StorageMeasurement;->mSharedVolume:Landroid/os/storage/VolumeInfo;

    .line 152
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "MemoryMeasurement"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 153
    .local v0, "handlerThread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 155
    new-instance v1, Lcom/android/exsettingslib/deviceinfo/StorageMeasurement$MainHandler;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/exsettingslib/deviceinfo/StorageMeasurement$MainHandler;-><init>(Lcom/android/exsettingslib/deviceinfo/StorageMeasurement;Lcom/android/exsettingslib/deviceinfo/StorageMeasurement$MainHandler;)V

    iput-object v1, p0, Lcom/android/exsettingslib/deviceinfo/StorageMeasurement;->mMainHandler:Lcom/android/exsettingslib/deviceinfo/StorageMeasurement$MainHandler;

    .line 156
    new-instance v1, Lcom/android/exsettingslib/deviceinfo/StorageMeasurement$MeasurementHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/exsettingslib/deviceinfo/StorageMeasurement$MeasurementHandler;-><init>(Lcom/android/exsettingslib/deviceinfo/StorageMeasurement;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/exsettingslib/deviceinfo/StorageMeasurement;->mMeasurementHandler:Lcom/android/exsettingslib/deviceinfo/StorageMeasurement$MeasurementHandler;

    .line 145
    return-void
.end method

.method private static addValue(Landroid/util/SparseLongArray;IJ)V
    .locals 2
    .param p0, "array"    # Landroid/util/SparseLongArray;
    .param p1, "key"    # I
    .param p2, "value"    # J

    .prologue
    .line 468
    invoke-virtual {p0, p1}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v0

    add-long/2addr v0, p2

    invoke-virtual {p0, p1, v0, v1}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 467
    return-void
.end method

.method private static addValueIfKeyExists(Landroid/util/SparseLongArray;IJ)V
    .locals 4
    .param p0, "array"    # Landroid/util/SparseLongArray;
    .param p1, "key"    # I
    .param p2, "value"    # J

    .prologue
    .line 472
    invoke-virtual {p0, p1}, Landroid/util/SparseLongArray;->indexOfKey(I)I

    move-result v0

    .line 473
    .local v0, "index":I
    if-ltz v0, :cond_0

    .line 474
    invoke-virtual {p0, v0}, Landroid/util/SparseLongArray;->valueAt(I)J

    move-result-wide v2

    add-long/2addr v2, p2

    invoke-virtual {p0, p1, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 471
    :cond_0
    return-void
.end method

.method private static getDirectorySize(Lcom/android/internal/app/IMediaContainerService;Ljava/io/File;)J
    .locals 6
    .param p0, "imcs"    # Lcom/android/internal/app/IMediaContainerService;
    .param p1, "path"    # Ljava/io/File;

    .prologue
    .line 437
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v1}, Lcom/android/internal/app/IMediaContainerService;->calculateDirectorySize(Ljava/lang/String;)J

    move-result-wide v2

    .line 438
    .local v2, "size":J
    const-string/jumbo v1, "StorageMeasurement"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getDirectorySize("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ") returned "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 439
    return-wide v2

    .line 440
    .end local v2    # "size":J
    :catch_0
    move-exception v0

    .line 441
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "StorageMeasurement"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Could not read memory from default container service for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 442
    const-wide/16 v4, 0x0

    return-wide v4
.end method

.method private invalidate()V
    .locals 2

    .prologue
    .line 183
    iget-object v0, p0, Lcom/android/exsettingslib/deviceinfo/StorageMeasurement;->mMeasurementHandler:Lcom/android/exsettingslib/deviceinfo/StorageMeasurement$MeasurementHandler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/android/exsettingslib/deviceinfo/StorageMeasurement$MeasurementHandler;->sendEmptyMessage(I)Z

    .line 182
    return-void
.end method

.method private measureExactStorage(Lcom/android/internal/app/IMediaContainerService;)V
    .locals 34
    .param p1, "imcs"    # Lcom/android/internal/app/IMediaContainerService;

    .prologue
    .line 350
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/exsettingslib/deviceinfo/StorageMeasurement;->mContext:Landroid/content/Context;

    const-class v7, Landroid/os/UserManager;

    invoke-virtual {v5, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Landroid/os/UserManager;

    .line 351
    .local v28, "userManager":Landroid/os/UserManager;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/exsettingslib/deviceinfo/StorageMeasurement;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v19

    .line 353
    .local v19, "packageManager":Landroid/content/pm/PackageManager;
    invoke-virtual/range {v28 .. v28}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v30

    .line 355
    .local v30, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v5

    .line 354
    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Landroid/os/UserManager;->getEnabledProfiles(I)Ljava/util/List;

    move-result-object v8

    .line 357
    .local v8, "currentProfiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    new-instance v6, Lcom/android/exsettingslib/deviceinfo/StorageMeasurement$MeasurementDetails;

    invoke-direct {v6}, Lcom/android/exsettingslib/deviceinfo/StorageMeasurement$MeasurementDetails;-><init>()V

    .line 358
    .local v6, "details":Lcom/android/exsettingslib/deviceinfo/StorageMeasurement$MeasurementDetails;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/exsettingslib/deviceinfo/StorageMeasurement;->mMeasurementHandler:Lcom/android/exsettingslib/deviceinfo/StorageMeasurement$MeasurementHandler;

    const/4 v7, 0x4

    invoke-virtual {v5, v7, v6}, Lcom/android/exsettingslib/deviceinfo/StorageMeasurement$MeasurementHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    .line 361
    .local v9, "finished":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/exsettingslib/deviceinfo/StorageMeasurement;->mVolume:Landroid/os/storage/VolumeInfo;

    if-eqz v5, :cond_0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/exsettingslib/deviceinfo/StorageMeasurement;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v5}, Landroid/os/storage/VolumeInfo;->isMountedReadable()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 366
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/exsettingslib/deviceinfo/StorageMeasurement;->mSharedVolume:Landroid/os/storage/VolumeInfo;

    if-eqz v5, :cond_3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/exsettingslib/deviceinfo/StorageMeasurement;->mSharedVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v5}, Landroid/os/storage/VolumeInfo;->isMountedReadable()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 367
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, "currentUserInfo$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/pm/UserInfo;

    .line 368
    .local v15, "currentUserInfo":Landroid/content/pm/UserInfo;
    iget v0, v15, Landroid/content/pm/UserInfo;->id:I

    move/from16 v27, v0

    .line 369
    .local v27, "userId":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/exsettingslib/deviceinfo/StorageMeasurement;->mSharedVolume:Landroid/os/storage/VolumeInfo;

    move/from16 v0, v27

    invoke-virtual {v5, v0}, Landroid/os/storage/VolumeInfo;->getPathForUser(I)Ljava/io/File;

    move-result-object v14

    .line 370
    .local v14, "basePath":Ljava/io/File;
    new-instance v18, Ljava/util/HashMap;

    sget-object v5, Lcom/android/exsettingslib/deviceinfo/StorageMeasurement;->sMeasureMediaTypes:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v5

    move-object/from16 v0, v18

    invoke-direct {v0, v5}, Ljava/util/HashMap;-><init>(I)V

    .line 371
    .local v18, "mediaMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    iget-object v5, v6, Lcom/android/exsettingslib/deviceinfo/StorageMeasurement$MeasurementDetails;->mediaSize:Landroid/util/SparseArray;

    move/from16 v0, v27

    move-object/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 375
    sget-object v5, Lcom/android/exsettingslib/deviceinfo/StorageMeasurement;->sMeasureMediaTypes:Ljava/util/Set;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v24

    .local v24, "type$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    .line 376
    .local v21, "type":Ljava/lang/String;
    new-instance v20, Ljava/io/File;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v0, v14, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 377
    .local v20, "path":Ljava/io/File;
    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/android/exsettingslib/deviceinfo/StorageMeasurement;->getDirectorySize(Lcom/android/internal/app/IMediaContainerService;Ljava/io/File;)J

    move-result-wide v22

    .line 378
    .local v22, "size":J
    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 362
    .end local v14    # "basePath":Ljava/io/File;
    .end local v15    # "currentUserInfo":Landroid/content/pm/UserInfo;
    .end local v16    # "currentUserInfo$iterator":Ljava/util/Iterator;
    .end local v18    # "mediaMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v20    # "path":Ljava/io/File;
    .end local v21    # "type":Ljava/lang/String;
    .end local v22    # "size":J
    .end local v24    # "type$iterator":Ljava/util/Iterator;
    .end local v27    # "userId":I
    :cond_0
    invoke-virtual {v9}, Landroid/os/Message;->sendToTarget()V

    .line 363
    return-void

    .line 382
    .restart local v14    # "basePath":Ljava/io/File;
    .restart local v15    # "currentUserInfo":Landroid/content/pm/UserInfo;
    .restart local v16    # "currentUserInfo$iterator":Ljava/util/Iterator;
    .restart local v18    # "mediaMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    .restart local v24    # "type$iterator":Ljava/util/Iterator;
    .restart local v27    # "userId":I
    :cond_1
    iget-object v5, v6, Lcom/android/exsettingslib/deviceinfo/StorageMeasurement$MeasurementDetails;->miscSize:Landroid/util/SparseLongArray;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v14}, Lcom/android/exsettingslib/deviceinfo/StorageMeasurement;->measureMisc(Lcom/android/internal/app/IMediaContainerService;Ljava/io/File;)J

    move-result-wide v32

    move/from16 v0, v27

    move-wide/from16 v1, v32

    invoke-static {v5, v0, v1, v2}, Lcom/android/exsettingslib/deviceinfo/StorageMeasurement;->addValue(Landroid/util/SparseLongArray;IJ)V

    goto :goto_0

    .line 385
    .end local v14    # "basePath":Ljava/io/File;
    .end local v15    # "currentUserInfo":Landroid/content/pm/UserInfo;
    .end local v18    # "mediaMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v24    # "type$iterator":Ljava/util/Iterator;
    .end local v27    # "userId":I
    :cond_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/exsettingslib/deviceinfo/StorageMeasurement;->mSharedVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v5}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v5

    const/4 v7, 0x2

    if-ne v5, v7, :cond_3

    .line 388
    invoke-interface/range {v30 .. v30}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v26

    .local v26, "user$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/content/pm/UserInfo;

    .line 389
    .local v25, "user":Landroid/content/pm/UserInfo;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/exsettingslib/deviceinfo/StorageMeasurement;->mSharedVolume:Landroid/os/storage/VolumeInfo;

    move-object/from16 v0, v25

    iget v7, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v5, v7}, Landroid/os/storage/VolumeInfo;->getPathForUser(I)Ljava/io/File;

    move-result-object v29

    .line 390
    .local v29, "userPath":Ljava/io/File;
    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Lcom/android/exsettingslib/deviceinfo/StorageMeasurement;->getDirectorySize(Lcom/android/internal/app/IMediaContainerService;Ljava/io/File;)J

    move-result-wide v22

    .line 391
    .restart local v22    # "size":J
    iget-object v5, v6, Lcom/android/exsettingslib/deviceinfo/StorageMeasurement$MeasurementDetails;->usersSize:Landroid/util/SparseLongArray;

    move-object/from16 v0, v25

    iget v7, v0, Landroid/content/pm/UserInfo;->id:I

    move-wide/from16 v0, v22

    invoke-static {v5, v7, v0, v1}, Lcom/android/exsettingslib/deviceinfo/StorageMeasurement;->addValue(Landroid/util/SparseLongArray;IJ)V

    goto :goto_2

    .line 396
    .end local v16    # "currentUserInfo$iterator":Ljava/util/Iterator;
    .end local v22    # "size":J
    .end local v25    # "user":Landroid/content/pm/UserInfo;
    .end local v26    # "user$iterator":Ljava/util/Iterator;
    .end local v29    # "userPath":Ljava/io/File;
    :cond_3
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/exsettingslib/deviceinfo/StorageMeasurement;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v5}, Landroid/os/storage/VolumeInfo;->getPath()Ljava/io/File;

    move-result-object v17

    .line 397
    .local v17, "file":Ljava/io/File;
    if-eqz v17, :cond_4

    .line 398
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->getTotalSpace()J

    move-result-wide v32

    move-wide/from16 v0, v32

    iput-wide v0, v6, Lcom/android/exsettingslib/deviceinfo/StorageMeasurement$MeasurementDetails;->totalSize:J

    .line 399
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->getFreeSpace()J

    move-result-wide v32

    move-wide/from16 v0, v32

    iput-wide v0, v6, Lcom/android/exsettingslib/deviceinfo/StorageMeasurement$MeasurementDetails;->availSize:J

    .line 403
    :cond_4
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/exsettingslib/deviceinfo/StorageMeasurement;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v5}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v5

    const/4 v7, 0x1

    if-ne v5, v7, :cond_9

    .line 405
    const/16 v5, 0x2200

    .line 404
    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v13

    .line 408
    .local v13, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    new-instance v31, Ljava/util/ArrayList;

    invoke-direct/range {v31 .. v31}, Ljava/util/ArrayList;-><init>()V

    .line 409
    .local v31, "volumeApps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "app$iterator":Ljava/util/Iterator;
    :cond_5
    :goto_3
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/ApplicationInfo;

    .line 410
    .local v11, "app":Landroid/content/pm/ApplicationInfo;
    iget-object v5, v11, Landroid/content/pm/ApplicationInfo;->volumeUuid:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/exsettingslib/deviceinfo/StorageMeasurement;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v7}, Landroid/os/storage/VolumeInfo;->getFsUuid()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 411
    move-object/from16 v0, v31

    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 415
    .end local v11    # "app":Landroid/content/pm/ApplicationInfo;
    :cond_6
    invoke-interface/range {v30 .. v30}, Ljava/util/List;->size()I

    move-result v5

    invoke-interface/range {v31 .. v31}, Ljava/util/List;->size()I

    move-result v7

    mul-int v10, v5, v7

    .line 416
    .local v10, "count":I
    if-nez v10, :cond_7

    .line 417
    invoke-virtual {v9}, Landroid/os/Message;->sendToTarget()V

    .line 418
    return-void

    .line 421
    :cond_7
    new-instance v4, Lcom/android/exsettingslib/deviceinfo/StorageMeasurement$StatsObserver;

    .line 422
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v7

    .line 421
    const/4 v5, 0x1

    invoke-direct/range {v4 .. v10}, Lcom/android/exsettingslib/deviceinfo/StorageMeasurement$StatsObserver;-><init>(ZLcom/android/exsettingslib/deviceinfo/StorageMeasurement$MeasurementDetails;ILjava/util/List;Landroid/os/Message;I)V

    .line 423
    .local v4, "observer":Lcom/android/exsettingslib/deviceinfo/StorageMeasurement$StatsObserver;
    invoke-interface/range {v30 .. v30}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v26

    .restart local v26    # "user$iterator":Ljava/util/Iterator;
    :cond_8
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/content/pm/UserInfo;

    .line 424
    .restart local v25    # "user":Landroid/content/pm/UserInfo;
    invoke-interface/range {v31 .. v31}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_4
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/ApplicationInfo;

    .line 425
    .restart local v11    # "app":Landroid/content/pm/ApplicationInfo;
    iget-object v5, v11, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v25

    iget v7, v0, Landroid/content/pm/UserInfo;->id:I

    move-object/from16 v0, v19

    invoke-virtual {v0, v5, v7, v4}, Landroid/content/pm/PackageManager;->getPackageSizeInfo(Ljava/lang/String;ILandroid/content/pm/IPackageStatsObserver;)V

    goto :goto_4

    .line 430
    .end local v4    # "observer":Lcom/android/exsettingslib/deviceinfo/StorageMeasurement$StatsObserver;
    .end local v10    # "count":I
    .end local v11    # "app":Landroid/content/pm/ApplicationInfo;
    .end local v12    # "app$iterator":Ljava/util/Iterator;
    .end local v13    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .end local v25    # "user":Landroid/content/pm/UserInfo;
    .end local v26    # "user$iterator":Ljava/util/Iterator;
    .end local v31    # "volumeApps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    :cond_9
    invoke-virtual {v9}, Landroid/os/Message;->sendToTarget()V

    .line 431
    return-void

    .line 349
    .restart local v4    # "observer":Lcom/android/exsettingslib/deviceinfo/StorageMeasurement$StatsObserver;
    .restart local v10    # "count":I
    .restart local v12    # "app$iterator":Ljava/util/Iterator;
    .restart local v13    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .restart local v26    # "user$iterator":Ljava/util/Iterator;
    .restart local v31    # "volumeApps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    :cond_a
    return-void
.end method

.method private measureMisc(Lcom/android/internal/app/IMediaContainerService;Ljava/io/File;)J
    .locals 10
    .param p1, "imcs"    # Lcom/android/internal/app/IMediaContainerService;
    .param p2, "dir"    # Ljava/io/File;

    .prologue
    .line 447
    invoke-virtual {p2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 448
    .local v1, "files":[Ljava/io/File;
    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-wide/16 v6, 0x0

    return-wide v6

    .line 451
    :cond_0
    const-wide/16 v2, 0x0

    .line 452
    .local v2, "miscSize":J
    const/4 v5, 0x0

    array-length v6, v1

    :goto_0
    if-ge v5, v6, :cond_4

    aget-object v0, v1, v5

    .line 453
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    .line 454
    .local v4, "name":Ljava/lang/String;
    sget-object v7, Lcom/android/exsettingslib/deviceinfo/StorageMeasurement;->sMeasureMediaTypes:Ljava/util/Set;

    invoke-interface {v7, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 452
    :cond_1
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 458
    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 459
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v8

    add-long/2addr v2, v8

    goto :goto_1

    .line 460
    :cond_3
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 461
    invoke-static {p1, v0}, Lcom/android/exsettingslib/deviceinfo/StorageMeasurement;->getDirectorySize(Lcom/android/internal/app/IMediaContainerService;Ljava/io/File;)J

    move-result-wide v8

    add-long/2addr v2, v8

    goto :goto_1

    .line 464
    .end local v0    # "file":Ljava/io/File;
    .end local v4    # "name":Ljava/lang/String;
    :cond_4
    return-wide v2
.end method


# virtual methods
.method public forceMeasure()V
    .locals 0

    .prologue
    .line 166
    invoke-direct {p0}, Lcom/android/exsettingslib/deviceinfo/StorageMeasurement;->invalidate()V

    .line 167
    invoke-virtual {p0}, Lcom/android/exsettingslib/deviceinfo/StorageMeasurement;->measure()V

    .line 165
    return-void
.end method

.method public measure()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 171
    iget-object v0, p0, Lcom/android/exsettingslib/deviceinfo/StorageMeasurement;->mMeasurementHandler:Lcom/android/exsettingslib/deviceinfo/StorageMeasurement$MeasurementHandler;

    invoke-virtual {v0, v1}, Lcom/android/exsettingslib/deviceinfo/StorageMeasurement$MeasurementHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/android/exsettingslib/deviceinfo/StorageMeasurement;->mMeasurementHandler:Lcom/android/exsettingslib/deviceinfo/StorageMeasurement$MeasurementHandler;

    invoke-virtual {v0, v1}, Lcom/android/exsettingslib/deviceinfo/StorageMeasurement$MeasurementHandler;->sendEmptyMessage(I)Z

    .line 170
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 177
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/exsettingslib/deviceinfo/StorageMeasurement;->mReceiver:Ljava/lang/ref/WeakReference;

    .line 178
    iget-object v0, p0, Lcom/android/exsettingslib/deviceinfo/StorageMeasurement;->mMeasurementHandler:Lcom/android/exsettingslib/deviceinfo/StorageMeasurement$MeasurementHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/exsettingslib/deviceinfo/StorageMeasurement$MeasurementHandler;->removeMessages(I)V

    .line 179
    iget-object v0, p0, Lcom/android/exsettingslib/deviceinfo/StorageMeasurement;->mMeasurementHandler:Lcom/android/exsettingslib/deviceinfo/StorageMeasurement$MeasurementHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/exsettingslib/deviceinfo/StorageMeasurement$MeasurementHandler;->sendEmptyMessage(I)Z

    .line 176
    return-void
.end method

.method public setReceiver(Lcom/android/exsettingslib/deviceinfo/StorageMeasurement$MeasurementReceiver;)V
    .locals 1
    .param p1, "receiver"    # Lcom/android/exsettingslib/deviceinfo/StorageMeasurement$MeasurementReceiver;

    .prologue
    .line 160
    iget-object v0, p0, Lcom/android/exsettingslib/deviceinfo/StorageMeasurement;->mReceiver:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/exsettingslib/deviceinfo/StorageMeasurement;->mReceiver:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 161
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/exsettingslib/deviceinfo/StorageMeasurement;->mReceiver:Ljava/lang/ref/WeakReference;

    .line 159
    :cond_1
    return-void
.end method
