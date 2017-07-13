.class Lcom/android/exsettings/CryptKeeperConfirm$Blank$1;
.super Ljava/lang/Object;
.source "CryptKeeperConfirm.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exsettings/CryptKeeperConfirm$Blank;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/exsettings/CryptKeeperConfirm$Blank;


# direct methods
.method constructor <init>(Lcom/android/exsettings/CryptKeeperConfirm$Blank;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/exsettings/CryptKeeperConfirm$Blank;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/android/exsettings/CryptKeeperConfirm$Blank$1;->this$1:Lcom/android/exsettings/CryptKeeperConfirm$Blank;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 79
    const-string/jumbo v4, "mount"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    .line 80
    .local v3, "service":Landroid/os/IBinder;
    if-nez v3, :cond_0

    .line 81
    const-string/jumbo v4, "CryptKeeper"

    const-string/jumbo v5, "Failed to find the mount service"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    iget-object v4, p0, Lcom/android/exsettings/CryptKeeperConfirm$Blank$1;->this$1:Lcom/android/exsettings/CryptKeeperConfirm$Blank;

    invoke-virtual {v4}, Lcom/android/exsettings/CryptKeeperConfirm$Blank;->finish()V

    .line 83
    return-void

    .line 86
    :cond_0
    invoke-static {v3}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v2

    .line 88
    .local v2, "mountService":Landroid/os/storage/IMountService;
    :try_start_0
    iget-object v4, p0, Lcom/android/exsettings/CryptKeeperConfirm$Blank$1;->this$1:Lcom/android/exsettings/CryptKeeperConfirm$Blank;

    invoke-virtual {v4}, Lcom/android/exsettings/CryptKeeperConfirm$Blank;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 89
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v4, "type"

    const/4 v5, -0x1

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    const-string/jumbo v5, "password"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Landroid/os/storage/IMountService;->encryptStorage(ILjava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    .end local v0    # "args":Landroid/os/Bundle;
    :goto_0
    return-void

    .line 90
    :catch_0
    move-exception v1

    .line 91
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "CryptKeeper"

    const-string/jumbo v5, "Error while encrypting..."

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
