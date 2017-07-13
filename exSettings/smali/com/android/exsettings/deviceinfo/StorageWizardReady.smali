.class public Lcom/android/exsettings/deviceinfo/StorageWizardReady;
.super Lcom/android/exsettings/deviceinfo/StorageWizardBase;
.source "StorageWizardReady.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/android/exsettings/deviceinfo/StorageWizardBase;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 27
    invoke-super {p0, p1}, Lcom/android/exsettings/deviceinfo/StorageWizardBase;->onCreate(Landroid/os/Bundle;)V

    .line 28
    iget-object v2, p0, Lcom/android/exsettings/deviceinfo/StorageWizardReady;->mDisk:Landroid/os/storage/DiskInfo;

    if-nez v2, :cond_0

    .line 29
    invoke-virtual {p0}, Lcom/android/exsettings/deviceinfo/StorageWizardReady;->finish()V

    .line 30
    return-void

    .line 32
    :cond_0
    const v2, 0x7f04011b

    invoke-virtual {p0, v2}, Lcom/android/exsettings/deviceinfo/StorageWizardReady;->setContentView(I)V

    .line 34
    new-array v2, v5, [Ljava/lang/String;

    iget-object v3, p0, Lcom/android/exsettings/deviceinfo/StorageWizardReady;->mDisk:Landroid/os/storage/DiskInfo;

    invoke-virtual {v3}, Landroid/os/storage/DiskInfo;->getDescription()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    const v3, 0x7f0c08ca

    invoke-virtual {p0, v3, v2}, Lcom/android/exsettings/deviceinfo/StorageWizardReady;->setHeaderText(I[Ljava/lang/String;)V

    .line 38
    invoke-virtual {p0, v4}, Lcom/android/exsettings/deviceinfo/StorageWizardReady;->findFirstVolume(I)Landroid/os/storage/VolumeInfo;

    move-result-object v1

    .line 39
    .local v1, "publicVol":Landroid/os/storage/VolumeInfo;
    invoke-virtual {p0, v5}, Lcom/android/exsettings/deviceinfo/StorageWizardReady;->findFirstVolume(I)Landroid/os/storage/VolumeInfo;

    move-result-object v0

    .line 40
    .local v0, "privateVol":Landroid/os/storage/VolumeInfo;
    if-eqz v1, :cond_2

    .line 41
    invoke-virtual {p0, v4}, Lcom/android/exsettings/deviceinfo/StorageWizardReady;->setIllustrationInternal(Z)V

    .line 42
    new-array v2, v5, [Ljava/lang/String;

    .line 43
    iget-object v3, p0, Lcom/android/exsettings/deviceinfo/StorageWizardReady;->mDisk:Landroid/os/storage/DiskInfo;

    invoke-virtual {v3}, Landroid/os/storage/DiskInfo;->getDescription()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    .line 42
    const v3, 0x7f0c08cb

    invoke-virtual {p0, v3, v2}, Lcom/android/exsettings/deviceinfo/StorageWizardReady;->setBodyText(I[Ljava/lang/String;)V

    .line 50
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/exsettings/deviceinfo/StorageWizardReady;->getNextButton()Landroid/widget/Button;

    move-result-object v2

    const v3, 0x7f0c05da

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    .line 26
    return-void

    .line 44
    :cond_2
    if-eqz v0, :cond_1

    .line 45
    invoke-virtual {p0, v5}, Lcom/android/exsettings/deviceinfo/StorageWizardReady;->setIllustrationInternal(Z)V

    .line 46
    new-array v2, v5, [Ljava/lang/String;

    .line 47
    iget-object v3, p0, Lcom/android/exsettings/deviceinfo/StorageWizardReady;->mDisk:Landroid/os/storage/DiskInfo;

    invoke-virtual {v3}, Landroid/os/storage/DiskInfo;->getDescription()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    .line 46
    const v3, 0x7f0c08cc

    invoke-virtual {p0, v3, v2}, Lcom/android/exsettings/deviceinfo/StorageWizardReady;->setBodyText(I[Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onNavigateNext()V
    .locals 0

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/android/exsettings/deviceinfo/StorageWizardReady;->finishAffinity()V

    .line 54
    return-void
.end method
