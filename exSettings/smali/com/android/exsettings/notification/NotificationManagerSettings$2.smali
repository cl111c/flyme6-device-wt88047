.class Lcom/android/exsettings/notification/NotificationManagerSettings$2;
.super Ljava/lang/Object;
.source "NotificationManagerSettings.java"

# interfaces
.implements Lcom/android/exsettings/DropDownPreference$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exsettings/notification/NotificationManagerSettings;->initLockscreenNotifications()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/notification/NotificationManagerSettings;


# direct methods
.method constructor <init>(Lcom/android/exsettings/notification/NotificationManagerSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/exsettings/notification/NotificationManagerSettings;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/android/exsettings/notification/NotificationManagerSettings$2;->this$0:Lcom/android/exsettings/notification/NotificationManagerSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(ILjava/lang/Object;)Z
    .locals 8
    .param p1, "pos"    # I
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 79
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 80
    .local v2, "val":I
    iget-object v3, p0, Lcom/android/exsettings/notification/NotificationManagerSettings$2;->this$0:Lcom/android/exsettings/notification/NotificationManagerSettings;

    invoke-static {v3}, Lcom/android/exsettings/notification/NotificationManagerSettings;->-get0(Lcom/android/exsettings/notification/NotificationManagerSettings;)I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 81
    return v4

    .line 83
    :cond_0
    const v3, 0x7f0c0e88

    if-eq v2, v3, :cond_2

    const/4 v0, 0x1

    .line 84
    .local v0, "enabled":Z
    :goto_0
    const v3, 0x7f0c0e86

    if-ne v2, v3, :cond_3

    const/4 v1, 0x1

    .line 85
    .local v1, "show":Z
    :goto_1
    iget-object v3, p0, Lcom/android/exsettings/notification/NotificationManagerSettings$2;->this$0:Lcom/android/exsettings/notification/NotificationManagerSettings;

    invoke-static {v3}, Lcom/android/exsettings/notification/NotificationManagerSettings;->-wrap0(Lcom/android/exsettings/notification/NotificationManagerSettings;)Landroid/content/ContentResolver;

    move-result-object v6

    .line 86
    const-string/jumbo v7, "lock_screen_allow_private_notifications"

    if-eqz v1, :cond_4

    move v3, v4

    .line 85
    :goto_2
    invoke-static {v6, v7, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 87
    iget-object v3, p0, Lcom/android/exsettings/notification/NotificationManagerSettings$2;->this$0:Lcom/android/exsettings/notification/NotificationManagerSettings;

    invoke-static {v3}, Lcom/android/exsettings/notification/NotificationManagerSettings;->-wrap0(Lcom/android/exsettings/notification/NotificationManagerSettings;)Landroid/content/ContentResolver;

    move-result-object v3

    .line 88
    const-string/jumbo v6, "lock_screen_show_notifications"

    if-eqz v0, :cond_1

    move v5, v4

    .line 87
    :cond_1
    invoke-static {v3, v6, v5}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 89
    iget-object v3, p0, Lcom/android/exsettings/notification/NotificationManagerSettings$2;->this$0:Lcom/android/exsettings/notification/NotificationManagerSettings;

    invoke-static {v3, v2}, Lcom/android/exsettings/notification/NotificationManagerSettings;->-set0(Lcom/android/exsettings/notification/NotificationManagerSettings;I)I

    .line 90
    return v4

    .line 83
    .end local v0    # "enabled":Z
    .end local v1    # "show":Z
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "enabled":Z
    goto :goto_0

    .line 84
    :cond_3
    const/4 v1, 0x0

    .restart local v1    # "show":Z
    goto :goto_1

    :cond_4
    move v3, v5

    .line 86
    goto :goto_2
.end method
