.class Lcom/android/exsettings/deviceinfo/StorageWizardMigrateConfirm$1;
.super Lcom/android/exsettings/deviceinfo/MigrateEstimateTask;
.source "StorageWizardMigrateConfirm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exsettings/deviceinfo/StorageWizardMigrateConfirm;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/deviceinfo/StorageWizardMigrateConfirm;

.field final synthetic val$sourceDescrip:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/exsettings/deviceinfo/StorageWizardMigrateConfirm;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/exsettings/deviceinfo/StorageWizardMigrateConfirm;
    .param p2, "$anonymous0"    # Landroid/content/Context;
    .param p3, "val$sourceDescrip"    # Ljava/lang/String;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/android/exsettings/deviceinfo/StorageWizardMigrateConfirm$1;->this$0:Lcom/android/exsettings/deviceinfo/StorageWizardMigrateConfirm;

    iput-object p3, p0, Lcom/android/exsettings/deviceinfo/StorageWizardMigrateConfirm$1;->val$sourceDescrip:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/android/exsettings/deviceinfo/MigrateEstimateTask;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onPostExecute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "size"    # Ljava/lang/String;
    .param p2, "time"    # Ljava/lang/String;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/exsettings/deviceinfo/StorageWizardMigrateConfirm$1;->this$0:Lcom/android/exsettings/deviceinfo/StorageWizardMigrateConfirm;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    .line 61
    iget-object v2, p0, Lcom/android/exsettings/deviceinfo/StorageWizardMigrateConfirm$1;->val$sourceDescrip:Ljava/lang/String;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    .line 60
    const v2, 0x7f0c08c6

    invoke-virtual {v0, v2, v1}, Lcom/android/exsettings/deviceinfo/StorageWizardMigrateConfirm;->setBodyText(I[Ljava/lang/String;)V

    .line 59
    return-void
.end method
