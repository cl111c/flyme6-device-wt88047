.class Lcom/android/exsettings/notification/NotificationStation$2;
.super Landroid/service/notification/NotificationListenerService;
.source "NotificationStation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/notification/NotificationStation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/notification/NotificationStation;


# direct methods
.method constructor <init>(Lcom/android/exsettings/notification/NotificationStation;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/exsettings/notification/NotificationStation;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/android/exsettings/notification/NotificationStation$2;->this$0:Lcom/android/exsettings/notification/NotificationStation;

    invoke-direct {p0}, Landroid/service/notification/NotificationListenerService;-><init>()V

    return-void
.end method


# virtual methods
.method public onNotificationPosted(Landroid/service/notification/StatusBarNotification;)V
    .locals 4
    .param p1, "notification"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    .line 91
    const-string/jumbo v1, "onNotificationPosted: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Lcom/android/exsettings/notification/NotificationStation;->-wrap0(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 92
    iget-object v1, p0, Lcom/android/exsettings/notification/NotificationStation$2;->this$0:Lcom/android/exsettings/notification/NotificationStation;

    invoke-virtual {v1}, Lcom/android/exsettings/notification/NotificationStation;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 93
    .local v0, "h":Landroid/os/Handler;
    iget-object v1, p0, Lcom/android/exsettings/notification/NotificationStation$2;->this$0:Lcom/android/exsettings/notification/NotificationStation;

    invoke-static {v1}, Lcom/android/exsettings/notification/NotificationStation;->-get0(Lcom/android/exsettings/notification/NotificationStation;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 94
    iget-object v1, p0, Lcom/android/exsettings/notification/NotificationStation$2;->this$0:Lcom/android/exsettings/notification/NotificationStation;

    invoke-static {v1}, Lcom/android/exsettings/notification/NotificationStation;->-get0(Lcom/android/exsettings/notification/NotificationStation;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 90
    return-void
.end method

.method public onNotificationRemoved(Landroid/service/notification/StatusBarNotification;)V
    .locals 4
    .param p1, "notification"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    .line 99
    iget-object v1, p0, Lcom/android/exsettings/notification/NotificationStation$2;->this$0:Lcom/android/exsettings/notification/NotificationStation;

    invoke-virtual {v1}, Lcom/android/exsettings/notification/NotificationStation;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 100
    .local v0, "h":Landroid/os/Handler;
    iget-object v1, p0, Lcom/android/exsettings/notification/NotificationStation$2;->this$0:Lcom/android/exsettings/notification/NotificationStation;

    invoke-static {v1}, Lcom/android/exsettings/notification/NotificationStation;->-get0(Lcom/android/exsettings/notification/NotificationStation;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 101
    iget-object v1, p0, Lcom/android/exsettings/notification/NotificationStation$2;->this$0:Lcom/android/exsettings/notification/NotificationStation;

    invoke-static {v1}, Lcom/android/exsettings/notification/NotificationStation;->-get0(Lcom/android/exsettings/notification/NotificationStation;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 98
    return-void
.end method
