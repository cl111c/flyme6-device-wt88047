.class Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings$RenameFragment$1;
.super Ljava/lang/Object;
.source "PrivateVolumeSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings$RenameFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings$RenameFragment;

.field final synthetic val$fsUuid:Ljava/lang/String;

.field final synthetic val$nickname:Landroid/widget/EditText;

.field final synthetic val$storageManager:Landroid/os/storage/StorageManager;


# direct methods
.method constructor <init>(Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings$RenameFragment;Landroid/os/storage/StorageManager;Ljava/lang/String;Landroid/widget/EditText;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings$RenameFragment;
    .param p2, "val$storageManager"    # Landroid/os/storage/StorageManager;
    .param p3, "val$fsUuid"    # Ljava/lang/String;
    .param p4, "val$nickname"    # Landroid/widget/EditText;

    .prologue
    .line 591
    iput-object p1, p0, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings$RenameFragment$1;->this$1:Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings$RenameFragment;

    iput-object p2, p0, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings$RenameFragment$1;->val$storageManager:Landroid/os/storage/StorageManager;

    iput-object p3, p0, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings$RenameFragment$1;->val$fsUuid:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings$RenameFragment$1;->val$nickname:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 595
    iget-object v0, p0, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings$RenameFragment$1;->val$storageManager:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings$RenameFragment$1;->val$fsUuid:Ljava/lang/String;

    .line 596
    iget-object v2, p0, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings$RenameFragment$1;->val$nickname:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    .line 595
    invoke-virtual {v0, v1, v2}, Landroid/os/storage/StorageManager;->setVolumeNickname(Ljava/lang/String;Ljava/lang/String;)V

    .line 593
    return-void
.end method
