.class Lcom/android/exsettings/bluetooth/DockService$2;
.super Ljava/lang/Object;
.source "DockService.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/bluetooth/DockService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/bluetooth/DockService;


# direct methods
.method constructor <init>(Lcom/android/exsettings/bluetooth/DockService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/exsettings/bluetooth/DockService;

    .prologue
    .line 582
    iput-object p1, p0, Lcom/android/exsettings/bluetooth/DockService$2;->this$0:Lcom/android/exsettings/bluetooth/DockService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 587
    iget-object v0, p0, Lcom/android/exsettings/bluetooth/DockService$2;->this$0:Lcom/android/exsettings/bluetooth/DockService;

    invoke-static {v0}, Lcom/android/exsettings/bluetooth/DockService;->-get2(Lcom/android/exsettings/bluetooth/DockService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 589
    iget-object v0, p0, Lcom/android/exsettings/bluetooth/DockService$2;->this$0:Lcom/android/exsettings/bluetooth/DockService;

    iget-object v1, p0, Lcom/android/exsettings/bluetooth/DockService$2;->this$0:Lcom/android/exsettings/bluetooth/DockService;

    invoke-static {v1}, Lcom/android/exsettings/bluetooth/DockService;->-get2(Lcom/android/exsettings/bluetooth/DockService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    .line 588
    invoke-static {v0, v1, p2}, Lcom/android/exsettings/bluetooth/LocalBluetoothPreferences;->saveDockAutoConnectSetting(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 583
    :goto_0
    return-void

    .line 591
    :cond_0
    iget-object v0, p0, Lcom/android/exsettings/bluetooth/DockService$2;->this$0:Lcom/android/exsettings/bluetooth/DockService;

    invoke-virtual {v0}, Lcom/android/exsettings/bluetooth/DockService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 592
    const-string/jumbo v2, "dock_audio_media_enabled"

    if-eqz p2, :cond_1

    const/4 v0, 0x1

    .line 591
    :goto_1
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 592
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
