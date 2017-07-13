.class public Lcom/android/exsettings/deviceinfo/StorageVolumePreference;
.super Landroid/preference/Preference;
.source "StorageVolumePreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exsettings/deviceinfo/StorageVolumePreference$1;
    }
.end annotation


# instance fields
.field private mColor:I

.field private final mStorageManager:Landroid/os/storage/StorageManager;

.field private final mUnmountListener:Landroid/view/View$OnClickListener;

.field private mUsedPercent:I

.field private final mVolume:Landroid/os/storage/VolumeInfo;


# direct methods
.method static synthetic -get0(Lcom/android/exsettings/deviceinfo/StorageVolumePreference;)Landroid/os/storage/VolumeInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/deviceinfo/StorageVolumePreference;->mVolume:Landroid/os/storage/VolumeInfo;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/storage/VolumeInfo;I)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "volume"    # Landroid/os/storage/VolumeInfo;
    .param p3, "color"    # I

    .prologue
    .line 51
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 48
    const/4 v10, -0x1

    iput v10, p0, Lcom/android/exsettings/deviceinfo/StorageVolumePreference;->mUsedPercent:I

    .line 126
    new-instance v10, Lcom/android/exsettings/deviceinfo/StorageVolumePreference$1;

    invoke-direct {v10, p0}, Lcom/android/exsettings/deviceinfo/StorageVolumePreference$1;-><init>(Lcom/android/exsettings/deviceinfo/StorageVolumePreference;)V

    iput-object v10, p0, Lcom/android/exsettings/deviceinfo/StorageVolumePreference;->mUnmountListener:Landroid/view/View$OnClickListener;

    .line 53
    const-class v10, Landroid/os/storage/StorageManager;

    invoke-virtual {p1, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/storage/StorageManager;

    iput-object v10, p0, Lcom/android/exsettings/deviceinfo/StorageVolumePreference;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 54
    iput-object p2, p0, Lcom/android/exsettings/deviceinfo/StorageVolumePreference;->mVolume:Landroid/os/storage/VolumeInfo;

    .line 55
    iput p3, p0, Lcom/android/exsettings/deviceinfo/StorageVolumePreference;->mColor:I

    .line 57
    const v10, 0x7f04011a

    invoke-virtual {p0, v10}, Lcom/android/exsettings/deviceinfo/StorageVolumePreference;->setLayoutResource(I)V

    .line 59
    invoke-virtual {p2}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/exsettings/deviceinfo/StorageVolumePreference;->setKey(Ljava/lang/String;)V

    .line 60
    iget-object v10, p0, Lcom/android/exsettings/deviceinfo/StorageVolumePreference;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v10, p2}, Landroid/os/storage/StorageManager;->getBestVolumeDescription(Landroid/os/storage/VolumeInfo;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/exsettings/deviceinfo/StorageVolumePreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 63
    const-string/jumbo v10, "private"

    invoke-virtual {p2}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 64
    const v10, 0x7f0200e2

    invoke-virtual {p1, v10}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 69
    .local v2, "icon":Landroid/graphics/drawable/Drawable;
    :goto_0
    invoke-virtual {p2}, Landroid/os/storage/VolumeInfo;->isMountedReadable()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 71
    invoke-virtual {p2}, Landroid/os/storage/VolumeInfo;->getPath()Ljava/io/File;

    move-result-object v3

    .line 72
    .local v3, "path":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->getFreeSpace()J

    move-result-wide v0

    .line 73
    .local v0, "freeBytes":J
    invoke-virtual {v3}, Ljava/io/File;->getTotalSpace()J

    move-result-wide v6

    .line 74
    .local v6, "totalBytes":J
    sub-long v8, v6, v0

    .line 76
    .local v8, "usedBytes":J
    invoke-static {p1, v8, v9}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v5

    .line 77
    .local v5, "used":Ljava/lang/String;
    invoke-static {p1, v6, v7}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v4

    .line 78
    .local v4, "total":Ljava/lang/String;
    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v5, v10, v11

    const/4 v11, 0x1

    aput-object v4, v10, v11

    const v11, 0x7f0c0899

    invoke-virtual {p1, v11, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/exsettings/deviceinfo/StorageVolumePreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 79
    const-wide/16 v10, 0x64

    mul-long/2addr v10, v8

    div-long/2addr v10, v6

    long-to-int v10, v10

    iput v10, p0, Lcom/android/exsettings/deviceinfo/StorageVolumePreference;->mUsedPercent:I

    .line 81
    iget-object v10, p0, Lcom/android/exsettings/deviceinfo/StorageVolumePreference;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v10, v3}, Landroid/os/storage/StorageManager;->getStorageLowBytes(Ljava/io/File;)J

    move-result-wide v10

    cmp-long v10, v0, v10

    if-gez v10, :cond_0

    .line 82
    const v10, 0x7f0e0036

    invoke-virtual {p1, v10}, Landroid/content/Context;->getColor(I)I

    move-result v10

    iput v10, p0, Lcom/android/exsettings/deviceinfo/StorageVolumePreference;->mColor:I

    .line 83
    const v10, 0x7f020105

    invoke-virtual {p1, v10}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 91
    .end local v0    # "freeBytes":J
    .end local v3    # "path":Ljava/io/File;
    .end local v4    # "total":Ljava/lang/String;
    .end local v5    # "used":Ljava/lang/String;
    .end local v6    # "totalBytes":J
    .end local v8    # "usedBytes":J
    :cond_0
    :goto_1
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 92
    iget v10, p0, Lcom/android/exsettings/deviceinfo/StorageVolumePreference;->mColor:I

    invoke-virtual {v2, v10}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 93
    sget-object v10, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v10}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 94
    invoke-virtual {p0, v2}, Lcom/android/exsettings/deviceinfo/StorageVolumePreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 96
    invoke-virtual {p2}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v10

    if-nez v10, :cond_1

    .line 97
    iget-object v10, p2, Landroid/os/storage/VolumeInfo;->disk:Landroid/os/storage/DiskInfo;

    invoke-virtual {v10}, Landroid/os/storage/DiskInfo;->isNonRemovable()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 50
    :cond_1
    :goto_2
    return-void

    .line 66
    .end local v2    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_2
    const v10, 0x7f0200ee

    invoke-virtual {p1, v10}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .restart local v2    # "icon":Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 87
    :cond_3
    invoke-virtual {p2}, Landroid/os/storage/VolumeInfo;->getStateDescription()I

    move-result v10

    invoke-virtual {p0, v10}, Lcom/android/exsettings/deviceinfo/StorageVolumePreference;->setSummary(I)V

    .line 88
    const/4 v10, -0x1

    iput v10, p0, Lcom/android/exsettings/deviceinfo/StorageVolumePreference;->mUsedPercent:I

    goto :goto_1

    .line 98
    :cond_4
    invoke-virtual {p2}, Landroid/os/storage/VolumeInfo;->isMountedReadable()Z

    move-result v10

    .line 96
    if-eqz v10, :cond_1

    .line 99
    const v10, 0x7f0400cd

    invoke-virtual {p0, v10}, Lcom/android/exsettings/deviceinfo/StorageVolumePreference;->setWidgetLayoutResource(I)V

    goto :goto_2
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 106
    const v2, 0x7f1301a6

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 108
    .local v1, "unmount":Landroid/widget/ImageView;
    if-eqz v1, :cond_0

    .line 110
    invoke-virtual {p0}, Lcom/android/exsettings/deviceinfo/StorageVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0e003c

    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v2

    .line 109
    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 111
    iget-object v2, p0, Lcom/android/exsettings/deviceinfo/StorageVolumePreference;->mUnmountListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    :cond_0
    const v2, 0x102000d

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    .line 115
    .local v0, "progress":Landroid/widget/ProgressBar;
    iget-object v2, p0, Lcom/android/exsettings/deviceinfo/StorageVolumePreference;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v2}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    iget v2, p0, Lcom/android/exsettings/deviceinfo/StorageVolumePreference;->mUsedPercent:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 116
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 117
    iget v2, p0, Lcom/android/exsettings/deviceinfo/StorageVolumePreference;->mUsedPercent:I

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 118
    iget v2, p0, Lcom/android/exsettings/deviceinfo/StorageVolumePreference;->mColor:I

    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    .line 123
    :goto_0
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 104
    return-void

    .line 120
    :cond_1
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0
.end method
