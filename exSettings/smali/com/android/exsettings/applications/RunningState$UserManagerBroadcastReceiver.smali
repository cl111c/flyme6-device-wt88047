.class final Lcom/android/exsettings/applications/RunningState$UserManagerBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "RunningState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/applications/RunningState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "UserManagerBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/applications/RunningState;

.field private volatile usersChanged:Z


# direct methods
.method private constructor <init>(Lcom/android/exsettings/applications/RunningState;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/exsettings/applications/RunningState;

    .prologue
    .line 287
    iput-object p1, p0, Lcom/android/exsettings/applications/RunningState$UserManagerBroadcastReceiver;->this$0:Lcom/android/exsettings/applications/RunningState;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/exsettings/applications/RunningState;Lcom/android/exsettings/applications/RunningState$UserManagerBroadcastReceiver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/exsettings/applications/RunningState;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/exsettings/applications/RunningState$UserManagerBroadcastReceiver;-><init>(Lcom/android/exsettings/applications/RunningState;)V

    return-void
.end method


# virtual methods
.method public checkUsersChangedLocked()Z
    .locals 2

    .prologue
    .line 306
    iget-boolean v0, p0, Lcom/android/exsettings/applications/RunningState$UserManagerBroadcastReceiver;->usersChanged:Z

    .line 307
    .local v0, "oldValue":Z
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/exsettings/applications/RunningState$UserManagerBroadcastReceiver;->usersChanged:Z

    .line 308
    return v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 292
    iget-object v0, p0, Lcom/android/exsettings/applications/RunningState$UserManagerBroadcastReceiver;->this$0:Lcom/android/exsettings/applications/RunningState;

    iget-object v1, v0, Lcom/android/exsettings/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 293
    :try_start_0
    iget-object v0, p0, Lcom/android/exsettings/applications/RunningState$UserManagerBroadcastReceiver;->this$0:Lcom/android/exsettings/applications/RunningState;

    iget-boolean v0, v0, Lcom/android/exsettings/applications/RunningState;->mResumed:Z

    if-eqz v0, :cond_0

    .line 294
    iget-object v0, p0, Lcom/android/exsettings/applications/RunningState$UserManagerBroadcastReceiver;->this$0:Lcom/android/exsettings/applications/RunningState;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/android/exsettings/applications/RunningState;->mHaveData:Z

    .line 295
    iget-object v0, p0, Lcom/android/exsettings/applications/RunningState$UserManagerBroadcastReceiver;->this$0:Lcom/android/exsettings/applications/RunningState;

    iget-object v0, v0, Lcom/android/exsettings/applications/RunningState;->mBackgroundHandler:Lcom/android/exsettings/applications/RunningState$BackgroundHandler;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/exsettings/applications/RunningState$BackgroundHandler;->removeMessages(I)V

    .line 296
    iget-object v0, p0, Lcom/android/exsettings/applications/RunningState$UserManagerBroadcastReceiver;->this$0:Lcom/android/exsettings/applications/RunningState;

    iget-object v0, v0, Lcom/android/exsettings/applications/RunningState;->mBackgroundHandler:Lcom/android/exsettings/applications/RunningState$BackgroundHandler;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/exsettings/applications/RunningState$BackgroundHandler;->sendEmptyMessage(I)Z

    .line 297
    iget-object v0, p0, Lcom/android/exsettings/applications/RunningState$UserManagerBroadcastReceiver;->this$0:Lcom/android/exsettings/applications/RunningState;

    iget-object v0, v0, Lcom/android/exsettings/applications/RunningState;->mBackgroundHandler:Lcom/android/exsettings/applications/RunningState$BackgroundHandler;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/android/exsettings/applications/RunningState$BackgroundHandler;->removeMessages(I)V

    .line 298
    iget-object v0, p0, Lcom/android/exsettings/applications/RunningState$UserManagerBroadcastReceiver;->this$0:Lcom/android/exsettings/applications/RunningState;

    iget-object v0, v0, Lcom/android/exsettings/applications/RunningState;->mBackgroundHandler:Lcom/android/exsettings/applications/RunningState$BackgroundHandler;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/android/exsettings/applications/RunningState$BackgroundHandler;->sendEmptyMessage(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v1

    .line 291
    return-void

    .line 300
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/android/exsettings/applications/RunningState$UserManagerBroadcastReceiver;->usersChanged:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 292
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method register(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 312
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 313
    .local v3, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v0, "android.intent.action.USER_STOPPED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 314
    const-string/jumbo v0, "android.intent.action.USER_STARTED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 315
    const-string/jumbo v0, "android.intent.action.USER_INFO_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 316
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v0, p1

    move-object v1, p0

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 311
    return-void
.end method
