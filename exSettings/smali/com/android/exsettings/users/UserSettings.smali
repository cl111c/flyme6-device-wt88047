.class public Lcom/android/exsettings/users/UserSettings;
.super Lcom/android/exsettings/SettingsPreferenceFragment;
.source "UserSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/exsettings/users/EditUserInfoController$OnContentChangedCallback;
.implements Lcom/android/exsettings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exsettings/users/UserSettings$UserCapabilities;,
        Lcom/android/exsettings/users/UserSettings$1;,
        Lcom/android/exsettings/users/UserSettings$2;,
        Lcom/android/exsettings/users/UserSettings$3;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/exsettings/search/Indexable$SearchIndexProvider;


# instance fields
.field private mAddUser:Landroid/preference/Preference;

.field private mAddedUserId:I

.field private mAddingUser:Z

.field private mDefaultIconDrawable:Landroid/graphics/drawable/Drawable;

.field private mEditUserInfoController:Lcom/android/exsettings/users/EditUserInfoController;

.field private mHandler:Landroid/os/Handler;

.field private mMePreference:Lcom/android/exsettings/users/UserPreference;

.field private mNicknamePreference:Lcom/android/exsettings/SelectableEditTextPreference;

.field private mRemovingUserId:I

.field private mUserCaps:Lcom/android/exsettings/users/UserSettings$UserCapabilities;

.field private mUserChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mUserIcons:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mUserListCategory:Landroid/preference/PreferenceGroup;

.field private final mUserLock:Ljava/lang/Object;

.field private mUserManager:Landroid/os/UserManager;


# direct methods
.method static synthetic -get0(Lcom/android/exsettings/users/UserSettings;)I
    .locals 1

    iget v0, p0, Lcom/android/exsettings/users/UserSettings;->mAddedUserId:I

    return v0
.end method

.method static synthetic -get1(Lcom/android/exsettings/users/UserSettings;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/users/UserSettings;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/exsettings/users/UserSettings;)I
    .locals 1

    iget v0, p0, Lcom/android/exsettings/users/UserSettings;->mRemovingUserId:I

    return v0
.end method

.method static synthetic -get3(Lcom/android/exsettings/users/UserSettings;)Landroid/util/SparseArray;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/users/UserSettings;->mUserIcons:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/exsettings/users/UserSettings;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/users/UserSettings;->mUserLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/exsettings/users/UserSettings;)Landroid/os/UserManager;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/exsettings/users/UserSettings;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/exsettings/users/UserSettings;->mAddingUser:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/exsettings/users/UserSettings;I)I
    .locals 0

    iput p1, p0, Lcom/android/exsettings/users/UserSettings;->mRemovingUserId:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/exsettings/users/UserSettings;)Landroid/content/pm/UserInfo;
    .locals 1

    invoke-direct {p0}, Lcom/android/exsettings/users/UserSettings;->createLimitedUser()Landroid/content/pm/UserInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/exsettings/users/UserSettings;)Landroid/content/pm/UserInfo;
    .locals 1

    invoke-direct {p0}, Lcom/android/exsettings/users/UserSettings;->createTrustedUser()Landroid/content/pm/UserInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap10(Lcom/android/exsettings/users/UserSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/exsettings/users/UserSettings;->removeUserNow()V

    return-void
.end method

.method static synthetic -wrap11(Lcom/android/exsettings/users/UserSettings;I)V
    .locals 0
    .param p1, "userId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/exsettings/users/UserSettings;->switchUserNow(I)V

    return-void
.end method

.method static synthetic -wrap12(Lcom/android/exsettings/users/UserSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/exsettings/users/UserSettings;->updateUserList()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/exsettings/users/UserSettings;I)V
    .locals 0
    .param p1, "userType"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/exsettings/users/UserSettings;->addUserNow(I)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/exsettings/users/UserSettings;Landroid/content/pm/UserInfo;)V
    .locals 0
    .param p1, "user"    # Landroid/content/pm/UserInfo;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/exsettings/users/UserSettings;->assignProfilePhoto(Landroid/content/pm/UserInfo;)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/exsettings/users/UserSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/exsettings/users/UserSettings;->exitGuest()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/exsettings/users/UserSettings;Ljava/lang/String;)V
    .locals 0
    .param p1, "profileName"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/exsettings/users/UserSettings;->finishLoadProfile(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/exsettings/users/UserSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/exsettings/users/UserSettings;->launchChooseLockscreen()V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/exsettings/users/UserSettings;I)V
    .locals 0
    .param p1, "userType"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/exsettings/users/UserSettings;->onAddUserClicked(I)V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/exsettings/users/UserSettings;IZ)V
    .locals 0
    .param p1, "userId"    # I
    .param p2, "newUser"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/exsettings/users/UserSettings;->onManageUserClicked(IZ)V

    return-void
.end method

.method static synthetic -wrap9(Lcom/android/exsettings/users/UserSettings;I)V
    .locals 0
    .param p1, "userId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/exsettings/users/UserSettings;->onUserCreated(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1078
    new-instance v0, Lcom/android/exsettings/users/UserSettings$3;

    invoke-direct {v0}, Lcom/android/exsettings/users/UserSettings$3;-><init>()V

    .line 1077
    sput-object v0, Lcom/android/exsettings/users/UserSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/exsettings/search/Indexable$SearchIndexProvider;

    .line 86
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;-><init>()V

    .line 134
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/exsettings/users/UserSettings;->mRemovingUserId:I

    .line 135
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/exsettings/users/UserSettings;->mAddedUserId:I

    .line 139
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/exsettings/users/UserSettings;->mUserLock:Ljava/lang/Object;

    .line 141
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/exsettings/users/UserSettings;->mUserIcons:Landroid/util/SparseArray;

    .line 144
    new-instance v0, Lcom/android/exsettings/users/EditUserInfoController;

    invoke-direct {v0}, Lcom/android/exsettings/users/EditUserInfoController;-><init>()V

    .line 143
    iput-object v0, p0, Lcom/android/exsettings/users/UserSettings;->mEditUserInfoController:Lcom/android/exsettings/users/EditUserInfoController;

    .line 149
    new-instance v0, Lcom/android/exsettings/users/UserSettings$1;

    invoke-direct {v0, p0}, Lcom/android/exsettings/users/UserSettings$1;-><init>(Lcom/android/exsettings/users/UserSettings;)V

    iput-object v0, p0, Lcom/android/exsettings/users/UserSettings;->mHandler:Landroid/os/Handler;

    .line 166
    new-instance v0, Lcom/android/exsettings/users/UserSettings$2;

    invoke-direct {v0, p0}, Lcom/android/exsettings/users/UserSettings$2;-><init>(Lcom/android/exsettings/users/UserSettings;)V

    iput-object v0, p0, Lcom/android/exsettings/users/UserSettings;->mUserChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 86
    return-void
.end method

.method private addUserNow(I)V
    .locals 2
    .param p1, "userType"    # I

    .prologue
    .line 657
    iget-object v1, p0, Lcom/android/exsettings/users/UserSettings;->mUserLock:Ljava/lang/Object;

    monitor-enter v1

    .line 658
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/exsettings/users/UserSettings;->mAddingUser:Z

    .line 660
    new-instance v0, Lcom/android/exsettings/users/UserSettings$13;

    invoke-direct {v0, p0, p1}, Lcom/android/exsettings/users/UserSettings$13;-><init>(Lcom/android/exsettings/users/UserSettings;I)V

    invoke-virtual {v0}, Lcom/android/exsettings/users/UserSettings$13;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 656
    return-void

    .line 657
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private assignDefaultPhoto(Landroid/content/pm/UserInfo;)V
    .locals 3
    .param p1, "user"    # Landroid/content/pm/UserInfo;

    .prologue
    .line 880
    iget v1, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v1}, Lcom/android/exsettings/Utils;->getDefaultUserIconAsBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 881
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/android/exsettings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    iget v2, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v1, v2, v0}, Landroid/os/UserManager;->setUserIcon(ILandroid/graphics/Bitmap;)V

    .line 879
    return-void
.end method

.method private assignProfilePhoto(Landroid/content/pm/UserInfo;)V
    .locals 1
    .param p1, "user"    # Landroid/content/pm/UserInfo;

    .prologue
    .line 874
    invoke-virtual {p0}, Lcom/android/exsettings/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/exsettings/Utils;->copyMeProfilePhoto(Landroid/content/Context;Landroid/content/pm/UserInfo;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 875
    invoke-direct {p0, p1}, Lcom/android/exsettings/users/UserSettings;->assignDefaultPhoto(Landroid/content/pm/UserInfo;)V

    .line 873
    :cond_0
    return-void
.end method

.method private createAndSwitchToGuestUser()V
    .locals 6

    .prologue
    .line 944
    invoke-direct {p0}, Lcom/android/exsettings/users/UserSettings;->findGuest()Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 945
    .local v0, "guest":Landroid/content/pm/UserInfo;
    if-eqz v0, :cond_0

    .line 946
    iget v2, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v2}, Lcom/android/exsettings/users/UserSettings;->switchUserNow(I)V

    .line 947
    return-void

    .line 949
    :cond_0
    iget-object v2, p0, Lcom/android/exsettings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p0}, Lcom/android/exsettings/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    .line 950
    invoke-virtual {p0}, Lcom/android/exsettings/users/UserSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c005f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 949
    invoke-virtual {v2, v3, v4}, Landroid/os/UserManager;->createGuest(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 951
    .local v1, "guestUser":Landroid/content/pm/UserInfo;
    if-eqz v1, :cond_1

    .line 952
    iget v2, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v2}, Lcom/android/exsettings/users/UserSettings;->switchUserNow(I)V

    .line 943
    :cond_1
    return-void
