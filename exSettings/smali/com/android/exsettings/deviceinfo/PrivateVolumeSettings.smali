.class public Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;
.super Lcom/android/exsettings/SettingsPreferenceFragment;
.source "PrivateVolumeSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings$RenameFragment;,
        Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings$OtherInfoFragment;,
        Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings$UserInfoFragment;,
        Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings$ConfirmClearCacheFragment;,
        Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings$ClearCacheObserver;,
        Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings$1;,
        Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings$2;
    }
.end annotation


# static fields
.field private static final ITEMS_NO_SHOW_SHARED:[I

.field private static final ITEMS_SHOW_SHARED:[I


# instance fields
.field private mCurrentUser:Landroid/content/pm/UserInfo;

.field private mExplore:Landroid/preference/Preference;

.field private mHeaderPoolIndex:I

.field private mHeaderPreferencePool:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceCategory;",
            ">;"
        }
    .end annotation
.end field

.field private mItemPoolIndex:I

.field private mItemPreferencePool:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/exsettings/deviceinfo/StorageItemPreference;",
            ">;"
        }
    .end annotation
.end field

.field private mMeasure:Lcom/android/exsettingslib/deviceinfo/StorageMeasurement;

.field private final mReceiver:Lcom/android/exsettingslib/deviceinfo/StorageMeasurement$MeasurementReceiver;

.field private mSharedVolume:Landroid/os/storage/VolumeInfo;

.field private final mStorageListener:Landroid/os/storage/StorageEventListener;

.field private mStorageManager:Landroid/os/storage/StorageManager;

.field private mSummary:Lcom/android/exsettings/deviceinfo/StorageSummaryPreference;

.field private mUserManager:Landroid/os/UserManager;

.field private mVolume:Landroid/os/storage/VolumeInfo;

.field private mVolumeId:Ljava/lang/String;


