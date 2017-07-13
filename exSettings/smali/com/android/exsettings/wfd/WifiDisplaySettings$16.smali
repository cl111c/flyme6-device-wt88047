.class Lcom/android/exsettings/wfd/WifiDisplaySettings$16;
.super Ljava/lang/Object;
.source "WifiDisplaySettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exsettings/wfd/WifiDisplaySettings;->showWifiDisplayOptionsDialog(Landroid/hardware/display/WifiDisplay;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/wfd/WifiDisplaySettings;

.field final synthetic val$display:Landroid/hardware/display/WifiDisplay;


# direct methods
.method constructor <init>(Lcom/android/exsettings/wfd/WifiDisplaySettings;Landroid/hardware/display/WifiDisplay;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/exsettings/wfd/WifiDisplaySettings;
    .param p2, "val$display"    # Landroid/hardware/display/WifiDisplay;

    .prologue
    .line 579
    iput-object p1, p0, Lcom/android/exsettings/wfd/WifiDisplaySettings$16;->this$0:Lcom/android/exsettings/wfd/WifiDisplaySettings;

    iput-object p2, p0, Lcom/android/exsettings/wfd/WifiDisplaySettings$16;->val$display:Landroid/hardware/display/WifiDisplay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 582
    iget-object v0, p0, Lcom/android/exsettings/wfd/WifiDisplaySettings$16;->this$0:Lcom/android/exsettings/wfd/WifiDisplaySettings;

    invoke-static {v0}, Lcom/android/exsettings/wfd/WifiDisplaySettings;->-get1(Lcom/android/exsettings/wfd/WifiDisplaySettings;)Landroid/hardware/display/DisplayManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/exsettings/wfd/WifiDisplaySettings$16;->val$display:Landroid/hardware/display/WifiDisplay;

    invoke-virtual {v1}, Landroid/hardware/display/WifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->forgetWifiDisplay(Ljava/lang/String;)V

    .line 581
    return-void
.end method
