.class public Lcom/android/exsettings/DeviceAdminAdd;
.super Landroid/app/Activity;
.source "DeviceAdminAdd.java"


# instance fields
.field mActionButton:Landroid/widget/Button;

.field mAddMsg:Landroid/widget/TextView;

.field mAddMsgEllipsized:Z

.field mAddMsgExpander:Landroid/widget/ImageView;

.field mAddMsgText:Ljava/lang/CharSequence;

.field mAdding:Z

.field mAddingProfileOwner:Z

.field mAdminDescription:Landroid/widget/TextView;

.field mAdminIcon:Landroid/widget/ImageView;

.field mAdminName:Landroid/widget/TextView;

.field mAdminPolicies:Landroid/view/ViewGroup;

.field mAdminPoliciesInitialized:Z

.field mAdminWarning:Landroid/widget/TextView;

.field mAppOps:Landroid/app/AppOpsManager;

.field mCancelButton:Landroid/widget/Button;

.field mCurSysAppOpMode:I

.field mCurToastAppOpMode:I

.field mDPM:Landroid/app/admin/DevicePolicyManager;

.field mDeviceAdmin:Landroid/app/admin/DeviceAdminInfo;

.field mHandler:Landroid/os/Handler;

.field mProfileOwnerName:Ljava/lang/String;

.field mProfileOwnerWarning:Landroid/widget/TextView;

.field mRefreshing:Z

.field mWaitingForRemoveMsg:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 86
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/exsettings/DeviceAdminAdd;->mAddMsgEllipsized:Z

    .line 63
    return-void
.end method

