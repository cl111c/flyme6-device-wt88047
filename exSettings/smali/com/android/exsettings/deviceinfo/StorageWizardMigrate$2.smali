.class Lcom/android/exsettings/deviceinfo/StorageWizardMigrate$2;
.super Lcom/android/exsettings/deviceinfo/MigrateEstimateTask;
.source "StorageWizardMigrate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exsettings/deviceinfo/StorageWizardMigrate;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/deviceinfo/StorageWizardMigrate;


# direct methods
.method constructor <init>(Lcom/android/exsettings/deviceinfo/StorageWizardMigrate;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/exsettings/deviceinfo/StorageWizardMigrate;
    .param p2, "$anonymous0"    # Landroid/content/Context;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/android/exsettings/deviceinfo/StorageWizardMigrate$2;->this$0:Lcom/android/exsettings/deviceinfo/StorageWizardMigrate;

    invoke-direct {p0, p2}, Lcom/android/exsettings/deviceinfo/MigrateEstimateTask;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onPostExecute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "size"    # Ljava/lang/String;
    .param p2, "time"    # Ljava/lang/String;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/exsettings/deviceinfo/StorageWizardMigrate$2;->this$0:Lcom/android/exsettings/deviceinfo/StorageWizardMigrate;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    .line 59
    iget-object v2, p0, Lcom/android/exsettings/deviceinfo/StorageWizardMigrate$2;->this$0:Lcom/android/exsettings/deviceinfo/StorageWizardMigrate;

    iget-object v2, v2, Lcom/android/exsettings/deviceinfo/StorageWizardMigrate;->mDisk:Landroid/os/storage/DiskInfo;

    invoke-virtual {v2}, Landroid/os/storage/DiskInfo;->getDescription()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p1, v1, v2

    .line 58
    const v2, 0x7f0c08c2

    invoke-virtual {v0, v2, v1}, Lcom/android/exsettings/deviceinfo/StorageWizardMigrate;->setBodyText(I[Ljava/lang/String;)V

    .line 57
    return-void
.end method
