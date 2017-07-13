.class public Lcom/android/exsettings/deviceinfo/StorageSettings;
.super Lcom/android/exsettings/SettingsPreferenceFragment;
.source "StorageSettings.java"

# interfaces
.implements Lcom/android/exsettings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exsettings/deviceinfo/StorageSettings$MountTask;,
        Lcom/android/exsettings/deviceinfo/StorageSettings$UnmountTask;,
        Lcom/android/exsettings/deviceinfo/StorageSettings$VolumeUnmountedFragment;,
        Lcom/android/exsettings/deviceinfo/StorageSettings$DiskInitFragment;,
        Lcom/android/exsettings/deviceinfo/StorageSettings$1;,
        Lcom/android/exsettings/deviceinfo/StorageSettings$2;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/exsettings/search/Indexable$SearchIndexProvider;


# instance fields
.field private mExternalCategory:Landroid/preference/PreferenceCategory;

.field private mInternalCategory:Landroid/preference/PreferenceCategory;

.field private mInternalSummary:Lcom/android/exsettings/deviceinfo/StorageSummaryPreference;

.field private mPrivateColors:[I

.field private mPublicColor:I

.field private final mStorageListener:Landroid/os/storage/StorageEventListener;

.field private mStorageManager:Landroid/os/storage/StorageManager;


# direct methods
.method static synthetic -wrap0(Landroid/os/storage/VolumeInfo;)Z
    .locals 1
    .param p0, "vol"    # Landroid/os/storage/VolumeInfo;

    .prologue
    invoke-static {p0}, Lcom/android/exsettings/deviceinfo/StorageSettings;->isInteresting(Landroid/os/storage/VolumeInfo;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/exsettings/deviceinfo/StorageSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/exsettings/deviceinfo/StorageSettings;->refresh()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 439
    new-instance v0, Lcom/android/exsettings/deviceinfo/StorageSettings$2;

    invoke-direct {v0}, Lcom/android/exsettings/deviceinfo/StorageSettings$2;-><init>()V

    .line 438
    sput-object v0, Lcom/android/exsettings/deviceinfo/StorageSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/exsettings/search/Indexable$SearchIndexProvider;

    .line 60
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;-><init>()V

    .line 115
    new-instance v0, Lcom/android/exsettings/deviceinfo/StorageSettings$1;

    invoke-direct {v0, p0}, Lcom/android/exsettings/deviceinfo/StorageSettings$1;-><init>(Lcom/android/exsettings/deviceinfo/StorageSettings;)V

    iput-object v0, p0, Lcom/android/exsettings/deviceinfo/StorageSettings;->mStorageListener:Landroid/os/storage/StorageEventListener;

    .line 60
    return-void
.end method

.method private static isInteresting(Landroid/os/storage/VolumeInfo;)Z
    .locals 1
    .param p0, "vol"    # Landroid/os/storage/VolumeInfo;

    .prologue
    .line 125
    invoke-virtual {p0}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 130
    const/4 v0, 0x0

    return v0

    .line 128
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 125
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private refresh()V
    .locals 29

    .prologue
    .line 135
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/deviceinfo/StorageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    .line 137
    .local v9, "context":Landroid/content/Context;
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/deviceinfo/StorageSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 138
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/deviceinfo/StorageSettings;->mInternalCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v2}, Landroid/preference/PreferenceCategory;->removeAll()V

    .line 139
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/deviceinfo/StorageSettings;->mExternalCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v2}, Landroid/preference/PreferenceCategory;->removeAll()V

    .line 141
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/deviceinfo/StorageSettings;->mInternalCategory:Landroid/preference/PreferenceCategory;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/exsettings/deviceinfo/StorageSettings;->mInternalSummary:Lcom/android/exsettings/deviceinfo/StorageSummaryPreference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 143
    const/16 v16, 0x0

    .line 144
    .local v16, "privateCount":I
    const-wide/16 v20, 0x0

    .line 145
    .local v20, "privateUsedBytes":J
    const-wide/16 v18, 0x0

    .line 147
    .local v18, "privateTotalBytes":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/deviceinfo/StorageSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v2}, Landroid/os/storage/StorageManager;->getVolumes()Ljava/util/List;

    move-result-object v28

    .line 148
    .local v28, "volumes":Ljava/util/List;, "Ljava/util/List<Landroid/os/storage/VolumeInfo;>;"
    invoke-static {}, Landroid/os/storage/VolumeInfo;->getDescriptionComparator()Ljava/util/Comparator;

    move-result-object v2

    move-object/from16 v0, v28

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 150
    invoke-interface/range {v28 .. v28}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v27

    .local v27, "vol$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/os/storage/VolumeInfo;

    .line 151
    .local v26, "vol":Landroid/os/storage/VolumeInfo;
    invoke-virtual/range {v26 .. v26}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 152
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/deviceinfo/StorageSettings;->mPrivateColors:[I

    add-int/lit8 v17, v16, 0x1

    .end local v16    # "privateCount":I
    .local v17, "privateCount":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/exsettings/deviceinfo/StorageSettings;->mPrivateColors:[I

    array-length v3, v3

    rem-int v3, v16, v3

    aget v8, v2, v3

    .line 153
    .local v8, "color":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/deviceinfo/StorageSettings;->mInternalCategory:Landroid/preference/PreferenceCategory;

    .line 154
    new-instance v3, Lcom/android/exsettings/deviceinfo/StorageVolumePreference;

    move-object/from16 v0, v26

    invoke-direct {v3, v9, v0, v8}, Lcom/android/exsettings/deviceinfo/StorageVolumePreference;-><init>(Landroid/content/Context;Landroid/os/storage/VolumeInfo;I)V

    .line 153
    invoke-virtual {v2, v3}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 155
    invoke-virtual/range {v26 .. v26}, Landroid/os/storage/VolumeInfo;->isMountedReadable()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 156
    invoke-virtual/range {v26 .. v26}, Landroid/os/storage/VolumeInfo;->getPath()Ljava/io/File;

    move-result-object v14

    .line 157
    .local v14, "path":Ljava/io/File;
    invoke-virtual {v14}, Ljava/io/File;->getTotalSpace()J

    move-result-wide v2

    invoke-virtual {v14}, Ljava/io/File;->getFreeSpace()J

    move-result-wide v4

    sub-long/2addr v2, v4

    add-long v20, v20, v2

    .line 158
    invoke-virtual {v14}, Ljava/io/File;->getTotalSpace()J

    move-result-wide v2

    add-long v18, v18, v2

    move/from16 v16, v17

    .end local v17    # "privateCount":I
    .restart local v16    # "privateCount":I
    goto :goto_0

    .line 160
    .end local v8    # "color":I
    .end local v14    # "path":Ljava/io/File;
    :cond_1
    invoke-virtual/range {v26 .. v26}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v2

    if-nez v2, :cond_0

    .line 161
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/deviceinfo/StorageSettings;->mExternalCategory:Landroid/preference/PreferenceCategory;

    .line 162
    new-instance v3, Lcom/android/exsettings/deviceinfo/StorageVolumePreference;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/exsettings/deviceinfo/StorageSettings;->mPublicColor:I

    move-object/from16 v0, v26

    invoke-direct {v3, v9, v0, v4}, Lcom/android/exsettings/deviceinfo/StorageVolumePreference;-><init>(Landroid/content/Context;Landroid/os/storage/VolumeInfo;I)V

    .line 161
    invoke-virtual {v2, v3}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 167
    .end local v26    # "vol":Landroid/os/storage/VolumeInfo;
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/deviceinfo/StorageSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v2}, Landroid/os/storage/StorageManager;->getVolumeRecords()Ljava/util/List;

    move-result-object v24

    .line 168
    .local v24, "recs":Ljava/util/List;, "Ljava/util/List<Landroid/os/storage/VolumeRecord;>;"
    invoke-interface/range {v24 .. v24}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v23

    .local v23, "rec$iterator":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/os/storage/VolumeRecord;

    .line 169
    .local v22, "rec":Landroid/os/storage/VolumeRecord;
    invoke-virtual/range {v22 .. v22}, Landroid/os/storage/VolumeRecord;->getType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 170
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/deviceinfo/StorageSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual/range {v22 .. v22}, Landroid/os/storage/VolumeRecord;->getFsUuid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/storage/StorageManager;->findVolumeByUuid(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v2

    if-nez v2, :cond_3

    .line 172
    const v2, 0x7f0200ee

    invoke-virtual {v9, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    .line 173
    .local v13, "icon":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v13}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 174
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/exsettings/deviceinfo/StorageSettings;->mPublicColor:I

    invoke-virtual {v13, v2}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 175
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v13, v2}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 177
    new-instance v15, Landroid/preference/Preference;

    invoke-direct {v15, v9}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 178
    .local v15, "pref":Landroid/preference/Preference;
    invoke-virtual/range {v22 .. v22}, Landroid/os/storage/VolumeRecord;->getFsUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 179
    invoke-virtual/range {v22 .. v22}, Landroid/os/storage/VolumeRecord;->getNickname()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 180
    const v2, 0x1040494

    invoke-virtual {v15, v2}, Landroid/preference/Preference;->setSummary(I)V

    .line 181
    invoke-virtual {v15, v13}, Landroid/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 182
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/deviceinfo/StorageSettings;->mInternalCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v2, v15}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_1

    .line 187
    .end local v13    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v15    # "pref":Landroid/preference/Preference;
    .end local v22    # "rec":Landroid/os/storage/VolumeRecord;
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/deviceinfo/StorageSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v2}, Landroid/os/storage/StorageManager;->getDisks()Ljava/util/List;

    move-result-object v12

    .line 188
    .local v12, "disks":Ljava/util/List;, "Ljava/util/List<Landroid/os/storage/DiskInfo;>;"
    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "disk$iterator":Ljava/util/Iterator;
    :cond_5
    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/storage/DiskInfo;

    .line 189
    .local v10, "disk":Landroid/os/storage/DiskInfo;
    iget v2, v10, Landroid/os/storage/DiskInfo;->volumeCount:I

    if-nez v2, :cond_5

    iget-wide v2, v10, Landroid/os/storage/DiskInfo;->size:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_5

    .line 190
    new-instance v15, Landroid/preference/Preference;

    invoke-direct {v15, v9}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 191
    .restart local v15    # "pref":Landroid/preference/Preference;
    invoke-virtual {v10}, Landroid/os/storage/DiskInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 192
    invoke-virtual {v10}, Landroid/os/storage/DiskInfo;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 193
    const v2, 0x1040491

    invoke-virtual {v15, v2}, Landroid/preference/Preference;->setSummary(I)V

    .line 194
    const v2, 0x7f0200ee

    invoke-virtual {v15, v2}, Landroid/preference/Preference;->setIcon(I)V

    .line 195
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/deviceinfo/StorageSettings;->mExternalCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v2, v15}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_2

    .line 199
    .end local v10    # "disk":Landroid/os/storage/DiskInfo;
    .end local v15    # "pref":Landroid/preference/Preference;
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/deviceinfo/StorageSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v3, 0x0

    move-wide/from16 v0, v20

    invoke-static {v2, v0, v1, v3}, Landroid/text/format/Formatter;->formatBytes(Landroid/content/res/Resources;JI)Landroid/text/format/Formatter$BytesResult;

    move-result-object v25

    .line 200
    .local v25, "result":Landroid/text/format/Formatter$BytesResult;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/deviceinfo/StorageSettings;->mInternalSummary:Lcom/android/exsettings/deviceinfo/StorageSummaryPreference;

    const v3, 0x7f0c089a

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/exsettings/deviceinfo/StorageSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/CharSequence;

    .line 201
    move-object/from16 v0, v25

    iget-object v5, v0, Landroid/text/format/Formatter$BytesResult;->value:Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    move-object/from16 v0, v25

    iget-object v5, v0, Landroid/text/format/Formatter$BytesResult;->units:Ljava/lang/String;

    const/4 v6, 0x1

    aput-object v5, v4, v6

    .line 200
    invoke-static {v3, v4}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/exsettings/deviceinfo/StorageSummaryPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 202
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/deviceinfo/StorageSettings;->mInternalSummary:Lcom/android/exsettings/deviceinfo/StorageSummaryPreference;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    .line 203
    move-wide/from16 v0, v18

    invoke-static {v9, v0, v1}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 202
    const v4, 0x7f0c089c

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v3}, Lcom/android/exsettings/deviceinfo/StorageSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/exsettings/deviceinfo/StorageSummaryPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 205
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/deviceinfo/StorageSettings;->mInternalCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v2}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v2

    if-lez v2, :cond_7

    .line 206
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/deviceinfo/StorageSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/exsettings/deviceinfo/StorageSettings;->mInternalCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 208
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/deviceinfo/StorageSettings;->mExternalCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v2}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v2

    if-lez v2, :cond_8

    .line 209
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/deviceinfo/StorageSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/exsettings/deviceinfo/StorageSettings;->mExternalCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 212
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/deviceinfo/StorageSettings;->mInternalCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v2}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_9

    .line 213
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/deviceinfo/StorageSettings;->mExternalCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v2}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v2

    if-nez v2, :cond_9

    .line 215
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 216
    .local v7, "args":Landroid/os/Bundle;
    const-string/jumbo v2, "android.os.storage.extra.VOLUME_ID"

    const-string/jumbo v3, "private"

    invoke-virtual {v7, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    const-class v2, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v4

    .line 218
    const/4 v5, -0x1

    const/4 v6, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p0

    .line 217
    invoke-virtual/range {v2 .. v7}, Lcom/android/exsettings/deviceinfo/StorageSettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    .line 219
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/deviceinfo/StorageSettings;->finish()V

    .line 134
    .end local v7    # "args":Landroid/os/Bundle;
    :cond_9
    return-void

    .end local v11    # "disk$iterator":Ljava/util/Iterator;
    .end local v12    # "disks":Ljava/util/List;, "Ljava/util/List<Landroid/os/storage/DiskInfo;>;"
    .end local v16    # "privateCount":I
    .end local v23    # "rec$iterator":Ljava/util/Iterator;
    .end local v24    # "recs":Ljava/util/List;, "Ljava/util/List<Landroid/os/storage/VolumeRecord;>;"
    .end local v25    # "result":Landroid/text/format/Formatter$BytesResult;
    .restart local v8    # "color":I
    .restart local v17    # "privateCount":I
    .restart local v26    # "vol":Landroid/os/storage/VolumeInfo;
    :cond_a
    move/from16 v16, v17

    .end local v17    # "privateCount":I
    .restart local v16    # "privateCount":I
    goto/16 :goto_0
.end method


# virtual methods
.method protected getHelpResource()I
    .locals 1

    .prologue
    .line 85
    const v0, 0x7f0c0dd7

    return v0
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 80
    const/16 v0, 0x2a

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1

    .line 90
    invoke-super {p0, p1}, Lcom/android/exsettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 92
    invoke-virtual {p0}, Lcom/android/exsettings/deviceinfo/StorageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 94
    .local v0, "context":Landroid/content/Context;
    const-class v1, Landroid/os/storage/StorageManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/StorageManager;

    iput-object v1, p0, Lcom/android/exsettings/deviceinfo/StorageSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 95
    iget-object v1, p0, Lcom/android/exsettings/deviceinfo/StorageSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v2, p0, Lcom/android/exsettings/deviceinfo/StorageSettings;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v1, v2}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    .line 97
    const v1, 0x7f080023

    invoke-virtual {p0, v1}, Lcom/android/exsettings/deviceinfo/StorageSettings;->addPreferencesFromResource(I)V

    .line 99
    const-string/jumbo v1, "storage_internal"

    invoke-virtual {p0, v1}, Lcom/android/exsettings/deviceinfo/StorageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    iput-object v1, p0, Lcom/android/exsettings/deviceinfo/StorageSettings;->mInternalCategory:Landroid/preference/PreferenceCategory;

    .line 100
    const-string/jumbo v1, "storage_external"

    invoke-virtual {p0, v1}, Lcom/android/exsettings/deviceinfo/StorageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    iput-object v1, p0, Lcom/android/exsettings/deviceinfo/StorageSettings;->mExternalCategory:Landroid/preference/PreferenceCategory;

    .line 102
    new-instance v1, Lcom/android/exsettings/deviceinfo/StorageSummaryPreference;

    invoke-direct {v1, v0}, Lcom/android/exsettings/deviceinfo/StorageSummaryPreference;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/exsettings/deviceinfo/StorageSettings;->mInternalSummary:Lcom/android/exsettings/deviceinfo/StorageSummaryPreference;

    .line 104
    invoke-virtual {p0, v4}, Lcom/android/exsettings/deviceinfo/StorageSettings;->setHasOptionsMenu(Z)V

    .line 105
    const v1, 0x7f0e0035

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/exsettings/deviceinfo/StorageSettings;->mPublicColor:I

    .line 106
    const/4 v1, 0x5

    new-array v1, v1, [I

    .line 107
    const v2, 0x7f0e0037

    invoke-virtual {v0, v2}, Landroid/content/Context;->getColor(I)I

    move-result v2

    const/4 v3, 0x0

    aput v2, v1, v3

    .line 108
    const v2, 0x7f0e0038

    invoke-virtual {v0, v2}, Landroid/content/Context;->getColor(I)I

    move-result v2

    aput v2, v1, v4

    .line 109
    const v2, 0x7f0e0039

    invoke-virtual {v0, v2}, Landroid/content/Context;->getColor(I)I

    move-result v2

    const/4 v3, 0x2

    aput v2, v1, v3

    .line 110
    const v2, 0x7f0e003a

    invoke-virtual {v0, v2}, Landroid/content/Context;->getColor(I)I

    move-result v2

    const/4 v3, 0x3

    aput v2, v1, v3

    .line 111
    const v2, 0x7f0e003b

    invoke-virtual {v0, v2}, Landroid/content/Context;->getColor(I)I

    move-result v2

    const/4 v3, 0x4

    aput v2, v1, v3

    .line 106
    iput-object v1, p0, Lcom/android/exsettings/deviceinfo/StorageSettings;->mPrivateColors:[I

    .line 89
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 232
    invoke-super {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;->onPause()V

    .line 233
    iget-object v0, p0, Lcom/android/exsettings/deviceinfo/StorageSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/android/exsettings/deviceinfo/StorageSettings;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->unregisterListener(Landroid/os/storage/StorageEventListener;)V

    .line 231
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 9
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "pref"    # Landroid/preference/Preference;

    .prologue
    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v8, 0x1

    .line 238
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v6

    .line 239
    .local v6, "key":Ljava/lang/String;
    instance-of v0, p2, Lcom/android/exsettings/deviceinfo/StorageVolumePreference;

    if-eqz v0, :cond_4

    .line 241
    iget-object v0, p0, Lcom/android/exsettings/deviceinfo/StorageSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v0, v6}, Landroid/os/storage/StorageManager;->findVolumeById(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v7

    .line 243
    .local v7, "vol":Landroid/os/storage/VolumeInfo;
    invoke-virtual {v7}, Landroid/os/storage/VolumeInfo;->getState()I

    move-result v0

    if-nez v0, :cond_0

    .line 244
    invoke-virtual {v7}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/exsettings/deviceinfo/StorageSettings$VolumeUnmountedFragment;->show(Landroid/app/Fragment;Ljava/lang/String;)V

    .line 245
    return v8

    .line 246
    :cond_0
    invoke-virtual {v7}, Landroid/os/storage/VolumeInfo;->getState()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    .line 247
    invoke-virtual {v7}, Landroid/os/storage/VolumeInfo;->getDiskId()Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0c08a5

    invoke-static {p0, v1, v0}, Lcom/android/exsettings/deviceinfo/StorageSettings$DiskInitFragment;->show(Landroid/app/Fragment;ILjava/lang/String;)V

    .line 248
    return v8

    .line 251
    :cond_1
    invoke-virtual {v7}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v0

    if-ne v0, v8, :cond_2

    .line 252
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 253
    .local v5, "args":Landroid/os/Bundle;
    const-string/jumbo v0, "android.os.storage.extra.VOLUME_ID"

    invoke-virtual {v7}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    const-class v0, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/exsettings/deviceinfo/StorageSettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    .line 256
    return v8

    .line 258
    .end local v5    # "args":Landroid/os/Bundle;
    :cond_2
    invoke-virtual {v7}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v0

    if-nez v0, :cond_6

    .line 259
    invoke-virtual {v7}, Landroid/os/storage/VolumeInfo;->isMountedReadable()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 260
    invoke-virtual {v7}, Landroid/os/storage/VolumeInfo;->buildBrowseIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/exsettings/deviceinfo/StorageSettings;->startActivity(Landroid/content/Intent;)V

    .line 261
    return v8

    .line 263
    :cond_3
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 264
    .restart local v5    # "args":Landroid/os/Bundle;
    const-string/jumbo v0, "android.os.storage.extra.VOLUME_ID"

    invoke-virtual {v7}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    const-class v0, Lcom/android/exsettings/deviceinfo/PublicVolumeSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/exsettings/deviceinfo/StorageSettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    .line 267
    return v8

    .line 271
    .end local v5    # "args":Landroid/os/Bundle;
    .end local v7    # "vol":Landroid/os/storage/VolumeInfo;
    :cond_4
    const-string/jumbo v0, "disk:"

    invoke-virtual {v6, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 273
    const v0, 0x7f0c08a6

    invoke-static {p0, v0, v6}, Lcom/android/exsettings/deviceinfo/StorageSettings$DiskInitFragment;->show(Landroid/app/Fragment;ILjava/lang/String;)V

    .line 274
    return v8

    .line 278
    :cond_5
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 279
    .restart local v5    # "args":Landroid/os/Bundle;
    const-string/jumbo v0, "android.os.storage.extra.FS_UUID"

    invoke-virtual {v5, v0, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    const-class v0, Lcom/android/exsettings/deviceinfo/PrivateVolumeForget;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    .line 281
    const v3, 0x7f0c088b

    move-object v0, p0

    move-object v1, p0

    .line 280
    invoke-virtual/range {v0 .. v5}, Lcom/android/exsettings/deviceinfo/StorageSettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    .line 282
    return v8

    .line 285
    .end local v5    # "args":Landroid/os/Bundle;
    .restart local v7    # "vol":Landroid/os/storage/VolumeInfo;
    :cond_6
    return v4
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 225
    invoke-super {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;->onResume()V

    .line 226
    iget-object v0, p0, Lcom/android/exsettings/deviceinfo/StorageSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/android/exsettings/deviceinfo/StorageSettings;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    .line 227
    invoke-direct {p0}, Lcom/android/exsettings/deviceinfo/StorageSettings;->refresh()V

    .line 224
    return-void
.end method
