.class Lcom/android/exsettings/CryptKeeperSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "CryptKeeperSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/CryptKeeperSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/CryptKeeperSettings;


# direct methods
.method constructor <init>(Lcom/android/exsettings/CryptKeeperSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/exsettings/CryptKeeperSettings;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/android/exsettings/CryptKeeperSettings$1;->this$0:Lcom/android/exsettings/CryptKeeperSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x0

    .line 60
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 61
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v6, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 62
    const-string/jumbo v6, "level"

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 63
    .local v2, "level":I
    const-string/jumbo v6, "plugged"

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 65
    .local v4, "plugged":I
    const-string/jumbo v6, "invalid_charger"

    .line 64
    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 67
    .local v1, "invalidCharger":I
    const/16 v6, 0x50

    if-lt v2, v6, :cond_1

    const/4 v3, 0x1

    .line 69
    .local v3, "levelOk":Z
    :goto_0
    and-int/lit8 v6, v4, 0x7

    if-eqz v6, :cond_3

    .line 70
    if-nez v1, :cond_2

    const/4 v5, 0x1

    .line 73
    .local v5, "pluggedOk":Z
    :goto_1
    iget-object v6, p0, Lcom/android/exsettings/CryptKeeperSettings$1;->this$0:Lcom/android/exsettings/CryptKeeperSettings;

    invoke-static {v6}, Lcom/android/exsettings/CryptKeeperSettings;->-get1(Lcom/android/exsettings/CryptKeeperSettings;)Landroid/widget/Button;

    move-result-object v9

    if-eqz v3, :cond_4

    move v6, v5

    :goto_2
    invoke-virtual {v9, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 74
    iget-object v6, p0, Lcom/android/exsettings/CryptKeeperSettings$1;->this$0:Lcom/android/exsettings/CryptKeeperSettings;

    invoke-static {v6}, Lcom/android/exsettings/CryptKeeperSettings;->-get2(Lcom/android/exsettings/CryptKeeperSettings;)Landroid/view/View;

    move-result-object v9

    if-eqz v5, :cond_5

    move v6, v8

    :goto_3
    invoke-virtual {v9, v6}, Landroid/view/View;->setVisibility(I)V

    .line 75
    iget-object v6, p0, Lcom/android/exsettings/CryptKeeperSettings$1;->this$0:Lcom/android/exsettings/CryptKeeperSettings;

    invoke-static {v6}, Lcom/android/exsettings/CryptKeeperSettings;->-get0(Lcom/android/exsettings/CryptKeeperSettings;)Landroid/view/View;

    move-result-object v6

    if-eqz v3, :cond_6

    :goto_4
    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    .line 59
    .end local v1    # "invalidCharger":I
    .end local v2    # "level":I
    .end local v3    # "levelOk":Z
    .end local v4    # "plugged":I
    .end local v5    # "pluggedOk":Z
    :cond_0
    return-void

    .line 67
    .restart local v1    # "invalidCharger":I
    .restart local v2    # "level":I
    .restart local v4    # "plugged":I
    :cond_1
    const/4 v3, 0x0

    .restart local v3    # "levelOk":Z
    goto :goto_0

    .line 70
    :cond_2
    const/4 v5, 0x0

    .restart local v5    # "pluggedOk":Z
    goto :goto_1

    .line 69
    .end local v5    # "pluggedOk":Z
    :cond_3
    const/4 v5, 0x0

    .restart local v5    # "pluggedOk":Z
    goto :goto_1

    :cond_4
    move v6, v7

    .line 73
    goto :goto_2

    :cond_5
    move v6, v7

    .line 74
    goto :goto_3

    :cond_6
    move v8, v7

    .line 75
    goto :goto_4
.end method
