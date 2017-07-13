.class public Lcom/android/exsettings/applications/AppOpsDetails;
.super Lcom/android/exsettings/InstrumentedFragment;
.source "AppOpsDetails.java"


# instance fields
.field private final MODE_ALLOWED:I

.field private final MODE_ASK:I

.field private final MODE_IGNORED:I

.field private mAppOps:Landroid/app/AppOpsManager;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mOperationsSection:Landroid/widget/LinearLayout;

.field private mPackageInfo:Landroid/content/pm/PackageInfo;

.field private mPm:Landroid/content/pm/PackageManager;

.field private mPolicyManager:Landroid/net/NetworkPolicyManager;

.field private mRootView:Landroid/view/View;

.field private mState:Lcom/android/exsettings/applications/AppOpsState;


# direct methods
.method static synthetic -get0(Lcom/android/exsettings/applications/AppOpsDetails;)Landroid/app/AppOpsManager;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/applications/AppOpsDetails;->mAppOps:Landroid/app/AppOpsManager;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/exsettings/applications/AppOpsDetails;)Landroid/content/pm/PackageInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/applications/AppOpsDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/exsettings/applications/AppOpsDetails;)Landroid/net/NetworkPolicyManager;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/applications/AppOpsDetails;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/exsettings/applications/AppOpsDetails;I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/exsettings/applications/AppOpsDetails;->positionToMode(I)I

    move-result v0

    return v0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/exsettings/InstrumentedFragment;-><init>()V

    .line 78
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/exsettings/applications/AppOpsDetails;->MODE_ALLOWED:I

    .line 79
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/exsettings/applications/AppOpsDetails;->MODE_IGNORED:I

    .line 80
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/exsettings/applications/AppOpsDetails;->MODE_ASK:I

    .line 64
    return-void
.end method

