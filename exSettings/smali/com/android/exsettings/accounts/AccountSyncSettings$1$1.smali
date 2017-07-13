.class Lcom/android/exsettings/accounts/AccountSyncSettings$1$1;
.super Ljava/lang/Object;
.source "AccountSyncSettings.java"

# interfaces
.implements Landroid/accounts/AccountManagerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exsettings/accounts/AccountSyncSettings$1;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/accounts/AccountManagerCallback",
        "<",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/exsettings/accounts/AccountSyncSettings$1;


# direct methods
.method constructor <init>(Lcom/android/exsettings/accounts/AccountSyncSettings$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/exsettings/accounts/AccountSyncSettings$1;

    .prologue
    .line 98
    iput-object p1, p0, Lcom/android/exsettings/accounts/AccountSyncSettings$1$1;->this$1:Lcom/android/exsettings/accounts/AccountSyncSettings$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroid/accounts/AccountManagerFuture;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/AccountManagerFuture",
            "<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 102
    .local p1, "future":Landroid/accounts/AccountManagerFuture;, "Landroid/accounts/AccountManagerFuture<Landroid/os/Bundle;>;"
    iget-object v4, p0, Lcom/android/exsettings/accounts/AccountSyncSettings$1$1;->this$1:Lcom/android/exsettings/accounts/AccountSyncSettings$1;

    iget-object v4, v4, Lcom/android/exsettings/accounts/AccountSyncSettings$1;->this$0:Lcom/android/exsettings/accounts/AccountSyncSettings;

    invoke-virtual {v4}, Lcom/android/exsettings/accounts/AccountSyncSettings;->isResumed()Z

    move-result v4

    if-nez v4, :cond_0

    .line 103
    return-void

    .line 105
    :cond_0
    const/4 v3, 0x1

    .line 107
    .local v3, "failed":Z
    :try_start_0
    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    .line 108
    const-string/jumbo v5, "booleanResult"

    .line 107
    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v4

    if-eqz v4, :cond_1

    .line 109
    const/4 v3, 0x0

    .line 118
    :cond_1
    :goto_0
    if-eqz v3, :cond_2

    iget-object v4, p0, Lcom/android/exsettings/accounts/AccountSyncSettings$1$1;->this$1:Lcom/android/exsettings/accounts/AccountSyncSettings$1;

    iget-object v4, v4, Lcom/android/exsettings/accounts/AccountSyncSettings$1;->this$0:Lcom/android/exsettings/accounts/AccountSyncSettings;

    invoke-virtual {v4}, Lcom/android/exsettings/accounts/AccountSyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 119
    iget-object v4, p0, Lcom/android/exsettings/accounts/AccountSyncSettings$1$1;->this$1:Lcom/android/exsettings/accounts/AccountSyncSettings$1;

    iget-object v4, v4, Lcom/android/exsettings/accounts/AccountSyncSettings$1;->this$0:Lcom/android/exsettings/accounts/AccountSyncSettings;

    invoke-virtual {v4}, Lcom/android/exsettings/accounts/AccountSyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->isFinishing()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 122
    :cond_2
    iget-object v4, p0, Lcom/android/exsettings/accounts/AccountSyncSettings$1$1;->this$1:Lcom/android/exsettings/accounts/AccountSyncSettings$1;

    iget-object v4, v4, Lcom/android/exsettings/accounts/AccountSyncSettings$1;->this$0:Lcom/android/exsettings/accounts/AccountSyncSettings;

    invoke-virtual {v4}, Lcom/android/exsettings/accounts/AccountSyncSettings;->finish()V

    .line 100
    :goto_1
    return-void

    .line 120
    :cond_3
    iget-object v4, p0, Lcom/android/exsettings/accounts/AccountSyncSettings$1$1;->this$1:Lcom/android/exsettings/accounts/AccountSyncSettings$1;

    iget-object v4, v4, Lcom/android/exsettings/accounts/AccountSyncSettings$1;->this$0:Lcom/android/exsettings/accounts/AccountSyncSettings;

    const/16 v5, 0x65

    invoke-static {v4, v5}, Lcom/android/exsettings/accounts/AccountSyncSettings;->-wrap0(Lcom/android/exsettings/accounts/AccountSyncSettings;I)V

    goto :goto_1

    .line 111
    :catch_0
    move-exception v1

    .local v1, "e":Landroid/accounts/OperationCanceledException;
    goto :goto_0

    .line 113
    .end local v1    # "e":Landroid/accounts/OperationCanceledException;
    :catch_1
    move-exception v2

    .local v2, "e":Ljava/io/IOException;
    goto :goto_0

    .line 115
    .end local v2    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v0

    .local v0, "e":Landroid/accounts/AuthenticatorException;
    goto :goto_0
.end method
