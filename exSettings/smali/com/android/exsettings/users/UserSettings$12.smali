.class Lcom/android/exsettings/users/UserSettings$12;
.super Ljava/lang/Thread;
.source "UserSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exsettings/users/UserSettings;->removeUserNow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/users/UserSettings;


# direct methods
.method constructor <init>(Lcom/android/exsettings/users/UserSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/exsettings/users/UserSettings;

    .prologue
    .line 635
    iput-object p1, p0, Lcom/android/exsettings/users/UserSettings$12;->this$0:Lcom/android/exsettings/users/UserSettings;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 637
    iget-object v0, p0, Lcom/android/exsettings/users/UserSettings$12;->this$0:Lcom/android/exsettings/users/UserSettings;

    invoke-static {v0}, Lcom/android/exsettings/users/UserSettings;->-get4(Lcom/android/exsettings/users/UserSettings;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 638
    :try_start_0
    iget-object v0, p0, Lcom/android/exsettings/users/UserSettings$12;->this$0:Lcom/android/exsettings/users/UserSettings;

    invoke-static {v0}, Lcom/android/exsettings/users/UserSettings;->-get5(Lcom/android/exsettings/users/UserSettings;)Landroid/os/UserManager;

    move-result-object v0

    iget-object v2, p0, Lcom/android/exsettings/users/UserSettings$12;->this$0:Lcom/android/exsettings/users/UserSettings;

    invoke-static {v2}, Lcom/android/exsettings/users/UserSettings;->-get2(Lcom/android/exsettings/users/UserSettings;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/os/UserManager;->removeUser(I)Z

    .line 639
    iget-object v0, p0, Lcom/android/exsettings/users/UserSettings$12;->this$0:Lcom/android/exsettings/users/UserSettings;

    invoke-static {v0}, Lcom/android/exsettings/users/UserSettings;->-get1(Lcom/android/exsettings/users/UserSettings;)Landroid/os/Handler;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 636
    return-void

    .line 637
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
