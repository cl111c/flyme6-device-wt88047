.class Lcom/android/exsettings/accounts/AccountSettings$MasterSyncStateClickListener;
.super Ljava/lang/Object;
.source "AccountSettings.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/accounts/AccountSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MasterSyncStateClickListener"
.end annotation


# instance fields
.field private final mUserHandle:Landroid/os/UserHandle;

.field final synthetic this$0:Lcom/android/exsettings/accounts/AccountSettings;


# direct methods
.method public constructor <init>(Lcom/android/exsettings/accounts/AccountSettings;Landroid/os/UserHandle;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/exsettings/accounts/AccountSettings;
    .param p2, "userHandle"    # Landroid/os/UserHandle;

    .prologue
    .line 565
    iput-object p1, p0, Lcom/android/exsettings/accounts/AccountSettings$MasterSyncStateClickListener;->this$0:Lcom/android/exsettings/accounts/AccountSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 566
    iput-object p2, p0, Lcom/android/exsettings/accounts/AccountSettings$MasterSyncStateClickListener;->mUserHandle:Landroid/os/UserHandle;

    .line 565
    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v1, 0x1

    .line 571
    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 572
    const-string/jumbo v0, "AccountSettings"

    const-string/jumbo v2, "ignoring monkey\'s attempt to flip sync state"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    :goto_0
    return v1

    .line 574
    :cond_0
    iget-object v2, p0, Lcom/android/exsettings/accounts/AccountSettings$MasterSyncStateClickListener;->this$0:Lcom/android/exsettings/accounts/AccountSettings;

    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 575
    :goto_1
    iget-object v3, p0, Lcom/android/exsettings/accounts/AccountSettings$MasterSyncStateClickListener;->mUserHandle:Landroid/os/UserHandle;

    .line 574
    invoke-static {v2, v0, v3}, Lcom/android/exsettings/accounts/AccountSettings$ConfirmAutoSyncChangeFragment;->show(Lcom/android/exsettings/accounts/AccountSettings;ZLandroid/os/UserHandle;)V

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method
