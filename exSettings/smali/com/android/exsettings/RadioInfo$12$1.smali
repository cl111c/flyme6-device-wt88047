.class Lcom/android/exsettings/RadioInfo$12$1;
.super Ljava/lang/Object;
.source "RadioInfo.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exsettings/RadioInfo$12;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/exsettings/RadioInfo$12;

.field final synthetic val$imsManager:Lcom/android/ims/ImsManager;

.field final synthetic val$newValue:Z


# direct methods
.method constructor <init>(Lcom/android/exsettings/RadioInfo$12;Lcom/android/ims/ImsManager;Z)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/exsettings/RadioInfo$12;
    .param p2, "val$imsManager"    # Lcom/android/ims/ImsManager;
    .param p3, "val$newValue"    # Z

    .prologue
    .line 1025
    iput-object p1, p0, Lcom/android/exsettings/RadioInfo$12$1;->this$1:Lcom/android/exsettings/RadioInfo$12;

    iput-object p2, p0, Lcom/android/exsettings/RadioInfo$12$1;->val$imsManager:Lcom/android/ims/ImsManager;

    iput-boolean p3, p0, Lcom/android/exsettings/RadioInfo$12$1;->val$newValue:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1028
    :try_start_0
    iget-object v1, p0, Lcom/android/exsettings/RadioInfo$12$1;->val$imsManager:Lcom/android/ims/ImsManager;

    invoke-virtual {v1}, Lcom/android/ims/ImsManager;->getConfigInterface()Lcom/android/ims/ImsConfig;

    move-result-object v2

    .line 1030
    iget-boolean v1, p0, Lcom/android/exsettings/RadioInfo$12$1;->val$newValue:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 1029
    :goto_0
    const/16 v3, 0xa

    .line 1028
    invoke-virtual {v2, v3, v1}, Lcom/android/ims/ImsConfig;->setProvisionedValue(II)I
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1026
    :goto_1
    return-void

    .line 1030
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 1031
    :catch_0
    move-exception v0

    .line 1032
    .local v0, "e":Lcom/android/ims/ImsException;
    const-string/jumbo v1, "phone"

    const-string/jumbo v2, "setImsVoLteProvisioned() exception:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method
