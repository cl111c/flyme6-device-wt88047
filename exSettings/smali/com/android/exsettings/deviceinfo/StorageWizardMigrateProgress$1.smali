.class Lcom/android/exsettings/deviceinfo/StorageWizardMigrateProgress$1;
.super Landroid/content/pm/PackageManager$MoveCallback;
.source "StorageWizardMigrateProgress.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/deviceinfo/StorageWizardMigrateProgress;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/deviceinfo/StorageWizardMigrateProgress;


# direct methods
.method constructor <init>(Lcom/android/exsettings/deviceinfo/StorageWizardMigrateProgress;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/exsettings/deviceinfo/StorageWizardMigrateProgress;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/android/exsettings/deviceinfo/StorageWizardMigrateProgress$1;->this$0:Lcom/android/exsettings/deviceinfo/StorageWizardMigrateProgress;

    invoke-direct {p0}, Landroid/content/pm/PackageManager$MoveCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onStatusChanged(IIJ)V
    .locals 6
    .param p1, "moveId"    # I
    .param p2, "status"    # I
    .param p3, "estMillis"    # J

    .prologue
    .line 66
    iget-object v3, p0, Lcom/android/exsettings/deviceinfo/StorageWizardMigrateProgress$1;->this$0:Lcom/android/exsettings/deviceinfo/StorageWizardMigrateProgress;

    invoke-static {v3}, Lcom/android/exsettings/deviceinfo/StorageWizardMigrateProgress;->-get0(Lcom/android/exsettings/deviceinfo/StorageWizardMigrateProgress;)I

    move-result v3

    if-eq v3, p1, :cond_0

    return-void

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/android/exsettings/deviceinfo/StorageWizardMigrateProgress$1;->this$0:Lcom/android/exsettings/deviceinfo/StorageWizardMigrateProgress;

    .line 69
    .local v0, "context":Landroid/content/Context;
    invoke-static {p2}, Landroid/content/pm/PackageManager;->isMoveStatusFinished(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 70
    const-string/jumbo v3, "StorageSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Finished with status "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    const/16 v3, -0x64

    if-ne p2, v3, :cond_2

    .line 72
    iget-object v3, p0, Lcom/android/exsettings/deviceinfo/StorageWizardMigrateProgress$1;->this$0:Lcom/android/exsettings/deviceinfo/StorageWizardMigrateProgress;

    iget-object v3, v3, Lcom/android/exsettings/deviceinfo/StorageWizardMigrateProgress;->mDisk:Landroid/os/storage/DiskInfo;

    if-eqz v3, :cond_1

    .line 75
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v3, "com.android.systemui.action.FINISH_WIZARD"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 76
    .local v1, "finishIntent":Landroid/content/Intent;
    const/high16 v3, 0x40000000    # 2.0f

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 77
    iget-object v3, p0, Lcom/android/exsettings/deviceinfo/StorageWizardMigrateProgress$1;->this$0:Lcom/android/exsettings/deviceinfo/StorageWizardMigrateProgress;

    invoke-virtual {v3, v1}, Lcom/android/exsettings/deviceinfo/StorageWizardMigrateProgress;->sendBroadcast(Landroid/content/Intent;)V

    .line 79
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/android/exsettings/deviceinfo/StorageWizardReady;

    invoke-direct {v2, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 80
    .local v2, "intent":Landroid/content/Intent;
    const-string/jumbo v3, "android.os.storage.extra.DISK_ID"

    iget-object v4, p0, Lcom/android/exsettings/deviceinfo/StorageWizardMigrateProgress$1;->this$0:Lcom/android/exsettings/deviceinfo/StorageWizardMigrateProgress;

    iget-object v4, v4, Lcom/android/exsettings/deviceinfo/StorageWizardMigrateProgress;->mDisk:Landroid/os/storage/DiskInfo;

    invoke-virtual {v4}, Landroid/os/storage/DiskInfo;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 81
    iget-object v3, p0, Lcom/android/exsettings/deviceinfo/StorageWizardMigrateProgress$1;->this$0:Lcom/android/exsettings/deviceinfo/StorageWizardMigrateProgress;

    invoke-virtual {v3, v2}, Lcom/android/exsettings/deviceinfo/StorageWizardMigrateProgress;->startActivity(Landroid/content/Intent;)V

    .line 87
    .end local v1    # "finishIntent":Landroid/content/Intent;
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/android/exsettings/deviceinfo/StorageWizardMigrateProgress$1;->this$0:Lcom/android/exsettings/deviceinfo/StorageWizardMigrateProgress;

    invoke-virtual {v3}, Lcom/android/exsettings/deviceinfo/StorageWizardMigrateProgress;->finishAffinity()V

    .line 65
    :goto_1
    return-void

    .line 84
    :cond_2
    iget-object v3, p0, Lcom/android/exsettings/deviceinfo/StorageWizardMigrateProgress$1;->this$0:Lcom/android/exsettings/deviceinfo/StorageWizardMigrateProgress;

    const v4, 0x7f0c09fb

    invoke-virtual {v3, v4}, Lcom/android/exsettings/deviceinfo/StorageWizardMigrateProgress;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 85
    const/4 v4, 0x1

    .line 84
    invoke-static {v0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 90
    :cond_3
    iget-object v3, p0, Lcom/android/exsettings/deviceinfo/StorageWizardMigrateProgress$1;->this$0:Lcom/android/exsettings/deviceinfo/StorageWizardMigrateProgress;

    invoke-virtual {v3, p2}, Lcom/android/exsettings/deviceinfo/StorageWizardMigrateProgress;->setCurrentProgress(I)V

    goto :goto_1
.end method
