.class Lcom/android/exsettings/deviceinfo/PublicVolumeSettings$1;
.super Landroid/os/storage/StorageEventListener;
.source "PublicVolumeSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/deviceinfo/PublicVolumeSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/deviceinfo/PublicVolumeSettings;


# direct methods
.method constructor <init>(Lcom/android/exsettings/deviceinfo/PublicVolumeSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/exsettings/deviceinfo/PublicVolumeSettings;

    .prologue
    .line 218
    iput-object p1, p0, Lcom/android/exsettings/deviceinfo/PublicVolumeSettings$1;->this$0:Lcom/android/exsettings/deviceinfo/PublicVolumeSettings;

    invoke-direct {p0}, Landroid/os/storage/StorageEventListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onVolumeRecordChanged(Landroid/os/storage/VolumeRecord;)V
    .locals 3
    .param p1, "rec"    # Landroid/os/storage/VolumeRecord;

    .prologue
    .line 229
    iget-object v0, p0, Lcom/android/exsettings/deviceinfo/PublicVolumeSettings$1;->this$0:Lcom/android/exsettings/deviceinfo/PublicVolumeSettings;

    invoke-static {v0}, Lcom/android/exsettings/deviceinfo/PublicVolumeSettings;->-get1(Lcom/android/exsettings/deviceinfo/PublicVolumeSettings;)Landroid/os/storage/VolumeInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->getFsUuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/storage/VolumeRecord;->getFsUuid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/android/exsettings/deviceinfo/PublicVolumeSettings$1;->this$0:Lcom/android/exsettings/deviceinfo/PublicVolumeSettings;

    iget-object v1, p0, Lcom/android/exsettings/deviceinfo/PublicVolumeSettings$1;->this$0:Lcom/android/exsettings/deviceinfo/PublicVolumeSettings;

    invoke-static {v1}, Lcom/android/exsettings/deviceinfo/PublicVolumeSettings;->-get0(Lcom/android/exsettings/deviceinfo/PublicVolumeSettings;)Landroid/os/storage/StorageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/exsettings/deviceinfo/PublicVolumeSettings$1;->this$0:Lcom/android/exsettings/deviceinfo/PublicVolumeSettings;

    invoke-static {v2}, Lcom/android/exsettings/deviceinfo/PublicVolumeSettings;->-get2(Lcom/android/exsettings/deviceinfo/PublicVolumeSettings;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/storage/StorageManager;->findVolumeById(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/exsettings/deviceinfo/PublicVolumeSettings;->-set0(Lcom/android/exsettings/deviceinfo/PublicVolumeSettings;Landroid/os/storage/VolumeInfo;)Landroid/os/storage/VolumeInfo;

    .line 231
    iget-object v0, p0, Lcom/android/exsettings/deviceinfo/PublicVolumeSettings$1;->this$0:Lcom/android/exsettings/deviceinfo/PublicVolumeSettings;

    invoke-virtual {v0}, Lcom/android/exsettings/deviceinfo/PublicVolumeSettings;->update()V

    .line 228
    :cond_0
    return-void
.end method

.method public onVolumeStateChanged(Landroid/os/storage/VolumeInfo;II)V
    .locals 2
    .param p1, "vol"    # Landroid/os/storage/VolumeInfo;
    .param p2, "oldState"    # I
    .param p3, "newState"    # I

    .prologue
    .line 221
    iget-object v0, p0, Lcom/android/exsettings/deviceinfo/PublicVolumeSettings$1;->this$0:Lcom/android/exsettings/deviceinfo/PublicVolumeSettings;

    invoke-static {v0}, Lcom/android/exsettings/deviceinfo/PublicVolumeSettings;->-get1(Lcom/android/exsettings/deviceinfo/PublicVolumeSettings;)Landroid/os/storage/VolumeInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/android/exsettings/deviceinfo/PublicVolumeSettings$1;->this$0:Lcom/android/exsettings/deviceinfo/PublicVolumeSettings;

    invoke-static {v0, p1}, Lcom/android/exsettings/deviceinfo/PublicVolumeSettings;->-set0(Lcom/android/exsettings/deviceinfo/PublicVolumeSettings;Landroid/os/storage/VolumeInfo;)Landroid/os/storage/VolumeInfo;

    .line 223
    iget-object v0, p0, Lcom/android/exsettings/deviceinfo/PublicVolumeSettings$1;->this$0:Lcom/android/exsettings/deviceinfo/PublicVolumeSettings;

    invoke-virtual {v0}, Lcom/android/exsettings/deviceinfo/PublicVolumeSettings;->update()V

    .line 220
    :cond_0
    return-void
.end method
