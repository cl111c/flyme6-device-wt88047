.class public Lcom/android/exsettings/deviceinfo/StorageWizardFormatConfirm;
.super Lcom/android/exsettings/deviceinfo/StorageWizardBase;
.source "StorageWizardFormatConfirm.java"


# instance fields
.field private mFormatPrivate:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/android/exsettings/deviceinfo/StorageWizardBase;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 33
    invoke-super {p0, p1}, Lcom/android/exsettings/deviceinfo/StorageWizardBase;->onCreate(Landroid/os/Bundle;)V

    .line 34
    iget-object v0, p0, Lcom/android/exsettings/deviceinfo/StorageWizardFormatConfirm;->mDisk:Landroid/os/storage/DiskInfo;

    if-nez v0, :cond_0

    .line 35
    invoke-virtual {p0}, Lcom/android/exsettings/deviceinfo/StorageWizardFormatConfirm;->finish()V

    .line 36
    return-void

    .line 38
    :cond_0
    const v0, 0x7f04011b

    invoke-virtual {p0, v0}, Lcom/android/exsettings/deviceinfo/StorageWizardFormatConfirm;->setContentView(I)V

    .line 40
    invoke-virtual {p0}, Lcom/android/exsettings/deviceinfo/StorageWizardFormatConfirm;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "format_private"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/exsettings/deviceinfo/StorageWizardFormatConfirm;->mFormatPrivate:Z

    .line 41
    iget-boolean v0, p0, Lcom/android/exsettings/deviceinfo/StorageWizardFormatConfirm;->mFormatPrivate:Z

    invoke-virtual {p0, v0}, Lcom/android/exsettings/deviceinfo/StorageWizardFormatConfirm;->setIllustrationInternal(Z)V

    .line 43
    iget-boolean v0, p0, Lcom/android/exsettings/deviceinfo/StorageWizardFormatConfirm;->mFormatPrivate:Z

    if-eqz v0, :cond_1

    .line 44
    new-array v0, v2, [Ljava/lang/String;

    const v1, 0x7f0c08ba

    invoke-virtual {p0, v1, v0}, Lcom/android/exsettings/deviceinfo/StorageWizardFormatConfirm;->setHeaderText(I[Ljava/lang/String;)V

    .line 45
    new-array v0, v3, [Ljava/lang/String;

    .line 46
    iget-object v1, p0, Lcom/android/exsettings/deviceinfo/StorageWizardFormatConfirm;->mDisk:Landroid/os/storage/DiskInfo;

    invoke-virtual {v1}, Landroid/os/storage/DiskInfo;->getDescription()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    .line 45
    const v1, 0x7f0c08bb

    invoke-virtual {p0, v1, v0}, Lcom/android/exsettings/deviceinfo/StorageWizardFormatConfirm;->setBodyText(I[Ljava/lang/String;)V

    .line 53
    :goto_0
    invoke-virtual {p0}, Lcom/android/exsettings/deviceinfo/StorageWizardFormatConfirm;->getNextButton()Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f0c08be

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 54
    invoke-virtual {p0}, Lcom/android/exsettings/deviceinfo/StorageWizardFormatConfirm;->getNextButton()Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f0e009b

    invoke-virtual {p0, v1}, Lcom/android/exsettings/deviceinfo/StorageWizardFormatConfirm;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 32
    return-void

    .line 48
    :cond_1
    new-array v0, v2, [Ljava/lang/String;

    const v1, 0x7f0c08bc

    invoke-virtual {p0, v1, v0}, Lcom/android/exsettings/deviceinfo/StorageWizardFormatConfirm;->setHeaderText(I[Ljava/lang/String;)V

    .line 49
    new-array v0, v3, [Ljava/lang/String;

    .line 50
    iget-object v1, p0, Lcom/android/exsettings/deviceinfo/StorageWizardFormatConfirm;->mDisk:Landroid/os/storage/DiskInfo;

    invoke-virtual {v1}, Landroid/os/storage/DiskInfo;->getDescription()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    .line 49
    const v1, 0x7f0c08bd

    invoke-virtual {p0, v1, v0}, Lcom/android/exsettings/deviceinfo/StorageWizardFormatConfirm;->setBodyText(I[Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onNavigateNext()V
    .locals 4

    .prologue
    .line 59
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/exsettings/deviceinfo/StorageWizardFormatProgress;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 60
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "android.os.storage.extra.DISK_ID"

    iget-object v2, p0, Lcom/android/exsettings/deviceinfo/StorageWizardFormatConfirm;->mDisk:Landroid/os/storage/DiskInfo;

    invoke-virtual {v2}, Landroid/os/storage/DiskInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 61
    const-string/jumbo v1, "format_private"

    iget-boolean v2, p0, Lcom/android/exsettings/deviceinfo/StorageWizardFormatConfirm;->mFormatPrivate:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 62
    const-string/jumbo v1, "forget_uuid"

    invoke-virtual {p0}, Lcom/android/exsettings/deviceinfo/StorageWizardFormatConfirm;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "forget_uuid"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 63
    invoke-virtual {p0, v0}, Lcom/android/exsettings/deviceinfo/StorageWizardFormatConfirm;->startActivity(Landroid/content/Intent;)V

    .line 64
    invoke-virtual {p0}, Lcom/android/exsettings/deviceinfo/StorageWizardFormatConfirm;->finishAffinity()V

    .line 58
    return-void
.end method
