.class Lcom/android/exsettings/users/UserSettings$UserCapabilities;
.super Ljava/lang/Object;
.source "UserSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/users/UserSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UserCapabilities"
.end annotation


# instance fields
.field mCanAddGuest:Z

.field mCanAddRestrictedProfile:Z

.field mCanAddUser:Z

.field mEnabled:Z

.field mIsGuest:Z

.field mIsOwner:Z


# direct methods
.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 1027
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1028
    iput-boolean v0, p0, Lcom/android/exsettings/users/UserSettings$UserCapabilities;->mEnabled:Z

    .line 1029
    iput-boolean v0, p0, Lcom/android/exsettings/users/UserSettings$UserCapabilities;->mCanAddUser:Z

    .line 1030
    iput-boolean v0, p0, Lcom/android/exsettings/users/UserSettings$UserCapabilities;->mCanAddRestrictedProfile:Z

    .line 1031
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/android/exsettings/users/UserSettings$UserCapabilities;->mIsOwner:Z

    .line 1027
    return-void

    :cond_0
    move v0, v1

    .line 1031
    goto :goto_0
.end method

.method public static create(Landroid/content/Context;)Lcom/android/exsettings/users/UserSettings$UserCapabilities;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x0

    .line 1036
    const-string/jumbo v7, "user"

    invoke-virtual {p0, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/UserManager;

    .line 1037
    .local v5, "userManager":Landroid/os/UserManager;
    new-instance v1, Lcom/android/exsettings/users/UserSettings$UserCapabilities;

    invoke-direct {v1}, Lcom/android/exsettings/users/UserSettings$UserCapabilities;-><init>()V

    .line 1038
    .local v1, "caps":Lcom/android/exsettings/users/UserSettings$UserCapabilities;
    invoke-static {}, Landroid/os/UserManager;->supportsMultipleUsers()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-static {}, Lcom/android/exsettings/Utils;->isMonkeyRunning()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1039
    :cond_0
    iput-boolean v6, v1, Lcom/android/exsettings/users/UserSettings$UserCapabilities;->mEnabled:Z

    .line 1040
    return-object v1

    .line 1044
    :cond_1
    const-string/jumbo v7, "no_add_user"

    .line 1043
    invoke-virtual {v5, v7}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v2

    .line 1045
    .local v2, "disallowAddUser":Z
    iget-boolean v7, v1, Lcom/android/exsettings/users/UserSettings$UserCapabilities;->mIsOwner:Z

    if-eqz v7, :cond_2

    invoke-static {}, Landroid/os/UserManager;->getMaxSupportedUsers()I

    move-result v7

    const/4 v8, 0x2

    if-ge v7, v8, :cond_9

    .line 1048
    :cond_2
    :goto_0
    iput-boolean v6, v1, Lcom/android/exsettings/users/UserSettings$UserCapabilities;->mCanAddUser:Z

    .line 1051
    :cond_3
    const-string/jumbo v7, "device_policy"

    .line 1050
    invoke-virtual {p0, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/admin/DevicePolicyManager;

    .line 1053
    .local v3, "dpm":Landroid/app/admin/DevicePolicyManager;
    invoke-virtual {v3}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwner()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_4

    invoke-static {p0}, Lcom/android/exsettings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1054
    :cond_4
    iput-boolean v6, v1, Lcom/android/exsettings/users/UserSettings$UserCapabilities;->mCanAddRestrictedProfile:Z

    .line 1056
    :cond_5
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    .line 1057
    .local v4, "myUserId":I
    invoke-virtual {v5, v4}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v7

    iput-boolean v7, v1, Lcom/android/exsettings/users/UserSettings$UserCapabilities;->mIsGuest:Z

    .line 1059
    iget-boolean v7, v1, Lcom/android/exsettings/users/UserSettings$UserCapabilities;->mIsOwner:Z

    if-nez v7, :cond_6

    .line 1060
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "add_users_when_locked"

    .line 1059
    invoke-static {v7, v8, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    .line 1060
    const/4 v8, 0x1

    .line 1059
    if-ne v7, v8, :cond_a

    :cond_6
    const/4 v0, 0x1

    .line 1061
    .local v0, "canAddUsersWhenLocked":Z
    :goto_1
    iget-boolean v7, v1, Lcom/android/exsettings/users/UserSettings$UserCapabilities;->mIsGuest:Z

    if-nez v7, :cond_7

    if-eqz v2, :cond_8

    :cond_7
    move v0, v6

    .end local v0    # "canAddUsersWhenLocked":Z
    :cond_8
    iput-boolean v0, v1, Lcom/android/exsettings/users/UserSettings$UserCapabilities;->mCanAddGuest:Z

    .line 1062
    return-object v1

    .line 1046
    .end local v3    # "dpm":Landroid/app/admin/DevicePolicyManager;
    .end local v4    # "myUserId":I
    :cond_9
    invoke-static {}, Landroid/os/UserManager;->supportsMultipleUsers()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1045
    if-eqz v2, :cond_3

    goto :goto_0

    .line 1059
    .restart local v3    # "dpm":Landroid/app/admin/DevicePolicyManager;
    .restart local v4    # "myUserId":I
    :cond_a
    const/4 v0, 0x0

    .restart local v0    # "canAddUsersWhenLocked":Z
    goto :goto_1
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1067
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "UserCapabilities{mEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1068
    iget-boolean v1, p0, Lcom/android/exsettings/users/UserSettings$UserCapabilities;->mEnabled:Z

    .line 1067
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1069
    const-string/jumbo v1, ", mCanAddUser="

    .line 1067
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1069
    iget-boolean v1, p0, Lcom/android/exsettings/users/UserSettings$UserCapabilities;->mCanAddUser:Z

    .line 1067
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1070
    const-string/jumbo v1, ", mCanAddRestrictedProfile="

    .line 1067
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1070
    iget-boolean v1, p0, Lcom/android/exsettings/users/UserSettings$UserCapabilities;->mCanAddRestrictedProfile:Z

    .line 1067
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1071
    const-string/jumbo v1, ", mIsOwner="

    .line 1067
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1071
    iget-boolean v1, p0, Lcom/android/exsettings/users/UserSettings$UserCapabilities;->mIsOwner:Z

    .line 1067
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1072
    const-string/jumbo v1, ", mIsGuest="

    .line 1067
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1072
    iget-boolean v1, p0, Lcom/android/exsettings/users/UserSettings$UserCapabilities;->mIsGuest:Z

    .line 1067
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1073
    const/16 v1, 0x7d

    .line 1067
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
