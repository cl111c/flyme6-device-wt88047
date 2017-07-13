.class Lcom/android/exsettings/DeviceAdminAdd$5;
.super Ljava/lang/Object;
.source "DeviceAdminAdd.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exsettings/DeviceAdminAdd;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/DeviceAdminAdd;


# direct methods
.method constructor <init>(Lcom/android/exsettings/DeviceAdminAdd;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/exsettings/DeviceAdminAdd;

    .prologue
    .line 412
    iput-object p1, p0, Lcom/android/exsettings/DeviceAdminAdd$5;->this$0:Lcom/android/exsettings/DeviceAdminAdd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 415
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->resumeAppSwitches()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 418
    :goto_0
    iget-object v1, p0, Lcom/android/exsettings/DeviceAdminAdd$5;->this$0:Lcom/android/exsettings/DeviceAdminAdd;

    iget-object v1, v1, Lcom/android/exsettings/DeviceAdminAdd;->mDPM:Landroid/app/admin/DevicePolicyManager;

    iget-object v2, p0, Lcom/android/exsettings/DeviceAdminAdd$5;->this$0:Lcom/android/exsettings/DeviceAdminAdd;

    iget-object v2, v2, Lcom/android/exsettings/DeviceAdminAdd;->mDeviceAdmin:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v2}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/admin/DevicePolicyManager;->removeActiveAdmin(Landroid/content/ComponentName;)V

    .line 419
    iget-object v1, p0, Lcom/android/exsettings/DeviceAdminAdd$5;->this$0:Lcom/android/exsettings/DeviceAdminAdd;

    invoke-virtual {v1}, Lcom/android/exsettings/DeviceAdminAdd;->finish()V

    .line 413
    return-void

    .line 416
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method
