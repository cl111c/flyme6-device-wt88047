.class Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings$2;
.super Landroid/os/storage/StorageEventListener;
.source "PrivateVolumeSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;


# direct methods
.method constructor <init>(Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;

    .prologue
    .line 538
    iput-object p1, p0, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings$2;->this$0:Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;

    invoke-direct {p0}, Landroid/os/storage/StorageEventListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onVolumeRecordChanged(Landroid/os/storage/VolumeRecord;)V
    .locals 3
    .param p1, "rec"    # Landroid/os/storage/VolumeRecord;

    .prologue
    .line 549
    iget-object v0, p0, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings$2;->this$0:Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;

    invoke-static {v0}, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->-get1(Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;)Landroid/os/storage/VolumeInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->getFsUuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/storage/VolumeRecord;->getFsUuid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 550
    iget-object v0, p0, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings$2;->this$0:Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;

    iget-object v1, p0, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings$2;->this$0:Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;

    invoke-static {v1}, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->-get0(Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;)Landroid/os/storage/StorageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings$2;->this$0:Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;

    invoke-static {v2}, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->-get2(Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/storage/StorageManager;->findVolumeById(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->-set0(Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;Landroid/os/storage/VolumeInfo;)Landroid/os/storage/VolumeInfo;

    .line 551
    iget-object v0, p0, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings$2;->this$0:Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;

    invoke-virtual {v0}, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->update()V

    .line 548
    :cond_0
    return-void
.end method

.method public onVolumeStateChanged(Landroid/os/storage/VolumeInfo;II)V
    .locals 2
    .param p1, "vol"    # Landroid/os/storage/VolumeInfo;
    .param p2, "oldState"    # I
    .param p3, "newState"    # I

    .prologue
    .line 541
    iget-object v0, p0, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings$2;->this$0:Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;

    invoke-static {v0}, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->-get1(Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;)Landroid/os/storage/VolumeInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 542
    iget-object v0, p0, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings$2;->this$0:Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;

    invoke-static {v0, p1}, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->-set0(Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;Landroid/os/storage/VolumeInfo;)Landroid/os/storage/VolumeInfo;

    .line 543
    iget-object v0, p0, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings$2;->this$0:Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;

    invoke-virtual {v0}, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->update()V

    .line 540
    :cond_0
    return-void
.end method
