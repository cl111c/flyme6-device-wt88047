.class public Lcom/android/exsettings/deviceinfo/StorageWizardMoveProgress;
.super Lcom/android/exsettings/deviceinfo/StorageWizardBase;
.source "StorageWizardMoveProgress.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exsettings/deviceinfo/StorageWizardMoveProgress$1;
    }
.end annotation


# instance fields
.field private final mCallback:Landroid/content/pm/PackageManager$MoveCallback;

.field private mMoveId:I


# direct methods
.method static synthetic -get0(Lcom/android/exsettings/deviceinfo/StorageWizardMoveProgress;)I
    .locals 1

    iget v0, p0, Lcom/android/exsettings/deviceinfo/StorageWizardMoveProgress;->mMoveId:I

    return v0
.end method

.method static synthetic -wrap0(Lcom/android/exsettings/deviceinfo/StorageWizardMoveProgress;I)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "returnCode"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/exsettings/deviceinfo/StorageWizardMoveProgress;->moveStatusToMessage(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/android/exsettings/deviceinfo/StorageWizardBase;-><init>()V

    .line 66
    new-instance v0, Lcom/android/exsettings/deviceinfo/StorageWizardMoveProgress$1;

    invoke-direct {v0, p0}, Lcom/android/exsettings/deviceinfo/StorageWizardMoveProgress$1;-><init>(Lcom/android/exsettings/deviceinfo/StorageWizardMoveProgress;)V

    iput-object v0, p0, Lcom/android/exsettings/deviceinfo/StorageWizardMoveProgress;->mCallback:Landroid/content/pm/PackageManager$MoveCallback;

    .line 33
    return-void
.end method

.method private moveStatusToMessage(I)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "returnCode"    # I

    .prologue
    const v0, 0x7f0c09fb

    .line 86
    packed-switch p1, :pswitch_data_0

    .line 99
    invoke-virtual {p0, v0}, Lcom/android/exsettings/deviceinfo/StorageWizardMoveProgress;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 88
    :pswitch_0
    invoke-virtual {p0, v0}, Lcom/android/exsettings/deviceinfo/StorageWizardMoveProgress;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 90
    :pswitch_1
    const v0, 0x7f0c09fc

    invoke-virtual {p0, v0}, Lcom/android/exsettings/deviceinfo/StorageWizardMoveProgress;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 92
    :pswitch_2
    const v0, 0x7f0c09fd

    invoke-virtual {p0, v0}, Lcom/android/exsettings/deviceinfo/StorageWizardMoveProgress;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 94
    :pswitch_3
    const v0, 0x7f0c09fe

    invoke-virtual {p0, v0}, Lcom/android/exsettings/deviceinfo/StorageWizardMoveProgress;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 96
    :pswitch_4
    const v0, 0x7f0c09ff

    invoke-virtual {p0, v0}, Lcom/android/exsettings/deviceinfo/StorageWizardMoveProgress;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 86
    :pswitch_data_0
    .packed-switch -0x5
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 38
    invoke-super {p0, p1}, Lcom/android/exsettings/deviceinfo/StorageWizardBase;->onCreate(Landroid/os/Bundle;)V

    .line 39
    iget-object v2, p0, Lcom/android/exsettings/deviceinfo/StorageWizardMoveProgress;->mVolume:Landroid/os/storage/VolumeInfo;

    if-nez v2, :cond_0

    .line 40
    invoke-virtual {p0}, Lcom/android/exsettings/deviceinfo/StorageWizardMoveProgress;->finish()V

    .line 41
    return-void

    .line 43
    :cond_0
    const v2, 0x7f04011f

    invoke-virtual {p0, v2}, Lcom/android/exsettings/deviceinfo/StorageWizardMoveProgress;->setContentView(I)V

    .line 45
    invoke-virtual {p0}, Lcom/android/exsettings/deviceinfo/StorageWizardMoveProgress;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "android.content.pm.extra.MOVE_ID"

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/exsettings/deviceinfo/StorageWizardMoveProgress;->mMoveId:I

    .line 46
    invoke-virtual {p0}, Lcom/android/exsettings/deviceinfo/StorageWizardMoveProgress;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "android.intent.extra.TITLE"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 47
    .local v0, "appName":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/exsettings/deviceinfo/StorageWizardMoveProgress;->mStorage:Landroid/os/storage/StorageManager;

    iget-object v3, p0, Lcom/android/exsettings/deviceinfo/StorageWizardMoveProgress;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v2, v3}, Landroid/os/storage/StorageManager;->getBestVolumeDescription(Landroid/os/storage/VolumeInfo;)Ljava/lang/String;

    move-result-object v1

    .line 49
    .local v1, "volumeName":Ljava/lang/String;
    invoke-virtual {p0, v5}, Lcom/android/exsettings/deviceinfo/StorageWizardMoveProgress;->setIllustrationInternal(Z)V

    .line 50
    new-array v2, v5, [Ljava/lang/String;

    aput-object v0, v2, v6

    const v3, 0x7f0c08cf

    invoke-virtual {p0, v3, v2}, Lcom/android/exsettings/deviceinfo/StorageWizardMoveProgress;->setHeaderText(I[Ljava/lang/String;)V

    .line 51
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    aput-object v1, v2, v6

    aput-object v0, v2, v5

    const v3, 0x7f0c08d0

    invoke-virtual {p0, v3, v2}, Lcom/android/exsettings/deviceinfo/StorageWizardMoveProgress;->setBodyText(I[Ljava/lang/String;)V

    .line 53
    invoke-virtual {p0}, Lcom/android/exsettings/deviceinfo/StorageWizardMoveProgress;->getNextButton()Landroid/widget/Button;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 56
    invoke-virtual {p0}, Lcom/android/exsettings/deviceinfo/StorageWizardMoveProgress;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/exsettings/deviceinfo/StorageWizardMoveProgress;->mCallback:Landroid/content/pm/PackageManager$MoveCallback;

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->registerMoveCallback(Landroid/content/pm/PackageManager$MoveCallback;Landroid/os/Handler;)V

    .line 57
    iget-object v2, p0, Lcom/android/exsettings/deviceinfo/StorageWizardMoveProgress;->mCallback:Landroid/content/pm/PackageManager$MoveCallback;

    iget v3, p0, Lcom/android/exsettings/deviceinfo/StorageWizardMoveProgress;->mMoveId:I

    invoke-virtual {p0}, Lcom/android/exsettings/deviceinfo/StorageWizardMoveProgress;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iget v5, p0, Lcom/android/exsettings/deviceinfo/StorageWizardMoveProgress;->mMoveId:I

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getMoveStatus(I)I

    move-result v4

    const-wide/16 v6, -0x1

    invoke-virtual {v2, v3, v4, v6, v7}, Landroid/content/pm/PackageManager$MoveCallback;->onStatusChanged(IIJ)V

    .line 37
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 62
    invoke-super {p0}, Lcom/android/exsettings/deviceinfo/StorageWizardBase;->onDestroy()V

    .line 63
    invoke-virtual {p0}, Lcom/android/exsettings/deviceinfo/StorageWizardMoveProgress;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/exsettings/deviceinfo/StorageWizardMoveProgress;->mCallback:Landroid/content/pm/PackageManager$MoveCallback;

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->unregisterMoveCallback(Landroid/content/pm/PackageManager$MoveCallback;)V

    .line 61
    return-void
.end method
