.class public Lcom/android/exsettings/deviceinfo/StorageWizardFormatProgress$PartitionTask;
.super Landroid/os/AsyncTask;
.source "StorageWizardFormatProgress.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/deviceinfo/StorageWizardFormatProgress;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PartitionTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Exception;",
        ">;"
    }
.end annotation


# instance fields
.field public mActivity:Lcom/android/exsettings/deviceinfo/StorageWizardFormatProgress;

.field private volatile mInternalBench:J

.field private volatile mPrivateBench:J

.field private volatile mProgress:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 83
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 86
    const/16 v0, 0x14

    iput v0, p0, Lcom/android/exsettings/deviceinfo/StorageWizardFormatProgress$PartitionTask;->mProgress:I

    .line 83
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Exception;
    .locals 8
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    const/4 v7, 0x0

    .line 93
    iget-object v0, p0, Lcom/android/exsettings/deviceinfo/StorageWizardFormatProgress$PartitionTask;->mActivity:Lcom/android/exsettings/deviceinfo/StorageWizardFormatProgress;

    .line 94
    .local v0, "activity":Lcom/android/exsettings/deviceinfo/StorageWizardFormatProgress;
    iget-object v4, p0, Lcom/android/exsettings/deviceinfo/StorageWizardFormatProgress$PartitionTask;->mActivity:Lcom/android/exsettings/deviceinfo/StorageWizardFormatProgress;

    iget-object v3, v4, Lcom/android/exsettings/deviceinfo/StorageWizardFormatProgress;->mStorage:Landroid/os/storage/StorageManager;

    .line 96
    .local v3, "storage":Landroid/os/storage/StorageManager;
    :try_start_0
    invoke-static {v0}, Lcom/android/exsettings/deviceinfo/StorageWizardFormatProgress;->-get0(Lcom/android/exsettings/deviceinfo/StorageWizardFormatProgress;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 97
    iget-object v4, v0, Lcom/android/exsettings/deviceinfo/StorageWizardFormatProgress;->mDisk:Landroid/os/storage/DiskInfo;

    invoke-virtual {v4}, Landroid/os/storage/DiskInfo;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/storage/StorageManager;->partitionPrivate(Ljava/lang/String;)V

    .line 98
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Integer;

    const/16 v5, 0x28

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {p0, v4}, Lcom/android/exsettings/deviceinfo/StorageWizardFormatProgress$PartitionTask;->publishProgress([Ljava/lang/Object;)V

    .line 100
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/os/storage/StorageManager;->benchmark(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/exsettings/deviceinfo/StorageWizardFormatProgress$PartitionTask;->mInternalBench:J

    .line 101
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Integer;

    const/16 v5, 0x3c

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {p0, v4}, Lcom/android/exsettings/deviceinfo/StorageWizardFormatProgress$PartitionTask;->publishProgress([Ljava/lang/Object;)V

    .line 103
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lcom/android/exsettings/deviceinfo/StorageWizardFormatProgress;->findFirstVolume(I)Landroid/os/storage/VolumeInfo;

    move-result-object v2

    .line 104
    .local v2, "privateVol":Landroid/os/storage/VolumeInfo;
    invoke-virtual {v2}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/storage/StorageManager;->benchmark(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/exsettings/deviceinfo/StorageWizardFormatProgress$PartitionTask;->mPrivateBench:J

    .line 109
    iget-object v4, v0, Lcom/android/exsettings/deviceinfo/StorageWizardFormatProgress;->mDisk:Landroid/os/storage/DiskInfo;

    invoke-virtual {v4}, Landroid/os/storage/DiskInfo;->isDefaultPrimary()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 110
    invoke-virtual {v3}, Landroid/os/storage/StorageManager;->getPrimaryStorageUuid()Ljava/lang/String;

    move-result-object v4

    .line 111
    const-string/jumbo v5, "primary_physical"

    .line 110
    invoke-static {v4, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    .line 109
    if-eqz v4, :cond_0

    .line 112
    const-string/jumbo v4, "StorageSettings"

    const-string/jumbo v5, "Just formatted primary physical; silently moving storage to new emulated volume"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    invoke-virtual {v2}, Landroid/os/storage/VolumeInfo;->getFsUuid()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/android/exsettings/deviceinfo/StorageWizardFormatProgress$SilentObserver;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Lcom/android/exsettings/deviceinfo/StorageWizardFormatProgress$SilentObserver;-><init>(Lcom/android/exsettings/deviceinfo/StorageWizardFormatProgress$SilentObserver;)V

    invoke-virtual {v3, v4, v5}, Landroid/os/storage/StorageManager;->setPrimaryStorageUuid(Ljava/lang/String;Landroid/content/pm/IPackageMoveObserver;)V

    .line 120
    .end local v2    # "privateVol":Landroid/os/storage/VolumeInfo;
    :cond_0
    :goto_0
    return-object v7

    .line 118
    :cond_1
    iget-object v4, v0, Lcom/android/exsettings/deviceinfo/StorageWizardFormatProgress;->mDisk:Landroid/os/storage/DiskInfo;

    invoke-virtual {v4}, Landroid/os/storage/DiskInfo;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/storage/StorageManager;->partitionPublic(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 121
    :catch_0
    move-exception v1

    .line 122
    .local v1, "e":Ljava/lang/Exception;
    return-object v1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 92
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "params":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/exsettings/deviceinfo/StorageWizardFormatProgress$PartitionTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Exception;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Exception;)V
    .locals 8
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/exsettings/deviceinfo/StorageWizardFormatProgress$PartitionTask;->mActivity:Lcom/android/exsettings/deviceinfo/StorageWizardFormatProgress;

    .line 140
    .local v0, "activity":Lcom/android/exsettings/deviceinfo/StorageWizardFormatProgress;
    invoke-virtual {v0}, Lcom/android/exsettings/deviceinfo/StorageWizardFormatProgress;->isDestroyed()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 141
    return-void

    .line 144
    :cond_0
    if-eqz p1, :cond_1

    .line 145
    const-string/jumbo v3, "StorageSettings"

    const-string/jumbo v4, "Failed to partition"

    invoke-static {v3, v4, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 146
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 147
    invoke-virtual {v0}, Lcom/android/exsettings/deviceinfo/StorageWizardFormatProgress;->finishAffinity()V

    .line 148
    return-void

    .line 151
    :cond_1
    invoke-static {v0}, Lcom/android/exsettings/deviceinfo/StorageWizardFormatProgress;->-get0(Lcom/android/exsettings/deviceinfo/StorageWizardFormatProgress;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 152
    iget-wide v4, p0, Lcom/android/exsettings/deviceinfo/StorageWizardFormatProgress$PartitionTask;->mInternalBench:J

    long-to-float v3, v4

    iget-wide v4, p0, Lcom/android/exsettings/deviceinfo/StorageWizardFormatProgress$PartitionTask;->mPrivateBench:J

    long-to-float v4, v4

    div-float v2, v3, v4

    .line 153
    .local v2, "pct":F
    const-string/jumbo v3, "StorageSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "New volume is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "x the speed of internal"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_2

    float-to-double v4, v2

    const-wide/high16 v6, 0x3fd0000000000000L    # 0.25

    cmpg-double v3, v4, v6

    if-gez v3, :cond_3

    .line 159
    :cond_2
    new-instance v1, Lcom/android/exsettings/deviceinfo/StorageWizardFormatProgress$SlowWarningFragment;

    invoke-direct {v1}, Lcom/android/exsettings/deviceinfo/StorageWizardFormatProgress$SlowWarningFragment;-><init>()V

    .line 160
    .local v1, "dialog":Lcom/android/exsettings/deviceinfo/StorageWizardFormatProgress$SlowWarningFragment;
    invoke-virtual {v0}, Lcom/android/exsettings/deviceinfo/StorageWizardFormatProgress;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    const-string/jumbo v4, "slow_warning"

    invoke-virtual {v1, v3, v4}, Lcom/android/exsettings/deviceinfo/StorageWizardFormatProgress$SlowWarningFragment;->showAllowingStateLoss(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 138
    .end local v1    # "dialog":Lcom/android/exsettings/deviceinfo/StorageWizardFormatProgress$SlowWarningFragment;
    .end local v2    # "pct":F
    :goto_0
    return-void

    .line 162
    .restart local v2    # "pct":F
    :cond_3
    invoke-static {v0}, Lcom/android/exsettings/deviceinfo/StorageWizardFormatProgress;->-wrap2(Lcom/android/exsettings/deviceinfo/StorageWizardFormatProgress;)V

    goto :goto_0

    .line 165
    .end local v2    # "pct":F
    :cond_4
    invoke-static {v0}, Lcom/android/exsettings/deviceinfo/StorageWizardFormatProgress;->-wrap2(Lcom/android/exsettings/deviceinfo/StorageWizardFormatProgress;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "e"    # Ljava/lang/Object;

    .prologue
    .line 138
    check-cast p1, Ljava/lang/Exception;

    .end local p1    # "e":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/exsettings/deviceinfo/StorageWizardFormatProgress$PartitionTask;->onPostExecute(Ljava/lang/Exception;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 2
    .param p1, "progress"    # [Ljava/lang/Integer;

    .prologue
    .line 128
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/exsettings/deviceinfo/StorageWizardFormatProgress$PartitionTask;->mProgress:I

    .line 129
    iget-object v0, p0, Lcom/android/exsettings/deviceinfo/StorageWizardFormatProgress$PartitionTask;->mActivity:Lcom/android/exsettings/deviceinfo/StorageWizardFormatProgress;

    iget v1, p0, Lcom/android/exsettings/deviceinfo/StorageWizardFormatProgress$PartitionTask;->mProgress:I

    invoke-virtual {v0, v1}, Lcom/android/exsettings/deviceinfo/StorageWizardFormatProgress;->setCurrentProgress(I)V

    .line 127
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .param p1, "progress"    # [Ljava/lang/Object;

    .prologue
    .line 127
    check-cast p1, [Ljava/lang/Integer;

    .end local p1    # "progress":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/exsettings/deviceinfo/StorageWizardFormatProgress$PartitionTask;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method

.method public setActivity(Lcom/android/exsettings/deviceinfo/StorageWizardFormatProgress;)V
    .locals 2
    .param p1, "activity"    # Lcom/android/exsettings/deviceinfo/StorageWizardFormatProgress;

    .prologue
    .line 133
    iput-object p1, p0, Lcom/android/exsettings/deviceinfo/StorageWizardFormatProgress$PartitionTask;->mActivity:Lcom/android/exsettings/deviceinfo/StorageWizardFormatProgress;

    .line 134
    iget-object v0, p0, Lcom/android/exsettings/deviceinfo/StorageWizardFormatProgress$PartitionTask;->mActivity:Lcom/android/exsettings/deviceinfo/StorageWizardFormatProgress;

    iget v1, p0, Lcom/android/exsettings/deviceinfo/StorageWizardFormatProgress$PartitionTask;->mProgress:I

    invoke-virtual {v0, v1}, Lcom/android/exsettings/deviceinfo/StorageWizardFormatProgress;->setCurrentProgress(I)V

    .line 132
    return-void
.end method
