.class Lcom/android/exsettings/bluetooth/DockService$4;
.super Ljava/lang/Object;
.source "DockService.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 614
    iput-object p1, p0, Lcom/android/exsettings/bluetooth/DockService$4;->this$0:Lcom/android/exsettings/bluetooth/DockService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v0, 0x1

    .line 616
    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    .line 617
    iget-object v1, p0, Lcom/android/exsettings/bluetooth/DockService$4;->this$0:Lcom/android/exsettings/bluetooth/DockService;

    invoke-static {v1}, Lcom/android/exsettings/bluetooth/DockService;->-get2(Lcom/android/exsettings/bluetooth/DockService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 620
    iget-object v1, p0, Lcom/android/exsettings/bluetooth/DockService$4;->this$0:Lcom/android/exsettings/bluetooth/DockService;

    .line 621
    iget-object v2, p0, Lcom/android/exsettings/bluetooth/DockService$4;->this$0:Lcom/android/exsettings/bluetooth/DockService;

    invoke-static {v2}, Lcom/android/exsettings/bluetooth/DockService;->-get2(Lcom/android/exsettings/bluetooth/DockService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    .line 618
    invoke-static {v1, v2}, Lcom/android/exsettings/bluetooth/LocalBluetoothPreferences;->hasDockAutoConnectSetting(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 624
    iget-object v1, p0, Lcom/android/exsettings/bluetooth/DockService$4;->this$0:Lcom/android/exsettings/bluetooth/DockService;

    .line 625
    iget-object v2, p0, Lcom/android/exsettings/bluetooth/DockService$4;->this$0:Lcom/android/exsettings/bluetooth/DockService;

    invoke-static {v2}, Lcom/android/exsettings/bluetooth/DockService;->-get2(Lcom/android/exsettings/bluetooth/DockService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    .line 622
    invoke-static {v1, v2, v0}, Lcom/android/exsettings/bluetooth/LocalBluetoothPreferences;->saveDockAutoConnectSetting(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 628
    :cond_0
    iget-object v0, p0, Lcom/android/exsettings/bluetooth/DockService$4;->this$0:Lcom/android/exsettings/bluetooth/DockService;

    iget-object v1, p0, Lcom/android/exsettings/bluetooth/DockService$4;->this$0:Lcom/android/exsettings/bluetooth/DockService;

    invoke-static {v1}, Lcom/android/exsettings/bluetooth/DockService;->-get2(Lcom/android/exsettings/bluetooth/DockService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    iget-object v2, p0, Lcom/android/exsettings/bluetooth/DockService$4;->this$0:Lcom/android/exsettings/bluetooth/DockService;

    invoke-static {v2}, Lcom/android/exsettings/bluetooth/DockService;->-get4(Lcom/android/exsettings/bluetooth/DockService;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/android/exsettings/bluetooth/DockService;->-wrap0(Lcom/android/exsettings/bluetooth/DockService;Landroid/bluetooth/BluetoothDevice;I)V

    .line 615
    :cond_1
    :goto_0
    return-void

    .line 629
    :cond_2
    iget-object v1, p0, Lcom/android/exsettings/bluetooth/DockService$4;->this$0:Lcom/android/exsettings/bluetooth/DockService;

    invoke-static {v1}, Lcom/android/exsettings/bluetooth/DockService;->-get0(Lcom/android/exsettings/bluetooth/DockService;)Landroid/widget/CheckBox;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 630
    iget-object v1, p0, Lcom/android/exsettings/bluetooth/DockService$4;->this$0:Lcom/android/exsettings/bluetooth/DockService;

    invoke-virtual {v1}, Lcom/android/exsettings/bluetooth/DockService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 631
    const-string/jumbo v2, "dock_audio_media_enabled"

    .line 632
    iget-object v3, p0, Lcom/android/exsettings/bluetooth/DockService$4;->this$0:Lcom/android/exsettings/bluetooth/DockService;

    invoke-static {v3}, Lcom/android/exsettings/bluetooth/DockService;->-get0(Lcom/android/exsettings/bluetooth/DockService;)Landroid/widget/CheckBox;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 630
    :goto_1
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 632
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method
