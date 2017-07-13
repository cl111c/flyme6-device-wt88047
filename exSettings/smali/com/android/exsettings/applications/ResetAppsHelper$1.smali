.class Lcom/android/exsettings/applications/ResetAppsHelper$1;
.super Ljava/lang/Object;
.source "ResetAppsHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exsettings/applications/ResetAppsHelper;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/applications/ResetAppsHelper;


# direct methods
.method constructor <init>(Lcom/android/exsettings/applications/ResetAppsHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/exsettings/applications/ResetAppsHelper;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/android/exsettings/applications/ResetAppsHelper$1;->this$0:Lcom/android/exsettings/applications/ResetAppsHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    const/4 v13, 0x1

    const/4 v9, 0x0

    .line 113
    iget-object v8, p0, Lcom/android/exsettings/applications/ResetAppsHelper$1;->this$0:Lcom/android/exsettings/applications/ResetAppsHelper;

    invoke-static {v8}, Lcom/android/exsettings/applications/ResetAppsHelper;->-get4(Lcom/android/exsettings/applications/ResetAppsHelper;)Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 114
    const/16 v10, 0x200

    .line 113
    invoke-virtual {v8, v10}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v1

    .line 115
    .local v1, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    if-ge v5, v8, :cond_1

    .line 116
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 118
    .local v0, "app":Landroid/content/pm/ApplicationInfo;
    :try_start_0
    iget-object v8, p0, Lcom/android/exsettings/applications/ResetAppsHelper$1;->this$0:Lcom/android/exsettings/applications/ResetAppsHelper;

    invoke-static {v8}, Lcom/android/exsettings/applications/ResetAppsHelper;->-get2(Lcom/android/exsettings/applications/ResetAppsHelper;)Landroid/app/INotificationManager;

    move-result-object v8

    iget-object v10, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v11, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v12, 0x1

    invoke-interface {v8, v10, v11, v12}, Landroid/app/INotificationManager;->setNotificationsEnabledForPackage(Ljava/lang/String;IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 121
    :goto_1
    iget-boolean v8, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v8, :cond_0

    .line 122
    iget-object v8, p0, Lcom/android/exsettings/applications/ResetAppsHelper$1;->this$0:Lcom/android/exsettings/applications/ResetAppsHelper;

    invoke-static {v8}, Lcom/android/exsettings/applications/ResetAppsHelper;->-get4(Lcom/android/exsettings/applications/ResetAppsHelper;)Landroid/content/pm/PackageManager;

    move-result-object v8

    iget-object v10, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v10}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v8

    .line 123
    const/4 v10, 0x3

    .line 122
    if-ne v8, v10, :cond_0

    .line 124
    iget-object v8, p0, Lcom/android/exsettings/applications/ResetAppsHelper$1;->this$0:Lcom/android/exsettings/applications/ResetAppsHelper;

    invoke-static {v8}, Lcom/android/exsettings/applications/ResetAppsHelper;->-get4(Lcom/android/exsettings/applications/ResetAppsHelper;)Landroid/content/pm/PackageManager;

    move-result-object v8

    iget-object v10, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v10, v9, v13}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    .line 115
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 131
    .end local v0    # "app":Landroid/content/pm/ApplicationInfo;
    :cond_1
    :try_start_1
    iget-object v8, p0, Lcom/android/exsettings/applications/ResetAppsHelper$1;->this$0:Lcom/android/exsettings/applications/ResetAppsHelper;

    invoke-static {v8}, Lcom/android/exsettings/applications/ResetAppsHelper;->-get1(Lcom/android/exsettings/applications/ResetAppsHelper;)Landroid/content/pm/IPackageManager;

    move-result-object v8

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v10

    invoke-interface {v8, v10}, Landroid/content/pm/IPackageManager;->resetApplicationPreferences(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 134
    :goto_2
    iget-object v8, p0, Lcom/android/exsettings/applications/ResetAppsHelper$1;->this$0:Lcom/android/exsettings/applications/ResetAppsHelper;

    invoke-static {v8}, Lcom/android/exsettings/applications/ResetAppsHelper;->-get0(Lcom/android/exsettings/applications/ResetAppsHelper;)Landroid/app/AppOpsManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/AppOpsManager;->resetAllModes()V

    .line 135
    iget-object v8, p0, Lcom/android/exsettings/applications/ResetAppsHelper$1;->this$0:Lcom/android/exsettings/applications/ResetAppsHelper;

    invoke-static {v8}, Lcom/android/exsettings/applications/ResetAppsHelper;->-get3(Lcom/android/exsettings/applications/ResetAppsHelper;)Landroid/net/NetworkPolicyManager;

    move-result-object v8

    invoke-virtual {v8, v13}, Landroid/net/NetworkPolicyManager;->getUidsWithPolicy(I)[I

    move-result-object v6

    .line 137
    .local v6, "restrictedUids":[I
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    .line 138
    .local v2, "currentUserId":I
    array-length v10, v6

    move v8, v9

    :goto_3
    if-ge v8, v10, :cond_3

    aget v7, v6, v8

    .line 140
    .local v7, "uid":I
    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v11

    if-ne v11, v2, :cond_2

    .line 141
    iget-object v11, p0, Lcom/android/exsettings/applications/ResetAppsHelper$1;->this$0:Lcom/android/exsettings/applications/ResetAppsHelper;

    invoke-static {v11}, Lcom/android/exsettings/applications/ResetAppsHelper;->-get3(Lcom/android/exsettings/applications/ResetAppsHelper;)Landroid/net/NetworkPolicyManager;

    move-result-object v11

    invoke-virtual {v11, v7, v9}, Landroid/net/NetworkPolicyManager;->setUidPolicy(II)V

    .line 138
    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 144
    .end local v7    # "uid":I
    :cond_3
    iget-object v8, p0, Lcom/android/exsettings/applications/ResetAppsHelper$1;->this$0:Lcom/android/exsettings/applications/ResetAppsHelper;

    invoke-static {v8}, Lcom/android/exsettings/applications/ResetAppsHelper;->-get5(Lcom/android/exsettings/applications/ResetAppsHelper;)Lcom/android/exsettings/applications/ResetAppsHelper$ResetCompletedCallback;

    move-result-object v8

    invoke-interface {v8}, Lcom/android/exsettings/applications/ResetAppsHelper$ResetCompletedCallback;->onResetCompleted()V

    .line 112
    return-void

    .line 132
    .end local v2    # "currentUserId":I
    .end local v6    # "restrictedUids":[I
    :catch_0
    move-exception v3

    .local v3, "e":Landroid/os/RemoteException;
    goto :goto_2

    .line 119
    .end local v3    # "e":Landroid/os/RemoteException;
    .restart local v0    # "app":Landroid/content/pm/ApplicationInfo;
    :catch_1
    move-exception v4

    .local v4, "ex":Landroid/os/RemoteException;
    goto :goto_1
.end method
