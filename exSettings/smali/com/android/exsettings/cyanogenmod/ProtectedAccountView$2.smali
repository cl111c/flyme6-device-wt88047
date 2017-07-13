.class Lcom/android/exsettings/cyanogenmod/ProtectedAccountView$2;
.super Ljava/lang/Object;
.source "ProtectedAccountView.java"

# interfaces
.implements Landroid/accounts/AccountManagerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exsettings/cyanogenmod/ProtectedAccountView;->asyncCheckPassword()V
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
.field final synthetic this$0:Lcom/android/exsettings/cyanogenmod/ProtectedAccountView;


# direct methods
.method constructor <init>(Lcom/android/exsettings/cyanogenmod/ProtectedAccountView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/exsettings/cyanogenmod/ProtectedAccountView;

    .prologue
    .line 245
    iput-object p1, p0, Lcom/android/exsettings/cyanogenmod/ProtectedAccountView$2;->this$0:Lcom/android/exsettings/cyanogenmod/ProtectedAccountView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroid/accounts/AccountManagerFuture;)V
    .locals 8
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
    .line 248
    .local p1, "future":Landroid/accounts/AccountManagerFuture;, "Landroid/accounts/AccountManagerFuture<Landroid/os/Bundle;>;"
    :try_start_0
    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 249
    .local v3, "result":Landroid/os/Bundle;
    const-string/jumbo v5, "booleanResult"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    .line 250
    .local v4, "verified":Z
    iget-object v5, p0, Lcom/android/exsettings/cyanogenmod/ProtectedAccountView$2;->this$0:Lcom/android/exsettings/cyanogenmod/ProtectedAccountView;

    invoke-static {v5, v4}, Lcom/android/exsettings/cyanogenmod/ProtectedAccountView;->-wrap1(Lcom/android/exsettings/cyanogenmod/ProtectedAccountView;Z)V
    :try_end_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 258
    iget-object v5, p0, Lcom/android/exsettings/cyanogenmod/ProtectedAccountView$2;->this$0:Lcom/android/exsettings/cyanogenmod/ProtectedAccountView;

    invoke-static {v5}, Lcom/android/exsettings/cyanogenmod/ProtectedAccountView;->-get1(Lcom/android/exsettings/cyanogenmod/ProtectedAccountView;)Landroid/widget/EditText;

    move-result-object v5

    new-instance v6, Lcom/android/exsettings/cyanogenmod/ProtectedAccountView$2$1;

    invoke-direct {v6, p0}, Lcom/android/exsettings/cyanogenmod/ProtectedAccountView$2$1;-><init>(Lcom/android/exsettings/cyanogenmod/ProtectedAccountView$2;)V

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->post(Ljava/lang/Runnable;)Z

    .line 246
    .end local v3    # "result":Landroid/os/Bundle;
    .end local v4    # "verified":Z
    :goto_0
    return-void

    .line 255
    :catch_0
    move-exception v0

    .line 256
    .local v0, "e":Landroid/accounts/AuthenticatorException;
    :try_start_1
    iget-object v5, p0, Lcom/android/exsettings/cyanogenmod/ProtectedAccountView$2;->this$0:Lcom/android/exsettings/cyanogenmod/ProtectedAccountView;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/android/exsettings/cyanogenmod/ProtectedAccountView;->-wrap1(Lcom/android/exsettings/cyanogenmod/ProtectedAccountView;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 258
    iget-object v5, p0, Lcom/android/exsettings/cyanogenmod/ProtectedAccountView$2;->this$0:Lcom/android/exsettings/cyanogenmod/ProtectedAccountView;

    invoke-static {v5}, Lcom/android/exsettings/cyanogenmod/ProtectedAccountView;->-get1(Lcom/android/exsettings/cyanogenmod/ProtectedAccountView;)Landroid/widget/EditText;

    move-result-object v5

    new-instance v6, Lcom/android/exsettings/cyanogenmod/ProtectedAccountView$2$1;

    invoke-direct {v6, p0}, Lcom/android/exsettings/cyanogenmod/ProtectedAccountView$2$1;-><init>(Lcom/android/exsettings/cyanogenmod/ProtectedAccountView$2;)V

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 253
    .end local v0    # "e":Landroid/accounts/AuthenticatorException;
    :catch_1
    move-exception v2

    .line 254
    .local v2, "e":Ljava/io/IOException;
    :try_start_2
    iget-object v5, p0, Lcom/android/exsettings/cyanogenmod/ProtectedAccountView$2;->this$0:Lcom/android/exsettings/cyanogenmod/ProtectedAccountView;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/android/exsettings/cyanogenmod/ProtectedAccountView;->-wrap1(Lcom/android/exsettings/cyanogenmod/ProtectedAccountView;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 258
    iget-object v5, p0, Lcom/android/exsettings/cyanogenmod/ProtectedAccountView$2;->this$0:Lcom/android/exsettings/cyanogenmod/ProtectedAccountView;

    invoke-static {v5}, Lcom/android/exsettings/cyanogenmod/ProtectedAccountView;->-get1(Lcom/android/exsettings/cyanogenmod/ProtectedAccountView;)Landroid/widget/EditText;

    move-result-object v5

    new-instance v6, Lcom/android/exsettings/cyanogenmod/ProtectedAccountView$2$1;

    invoke-direct {v6, p0}, Lcom/android/exsettings/cyanogenmod/ProtectedAccountView$2$1;-><init>(Lcom/android/exsettings/cyanogenmod/ProtectedAccountView$2;)V

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 251
    .end local v2    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v1

    .line 252
    .local v1, "e":Landroid/accounts/OperationCanceledException;
    :try_start_3
    iget-object v5, p0, Lcom/android/exsettings/cyanogenmod/ProtectedAccountView$2;->this$0:Lcom/android/exsettings/cyanogenmod/ProtectedAccountView;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/android/exsettings/cyanogenmod/ProtectedAccountView;->-wrap1(Lcom/android/exsettings/cyanogenmod/ProtectedAccountView;Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 258
    iget-object v5, p0, Lcom/android/exsettings/cyanogenmod/ProtectedAccountView$2;->this$0:Lcom/android/exsettings/cyanogenmod/ProtectedAccountView;

    invoke-static {v5}, Lcom/android/exsettings/cyanogenmod/ProtectedAccountView;->-get1(Lcom/android/exsettings/cyanogenmod/ProtectedAccountView;)Landroid/widget/EditText;

    move-result-object v5

    new-instance v6, Lcom/android/exsettings/cyanogenmod/ProtectedAccountView$2$1;

    invoke-direct {v6, p0}, Lcom/android/exsettings/cyanogenmod/ProtectedAccountView$2$1;-><init>(Lcom/android/exsettings/cyanogenmod/ProtectedAccountView$2;)V

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 257
    .end local v1    # "e":Landroid/accounts/OperationCanceledException;
    :catchall_0
    move-exception v5

    .line 258
    iget-object v6, p0, Lcom/android/exsettings/cyanogenmod/ProtectedAccountView$2;->this$0:Lcom/android/exsettings/cyanogenmod/ProtectedAccountView;

    invoke-static {v6}, Lcom/android/exsettings/cyanogenmod/ProtectedAccountView;->-get1(Lcom/android/exsettings/cyanogenmod/ProtectedAccountView;)Landroid/widget/EditText;

    move-result-object v6

    new-instance v7, Lcom/android/exsettings/cyanogenmod/ProtectedAccountView$2$1;

    invoke-direct {v7, p0}, Lcom/android/exsettings/cyanogenmod/ProtectedAccountView$2$1;-><init>(Lcom/android/exsettings/cyanogenmod/ProtectedAccountView$2;)V

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->post(Ljava/lang/Runnable;)Z

    .line 257
    throw v5
.end method
