.class Lcom/android/exsettings/users/UserSettings$13;
.super Ljava/lang/Thread;
.source "UserSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exsettings/users/UserSettings;->addUserNow(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/users/UserSettings;

.field final synthetic val$userType:I


# direct methods
.method constructor <init>(Lcom/android/exsettings/users/UserSettings;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/exsettings/users/UserSettings;
    .param p2, "val$userType"    # I

    .prologue
    .line 660
    iput-object p1, p0, Lcom/android/exsettings/users/UserSettings$13;->this$0:Lcom/android/exsettings/users/UserSettings;

    iput p2, p0, Lcom/android/exsettings/users/UserSettings$13;->val$userType:I

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v4, 0x1

    .line 664
    iget v1, p0, Lcom/android/exsettings/users/UserSettings$13;->val$userType:I

    if-ne v1, v4, :cond_0

    .line 665
    iget-object v1, p0, Lcom/android/exsettings/users/UserSettings$13;->this$0:Lcom/android/exsettings/users/UserSettings;

    invoke-static {v1}, Lcom/android/exsettings/users/UserSettings;->-wrap1(Lcom/android/exsettings/users/UserSettings;)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 669
    .local v0, "user":Landroid/content/pm/UserInfo;
    :goto_0
    iget-object v1, p0, Lcom/android/exsettings/users/UserSettings$13;->this$0:Lcom/android/exsettings/users/UserSettings;

    invoke-static {v1}, Lcom/android/exsettings/users/UserSettings;->-get4(Lcom/android/exsettings/users/UserSettings;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 670
    :try_start_0
    iget-object v1, p0, Lcom/android/exsettings/users/UserSettings$13;->this$0:Lcom/android/exsettings/users/UserSettings;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/android/exsettings/users/UserSettings;->-set0(Lcom/android/exsettings/users/UserSettings;Z)Z

    .line 671
    iget v1, p0, Lcom/android/exsettings/users/UserSettings$13;->val$userType:I

    if-ne v1, v4, :cond_1

    .line 672
    iget-object v1, p0, Lcom/android/exsettings/users/UserSettings$13;->this$0:Lcom/android/exsettings/users/UserSettings;

    invoke-static {v1}, Lcom/android/exsettings/users/UserSettings;->-get1(Lcom/android/exsettings/users/UserSettings;)Landroid/os/Handler;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 673
    iget-object v1, p0, Lcom/android/exsettings/users/UserSettings$13;->this$0:Lcom/android/exsettings/users/UserSettings;

    invoke-static {v1}, Lcom/android/exsettings/users/UserSettings;->-get1(Lcom/android/exsettings/users/UserSettings;)Landroid/os/Handler;

    move-result-object v1

    iget-object v3, p0, Lcom/android/exsettings/users/UserSettings$13;->this$0:Lcom/android/exsettings/users/UserSettings;

    invoke-static {v3}, Lcom/android/exsettings/users/UserSettings;->-get1(Lcom/android/exsettings/users/UserSettings;)Landroid/os/Handler;

    move-result-object v3

    .line 674
    iget v4, v0, Landroid/content/pm/UserInfo;->id:I

    iget v5, v0, Landroid/content/pm/UserInfo;->serialNumber:I

    const/4 v6, 0x2

    .line 673
    invoke-virtual {v3, v6, v4, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    monitor-exit v2

    .line 661
    return-void

    .line 667
    .end local v0    # "user":Landroid/content/pm/UserInfo;
    :cond_0
    iget-object v1, p0, Lcom/android/exsettings/users/UserSettings$13;->this$0:Lcom/android/exsettings/users/UserSettings;

    invoke-static {v1}, Lcom/android/exsettings/users/UserSettings;->-wrap0(Lcom/android/exsettings/users/UserSettings;)Landroid/content/pm/UserInfo;

    move-result-object v0

    .restart local v0    # "user":Landroid/content/pm/UserInfo;
    goto :goto_0

    .line 676
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/exsettings/users/UserSettings$13;->this$0:Lcom/android/exsettings/users/UserSettings;

    invoke-static {v1}, Lcom/android/exsettings/users/UserSettings;->-get1(Lcom/android/exsettings/users/UserSettings;)Landroid/os/Handler;

    move-result-object v1

    iget-object v3, p0, Lcom/android/exsettings/users/UserSettings$13;->this$0:Lcom/android/exsettings/users/UserSettings;

    invoke-static {v3}, Lcom/android/exsettings/users/UserSettings;->-get1(Lcom/android/exsettings/users/UserSettings;)Landroid/os/Handler;

    move-result-object v3

    .line 677
    iget v4, v0, Landroid/content/pm/UserInfo;->id:I

    iget v5, v0, Landroid/content/pm/UserInfo;->serialNumber:I

    const/4 v6, 0x3

    .line 676
    invoke-virtual {v3, v6, v4, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 669
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method