.end method

.method private createLimitedUser()Landroid/content/pm/UserInfo;
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v6, 0x0

    .line 403
    iget-object v7, p0, Lcom/android/exsettings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    .line 404
    invoke-virtual {p0}, Lcom/android/exsettings/users/UserSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0c0d99

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 405
    const/16 v9, 0x8

    .line 403
    invoke-virtual {v7, v8, v9}, Landroid/os/UserManager;->createSecondaryUser(Ljava/lang/String;I)Landroid/content/pm/UserInfo;

    move-result-object v3

    .line 406
    .local v3, "newUserInfo":Landroid/content/pm/UserInfo;
    iget v5, v3, Landroid/content/pm/UserInfo;->id:I

    .line 407
    .local v5, "userId":I
    new-instance v4, Landroid/os/UserHandle;

    invoke-direct {v4, v5}, Landroid/os/UserHandle;-><init>(I)V

    .line 408
    .local v4, "user":Landroid/os/UserHandle;
    iget-object v7, p0, Lcom/android/exsettings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    const-string/jumbo v8, "no_modify_accounts"

    invoke-virtual {v7, v8, v10, v4}, Landroid/os/UserManager;->setUserRestriction(Ljava/lang/String;ZLandroid/os/UserHandle;)V

    .line 411
    invoke-virtual {p0}, Lcom/android/exsettings/users/UserSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 412
    const-string/jumbo v8, "location_mode"

    .line 411
    invoke-static {v7, v8, v6, v5}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 413
    iget-object v7, p0, Lcom/android/exsettings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    const-string/jumbo v8, "no_share_location"

    invoke-virtual {v7, v8, v10, v4}, Landroid/os/UserManager;->setUserRestriction(Ljava/lang/String;ZLandroid/os/UserHandle;)V

    .line 414
    invoke-direct {p0, v3}, Lcom/android/exsettings/users/UserSettings;->assignDefaultPhoto(Landroid/content/pm/UserInfo;)V

    .line 416
    invoke-virtual {p0}, Lcom/android/exsettings/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v2

    .line 417
    .local v2, "am":Landroid/accounts/AccountManager;
    invoke-virtual {v2}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v1

    .line 418
    .local v1, "accounts":[Landroid/accounts/Account;
    if-eqz v1, :cond_0

    .line 419
    array-length v7, v1

    :goto_0
    if-ge v6, v7, :cond_0

    aget-object v0, v1, v6

    .line 420
    .local v0, "account":Landroid/accounts/Account;
    invoke-virtual {v2, v0, v4}, Landroid/accounts/AccountManager;->addSharedAccount(Landroid/accounts/Account;Landroid/os/UserHandle;)Z

    .line 419
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 423
    .end local v0    # "account":Landroid/accounts/Account;
    :cond_0
    return-object v3
.end method

.method private createTrustedUser()Landroid/content/pm/UserInfo;
    .locals 4

    .prologue
    .line 427
    iget-object v1, p0, Lcom/android/exsettings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    .line 428
    invoke-virtual {p0}, Lcom/android/exsettings/users/UserSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0d98

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 427
    invoke-virtual {v1, v2, v3}, Landroid/os/UserManager;->createSecondaryUser(Ljava/lang/String;I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 429
    .local v0, "newUserInfo":Landroid/content/pm/UserInfo;
    if-eqz v0, :cond_0

    .line 430
    invoke-direct {p0, v0}, Lcom/android/exsettings/users/UserSettings;->assignDefaultPhoto(Landroid/content/pm/UserInfo;)V

    .line 432
    :cond_0
    return-object v0
.end method

.method private encircle(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "icon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 971
    invoke-virtual {p0}, Lcom/android/exsettings/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/android/exsettingslib/drawable/CircleFramedDrawable;->getInstance(Landroid/content/Context;Landroid/graphics/Bitmap;)Lcom/android/exsettingslib/drawable/CircleFramedDrawable;

    move-result-object v0

    .line 972
    .local v0, "circled":Landroid/graphics/drawable/Drawable;
    return-object v0
.end method

.method private exitGuest()V
    .locals 1

    .prologue
    .line 698
    iget-object v0, p0, Lcom/android/exsettings/users/UserSettings;->mUserCaps:Lcom/android/exsettings/users/UserSettings$UserCapabilities;

    iget-boolean v0, v0, Lcom/android/exsettings/users/UserSettings$UserCapabilities;->mIsGuest:Z

    if-nez v0, :cond_0

    .line 699
    return-void

    .line 701
    :cond_0
    invoke-direct {p0}, Lcom/android/exsettings/users/UserSettings;->removeThisUser()V

    .line 696
    return-void
.end method

.method private findGuest()Landroid/content/pm/UserInfo;
    .locals 4

    .prologue
    .line 957
    iget-object v3, p0, Lcom/android/exsettings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v3}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v2

    .line 958
    .local v2, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "user$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/UserInfo;

    .line 959
    .local v0, "user":Landroid/content/pm/UserInfo;
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 960
    return-object v0

    .line 963
    .end local v0    # "user":Landroid/content/pm/UserInfo;
    :cond_1
    const/4 v3, 0x0

    return-object v3
.end method

.method private finishLoadProfile(Ljava/lang/String;)V
    .locals 5
    .param p1, "profileName"    # Ljava/lang/String;

    .prologue
    .line 339
    invoke-virtual {p0}, Lcom/android/exsettings/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-nez v2, :cond_0

    return-void

    .line 340
    :cond_0
    iget-object v2, p0, Lcom/android/exsettings/users/UserSettings;->mMePreference:Lcom/android/exsettings/users/UserPreference;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const v4, 0x7f0c0d84

    invoke-virtual {p0, v4, v3}, Lcom/android/exsettings/users/UserSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/exsettings/users/UserPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 341
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    .line 342
    .local v1, "myUserId":I
    iget-object v2, p0, Lcom/android/exsettings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v2, v1}, Landroid/os/UserManager;->getUserIcon(I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 343
    .local v0, "b":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1

    .line 344
    iget-object v2, p0, Lcom/android/exsettings/users/UserSettings;->mMePreference:Lcom/android/exsettings/users/UserPreference;

    invoke-direct {p0, v0}, Lcom/android/exsettings/users/UserSettings;->encircle(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/exsettings/users/UserPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 345
    iget-object v2, p0, Lcom/android/exsettings/users/UserSettings;->mUserIcons:Landroid/util/SparseArray;

    invoke-virtual {v2, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 338
    :cond_1
    return-void
.end method

.method private getEncircledDefaultIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 885
    iget-object v0, p0, Lcom/android/exsettings/users/UserSettings;->mDefaultIconDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 886
    const/16 v0, -0x2710

    invoke-static {v0}, Lcom/android/exsettings/Utils;->getDefaultUserIconAsBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/exsettings/users/UserSettings;->encircle(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/users/UserSettings;->mDefaultIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 888
    :cond_0
    iget-object v0, p0, Lcom/android/exsettings/users/UserSettings;->mDefaultIconDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private getMaxRealUsers()I
    .locals 6

    .prologue
    .line 840
    invoke-static {}, Landroid/os/UserManager;->getMaxSupportedUsers()I

    move-result v5

    add-int/lit8 v1, v5, 0x1

    .line 841
    .local v1, "maxUsersAndGuest":I
    iget-object v5, p0, Lcom/android/exsettings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v5}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v4

    .line 843
    .local v4, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    const/4 v0, 0x0

    .line 844
    .local v0, "managedProfiles":I
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "user$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 845
    .local v2, "user":Landroid/content/pm/UserInfo;
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 846
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 849
    .end local v2    # "user":Landroid/content/pm/UserInfo;
    :cond_1
    sub-int v5, v1, v0

    return v5
.end method

.method private hasLockscreenSecurity()Z
    .locals 2

    .prologue
    .line 350
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/exsettings/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 351
    .local v0, "lpu":Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v1

    return v1
.end method

.method private isInitialized(Landroid/content/pm/UserInfo;)Z
    .locals 2
    .param p1, "user"    # Landroid/content/pm/UserInfo;

    .prologue
    const/4 v0, 0x0

    .line 967
    iget v1, p1, Landroid/content/pm/UserInfo;->flags:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private launchChooseLockscreen()V
    .locals 3

    .prologue
    .line 355
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.app.action.SET_NEW_PASSWORD"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 356
    .local v0, "chooseLockIntent":Landroid/content/Intent;
    const-string/jumbo v1, "minimum_quality"

    .line 357
    const/high16 v2, 0x10000

    .line 356
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 358
    const/16 v1, 0xa

    invoke-virtual {p0, v0, v1}, Lcom/android/exsettings/users/UserSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 354
    return-void
.end method

.method private loadIconsAsync(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 853
    .local p1, "missingIcons":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v0, Lcom/android/exsettings/users/UserSettings$14;

    invoke-direct {v0, p0}, Lcom/android/exsettings/users/UserSettings$14;-><init>(Lcom/android/exsettings/users/UserSettings;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/util/List;

    .line 870
    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 853
    invoke-virtual {v0, v1}, Lcom/android/exsettings/users/UserSettings$14;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 852
    return-void
.end method

.method private loadProfile()V
    .locals 2

    .prologue
    .line 314
    iget-object v0, p0, Lcom/android/exsettings/users/UserSettings;->mUserCaps:Lcom/android/exsettings/users/UserSettings$UserCapabilities;

    iget-boolean v0, v0, Lcom/android/exsettings/users/UserSettings$UserCapabilities;->mIsGuest:Z

    if-eqz v0, :cond_0

    .line 316
    iget-object v0, p0, Lcom/android/exsettings/users/UserSettings;->mMePreference:Lcom/android/exsettings/users/UserPreference;

    invoke-direct {p0}, Lcom/android/exsettings/users/UserSettings;->getEncircledDefaultIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/exsettings/users/UserPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 317
    iget-object v0, p0, Lcom/android/exsettings/users/UserSettings;->mMePreference:Lcom/android/exsettings/users/UserPreference;

    const v1, 0x7f0c0da5

    invoke-virtual {v0, v1}, Lcom/android/exsettings/users/UserPreference;->setTitle(I)V

    .line 318
    return-void

    .line 321
    :cond_0
    new-instance v0, Lcom/android/exsettings/users/UserSettings$4;

    invoke-direct {v0, p0}, Lcom/android/exsettings/users/UserSettings$4;-><init>(Lcom/android/exsettings/users/UserSettings;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/exsettings/users/UserSettings$4;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 313
    return-void
.end method

.method private onAddUserClicked(I)V
    .locals 3
    .param p1, "userType"    # I

    .prologue
    .line 375
    iget-object v1, p0, Lcom/android/exsettings/users/UserSettings;->mUserLock:Ljava/lang/Object;

    monitor-enter v1

    .line 376
    :try_start_0
    iget v0, p0, Lcom/android/exsettings/users/UserSettings;->mRemovingUserId:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    iget-boolean v0, p0, Lcom/android/exsettings/users/UserSettings;->mAddingUser:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit v1

    .line 374
    return-void

    .line 377
    :cond_1
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 379
    :pswitch_0
    const/4 v0, 0x2

    :try_start_1
    invoke-virtual {p0, v0}, Lcom/android/exsettings/users/UserSettings;->showDialog(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 375
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 382
    :pswitch_1
    :try_start_2
    invoke-direct {p0}, Lcom/android/exsettings/users/UserSettings;->hasLockscreenSecurity()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 383
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/exsettings/users/UserSettings;->addUserNow(I)V

    goto :goto_0

    .line 385
    :cond_2
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/android/exsettings/users/UserSettings;->showDialog(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 377
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private onManageUserClicked(IZ)V
    .locals 8
    .param p1, "userId"    # I
    .param p2, "newUser"    # Z

    .prologue
    .line 436
    const/16 v0, -0xb

    if-ne p1, v0, :cond_0

    .line 437
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 438
    .local v2, "extras":Landroid/os/Bundle;
    const-string/jumbo v0, "guest_user"

    const/4 v1, 0x1

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 439
    invoke-virtual {p0}, Lcom/android/exsettings/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/exsettings/SettingsActivity;

    .line 440
    const-class v1, Lcom/android/exsettings/users/UserDetailsSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 441
    const v3, 0x7f0c005f

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 439
    invoke-virtual/range {v0 .. v6}, Lcom/android/exsettings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 442
    return-void

    .line 444
    .end local v2    # "extras":Landroid/os/Bundle;
    :cond_0
    iget-object v0, p0, Lcom/android/exsettings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v7

    .line 445
    .local v7, "info":Landroid/content/pm/UserInfo;
    invoke-virtual {v7}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/exsettings/users/UserSettings;->mUserCaps:Lcom/android/exsettings/users/UserSettings$UserCapabilities;

    iget-boolean v0, v0, Lcom/android/exsettings/users/UserSettings$UserCapabilities;->mIsOwner:Z

    if-eqz v0, :cond_2

    .line 446
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 447
    .restart local v2    # "extras":Landroid/os/Bundle;
    const-string/jumbo v0, "user_id"

    invoke-virtual {v2, v0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 448
    const-string/jumbo v0, "new_user"

    invoke-virtual {v2, v0, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 449
    invoke-virtual {p0}, Lcom/android/exsettings/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/exsettings/SettingsActivity;

    .line 450
    const-class v1, Lcom/android/exsettings/users/RestrictedProfileSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 451
    const v3, 0x7f0c0e02

    const/4 v4, 0x0

    .line 452
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 449
    invoke-virtual/range {v0 .. v6}, Lcom/android/exsettings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 435
    .end local v2    # "extras":Landroid/os/Bundle;
    :cond_1
    :goto_0
    return-void

    .line 453
    :cond_2
    iget v0, v7, Landroid/content/pm/UserInfo;->id:I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-ne v0, v1, :cond_3

    .line 455
    invoke-static {p0}, Lcom/android/exsettings/OwnerInfoSettings;->show(Landroid/app/Fragment;)V

    goto :goto_0

    .line 456
    :cond_3
    iget-object v0, p0, Lcom/android/exsettings/users/UserSettings;->mUserCaps:Lcom/android/exsettings/users/UserSettings$UserCapabilities;

    iget-boolean v0, v0, Lcom/android/exsettings/users/UserSettings$UserCapabilities;->mIsOwner:Z

    if-eqz v0, :cond_1

    .line 457
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 458
    .restart local v2    # "extras":Landroid/os/Bundle;
    const-string/jumbo v0, "user_id"

    invoke-virtual {v2, v0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 459
    invoke-virtual {p0}, Lcom/android/exsettings/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/exsettings/SettingsActivity;

    .line 460
    const-class v1, Lcom/android/exsettings/users/UserDetailsSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 463
    iget-object v4, v7, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    .line 462
    const/4 v3, -0x1

    .line 464
    const/4 v5, 0x0

    .line 465
    const/4 v6, 0x0

    .line 459
    invoke-virtual/range {v0 .. v6}, Lcom/android/exsettings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_0
.end method

.method private onRemoveUserClicked(I)V
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 394
    iget-object v1, p0, Lcom/android/exsettings/users/UserSettings;->mUserLock:Ljava/lang/Object;

    monitor-enter v1

    .line 395
    :try_start_0
    iget v0, p0, Lcom/android/exsettings/users/UserSettings;->mRemovingUserId:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    iget-boolean v0, p0, Lcom/android/exsettings/users/UserSettings;->mAddingUser:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit v1

    .line 393
    return-void

    .line 396
    :cond_1
    :try_start_1
    iput p1, p0, Lcom/android/exsettings/users/UserSettings;->mRemovingUserId:I

    .line 397
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/exsettings/users/UserSettings;->showDialog(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 394
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private onUserCreated(I)V
    .locals 1
    .param p1, "userId"    # I

    .prologue
    .line 470
    iput p1, p0, Lcom/android/exsettings/users/UserSettings;->mAddedUserId:I

    .line 471
    iget-object v0, p0, Lcom/android/exsettings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 472
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/exsettings/users/UserSettings;->showDialog(I)V

    .line 469
    :goto_0
    return-void

    .line 474
    :cond_0
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/exsettings/users/UserSettings;->showDialog(I)V

    goto :goto_0
.end method

.method private removeThisUser()V
    .locals 3

    .prologue
    .line 648
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->switchUser(I)Z

    .line 649
    invoke-virtual {p0}, Lcom/android/exsettings/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string/jumbo v2, "user"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    .line 650
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    .line 649
    invoke-virtual {v1, v2}, Landroid/os/UserManager;->removeUser(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 646
    :goto_0
    return-void

    .line 651
    :catch_0
    move-exception v0

    .line 652
    .local v0, "re":Landroid/os/RemoteException;
    const-string/jumbo v1, "UserSettings"

    const-string/jumbo v2, "Unable to remove self user"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private removeUserNow()V
    .locals 2

    .prologue
    .line 632
    iget v0, p0, Lcom/android/exsettings/users/UserSettings;->mRemovingUserId:I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 633
    invoke-direct {p0}, Lcom/android/exsettings/users/UserSettings;->removeThisUser()V

    .line 631
    :goto_0
    return-void

    .line 635
    :cond_0
    new-instance v0, Lcom/android/exsettings/users/UserSettings$12;

    invoke-direct {v0, p0}, Lcom/android/exsettings/users/UserSettings$12;-><init>(Lcom/android/exsettings/users/UserSettings;)V

    invoke-virtual {v0}, Lcom/android/exsettings/users/UserSettings$12;->start()V

    goto :goto_0
.end method

.method private setPhotoId(Landroid/preference/Preference;Landroid/content/pm/UserInfo;)V
    .locals 3
    .param p1, "pref"    # Landroid/preference/Preference;
    .param p2, "user"    # Landroid/content/pm/UserInfo;

    .prologue
    .line 892
    iget-object v1, p0, Lcom/android/exsettings/users/UserSettings;->mUserIcons:Landroid/util/SparseArray;

    iget v2, p2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 893
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 894
    invoke-direct {p0, v0}, Lcom/android/exsettings/users/UserSettings;->encircle(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 891
    :cond_0
    return-void
.end method

.method private setUserName(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 899
    iget-object v0, p0, Lcom/android/exsettings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/os/UserManager;->setUserName(ILjava/lang/String;)V

    .line 900
    iget-object v0, p0, Lcom/android/exsettings/users/UserSettings;->mNicknamePreference:Lcom/android/exsettings/SelectableEditTextPreference;

    invoke-virtual {v0, p1}, Lcom/android/exsettings/SelectableEditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 901
    invoke-virtual {p0}, Lcom/android/exsettings/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 898
    return-void
.end method

.method private switchUserNow(I)V
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 687
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/app/IActivityManager;->switchUser(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 685
    :goto_0
    return-void

    .line 688
    :catch_0
    move-exception v0

    .local v0, "re":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private updateUserList()V
    .locals 22

    .prologue
    .line 705
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    if-nez v3, :cond_0

    return-void

    .line 706
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/exsettings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v20

    .line 707
    .local v20, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 709
    .local v2, "context":Landroid/content/Context;
    invoke-static {v2}, Lcom/android/exsettings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v21

    .line 710
    .local v21, "voiceCapable":Z
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 711
    .local v10, "missingIcons":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 712
    .local v19, "userPreferences":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/exsettings/users/UserPreference;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/exsettings/users/UserSettings;->mMePreference:Lcom/android/exsettings/users/UserPreference;

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 714
    invoke-interface/range {v20 .. v20}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, "user$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_10

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/pm/UserInfo;

    .line 715
    .local v15, "user":Landroid/content/pm/UserInfo;
    invoke-virtual {v15}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v3

    if-nez v3, :cond_1

    .line 720
    iget v3, v15, Landroid/content/pm/UserInfo;->id:I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    if-ne v3, v4, :cond_3

    .line 721
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/exsettings/users/UserSettings;->mMePreference:Lcom/android/exsettings/users/UserPreference;

    .line 749
    .local v1, "pref":Lcom/android/exsettings/users/UserPreference;
    :goto_1
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/exsettings/users/UserSettings;->isInitialized(Landroid/content/pm/UserInfo;)Z

    move-result v3

    if-nez v3, :cond_d

    .line 750
    invoke-virtual {v15}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 751
    const v3, 0x7f0c0d81

    invoke-virtual {v1, v3}, Lcom/android/exsettings/users/UserPreference;->setSummary(I)V

    .line 758
    :cond_2
    :goto_2
    iget-object v3, v15, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    if-eqz v3, :cond_f

    .line 759
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/exsettings/users/UserSettings;->mUserIcons:Landroid/util/SparseArray;

    iget v4, v15, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_e

    .line 761
    iget v3, v15, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 762
    invoke-direct/range {p0 .. p0}, Lcom/android/exsettings/users/UserSettings;->getEncircledDefaultIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/exsettings/users/UserPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 722
    .end local v1    # "pref":Lcom/android/exsettings/users/UserPreference;
    :cond_3
    invoke-virtual {v15}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v3

    if-nez v3, :cond_1

    .line 734
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/exsettings/users/UserSettings;->mUserCaps:Lcom/android/exsettings/users/UserSettings$UserCapabilities;

    iget-boolean v3, v3, Lcom/android/exsettings/users/UserSettings$UserCapabilities;->mIsOwner:Z

    if-eqz v3, :cond_7

    .line 735
    if-nez v21, :cond_6

    invoke-virtual {v15}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v14

    .line 736
    :goto_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/exsettings/users/UserSettings;->mUserCaps:Lcom/android/exsettings/users/UserSettings$UserCapabilities;

    iget-boolean v3, v3, Lcom/android/exsettings/users/UserSettings$UserCapabilities;->mIsOwner:Z

    if-eqz v3, :cond_9

    .line 737
    if-nez v21, :cond_4

    invoke-virtual {v15}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v3

    if-eqz v3, :cond_8

    :cond_4
    const/4 v13, 0x0

    .line 738
    .local v13, "showDelete":Z
    :goto_4
    new-instance v1, Lcom/android/exsettings/users/UserPreference;

    iget v4, v15, Landroid/content/pm/UserInfo;->id:I

    .line 739
    if-eqz v14, :cond_a

    move-object/from16 v5, p0

    .line 740
    :goto_5
    if-eqz v13, :cond_b

    move-object/from16 v6, p0

    .line 738
    :goto_6
    const/4 v3, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/android/exsettings/users/UserPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    .line 741
    .restart local v1    # "pref":Lcom/android/exsettings/users/UserPreference;
    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/android/exsettings/users/UserPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 742
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v15, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/exsettings/users/UserPreference;->setKey(Ljava/lang/String;)V

    .line 743
    move-object/from16 v0, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 744
    iget v3, v15, Landroid/content/pm/UserInfo;->id:I

    if-nez v3, :cond_5

    .line 745
    const v3, 0x7f0c0d83

    invoke-virtual {v1, v3}, Lcom/android/exsettings/users/UserPreference;->setSummary(I)V

    .line 747
    :cond_5
    iget-object v3, v15, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/android/exsettings/users/UserPreference;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 735
    .end local v1    # "pref":Lcom/android/exsettings/users/UserPreference;
    .end local v13    # "showDelete":Z
    :cond_6
    const/4 v14, 0x1

    .local v14, "showSettings":Z
    goto :goto_3

    .line 734
    .end local v14    # "showSettings":Z
    :cond_7
    const/4 v14, 0x0

    .restart local v14    # "showSettings":Z
    goto :goto_3

    .line 737
    .end local v14    # "showSettings":Z
    :cond_8
    invoke-virtual {v15}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v3

    if-nez v3, :cond_4

    const/4 v13, 0x1

    .restart local v13    # "showDelete":Z
    goto :goto_4

    .line 736
    .end local v13    # "showDelete":Z
    :cond_9
    const/4 v13, 0x0

    .restart local v13    # "showDelete":Z
    goto :goto_4

    .line 739
    :cond_a
    const/4 v5, 0x0

    goto :goto_5

    .line 740
    :cond_b
    const/4 v6, 0x0

    goto :goto_6

    .line 753
    .end local v13    # "showDelete":Z
    .restart local v1    # "pref":Lcom/android/exsettings/users/UserPreference;
    :cond_c
    const v3, 0x7f0c0d80

    invoke-virtual {v1, v3}, Lcom/android/exsettings/users/UserPreference;->setSummary(I)V

    goto/16 :goto_2

    .line 755
    :cond_d
    invoke-virtual {v15}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 756
    const v3, 0x7f0c0d7d

    invoke-virtual {v1, v3}, Lcom/android/exsettings/users/UserPreference;->setSummary(I)V

    goto/16 :goto_2

    .line 764
    :cond_e
    move-object/from16 v0, p0

    invoke-direct {v0, v1, v15}, Lcom/android/exsettings/users/UserSettings;->setPhotoId(Landroid/preference/Preference;Landroid/content/pm/UserInfo;)V

    goto/16 :goto_0

    .line 768
    :cond_f
    invoke-direct/range {p0 .. p0}, Lcom/android/exsettings/users/UserSettings;->getEncircledDefaultIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/exsettings/users/UserPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 773
    .end local v1    # "pref":Lcom/android/exsettings/users/UserPreference;
    .end local v15    # "user":Landroid/content/pm/UserInfo;
    :cond_10
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/exsettings/users/UserSettings;->mAddingUser:Z

    if-eqz v3, :cond_11

    .line 774
    new-instance v1, Lcom/android/exsettings/users/UserPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const/4 v5, 0x0

    .line 775
    const/16 v6, -0xa

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, v1

    .line 774
    invoke-direct/range {v3 .. v8}, Lcom/android/exsettings/users/UserPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    .line 776
    .restart local v1    # "pref":Lcom/android/exsettings/users/UserPreference;
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/android/exsettings/users/UserPreference;->setEnabled(Z)V

    .line 777
    const v3, 0x7f0c0d98

    invoke-virtual {v1, v3}, Lcom/android/exsettings/users/UserPreference;->setTitle(I)V

    .line 778
    invoke-direct/range {p0 .. p0}, Lcom/android/exsettings/users/UserSettings;->getEncircledDefaultIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/exsettings/users/UserPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 779
    move-object/from16 v0, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 782
    .end local v1    # "pref":Lcom/android/exsettings/users/UserPreference;
    :cond_11
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/exsettings/users/UserSettings;->mUserCaps:Lcom/android/exsettings/users/UserSettings$UserCapabilities;

    iget-boolean v3, v3, Lcom/android/exsettings/users/UserSettings$UserCapabilities;->mIsGuest:Z

    if-nez v3, :cond_13

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/exsettings/users/UserSettings;->mUserCaps:Lcom/android/exsettings/users/UserSettings$UserCapabilities;

    iget-boolean v3, v3, Lcom/android/exsettings/users/UserSettings$UserCapabilities;->mCanAddGuest:Z

    if-nez v3, :cond_12

    invoke-direct/range {p0 .. p0}, Lcom/android/exsettings/users/UserSettings;->findGuest()Landroid/content/pm/UserInfo;

    move-result-object v3

    if-eqz v3, :cond_13

    .line 784
    :cond_12
    new-instance v1, Lcom/android/exsettings/users/UserPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    .line 786
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/exsettings/users/UserSettings;->mUserCaps:Lcom/android/exsettings/users/UserSettings$UserCapabilities;

    iget-boolean v3, v3, Lcom/android/exsettings/users/UserSettings$UserCapabilities;->mIsOwner:Z

    if-eqz v3, :cond_15

    if-eqz v21, :cond_15

    move-object/from16 v7, p0

    .line 784
    :goto_7
    const/4 v5, 0x0

    .line 785
    const/16 v6, -0xb

    .line 787
    const/4 v8, 0x0

    move-object v3, v1

    .line 784
    invoke-direct/range {v3 .. v8}, Lcom/android/exsettings/users/UserPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    .line 788
    .restart local v1    # "pref":Lcom/android/exsettings/users/UserPreference;
    const v3, 0x7f0c005f

    invoke-virtual {v1, v3}, Lcom/android/exsettings/users/UserPreference;->setTitle(I)V

    .line 789
    invoke-direct/range {p0 .. p0}, Lcom/android/exsettings/users/UserSettings;->getEncircledDefaultIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/exsettings/users/UserPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 790
    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/android/exsettings/users/UserPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 791
    move-object/from16 v0, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 795
    .end local v1    # "pref":Lcom/android/exsettings/users/UserPreference;
    :cond_13
    sget-object v3, Lcom/android/exsettings/users/UserPreference;->SERIAL_NUMBER_COMPARATOR:Ljava/util/Comparator;

    move-object/from16 v0, v19

    invoke-static {v0, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 797
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 800
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_14

    .line 801
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/exsettings/users/UserSettings;->loadIconsAsync(Ljava/util/List;)V

    .line 804
    :cond_14
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/users/UserSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v12

    .line 805
    .local v12, "preferenceScreen":Landroid/preference/PreferenceScreen;
    invoke-virtual {v12}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 811
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/exsettings/users/UserSettings;->mUserCaps:Lcom/android/exsettings/users/UserSettings$UserCapabilities;

    iget-boolean v3, v3, Lcom/android/exsettings/users/UserSettings$UserCapabilities;->mCanAddRestrictedProfile:Z

    if-eqz v3, :cond_16

    .line 812
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/exsettings/users/UserSettings;->mUserListCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v3}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 813
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/exsettings/users/UserSettings;->mUserListCategory:Landroid/preference/PreferenceGroup;

    const v4, 0x7fffffff

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceGroup;->setOrder(I)V

    .line 814
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/exsettings/users/UserSettings;->mUserListCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v12, v3}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 815
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/exsettings/users/UserSettings;->mUserListCategory:Landroid/preference/PreferenceGroup;

    .line 819
    .local v9, "groupToAddUsers":Landroid/preference/PreferenceGroup;
    :goto_8
    invoke-interface/range {v19 .. v19}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .local v18, "userPreference$iterator":Ljava/util/Iterator;
    :goto_9
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_17

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/exsettings/users/UserPreference;

    .line 820
    .local v17, "userPreference":Lcom/android/exsettings/users/UserPreference;
    const v3, 0x7fffffff

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lcom/android/exsettings/users/UserPreference;->setOrder(I)V

    .line 821
    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_9

    .line 786
    .end local v9    # "groupToAddUsers":Landroid/preference/PreferenceGroup;
    .end local v12    # "preferenceScreen":Landroid/preference/PreferenceScreen;
    .end local v17    # "userPreference":Lcom/android/exsettings/users/UserPreference;
    .end local v18    # "userPreference$iterator":Ljava/util/Iterator;
    :cond_15
    const/4 v7, 0x0

    goto/16 :goto_7

    .line 817
    .restart local v12    # "preferenceScreen":Landroid/preference/PreferenceScreen;
    :cond_16
    move-object v9, v12

    .restart local v9    # "groupToAddUsers":Landroid/preference/PreferenceGroup;
    goto :goto_8

    .line 825
    .restart local v18    # "userPreference$iterator":Ljava/util/Iterator;
    :cond_17
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/exsettings/users/UserSettings;->mUserCaps:Lcom/android/exsettings/users/UserSettings$UserCapabilities;

    iget-boolean v3, v3, Lcom/android/exsettings/users/UserSettings$UserCapabilities;->mCanAddUser:Z

    if-eqz v3, :cond_18

    .line 826
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/exsettings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v3}, Landroid/os/UserManager;->canAddMoreUsers()Z

    move-result v11

    .line 827
    .local v11, "moreUsers":Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/exsettings/users/UserSettings;->mAddUser:Landroid/preference/Preference;

    const v4, 0x7fffffff

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setOrder(I)V

    .line 828
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/exsettings/users/UserSettings;->mAddUser:Landroid/preference/Preference;

    invoke-virtual {v12, v3}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 829
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/exsettings/users/UserSettings;->mAddUser:Landroid/preference/Preference;

    invoke-virtual {v3, v11}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 830
    if-nez v11, :cond_19

    .line 831
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/exsettings/users/UserSettings;->mAddUser:Landroid/preference/Preference;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-direct/range {p0 .. p0}, Lcom/android/exsettings/users/UserSettings;->getMaxRealUsers()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const v5, 0x7f0c0d87

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v4}, Lcom/android/exsettings/users/UserSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 704
    .end local v11    # "moreUsers":Z
    :cond_18
    :goto_a
    return-void

    .line 833
    .restart local v11    # "moreUsers":Z
    :cond_19
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/exsettings/users/UserSettings;->mAddUser:Landroid/preference/Preference;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_a
.end method


# virtual methods
.method public getHelpResource()I
    .locals 1

    .prologue
    .line 1014
    const v0, 0x7f0c0de7

    return v0
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 183
    const/16 v0, 0x60

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 363
    invoke-super {p0, p1, p2, p3}, Lcom/android/exsettings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 365
    const/16 v0, 0xa

    if-ne p1, v0, :cond_1

    .line 366
    if-eqz p2, :cond_0

    invoke-direct {p0}, Lcom/android/exsettings/users/UserSettings;->hasLockscreenSecurity()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 367
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/exsettings/users/UserSettings;->addUserNow(I)V

    .line 362
    :cond_0
    :goto_0
    return-void

    .line 370
    :cond_1
    iget-object v0, p0, Lcom/android/exsettings/users/UserSettings;->mEditUserInfoController:Lcom/android/exsettings/users/EditUserInfoController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/exsettings/users/EditUserInfoController;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 977
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/android/exsettings/users/UserPreference;

    if-eqz v1, :cond_0

    .line 978
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/exsettings/users/UserPreference;

    invoke-virtual {v1}, Lcom/android/exsettings/users/UserPreference;->getUserId()I

    move-result v0

    .line 979
    .local v0, "userId":I
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 976
    .end local v0    # "userId":I
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 981
    .restart local v0    # "userId":I
    :pswitch_1
    invoke-direct {p0, v0}, Lcom/android/exsettings/users/UserSettings;->onRemoveUserClicked(I)V

    goto :goto_0

    .line 984
    :pswitch_2
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/exsettings/users/UserSettings;->onManageUserClicked(IZ)V

    goto :goto_0

    .line 979
    nop

    :pswitch_data_0
    .packed-switch 0x7f1301ad
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v10, 0x0

    const/4 v2, 0x0

    .line 188
    invoke-super {p0, p1}, Lcom/android/exsettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 190
    if-eqz p1, :cond_2

    .line 191
    const-string/jumbo v0, "adding_user"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 192
    const-string/jumbo v0, "adding_user"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/exsettings/users/UserSettings;->mAddedUserId:I

    .line 194
    :cond_0
    const-string/jumbo v0, "removing_user"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 195
    const-string/jumbo v0, "removing_user"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/exsettings/users/UserSettings;->mRemovingUserId:I

    .line 197
    :cond_1
    iget-object v0, p0, Lcom/android/exsettings/users/UserSettings;->mEditUserInfoController:Lcom/android/exsettings/users/EditUserInfoController;

    invoke-virtual {v0, p1}, Lcom/android/exsettings/users/EditUserInfoController;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 199
    :cond_2
    invoke-virtual {p0}, Lcom/android/exsettings/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 200
    .local v1, "context":Landroid/content/Context;
    invoke-static {v1}, Lcom/android/exsettings/users/UserSettings$UserCapabilities;->create(Landroid/content/Context;)Lcom/android/exsettings/users/UserSettings$UserCapabilities;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/users/UserSettings;->mUserCaps:Lcom/android/exsettings/users/UserSettings$UserCapabilities;

    .line 201
    const-string/jumbo v0, "user"

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/exsettings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    .line 202
    iget-object v0, p0, Lcom/android/exsettings/users/UserSettings;->mUserCaps:Lcom/android/exsettings/users/UserSettings$UserCapabilities;

    iget-boolean v0, v0, Lcom/android/exsettings/users/UserSettings$UserCapabilities;->mEnabled:Z

    if-nez v0, :cond_3

    .line 203
    return-void

    .line 206
    :cond_3
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    .line 208
    .local v3, "myUserId":I
    const v0, 0x7f08006a

    invoke-virtual {p0, v0}, Lcom/android/exsettings/users/UserSettings;->addPreferencesFromResource(I)V

    .line 209
    const-string/jumbo v0, "user_list"

    invoke-virtual {p0, v0}, Lcom/android/exsettings/users/UserSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    iput-object v0, p0, Lcom/android/exsettings/users/UserSettings;->mUserListCategory:Landroid/preference/PreferenceGroup;

    .line 210
    new-instance v0, Lcom/android/exsettings/users/UserPreference;

    move-object v4, v2

    move-object v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/android/exsettings/users/UserPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    iput-object v0, p0, Lcom/android/exsettings/users/UserSettings;->mMePreference:Lcom/android/exsettings/users/UserPreference;

    .line 213
    iget-object v0, p0, Lcom/android/exsettings/users/UserSettings;->mMePreference:Lcom/android/exsettings/users/UserPreference;

    const-string/jumbo v4, "user_me"

    invoke-virtual {v0, v4}, Lcom/android/exsettings/users/UserPreference;->setKey(Ljava/lang/String;)V

    .line 214
    iget-object v0, p0, Lcom/android/exsettings/users/UserSettings;->mMePreference:Lcom/android/exsettings/users/UserPreference;

    invoke-virtual {v0, p0}, Lcom/android/exsettings/users/UserPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 215
    iget-object v0, p0, Lcom/android/exsettings/users/UserSettings;->mUserCaps:Lcom/android/exsettings/users/UserSettings$UserCapabilities;

    iget-boolean v0, v0, Lcom/android/exsettings/users/UserSettings$UserCapabilities;->mIsOwner:Z

    if-eqz v0, :cond_4

    .line 216
    iget-object v0, p0, Lcom/android/exsettings/users/UserSettings;->mMePreference:Lcom/android/exsettings/users/UserPreference;

    const v4, 0x7f0c0d83

    invoke-virtual {v0, v4}, Lcom/android/exsettings/users/UserPreference;->setSummary(I)V

    .line 218
    :cond_4
    const-string/jumbo v0, "user_add"

    invoke-virtual {p0, v0}, Lcom/android/exsettings/users/UserSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/users/UserSettings;->mAddUser:Landroid/preference/Preference;

    .line 220
    iget-object v0, p0, Lcom/android/exsettings/users/UserSettings;->mUserCaps:Lcom/android/exsettings/users/UserSettings$UserCapabilities;

    iget-boolean v0, v0, Lcom/android/exsettings/users/UserSettings$UserCapabilities;->mCanAddUser:Z

    if-eqz v0, :cond_5

    .line 221
    iget-object v0, p0, Lcom/android/exsettings/users/UserSettings;->mAddUser:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 223
    iget-object v0, p0, Lcom/android/exsettings/users/UserSettings;->mUserCaps:Lcom/android/exsettings/users/UserSettings$UserCapabilities;

    iget-boolean v0, v0, Lcom/android/exsettings/users/UserSettings$UserCapabilities;->mCanAddRestrictedProfile:Z

    if-nez v0, :cond_5

    .line 224
    iget-object v0, p0, Lcom/android/exsettings/users/UserSettings;->mAddUser:Landroid/preference/Preference;

    const v4, 0x7f0c0d7c

    invoke-virtual {v0, v4}, Landroid/preference/Preference;->setTitle(I)V

    .line 227
    :cond_5
    invoke-direct {p0}, Lcom/android/exsettings/users/UserSettings;->loadProfile()V

    .line 228
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/exsettings/users/UserSettings;->setHasOptionsMenu(Z)V

    .line 229
    new-instance v7, Landroid/content/IntentFilter;

    const-string/jumbo v0, "android.intent.action.USER_REMOVED"

    invoke-direct {v7, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 230
    .local v7, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v0, "android.intent.action.USER_INFO_CHANGED"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 231
    iget-object v5, p0, Lcom/android/exsettings/users/UserSettings;->mUserChangeReceiver:Landroid/content/BroadcastReceiver;

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 232
    iget-object v9, p0, Lcom/android/exsettings/users/UserSettings;->mHandler:Landroid/os/Handler;

    move-object v4, v1

    move-object v8, v2

    .line 231
    invoke-virtual/range {v4 .. v9}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 234
    invoke-virtual {p0}, Lcom/android/exsettings/users/UserSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "device_provisioned"

    invoke-static {v0, v2, v10}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_6

    .line 235
    invoke-virtual {p0}, Lcom/android/exsettings/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 236
    return-void

    .line 187
    :cond_6
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 23
    .param p1, "dialogId"    # I

    .prologue
    .line 487
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v17

    .line 488
    .local v17, "context":Landroid/content/Context;
    if-nez v17, :cond_0

    const/4 v5, 0x0

    return-object v5

    .line 489
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 627
    const/4 v5, 0x0

    return-object v5

    .line 492
    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/exsettings/users/UserSettings;->mRemovingUserId:I

    .line 493
    new-instance v8, Lcom/android/exsettings/users/UserSettings$5;

    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Lcom/android/exsettings/users/UserSettings$5;-><init>(Lcom/android/exsettings/users/UserSettings;)V

    .line 492
    invoke-static {v5, v7, v8}, Lcom/android/exsettings/users/UserDialogs;->createRemoveDialog(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;

    move-result-object v18

    .line 499
    .local v18, "dlg":Landroid/app/Dialog;
    return-object v18

    .line 502
    .end local v18    # "dlg":Landroid/app/Dialog;
    :pswitch_1
    new-instance v5, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, v17

    invoke-direct {v5, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 503
    const v7, 0x7f0c0d94

    .line 502
    invoke-virtual {v5, v7}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 504
    const v7, 0x104000a

    const/4 v8, 0x0

    .line 502
    invoke-virtual {v5, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    return-object v5

    .line 507
    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    .line 508
    const/4 v7, 0x0

    .line 507
    invoke-virtual {v5, v7}, Landroid/app/Activity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v21

    .line 510
    .local v21, "preferences":Landroid/content/SharedPreferences;
    const-string/jumbo v5, "key_add_user_long_message_displayed"

    const/4 v7, 0x0

    .line 509
    move-object/from16 v0, v21

    invoke-interface {v0, v5, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v19

    .line 511
    .local v19, "longMessageDisplayed":Z
    if-eqz v19, :cond_1

    .line 512
    const v20, 0x7f0c0d8e

    .line 514
    .local v20, "messageResId":I
    :goto_0
    const/4 v5, 0x2

    move/from16 v0, p1

    if-ne v0, v5, :cond_2

    .line 515
    const/16 v22, 0x1

    .line 516
    .local v22, "userType":I
    :goto_1
    new-instance v5, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, v17

    invoke-direct {v5, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 517
    const v7, 0x7f0c0d8c

    .line 516
    invoke-virtual {v5, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    move/from16 v0, v20

    invoke-virtual {v5, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 520
    new-instance v7, Lcom/android/exsettings/users/UserSettings$6;

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v19

    move-object/from16 v3, v21

    invoke-direct {v7, v0, v1, v2, v3}, Lcom/android/exsettings/users/UserSettings$6;-><init>(Lcom/android/exsettings/users/UserSettings;IZLandroid/content/SharedPreferences;)V

    .line 519
    const v8, 0x104000a

    .line 516
    invoke-virtual {v5, v8, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 529
    const/high16 v7, 0x1040000

    const/4 v8, 0x0

    .line 516
    invoke-virtual {v5, v7, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v18

    .line 531
    .restart local v18    # "dlg":Landroid/app/Dialog;
    return-object v18

    .line 513
    .end local v18    # "dlg":Landroid/app/Dialog;
    .end local v20    # "messageResId":I
    .end local v22    # "userType":I
    :cond_1
    const v20, 0x7f0c0d8d

    .restart local v20    # "messageResId":I
    goto :goto_0

    .line 515
    :cond_2
    const/16 v22, 0x2

    .restart local v22    # "userType":I
    goto :goto_1

    .line 534
    .end local v19    # "longMessageDisplayed":Z
    .end local v20    # "messageResId":I
    .end local v21    # "preferences":Landroid/content/SharedPreferences;
    .end local v22    # "userType":I
    :pswitch_3
    new-instance v5, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, v17

    invoke-direct {v5, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 535
    const v7, 0x7f0c0d8f

    .line 534
    invoke-virtual {v5, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 536
    const v7, 0x7f0c0d90

    .line 534
    invoke-virtual {v5, v7}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 538
    new-instance v7, Lcom/android/exsettings/users/UserSettings$7;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/android/exsettings/users/UserSettings$7;-><init>(Lcom/android/exsettings/users/UserSettings;)V

    .line 537
    const v8, 0x7f0c0d92

    .line 534
    invoke-virtual {v5, v8, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 543
    const v7, 0x7f0c0d93

    const/4 v8, 0x0

    .line 534
    invoke-virtual {v5, v7, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v18

    .line 545
    .restart local v18    # "dlg":Landroid/app/Dialog;
    return-object v18

    .line 548
    .end local v18    # "dlg":Landroid/app/Dialog;
    :pswitch_4
    new-instance v5, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, v17

    invoke-direct {v5, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 549
    const v7, 0x7f0c0d91

    .line 548
    invoke-virtual {v5, v7}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 551
    new-instance v7, Lcom/android/exsettings/users/UserSettings$8;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/android/exsettings/users/UserSettings$8;-><init>(Lcom/android/exsettings/users/UserSettings;)V

    .line 550
    const v8, 0x104000a

    .line 548
    invoke-virtual {v5, v8, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 556
    const/high16 v7, 0x1040000

    const/4 v8, 0x0

    .line 548
    invoke-virtual {v5, v7, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v18

    .line 558
    .restart local v18    # "dlg":Landroid/app/Dialog;
    return-object v18

    .line 561
    .end local v18    # "dlg":Landroid/app/Dialog;
    :pswitch_5
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 562
    .local v6, "data":Ljava/util/List;, "Ljava/util/List<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    .line 563
    .local v15, "addUserItem":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v5, "title"

    const v7, 0x7f0c0d8a

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/exsettings/users/UserSettings;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v15, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 564
    const-string/jumbo v5, "summary"

    const v7, 0x7f0c0d88

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/exsettings/users/UserSettings;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v15, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 565
    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    .line 566
    .local v14, "addProfileItem":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v5, "title"

    const v7, 0x7f0c0d8b

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/exsettings/users/UserSettings;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v14, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 567
    const-string/jumbo v5, "summary"

    const v7, 0x7f0c0d89

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/exsettings/users/UserSettings;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v14, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 568
    invoke-interface {v6, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 569
    invoke-interface {v6, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 570
    new-instance v16, Landroid/app/AlertDialog$Builder;

    invoke-direct/range {v16 .. v17}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 571
    .local v16, "builder":Landroid/app/AlertDialog$Builder;
    new-instance v4, Landroid/widget/SimpleAdapter;

    invoke-virtual/range {v16 .. v16}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 573
    const/4 v7, 0x2

    new-array v8, v7, [Ljava/lang/String;

    const-string/jumbo v7, "title"

    const/4 v9, 0x0

    aput-object v7, v8, v9

    const-string/jumbo v7, "summary"

    const/4 v9, 0x1

    aput-object v7, v8, v9

    .line 574
    const v7, 0x7f13000b

    const v9, 0x7f13006a

    filled-new-array {v7, v9}, [I

    move-result-object v9

    .line 572
    const v7, 0x7f04013c

    .line 571
    invoke-direct/range {v4 .. v9}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 575
    .local v4, "adapter":Landroid/widget/SimpleAdapter;
    const v5, 0x7f0c0d86

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 577
    new-instance v5, Lcom/android/exsettings/users/UserSettings$9;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/android/exsettings/users/UserSettings$9;-><init>(Lcom/android/exsettings/users/UserSettings;)V

    .line 576
    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 585
    invoke-virtual/range {v16 .. v16}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    return-object v5

    .line 588
    .end local v4    # "adapter":Landroid/widget/SimpleAdapter;
    .end local v6    # "data":Ljava/util/List;, "Ljava/util/List<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v14    # "addProfileItem":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v15    # "addUserItem":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v16    # "builder":Landroid/app/AlertDialog$Builder;
    :pswitch_6
    new-instance v5, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, v17

    invoke-direct {v5, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 589
    const v7, 0x7f0c0d7e

    .line 588
    invoke-virtual {v5, v7}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 591
    new-instance v7, Lcom/android/exsettings/users/UserSettings$10;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/android/exsettings/users/UserSettings$10;-><init>(Lcom/android/exsettings/users/UserSettings;)V

    .line 590
    const v8, 0x7f0c0d7f

    .line 588
    invoke-virtual {v5, v8, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 597
    const/high16 v7, 0x1040000

    const/4 v8, 0x0

    .line 588
    invoke-virtual {v5, v7, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v18

    .line 599
    .restart local v18    # "dlg":Landroid/app/Dialog;
    return-object v18

    .line 602
    .end local v18    # "dlg":Landroid/app/Dialog;
    :pswitch_7
    new-instance v5, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, v17

    invoke-direct {v5, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 603
    const v7, 0x7f0c0da6

    .line 602
    invoke-virtual {v5, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 604
    const v7, 0x7f0c0da7

    .line 602
    invoke-virtual {v5, v7}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 606
    new-instance v7, Lcom/android/exsettings/users/UserSettings$11;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/android/exsettings/users/UserSettings$11;-><init>(Lcom/android/exsettings/users/UserSettings;)V

    .line 605
    const v8, 0x7f0c0da8

    .line 602
    invoke-virtual {v5, v8, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 612
    const/high16 v7, 0x1040000

    const/4 v8, 0x0

    .line 602
    invoke-virtual {v5, v7, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v18

    .line 614
    .restart local v18    # "dlg":Landroid/app/Dialog;
    return-object v18

    .line 617
    .end local v18    # "dlg":Landroid/app/Dialog;
    :pswitch_8
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/exsettings/users/UserSettings;->mEditUserInfoController:Lcom/android/exsettings/users/EditUserInfoController;

    .line 619
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/exsettings/users/UserSettings;->mMePreference:Lcom/android/exsettings/users/UserPreference;

    invoke-virtual {v5}, Lcom/android/exsettings/users/UserPreference;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 620
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/exsettings/users/UserSettings;->mMePreference:Lcom/android/exsettings/users/UserPreference;

    invoke-virtual {v5}, Lcom/android/exsettings/users/UserPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v10

    .line 623
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v13

    .line 621
    const v11, 0x7f0c0613

    move-object/from16 v8, p0

    move-object/from16 v12, p0

    .line 617
    invoke-virtual/range {v7 .. v13}, Lcom/android/exsettings/users/EditUserInfoController;->createDialog(Landroid/app/Fragment;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;ILcom/android/exsettings/users/EditUserInfoController$OnContentChangedCallback;Landroid/os/UserHandle;)Landroid/app/Dialog;

    move-result-object v18

    .line 624
    .restart local v18    # "dlg":Landroid/app/Dialog;
    return-object v18

    .line 489
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_1
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 11
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 275
    const/4 v2, 0x0

    .line 276
    .local v2, "pos":I
    invoke-virtual {p0}, Lcom/android/exsettings/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const-string/jumbo v9, "user"

    invoke-virtual {v8, v9}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/UserManager;

    .line 277
    .local v5, "um":Landroid/os/UserManager;
    iget-object v8, p0, Lcom/android/exsettings/users/UserSettings;->mUserCaps:Lcom/android/exsettings/users/UserSettings$UserCapabilities;

    iget-boolean v8, v8, Lcom/android/exsettings/users/UserSettings$UserCapabilities;->mIsOwner:Z

    if-nez v8, :cond_0

    const-string/jumbo v8, "no_remove_user"

    invoke-virtual {v5, v8}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 283
    :cond_0
    :goto_0
    iget-object v8, p0, Lcom/android/exsettings/users/UserSettings;->mUserCaps:Lcom/android/exsettings/users/UserSettings$UserCapabilities;

    iget-boolean v8, v8, Lcom/android/exsettings/users/UserSettings$UserCapabilities;->mIsOwner:Z

    if-eqz v8, :cond_1

    const-string/jumbo v8, "no_add_user"

    invoke-virtual {v5, v8}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 290
    :cond_1
    :goto_1
    invoke-super {p0, p1, p2}, Lcom/android/exsettings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 274
    return-void

    .line 278
    :cond_2
    iget-object v8, p0, Lcom/android/exsettings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v8}, Landroid/os/UserManager;->getUserName()Ljava/lang/String;

    move-result-object v1

    .line 279
    .local v1, "nickname":Ljava/lang/String;
    const/4 v2, 0x1

    .line 280
    invoke-virtual {p0}, Lcom/android/exsettings/users/UserSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    new-array v9, v6, [Ljava/lang/Object;

    aput-object v1, v9, v7

    const v10, 0x7f0c0d96

    invoke-virtual {v8, v10, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 279
    invoke-interface {p1, v7, v6, v7, v8}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v4

    .line 281
    .local v4, "removeThisUser":Landroid/view/MenuItem;
    invoke-interface {v4, v7}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_0

    .line 284
    .end local v1    # "nickname":Ljava/lang/String;
    .end local v4    # "removeThisUser":Landroid/view/MenuItem;
    :cond_3
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "pos":I
    .local v3, "pos":I
    const/4 v8, 0x2

    .line 285
    const v9, 0x7f0c0d97

    .line 284
    invoke-interface {p1, v7, v8, v2, v9}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 286
    .local v0, "allowAddOnLockscreen":Landroid/view/MenuItem;
    invoke-interface {v0, v6}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    .line 287
    invoke-virtual {p0}, Lcom/android/exsettings/users/UserSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    .line 288
    const-string/jumbo v9, "add_users_when_locked"

    .line 287
    invoke-static {v8, v9, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-ne v8, v6, :cond_4

    :goto_2
    invoke-interface {v0, v6}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    move v2, v3

    .end local v3    # "pos":I
    .restart local v2    # "pos":I
    goto :goto_1

    .end local v2    # "pos":I
    .restart local v3    # "pos":I
    :cond_4
    move v6, v7

    goto :goto_2
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 252
    invoke-super {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;->onDestroy()V

    .line 254
    iget-object v0, p0, Lcom/android/exsettings/users/UserSettings;->mUserCaps:Lcom/android/exsettings/users/UserSettings$UserCapabilities;

    iget-boolean v0, v0, Lcom/android/exsettings/users/UserSettings$UserCapabilities;->mEnabled:Z

    if-nez v0, :cond_0

    return-void

    .line 256
    :cond_0
    invoke-virtual {p0}, Lcom/android/exsettings/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/exsettings/users/UserSettings;->mUserChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 251
    return-void
.end method

.method public onDialogShowing()V
    .locals 0

    .prologue
    .line 480
    invoke-super {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;->onDialogShowing()V

    .line 482
    invoke-virtual {p0, p0}, Lcom/android/exsettings/users/UserSettings;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 479
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 992
    iget-object v1, p0, Lcom/android/exsettings/users/UserSettings;->mUserLock:Ljava/lang/Object;

    monitor-enter v1

    .line 993
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/exsettings/users/UserSettings;->mAddingUser:Z

    .line 994
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/exsettings/users/UserSettings;->mRemovingUserId:I

    .line 995
    invoke-direct {p0}, Lcom/android/exsettings/users/UserSettings;->updateUserList()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 991
    return-void

    .line 992
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public onLabelChanged(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "label"    # Ljava/lang/CharSequence;

    .prologue
    .line 1024
    iget-object v0, p0, Lcom/android/exsettings/users/UserSettings;->mMePreference:Lcom/android/exsettings/users/UserPreference;

    invoke-virtual {v0, p1}, Lcom/android/exsettings/users/UserPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 1023
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 295
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    .line 296
    .local v1, "itemId":I
    if-ne v1, v4, :cond_0

    .line 297
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/exsettings/users/UserSettings;->onRemoveUserClicked(I)V

    .line 298
    return v4

    .line 299
    :cond_0
    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 300
    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v0

    .line 301
    .local v0, "isChecked":Z
    invoke-virtual {p0}, Lcom/android/exsettings/users/UserSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "add_users_when_locked"

    .line 302
    if-eqz v0, :cond_1

    move v2, v3

    .line 301
    :goto_0
    invoke-static {v5, v6, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 303
    if-eqz v0, :cond_2

    :goto_1
    invoke-interface {p1, v3}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 304
    return v4

    :cond_1
    move v2, v4

    .line 302
    goto :goto_0

    :cond_2
    move v3, v4

    .line 303
    goto :goto_1

    .line 306
    .end local v0    # "isChecked":Z
    :cond_3
    invoke-super {p0, p1}, Lcom/android/exsettings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    return v2
.end method

.method public onPhotoChanged(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "photo"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1019
    iget-object v0, p0, Lcom/android/exsettings/users/UserSettings;->mMePreference:Lcom/android/exsettings/users/UserPreference;

    invoke-virtual {v0, p1}, Lcom/android/exsettings/users/UserPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 1018
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    .line 1001
    iget-object v1, p0, Lcom/android/exsettings/users/UserSettings;->mNicknamePreference:Lcom/android/exsettings/SelectableEditTextPreference;

    if-ne p1, v1, :cond_1

    move-object v0, p2

    .line 1002
    check-cast v0, Ljava/lang/String;

    .line 1003
    .local v0, "value":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/exsettings/users/UserSettings;->mNicknamePreference:Lcom/android/exsettings/SelectableEditTextPreference;

    if-ne p1, v1, :cond_0

    if-eqz v0, :cond_0

    .line 1004
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 1005
    invoke-direct {p0, v0}, Lcom/android/exsettings/users/UserSettings;->setUserName(Ljava/lang/String;)V

    .line 1007
    :cond_0
    const/4 v1, 0x1

    return v1

    .line 1009
    .end local v0    # "value":Ljava/lang/String;
    :cond_1
    return v2
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 8
    .param p1, "pref"    # Landroid/preference/Preference;

    .prologue
    const/4 v3, 0x1

    const/4 v7, 0x0

    .line 906
    iget-object v2, p0, Lcom/android/exsettings/users/UserSettings;->mMePreference:Lcom/android/exsettings/users/UserPreference;

    if-ne p1, v2, :cond_3

    .line 907
    iget-object v2, p0, Lcom/android/exsettings/users/UserSettings;->mUserCaps:Lcom/android/exsettings/users/UserSettings$UserCapabilities;

    iget-boolean v2, v2, Lcom/android/exsettings/users/UserSettings$UserCapabilities;->mIsGuest:Z

    if-eqz v2, :cond_0

    .line 908
    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Lcom/android/exsettings/users/UserSettings;->showDialog(I)V

    .line 909
    return v3

    .line 912
    :cond_0
    iget-object v2, p0, Lcom/android/exsettings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v2}, Landroid/os/UserManager;->isLinkedUser()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 913
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-direct {p0, v2, v7}, Lcom/android/exsettings/users/UserSettings;->onManageUserClicked(IZ)V

    .line 940
    .end local p1    # "pref":Landroid/preference/Preference;
    :cond_1
    :goto_0
    return v7

    .line 915
    .restart local p1    # "pref":Landroid/preference/Preference;
    :cond_2
    const/16 v2, 0x9

    invoke-virtual {p0, v2}, Lcom/android/exsettings/users/UserSettings;->showDialog(I)V

    goto :goto_0

    .line 917
    :cond_3
    instance-of v2, p1, Lcom/android/exsettings/users/UserPreference;

    if-eqz v2, :cond_6

    .line 918
    check-cast p1, Lcom/android/exsettings/users/UserPreference;

    .end local p1    # "pref":Landroid/preference/Preference;
    invoke-virtual {p1}, Lcom/android/exsettings/users/UserPreference;->getUserId()I

    move-result v1

    .line 919
    .local v1, "userId":I
    const/16 v2, -0xb

    if-ne v1, v2, :cond_4

    .line 920
    invoke-direct {p0}, Lcom/android/exsettings/users/UserSettings;->createAndSwitchToGuestUser()V

    goto :goto_0

    .line 923
    :cond_4
    iget-object v2, p0, Lcom/android/exsettings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v2, v1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 924
    .local v0, "user":Landroid/content/pm/UserInfo;
    invoke-direct {p0, v0}, Lcom/android/exsettings/users/UserSettings;->isInitialized(Landroid/content/pm/UserInfo;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 925
    iget-object v2, p0, Lcom/android/exsettings/users/UserSettings;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/exsettings/users/UserSettings;->mHandler:Landroid/os/Handler;

    .line 926
    iget v4, v0, Landroid/content/pm/UserInfo;->id:I

    iget v5, v0, Landroid/content/pm/UserInfo;->serialNumber:I

    const/4 v6, 0x2

    .line 925
    invoke-virtual {v3, v6, v4, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 928
    :cond_5
    invoke-direct {p0, v1}, Lcom/android/exsettings/users/UserSettings;->switchUserNow(I)V

    goto :goto_0

    .line 931
    .end local v0    # "user":Landroid/content/pm/UserInfo;
    .end local v1    # "userId":I
    .restart local p1    # "pref":Landroid/preference/Preference;
    :cond_6
    iget-object v2, p0, Lcom/android/exsettings/users/UserSettings;->mAddUser:Landroid/preference/Preference;

    if-ne p1, v2, :cond_1

    .line 934
    iget-object v2, p0, Lcom/android/exsettings/users/UserSettings;->mUserCaps:Lcom/android/exsettings/users/UserSettings$UserCapabilities;

    iget-boolean v2, v2, Lcom/android/exsettings/users/UserSettings$UserCapabilities;->mCanAddRestrictedProfile:Z

    if-eqz v2, :cond_7

    .line 935
    const/4 v2, 0x6

    invoke-virtual {p0, v2}, Lcom/android/exsettings/users/UserSettings;->showDialog(I)V

    goto :goto_0

    .line 937
    :cond_7
    invoke-direct {p0, v3}, Lcom/android/exsettings/users/UserSettings;->onAddUserClicked(I)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 242
    invoke-super {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;->onResume()V

    .line 244
    iget-object v0, p0, Lcom/android/exsettings/users/UserSettings;->mUserCaps:Lcom/android/exsettings/users/UserSettings$UserCapabilities;

    iget-boolean v0, v0, Lcom/android/exsettings/users/UserSettings$UserCapabilities;->mEnabled:Z

    if-nez v0, :cond_0

    return-void

    .line 246
    :cond_0
    invoke-direct {p0}, Lcom/android/exsettings/users/UserSettings;->loadProfile()V

    .line 247
    invoke-direct {p0}, Lcom/android/exsettings/users/UserSettings;->updateUserList()V

    .line 241
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 261
    invoke-super {p0, p1}, Lcom/android/exsettings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 262
    iget-object v0, p0, Lcom/android/exsettings/users/UserSettings;->mEditUserInfoController:Lcom/android/exsettings/users/EditUserInfoController;

    invoke-virtual {v0, p1}, Lcom/android/exsettings/users/EditUserInfoController;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 263
    const-string/jumbo v0, "adding_user"

    iget v1, p0, Lcom/android/exsettings/users/UserSettings;->mAddedUserId:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 264
    const-string/jumbo v0, "removing_user"

    iget v1, p0, Lcom/android/exsettings/users/UserSettings;->mRemovingUserId:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 260
    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I

    .prologue
    .line 269
    iget-object v0, p0, Lcom/android/exsettings/users/UserSettings;->mEditUserInfoController:Lcom/android/exsettings/users/EditUserInfoController;

    invoke-virtual {v0}, Lcom/android/exsettings/users/EditUserInfoController;->startingActivityForResult()V

    .line 270
    invoke-super {p0, p1, p2}, Lcom/android/exsettings/SettingsPreferenceFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 268
    return-void
.end method
