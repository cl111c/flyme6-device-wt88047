.class public Lcom/android/exsettings/deviceinfo/StorageWizardMigrateProgress;
.super Lcom/android/exsettings/deviceinfo/StorageWizardBase;
.source "StorageWizardMigrateProgress.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exsettings/deviceinfo/StorageWizardMigrateProgress$1;
    }
.end annotation


# instance fields
.field private final mCallback:Landroid/content/pm/PackageManager$MoveCallback;

.field private mMoveId:I


# direct methods
.method static synthetic -get0(Lcom/android/exsettings/deviceinfo/StorageWizardMigrateProgress;)I
    .locals 1

    iget v0, p0, Lcom/android/exsettings/deviceinfo/StorageWizardMigrateProgress;->mMoveId:I

    return v0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/android/exsettings/deviceinfo/StorageWizardBase;-><init>()V

    .line 63
    new-instance v0, Lcom/android/exsettings/deviceinfo/StorageWizardMigrateProgress$1;

    invoke-direct {v0, p0}, Lcom/android/exsettings/deviceinfo/StorageWizardMigrateProgress$1;-><init>(Lcom/android/exsettings/deviceinfo/StorageWizardMigrateProgress;)V

    iput-object v0, p0, Lcom/android/exsettings/deviceinfo/StorageWizardMigrateProgress;->mCallback:Landroid/content/pm/PackageManager$MoveCallback;

    .line 35
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 42
    invoke-super {p0, p1}, Lcom/android/exsettings/deviceinfo/StorageWizardBase;->onCreate(Landroid/os/Bundle;)V

    .line 43
    iget-object v1, p0, Lcom/android/exsettings/deviceinfo/StorageWizardMigrateProgress;->mVolume:Landroid/os/storage/VolumeInfo;

    if-nez v1, :cond_0

    .line 44
    invoke-virtual {p0}, Lcom/android/exsettings/deviceinfo/StorageWizardMigrateProgress;->finish()V

    .line 45
    return-void

    .line 47
    :cond_0
    const v1, 0x7f04011f

    invoke-virtual {p0, v1}, Lcom/android/exsettings/deviceinfo/StorageWizardMigrateProgress;->setContentView(I)V

    .line 49
    invoke-virtual {p0}, Lcom/android/exsettings/deviceinfo/StorageWizardMigrateProgress;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "android.content.pm.extra.MOVE_ID"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/exsettings/deviceinfo/StorageWizardMigrateProgress;->mMoveId:I

    .line 51
    iget-object v1, p0, Lcom/android/exsettings/deviceinfo/StorageWizardMigrateProgress;->mStorage:Landroid/os/storage/StorageManager;

    iget-object v2, p0, Lcom/android/exsettings/deviceinfo/StorageWizardMigrateProgress;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v1, v2}, Landroid/os/storage/StorageManager;->getBestVolumeDescription(Landroid/os/storage/VolumeInfo;)Ljava/lang/String;

    move-result-object v0

    .line 52
    .local v0, "descrip":Ljava/lang/String;
    invoke-virtual {p0, v4}, Lcom/android/exsettings/deviceinfo/StorageWizardMigrateProgress;->setIllustrationInternal(Z)V

    .line 53
    new-array v1, v4, [Ljava/lang/String;

    aput-object v0, v1, v5

    const v2, 0x7f0c08c8

    invoke-virtual {p0, v2, v1}, Lcom/android/exsettings/deviceinfo/StorageWizardMigrateProgress;->setHeaderText(I[Ljava/lang/String;)V

    .line 54
    new-array v1, v4, [Ljava/lang/String;

    aput-object v0, v1, v5

    const v2, 0x7f0c08c9

    invoke-virtual {p0, v2, v1}, Lcom/android/exsettings/deviceinfo/StorageWizardMigrateProgress;->setBodyText(I[Ljava/lang/String;)V

    .line 56
    invoke-virtual {p0}, Lcom/android/exsettings/deviceinfo/StorageWizardMigrateProgress;->getNextButton()Landroid/widget/Button;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 59
    invoke-virtual {p0}, Lcom/android/exsettings/deviceinfo/StorageWizardMigrateProgress;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/exsettings/deviceinfo/StorageWizardMigrateProgress;->mCallback:Landroid/content/pm/PackageManager$MoveCallback;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->registerMoveCallback(Landroid/content/pm/PackageManager$MoveCallback;Landroid/os/Handler;)V

    .line 60
    iget-object v1, p0, Lcom/android/exsettings/deviceinfo/StorageWizardMigrateProgress;->mCallback:Landroid/content/pm/PackageManager$MoveCallback;

    iget v2, p0, Lcom/android/exsettings/deviceinfo/StorageWizardMigrateProgress;->mMoveId:I

    invoke-virtual {p0}, Lcom/android/exsettings/deviceinfo/StorageWizardMigrateProgress;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iget v4, p0, Lcom/android/exsettings/deviceinfo/StorageWizardMigrateProgress;->mMoveId:I

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getMoveStatus(I)I

    move-result v3

    const-wide/16 v4, -0x1

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/content/pm/PackageManager$MoveCallback;->onStatusChanged(IIJ)V

    .line 41
    return-void
.end method
