.class public Lcom/android/exsettings/deviceinfo/StorageWizardMigrateConfirm;
.super Lcom/android/exsettings/deviceinfo/StorageWizardBase;
.source "StorageWizardMigrateConfirm.java"


# instance fields
.field private mEstimate:Lcom/android/exsettings/deviceinfo/MigrateEstimateTask;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/android/exsettings/deviceinfo/StorageWizardBase;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 34
    invoke-super {p0, p1}, Lcom/android/exsettings/deviceinfo/StorageWizardBase;->onCreate(Landroid/os/Bundle;)V

    .line 35
    const v3, 0x7f04011b

    invoke-virtual {p0, v3}, Lcom/android/exsettings/deviceinfo/StorageWizardMigrateConfirm;->setContentView(I)V

    .line 38
    iget-object v3, p0, Lcom/android/exsettings/deviceinfo/StorageWizardMigrateConfirm;->mVolume:Landroid/os/storage/VolumeInfo;

    if-nez v3, :cond_0

    .line 39
    invoke-virtual {p0, v6}, Lcom/android/exsettings/deviceinfo/StorageWizardMigrateConfirm;->findFirstVolume(I)Landroid/os/storage/VolumeInfo;

    move-result-object v3

    iput-object v3, p0, Lcom/android/exsettings/deviceinfo/StorageWizardMigrateConfirm;->mVolume:Landroid/os/storage/VolumeInfo;

    .line 42
    :cond_0
    invoke-virtual {p0}, Lcom/android/exsettings/deviceinfo/StorageWizardMigrateConfirm;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/pm/PackageManager;->getPrimaryStorageCurrentVolume()Landroid/os/storage/VolumeInfo;

    move-result-object v1

    .line 43
    .local v1, "sourceVol":Landroid/os/storage/VolumeInfo;
    if-eqz v1, :cond_1

    iget-object v3, p0, Lcom/android/exsettings/deviceinfo/StorageWizardMigrateConfirm;->mVolume:Landroid/os/storage/VolumeInfo;

    if-nez v3, :cond_2

    .line 44
    :cond_1
    const-string/jumbo v3, "StorageSettings"

    const-string/jumbo v4, "Missing either source or target volume"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    invoke-virtual {p0}, Lcom/android/exsettings/deviceinfo/StorageWizardMigrateConfirm;->finish()V

    .line 46
    return-void

    .line 49
    :cond_2
    iget-object v3, p0, Lcom/android/exsettings/deviceinfo/StorageWizardMigrateConfirm;->mStorage:Landroid/os/storage/StorageManager;

    invoke-virtual {v3, v1}, Landroid/os/storage/StorageManager;->getBestVolumeDescription(Landroid/os/storage/VolumeInfo;)Ljava/lang/String;

    move-result-object v0

    .line 50
    .local v0, "sourceDescrip":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/exsettings/deviceinfo/StorageWizardMigrateConfirm;->mStorage:Landroid/os/storage/StorageManager;

    iget-object v4, p0, Lcom/android/exsettings/deviceinfo/StorageWizardMigrateConfirm;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v3, v4}, Landroid/os/storage/StorageManager;->getBestVolumeDescription(Landroid/os/storage/VolumeInfo;)Ljava/lang/String;

    move-result-object v2

    .line 52
    .local v2, "targetDescrip":Ljava/lang/String;
    invoke-virtual {p0, v6}, Lcom/android/exsettings/deviceinfo/StorageWizardMigrateConfirm;->setIllustrationInternal(Z)V

    .line 53
    new-array v3, v6, [Ljava/lang/String;

    aput-object v2, v3, v5

    const v4, 0x7f0c08c5

    invoke-virtual {p0, v4, v3}, Lcom/android/exsettings/deviceinfo/StorageWizardMigrateConfirm;->setHeaderText(I[Ljava/lang/String;)V

    .line 54
    new-array v3, v5, [Ljava/lang/String;

    const v4, 0x7f0c0869

    invoke-virtual {p0, v4, v3}, Lcom/android/exsettings/deviceinfo/StorageWizardMigrateConfirm;->setBodyText(I[Ljava/lang/String;)V

    .line 55
    new-array v3, v6, [Ljava/lang/String;

    aput-object v2, v3, v5

    const v4, 0x7f0c08c9

    invoke-virtual {p0, v4, v3}, Lcom/android/exsettings/deviceinfo/StorageWizardMigrateConfirm;->setSecondaryBodyText(I[Ljava/lang/String;)V

    .line 57
    new-instance v3, Lcom/android/exsettings/deviceinfo/StorageWizardMigrateConfirm$1;

    invoke-direct {v3, p0, p0, v0}, Lcom/android/exsettings/deviceinfo/StorageWizardMigrateConfirm$1;-><init>(Lcom/android/exsettings/deviceinfo/StorageWizardMigrateConfirm;Landroid/content/Context;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/exsettings/deviceinfo/StorageWizardMigrateConfirm;->mEstimate:Lcom/android/exsettings/deviceinfo/MigrateEstimateTask;

    .line 65
    iget-object v3, p0, Lcom/android/exsettings/deviceinfo/StorageWizardMigrateConfirm;->mEstimate:Lcom/android/exsettings/deviceinfo/MigrateEstimateTask;

    invoke-virtual {p0}, Lcom/android/exsettings/deviceinfo/StorageWizardMigrateConfirm;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/exsettings/deviceinfo/MigrateEstimateTask;->copyFrom(Landroid/content/Intent;)V

    .line 66
    iget-object v3, p0, Lcom/android/exsettings/deviceinfo/StorageWizardMigrateConfirm;->mEstimate:Lcom/android/exsettings/deviceinfo/MigrateEstimateTask;

    new-array v4, v5, [Ljava/lang/Void;

    invoke-virtual {v3, v4}, Lcom/android/exsettings/deviceinfo/MigrateEstimateTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 68
    invoke-virtual {p0}, Lcom/android/exsettings/deviceinfo/StorageWizardMigrateConfirm;->getNextButton()Landroid/widget/Button;

    move-result-object v3

    const v4, 0x7f0c08c7

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(I)V

    .line 33
    return-void
.end method

.method public onNavigateNext()V
    .locals 4

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/android/exsettings/deviceinfo/StorageWizardMigrateConfirm;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/exsettings/deviceinfo/StorageWizardMigrateConfirm;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->movePrimaryStorage(Landroid/os/storage/VolumeInfo;)I

    move-result v1

    .line 75
    .local v1, "moveId":I
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/android/exsettings/deviceinfo/StorageWizardMigrateProgress;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 76
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "android.os.storage.extra.VOLUME_ID"

    iget-object v3, p0, Lcom/android/exsettings/deviceinfo/StorageWizardMigrateConfirm;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v3}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 77
    const-string/jumbo v2, "android.content.pm.extra.MOVE_ID"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 78
    invoke-virtual {p0, v0}, Lcom/android/exsettings/deviceinfo/StorageWizardMigrateConfirm;->startActivity(Landroid/content/Intent;)V

    .line 79
    invoke-virtual {p0}, Lcom/android/exsettings/deviceinfo/StorageWizardMigrateConfirm;->finishAffinity()V

    .line 72
    return-void
.end method