.method private addInternetSwitch(I)V
    .locals 7
    .param p1, "policy"    # I

    .prologue
    const/4 v6, 0x4

    const/4 v4, 0x0

    .line 292
    iget-object v2, p0, Lcom/android/exsettings/applications/AppOpsDetails;->mInflater:Landroid/view/LayoutInflater;

    .line 293
    iget-object v3, p0, Lcom/android/exsettings/applications/AppOpsDetails;->mOperationsSection:Landroid/widget/LinearLayout;

    .line 292
    const v5, 0x7f04000f

    invoke-virtual {v2, v5, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 294
    .local v1, "view":Landroid/view/View;
    iget-object v2, p0, Lcom/android/exsettings/applications/AppOpsDetails;->mOperationsSection:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 296
    const v2, 0x7f130026

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 297
    const/high16 v3, 0x10000

    if-ne p1, v3, :cond_0

    const v3, 0x7f0c0387

    .line 296
    :goto_0
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 299
    const v2, 0x7f130028

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 300
    const v2, 0x7f130027

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 301
    const v2, 0x7f130029

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 303
    const v2, 0x7f13002a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    .line 304
    .local v0, "sw":Landroid/widget/Switch;
    iget-object v2, p0, Lcom/android/exsettings/applications/AppOpsDetails;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    .line 305
    iget-object v3, p0, Lcom/android/exsettings/applications/AppOpsDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 304
    invoke-virtual {v2, v3}, Landroid/net/NetworkPolicyManager;->getUidPolicy(I)I

    move-result v2

    and-int/2addr v2, p1

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 306
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setTag(Ljava/lang/Object;)V

    .line 307
    invoke-virtual {v0, v4}, Landroid/widget/Switch;->setVisibility(I)V

    .line 308
    new-instance v2, Lcom/android/exsettings/applications/AppOpsDetails$3;

    invoke-direct {v2, p0, p1}, Lcom/android/exsettings/applications/AppOpsDetails$3;-><init>(Lcom/android/exsettings/applications/AppOpsDetails;I)V

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 290
    return-void

    .line 298
    .end local v0    # "sw":Landroid/widget/Switch;
    :cond_0
    const v3, 0x7f0c0385

    goto :goto_0

    .restart local v0    # "sw":Landroid/widget/Switch;
    :cond_1
    move v2, v4

    .line 304
    goto :goto_1
.end method

.method private isPlatformSigned()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 109
    iget-object v2, p0, Lcom/android/exsettings/applications/AppOpsDetails;->mPm:Landroid/content/pm/PackageManager;

    const-string/jumbo v3, "android"

    iget-object v4, p0, Lcom/android/exsettings/applications/AppOpsDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 110
    .local v0, "match":I
    if-ltz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private modeToPosition(I)I
    .locals 1
    .param p1, "mode"    # I

    .prologue
    const/4 v0, 0x1

    .line 83
    packed-switch p1, :pswitch_data_0

    .line 92
    :pswitch_0
    return v0

    .line 85
    :pswitch_1
    const/4 v0, 0x0

    return v0

    .line 87
    :pswitch_2
    return v0

    .line 89
    :pswitch_3
    const/4 v0, 0x2

    return v0

    .line 83
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private positionToMode(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    const/4 v0, 0x1

    .line 96
    packed-switch p1, :pswitch_data_0

    .line 105
    return v0

    .line 98
    :pswitch_0
    const/4 v0, 0x0

    return v0

    .line 100
    :pswitch_1
    return v0

    .line 102
    :pswitch_2
    const/4 v0, 0x4

    return v0

    .line 96
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private refreshUi()Z
    .locals 35

    .prologue
    .line 145
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/applications/AppOpsDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    move-object/from16 v28, v0

    if-nez v28, :cond_0

    .line 146
    const/16 v28, 0x0

    return v28

    .line 149
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/applications/AppOpsDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/android/exsettings/applications/AppOpsDetails;->setAppLabelAndIcon(Landroid/content/pm/PackageInfo;)V

    .line 151
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/applications/AppOpsDetails;->getActivity()Landroid/app/Activity;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    .line 154
    .local v22, "res":Landroid/content/res/Resources;
    const-string/jumbo v28, "deviceidle"

    invoke-static/range {v28 .. v28}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v28

    .line 153
    invoke-static/range {v28 .. v28}, Landroid/os/IDeviceIdleController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IDeviceIdleController;

    move-result-object v11

    .line 156
    .local v11, "iDeviceIdleController":Landroid/os/IDeviceIdleController;
    if-eqz v11, :cond_2

    .line 158
    :try_start_0
    invoke-interface {v11}, Landroid/os/IDeviceIdleController;->getSystemPowerWhitelist()[Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 167
    .local v4, "allowInPowerSave":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/applications/AppOpsDetails;->mOperationsSection:Landroid/widget/LinearLayout;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 168
    const-string/jumbo v14, ""

    .line 169
    .local v14, "lastPermGroup":Ljava/lang/String;
    invoke-direct/range {p0 .. p0}, Lcom/android/exsettings/applications/AppOpsDetails;->isPlatformSigned()Z

    move-result v13

    .line 170
    .local v13, "isPlatformSigned":Z
    sget-object v30, Lcom/android/exsettings/applications/AppOpsState;->ALL_TEMPLATES:[Lcom/android/exsettings/applications/AppOpsState$OpsTemplate;

    const/16 v28, 0x0

    move-object/from16 v0, v30

    array-length v0, v0

    move/from16 v31, v0

    move/from16 v29, v28

    :goto_1
    move/from16 v0, v29

    move/from16 v1, v31

    if-ge v0, v1, :cond_9

    aget-object v26, v30, v29

    .line 175
    .local v26, "tpl":Lcom/android/exsettings/applications/AppOpsState$OpsTemplate;
    if-eqz v13, :cond_3

    sget-object v28, Lcom/android/exsettings/applications/AppOpsState;->SU_TEMPLATE:Lcom/android/exsettings/applications/AppOpsState$OpsTemplate;

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    if-eq v0, v1, :cond_3

    .line 170
    :cond_1
    add-int/lit8 v28, v29, 0x1

    move/from16 v29, v28

    goto :goto_1

    .line 159
    .end local v4    # "allowInPowerSave":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v13    # "isPlatformSigned":Z
    .end local v14    # "lastPermGroup":Ljava/lang/String;
    .end local v26    # "tpl":Lcom/android/exsettings/applications/AppOpsState$OpsTemplate;
    :catch_0
    move-exception v6

    .line 160
    .local v6, "e":Landroid/os/RemoteException;
    const-string/jumbo v28, "AppOpsDetails"

    const-string/jumbo v29, "couldn\'t get system power white list"

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 161
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .restart local v4    # "allowInPowerSave":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_0

    .line 164
    .end local v4    # "allowInPowerSave":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v6    # "e":Landroid/os/RemoteException;
    :cond_2
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .restart local v4    # "allowInPowerSave":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_0

    .line 178
    .restart local v13    # "isPlatformSigned":Z
    .restart local v14    # "lastPermGroup":Ljava/lang/String;
    .restart local v26    # "tpl":Lcom/android/exsettings/applications/AppOpsState$OpsTemplate;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/applications/AppOpsDetails;->mState:Lcom/android/exsettings/applications/AppOpsState;

    move-object/from16 v28, v0

    .line 179
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/applications/AppOpsDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/applications/AppOpsDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v33, v0

    .line 178
    move-object/from16 v0, v28

    move-object/from16 v1, v26

    move/from16 v2, v32

    move-object/from16 v3, v33

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/exsettings/applications/AppOpsState;->buildState(Lcom/android/exsettings/applications/AppOpsState$OpsTemplate;ILjava/lang/String;)Ljava/util/List;

    move-result-object v7

    .line 180
    .local v7, "entries":Ljava/util/List;, "Ljava/util/List<Lcom/android/exsettings/applications/AppOpsState$AppOpEntry;>;"
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "entry$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/exsettings/applications/AppOpsState$AppOpEntry;

    .line 181
    .local v8, "entry":Lcom/android/exsettings/applications/AppOpsState$AppOpEntry;
    const/16 v28, 0x0

    move/from16 v0, v28

    invoke-virtual {v8, v0}, Lcom/android/exsettings/applications/AppOpsState$AppOpEntry;->getOpEntry(I)Landroid/app/AppOpsManager$OpEntry;

    move-result-object v10

    .line 182
    .local v10, "firstOp":Landroid/app/AppOpsManager$OpEntry;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/applications/AppOpsDetails;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v28, v0

    .line 183
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/applications/AppOpsDetails;->mOperationsSection:Landroid/widget/LinearLayout;

    move-object/from16 v32, v0

    .line 182
    const v33, 0x7f04000f

    .line 183
    const/16 v34, 0x0

    .line 182
    move-object/from16 v0, v28

    move/from16 v1, v33

    move-object/from16 v2, v32

    move/from16 v3, v34

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v27

    .line 184
    .local v27, "view":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/applications/AppOpsDetails;->mOperationsSection:Landroid/widget/LinearLayout;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 185
    invoke-virtual {v10}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v28

    invoke-static/range {v28 .. v28}, Landroid/app/AppOpsManager;->opToPermission(I)Ljava/lang/String;

    move-result-object v19

    .line 186
    .local v19, "perm":Ljava/lang/String;
    if-eqz v19, :cond_4

    .line 188
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/applications/AppOpsDetails;->mPm:Landroid/content/pm/PackageManager;

    move-object/from16 v28, v0

    const/16 v32, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, v19

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object v21

    .line 189
    .local v21, "pi":Landroid/content/pm/PermissionInfo;
    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    move-object/from16 v28, v0

    if-eqz v28, :cond_4

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v28

    if-eqz v28, :cond_5

    .line 201
    .end local v21    # "pi":Landroid/content/pm/PermissionInfo;
    :cond_4
    :goto_3
    const v28, 0x7f130029

    invoke-virtual/range {v27 .. v28}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/Spinner;

    .line 202
    .local v23, "sp":Landroid/widget/Spinner;
    const/16 v28, 0x8

    move-object/from16 v0, v23

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 203
    const v28, 0x7f13002a

    invoke-virtual/range {v27 .. v28}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/Switch;

    .line 204
    .local v24, "sw":Landroid/widget/Switch;
    const/16 v28, 0x8

    move-object/from16 v0, v24

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setVisibility(I)V

    .line 206
    invoke-virtual {v10}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v28

    invoke-static/range {v28 .. v28}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result v25

    .line 207
    .local v25, "switchOp":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/applications/AppOpsDetails;->mAppOps:Landroid/app/AppOpsManager;

    move-object/from16 v28, v0

    invoke-virtual {v8}, Lcom/android/exsettings/applications/AppOpsState$AppOpEntry;->getPackageOps()Landroid/app/AppOpsManager$PackageOps;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/app/AppOpsManager$PackageOps;->getUid()I

    move-result v32

    .line 208
    invoke-virtual {v8}, Lcom/android/exsettings/applications/AppOpsState$AppOpEntry;->getPackageOps()Landroid/app/AppOpsManager$PackageOps;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v33

    .line 207
    move-object/from16 v0, v28

    move/from16 v1, v25

    move/from16 v2, v32

    move-object/from16 v3, v33

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AppOpsManager;->checkOp(IILjava/lang/String;)I

    move-result v15

    .line 210
    .local v15, "mode":I
    const v28, 0x7f130026

    invoke-virtual/range {v27 .. v28}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    .line 211
    .local v17, "opNameText":Landroid/widget/TextView;
    const v28, 0x7f130028

    invoke-virtual/range {v27 .. v28}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    .line 212
    .local v16, "opCountText":Landroid/widget/TextView;
    const v28, 0x7f130027

    invoke-virtual/range {v27 .. v28}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TextView;

    .line 214
    .local v18, "opTimeText":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/applications/AppOpsDetails;->mState:Lcom/android/exsettings/applications/AppOpsState;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v8, v0}, Lcom/android/exsettings/applications/AppOpsState$AppOpEntry;->getSwitchText(Lcom/android/exsettings/applications/AppOpsState;)Ljava/lang/CharSequence;

    move-result-object v28

    move-object/from16 v0, v17

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 216
    const/16 v28, 0x28

    move/from16 v0, v25

    move/from16 v1, v28

    if-ne v0, v1, :cond_6

    .line 217
    invoke-virtual {v8}, Lcom/android/exsettings/applications/AppOpsState$AppOpEntry;->getPackageOps()Landroid/app/AppOpsManager$PackageOps;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-interface {v4, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v28

    .line 216
    if-eqz v28, :cond_6

    .line 221
    const/16 v28, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setVisibility(I)V

    .line 222
    const/16 v28, 0x1

    move-object/from16 v0, v24

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 223
    const/16 v28, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 225
    const/16 v28, 0x8

    move-object/from16 v0, v16

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 226
    const v28, 0x7f0c01d1

    move-object/from16 v0, v18

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_2

    .line 190
    .end local v15    # "mode":I
    .end local v16    # "opCountText":Landroid/widget/TextView;
    .end local v17    # "opNameText":Landroid/widget/TextView;
    .end local v18    # "opTimeText":Landroid/widget/TextView;
    .end local v23    # "sp":Landroid/widget/Spinner;
    .end local v24    # "sw":Landroid/widget/Switch;
    .end local v25    # "switchOp":I
    .restart local v21    # "pi":Landroid/content/pm/PermissionInfo;
    :cond_5
    :try_start_2
    move-object/from16 v0, v21

    iget-object v14, v0, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    .line 191
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/applications/AppOpsDetails;->mPm:Landroid/content/pm/PackageManager;

    move-object/from16 v28, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPermissionGroupInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionGroupInfo;

    move-result-object v20

    .line 192
    .local v20, "pgi":Landroid/content/pm/PermissionGroupInfo;
    move-object/from16 v0, v20

    iget v0, v0, Landroid/content/pm/PermissionGroupInfo;->icon:I

    move/from16 v28, v0

    if-eqz v28, :cond_4

    .line 193
    const v28, 0x7f130025

    invoke-virtual/range {v27 .. v28}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v28

    check-cast v28, Landroid/widget/ImageView;

    .line 194
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/applications/AppOpsDetails;->mPm:Landroid/content/pm/PackageManager;

    move-object/from16 v32, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/pm/PermissionGroupInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v32

    .line 193
    move-object/from16 v0, v28

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_3

    .line 197
    .end local v20    # "pgi":Landroid/content/pm/PermissionGroupInfo;
    .end local v21    # "pi":Landroid/content/pm/PermissionInfo;
    :catch_1
    move-exception v5

    .local v5, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto/16 :goto_3

    .line 231
    .end local v5    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v15    # "mode":I
    .restart local v16    # "opCountText":Landroid/widget/TextView;
    .restart local v17    # "opNameText":Landroid/widget/TextView;
    .restart local v18    # "opTimeText":Landroid/widget/TextView;
    .restart local v23    # "sp":Landroid/widget/Spinner;
    .restart local v24    # "sw":Landroid/widget/Switch;
    .restart local v25    # "switchOp":I
    :cond_6
    move-object/from16 v0, v22

    invoke-virtual {v8, v0}, Lcom/android/exsettings/applications/AppOpsState$AppOpEntry;->getCountsText(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v28

    move-object/from16 v0, v16

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 232
    const/16 v28, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v28

    invoke-virtual {v8, v0, v1}, Lcom/android/exsettings/applications/AppOpsState$AppOpEntry;->getTimeText(Landroid/content/res/Resources;Z)Ljava/lang/CharSequence;

    move-result-object v28

    move-object/from16 v0, v18

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 234
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/exsettings/applications/AppOpsDetails;->modeToPosition(I)I

    move-result v28

    move-object/from16 v0, v23

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 235
    new-instance v28, Lcom/android/exsettings/applications/AppOpsDetails$1;

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    move/from16 v2, v25

    invoke-direct {v0, v1, v2, v8}, Lcom/android/exsettings/applications/AppOpsDetails$1;-><init>(Lcom/android/exsettings/applications/AppOpsDetails;ILcom/android/exsettings/applications/AppOpsState$AppOpEntry;)V

    move-object/from16 v0, v23

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 255
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/applications/AppOpsDetails;->mAppOps:Landroid/app/AppOpsManager;

    move-object/from16 v28, v0

    invoke-virtual {v8}, Lcom/android/exsettings/applications/AppOpsState$AppOpEntry;->getPackageOps()Landroid/app/AppOpsManager$PackageOps;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/app/AppOpsManager$PackageOps;->getUid()I

    move-result v32

    .line 256
    invoke-virtual {v8}, Lcom/android/exsettings/applications/AppOpsState$AppOpEntry;->getPackageOps()Landroid/app/AppOpsManager$PackageOps;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v33

    .line 255
    move-object/from16 v0, v28

    move/from16 v1, v25

    move/from16 v2, v32

    move-object/from16 v3, v33

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AppOpsManager;->checkOp(IILjava/lang/String;)I

    move-result v28

    if-nez v28, :cond_7

    const/16 v28, 0x1

    :goto_4
    move-object/from16 v0, v24

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 257
    new-instance v28, Lcom/android/exsettings/applications/AppOpsDetails$2;

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    move/from16 v2, v25

    invoke-direct {v0, v1, v2, v8}, Lcom/android/exsettings/applications/AppOpsDetails$2;-><init>(Lcom/android/exsettings/applications/AppOpsDetails;ILcom/android/exsettings/applications/AppOpsState$AppOpEntry;)V

    move-object/from16 v0, v24

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 267
    invoke-static/range {v25 .. v25}, Landroid/app/AppOpsManager;->isStrictOp(I)Z

    move-result v28

    if-eqz v28, :cond_8

    .line 268
    const/16 v28, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setVisibility(I)V

    goto/16 :goto_2

    .line 255
    :cond_7
    const/16 v28, 0x0

    goto :goto_4

    .line 270
    :cond_8
    const/16 v28, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setVisibility(I)V

    goto/16 :goto_2

    .line 275
    .end local v7    # "entries":Ljava/util/List;, "Ljava/util/List<Lcom/android/exsettings/applications/AppOpsState$AppOpEntry;>;"
    .end local v8    # "entry":Lcom/android/exsettings/applications/AppOpsState$AppOpEntry;
    .end local v9    # "entry$iterator":Ljava/util/Iterator;
    .end local v10    # "firstOp":Landroid/app/AppOpsManager$OpEntry;
    .end local v15    # "mode":I
    .end local v16    # "opCountText":Landroid/widget/TextView;
    .end local v17    # "opNameText":Landroid/widget/TextView;
    .end local v18    # "opTimeText":Landroid/widget/TextView;
    .end local v19    # "perm":Ljava/lang/String;
    .end local v23    # "sp":Landroid/widget/Spinner;
    .end local v24    # "sw":Landroid/widget/Switch;
    .end local v25    # "switchOp":I
    .end local v26    # "tpl":Lcom/android/exsettings/applications/AppOpsState$OpsTemplate;
    .end local v27    # "view":Landroid/view/View;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/applications/AppOpsDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v28, v0

    invoke-static/range {v28 .. v28}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v28

    if-eqz v28, :cond_a

    .line 276
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/applications/AppOpsDetails;->mPm:Landroid/content/pm/PackageManager;

    move-object/from16 v28, v0

    const-string/jumbo v29, "android.permission.INTERNET"

    .line 277
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/applications/AppOpsDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v30, v0

    .line 276
    invoke-virtual/range {v28 .. v30}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v28

    if-nez v28, :cond_a

    .line 278
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/applications/AppOpsDetails;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v28, v0

    .line 279
    const v29, 0x7f0400b2

    const/16 v30, 0x0

    .line 278
    invoke-virtual/range {v28 .. v30}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 280
    .local v12, "internetCategory":Landroid/widget/TextView;
    const v28, 0x7f0c0389

    move/from16 v0, v28

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setText(I)V

    .line 281
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/applications/AppOpsDetails;->mOperationsSection:Landroid/widget/LinearLayout;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 283
    const v28, 0x8000

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/android/exsettings/applications/AppOpsDetails;->addInternetSwitch(I)V

    .line 284
    const/high16 v28, 0x10000

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/android/exsettings/applications/AppOpsDetails;->addInternetSwitch(I)V

    .line 287
    .end local v12    # "internetCategory":Landroid/widget/TextView;
    :cond_a
    const/16 v28, 0x1

    return v28
.end method

.method private retrieveAppEntry()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 123
    invoke-virtual {p0}, Lcom/android/exsettings/applications/AppOpsDetails;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 124
    .local v0, "args":Landroid/os/Bundle;
    if-eqz v0, :cond_1

    const-string/jumbo v4, "package"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 125
    :goto_0
    if-nez v3, :cond_0

    .line 126
    if-nez v0, :cond_2

    .line 127
    invoke-virtual {p0}, Lcom/android/exsettings/applications/AppOpsDetails;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 128
    .local v2, "intent":Landroid/content/Intent;
    :goto_1
    if-eqz v2, :cond_0

    .line 129
    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v3

    .line 133
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_0
    :try_start_0
    iget-object v4, p0, Lcom/android/exsettings/applications/AppOpsDetails;->mPm:Landroid/content/pm/PackageManager;

    .line 134
    const/16 v5, 0x2200

    .line 133
    invoke-virtual {v4, v3, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    iput-object v4, p0, Lcom/android/exsettings/applications/AppOpsDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    :goto_2
    return-object v3

    .line 124
    :cond_1
    const/4 v3, 0x0

    .local v3, "packageName":Ljava/lang/String;
    goto :goto_0

    .line 127
    .end local v3    # "packageName":Ljava/lang/String;
    :cond_2
    const-string/jumbo v4, "intent"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    .restart local v2    # "intent":Landroid/content/Intent;
    goto :goto_1

    .line 136
    .end local v2    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v1

    .line 137
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v4, "AppOpsDetails"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Exception when retrieving package:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 138
    iput-object v7, p0, Lcom/android/exsettings/applications/AppOpsDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    goto :goto_2
.end method

.method private setAppLabelAndIcon(Landroid/content/pm/PackageInfo;)V
    .locals 6
    .param p1, "pkgInfo"    # Landroid/content/pm/PackageInfo;

    .prologue
    const/4 v4, 0x0

    .line 115
    iget-object v3, p0, Lcom/android/exsettings/applications/AppOpsDetails;->mRootView:Landroid/view/View;

    const v5, 0x7f130023

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 116
    .local v0, "appSnippet":Landroid/view/View;
    iget-object v3, p0, Lcom/android/exsettings/applications/AppOpsDetails;->mPm:Landroid/content/pm/PackageManager;

    iget-object v5, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v3, v5}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 117
    .local v2, "label":Ljava/lang/CharSequence;
    iget-object v3, p0, Lcom/android/exsettings/applications/AppOpsDetails;->mPm:Landroid/content/pm/PackageManager;

    iget-object v5, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v3, v5}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 119
    .local v1, "icon":Landroid/graphics/drawable/Drawable;
    if-eqz p1, :cond_0

    iget-object v3, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 118
    :goto_0
    invoke-static {v0, v2, v1, v3, v4}, Lcom/android/exsettings/applications/InstalledAppDetails;->setupAppSnippet(Landroid/view/View;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Ljava/lang/String;)V

    .line 114
    return-void

    :cond_0
    move-object v3, v4

    .line 119
    goto :goto_0
.end method

.method private setIntentAndFinish(ZZ)V
    .locals 3
    .param p1, "finish"    # Z
    .param p2, "appChanged"    # Z

    .prologue
    .line 323
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 324
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "chg"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 325
    invoke-virtual {p0}, Lcom/android/exsettings/applications/AppOpsDetails;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/exsettings/SettingsActivity;

    .line 326
    .local v1, "sa":Lcom/android/exsettings/SettingsActivity;
    const/4 v2, -0x1

    invoke-virtual {v1, p0, v2, v0}, Lcom/android/exsettings/SettingsActivity;->finishPreferencePanel(Landroid/app/Fragment;ILandroid/content/Intent;)V

    .line 322
    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 358
    const/16 v0, 0xe

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 332
    invoke-super {p0, p1}, Lcom/android/exsettings/InstrumentedFragment;->onCreate(Landroid/os/Bundle;)V

    .line 334
    new-instance v0, Lcom/android/exsettings/applications/AppOpsState;

    invoke-virtual {p0}, Lcom/android/exsettings/applications/AppOpsDetails;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/exsettings/applications/AppOpsState;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/exsettings/applications/AppOpsDetails;->mState:Lcom/android/exsettings/applications/AppOpsState;

    .line 335
    invoke-virtual {p0}, Lcom/android/exsettings/applications/AppOpsDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/applications/AppOpsDetails;->mPm:Landroid/content/pm/PackageManager;

    .line 336
    invoke-virtual {p0}, Lcom/android/exsettings/applications/AppOpsDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/exsettings/applications/AppOpsDetails;->mInflater:Landroid/view/LayoutInflater;

    .line 337
    invoke-virtual {p0}, Lcom/android/exsettings/applications/AppOpsDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "appops"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/exsettings/applications/AppOpsDetails;->mAppOps:Landroid/app/AppOpsManager;

    .line 338
    invoke-virtual {p0}, Lcom/android/exsettings/applications/AppOpsDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/net/NetworkPolicyManager;->from(Landroid/content/Context;)Landroid/net/NetworkPolicyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/applications/AppOpsDetails;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    .line 340
    invoke-direct {p0}, Lcom/android/exsettings/applications/AppOpsDetails;->retrieveAppEntry()Ljava/lang/String;

    .line 342
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/exsettings/applications/AppOpsDetails;->setHasOptionsMenu(Z)V

    .line 331
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 348
    const v1, 0x7f04000e

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 349
    .local v0, "view":Landroid/view/View;
    invoke-static {p2, v0, v0, v2}, Lcom/android/exsettings/Utils;->prepareCustomPreferencesList(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;Z)V

    .line 351
    iput-object v0, p0, Lcom/android/exsettings/applications/AppOpsDetails;->mRootView:Landroid/view/View;

    .line 352
    const v1, 0x7f130024

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/exsettings/applications/AppOpsDetails;->mOperationsSection:Landroid/widget/LinearLayout;

    .line 353
    return-object v0
.end method

.method public onResume()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 363
    invoke-super {p0}, Lcom/android/exsettings/InstrumentedFragment;->onResume()V

    .line 364
    invoke-direct {p0}, Lcom/android/exsettings/applications/AppOpsDetails;->refreshUi()Z

    move-result v0

    if-nez v0, :cond_0

    .line 365
    invoke-direct {p0, v1, v1}, Lcom/android/exsettings/applications/AppOpsDetails;->setIntentAndFinish(ZZ)V

    .line 362
    :cond_0
    return-void
.end method
