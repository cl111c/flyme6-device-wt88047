.class public Lcom/android/exsettings/vpn2/VpnSettings;
.super Lcom/android/exsettings/SettingsPreferenceFragment;
.source "VpnSettings.java"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exsettings/vpn2/VpnSettings$1;,
        Lcom/android/exsettings/vpn2/VpnSettings$2;
    }
.end annotation


# static fields
.field private static final VPN_REQUEST:Landroid/net/NetworkRequest;


# instance fields
.field private mAppPreferences:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/exsettings/vpn2/AppPreference;",
            ">;"
        }
    .end annotation
.end field

.field private mConfigPreferences:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/exsettings/vpn2/ConfigPreference;",
            ">;"
        }
    .end annotation
.end field

.field private mConnectedLegacyVpn:Lcom/android/internal/net/LegacyVpnInfo;

.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private final mConnectivityService:Landroid/net/IConnectivityManager;

.field private final mKeyStore:Landroid/security/KeyStore;

.field private mManageListener:Landroid/view/View$OnClickListener;

.field private mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private mUnavailable:Z

.field private mUpdater:Landroid/os/Handler;

.field private mUserManager:Landroid/os/UserManager;


# direct methods
.method static synthetic -get0(Lcom/android/exsettings/vpn2/VpnSettings;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/vpn2/VpnSettings;->mUpdater:Landroid/os/Handler;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 78
    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 79
    const/16 v1, 0xf

    .line 78
    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->removeCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    .line 80
    const/16 v1, 0xd

    .line 78
    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->removeCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    .line 81
    const/16 v1, 0xe

    .line 78
    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->removeCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v0

    sput-object v0, Lcom/android/exsettings/vpn2/VpnSettings;->VPN_REQUEST:Landroid/net/NetworkRequest;

    .line 70
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;-><init>()V

    .line 85
    const-string/jumbo v0, "connectivity"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 84
    invoke-static {v0}, Landroid/net/IConnectivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/vpn2/VpnSettings;->mConnectivityService:Landroid/net/IConnectivityManager;

    .line 89
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/vpn2/VpnSettings;->mKeyStore:Landroid/security/KeyStore;

    .line 91
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/exsettings/vpn2/VpnSettings;->mConfigPreferences:Ljava/util/HashMap;

    .line 92
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/exsettings/vpn2/VpnSettings;->mAppPreferences:Ljava/util/HashMap;

    .line 310
    new-instance v0, Lcom/android/exsettings/vpn2/VpnSettings$1;

    invoke-direct {v0, p0}, Lcom/android/exsettings/vpn2/VpnSettings$1;-><init>(Lcom/android/exsettings/vpn2/VpnSettings;)V

    iput-object v0, p0, Lcom/android/exsettings/vpn2/VpnSettings;->mManageListener:Landroid/view/View$OnClickListener;

    .line 332
    new-instance v0, Lcom/android/exsettings/vpn2/VpnSettings$2;

    invoke-direct {v0, p0}, Lcom/android/exsettings/vpn2/VpnSettings$2;-><init>(Lcom/android/exsettings/vpn2/VpnSettings;)V

    iput-object v0, p0, Lcom/android/exsettings/vpn2/VpnSettings;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 70
    return-void
.end method

.method private getVpnApps()Ljava/util/List;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/app/AppOpsManager$PackageOps;",
            ">;"
        }
    .end annotation

    .prologue
    .line 354
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v10

    .line 357
    .local v10, "result":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    .line 358
    .local v3, "currentProfileIds":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Boolean;>;"
    iget-object v12, p0, Lcom/android/exsettings/vpn2/VpnSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v12}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "profile$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/UserHandle;

    .line 359
    .local v8, "profile":Landroid/os/UserHandle;
    invoke-virtual {v8}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v12

    sget-object v13, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v3, v12, v13}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 363
    .end local v8    # "profile":Landroid/os/UserHandle;
    :cond_0
    const-string/jumbo v12, "appops"

    invoke-virtual {p0, v12}, Lcom/android/exsettings/vpn2/VpnSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager;

    .line 364
    .local v1, "aom":Landroid/app/AppOpsManager;
    const/4 v12, 0x1

    new-array v12, v12, [I

    const/16 v13, 0x2f

    const/4 v14, 0x0

    aput v13, v12, v14

    invoke-virtual {v1, v12}, Landroid/app/AppOpsManager;->getPackagesForOps([I)Ljava/util/List;

    move-result-object v2

    .line 365
    .local v2, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    if-eqz v2, :cond_4

    .line 366
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "pkg$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/AppOpsManager$PackageOps;

    .line 367
    .local v6, "pkg":Landroid/app/AppOpsManager$PackageOps;
    invoke-virtual {v6}, Landroid/app/AppOpsManager$PackageOps;->getUid()I

    move-result v12

    invoke-static {v12}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v11

    .line 368
    .local v11, "userId":I
    invoke-virtual {v3, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    if-eqz v12, :cond_1

    .line 373
    const/4 v0, 0x0

    .line 374
    .local v0, "allowed":Z
    invoke-virtual {v6}, Landroid/app/AppOpsManager$PackageOps;->getOps()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "op$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/AppOpsManager$OpEntry;

    .line 375
    .local v4, "op":Landroid/app/AppOpsManager$OpEntry;
    invoke-virtual {v4}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v12

    const/16 v13, 0x2f

    if-ne v12, v13, :cond_2

    .line 376
    invoke-virtual {v4}, Landroid/app/AppOpsManager$OpEntry;->getMode()I

    move-result v12

    if-nez v12, :cond_2

    .line 377
    const/4 v0, 0x1

    goto :goto_2

    .line 380
    .end local v4    # "op":Landroid/app/AppOpsManager$OpEntry;
    :cond_3
    if-eqz v0, :cond_1

    .line 381
    invoke-interface {v10, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 385
    .end local v0    # "allowed":Z
    .end local v5    # "op$iterator":Ljava/util/Iterator;
    .end local v6    # "pkg":Landroid/app/AppOpsManager$PackageOps;
    .end local v7    # "pkg$iterator":Ljava/util/Iterator;
    .end local v11    # "userId":I
    :cond_4
    return-object v10
.end method

.method private static getVpnIdentifier(ILjava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "userId"    # I
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 329
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected static varargs loadVpnProfiles(Landroid/security/KeyStore;[I)Ljava/util/List;
    .locals 8
    .param p0, "keyStore"    # Landroid/security/KeyStore;
    .param p1, "excludeTypes"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/security/KeyStore;",
            "[I)",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/net/VpnProfile;",
            ">;"
        }
    .end annotation

    .prologue
    .line 389
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 393
    .local v2, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    invoke-virtual {p0}, Landroid/security/KeyStore;->isUnlocked()Z

    move-result v3

    if-nez v3, :cond_0

    .line 394
    return-object v2

    .line 398
    :cond_0
    const-string/jumbo v3, "VPN_"

    invoke-virtual {p0, v3}, Landroid/security/KeyStore;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v3, 0x0

    array-length v5, v4

    :goto_0
    if-ge v3, v5, :cond_3

    aget-object v0, v4, v3

    .line 399
    .local v0, "key":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "VPN_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Landroid/security/KeyStore;->get(Ljava/lang/String;)[B

    move-result-object v6

    invoke-static {v0, v6}, Lcom/android/internal/net/VpnProfile;->decode(Ljava/lang/String;[B)Lcom/android/internal/net/VpnProfile;

    move-result-object v1

    .line 400
    .local v1, "profile":Lcom/android/internal/net/VpnProfile;
    if-eqz v1, :cond_1

    iget v6, v1, Lcom/android/internal/net/VpnProfile;->type:I

    invoke-static {p1, v6}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 398
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 401
    :cond_2
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 404
    .end local v0    # "key":Ljava/lang/String;
    .end local v1    # "profile":Lcom/android/internal/net/VpnProfile;
    :cond_3
    return-object v2
.end method


# virtual methods
.method protected getHelpResource()I
    .locals 1

    .prologue
    .line 350
    const v0, 0x7f0c0ddf

    return v0
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 101
    const/16 v0, 0x64

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 22
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 208
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/vpn2/VpnSettings;->mUpdater:Landroid/os/Handler;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/os/Handler;->removeMessages(I)V

    .line 211
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/vpn2/VpnSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v17

    .line 212
    .local v17, "vpnGroup":Landroid/preference/PreferenceGroup;
    invoke-virtual/range {v17 .. v17}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 213
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/vpn2/VpnSettings;->mConfigPreferences:Ljava/util/HashMap;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/HashMap;->clear()V

    .line 214
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/vpn2/VpnSettings;->mAppPreferences:Ljava/util/HashMap;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/HashMap;->clear()V

    .line 217
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/vpn2/VpnSettings;->mKeyStore:Landroid/security/KeyStore;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move/from16 v0, v19

    new-array v0, v0, [I

    move-object/from16 v19, v0

    invoke-static/range {v18 .. v19}, Lcom/android/exsettings/vpn2/VpnSettings;->loadVpnProfiles(Landroid/security/KeyStore;[I)Ljava/util/List;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, "profile$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_0

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/internal/net/VpnProfile;

    .line 218
    .local v15, "profile":Lcom/android/internal/net/VpnProfile;
    new-instance v11, Lcom/android/exsettings/vpn2/ConfigPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/vpn2/VpnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/vpn2/VpnSettings;->mManageListener:Landroid/view/View$OnClickListener;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v11, v0, v1, v15}, Lcom/android/exsettings/vpn2/ConfigPreference;-><init>(Landroid/content/Context;Landroid/view/View$OnClickListener;Lcom/android/internal/net/VpnProfile;)V

    .line 220
    .local v11, "pref":Lcom/android/exsettings/vpn2/ConfigPreference;
    move-object/from16 v0, p0

    invoke-virtual {v11, v0}, Lcom/android/exsettings/vpn2/ConfigPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 221
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/vpn2/VpnSettings;->mConfigPreferences:Ljava/util/HashMap;

    move-object/from16 v18, v0

    iget-object v0, v15, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 226
    .end local v11    # "pref":Lcom/android/exsettings/vpn2/ConfigPreference;
    .end local v15    # "profile":Lcom/android/internal/net/VpnProfile;
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/android/exsettings/vpn2/VpnSettings;->getVpnApps()Ljava/util/List;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "pkg$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/AppOpsManager$PackageOps;

    .line 227
    .local v8, "pkg":Landroid/app/AppOpsManager$PackageOps;
    invoke-virtual {v8}, Landroid/app/AppOpsManager$PackageOps;->getUid()I

    move-result v18

    invoke-static/range {v18 .. v18}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v18

    invoke-virtual {v8}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/android/exsettings/vpn2/VpnSettings;->getVpnIdentifier(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 228
    .local v7, "key":Ljava/lang/String;
    new-instance v10, Lcom/android/exsettings/vpn2/AppPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/vpn2/VpnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/vpn2/VpnSettings;->mManageListener:Landroid/view/View$OnClickListener;

    move-object/from16 v19, v0

    .line 229
    invoke-virtual {v8}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual {v8}, Landroid/app/AppOpsManager$PackageOps;->getUid()I

    move-result v21

    .line 228
    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move/from16 v3, v21

    invoke-direct {v10, v0, v1, v2, v3}, Lcom/android/exsettings/vpn2/AppPreference;-><init>(Landroid/content/Context;Landroid/view/View$OnClickListener;Ljava/lang/String;I)V

    .line 230
    .local v10, "pref":Lcom/android/exsettings/vpn2/AppPreference;
    move-object/from16 v0, p0

    invoke-virtual {v10, v0}, Lcom/android/exsettings/vpn2/AppPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 231
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/vpn2/VpnSettings;->mAppPreferences:Ljava/util/HashMap;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v7, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_1

    .line 238
    .end local v7    # "key":Ljava/lang/String;
    .end local v8    # "pkg":Landroid/app/AppOpsManager$PackageOps;
    .end local v10    # "pref":Lcom/android/exsettings/vpn2/AppPreference;
    :cond_1
    const/16 v18, 0x0

    :try_start_0
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/vpn2/VpnSettings;->mConnectedLegacyVpn:Lcom/android/internal/net/LegacyVpnInfo;

    .line 239
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/vpn2/VpnSettings;->mConnectivityService:Landroid/net/IConnectivityManager;

    move-object/from16 v18, v0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v19

    invoke-interface/range {v18 .. v19}, Landroid/net/IConnectivityManager;->getLegacyVpnInfo(I)Lcom/android/internal/net/LegacyVpnInfo;

    move-result-object v6

    .line 240
    .local v6, "info":Lcom/android/internal/net/LegacyVpnInfo;
    if-eqz v6, :cond_2

    .line 241
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/vpn2/VpnSettings;->mConfigPreferences:Ljava/util/HashMap;

    move-object/from16 v18, v0

    iget-object v0, v6, Lcom/android/internal/net/LegacyVpnInfo;->key:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/exsettings/vpn2/ConfigPreference;

    .line 242
    .local v13, "preference":Lcom/android/exsettings/vpn2/ConfigPreference;
    if-eqz v13, :cond_2

    .line 243
    iget v0, v6, Lcom/android/internal/net/LegacyVpnInfo;->state:I

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Lcom/android/exsettings/vpn2/ConfigPreference;->setState(I)V

    .line 244
    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/exsettings/vpn2/VpnSettings;->mConnectedLegacyVpn:Lcom/android/internal/net/LegacyVpnInfo;

    .line 249
    .end local v13    # "preference":Lcom/android/exsettings/vpn2/ConfigPreference;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/vpn2/VpnSettings;->mUserManager:Landroid/os/UserManager;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_3
    :goto_2
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_4

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/os/UserHandle;

    .line 250
    .local v14, "profile":Landroid/os/UserHandle;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/vpn2/VpnSettings;->mConnectivityService:Landroid/net/IConnectivityManager;

    move-object/from16 v18, v0

    invoke-virtual {v14}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v19

    invoke-interface/range {v18 .. v19}, Landroid/net/IConnectivityManager;->getVpnConfig(I)Lcom/android/internal/net/VpnConfig;

    move-result-object v4

    .line 251
    .local v4, "cfg":Lcom/android/internal/net/VpnConfig;
    if-eqz v4, :cond_3

    .line 252
    invoke-virtual {v14}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v18

    iget-object v0, v4, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-static/range {v18 .. v19}, Lcom/android/exsettings/vpn2/VpnSettings;->getVpnIdentifier(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 253
    .restart local v7    # "key":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/vpn2/VpnSettings;->mAppPreferences:Ljava/util/HashMap;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/exsettings/vpn2/AppPreference;

    .line 254
    .local v12, "preference":Lcom/android/exsettings/vpn2/AppPreference;
    if-eqz v12, :cond_3

    .line 255
    const/16 v18, 0x3

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Lcom/android/exsettings/vpn2/AppPreference;->setState(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 259
    .end local v4    # "cfg":Lcom/android/internal/net/VpnConfig;
    .end local v6    # "info":Lcom/android/internal/net/LegacyVpnInfo;
    .end local v7    # "key":Ljava/lang/String;
    .end local v12    # "preference":Lcom/android/exsettings/vpn2/AppPreference;
    .end local v14    # "profile":Landroid/os/UserHandle;
    :catch_0
    move-exception v5

    .line 263
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/vpn2/VpnSettings;->mUpdater:Landroid/os/Handler;

    move-object/from16 v18, v0

    const-wide/16 v20, 0x3e8

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v21}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 264
    const/16 v18, 0x1

    return v18
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x1

    .line 106
    invoke-super {p0, p1}, Lcom/android/exsettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 108
    const-string/jumbo v0, "user"

    invoke-virtual {p0, v0}, Lcom/android/exsettings/vpn2/VpnSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/exsettings/vpn2/VpnSettings;->mUserManager:Landroid/os/UserManager;

    .line 109
    iget-object v0, p0, Lcom/android/exsettings/vpn2/VpnSettings;->mUserManager:Landroid/os/UserManager;

    const-string/jumbo v1, "no_config_vpn"

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    iput-boolean v2, p0, Lcom/android/exsettings/vpn2/VpnSettings;->mUnavailable:Z

    .line 111
    new-instance v0, Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/android/exsettings/vpn2/VpnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/preference/PreferenceScreen;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0, v0}, Lcom/android/exsettings/vpn2/VpnSettings;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    .line 112
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/exsettings/vpn2/VpnSettings;->setHasOptionsMenu(Z)V

    .line 113
    return-void

    .line 116
    :cond_0
    const-string/jumbo v0, "connectivity"

    invoke-virtual {p0, v0}, Lcom/android/exsettings/vpn2/VpnSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/exsettings/vpn2/VpnSettings;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 118
    invoke-virtual {p0, v2}, Lcom/android/exsettings/vpn2/VpnSettings;->setHasOptionsMenu(Z)V

    .line 119
    const v0, 0x7f08006d

    invoke-virtual {p0, v0}, Lcom/android/exsettings/vpn2/VpnSettings;->addPreferencesFromResource(I)V

    .line 105
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 124
    invoke-super {p0, p1, p2}, Lcom/android/exsettings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 125
    const v0, 0x7f14000b

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 123
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v6, 0x1

    .line 140
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 156
    invoke-super {p0, p1}, Lcom/android/exsettings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v3

    return v3

    .line 143
    :pswitch_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 144
    .local v0, "millis":J
    :goto_0
    iget-object v3, p0, Lcom/android/exsettings/vpn2/VpnSettings;->mConfigPreferences:Ljava/util/HashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 145
    const-wide/16 v4, 0x1

    add-long/2addr v0, v4

    goto :goto_0

    .line 147
    :cond_0
    new-instance v2, Lcom/android/internal/net/VpnProfile;

    invoke-static {v0, v1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/internal/net/VpnProfile;-><init>(Ljava/lang/String;)V

    .line 148
    .local v2, "profile":Lcom/android/internal/net/VpnProfile;
    const/4 v3, 0x0

    invoke-static {p0, v2, v6, v3}, Lcom/android/exsettings/vpn2/ConfigDialogFragment;->show(Lcom/android/exsettings/vpn2/VpnSettings;Lcom/android/internal/net/VpnProfile;ZZ)V

    .line 149
    return v6

    .line 152
    .end local v0    # "millis":J
    .end local v2    # "profile":Lcom/android/internal/net/VpnProfile;
    :pswitch_1
    invoke-static {p0}, Lcom/android/exsettings/vpn2/LockdownConfigFragment;->show(Lcom/android/exsettings/vpn2/VpnSettings;)V

    .line 153
    return v6

    .line 140
    nop

    :pswitch_data_0
    .packed-switch 0x7f13033c
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 191
    iget-boolean v0, p0, Lcom/android/exsettings/vpn2/VpnSettings;->mUnavailable:Z

    if-eqz v0, :cond_0

    .line 192
    invoke-super {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;->onPause()V

    .line 193
    return-void

    .line 197
    :cond_0
    iget-object v0, p0, Lcom/android/exsettings/vpn2/VpnSettings;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/android/exsettings/vpn2/VpnSettings;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 199
    iget-object v0, p0, Lcom/android/exsettings/vpn2/VpnSettings;->mUpdater:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 200
    iget-object v0, p0, Lcom/android/exsettings/vpn2/VpnSettings;->mUpdater:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 203
    :cond_1
    invoke-super {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;->onPause()V

    .line 190
    return-void
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 13
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 269
    instance-of v10, p1, Lcom/android/exsettings/vpn2/ConfigPreference;

    if-eqz v10, :cond_1

    .line 270
    check-cast p1, Lcom/android/exsettings/vpn2/ConfigPreference;

    .end local p1    # "preference":Landroid/preference/Preference;
    invoke-virtual {p1}, Lcom/android/exsettings/vpn2/ConfigPreference;->getProfile()Lcom/android/internal/net/VpnProfile;

    move-result-object v7

    .line 271
    .local v7, "profile":Lcom/android/internal/net/VpnProfile;
    iget-object v10, p0, Lcom/android/exsettings/vpn2/VpnSettings;->mConnectedLegacyVpn:Lcom/android/internal/net/LegacyVpnInfo;

    if-eqz v10, :cond_0

    iget-object v10, v7, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    iget-object v11, p0, Lcom/android/exsettings/vpn2/VpnSettings;->mConnectedLegacyVpn:Lcom/android/internal/net/LegacyVpnInfo;

    iget-object v11, v11, Lcom/android/internal/net/LegacyVpnInfo;->key:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 272
    iget-object v10, p0, Lcom/android/exsettings/vpn2/VpnSettings;->mConnectedLegacyVpn:Lcom/android/internal/net/LegacyVpnInfo;

    iget v10, v10, Lcom/android/internal/net/LegacyVpnInfo;->state:I

    const/4 v11, 0x3

    if-ne v10, v11, :cond_0

    .line 274
    :try_start_0
    iget-object v10, p0, Lcom/android/exsettings/vpn2/VpnSettings;->mConnectedLegacyVpn:Lcom/android/internal/net/LegacyVpnInfo;

    iget-object v10, v10, Lcom/android/internal/net/LegacyVpnInfo;->intent:Landroid/app/PendingIntent;

    invoke-virtual {v10}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 275
    const/4 v10, 0x1

    return v10

    .line 276
    :catch_0
    move-exception v2

    .line 280
    :cond_0
    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-static {p0, v7, v10, v11}, Lcom/android/exsettings/vpn2/ConfigDialogFragment;->show(Lcom/android/exsettings/vpn2/VpnSettings;Lcom/android/internal/net/VpnProfile;ZZ)V

    .line 281
    const/4 v10, 0x1

    return v10

    .line 282
    .end local v7    # "profile":Lcom/android/internal/net/VpnProfile;
    .restart local p1    # "preference":Landroid/preference/Preference;
    :cond_1
    instance-of v10, p1, Lcom/android/exsettings/vpn2/AppPreference;

    if-eqz v10, :cond_4

    move-object v6, p1

    .line 283
    check-cast v6, Lcom/android/exsettings/vpn2/AppPreference;

    .line 284
    .local v6, "pref":Lcom/android/exsettings/vpn2/AppPreference;
    invoke-virtual {v6}, Lcom/android/exsettings/vpn2/AppPreference;->getState()I

    move-result v10

    const/4 v11, 0x3

    if-ne v10, v11, :cond_2

    const/4 v1, 0x1

    .line 286
    .local v1, "connected":Z
    :goto_0
    if-nez v1, :cond_3

    .line 288
    :try_start_1
    new-instance v8, Landroid/os/UserHandle;

    invoke-virtual {v6}, Lcom/android/exsettings/vpn2/AppPreference;->getUid()I

    move-result v10

    invoke-static {v10}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v10

    invoke-direct {v8, v10}, Landroid/os/UserHandle;-><init>(I)V

    .line 289
    .local v8, "user":Landroid/os/UserHandle;
    invoke-virtual {p0}, Lcom/android/exsettings/vpn2/VpnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    .line 290
    invoke-virtual {p0}, Lcom/android/exsettings/vpn2/VpnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    .line 289
    invoke-virtual {v10, v11, v12, v8}, Landroid/app/Activity;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v9

    .line 291
    .local v9, "userContext":Landroid/content/Context;
    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 292
    .local v5, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v6}, Lcom/android/exsettings/vpn2/AppPreference;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 293
    .local v0, "appIntent":Landroid/content/Intent;
    if-eqz v0, :cond_3

    .line 294
    invoke-virtual {v9, v0, v8}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 295
    const/4 v10, 0x1

    return v10

    .line 284
    .end local v0    # "appIntent":Landroid/content/Intent;
    .end local v1    # "connected":Z
    .end local v5    # "pm":Landroid/content/pm/PackageManager;
    .end local v8    # "user":Landroid/os/UserHandle;
    .end local v9    # "userContext":Landroid/content/Context;
    :cond_2
    const/4 v1, 0x0

    .restart local v1    # "connected":Z
    goto :goto_0

    .line 297
    :catch_1
    move-exception v3

    .line 303
    :cond_3
    invoke-virtual {v6}, Lcom/android/exsettings/vpn2/AppPreference;->getPackageInfo()Landroid/content/pm/PackageInfo;

    move-result-object v4

    .line 304
    .local v4, "pkgInfo":Landroid/content/pm/PackageInfo;
    invoke-virtual {v6}, Lcom/android/exsettings/vpn2/AppPreference;->getLabel()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-static {p0, v4, v10, v11, v1}, Lcom/android/exsettings/vpn2/AppDialogFragment;->show(Lcom/android/exsettings/vpn2/VpnSettings;Landroid/content/pm/PackageInfo;Ljava/lang/String;ZZ)V

    .line 305
    const/4 v10, 0x1

    return v10

    .line 307
    .end local v1    # "connected":Z
    .end local v4    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .end local v6    # "pref":Lcom/android/exsettings/vpn2/AppPreference;
    :cond_4
    const/4 v10, 0x0

    return v10
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v1, 0x0

    .line 130
    invoke-super {p0, p1}, Lcom/android/exsettings/SettingsPreferenceFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 133
    const-string/jumbo v0, "persist.radio.imsregrequired"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    const v0, 0x7f13033d

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 129
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 161
    invoke-super {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;->onResume()V

    .line 163
    iget-boolean v2, p0, Lcom/android/exsettings/vpn2/VpnSettings;->mUnavailable:Z

    if-eqz v2, :cond_1

    .line 165
    invoke-virtual {p0}, Lcom/android/exsettings/vpn2/VpnSettings;->getView()Landroid/view/View;

    move-result-object v2

    const v3, 0x1020004

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 166
    .local v0, "emptyView":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/android/exsettings/vpn2/VpnSettings;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 167
    if-eqz v0, :cond_0

    .line 168
    const v2, 0x7f0c0a81

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 170
    :cond_0
    return-void

    .line 173
    .end local v0    # "emptyView":Landroid/widget/TextView;
    :cond_1
    invoke-virtual {p0}, Lcom/android/exsettings/vpn2/VpnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 174
    const-string/jumbo v3, "android.net.vpn.PICK_LOCKDOWN"

    .line 173
    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 175
    .local v1, "pickLockdown":Z
    if-eqz v1, :cond_2

    .line 176
    invoke-static {p0}, Lcom/android/exsettings/vpn2/LockdownConfigFragment;->show(Lcom/android/exsettings/vpn2/VpnSettings;)V

    .line 180
    :cond_2
    iget-object v2, p0, Lcom/android/exsettings/vpn2/VpnSettings;->mConnectivityManager:Landroid/net/ConnectivityManager;

    sget-object v3, Lcom/android/exsettings/vpn2/VpnSettings;->VPN_REQUEST:Landroid/net/NetworkRequest;

    iget-object v4, p0, Lcom/android/exsettings/vpn2/VpnSettings;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v2, v3, v4}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 183
    iget-object v2, p0, Lcom/android/exsettings/vpn2/VpnSettings;->mUpdater:Landroid/os/Handler;

    if-nez v2, :cond_3

    .line 184
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v2, p0, Lcom/android/exsettings/vpn2/VpnSettings;->mUpdater:Landroid/os/Handler;

    .line 186
    :cond_3
    iget-object v2, p0, Lcom/android/exsettings/vpn2/VpnSettings;->mUpdater:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 160
    return-void
.end method
