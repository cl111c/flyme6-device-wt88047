.class public abstract Lcom/android/exsettings/applications/AppStateAppOpsBridge;
.super Lcom/android/exsettings/applications/AppStateBaseBridge;
.source "AppStateAppOpsBridge.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exsettings/applications/AppStateAppOpsBridge$PermissionState;
    }
.end annotation


# instance fields
.field private final mAppOpsManager:Landroid/app/AppOpsManager;

.field private final mAppOpsOpCodes:[I

.field private final mContext:Landroid/content/Context;

.field private final mIPackageManager:Landroid/content/pm/IPackageManager;

.field private final mPermissions:[Ljava/lang/String;

.field private final mProfiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/os/UserHandle;",
            ">;"
        }
    .end annotation
.end field

.field private final mUserManager:Landroid/os/UserManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/exsettingslib/applications/ApplicationsState;Lcom/android/exsettings/applications/AppStateBaseBridge$Callback;I[Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appState"    # Lcom/android/exsettingslib/applications/ApplicationsState;
    .param p3, "callback"    # Lcom/android/exsettings/applications/AppStateBaseBridge$Callback;
    .param p4, "appOpsOpCode"    # I
    .param p5, "permissions"    # [Ljava/lang/String;

    .prologue
    .line 61
    invoke-direct {p0, p2, p3}, Lcom/android/exsettings/applications/AppStateBaseBridge;-><init>(Lcom/android/exsettingslib/applications/ApplicationsState;Lcom/android/exsettings/applications/AppStateBaseBridge$Callback;)V

    .line 62
    iput-object p1, p0, Lcom/android/exsettings/applications/AppStateAppOpsBridge;->mContext:Landroid/content/Context;

    .line 63
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/applications/AppStateAppOpsBridge;->mIPackageManager:Landroid/content/pm/IPackageManager;

    .line 64
    invoke-static {p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/applications/AppStateAppOpsBridge;->mUserManager:Landroid/os/UserManager;

    .line 65
    iget-object v0, p0, Lcom/android/exsettings/applications/AppStateAppOpsBridge;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/applications/AppStateAppOpsBridge;->mProfiles:Ljava/util/List;

    .line 66
    const-string/jumbo v0, "appops"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/exsettings/applications/AppStateAppOpsBridge;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 67
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p4, v0, v1

    iput-object v0, p0, Lcom/android/exsettings/applications/AppStateAppOpsBridge;->mAppOpsOpCodes:[I

    .line 68
    iput-object p5, p0, Lcom/android/exsettings/applications/AppStateAppOpsBridge;->mPermissions:[Ljava/lang/String;

    .line 60
    return-void
.end method

.method private doesAnyPermissionMatch(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 5
    .param p1, "permissionToMatch"    # Ljava/lang/String;
    .param p2, "permissions"    # [Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 84
    array-length v3, p2

    move v1, v2

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, p2, v1

    .line 85
    .local v0, "permission":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 86
    const/4 v1, 0x1

    return v1

    .line 84
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 89
    .end local v0    # "permission":Ljava/lang/String;
    :cond_1
    return v2
.end method

.method private getEntries()Landroid/util/SparseArray;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/exsettings/applications/AppStateAppOpsBridge$PermissionState;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 148
    :try_start_0
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    .line 149
    .local v8, "packagesSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/exsettings/applications/AppStateAppOpsBridge;->mPermissions:[Ljava/lang/String;

    const/4 v14, 0x0

    array-length v0, v15

    move/from16 v16, v0

    :goto_0
    move/from16 v0, v16

    if-ge v14, v0, :cond_1

    aget-object v9, v15, v14

    .line 150
    .local v9, "permission":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/applications/AppStateAppOpsBridge;->mIPackageManager:Landroid/content/pm/IPackageManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v0, v9}, Landroid/content/pm/IPackageManager;->getAppOpPermissionPackages(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 151
    .local v10, "pkgs":[Ljava/lang/String;
    if-eqz v10, :cond_0

    .line 152
    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v8, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 149
    :cond_0
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 156
    .end local v9    # "permission":Ljava/lang/String;
    .end local v10    # "pkgs":[Ljava/lang/String;
    :cond_1
    invoke-interface {v8}, Ljava/util/Set;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_2

    .line 158
    const/4 v14, 0x0

    return-object v14

    .line 163
    :cond_2
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    .line 164
    .local v2, "entries":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/exsettings/applications/AppStateAppOpsBridge$PermissionState;>;>;"
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/exsettings/applications/AppStateAppOpsBridge;->mProfiles:Ljava/util/List;

    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "profile$iterator":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_5

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/os/UserHandle;

    .line 165
    .local v11, "profile":Landroid/os/UserHandle;
    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    .line 166
    .local v3, "entriesForProfile":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/exsettings/applications/AppStateAppOpsBridge$PermissionState;>;"
    invoke-virtual {v11}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v13

    .line 167
    .local v13, "profileId":I
    invoke-virtual {v2, v13, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 168
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "packageName$iterator":Ljava/util/Iterator;
    :cond_4
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 169
    .local v6, "packageName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/exsettings/applications/AppStateAppOpsBridge;->mIPackageManager:Landroid/content/pm/IPackageManager;

    invoke-interface {v14, v6, v13}, Landroid/content/pm/IPackageManager;->isPackageAvailable(Ljava/lang/String;I)Z

    move-result v4

    .line 171
    .local v4, "isAvailable":Z
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/exsettings/applications/AppStateAppOpsBridge;->shouldIgnorePackage(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_4

    if-eqz v4, :cond_4

    .line 172
    new-instance v5, Lcom/android/exsettings/applications/AppStateAppOpsBridge$PermissionState;

    invoke-direct {v5, v6, v11}, Lcom/android/exsettings/applications/AppStateAppOpsBridge$PermissionState;-><init>(Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 173
    .local v5, "newEntry":Lcom/android/exsettings/applications/AppStateAppOpsBridge$PermissionState;
    invoke-virtual {v3, v6, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 179
    .end local v2    # "entries":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/exsettings/applications/AppStateAppOpsBridge$PermissionState;>;>;"
    .end local v3    # "entriesForProfile":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/exsettings/applications/AppStateAppOpsBridge$PermissionState;>;"
    .end local v4    # "isAvailable":Z
    .end local v5    # "newEntry":Lcom/android/exsettings/applications/AppStateAppOpsBridge$PermissionState;
    .end local v6    # "packageName":Ljava/lang/String;
    .end local v7    # "packageName$iterator":Ljava/util/Iterator;
    .end local v8    # "packagesSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v11    # "profile":Landroid/os/UserHandle;
    .end local v12    # "profile$iterator":Ljava/util/Iterator;
    .end local v13    # "profileId":I
    :catch_0
    move-exception v1

    .line 180
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v14, "AppStateAppOpsBridge"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "PackageManager is dead. Can\'t get list of packages requesting "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 181
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/applications/AppStateAppOpsBridge;->mPermissions:[Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aget-object v16, v16, v17

    .line 180
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 182
    const/4 v14, 0x0

    return-object v14

    .line 178
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local v2    # "entries":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/exsettings/applications/AppStateAppOpsBridge$PermissionState;>;>;"
    .restart local v8    # "packagesSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v12    # "profile$iterator":Ljava/util/Iterator;
    :cond_5
    return-object v2
.end method

.method private isThisUserAProfileOfCurrentUser(I)Z
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 72
    iget-object v2, p0, Lcom/android/exsettings/applications/AppStateAppOpsBridge;->mProfiles:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .line 73
    .local v1, "profilesMax":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 74
    iget-object v2, p0, Lcom/android/exsettings/applications/AppStateAppOpsBridge;->mProfiles:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserHandle;

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 75
    const/4 v2, 0x1

    return v2

    .line 73
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 78
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method private loadAppOpsStates(Landroid/util/SparseArray;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/exsettings/applications/AppStateAppOpsBridge$PermissionState;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 225
    .local p1, "entries":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/exsettings/applications/AppStateAppOpsBridge$PermissionState;>;>;"
    iget-object v7, p0, Lcom/android/exsettings/applications/AppStateAppOpsBridge;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 226
    iget-object v8, p0, Lcom/android/exsettings/applications/AppStateAppOpsBridge;->mAppOpsOpCodes:[I

    .line 225
    invoke-virtual {v7, v8}, Landroid/app/AppOpsManager;->getPackagesForOps([I)Ljava/util/List;

    move-result-object v3

    .line 227
    .local v3, "packageOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    .line 228
    .local v4, "packageOpsCount":I
    :goto_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v4, :cond_5

    .line 229
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AppOpsManager$PackageOps;

    .line 230
    .local v2, "packageOp":Landroid/app/AppOpsManager$PackageOps;
    invoke-virtual {v2}, Landroid/app/AppOpsManager$PackageOps;->getUid()I

    move-result v7

    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    .line 231
    .local v6, "userId":I
    invoke-direct {p0, v6}, Lcom/android/exsettings/applications/AppStateAppOpsBridge;->isThisUserAProfileOfCurrentUser(I)Z

    move-result v7

    if-nez v7, :cond_2

    .line 228
    :cond_0
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 227
    .end local v1    # "i":I
    .end local v2    # "packageOp":Landroid/app/AppOpsManager$PackageOps;
    .end local v4    # "packageOpsCount":I
    .end local v6    # "userId":I
    :cond_1
    const/4 v4, 0x0

    .restart local v4    # "packageOpsCount":I
    goto :goto_0

    .line 236
    .restart local v1    # "i":I
    .restart local v2    # "packageOp":Landroid/app/AppOpsManager$PackageOps;
    .restart local v6    # "userId":I
    :cond_2
    invoke-virtual {p1, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    .line 237
    .local v0, "entriesForProfile":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/exsettings/applications/AppStateAppOpsBridge$PermissionState;>;"
    if-eqz v0, :cond_0

    .line 240
    invoke-virtual {v2}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/exsettings/applications/AppStateAppOpsBridge$PermissionState;

    .line 241
    .local v5, "pe":Lcom/android/exsettings/applications/AppStateAppOpsBridge$PermissionState;
    if-nez v5, :cond_3

    .line 242
    const-string/jumbo v7, "AppStateAppOpsBridge"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "AppOp permission exists for package "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 243
    const-string/jumbo v9, " of user "

    .line 242
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 243
    const-string/jumbo v9, " but package doesn\'t exist or did not request "

    .line 242
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 244
    iget-object v9, p0, Lcom/android/exsettings/applications/AppStateAppOpsBridge;->mPermissions:[Ljava/lang/String;

    .line 242
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 244
    const-string/jumbo v9, " access"

    .line 242
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 248
    :cond_3
    invoke-virtual {v2}, Landroid/app/AppOpsManager$PackageOps;->getOps()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x1

    if-ge v7, v8, :cond_4

    .line 249
    const-string/jumbo v7, "AppStateAppOpsBridge"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "No AppOps permission exists for package "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 252
    :cond_4
    invoke-virtual {v2}, Landroid/app/AppOpsManager$PackageOps;->getOps()Ljava/util/List;

    move-result-object v7

    const/4 v8, 0x0

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/AppOpsManager$OpEntry;

    invoke-virtual {v7}, Landroid/app/AppOpsManager$OpEntry;->getMode()I

    move-result v7

    iput v7, v5, Lcom/android/exsettings/applications/AppStateAppOpsBridge$PermissionState;->appOpMode:I

    goto/16 :goto_2

    .line 223
    .end local v0    # "entriesForProfile":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/exsettings/applications/AppStateAppOpsBridge$PermissionState;>;"
    .end local v2    # "packageOp":Landroid/app/AppOpsManager$PackageOps;
    .end local v5    # "pe":Lcom/android/exsettings/applications/AppStateAppOpsBridge$PermissionState;
    .end local v6    # "userId":I
    :cond_5
    return-void
.end method

.method private loadPermissionsStates(Landroid/util/SparseArray;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/exsettings/applications/AppStateAppOpsBridge$PermissionState;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 193
    .local p1, "entries":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/exsettings/applications/AppStateAppOpsBridge$PermissionState;>;>;"
    :try_start_0
    iget-object v10, p0, Lcom/android/exsettings/applications/AppStateAppOpsBridge;->mProfiles:Ljava/util/List;

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "profile$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/UserHandle;

    .line 194
    .local v7, "profile":Landroid/os/UserHandle;
    invoke-virtual {v7}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v9

    .line 195
    .local v9, "profileId":I
    invoke-virtual {p1, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArrayMap;

    .line 196
    .local v1, "entriesForProfile":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/exsettings/applications/AppStateAppOpsBridge$PermissionState;>;"
    if-eqz v1, :cond_0

    .line 200
    iget-object v10, p0, Lcom/android/exsettings/applications/AppStateAppOpsBridge;->mIPackageManager:Landroid/content/pm/IPackageManager;

    .line 201
    iget-object v11, p0, Lcom/android/exsettings/applications/AppStateAppOpsBridge;->mPermissions:[Ljava/lang/String;

    const/4 v12, 0x0

    .line 200
    invoke-interface {v10, v11, v12, v9}, Landroid/content/pm/IPackageManager;->getPackagesHoldingPermissions([Ljava/lang/String;II)Landroid/content/pm/ParceledListSlice;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v5

    .line 202
    .local v5, "packageInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    if-eqz v5, :cond_2

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    .line 203
    .local v4, "packageInfoCount":I
    :goto_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v4, :cond_0

    .line 204
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInfo;

    .line 205
    .local v3, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v10, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/exsettings/applications/AppStateAppOpsBridge$PermissionState;

    .line 206
    .local v6, "pe":Lcom/android/exsettings/applications/AppStateAppOpsBridge$PermissionState;
    if-eqz v6, :cond_1

    .line 207
    iput-object v3, v6, Lcom/android/exsettings/applications/AppStateAppOpsBridge$PermissionState;->packageInfo:Landroid/content/pm/PackageInfo;

    .line 208
    const/4 v10, 0x1

    iput-boolean v10, v6, Lcom/android/exsettings/applications/AppStateAppOpsBridge$PermissionState;->staticPermissionGranted:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 203
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 202
    .end local v2    # "i":I
    .end local v3    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v4    # "packageInfoCount":I
    .end local v6    # "pe":Lcom/android/exsettings/applications/AppStateAppOpsBridge$PermissionState;
    :cond_2
    const/4 v4, 0x0

    .restart local v4    # "packageInfoCount":I
    goto :goto_0

    .line 212
    .end local v1    # "entriesForProfile":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/exsettings/applications/AppStateAppOpsBridge$PermissionState;>;"
    .end local v4    # "packageInfoCount":I
    .end local v5    # "packageInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local v7    # "profile":Landroid/os/UserHandle;
    .end local v8    # "profile$iterator":Ljava/util/Iterator;
    .end local v9    # "profileId":I
    :catch_0
    move-exception v0

    .line 213
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v10, "AppStateAppOpsBridge"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "PackageManager is dead. Can\'t get list of packages granted "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 214
    iget-object v12, p0, Lcom/android/exsettings/applications/AppStateAppOpsBridge;->mPermissions:[Ljava/lang/String;

    .line 213
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 215
    return-void

    .line 190
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v8    # "profile$iterator":Ljava/util/Iterator;
    :cond_3
    return-void
.end method

.method private shouldIgnorePackage(Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 260
    const-string/jumbo v0, "android"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/exsettings/applications/AppStateAppOpsBridge;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getNumPackagesAllowedByAppOps()I
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 277
    invoke-direct {p0}, Lcom/android/exsettings/applications/AppStateAppOpsBridge;->getEntries()Landroid/util/SparseArray;

    move-result-object v0

    .line 278
    .local v0, "entries":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/exsettings/applications/AppStateAppOpsBridge$PermissionState;>;>;"
    if-nez v0, :cond_0

    .line 279
    return v7

    .line 281
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/exsettings/applications/AppStateAppOpsBridge;->loadPermissionsStates(Landroid/util/SparseArray;)V

    .line 282
    invoke-direct {p0, v0}, Lcom/android/exsettings/applications/AppStateAppOpsBridge;->loadAppOpsStates(Landroid/util/SparseArray;)V

    .line 283
    iget-object v6, p0, Lcom/android/exsettings/applications/AppStateAppOpsBridge;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v6}, Landroid/os/UserManager;->getUserHandle()I

    move-result v6

    invoke-virtual {v0, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArrayMap;

    .line 285
    .local v1, "entriesForProfile":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/exsettings/applications/AppStateAppOpsBridge$PermissionState;>;"
    if-nez v1, :cond_1

    .line 286
    return v7

    .line 288
    :cond_1
    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v4

    .line 289
    .local v4, "permStates":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/exsettings/applications/AppStateAppOpsBridge$PermissionState;>;"
    const/4 v5, 0x0

    .line 290
    .local v5, "result":I
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "permState$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/exsettings/applications/AppStateAppOpsBridge$PermissionState;

    .line 291
    .local v2, "permState":Lcom/android/exsettings/applications/AppStateAppOpsBridge$PermissionState;
    invoke-virtual {v2}, Lcom/android/exsettings/applications/AppStateAppOpsBridge$PermissionState;->isPermissible()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 292
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 295
    .end local v2    # "permState":Lcom/android/exsettings/applications/AppStateAppOpsBridge$PermissionState;
    :cond_3
    return v5
.end method

.method public getNumPackagesDeclaredPermission()I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 264
    invoke-direct {p0}, Lcom/android/exsettings/applications/AppStateAppOpsBridge;->getEntries()Landroid/util/SparseArray;

    move-result-object v0

    .line 265
    .local v0, "entries":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/exsettings/applications/AppStateAppOpsBridge$PermissionState;>;>;"
    if-nez v0, :cond_0

    .line 266
    return v3

    .line 268
    :cond_0
    iget-object v2, p0, Lcom/android/exsettings/applications/AppStateAppOpsBridge;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v2}, Landroid/os/UserManager;->getUserHandle()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArrayMap;

    .line 270
    .local v1, "entriesForProfile":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/exsettings/applications/AppStateAppOpsBridge$PermissionState;>;"
    if-nez v1, :cond_1

    .line 271
    return v3

    .line 273
    :cond_1
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v2

    return v2
.end method

.method public getPermissionInfo(Ljava/lang/String;I)Lcom/android/exsettings/applications/AppStateAppOpsBridge$PermissionState;
    .locals 9
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 93
    new-instance v4, Lcom/android/exsettings/applications/AppStateAppOpsBridge$PermissionState;

    new-instance v6, Landroid/os/UserHandle;

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    invoke-direct {v6, v7}, Landroid/os/UserHandle;-><init>(I)V

    invoke-direct {v4, p1, v6}, Lcom/android/exsettings/applications/AppStateAppOpsBridge$PermissionState;-><init>(Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 96
    .local v4, "permissionState":Lcom/android/exsettings/applications/AppStateAppOpsBridge$PermissionState;
    :try_start_0
    iget-object v6, p0, Lcom/android/exsettings/applications/AppStateAppOpsBridge;->mIPackageManager:Landroid/content/pm/IPackageManager;

    .line 97
    iget-object v7, v4, Lcom/android/exsettings/applications/AppStateAppOpsBridge$PermissionState;->userHandle:Landroid/os/UserHandle;

    invoke-virtual {v7}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v7

    const/16 v8, 0x1000

    .line 96
    invoke-interface {v6, p1, v8, v7}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v6

    iput-object v6, v4, Lcom/android/exsettings/applications/AppStateAppOpsBridge$PermissionState;->packageInfo:Landroid/content/pm/PackageInfo;

    .line 99
    iget-object v6, v4, Lcom/android/exsettings/applications/AppStateAppOpsBridge$PermissionState;->packageInfo:Landroid/content/pm/PackageInfo;

    iget-object v5, v6, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .line 100
    .local v5, "requestedPermissions":[Ljava/lang/String;
    iget-object v6, v4, Lcom/android/exsettings/applications/AppStateAppOpsBridge$PermissionState;->packageInfo:Landroid/content/pm/PackageInfo;

    iget-object v3, v6, Landroid/content/pm/PackageInfo;->requestedPermissionsFlags:[I

    .line 101
    .local v3, "permissionFlags":[I
    if-eqz v5, :cond_0

    .line 102
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v6, v5

    if-ge v1, v6, :cond_0

    .line 103
    aget-object v6, v5, v1

    iget-object v7, p0, Lcom/android/exsettings/applications/AppStateAppOpsBridge;->mPermissions:[Ljava/lang/String;

    invoke-direct {p0, v6, v7}, Lcom/android/exsettings/applications/AppStateAppOpsBridge;->doesAnyPermissionMatch(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 104
    const/4 v6, 0x1

    iput-boolean v6, v4, Lcom/android/exsettings/applications/AppStateAppOpsBridge$PermissionState;->permissionDeclared:Z

    .line 105
    aget v6, v3, v1

    and-int/lit8 v6, v6, 0x2

    if-eqz v6, :cond_2

    .line 106
    const/4 v6, 0x1

    iput-boolean v6, v4, Lcom/android/exsettings/applications/AppStateAppOpsBridge$PermissionState;->staticPermissionGranted:Z

    .line 113
    .end local v1    # "i":I
    :cond_0
    iget-object v6, p0, Lcom/android/exsettings/applications/AppStateAppOpsBridge;->mAppOpsManager:Landroid/app/AppOpsManager;

    iget-object v7, p0, Lcom/android/exsettings/applications/AppStateAppOpsBridge;->mAppOpsOpCodes:[I

    invoke-virtual {v6, p2, p1, v7}, Landroid/app/AppOpsManager;->getOpsForPackage(ILjava/lang/String;[I)Ljava/util/List;

    move-result-object v2

    .line 114
    .local v2, "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_1

    const/4 v6, 0x0

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/AppOpsManager$PackageOps;

    invoke-virtual {v6}, Landroid/app/AppOpsManager$PackageOps;->getOps()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_1

    .line 115
    const/4 v6, 0x0

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/AppOpsManager$PackageOps;

    invoke-virtual {v6}, Landroid/app/AppOpsManager$PackageOps;->getOps()Ljava/util/List;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/AppOpsManager$OpEntry;

    invoke-virtual {v6}, Landroid/app/AppOpsManager$OpEntry;->getMode()I

    move-result v6

    iput v6, v4, Lcom/android/exsettings/applications/AppStateAppOpsBridge$PermissionState;->appOpMode:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    .end local v2    # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .end local v3    # "permissionFlags":[I
    .end local v5    # "requestedPermissions":[Ljava/lang/String;
    :cond_1
    :goto_1
    return-object v4

    .line 102
    .restart local v1    # "i":I
    .restart local v3    # "permissionFlags":[I
    .restart local v5    # "requestedPermissions":[Ljava/lang/String;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 117
    .end local v1    # "i":I
    .end local v3    # "permissionFlags":[I
    .end local v5    # "requestedPermissions":[Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 118
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v6, "AppStateAppOpsBridge"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "PackageManager is dead. Can\'t get package info "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method protected loadAllExtraInfo()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 125
    invoke-direct {p0}, Lcom/android/exsettings/applications/AppStateAppOpsBridge;->getEntries()Landroid/util/SparseArray;

    move-result-object v3

    .line 128
    .local v3, "entries":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/exsettings/applications/AppStateAppOpsBridge$PermissionState;>;>;"
    invoke-direct {p0, v3}, Lcom/android/exsettings/applications/AppStateAppOpsBridge;->loadPermissionsStates(Landroid/util/SparseArray;)V

    .line 129
    invoke-direct {p0, v3}, Lcom/android/exsettings/applications/AppStateAppOpsBridge;->loadAppOpsStates(Landroid/util/SparseArray;)V

    .line 132
    iget-object v7, p0, Lcom/android/exsettings/applications/AppStateAppOpsBridge;->mAppSession:Lcom/android/exsettingslib/applications/ApplicationsState$Session;

    invoke-virtual {v7}, Lcom/android/exsettingslib/applications/ApplicationsState$Session;->getAllApps()Ljava/util/ArrayList;

    move-result-object v2

    .line 133
    .local v2, "apps":Ljava/util/List;, "Ljava/util/List<Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .line 134
    .local v0, "N":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v0, :cond_1

    .line 135
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;

    .line 136
    .local v1, "app":Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;
    iget-object v7, v1, Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    .line 137
    .local v5, "userId":I
    invoke-virtual {v3, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/ArrayMap;

    .line 138
    .local v6, "userMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/exsettings/applications/AppStateAppOpsBridge$PermissionState;>;"
    if-eqz v6, :cond_0

    iget-object v7, v1, Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/exsettings/applications/AppStateAppOpsBridge$PermissionState;

    :goto_1
    iput-object v7, v1, Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    .line 134
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    move-object v7, v8

    .line 138
    goto :goto_1

    .line 124
    .end local v1    # "app":Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;
    .end local v5    # "userId":I
    .end local v6    # "userMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/exsettings/applications/AppStateAppOpsBridge$PermissionState;>;"
    :cond_1
    return-void
.end method

.method protected abstract updateExtraInfo(Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;Ljava/lang/String;I)V
.end method