# direct methods
.method static synthetic -get0(Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;)Landroid/os/storage/StorageManager;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;)Landroid/os/storage/VolumeInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->mVolumeId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;Landroid/os/storage/VolumeInfo;)Landroid/os/storage/VolumeInfo;
    .locals 0

    iput-object p1, p0, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;Lcom/android/exsettingslib/deviceinfo/StorageMeasurement$MeasurementDetails;)V
    .locals 0
    .param p1, "details"    # Lcom/android/exsettingslib/deviceinfo/StorageMeasurement$MeasurementDetails;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->updateDetails(Lcom/android/exsettingslib/deviceinfo/StorageMeasurement$MeasurementDetails;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 5

    .prologue
    const v4, 0x7f0c08ac

    .line 89
    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 90
    const/4 v1, 0x0

    aput v4, v0, v1

    .line 89
    sput-object v0, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->ITEMS_NO_SHOW_SHARED:[I

    .line 95
    const v0, 0x7f0c08ad

    .line 96
    const v1, 0x7f0c08ae

    .line 97
    const v2, 0x7f0c08af

    .line 98
    const v3, 0x7f0c08b1

    .line 93
    filled-new-array {v4, v0, v1, v2, v3}, [I

    move-result-object v0

    sput-object v0, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->ITEMS_SHOW_SHARED:[I

    .line 78
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;-><init>()V

    .line 113
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->mItemPreferencePool:Ljava/util/List;

    .line 114
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->mHeaderPreferencePool:Ljava/util/List;

    .line 465
    new-instance v0, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings$1;

    invoke-direct {v0, p0}, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings$1;-><init>(Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;)V

    iput-object v0, p0, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->mReceiver:Lcom/android/exsettingslib/deviceinfo/StorageMeasurement$MeasurementReceiver;

    .line 538
    new-instance v0, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings$2;

    invoke-direct {v0, p0}, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings$2;-><init>(Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;)V

    iput-object v0, p0, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->mStorageListener:Landroid/os/storage/StorageEventListener;

    .line 78
    return-void
.end method

.method private addCategory(Landroid/preference/PreferenceGroup;Ljava/lang/CharSequence;)Landroid/preference/PreferenceCategory;
    .locals 4
    .param p1, "group"    # Landroid/preference/PreferenceGroup;
    .param p2, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 242
    iget v1, p0, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->mHeaderPoolIndex:I

    iget-object v2, p0, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->mHeaderPreferencePool:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 243
    iget-object v1, p0, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->mHeaderPreferencePool:Ljava/util/List;

    iget v2, p0, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->mHeaderPoolIndex:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 249
    .local v0, "category":Landroid/preference/PreferenceCategory;
    :goto_0
    invoke-virtual {v0, p2}, Landroid/preference/PreferenceCategory;->setTitle(Ljava/lang/CharSequence;)V

    .line 250
    invoke-virtual {v0}, Landroid/preference/PreferenceCategory;->removeAll()V

    .line 251
    invoke-direct {p0, p1, v0}, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->addPreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    .line 252
    iget v1, p0, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->mHeaderPoolIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->mHeaderPoolIndex:I

    .line 253
    return-object v0

    .line 245
    .end local v0    # "category":Landroid/preference/PreferenceCategory;
    :cond_0
    new-instance v0, Landroid/preference/PreferenceCategory;

    invoke-virtual {p0}, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    .line 246
    const v3, 0x101008c

    .line 245
    invoke-direct {v0, v1, v2, v3}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 247
    .restart local v0    # "category":Landroid/preference/PreferenceCategory;
    iget-object v1, p0, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->mHeaderPreferencePool:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private addDetailItems(Landroid/preference/PreferenceGroup;ZI)V
    .locals 4
    .param p1, "category"    # Landroid/preference/PreferenceGroup;
    .param p2, "showShared"    # Z
    .param p3, "userId"    # I

    .prologue
    .line 257
    if-eqz p2, :cond_0

    sget-object v1, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->ITEMS_SHOW_SHARED:[I

    .line 258
    .local v1, "itemsToAdd":[I
    :goto_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 259
    aget v2, v1, v0

    const/4 v3, 0x0

    invoke-direct {p0, p1, v2, v3, p3}, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->addItem(Landroid/preference/PreferenceGroup;ILjava/lang/CharSequence;I)V

    .line 258
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 257
    .end local v0    # "i":I
    .end local v1    # "itemsToAdd":[I
    :cond_0
    sget-object v1, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->ITEMS_NO_SHOW_SHARED:[I

    .restart local v1    # "itemsToAdd":[I
    goto :goto_0

    .line 256
    .restart local v0    # "i":I
    :cond_1
    return-void
.end method

.method private addItem(Landroid/preference/PreferenceGroup;ILjava/lang/CharSequence;I)V
    .locals 3
    .param p1, "group"    # Landroid/preference/PreferenceGroup;
    .param p2, "titleRes"    # I
    .param p3, "title"    # Ljava/lang/CharSequence;
    .param p4, "userId"    # I

    .prologue
    .line 265
    iget v1, p0, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->mItemPoolIndex:I

    iget-object v2, p0, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->mItemPreferencePool:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 266
    iget-object v1, p0, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->mItemPreferencePool:Ljava/util/List;

    iget v2, p0, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->mItemPoolIndex:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/exsettings/deviceinfo/StorageItemPreference;

    .line 271
    .local v0, "item":Lcom/android/exsettings/deviceinfo/StorageItemPreference;
    :goto_0
    if-eqz p3, :cond_1

    .line 272
    invoke-virtual {v0, p3}, Lcom/android/exsettings/deviceinfo/StorageItemPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 276
    :goto_1
    const v1, 0x7f0c0869

    invoke-virtual {v0, v1}, Lcom/android/exsettings/deviceinfo/StorageItemPreference;->setSummary(I)V

    .line 277
    iput p4, v0, Lcom/android/exsettings/deviceinfo/StorageItemPreference;->userHandle:I

    .line 278
    invoke-direct {p0, p1, v0}, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->addPreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    .line 279
    iget v1, p0, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->mItemPoolIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->mItemPoolIndex:I

    .line 263
    return-void

    .line 268
    .end local v0    # "item":Lcom/android/exsettings/deviceinfo/StorageItemPreference;
    :cond_0
    invoke-direct {p0}, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->buildItem()Lcom/android/exsettings/deviceinfo/StorageItemPreference;

    move-result-object v0

    .line 269
    .restart local v0    # "item":Lcom/android/exsettings/deviceinfo/StorageItemPreference;
    iget-object v1, p0, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->mItemPreferencePool:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 274
    :cond_1
    invoke-virtual {v0, p2}, Lcom/android/exsettings/deviceinfo/StorageItemPreference;->setTitle(I)V

    goto :goto_1
.end method

.method private addPreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V
    .locals 1
    .param p1, "group"    # Landroid/preference/PreferenceGroup;
    .param p2, "pref"    # Landroid/preference/Preference;

    .prologue
    .line 236
    const v0, 0x7fffffff

    invoke-virtual {p2, v0}, Landroid/preference/Preference;->setOrder(I)V

    .line 237
    invoke-virtual {p1, p2}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 235
    return-void
.end method

.method private buildAction(I)Landroid/preference/Preference;
    .locals 2
    .param p1, "titleRes"    # I

    .prologue
    .line 288
    new-instance v0, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 289
    .local v0, "pref":Landroid/preference/Preference;
    invoke-virtual {v0, p1}, Landroid/preference/Preference;->setTitle(I)V

    .line 290
    return-object v0
.end method

.method private buildItem()Lcom/android/exsettings/deviceinfo/StorageItemPreference;
    .locals 2

    .prologue
    .line 283
    new-instance v0, Lcom/android/exsettings/deviceinfo/StorageItemPreference;

    invoke-virtual {p0}, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/exsettings/deviceinfo/StorageItemPreference;-><init>(Landroid/content/Context;)V

    .line 284
    .local v0, "item":Lcom/android/exsettings/deviceinfo/StorageItemPreference;
    return-object v0
.end method

.method private isProfileOf(Landroid/content/pm/UserInfo;Landroid/content/pm/UserInfo;)Z
    .locals 4
    .param p1, "user"    # Landroid/content/pm/UserInfo;
    .param p2, "profile"    # Landroid/content/pm/UserInfo;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 518
    iget v2, p1, Landroid/content/pm/UserInfo;->id:I

    iget v3, p2, Landroid/content/pm/UserInfo;->id:I

    if-eq v2, v3, :cond_0

    .line 519
    iget v2, p1, Landroid/content/pm/UserInfo;->profileGroupId:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    .line 520
    iget v2, p1, Landroid/content/pm/UserInfo;->profileGroupId:I

    iget v3, p2, Landroid/content/pm/UserInfo;->profileGroupId:I

    if-ne v2, v3, :cond_1

    .line 518
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 520
    goto :goto_0

    :cond_2
    move v0, v1

    .line 519
    goto :goto_0
.end method

.method private isVolumeValid()Z
    .locals 2

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 122
    iget-object v0, p0, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->isMountedReadable()Z

    move-result v0

    .line 121
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static varargs totalValues(Lcom/android/exsettingslib/deviceinfo/StorageMeasurement$MeasurementDetails;I[Ljava/lang/String;)J
    .locals 10
    .param p0, "details"    # Lcom/android/exsettingslib/deviceinfo/StorageMeasurement$MeasurementDetails;
    .param p1, "userId"    # I
    .param p2, "keys"    # [Ljava/lang/String;

    .prologue
    .line 524
    const-wide/16 v2, 0x0

    .line 525
    .local v2, "total":J
    iget-object v4, p0, Lcom/android/exsettingslib/deviceinfo/StorageMeasurement$MeasurementDetails;->mediaSize:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 526
    .local v1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    if-eqz v1, :cond_1

    .line 527
    const/4 v4, 0x0

    array-length v6, p2

    move v5, v4

    :goto_0
    if-ge v5, v6, :cond_2

    aget-object v0, p2, v5

    .line 528
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 529
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    add-long/2addr v2, v8

    .line 527
    :cond_0
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto :goto_0

    .line 533
    .end local v0    # "key":Ljava/lang/String;
    :cond_1
    const-string/jumbo v4, "StorageSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "MeasurementDetails mediaSize array does not have key for user "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    :cond_2
    return-wide v2
.end method

.method private updateDetails(Lcom/android/exsettingslib/deviceinfo/StorageMeasurement$MeasurementDetails;)V
    .locals 17
    .param p1, "details"    # Lcom/android/exsettingslib/deviceinfo/StorageMeasurement$MeasurementDetails;

    .prologue
    .line 473
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->mItemPoolIndex:I

    if-ge v4, v14, :cond_0

    .line 474
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->mItemPreferencePool:Ljava/util/List;

    invoke-interface {v14, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/exsettings/deviceinfo/StorageItemPreference;

    .line 475
    .local v5, "item":Lcom/android/exsettings/deviceinfo/StorageItemPreference;
    iget v9, v5, Lcom/android/exsettings/deviceinfo/StorageItemPreference;->userHandle:I

    .line 476
    .local v9, "userId":I
    invoke-virtual {v5}, Lcom/android/exsettings/deviceinfo/StorageItemPreference;->getTitleRes()I

    move-result v8

    .line 477
    .local v8, "itemTitleId":I
    sparse-switch v8, :sswitch_data_0

    .line 473
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 479
    :sswitch_0
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/exsettingslib/deviceinfo/StorageMeasurement$MeasurementDetails;->appsSize:Landroid/util/SparseLongArray;

    invoke-virtual {v14, v9}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v14

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v14, v15}, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->updatePreference(Lcom/android/exsettings/deviceinfo/StorageItemPreference;J)V

    goto :goto_1

    .line 482
    :sswitch_1
    const/4 v14, 0x3

    new-array v14, v14, [Ljava/lang/String;

    .line 483
    sget-object v15, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    const/16 v16, 0x0

    aput-object v15, v14, v16

    sget-object v15, Landroid/os/Environment;->DIRECTORY_MOVIES:Ljava/lang/String;

    const/16 v16, 0x1

    aput-object v15, v14, v16

    .line 484
    sget-object v15, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    const/16 v16, 0x2

    aput-object v15, v14, v16

    .line 482
    move-object/from16 v0, p1

    invoke-static {v0, v9, v14}, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->totalValues(Lcom/android/exsettingslib/deviceinfo/StorageMeasurement$MeasurementDetails;I[Ljava/lang/String;)J

    move-result-wide v6

    .line 485
    .local v6, "imagesSize":J
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v6, v7}, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->updatePreference(Lcom/android/exsettings/deviceinfo/StorageItemPreference;J)V

    goto :goto_1

    .line 488
    .end local v6    # "imagesSize":J
    :sswitch_2
    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/String;

    .line 489
    sget-object v15, Landroid/os/Environment;->DIRECTORY_MOVIES:Ljava/lang/String;

    const/16 v16, 0x0

    aput-object v15, v14, v16

    .line 488
    move-object/from16 v0, p1

    invoke-static {v0, v9, v14}, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->totalValues(Lcom/android/exsettingslib/deviceinfo/StorageMeasurement$MeasurementDetails;I[Ljava/lang/String;)J

    move-result-wide v12

    .line 490
    .local v12, "videosSize":J
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v12, v13}, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->updatePreference(Lcom/android/exsettings/deviceinfo/StorageItemPreference;J)V

    goto :goto_1

    .line 493
    .end local v12    # "videosSize":J
    :sswitch_3
    const/4 v14, 0x5

    new-array v14, v14, [Ljava/lang/String;

    .line 494
    sget-object v15, Landroid/os/Environment;->DIRECTORY_MUSIC:Ljava/lang/String;

    const/16 v16, 0x0

    aput-object v15, v14, v16

    .line 495
    sget-object v15, Landroid/os/Environment;->DIRECTORY_ALARMS:Ljava/lang/String;

    const/16 v16, 0x1

    aput-object v15, v14, v16

    sget-object v15, Landroid/os/Environment;->DIRECTORY_NOTIFICATIONS:Ljava/lang/String;

    const/16 v16, 0x2

    aput-object v15, v14, v16

    .line 496
    sget-object v15, Landroid/os/Environment;->DIRECTORY_RINGTONES:Ljava/lang/String;

    const/16 v16, 0x3

    aput-object v15, v14, v16

    sget-object v15, Landroid/os/Environment;->DIRECTORY_PODCASTS:Ljava/lang/String;

    const/16 v16, 0x4

    aput-object v15, v14, v16

    .line 493
    move-object/from16 v0, p1

    invoke-static {v0, v9, v14}, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->totalValues(Lcom/android/exsettingslib/deviceinfo/StorageMeasurement$MeasurementDetails;I[Ljava/lang/String;)J

    move-result-wide v2

    .line 497
    .local v2, "audioSize":J
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v2, v3}, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->updatePreference(Lcom/android/exsettings/deviceinfo/StorageItemPreference;J)V

    goto :goto_1

    .line 500
    .end local v2    # "audioSize":J
    :sswitch_4
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/exsettingslib/deviceinfo/StorageMeasurement$MeasurementDetails;->miscSize:Landroid/util/SparseLongArray;

    invoke-virtual {v14, v9}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v14

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v14, v15}, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->updatePreference(Lcom/android/exsettings/deviceinfo/StorageItemPreference;J)V

    goto/16 :goto_1

    .line 503
    :sswitch_5
    move-object/from16 v0, p1

    iget-wide v14, v0, Lcom/android/exsettingslib/deviceinfo/StorageMeasurement$MeasurementDetails;->cacheSize:J

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v14, v15}, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->updatePreference(Lcom/android/exsettings/deviceinfo/StorageItemPreference;J)V

    goto/16 :goto_1

    .line 506
    :sswitch_6
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/exsettingslib/deviceinfo/StorageMeasurement$MeasurementDetails;->usersSize:Landroid/util/SparseLongArray;

    invoke-virtual {v14, v9}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v10

    .line 507
    .local v10, "userSize":J
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v10, v11}, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->updatePreference(Lcom/android/exsettings/deviceinfo/StorageItemPreference;J)V

    goto/16 :goto_1

    .line 472
    .end local v5    # "item":Lcom/android/exsettings/deviceinfo/StorageItemPreference;
    .end local v8    # "itemTitleId":I
    .end local v9    # "userId":I
    .end local v10    # "userSize":J
    :cond_0
    return-void

    .line 477
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_6
        0x7f0c08ac -> :sswitch_0
        0x7f0c08ad -> :sswitch_1
        0x7f0c08ae -> :sswitch_2
        0x7f0c08af -> :sswitch_3
        0x7f0c08b0 -> :sswitch_5
        0x7f0c08b1 -> :sswitch_4
    .end sparse-switch
.end method

.method private updatePreference(Lcom/android/exsettings/deviceinfo/StorageItemPreference;J)V
    .locals 2
    .param p1, "pref"    # Lcom/android/exsettings/deviceinfo/StorageItemPreference;
    .param p2, "size"    # J

    .prologue
    .line 514
    invoke-virtual {p0}, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p2, p3}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/exsettings/deviceinfo/StorageItemPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 513
    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 127
    const/16 v0, 0x2a

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1

    .line 132
    invoke-super {p0, p1}, Lcom/android/exsettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 134
    invoke-virtual {p0}, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 136
    .local v0, "context":Landroid/content/Context;
    const-class v1, Landroid/os/UserManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    iput-object v1, p0, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->mUserManager:Landroid/os/UserManager;

    .line 137
    const-class v1, Landroid/os/storage/StorageManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/StorageManager;

    iput-object v1, p0, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 139
    invoke-virtual {p0}, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "android.os.storage.extra.VOLUME_ID"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->mVolumeId:Ljava/lang/String;

    .line 140
    iget-object v1, p0, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v2, p0, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->mVolumeId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/os/storage/StorageManager;->findVolumeById(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    .line 143
    iget-object v1, p0, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v2, p0, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v1, v2}, Landroid/os/storage/StorageManager;->findEmulatedForPrivate(Landroid/os/storage/VolumeInfo;)Landroid/os/storage/VolumeInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->mSharedVolume:Landroid/os/storage/VolumeInfo;

    .line 145
    new-instance v1, Lcom/android/exsettingslib/deviceinfo/StorageMeasurement;

    iget-object v2, p0, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    iget-object v3, p0, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->mSharedVolume:Landroid/os/storage/VolumeInfo;

    invoke-direct {v1, v0, v2, v3}, Lcom/android/exsettingslib/deviceinfo/StorageMeasurement;-><init>(Landroid/content/Context;Landroid/os/storage/VolumeInfo;Landroid/os/storage/VolumeInfo;)V

    iput-object v1, p0, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->mMeasure:Lcom/android/exsettingslib/deviceinfo/StorageMeasurement;

    .line 146
    iget-object v1, p0, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->mMeasure:Lcom/android/exsettingslib/deviceinfo/StorageMeasurement;

    iget-object v2, p0, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->mReceiver:Lcom/android/exsettingslib/deviceinfo/StorageMeasurement$MeasurementReceiver;

    invoke-virtual {v1, v2}, Lcom/android/exsettingslib/deviceinfo/StorageMeasurement;->setReceiver(Lcom/android/exsettingslib/deviceinfo/StorageMeasurement$MeasurementReceiver;)V

    .line 148
    invoke-direct {p0}, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->isVolumeValid()Z

    move-result v1

    if-nez v1, :cond_0

    .line 149
    invoke-virtual {p0}, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 150
    return-void

    .line 153
    :cond_0
    const v1, 0x7f080024

    invoke-virtual {p0, v1}, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->addPreferencesFromResource(I)V

    .line 154
    invoke-virtual {p0}, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceScreen;->setOrderingAsAdded(Z)V

    .line 156
    new-instance v1, Lcom/android/exsettings/deviceinfo/StorageSummaryPreference;

    invoke-direct {v1, v0}, Lcom/android/exsettings/deviceinfo/StorageSummaryPreference;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->mSummary:Lcom/android/exsettings/deviceinfo/StorageSummaryPreference;

    .line 157
    iget-object v1, p0, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->mUserManager:Landroid/os/UserManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->mCurrentUser:Landroid/content/pm/UserInfo;

    .line 159
    const v1, 0x7f0c088d

    invoke-direct {p0, v1}, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->buildAction(I)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->mExplore:Landroid/preference/Preference;

    .line 161
    invoke-virtual {p0, v4}, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->setHasOptionsMenu(Z)V

    .line 131
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 324
    invoke-super {p0, p1, p2}, Lcom/android/exsettings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 325
    const v0, 0x7f14000a

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 323
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 316
    invoke-super {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;->onDestroy()V

    .line 317
    iget-object v0, p0, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->mMeasure:Lcom/android/exsettingslib/deviceinfo/StorageMeasurement;

    if-eqz v0, :cond_0

    .line 318
    iget-object v0, p0, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->mMeasure:Lcom/android/exsettingslib/deviceinfo/StorageMeasurement;

    invoke-virtual {v0}, Lcom/android/exsettingslib/deviceinfo/StorageMeasurement;->onDestroy()V

    .line 315
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 9
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v4, 0x0

    const/4 v8, 0x1

    .line 364
    invoke-virtual {p0}, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    .line 365
    .local v6, "context":Landroid/content/Context;
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 366
    .local v5, "args":Landroid/os/Bundle;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 389
    invoke-super {p0, p1}, Lcom/android/exsettings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 368
    :pswitch_0
    iget-object v0, p0, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-static {p0, v0}, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings$RenameFragment;->show(Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;Landroid/os/storage/VolumeInfo;)V

    .line 369
    return v8

    .line 371
    :pswitch_1
    new-instance v0, Lcom/android/exsettings/deviceinfo/StorageSettings$MountTask;

    iget-object v1, p0, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-direct {v0, v6, v1}, Lcom/android/exsettings/deviceinfo/StorageSettings$MountTask;-><init>(Landroid/content/Context;Landroid/os/storage/VolumeInfo;)V

    new-array v1, v4, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/exsettings/deviceinfo/StorageSettings$MountTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 372
    return v8

    .line 374
    :pswitch_2
    const-string/jumbo v0, "android.os.storage.extra.VOLUME_ID"

    iget-object v1, p0, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v1}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    const-class v0, Lcom/android/exsettings/deviceinfo/PrivateVolumeUnmount;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    .line 376
    const v3, 0x7f0c0886

    move-object v0, p0

    move-object v1, p0

    .line 375
    invoke-virtual/range {v0 .. v5}, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    .line 377
    return v8

    .line 379
    :pswitch_3
    const-string/jumbo v0, "android.os.storage.extra.VOLUME_ID"

    iget-object v1, p0, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v1}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    const-class v0, Lcom/android/exsettings/deviceinfo/PrivateVolumeFormat;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    .line 381
    const v3, 0x7f0c0887

    move-object v0, p0

    move-object v1, p0

    .line 380
    invoke-virtual/range {v0 .. v5}, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    .line 382
    return v8

    .line 384
    :pswitch_4
    new-instance v7, Landroid/content/Intent;

    const-class v0, Lcom/android/exsettings/deviceinfo/StorageWizardMigrateConfirm;

    invoke-direct {v7, v6, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 385
    .local v7, "intent":Landroid/content/Intent;
    const-string/jumbo v0, "android.os.storage.extra.VOLUME_ID"

    iget-object v1, p0, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v1}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 386
    invoke-virtual {p0, v7}, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->startActivity(Landroid/content/Intent;)V

    .line 387
    return v8

    .line 366
    nop

    :pswitch_data_0
    .packed-switch 0x7f130337
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 310
    invoke-super {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;->onPause()V

    .line 311
    iget-object v0, p0, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->unregisterListener(Landroid/os/storage/StorageEventListener;)V

    .line 309
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 12
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "pref"    # Landroid/preference/Preference;

    .prologue
    const/4 v3, 0x0

    const/4 v11, 0x1

    .line 396
    instance-of v0, p2, Lcom/android/exsettings/deviceinfo/StorageItemPreference;

    if-eqz v0, :cond_0

    move-object v0, p2

    .line 397
    check-cast v0, Lcom/android/exsettings/deviceinfo/StorageItemPreference;

    iget v10, v0, Lcom/android/exsettings/deviceinfo/StorageItemPreference;->userHandle:I

    .line 398
    .local v10, "userId":I
    :goto_0
    invoke-virtual {p2}, Landroid/preference/Preference;->getTitleRes()I

    move-result v9

    .line 399
    .local v9, "itemTitleId":I
    const/4 v8, 0x0

    .line 400
    .local v8, "intent":Landroid/content/Intent;
    sparse-switch v9, :sswitch_data_0

    .line 450
    .end local v8    # "intent":Landroid/content/Intent;
    :goto_1
    if-eqz v8, :cond_2

    .line 452
    const/4 v0, -0x1

    if-ne v10, v0, :cond_1

    .line 453
    :try_start_0
    invoke-virtual {p0, v8}, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 460
    :goto_2
    return v11

    .line 397
    .end local v9    # "itemTitleId":I
    .end local v10    # "userId":I
    :cond_0
    const/4 v10, -0x1

    .restart local v10    # "userId":I
    goto :goto_0

    .line 402
    .restart local v8    # "intent":Landroid/content/Intent;
    .restart local v9    # "itemTitleId":I
    :sswitch_0
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 403
    .local v2, "args":Landroid/os/Bundle;
    const-string/jumbo v0, "classname"

    .line 404
    const-class v1, Lcom/android/exsettings/Settings$StorageUseActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 403
    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    const-string/jumbo v0, "volumeUuid"

    iget-object v1, p0, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v1}, Landroid/os/storage/VolumeInfo;->getFsUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    const-string/jumbo v0, "volumeName"

    iget-object v1, p0, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v1}, Landroid/os/storage/VolumeInfo;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    invoke-virtual {p0}, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 408
    const-class v1, Lcom/android/exsettings/applications/ManageApplications;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v4, 0x7f0c0f52

    .line 409
    const/4 v6, 0x0

    move-object v5, v3

    .line 407
    invoke-static/range {v0 .. v6}, Lcom/android/exsettings/Utils;->onBuildStartFragmentIntent(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;ILjava/lang/CharSequence;Z)Landroid/content/Intent;

    move-result-object v8

    .local v8, "intent":Landroid/content/Intent;
    goto :goto_1

    .line 413
    .end local v2    # "args":Landroid/os/Bundle;
    .local v8, "intent":Landroid/content/Intent;
    :sswitch_1
    new-instance v8, Landroid/content/Intent;

    .end local v8    # "intent":Landroid/content/Intent;
    const-string/jumbo v0, "android.provider.action.BROWSE_DOCUMENT_ROOT"

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 414
    .local v8, "intent":Landroid/content/Intent;
    const-string/jumbo v0, "com.android.providers.media.documents"

    const-string/jumbo v1, "images_root"

    invoke-static {v0, v1}, Landroid/provider/DocumentsContract;->buildRootUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 415
    const-string/jumbo v0, "android.intent.category.DEFAULT"

    invoke-virtual {v8, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 419
    .local v8, "intent":Landroid/content/Intent;
    :sswitch_2
    new-instance v8, Landroid/content/Intent;

    .end local v8    # "intent":Landroid/content/Intent;
    const-string/jumbo v0, "android.provider.action.BROWSE_DOCUMENT_ROOT"

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 420
    .local v8, "intent":Landroid/content/Intent;
    const-string/jumbo v0, "com.android.providers.media.documents"

    const-string/jumbo v1, "videos_root"

    invoke-static {v0, v1}, Landroid/provider/DocumentsContract;->buildRootUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 421
    const-string/jumbo v0, "android.intent.category.DEFAULT"

    invoke-virtual {v8, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 425
    .local v8, "intent":Landroid/content/Intent;
    :sswitch_3
    new-instance v8, Landroid/content/Intent;

    .end local v8    # "intent":Landroid/content/Intent;
    const-string/jumbo v0, "android.provider.action.BROWSE_DOCUMENT_ROOT"

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 426
    .local v8, "intent":Landroid/content/Intent;
    const-string/jumbo v0, "com.android.providers.media.documents"

    const-string/jumbo v1, "audio_root"

    invoke-static {v0, v1}, Landroid/provider/DocumentsContract;->buildRootUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 427
    const-string/jumbo v0, "android.intent.category.DEFAULT"

    invoke-virtual {v8, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_1

    .line 431
    .local v8, "intent":Landroid/content/Intent;
    :sswitch_4
    iget-object v0, p0, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->getBestVolumeDescription(Landroid/os/storage/VolumeInfo;)Ljava/lang/String;

    move-result-object v0

    .line 432
    iget-object v1, p0, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->mSharedVolume:Landroid/os/storage/VolumeInfo;

    .line 431
    invoke-static {p0, v0, v1}, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings$OtherInfoFragment;->show(Landroid/app/Fragment;Ljava/lang/String;Landroid/os/storage/VolumeInfo;)V

    .line 433
    return v11

    .line 437
    :sswitch_5
    invoke-static {p0}, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings$ConfirmClearCacheFragment;->show(Landroid/app/Fragment;)V

    .line 438
    return v11

    .line 442
    :sswitch_6
    iget-object v0, p0, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->mSharedVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->buildBrowseIntent()Landroid/content/Intent;

    move-result-object v8

    .local v8, "intent":Landroid/content/Intent;
    goto/16 :goto_1

    .line 445
    .local v8, "intent":Landroid/content/Intent;
    :sswitch_7
    invoke-virtual {p2}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p2}, Landroid/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings$UserInfoFragment;->show(Landroid/app/Fragment;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 446
    return v11

    .line 455
    .end local v8    # "intent":Landroid/content/Intent;
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Landroid/os/UserHandle;

    invoke-direct {v1, v10}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, v8, v1}, Landroid/app/Activity;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    .line 457
    :catch_0
    move-exception v7

    .line 458
    .local v7, "e":Landroid/content/ActivityNotFoundException;
    const-string/jumbo v0, "StorageSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "No activity found for "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 462
    .end local v7    # "e":Landroid/content/ActivityNotFoundException;
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/android/exsettings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0

    .line 400
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_7
        0x7f0c088d -> :sswitch_6
        0x7f0c08ac -> :sswitch_0
        0x7f0c08ad -> :sswitch_1
        0x7f0c08ae -> :sswitch_2
        0x7f0c08af -> :sswitch_3
        0x7f0c08b0 -> :sswitch_5
        0x7f0c08b1 -> :sswitch_4
    .end sparse-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 10
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 330
    invoke-direct {p0}, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->isVolumeValid()Z

    move-result v6

    if-nez v6, :cond_0

    return-void

    .line 332
    :cond_0
    const v6, 0x7f130337

    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 333
    .local v4, "rename":Landroid/view/MenuItem;
    const v6, 0x7f130338

    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 334
    .local v2, "mount":Landroid/view/MenuItem;
    const v6, 0x7f130339

    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    .line 335
    .local v5, "unmount":Landroid/view/MenuItem;
    const v6, 0x7f13033a

    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 336
    .local v0, "format":Landroid/view/MenuItem;
    const v6, 0x7f13033b

    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 340
    .local v1, "migrate":Landroid/view/MenuItem;
    const-string/jumbo v6, "private"

    iget-object v9, p0, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v9}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 341
    invoke-interface {v4, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 342
    invoke-interface {v2, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 343
    invoke-interface {v5, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 344
    invoke-interface {v0, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 352
    :goto_0
    const v6, 0x7f0c0888

    invoke-interface {v0, v6}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 355
    invoke-virtual {p0}, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/pm/PackageManager;->getPrimaryStorageCurrentVolume()Landroid/os/storage/VolumeInfo;

    move-result-object v3

    .line 357
    .local v3, "privateVol":Landroid/os/storage/VolumeInfo;
    if-eqz v3, :cond_1

    .line 358
    invoke-virtual {v3}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v6

    if-ne v6, v7, :cond_1

    .line 359
    iget-object v6, p0, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-static {v6, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 357
    :cond_1
    :goto_1
    invoke-interface {v1, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 329
    return-void

    .line 346
    .end local v3    # "privateVol":Landroid/os/storage/VolumeInfo;
    :cond_2
    iget-object v6, p0, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v6}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v6

    if-ne v6, v7, :cond_3

    move v6, v7

    :goto_2
    invoke-interface {v4, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 347
    iget-object v6, p0, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v6}, Landroid/os/storage/VolumeInfo;->getState()I

    move-result v6

    if-nez v6, :cond_4

    move v6, v7

    :goto_3
    invoke-interface {v2, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 348
    iget-object v6, p0, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v6}, Landroid/os/storage/VolumeInfo;->isMountedReadable()Z

    move-result v6

    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 349
    invoke-interface {v0, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    :cond_3
    move v6, v8

    .line 346
    goto :goto_2

    :cond_4
    move v6, v8

    .line 347
    goto :goto_3

    .restart local v3    # "privateVol":Landroid/os/storage/VolumeInfo;
    :cond_5
    move v8, v7

    .line 359
    goto :goto_1
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 295
    invoke-super {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;->onResume()V

    .line 298
    iget-object v0, p0, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->mVolumeId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->findVolumeById(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    .line 299
    invoke-direct {p0}, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->isVolumeValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 300
    invoke-virtual {p0}, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 301
    return-void

    .line 304
    :cond_0
    iget-object v0, p0, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    .line 305
    invoke-virtual {p0}, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->update()V

    .line 294
    return-void
.end method

.method public update()V
    .locals 28

    .prologue
    .line 165
    invoke-direct/range {p0 .. p0}, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->isVolumeValid()Z

    move-result v23

    if-nez v23, :cond_0

    .line 166
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/app/Activity;->finish()V

    .line 167
    return-void

    .line 170
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/os/storage/StorageManager;->getBestVolumeDescription(Landroid/os/storage/VolumeInfo;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 173
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/app/FragmentManager;->invalidateOptionsMenu()V

    .line 175
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    .line 176
    .local v6, "context":Landroid/content/Context;
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v13

    .line 178
    .local v13, "screen":Landroid/preference/PreferenceScreen;
    invoke-virtual {v13}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 180
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->mSummary:Lcom/android/exsettings/deviceinfo/StorageSummaryPreference;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v13, v1}, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->addPreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    .line 182
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->mUserManager:Landroid/os/UserManager;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v5

    .line 183
    .local v5, "allUsers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v20

    .line 184
    .local v20, "userCount":I
    const/16 v23, 0x1

    move/from16 v0, v20

    move/from16 v1, v23

    if-le v0, v1, :cond_2

    const/4 v14, 0x1

    .line 185
    .local v14, "showHeaders":Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->mSharedVolume:Landroid/os/storage/VolumeInfo;

    move-object/from16 v23, v0

    if-eqz v23, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->mSharedVolume:Landroid/os/storage/VolumeInfo;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/os/storage/VolumeInfo;->isMountedReadable()Z

    move-result v15

    .line 187
    :goto_1
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->mItemPoolIndex:I

    .line 188
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->mHeaderPoolIndex:I

    .line 190
    const/4 v4, 0x0

    .line 192
    .local v4, "addedUserCount":I
    const/16 v21, 0x0

    .local v21, "userIndex":I
    :goto_2
    move/from16 v0, v21

    move/from16 v1, v20

    if-ge v0, v1, :cond_5

    .line 193
    move/from16 v0, v21

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/content/pm/UserInfo;

    .line 194
    .local v22, "userInfo":Landroid/content/pm/UserInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->mCurrentUser:Landroid/content/pm/UserInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->isProfileOf(Landroid/content/pm/UserInfo;Landroid/content/pm/UserInfo;)Z

    move-result v23

    if-eqz v23, :cond_1

    .line 195
    if-eqz v14, :cond_4

    .line 196
    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v13, v1}, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->addCategory(Landroid/preference/PreferenceGroup;Ljava/lang/CharSequence;)Landroid/preference/PreferenceCategory;

    move-result-object v7

    .line 197
    .local v7, "details":Landroid/preference/PreferenceGroup;
    :goto_3
    move-object/from16 v0, v22

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v7, v15, v1}, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->addDetailItems(Landroid/preference/PreferenceGroup;ZI)V

    .line 198
    add-int/lit8 v4, v4, 0x1

    .line 192
    .end local v7    # "details":Landroid/preference/PreferenceGroup;
    :cond_1
    add-int/lit8 v21, v21, 0x1

    goto :goto_2

    .line 184
    .end local v4    # "addedUserCount":I
    .end local v14    # "showHeaders":Z
    .end local v21    # "userIndex":I
    .end local v22    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_2
    const/4 v14, 0x0

    .restart local v14    # "showHeaders":Z
    goto :goto_0

    .line 185
    :cond_3
    const/4 v15, 0x0

    .local v15, "showShared":Z
    goto :goto_1

    .line 196
    .end local v15    # "showShared":Z
    .restart local v4    # "addedUserCount":I
    .restart local v21    # "userIndex":I
    .restart local v22    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_4
    move-object v7, v13

    .restart local v7    # "details":Landroid/preference/PreferenceGroup;
    goto :goto_3

    .line 203
    .end local v7    # "details":Landroid/preference/PreferenceGroup;
    .end local v22    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_5
    sub-int v23, v20, v4

    if-lez v23, :cond_7

    .line 205
    const v23, 0x7f0c0896

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v23

    .line 204
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v13, v1}, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->addCategory(Landroid/preference/PreferenceGroup;Ljava/lang/CharSequence;)Landroid/preference/PreferenceCategory;

    move-result-object v9

    .line 206
    .local v9, "otherUsers":Landroid/preference/PreferenceGroup;
    const/16 v21, 0x0

    :goto_4
    move/from16 v0, v21

    move/from16 v1, v20

    if-ge v0, v1, :cond_7

    .line 207
    move/from16 v0, v21

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/content/pm/UserInfo;

    .line 208
    .restart local v22    # "userInfo":Landroid/content/pm/UserInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->mCurrentUser:Landroid/content/pm/UserInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->isProfileOf(Landroid/content/pm/UserInfo;Landroid/content/pm/UserInfo;)Z

    move-result v23

    if-nez v23, :cond_6

    .line 209
    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v25

    move-object/from16 v2, v23

    move/from16 v3, v24

    invoke-direct {v0, v9, v1, v2, v3}, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->addItem(Landroid/preference/PreferenceGroup;ILjava/lang/CharSequence;I)V

    .line 206
    :cond_6
    add-int/lit8 v21, v21, 0x1

    goto :goto_4

    .line 214
    .end local v9    # "otherUsers":Landroid/preference/PreferenceGroup;
    .end local v22    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_7
    const v23, 0x7f0c08b0

    const/16 v24, 0x0

    const/16 v25, -0x2710

    move-object/from16 v0, p0

    move/from16 v1, v23

    move-object/from16 v2, v24

    move/from16 v3, v25

    invoke-direct {v0, v13, v1, v2, v3}, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->addItem(Landroid/preference/PreferenceGroup;ILjava/lang/CharSequence;I)V

    .line 216
    if-eqz v15, :cond_8

    .line 217
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->mExplore:Landroid/preference/Preference;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v13, v1}, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->addPreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    .line 220
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/os/storage/VolumeInfo;->getPath()Ljava/io/File;

    move-result-object v8

    .line 221
    .local v8, "file":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->getTotalSpace()J

    move-result-wide v16

    .line 222
    .local v16, "totalBytes":J
    invoke-virtual {v8}, Ljava/io/File;->getFreeSpace()J

    move-result-wide v10

    .line 223
    .local v10, "freeBytes":J
    sub-long v18, v16, v10

    .line 225
    .local v18, "usedBytes":J
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const/16 v24, 0x0

    move-object/from16 v0, v23

    move-wide/from16 v1, v18

    move/from16 v3, v24

    invoke-static {v0, v1, v2, v3}, Landroid/text/format/Formatter;->formatBytes(Landroid/content/res/Resources;JI)Landroid/text/format/Formatter$BytesResult;

    move-result-object v12

    .line 226
    .local v12, "result":Landroid/text/format/Formatter$BytesResult;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->mSummary:Lcom/android/exsettings/deviceinfo/StorageSummaryPreference;

    move-object/from16 v23, v0

    const v24, 0x7f0c089a

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v24

    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/CharSequence;

    move-object/from16 v25, v0

    .line 227
    iget-object v0, v12, Landroid/text/format/Formatter$BytesResult;->value:Ljava/lang/String;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    aput-object v26, v25, v27

    iget-object v0, v12, Landroid/text/format/Formatter$BytesResult;->units:Ljava/lang/String;

    move-object/from16 v26, v0

    const/16 v27, 0x1

    aput-object v26, v25, v27

    .line 226
    invoke-static/range {v24 .. v25}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/android/exsettings/deviceinfo/StorageSummaryPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 228
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->mSummary:Lcom/android/exsettings/deviceinfo/StorageSummaryPreference;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    .line 229
    move-wide/from16 v0, v16

    invoke-static {v6, v0, v1}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v25

    const/16 v26, 0x0

    aput-object v25, v24, v26

    .line 228
    const v25, 0x7f0c089b

    move-object/from16 v0, p0

    move/from16 v1, v25

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/android/exsettings/deviceinfo/StorageSummaryPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 230
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->mSummary:Lcom/android/exsettings/deviceinfo/StorageSummaryPreference;

    move-object/from16 v23, v0

    const-wide/16 v24, 0x64

    mul-long v24, v24, v18

    div-long v24, v24, v16

    move-wide/from16 v0, v24

    long-to-int v0, v0

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Lcom/android/exsettings/deviceinfo/StorageSummaryPreference;->setPercent(I)V

    .line 232
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->mMeasure:Lcom/android/exsettingslib/deviceinfo/StorageMeasurement;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/exsettingslib/deviceinfo/StorageMeasurement;->forceMeasure()V

    .line 164
    return-void
.end method
