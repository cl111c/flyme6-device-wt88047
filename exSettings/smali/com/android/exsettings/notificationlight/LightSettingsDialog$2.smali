.class Lcom/android/exsettings/notificationlight/LightSettingsDialog$2;
.super Landroid/os/Handler;
.source "LightSettingsDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/notificationlight/LightSettingsDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/notificationlight/LightSettingsDialog;


# direct methods
.method constructor <init>(Lcom/android/exsettings/notificationlight/LightSettingsDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/exsettings/notificationlight/LightSettingsDialog;

    .prologue
    .line 264
    iput-object p1, p0, Lcom/android/exsettings/notificationlight/LightSettingsDialog$2;->this$0:Lcom/android/exsettings/notificationlight/LightSettingsDialog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 266
    iget-object v0, p0, Lcom/android/exsettings/notificationlight/LightSettingsDialog$2;->this$0:Lcom/android/exsettings/notificationlight/LightSettingsDialog;

    invoke-static {v0}, Lcom/android/exsettings/notificationlight/LightSettingsDialog;->-wrap0(Lcom/android/exsettings/notificationlight/LightSettingsDialog;)V

    .line 265
    return-void
.end method
