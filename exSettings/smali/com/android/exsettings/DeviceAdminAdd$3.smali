.class Lcom/android/exsettings/DeviceAdminAdd$3;
.super Ljava/lang/Object;
.source "DeviceAdminAdd.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exsettings/DeviceAdminAdd;->onCreate(Landroid/os/Bundle;)V
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
    .line 283
    iput-object p1, p0, Lcom/android/exsettings/DeviceAdminAdd$3;->this$0:Lcom/android/exsettings/DeviceAdminAdd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 286
    iget-object v0, p0, Lcom/android/exsettings/DeviceAdminAdd$3;->this$0:Lcom/android/exsettings/DeviceAdminAdd;

    iget-object v0, v0, Lcom/android/exsettings/DeviceAdminAdd;->mDeviceAdmin:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v0}, Landroid/app/admin/DeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 285
    const v1, 0x1605a

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(II)I

    .line 287
    iget-object v0, p0, Lcom/android/exsettings/DeviceAdminAdd$3;->this$0:Lcom/android/exsettings/DeviceAdminAdd;

    invoke-virtual {v0}, Lcom/android/exsettings/DeviceAdminAdd;->finish()V

    .line 284
    return-void
.end method