.method private addDeviceAdminPolicies(Z)V
    .locals 9
    .param p1, "showDescription"    # Z

    .prologue
    const/4 v8, 0x1

    .line 474
    iget-boolean v6, p0, Lcom/android/exsettings/DeviceAdminAdd;->mAdminPoliciesInitialized:Z

    if-nez v6, :cond_4

    .line 475
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/UserHandle;->isOwner()Z

    move-result v1

    .line 476
    .local v1, "isOwner":Z
    iget-object v6, p0, Lcom/android/exsettings/DeviceAdminAdd;->mDeviceAdmin:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v6}, Landroid/app/admin/DeviceAdminInfo;->getUsedPolicies()Ljava/util/ArrayList;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "pi$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    .line 477
    .local v3, "pi":Landroid/app/admin/DeviceAdminInfo$PolicyInfo;
    if-eqz v1, :cond_0

    iget v0, v3, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;->description:I

    .line 478
    .local v0, "descriptionId":I
    :goto_1
    if-eqz v1, :cond_1

    iget v2, v3, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;->label:I

    .line 479
    .local v2, "labelId":I
    :goto_2
    invoke-virtual {p0, v2}, Lcom/android/exsettings/DeviceAdminAdd;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    .line 480
    if-eqz p1, :cond_2

    invoke-virtual {p0, v0}, Lcom/android/exsettings/DeviceAdminAdd;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    .line 479
    :goto_3
    invoke-static {p0, v7, v6, v8}, Landroid/widget/AppSecurityPermissions;->getPermissionItemView(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/view/View;

    move-result-object v5

    .line 481
    .local v5, "view":Landroid/view/View;
    iget-object v6, p0, Lcom/android/exsettings/DeviceAdminAdd;->mAdminPolicies:Landroid/view/ViewGroup;

    invoke-virtual {v6, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 477
    .end local v0    # "descriptionId":I
    .end local v2    # "labelId":I
    .end local v5    # "view":Landroid/view/View;
    :cond_0
    iget v0, v3, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;->descriptionForSecondaryUsers:I

    .restart local v0    # "descriptionId":I
    goto :goto_1

    .line 478
    :cond_1
    iget v2, v3, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;->labelForSecondaryUsers:I

    .restart local v2    # "labelId":I
    goto :goto_2

    .line 480
    :cond_2
    const-string/jumbo v6, ""

    goto :goto_3

    .line 483
    .end local v0    # "descriptionId":I
    .end local v2    # "labelId":I
    .end local v3    # "pi":Landroid/app/admin/DeviceAdminInfo$PolicyInfo;
    :cond_3
    iput-boolean v8, p0, Lcom/android/exsettings/DeviceAdminAdd;->mAdminPoliciesInitialized:Z

    .line 473
    .end local v1    # "isOwner":Z
    .end local v4    # "pi$iterator":Ljava/util/Iterator;
    :cond_4
    return-void
.end method


# virtual methods
.method addAndFinish()V
    .locals 6

    .prologue
    const/4 v5, -0x1

    .line 328
    :try_start_0
    iget-object v2, p0, Lcom/android/exsettings/DeviceAdminAdd;->mDPM:Landroid/app/admin/DevicePolicyManager;

    iget-object v3, p0, Lcom/android/exsettings/DeviceAdminAdd;->mDeviceAdmin:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v3}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/exsettings/DeviceAdminAdd;->mRefreshing:Z

    invoke-virtual {v2, v3, v4}, Landroid/app/admin/DevicePolicyManager;->setActiveAdmin(Landroid/content/ComponentName;Z)V

    .line 330
    iget-object v2, p0, Lcom/android/exsettings/DeviceAdminAdd;->mDeviceAdmin:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v2}, Landroid/app/admin/DeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 329
    const v3, 0x16059

    invoke-static {v3, v2}, Landroid/util/EventLog;->writeEvent(II)I

    .line 331
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Lcom/android/exsettings/DeviceAdminAdd;->setResult(I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 341
    :cond_0
    :goto_0
    iget-boolean v2, p0, Lcom/android/exsettings/DeviceAdminAdd;->mAddingProfileOwner:Z

    if-eqz v2, :cond_1

    .line 343
    :try_start_1
    iget-object v2, p0, Lcom/android/exsettings/DeviceAdminAdd;->mDPM:Landroid/app/admin/DevicePolicyManager;

    iget-object v3, p0, Lcom/android/exsettings/DeviceAdminAdd;->mDeviceAdmin:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v3}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    .line 344
    iget-object v4, p0, Lcom/android/exsettings/DeviceAdminAdd;->mProfileOwnerName:Ljava/lang/String;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    .line 343
    invoke-virtual {v2, v3, v4, v5}, Landroid/app/admin/DevicePolicyManager;->setProfileOwner(Landroid/content/ComponentName;Ljava/lang/String;I)Z
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 349
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/android/exsettings/DeviceAdminAdd;->finish()V

    .line 326
    return-void

    .line 332
    :catch_0
    move-exception v0

    .line 335
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string/jumbo v2, "DeviceAdminAdd"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Exception trying to activate admin "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 336
    iget-object v4, p0, Lcom/android/exsettings/DeviceAdminAdd;->mDeviceAdmin:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v4}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    .line 335
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 337
    iget-object v2, p0, Lcom/android/exsettings/DeviceAdminAdd;->mDPM:Landroid/app/admin/DevicePolicyManager;

    iget-object v3, p0, Lcom/android/exsettings/DeviceAdminAdd;->mDeviceAdmin:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v3}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/admin/DevicePolicyManager;->isAdminActive(Landroid/content/ComponentName;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 338
    invoke-virtual {p0, v5}, Lcom/android/exsettings/DeviceAdminAdd;->setResult(I)V

    goto :goto_0

    .line 345
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v1

    .line 346
    .local v1, "re":Ljava/lang/RuntimeException;
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/exsettings/DeviceAdminAdd;->setResult(I)V

    goto :goto_1
.end method

.method continueRemoveAction(Ljava/lang/CharSequence;)V
    .locals 4
    .param p1, "msg"    # Ljava/lang/CharSequence;

    .prologue
    .line 353
    iget-boolean v2, p0, Lcom/android/exsettings/DeviceAdminAdd;->mWaitingForRemoveMsg:Z

    if-nez v2, :cond_0

    .line 354
    return-void

    .line 356
    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/exsettings/DeviceAdminAdd;->mWaitingForRemoveMsg:Z

    .line 357
    if-nez p1, :cond_1

    .line 359
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/app/IActivityManager;->resumeAppSwitches()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 362
    :goto_0
    iget-object v2, p0, Lcom/android/exsettings/DeviceAdminAdd;->mDPM:Landroid/app/admin/DevicePolicyManager;

    iget-object v3, p0, Lcom/android/exsettings/DeviceAdminAdd;->mDeviceAdmin:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v3}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/admin/DevicePolicyManager;->removeActiveAdmin(Landroid/content/ComponentName;)V

    .line 363
    invoke-virtual {p0}, Lcom/android/exsettings/DeviceAdminAdd;->finish()V

    .line 352
    :goto_1
    return-void

    .line 367
    :cond_1
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/app/IActivityManager;->stopAppSwitches()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 370
    :goto_2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 372
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v2, "android.app.extra.DISABLE_WARNING"

    .line 371
    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 373
    const/4 v2, 0x1

    invoke-virtual {p0, v2, v0}, Lcom/android/exsettings/DeviceAdminAdd;->showDialog(ILandroid/os/Bundle;)Z

    goto :goto_1

    .line 368
    .end local v0    # "args":Landroid/os/Bundle;
    :catch_0
    move-exception v1

    .local v1, "e":Landroid/os/RemoteException;
    goto :goto_2

    .line 360
    .end local v1    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .restart local v1    # "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method getEllipsizedLines()I
    .locals 3

    .prologue
    .line 500
    const-string/jumbo v1, "window"

    invoke-virtual {p0, v1}, Lcom/android/exsettings/DeviceAdminAdd;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 503
    .local v0, "d":Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v2

    if-le v1, v2, :cond_0

    .line 504
    const/4 v1, 0x5

    .line 503
    :goto_0
    return v1

    .line 504
    :cond_0
    const/4 v1, 0x2

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 25
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 102
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 104
    new-instance v22, Landroid/os/Handler;

    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/DeviceAdminAdd;->getMainLooper()Landroid/os/Looper;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/DeviceAdminAdd;->mHandler:Landroid/os/Handler;

    .line 106
    const-string/jumbo v22, "device_policy"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/exsettings/DeviceAdminAdd;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/app/admin/DevicePolicyManager;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/DeviceAdminAdd;->mDPM:Landroid/app/admin/DevicePolicyManager;

    .line 107
    const-string/jumbo v22, "appops"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/exsettings/DeviceAdminAdd;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/app/AppOpsManager;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/DeviceAdminAdd;->mAppOps:Landroid/app/AppOpsManager;

    .line 108
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/DeviceAdminAdd;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v18

    .line 110
    .local v18, "packageManager":Landroid/content/pm/PackageManager;
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/DeviceAdminAdd;->getIntent()Landroid/content/Intent;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/content/Intent;->getFlags()I

    move-result v22

    const/high16 v23, 0x10000000

    and-int v22, v22, v23

    if-eqz v22, :cond_0

    .line 111
    const-string/jumbo v22, "DeviceAdminAdd"

    const-string/jumbo v23, "Cannot start ADD_DEVICE_ADMIN as a new task"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/DeviceAdminAdd;->finish()V

    .line 113
    return-void

    .line 116
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/DeviceAdminAdd;->getIntent()Landroid/content/Intent;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 117
    .local v3, "action":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/DeviceAdminAdd;->getIntent()Landroid/content/Intent;

    move-result-object v22

    .line 118
    const-string/jumbo v23, "android.app.extra.DEVICE_ADMIN"

    .line 117
    invoke-virtual/range {v22 .. v23}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v21

    check-cast v21, Landroid/content/ComponentName;

    .line 119
    .local v21, "who":Landroid/content/ComponentName;
    if-nez v21, :cond_1

    .line 120
    const-string/jumbo v22, "DeviceAdminAdd"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "No component specified in "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/DeviceAdminAdd;->finish()V

    .line 122
    return-void

    .line 125
    :cond_1
    if-eqz v3, :cond_3

    const-string/jumbo v22, "android.app.action.SET_PROFILE_OWNER"

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_3

    .line 126
    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/exsettings/DeviceAdminAdd;->setResult(I)V

    .line 127
    const/16 v22, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/exsettings/DeviceAdminAdd;->setFinishOnTouchOutside(Z)V

    .line 128
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/exsettings/DeviceAdminAdd;->mAddingProfileOwner:Z

    .line 130
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/DeviceAdminAdd;->getIntent()Landroid/content/Intent;

    move-result-object v22

    const-string/jumbo v23, "android.app.extra.PROFILE_OWNER_NAME"

    invoke-virtual/range {v22 .. v23}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 129
    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/DeviceAdminAdd;->mProfileOwnerName:Ljava/lang/String;

    .line 131
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/DeviceAdminAdd;->getCallingPackage()Ljava/lang/String;

    move-result-object v6

    .line 132
    .local v6, "callingPackage":Ljava/lang/String;
    if-eqz v6, :cond_2

    invoke-virtual/range {v21 .. v21}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_2

    .line 138
    const/16 v22, 0x0

    :try_start_0
    move-object/from16 v0, v18

    move/from16 v1, v22

    invoke-virtual {v0, v6, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v17

    .line 139
    .local v17, "packageInfo":Landroid/content/pm/PackageInfo;
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v22, v0

    and-int/lit8 v22, v22, 0x1

    if-nez v22, :cond_3

    .line 140
    const-string/jumbo v22, "DeviceAdminAdd"

    const-string/jumbo v23, "Cannot set a non-system app as a profile owner"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/DeviceAdminAdd;->finish()V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    return-void

    .line 133
    .end local v17    # "packageInfo":Landroid/content/pm/PackageInfo;
    :cond_2
    const-string/jumbo v22, "DeviceAdminAdd"

    const-string/jumbo v23, "Unknown or incorrect caller"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/DeviceAdminAdd;->finish()V

    .line 135
    return-void

    .line 144
    :catch_0
    move-exception v15

    .line 145
    .local v15, "nnfe":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v22, "DeviceAdminAdd"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "Cannot find the package "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/DeviceAdminAdd;->finish()V

    .line 147
    return-void

    .line 153
    .end local v6    # "callingPackage":Ljava/lang/String;
    .end local v15    # "nnfe":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_3
    const/16 v22, 0x80

    :try_start_1
    move-object/from16 v0, v18

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getReceiverInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v4

    .line 163
    .local v4, "ai":Landroid/content/pm/ActivityInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/DeviceAdminAdd;->mDPM:Landroid/app/admin/DevicePolicyManager;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->isAdminActive(Landroid/content/ComponentName;)Z

    move-result v22

    if-nez v22, :cond_7

    .line 165
    new-instance v22, Landroid/content/Intent;

    const-string/jumbo v23, "android.app.action.DEVICE_ADMIN_ENABLED"

    invoke-direct/range {v22 .. v23}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 166
    const v23, 0x8000

    .line 164
    move-object/from16 v0, v18

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    .line 167
    .local v5, "avail":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-nez v5, :cond_5

    const/4 v7, 0x0

    .line 168
    .local v7, "count":I
    :goto_0
    const/4 v12, 0x0

    .line 169
    .local v12, "found":Z
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_1
    if-ge v13, v7, :cond_4

    .line 170
    invoke-interface {v5, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/content/pm/ResolveInfo;

    .line 171
    .local v20, "ri":Landroid/content/pm/ResolveInfo;
    iget-object v0, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_6

    .line 172
    iget-object v0, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    .line 171
    if-eqz v22, :cond_6

    .line 176
    :try_start_2
    move-object/from16 v0, v20

    iput-object v4, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 177
    new-instance v8, Landroid/app/admin/DeviceAdminInfo;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v8, v0, v1}, Landroid/app/admin/DeviceAdminInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 178
    .local v8, "dpi":Landroid/app/admin/DeviceAdminInfo;
    const/4 v12, 0x1

    .line 187
    .end local v8    # "dpi":Landroid/app/admin/DeviceAdminInfo;
    .end local v20    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_4
    :goto_2
    if-nez v12, :cond_7

    .line 188
    const-string/jumbo v22, "DeviceAdminAdd"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "Request to add invalid device admin: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/DeviceAdminAdd;->finish()V

    .line 190
    return-void

    .line 154
    .end local v4    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v5    # "avail":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v7    # "count":I
    .end local v12    # "found":Z
    .end local v13    # "i":I
    :catch_1
    move-exception v9

    .line 155
    .local v9, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v22, "DeviceAdminAdd"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "Unable to retrieve device policy "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v1, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 156
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/DeviceAdminAdd;->finish()V

    .line 157
    return-void

    .line 167
    .end local v9    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v4    # "ai":Landroid/content/pm/ActivityInfo;
    .restart local v5    # "avail":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_5
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    .restart local v7    # "count":I
    goto/16 :goto_0

    .line 181
    .restart local v12    # "found":Z
    .restart local v13    # "i":I
    .restart local v20    # "ri":Landroid/content/pm/ResolveInfo;
    :catch_2
    move-exception v10

    .line 182
    .local v10, "e":Ljava/io/IOException;
    const-string/jumbo v22, "DeviceAdminAdd"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "Bad "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v1, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 179
    .end local v10    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v11

    .line 180
    .local v11, "e":Lorg/xmlpull/v1/XmlPullParserException;
    const-string/jumbo v22, "DeviceAdminAdd"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "Bad "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v1, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2

    .line 169
    .end local v11    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :cond_6
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_1

    .line 194
    .end local v5    # "avail":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v7    # "count":I
    .end local v12    # "found":Z
    .end local v13    # "i":I
    .end local v20    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_7
    new-instance v20, Landroid/content/pm/ResolveInfo;

    invoke-direct/range {v20 .. v20}, Landroid/content/pm/ResolveInfo;-><init>()V

    .line 195
    .restart local v20    # "ri":Landroid/content/pm/ResolveInfo;
    move-object/from16 v0, v20

    iput-object v4, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 197
    :try_start_3
    new-instance v22, Landroid/app/admin/DeviceAdminInfo;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Landroid/app/admin/DeviceAdminInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/DeviceAdminAdd;->mDeviceAdmin:Landroid/app/admin/DeviceAdminInfo;
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    .line 211
    const-string/jumbo v22, "android.app.action.ADD_DEVICE_ADMIN"

    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/DeviceAdminAdd;->getIntent()Landroid/content/Intent;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_a

    .line 212
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/exsettings/DeviceAdminAdd;->mRefreshing:Z

    .line 213
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/DeviceAdminAdd;->mDPM:Landroid/app/admin/DevicePolicyManager;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->isAdminActive(Landroid/content/ComponentName;)Z

    move-result v22

    if-eqz v22, :cond_a

    .line 214
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/DeviceAdminAdd;->mDeviceAdmin:Landroid/app/admin/DeviceAdminInfo;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/app/admin/DeviceAdminInfo;->getUsedPolicies()Ljava/util/ArrayList;

    move-result-object v14

    .line 215
    .local v14, "newPolicies":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/admin/DeviceAdminInfo$PolicyInfo;>;"
    const/4 v13, 0x0

    .restart local v13    # "i":I
    :goto_3
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v22

    move/from16 v0, v22

    if-ge v13, v0, :cond_8

    .line 216
    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    .line 217
    .local v19, "pi":Landroid/app/admin/DeviceAdminInfo$PolicyInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/DeviceAdminAdd;->mDPM:Landroid/app/admin/DevicePolicyManager;

    move-object/from16 v22, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;->ident:I

    move/from16 v23, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/app/admin/DevicePolicyManager;->hasGrantedPolicy(Landroid/content/ComponentName;I)Z

    move-result v22

    if-nez v22, :cond_9

    .line 218
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/exsettings/DeviceAdminAdd;->mRefreshing:Z

    .line 222
    .end local v19    # "pi":Landroid/app/admin/DeviceAdminInfo$PolicyInfo;
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/exsettings/DeviceAdminAdd;->mRefreshing:Z

    move/from16 v22, v0

    if-nez v22, :cond_a

    .line 224
    const/16 v22, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/exsettings/DeviceAdminAdd;->setResult(I)V

    .line 225
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/DeviceAdminAdd;->finish()V

    .line 226
    return-void

    .line 202
    .end local v13    # "i":I
    .end local v14    # "newPolicies":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/admin/DeviceAdminInfo$PolicyInfo;>;"
    :catch_4
    move-exception v10

    .line 203
    .restart local v10    # "e":Ljava/io/IOException;
    const-string/jumbo v22, "DeviceAdminAdd"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "Unable to retrieve device policy "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v1, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 204
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/DeviceAdminAdd;->finish()V

    .line 205
    return-void

    .line 198
    .end local v10    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v11

    .line 199
    .restart local v11    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    const-string/jumbo v22, "DeviceAdminAdd"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "Unable to retrieve device policy "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v1, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 200
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/DeviceAdminAdd;->finish()V

    .line 201
    return-void

    .line 215
    .end local v11    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v13    # "i":I
    .restart local v14    # "newPolicies":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/admin/DeviceAdminInfo$PolicyInfo;>;"
    .restart local v19    # "pi":Landroid/app/admin/DeviceAdminInfo$PolicyInfo;
    :cond_9
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_3

    .line 233
    .end local v13    # "i":I
    .end local v14    # "newPolicies":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/admin/DeviceAdminInfo$PolicyInfo;>;"
    .end local v19    # "pi":Landroid/app/admin/DeviceAdminInfo$PolicyInfo;
    :cond_a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/exsettings/DeviceAdminAdd;->mAddingProfileOwner:Z

    move/from16 v22, v0

    if-eqz v22, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/DeviceAdminAdd;->mDPM:Landroid/app/admin/DevicePolicyManager;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/app/admin/DevicePolicyManager;->hasUserSetupCompleted()Z

    move-result v22

    if-eqz v22, :cond_c

    .line 238
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/DeviceAdminAdd;->getIntent()Landroid/content/Intent;

    move-result-object v22

    const-string/jumbo v23, "android.app.extra.ADD_EXPLANATION"

    invoke-virtual/range {v22 .. v23}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/DeviceAdminAdd;->mAddMsgText:Ljava/lang/CharSequence;

    .line 240
    const v22, 0x7f040054

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/exsettings/DeviceAdminAdd;->setContentView(I)V

    .line 242
    const v22, 0x7f1300ba

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/exsettings/DeviceAdminAdd;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/ImageView;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/DeviceAdminAdd;->mAdminIcon:Landroid/widget/ImageView;

    .line 243
    const v22, 0x7f1300bb

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/exsettings/DeviceAdminAdd;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/TextView;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/DeviceAdminAdd;->mAdminName:Landroid/widget/TextView;

    .line 244
    const v22, 0x7f1300bd

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/exsettings/DeviceAdminAdd;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/TextView;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/DeviceAdminAdd;->mAdminDescription:Landroid/widget/TextView;

    .line 245
    const v22, 0x7f1300bc

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/exsettings/DeviceAdminAdd;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/TextView;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/DeviceAdminAdd;->mProfileOwnerWarning:Landroid/widget/TextView;

    .line 247
    const v22, 0x7f1300bf

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/exsettings/DeviceAdminAdd;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/TextView;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/DeviceAdminAdd;->mAddMsg:Landroid/widget/TextView;

    .line 248
    const v22, 0x7f1300be

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/exsettings/DeviceAdminAdd;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/ImageView;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/DeviceAdminAdd;->mAddMsgExpander:Landroid/widget/ImageView;

    .line 249
    new-instance v16, Lcom/android/exsettings/DeviceAdminAdd$1;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/exsettings/DeviceAdminAdd$1;-><init>(Lcom/android/exsettings/DeviceAdminAdd;)V

    .line 255
    .local v16, "onClickListener":Landroid/view/View$OnClickListener;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/DeviceAdminAdd;->mAddMsgExpander:Landroid/widget/ImageView;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 256
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/DeviceAdminAdd;->mAddMsg:Landroid/widget/TextView;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 260
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/DeviceAdminAdd;->mAddMsg:Landroid/widget/TextView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v22

    .line 261
    new-instance v23, Lcom/android/exsettings/DeviceAdminAdd$2;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/exsettings/DeviceAdminAdd$2;-><init>(Lcom/android/exsettings/DeviceAdminAdd;)V

    .line 260
    invoke-virtual/range {v22 .. v23}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 277
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/DeviceAdminAdd;->mAddMsg:Landroid/widget/TextView;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/exsettings/DeviceAdminAdd;->toggleMessageEllipsis(Landroid/view/View;)V

    .line 279
    const v22, 0x7f1300c0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/exsettings/DeviceAdminAdd;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/TextView;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/DeviceAdminAdd;->mAdminWarning:Landroid/widget/TextView;

    .line 280
    const v22, 0x7f1300c1

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/exsettings/DeviceAdminAdd;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/view/ViewGroup;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/DeviceAdminAdd;->mAdminPolicies:Landroid/view/ViewGroup;

    .line 281
    const v22, 0x7f13005a

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/exsettings/DeviceAdminAdd;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/Button;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/DeviceAdminAdd;->mCancelButton:Landroid/widget/Button;

    .line 282
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/DeviceAdminAdd;->mCancelButton:Landroid/widget/Button;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Landroid/widget/Button;->setFilterTouchesWhenObscured(Z)V

    .line 283
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/DeviceAdminAdd;->mCancelButton:Landroid/widget/Button;

    move-object/from16 v22, v0

    new-instance v23, Lcom/android/exsettings/DeviceAdminAdd$3;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/exsettings/DeviceAdminAdd$3;-><init>(Lcom/android/exsettings/DeviceAdminAdd;)V

    invoke-virtual/range {v22 .. v23}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 290
    const v22, 0x7f1300c3

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/exsettings/DeviceAdminAdd;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/Button;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/DeviceAdminAdd;->mActionButton:Landroid/widget/Button;

    .line 291
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/DeviceAdminAdd;->mActionButton:Landroid/widget/Button;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Landroid/widget/Button;->setFilterTouchesWhenObscured(Z)V

    .line 292
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/DeviceAdminAdd;->mActionButton:Landroid/widget/Button;

    move-object/from16 v22, v0

    new-instance v23, Lcom/android/exsettings/DeviceAdminAdd$4;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/exsettings/DeviceAdminAdd$4;-><init>(Lcom/android/exsettings/DeviceAdminAdd;)V

    invoke-virtual/range {v22 .. v23}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    return-void

    .line 234
    .end local v16    # "onClickListener":Landroid/view/View$OnClickListener;
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/DeviceAdminAdd;->addAndFinish()V

    .line 235
    return-void
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    .line 406
    packed-switch p1, :pswitch_data_0

    .line 426
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v2

    return-object v2

    .line 408
    :pswitch_0
    const-string/jumbo v2, "android.app.extra.DISABLE_WARNING"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 409
    .local v1, "msg":Ljava/lang/CharSequence;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 410
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 412
    new-instance v2, Lcom/android/exsettings/DeviceAdminAdd$5;

    invoke-direct {v2, p0}, Lcom/android/exsettings/DeviceAdminAdd$5;-><init>(Lcom/android/exsettings/DeviceAdminAdd;)V

    .line 411
    const v3, 0x7f0c09e2

    invoke-virtual {v0, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 422
    const v2, 0x7f0c09e3

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 423
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    return-object v2

    .line 406
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 6

    .prologue
    .line 392
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 394
    iget-object v3, p0, Lcom/android/exsettings/DeviceAdminAdd;->mDeviceAdmin:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v3}, Landroid/app/admin/DeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 395
    .local v2, "uid":I
    iget-object v3, p0, Lcom/android/exsettings/DeviceAdminAdd;->mDeviceAdmin:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v3}, Landroid/app/admin/DeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 396
    .local v1, "pkg":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/exsettings/DeviceAdminAdd;->mAppOps:Landroid/app/AppOpsManager;

    iget v4, p0, Lcom/android/exsettings/DeviceAdminAdd;->mCurSysAppOpMode:I

    const/16 v5, 0x18

    invoke-virtual {v3, v5, v2, v1, v4}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    .line 397
    iget-object v3, p0, Lcom/android/exsettings/DeviceAdminAdd;->mAppOps:Landroid/app/AppOpsManager;

    iget v4, p0, Lcom/android/exsettings/DeviceAdminAdd;->mCurToastAppOpMode:I

    const/16 v5, 0x2d

    invoke-virtual {v3, v5, v2, v1, v4}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    .line 399
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/app/IActivityManager;->resumeAppSwitches()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 391
    :goto_0
    return-void

    .line 400
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method protected onResume()V
    .locals 6

    .prologue
    const/16 v5, 0x2d

    const/16 v4, 0x18

    const/4 v3, 0x1

    .line 379
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 380
    invoke-virtual {p0}, Lcom/android/exsettings/DeviceAdminAdd;->updateInterface()V

    .line 382
    iget-object v2, p0, Lcom/android/exsettings/DeviceAdminAdd;->mDeviceAdmin:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v2}, Landroid/app/admin/DeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 383
    .local v1, "uid":I
    iget-object v2, p0, Lcom/android/exsettings/DeviceAdminAdd;->mDeviceAdmin:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v2}, Landroid/app/admin/DeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 384
    .local v0, "pkg":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/exsettings/DeviceAdminAdd;->mAppOps:Landroid/app/AppOpsManager;

    invoke-virtual {v2, v4, v1, v0}, Landroid/app/AppOpsManager;->checkOp(IILjava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/exsettings/DeviceAdminAdd;->mCurSysAppOpMode:I

    .line 385
    iget-object v2, p0, Lcom/android/exsettings/DeviceAdminAdd;->mAppOps:Landroid/app/AppOpsManager;

    invoke-virtual {v2, v5, v1, v0}, Landroid/app/AppOpsManager;->checkOp(IILjava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/exsettings/DeviceAdminAdd;->mCurToastAppOpMode:I

    .line 386
    iget-object v2, p0, Lcom/android/exsettings/DeviceAdminAdd;->mAppOps:Landroid/app/AppOpsManager;

    invoke-virtual {v2, v4, v1, v0, v3}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    .line 387
    iget-object v2, p0, Lcom/android/exsettings/DeviceAdminAdd;->mAppOps:Landroid/app/AppOpsManager;

    invoke-virtual {v2, v5, v1, v0, v3}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    .line 378
    return-void
.end method

.method toggleMessageEllipsis(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    move-object v0, p1

    .line 488
    check-cast v0, Landroid/widget/TextView;

    .line 490
    .local v0, "tv":Landroid/widget/TextView;
    iget-boolean v1, p0, Lcom/android/exsettings/DeviceAdminAdd;->mAddMsgEllipsized:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/android/exsettings/DeviceAdminAdd;->mAddMsgEllipsized:Z

    .line 491
    iget-boolean v1, p0, Lcom/android/exsettings/DeviceAdminAdd;->mAddMsgEllipsized:Z

    if-eqz v1, :cond_1

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 492
    iget-boolean v1, p0, Lcom/android/exsettings/DeviceAdminAdd;->mAddMsgEllipsized:Z

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/exsettings/DeviceAdminAdd;->getEllipsizedLines()I

    move-result v1

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 494
    iget-object v2, p0, Lcom/android/exsettings/DeviceAdminAdd;->mAddMsgExpander:Landroid/widget/ImageView;

    iget-boolean v1, p0, Lcom/android/exsettings/DeviceAdminAdd;->mAddMsgEllipsized:Z

    if-eqz v1, :cond_3

    .line 495
    const v1, 0x10802c4

    .line 494
    :goto_3
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 487
    return-void

    .line 490
    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    .line 491
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 492
    :cond_2
    const/16 v1, 0xf

    goto :goto_2

    .line 496
    :cond_3
    const v1, 0x10802c3

    goto :goto_3
.end method

.method updateInterface()V
    .locals 7

    .prologue
    const/16 v4, 0x8

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 432
    iget-object v1, p0, Lcom/android/exsettings/DeviceAdminAdd;->mAdminIcon:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/exsettings/DeviceAdminAdd;->mDeviceAdmin:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {p0}, Lcom/android/exsettings/DeviceAdminAdd;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/admin/DeviceAdminInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 433
    iget-object v1, p0, Lcom/android/exsettings/DeviceAdminAdd;->mAdminName:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/exsettings/DeviceAdminAdd;->mDeviceAdmin:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {p0}, Lcom/android/exsettings/DeviceAdminAdd;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/admin/DeviceAdminInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 435
    :try_start_0
    iget-object v1, p0, Lcom/android/exsettings/DeviceAdminAdd;->mAdminDescription:Landroid/widget/TextView;

    .line 436
    iget-object v2, p0, Lcom/android/exsettings/DeviceAdminAdd;->mDeviceAdmin:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {p0}, Lcom/android/exsettings/DeviceAdminAdd;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/admin/DeviceAdminInfo;->loadDescription(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 435
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 437
    iget-object v1, p0, Lcom/android/exsettings/DeviceAdminAdd;->mAdminDescription:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 441
    :goto_0
    iget-boolean v1, p0, Lcom/android/exsettings/DeviceAdminAdd;->mAddingProfileOwner:Z

    if-eqz v1, :cond_0

    .line 442
    iget-object v1, p0, Lcom/android/exsettings/DeviceAdminAdd;->mProfileOwnerWarning:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 444
    :cond_0
    iget-object v1, p0, Lcom/android/exsettings/DeviceAdminAdd;->mAddMsgText:Ljava/lang/CharSequence;

    if-eqz v1, :cond_2

    .line 445
    iget-object v1, p0, Lcom/android/exsettings/DeviceAdminAdd;->mAddMsg:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/exsettings/DeviceAdminAdd;->mAddMsgText:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 446
    iget-object v1, p0, Lcom/android/exsettings/DeviceAdminAdd;->mAddMsg:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 451
    :goto_1
    iget-boolean v1, p0, Lcom/android/exsettings/DeviceAdminAdd;->mRefreshing:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/exsettings/DeviceAdminAdd;->mAddingProfileOwner:Z

    if-eqz v1, :cond_3

    .line 460
    :cond_1
    invoke-direct {p0, v6}, Lcom/android/exsettings/DeviceAdminAdd;->addDeviceAdminPolicies(Z)V

    .line 461
    iget-object v1, p0, Lcom/android/exsettings/DeviceAdminAdd;->mAdminWarning:Landroid/widget/TextView;

    new-array v2, v6, [Ljava/lang/Object;

    .line 462
    iget-object v3, p0, Lcom/android/exsettings/DeviceAdminAdd;->mDeviceAdmin:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v3}, Landroid/app/admin/DeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0}, Lcom/android/exsettings/DeviceAdminAdd;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    aput-object v3, v2, v5

    .line 461
    const v3, 0x7f0c0c4b

    invoke-virtual {p0, v3, v2}, Lcom/android/exsettings/DeviceAdminAdd;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 463
    iget-boolean v1, p0, Lcom/android/exsettings/DeviceAdminAdd;->mAddingProfileOwner:Z

    if-eqz v1, :cond_4

    .line 464
    const v1, 0x7f0c0c4d

    invoke-virtual {p0, v1}, Lcom/android/exsettings/DeviceAdminAdd;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/exsettings/DeviceAdminAdd;->setTitle(Ljava/lang/CharSequence;)V

    .line 468
    :goto_2
    iget-object v1, p0, Lcom/android/exsettings/DeviceAdminAdd;->mActionButton:Landroid/widget/Button;

    const v2, 0x7f0c0c49

    invoke-virtual {p0, v2}, Lcom/android/exsettings/DeviceAdminAdd;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 469
    iput-boolean v6, p0, Lcom/android/exsettings/DeviceAdminAdd;->mAdding:Z

    .line 431
    :goto_3
    return-void

    .line 438
    :catch_0
    move-exception v0

    .line 439
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    iget-object v1, p0, Lcom/android/exsettings/DeviceAdminAdd;->mAdminDescription:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 448
    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    :cond_2
    iget-object v1, p0, Lcom/android/exsettings/DeviceAdminAdd;->mAddMsg:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 449
    iget-object v1, p0, Lcom/android/exsettings/DeviceAdminAdd;->mAddMsgExpander:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 452
    :cond_3
    iget-object v1, p0, Lcom/android/exsettings/DeviceAdminAdd;->mDPM:Landroid/app/admin/DevicePolicyManager;

    iget-object v2, p0, Lcom/android/exsettings/DeviceAdminAdd;->mDeviceAdmin:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v2}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/admin/DevicePolicyManager;->isAdminActive(Landroid/content/ComponentName;)Z

    move-result v1

    .line 451
    if-eqz v1, :cond_1

    .line 453
    invoke-direct {p0, v5}, Lcom/android/exsettings/DeviceAdminAdd;->addDeviceAdminPolicies(Z)V

    .line 454
    iget-object v1, p0, Lcom/android/exsettings/DeviceAdminAdd;->mAdminWarning:Landroid/widget/TextView;

    new-array v2, v6, [Ljava/lang/Object;

    .line 455
    iget-object v3, p0, Lcom/android/exsettings/DeviceAdminAdd;->mDeviceAdmin:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v3}, Landroid/app/admin/DeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0}, Lcom/android/exsettings/DeviceAdminAdd;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    aput-object v3, v2, v5

    .line 454
    const v3, 0x7f0c0c4c

    invoke-virtual {p0, v3, v2}, Lcom/android/exsettings/DeviceAdminAdd;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 456
    const v1, 0x7f0c0c40

    invoke-virtual {p0, v1}, Lcom/android/exsettings/DeviceAdminAdd;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/exsettings/DeviceAdminAdd;->setTitle(Ljava/lang/CharSequence;)V

    .line 457
    iget-object v1, p0, Lcom/android/exsettings/DeviceAdminAdd;->mActionButton:Landroid/widget/Button;

    const v2, 0x7f0c0c41

    invoke-virtual {p0, v2}, Lcom/android/exsettings/DeviceAdminAdd;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 458
    iput-boolean v5, p0, Lcom/android/exsettings/DeviceAdminAdd;->mAdding:Z

    goto :goto_3

    .line 466
    :cond_4
    const v1, 0x7f0c0c48

    invoke-virtual {p0, v1}, Lcom/android/exsettings/DeviceAdminAdd;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/exsettings/DeviceAdminAdd;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method
