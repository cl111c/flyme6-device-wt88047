.class Lcom/android/exsettings/accounts/AddAccountSettings$1;
.super Ljava/lang/Object;
.source "AddAccountSettings.java"

# interfaces
.implements Landroid/accounts/AccountManagerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/accounts/AddAccountSettings;
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
.field final synthetic this$0:Lcom/android/exsettings/accounts/AddAccountSettings;


# direct methods
.method constructor <init>(Lcom/android/exsettings/accounts/AddAccountSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/exsettings/accounts/AddAccountSettings;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/android/exsettings/accounts/AddAccountSettings$1;->this$0:Lcom/android/exsettings/accounts/AddAccountSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroid/accounts/AccountManagerFuture;)V
    .locals 10
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
    .line 89
    .local p1, "future":Landroid/accounts/AccountManagerFuture;, "Landroid/accounts/AccountManagerFuture<Landroid/os/Bundle;>;"
    const/4 v2, 0x1

    .line 91
    .local v2, "done":Z
    :try_start_0
    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 93
    .local v1, "bundle":Landroid/os/Bundle;
    const-string/jumbo v7, "intent"

    invoke-virtual {v1, v7}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/Intent;

    .line 94
    .local v6, "intent":Landroid/content/Intent;
    if-eqz v6, :cond_3

    .line 95
    const/4 v2, 0x0

    .line 96
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 97
    .local v0, "addAccountOptions":Landroid/os/Bundle;
    const-string/jumbo v7, "pendingIntent"

    iget-object v8, p0, Lcom/android/exsettings/accounts/AddAccountSettings$1;->this$0:Lcom/android/exsettings/accounts/AddAccountSettings;

    invoke-static {v8}, Lcom/android/exsettings/accounts/AddAccountSettings;->-get0(Lcom/android/exsettings/accounts/AddAccountSettings;)Landroid/app/PendingIntent;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 98
    const-string/jumbo v7, "hasMultipleUsers"

    .line 99
    iget-object v8, p0, Lcom/android/exsettings/accounts/AddAccountSettings$1;->this$0:Lcom/android/exsettings/accounts/AddAccountSettings;

    invoke-static {v8}, Lcom/android/exsettings/Utils;->hasMultipleUsers(Landroid/content/Context;)Z

    move-result v8

    .line 98
    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 100
    const-string/jumbo v7, "android.intent.extra.USER"

    iget-object v8, p0, Lcom/android/exsettings/accounts/AddAccountSettings$1;->this$0:Lcom/android/exsettings/accounts/AddAccountSettings;

    invoke-static {v8}, Lcom/android/exsettings/accounts/AddAccountSettings;->-get1(Lcom/android/exsettings/accounts/AddAccountSettings;)Landroid/os/UserHandle;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 101
    invoke-virtual {v6, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 102
    iget-object v7, p0, Lcom/android/exsettings/accounts/AddAccountSettings$1;->this$0:Lcom/android/exsettings/accounts/AddAccountSettings;

    iget-object v8, p0, Lcom/android/exsettings/accounts/AddAccountSettings$1;->this$0:Lcom/android/exsettings/accounts/AddAccountSettings;

    invoke-static {v8}, Lcom/android/exsettings/accounts/AddAccountSettings;->-get1(Lcom/android/exsettings/accounts/AddAccountSettings;)Landroid/os/UserHandle;

    move-result-object v8

    const/4 v9, 0x2

    invoke-virtual {v7, v6, v9, v8}, Lcom/android/exsettings/accounts/AddAccountSettings;->startActivityForResultAsUser(Landroid/content/Intent;ILandroid/os/UserHandle;)V

    .line 111
    .end local v0    # "addAccountOptions":Landroid/os/Bundle;
    :cond_0
    :goto_0
    const-string/jumbo v7, "AccountSettings"

    const/4 v8, 0x2

    invoke-static {v7, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_1

    const-string/jumbo v7, "AccountSettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "account added: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    :cond_1
    if-eqz v2, :cond_2

    .line 120
    iget-object v7, p0, Lcom/android/exsettings/accounts/AddAccountSettings$1;->this$0:Lcom/android/exsettings/accounts/AddAccountSettings;

    invoke-virtual {v7}, Lcom/android/exsettings/accounts/AddAccountSettings;->finish()V

    .line 88
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v6    # "intent":Landroid/content/Intent;
    :cond_2
    :goto_1
    return-void

    .line 104
    .restart local v1    # "bundle":Landroid/os/Bundle;
    .restart local v6    # "intent":Landroid/content/Intent;
    :cond_3
    :try_start_1
    iget-object v7, p0, Lcom/android/exsettings/accounts/AddAccountSettings$1;->this$0:Lcom/android/exsettings/accounts/AddAccountSettings;

    const/4 v8, -0x1

    invoke-virtual {v7, v8}, Lcom/android/exsettings/accounts/AddAccountSettings;->setResult(I)V

    .line 105
    iget-object v7, p0, Lcom/android/exsettings/accounts/AddAccountSettings$1;->this$0:Lcom/android/exsettings/accounts/AddAccountSettings;

    invoke-static {v7}, Lcom/android/exsettings/accounts/AddAccountSettings;->-get0(Lcom/android/exsettings/accounts/AddAccountSettings;)Landroid/app/PendingIntent;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 106
    iget-object v7, p0, Lcom/android/exsettings/accounts/AddAccountSettings$1;->this$0:Lcom/android/exsettings/accounts/AddAccountSettings;

    invoke-static {v7}, Lcom/android/exsettings/accounts/AddAccountSettings;->-get0(Lcom/android/exsettings/accounts/AddAccountSettings;)Landroid/app/PendingIntent;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/PendingIntent;->cancel()V

    .line 107
    iget-object v7, p0, Lcom/android/exsettings/accounts/AddAccountSettings$1;->this$0:Lcom/android/exsettings/accounts/AddAccountSettings;

    const/4 v8, 0x0

    invoke-static {v7, v8}, Lcom/android/exsettings/accounts/AddAccountSettings;->-set0(Lcom/android/exsettings/accounts/AddAccountSettings;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;
    :try_end_1
    .catch Landroid/accounts/OperationCanceledException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/accounts/AuthenticatorException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 112
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v6    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v4

    .line 113
    .local v4, "e":Landroid/accounts/OperationCanceledException;
    :try_start_2
    const-string/jumbo v7, "AccountSettings"

    const/4 v8, 0x2

    invoke-static {v7, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_4

    const-string/jumbo v7, "AccountSettings"

    const-string/jumbo v8, "addAccount was canceled"

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 119
    :cond_4
    if-eqz v2, :cond_2

    .line 120
    iget-object v7, p0, Lcom/android/exsettings/accounts/AddAccountSettings$1;->this$0:Lcom/android/exsettings/accounts/AddAccountSettings;

    invoke-virtual {v7}, Lcom/android/exsettings/accounts/AddAccountSettings;->finish()V

    goto :goto_1

    .line 116
    .end local v4    # "e":Landroid/accounts/OperationCanceledException;
    :catch_1
    move-exception v3

    .line 117
    .local v3, "e":Landroid/accounts/AuthenticatorException;
    :try_start_3
    const-string/jumbo v7, "AccountSettings"

    const/4 v8, 0x2

    invoke-static {v7, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_5

    const-string/jumbo v7, "AccountSettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "addAccount failed: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 119
    :cond_5
    if-eqz v2, :cond_2

    .line 120
    iget-object v7, p0, Lcom/android/exsettings/accounts/AddAccountSettings$1;->this$0:Lcom/android/exsettings/accounts/AddAccountSettings;

    invoke-virtual {v7}, Lcom/android/exsettings/accounts/AddAccountSettings;->finish()V

    goto :goto_1

    .line 114
    .end local v3    # "e":Landroid/accounts/AuthenticatorException;
    :catch_2
    move-exception v5

    .line 115
    .local v5, "e":Ljava/io/IOException;
    :try_start_4
    const-string/jumbo v7, "AccountSettings"

    const/4 v8, 0x2

    invoke-static {v7, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_6

    const-string/jumbo v7, "AccountSettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "addAccount failed: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 119
    :cond_6
    if-eqz v2, :cond_2

    .line 120
    iget-object v7, p0, Lcom/android/exsettings/accounts/AddAccountSettings$1;->this$0:Lcom/android/exsettings/accounts/AddAccountSettings;

    invoke-virtual {v7}, Lcom/android/exsettings/accounts/AddAccountSettings;->finish()V

    goto/16 :goto_1

    .line 118
    .end local v5    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    .line 119
    if-eqz v2, :cond_7

    .line 120
    iget-object v8, p0, Lcom/android/exsettings/accounts/AddAccountSettings$1;->this$0:Lcom/android/exsettings/accounts/AddAccountSettings;

    invoke-virtual {v8}, Lcom/android/exsettings/accounts/AddAccountSettings;->finish()V

    .line 118
    :cond_7
    throw v7
.end method
