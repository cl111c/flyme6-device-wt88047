.class Lcom/android/exsettings/applications/RunningState$ProcessItem;
.super Lcom/android/exsettings/applications/RunningState$BaseItem;
.source "RunningState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/applications/RunningState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ProcessItem"
.end annotation


# instance fields
.field mActiveSince:J

.field mClient:Lcom/android/exsettings/applications/RunningState$ProcessItem;

.field final mDependentProcesses:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/exsettings/applications/RunningState$ProcessItem;",
            ">;"
        }
    .end annotation
.end field

.field mInteresting:Z

.field mIsStarted:Z

.field mIsSystem:Z

.field mLastNumDependentProcesses:I

.field mMergedItem:Lcom/android/exsettings/applications/RunningState$MergedItem;

.field mPid:I

.field final mProcessName:Ljava/lang/String;

.field mRunningProcessInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;

.field mRunningSeq:I

.field final mServices:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/ComponentName;",
            "Lcom/android/exsettings/applications/RunningState$ServiceItem;",
            ">;"
        }
    .end annotation
.end field

.field final mUid:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uid"    # I
    .param p3, "processName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 410
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-direct {p0, v1, v0}, Lcom/android/exsettings/applications/RunningState$BaseItem;-><init>(ZI)V

    .line 386
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 385
    iput-object v0, p0, Lcom/android/exsettings/applications/RunningState$ProcessItem;->mServices:Ljava/util/HashMap;

    .line 388
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 387
    iput-object v0, p0, Lcom/android/exsettings/applications/RunningState$ProcessItem;->mDependentProcesses:Landroid/util/SparseArray;

    .line 411
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    .line 412
    const/4 v2, 0x0

    aput-object p3, v1, v2

    const v2, 0x7f0c0a1d

    .line 411
    invoke-virtual {v0, v2, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/applications/RunningState$ProcessItem;->mDescription:Ljava/lang/String;

    .line 413
    iput p2, p0, Lcom/android/exsettings/applications/RunningState$ProcessItem;->mUid:I

    .line 414
    iput-object p3, p0, Lcom/android/exsettings/applications/RunningState$ProcessItem;->mProcessName:Ljava/lang/String;

    .line 409
    return-void
.end method


# virtual methods
.method addDependentProcesses(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/exsettings/applications/RunningState$BaseItem;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/exsettings/applications/RunningState$ProcessItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 592
    .local p1, "dest":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/exsettings/applications/RunningState$BaseItem;>;"
    .local p2, "destProc":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/exsettings/applications/RunningState$ProcessItem;>;"
    iget-object v3, p0, Lcom/android/exsettings/applications/RunningState$ProcessItem;->mDependentProcesses:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 593
    .local v0, "NP":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 594
    iget-object v3, p0, Lcom/android/exsettings/applications/RunningState$ProcessItem;->mDependentProcesses:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/exsettings/applications/RunningState$ProcessItem;

    .line 595
    .local v2, "proc":Lcom/android/exsettings/applications/RunningState$ProcessItem;
    invoke-virtual {v2, p1, p2}, Lcom/android/exsettings/applications/RunningState$ProcessItem;->addDependentProcesses(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 596
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 597
    iget v3, v2, Lcom/android/exsettings/applications/RunningState$ProcessItem;->mPid:I

    if-lez v3, :cond_0

    .line 598
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 593
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 591
    .end local v2    # "proc":Lcom/android/exsettings/applications/RunningState$ProcessItem;
    :cond_1
    return-void
.end method

.method buildDependencyChain(Landroid/content/Context;Landroid/content/pm/PackageManager;I)Z
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pm"    # Landroid/content/pm/PackageManager;
    .param p3, "curSeq"    # I

    .prologue
    .line 569
    iget-object v4, p0, Lcom/android/exsettings/applications/RunningState$ProcessItem;->mDependentProcesses:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 570
    .local v0, "NP":I
    const/4 v1, 0x0

    .line 571
    .local v1, "changed":Z
    const/4 v2, 0x0

    .end local v1    # "changed":Z
    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 572
    iget-object v4, p0, Lcom/android/exsettings/applications/RunningState$ProcessItem;->mDependentProcesses:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/exsettings/applications/RunningState$ProcessItem;

    .line 573
    .local v3, "proc":Lcom/android/exsettings/applications/RunningState$ProcessItem;
    iget-object v4, v3, Lcom/android/exsettings/applications/RunningState$ProcessItem;->mClient:Lcom/android/exsettings/applications/RunningState$ProcessItem;

    if-eq v4, p0, :cond_0

    .line 574
    const/4 v1, 0x1

    .line 575
    .restart local v1    # "changed":Z
    iput-object p0, v3, Lcom/android/exsettings/applications/RunningState$ProcessItem;->mClient:Lcom/android/exsettings/applications/RunningState$ProcessItem;

    .line 577
    .end local v1    # "changed":Z
    :cond_0
    iput p3, v3, Lcom/android/exsettings/applications/RunningState$ProcessItem;->mCurSeq:I

    .line 578
    invoke-virtual {v3, p2}, Lcom/android/exsettings/applications/RunningState$ProcessItem;->ensureLabel(Landroid/content/pm/PackageManager;)V

    .line 579
    invoke-virtual {v3, p1, p2, p3}, Lcom/android/exsettings/applications/RunningState$ProcessItem;->buildDependencyChain(Landroid/content/Context;Landroid/content/pm/PackageManager;I)Z

    move-result v4

    or-int/2addr v1, v4

    .line 571
    .local v1, "changed":Z
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 582
    .end local v1    # "changed":Z
    .end local v3    # "proc":Lcom/android/exsettings/applications/RunningState$ProcessItem;
    :cond_1
    iget v4, p0, Lcom/android/exsettings/applications/RunningState$ProcessItem;->mLastNumDependentProcesses:I

    iget-object v5, p0, Lcom/android/exsettings/applications/RunningState$ProcessItem;->mDependentProcesses:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-eq v4, v5, :cond_2

    .line 583
    const/4 v1, 0x1

    .line 584
    .local v1, "changed":Z
    iget-object v4, p0, Lcom/android/exsettings/applications/RunningState$ProcessItem;->mDependentProcesses:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    iput v4, p0, Lcom/android/exsettings/applications/RunningState$ProcessItem;->mLastNumDependentProcesses:I

    .line 587
    .end local v1    # "changed":Z
    :cond_2
    return v1
.end method

.method ensureLabel(Landroid/content/pm/PackageManager;)V
    .locals 10
    .param p1, "pm"    # Landroid/content/pm/PackageManager;

    .prologue
    const/4 v6, 0x0

    .line 418
    iget-object v7, p0, Lcom/android/exsettings/applications/RunningState$ProcessItem;->mLabel:Ljava/lang/String;

    if-eqz v7, :cond_0

    .line 419
    return-void

    .line 423
    :cond_0
    :try_start_0
    iget-object v7, p0, Lcom/android/exsettings/applications/RunningState$ProcessItem;->mProcessName:Ljava/lang/String;

    .line 424
    const/16 v8, 0x2000

    .line 423
    invoke-virtual {p1, v7, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 425
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    iget v7, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iget v8, p0, Lcom/android/exsettings/applications/RunningState$ProcessItem;->mUid:I

    if-ne v7, v8, :cond_1

    .line 426
    invoke-virtual {v0, p1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    iput-object v7, p0, Lcom/android/exsettings/applications/RunningState$ProcessItem;->mDisplayLabel:Ljava/lang/CharSequence;

    .line 427
    iget-object v7, p0, Lcom/android/exsettings/applications/RunningState$ProcessItem;->mDisplayLabel:Ljava/lang/CharSequence;

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/exsettings/applications/RunningState$ProcessItem;->mLabel:Ljava/lang/String;

    .line 428
    iput-object v0, p0, Lcom/android/exsettings/applications/RunningState$ProcessItem;->mPackageInfo:Landroid/content/pm/PackageItemInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 429
    return-void

    .line 431
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v1

    .line 436
    :cond_1
    iget v7, p0, Lcom/android/exsettings/applications/RunningState$ProcessItem;->mUid:I

    invoke-virtual {p1, v7}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v5

    .line 439
    .local v5, "pkgs":[Ljava/lang/String;
    array-length v7, v5

    const/4 v8, 0x1

    if-ne v7, v8, :cond_2

    .line 441
    const/4 v7, 0x0

    :try_start_1
    aget-object v7, v5, v7

    .line 442
    const/16 v8, 0x2000

    .line 441
    invoke-virtual {p1, v7, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 443
    .restart local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v0, p1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    iput-object v7, p0, Lcom/android/exsettings/applications/RunningState$ProcessItem;->mDisplayLabel:Ljava/lang/CharSequence;

    .line 444
    iget-object v7, p0, Lcom/android/exsettings/applications/RunningState$ProcessItem;->mDisplayLabel:Ljava/lang/CharSequence;

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/exsettings/applications/RunningState$ProcessItem;->mLabel:Ljava/lang/String;

    .line 445
    iput-object v0, p0, Lcom/android/exsettings/applications/RunningState$ProcessItem;->mPackageInfo:Landroid/content/pm/PackageItemInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 446
    return-void

    .line 447
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :catch_1
    move-exception v1

    .line 453
    :cond_2
    array-length v7, v5

    :goto_0
    if-ge v6, v7, :cond_4

    aget-object v2, v5, v6

    .line 455
    .local v2, "name":Ljava/lang/String;
    const/4 v8, 0x0

    :try_start_2
    invoke-virtual {p1, v2, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    .line 456
    .local v4, "pi":Landroid/content/pm/PackageInfo;
    iget v8, v4, Landroid/content/pm/PackageInfo;->sharedUserLabel:I

    if-eqz v8, :cond_3

    .line 458
    iget v8, v4, Landroid/content/pm/PackageInfo;->sharedUserLabel:I

    iget-object v9, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 457
    invoke-virtual {p1, v2, v8, v9}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 459
    .local v3, "nm":Ljava/lang/CharSequence;
    if-eqz v3, :cond_3

    .line 460
    iput-object v3, p0, Lcom/android/exsettings/applications/RunningState$ProcessItem;->mDisplayLabel:Ljava/lang/CharSequence;

    .line 461
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/exsettings/applications/RunningState$ProcessItem;->mLabel:Ljava/lang/String;

    .line 462
    iget-object v8, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object v8, p0, Lcom/android/exsettings/applications/RunningState$ProcessItem;->mPackageInfo:Landroid/content/pm/PackageItemInfo;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    .line 463
    return-void

    .line 466
    .end local v3    # "nm":Ljava/lang/CharSequence;
    .end local v4    # "pi":Landroid/content/pm/PackageInfo;
    :catch_2
    move-exception v1

    .line 453
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 472
    .end local v2    # "name":Ljava/lang/String;
    :cond_4
    iget-object v6, p0, Lcom/android/exsettings/applications/RunningState$ProcessItem;->mServices:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result v6

    if-lez v6, :cond_5

    .line 473
    iget-object v6, p0, Lcom/android/exsettings/applications/RunningState$ProcessItem;->mServices:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/exsettings/applications/RunningState$ServiceItem;

    iget-object v6, v6, Lcom/android/exsettings/applications/RunningState$ServiceItem;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v6, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 475
    .restart local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    iput-object v0, p0, Lcom/android/exsettings/applications/RunningState$ProcessItem;->mPackageInfo:Landroid/content/pm/PackageItemInfo;

    .line 476
    iget-object v6, p0, Lcom/android/exsettings/applications/RunningState$ProcessItem;->mPackageInfo:Landroid/content/pm/PackageItemInfo;

    invoke-virtual {v6, p1}, Landroid/content/pm/PackageItemInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    iput-object v6, p0, Lcom/android/exsettings/applications/RunningState$ProcessItem;->mDisplayLabel:Ljava/lang/CharSequence;

    .line 477
    iget-object v6, p0, Lcom/android/exsettings/applications/RunningState$ProcessItem;->mDisplayLabel:Ljava/lang/CharSequence;

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/exsettings/applications/RunningState$ProcessItem;->mLabel:Ljava/lang/String;

    .line 478
    return-void

    .line 483
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :cond_5
    const/4 v6, 0x0

    :try_start_3
    aget-object v6, v5, v6

    .line 484
    const/16 v7, 0x2000

    .line 483
    invoke-virtual {p1, v6, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 485
    .restart local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v0, p1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    iput-object v6, p0, Lcom/android/exsettings/applications/RunningState$ProcessItem;->mDisplayLabel:Ljava/lang/CharSequence;

    .line 486
    iget-object v6, p0, Lcom/android/exsettings/applications/RunningState$ProcessItem;->mDisplayLabel:Ljava/lang/CharSequence;

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/exsettings/applications/RunningState$ProcessItem;->mLabel:Ljava/lang/String;

    .line 487
    iput-object v0, p0, Lcom/android/exsettings/applications/RunningState$ProcessItem;->mPackageInfo:Landroid/content/pm/PackageItemInfo;
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_3

    .line 488
    return-void

    .line 489
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :catch_3
    move-exception v1

    .line 417
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    return-void
.end method

.method updateService(Landroid/content/Context;Landroid/app/ActivityManager$RunningServiceInfo;)Z
    .locals 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/app/ActivityManager$RunningServiceInfo;

    .prologue
    .line 494
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    .line 496
    .local v9, "pm":Landroid/content/pm/PackageManager;
    const/4 v4, 0x0

    .line 497
    .local v4, "changed":Z
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/exsettings/applications/RunningState$ProcessItem;->mServices:Ljava/util/HashMap;

    move-object/from16 v0, p2

    iget-object v12, v0, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/exsettings/applications/RunningState$ServiceItem;

    .line 498
    .local v10, "si":Lcom/android/exsettings/applications/RunningState$ServiceItem;
    if-nez v10, :cond_1

    .line 499
    const/4 v4, 0x1

    .line 500
    new-instance v10, Lcom/android/exsettings/applications/RunningState$ServiceItem;

    .end local v10    # "si":Lcom/android/exsettings/applications/RunningState$ServiceItem;
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/exsettings/applications/RunningState$ProcessItem;->mUserId:I

    invoke-direct {v10, v11}, Lcom/android/exsettings/applications/RunningState$ServiceItem;-><init>(I)V

    .line 501
    .restart local v10    # "si":Lcom/android/exsettings/applications/RunningState$ServiceItem;
    move-object/from16 v0, p2

    iput-object v0, v10, Lcom/android/exsettings/applications/RunningState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    .line 503
    :try_start_0
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v11

    .line 504
    move-object/from16 v0, p2

    iget-object v12, v0, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    .line 505
    move-object/from16 v0, p2

    iget v13, v0, Landroid/app/ActivityManager$RunningServiceInfo;->uid:I

    invoke-static {v13}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v13

    .line 504
    const/16 v14, 0x2000

    .line 503
    invoke-interface {v11, v12, v14, v13}, Landroid/content/pm/IPackageManager;->getServiceInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ServiceInfo;

    move-result-object v11

    iput-object v11, v10, Lcom/android/exsettings/applications/RunningState$ServiceItem;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    .line 507
    iget-object v11, v10, Lcom/android/exsettings/applications/RunningState$ServiceItem;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    if-nez v11, :cond_0

    .line 508
    const-string/jumbo v11, "RunningService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "getServiceInfo returned null for: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 509
    move-object/from16 v0, p2

    iget-object v13, v0, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    .line 508
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 510
    const/4 v11, 0x0

    return v11

    .line 512
    :catch_0
    move-exception v7

    .line 515
    :cond_0
    iget-object v11, v10, Lcom/android/exsettings/applications/RunningState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    iget-object v11, v11, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v11}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v11

    iget-object v12, v10, Lcom/android/exsettings/applications/RunningState$ServiceItem;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    .line 514
    invoke-static {v9, v11, v12}, Lcom/android/exsettings/applications/RunningState;->makeLabel(Landroid/content/pm/PackageManager;Ljava/lang/String;Landroid/content/pm/PackageItemInfo;)Ljava/lang/CharSequence;

    move-result-object v11

    iput-object v11, v10, Lcom/android/exsettings/applications/RunningState$ServiceItem;->mDisplayLabel:Ljava/lang/CharSequence;

    .line 516
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/exsettings/applications/RunningState$ProcessItem;->mDisplayLabel:Ljava/lang/CharSequence;

    if-eqz v11, :cond_4

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/exsettings/applications/RunningState$ProcessItem;->mDisplayLabel:Ljava/lang/CharSequence;

    invoke-interface {v11}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v11

    :goto_0
    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/exsettings/applications/RunningState$ProcessItem;->mLabel:Ljava/lang/String;

    .line 517
    iget-object v11, v10, Lcom/android/exsettings/applications/RunningState$ServiceItem;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v11, v11, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object v11, v10, Lcom/android/exsettings/applications/RunningState$ServiceItem;->mPackageInfo:Landroid/content/pm/PackageItemInfo;

    .line 518
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/exsettings/applications/RunningState$ProcessItem;->mServices:Ljava/util/HashMap;

    move-object/from16 v0, p2

    iget-object v12, v0, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v11, v12, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 520
    :cond_1
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/exsettings/applications/RunningState$ProcessItem;->mCurSeq:I

    iput v11, v10, Lcom/android/exsettings/applications/RunningState$ServiceItem;->mCurSeq:I

    .line 521
    move-object/from16 v0, p2

    iput-object v0, v10, Lcom/android/exsettings/applications/RunningState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    .line 522
    move-object/from16 v0, p2

    iget-wide v12, v0, Landroid/app/ActivityManager$RunningServiceInfo;->restarting:J

    const-wide/16 v14, 0x0

    cmp-long v11, v12, v14

    if-nez v11, :cond_5

    move-object/from16 v0, p2

    iget-wide v2, v0, Landroid/app/ActivityManager$RunningServiceInfo;->activeSince:J

    .line 523
    .local v2, "activeSince":J
    :goto_1
    iget-wide v12, v10, Lcom/android/exsettings/applications/RunningState$ServiceItem;->mActiveSince:J

    cmp-long v11, v12, v2

    if-eqz v11, :cond_2

    .line 524
    iput-wide v2, v10, Lcom/android/exsettings/applications/RunningState$ServiceItem;->mActiveSince:J

    .line 525
    const/4 v4, 0x1

    .line 527
    :cond_2
    move-object/from16 v0, p2

    iget-object v11, v0, Landroid/app/ActivityManager$RunningServiceInfo;->clientPackage:Ljava/lang/String;

    if-eqz v11, :cond_6

    move-object/from16 v0, p2

    iget v11, v0, Landroid/app/ActivityManager$RunningServiceInfo;->clientLabel:I

    if-eqz v11, :cond_6

    .line 528
    iget-boolean v11, v10, Lcom/android/exsettings/applications/RunningState$ServiceItem;->mShownAsStarted:Z

    if-eqz v11, :cond_3

    .line 529
    const/4 v11, 0x0

    iput-boolean v11, v10, Lcom/android/exsettings/applications/RunningState$ServiceItem;->mShownAsStarted:Z

    .line 530
    const/4 v4, 0x1

    .line 533
    :cond_3
    :try_start_1
    move-object/from16 v0, p2

    iget-object v11, v0, Landroid/app/ActivityManager$RunningServiceInfo;->clientPackage:Ljava/lang/String;

    invoke-virtual {v9, v11}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v5

    .line 534
    .local v5, "clientr":Landroid/content/res/Resources;
    move-object/from16 v0, p2

    iget v11, v0, Landroid/app/ActivityManager$RunningServiceInfo;->clientLabel:I

    invoke-virtual {v5, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 535
    .local v8, "label":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    .line 536
    const/4 v13, 0x0

    aput-object v8, v12, v13

    const v13, 0x7f0c0a19

    .line 535
    invoke-virtual {v11, v13, v12}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v10, Lcom/android/exsettings/applications/RunningState$ServiceItem;->mDescription:Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 549
    .end local v5    # "clientr":Landroid/content/res/Resources;
    .end local v8    # "label":Ljava/lang/String;
    :goto_2
    return v4

    .line 516
    .end local v2    # "activeSince":J
    :cond_4
    const/4 v11, 0x0

    goto :goto_0

    .line 522
    :cond_5
    const-wide/16 v2, -0x1

    .restart local v2    # "activeSince":J
    goto :goto_1

    .line 537
    :catch_1
    move-exception v6

    .line 538
    .local v6, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v11, 0x0

    iput-object v11, v10, Lcom/android/exsettings/applications/RunningState$ServiceItem;->mDescription:Ljava/lang/String;

    goto :goto_2

    .line 541
    .end local v6    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_6
    iget-boolean v11, v10, Lcom/android/exsettings/applications/RunningState$ServiceItem;->mShownAsStarted:Z

    if-nez v11, :cond_7

    .line 542
    const/4 v11, 0x1

    iput-boolean v11, v10, Lcom/android/exsettings/applications/RunningState$ServiceItem;->mShownAsStarted:Z

    .line 543
    const/4 v4, 0x1

    .line 545
    :cond_7
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    .line 546
    const v12, 0x7f0c0a18

    .line 545
    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v10, Lcom/android/exsettings/applications/RunningState$ServiceItem;->mDescription:Ljava/lang/String;

    goto :goto_2
.end method

.method updateSize(Landroid/content/Context;JI)Z
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pss"    # J
    .param p4, "curSeq"    # I

    .prologue
    const/4 v4, 0x0

    .line 553
    const-wide/16 v2, 0x400

    mul-long/2addr v2, p2

    iput-wide v2, p0, Lcom/android/exsettings/applications/RunningState$ProcessItem;->mSize:J

    .line 554
    iget v1, p0, Lcom/android/exsettings/applications/RunningState$ProcessItem;->mCurSeq:I

    if-ne v1, p4, :cond_0

    .line 556
    iget-wide v2, p0, Lcom/android/exsettings/applications/RunningState$ProcessItem;->mSize:J

    .line 555
    invoke-static {p1, v2, v3}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    .line 557
    .local v0, "sizeStr":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/exsettings/applications/RunningState$ProcessItem;->mSizeStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 558
    iput-object v0, p0, Lcom/android/exsettings/applications/RunningState$ProcessItem;->mSizeStr:Ljava/lang/String;

    .line 562
    return v4

    .line 565
    .end local v0    # "sizeStr":Ljava/lang/String;
    :cond_0
    return v4
.end method
