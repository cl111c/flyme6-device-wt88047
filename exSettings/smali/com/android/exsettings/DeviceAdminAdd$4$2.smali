.class Lcom/android/exsettings/DeviceAdminAdd$4$2;
.super Ljava/lang/Object;
.source "DeviceAdminAdd.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exsettings/DeviceAdminAdd$4;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/exsettings/DeviceAdminAdd$4;


# direct methods
.method constructor <init>(Lcom/android/exsettings/DeviceAdminAdd$4;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/exsettings/DeviceAdminAdd$4;

    .prologue
    .line 316
    iput-object p1, p0, Lcom/android/exsettings/DeviceAdminAdd$4$2;->this$1:Lcom/android/exsettings/DeviceAdminAdd$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 318
    iget-object v0, p0, Lcom/android/exsettings/DeviceAdminAdd$4$2;->this$1:Lcom/android/exsettings/DeviceAdminAdd$4;

    iget-object v0, v0, Lcom/android/exsettings/DeviceAdminAdd$4;->this$0:Lcom/android/exsettings/DeviceAdminAdd;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/exsettings/DeviceAdminAdd;->continueRemoveAction(Ljava/lang/CharSequence;)V

    .line 317
    return-void
.end method
