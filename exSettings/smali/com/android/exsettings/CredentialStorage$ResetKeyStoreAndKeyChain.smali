.class Lcom/android/exsettings/CredentialStorage$ResetKeyStoreAndKeyChain;
.super Landroid/os/AsyncTask;
.source "CredentialStorage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/CredentialStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ResetKeyStoreAndKeyChain"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/CredentialStorage;


# direct methods
.method private constructor <init>(Lcom/android/exsettings/CredentialStorage;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/exsettings/CredentialStorage;

    .prologue
    .line 340
    iput-object p1, p0, Lcom/android/exsettings/CredentialStorage$ResetKeyStoreAndKeyChain;->this$0:Lcom/android/exsettings/CredentialStorage;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/exsettings/CredentialStorage;Lcom/android/exsettings/CredentialStorage$ResetKeyStoreAndKeyChain;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/exsettings/CredentialStorage;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/exsettings/CredentialStorage$ResetKeyStoreAndKeyChain;-><init>(Lcom/android/exsettings/CredentialStorage;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 13
    .param p1, "unused"    # [Ljava/lang/Void;

    .prologue
    const/4 v8, 0x0

    .line 345
    iget-object v7, p0, Lcom/android/exsettings/CredentialStorage$ResetKeyStoreAndKeyChain;->this$0:Lcom/android/exsettings/CredentialStorage;

    const-string/jumbo v9, "user"

    invoke-virtual {v7, v9}, Lcom/android/exsettings/CredentialStorage;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/UserManager;

    .line 346
    .local v6, "um":Landroid/os/UserManager;
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v7

    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "pi$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    .line 347
    .local v3, "pi":Landroid/content/pm/UserInfo;
    invoke-static {}, Lcom/android/exsettings/CredentialStorage;->-get0()[I

    move-result-object v9

    array-length v10, v9

    move v7, v8

    :goto_0
    if-ge v7, v10, :cond_0

    aget v5, v9, v7

    .line 348
    .local v5, "uid":I
    iget-object v11, p0, Lcom/android/exsettings/CredentialStorage$ResetKeyStoreAndKeyChain;->this$0:Lcom/android/exsettings/CredentialStorage;

    invoke-static {v11}, Lcom/android/exsettings/CredentialStorage;->-get1(Lcom/android/exsettings/CredentialStorage;)Landroid/security/KeyStore;

    move-result-object v11

    iget v12, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v12, v5}, Landroid/os/UserHandle;->getUid(II)I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/security/KeyStore;->clearUid(I)Z

    .line 347
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 354
    .end local v3    # "pi":Landroid/content/pm/UserInfo;
    .end local v5    # "uid":I
    :cond_1
    :try_start_0
    iget-object v7, p0, Lcom/android/exsettings/CredentialStorage$ResetKeyStoreAndKeyChain;->this$0:Lcom/android/exsettings/CredentialStorage;

    invoke-static {v7}, Landroid/security/KeyChain;->bind(Landroid/content/Context;)Landroid/security/KeyChain$KeyChainConnection;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 356
    .local v2, "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    :try_start_1
    invoke-virtual {v2}, Landroid/security/KeyChain$KeyChainConnection;->getService()Landroid/security/IKeyChainService;

    move-result-object v7

    invoke-interface {v7}, Landroid/security/IKeyChainService;->reset()Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v7

    .line 360
    :try_start_2
    invoke-virtual {v2}, Landroid/security/KeyChain$KeyChainConnection;->close()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    .line 356
    return-object v7

    .line 357
    :catch_0
    move-exception v0

    .line 358
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v7, 0x0

    :try_start_3
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v7

    .line 360
    :try_start_4
    invoke-virtual {v2}, Landroid/security/KeyChain$KeyChainConnection;->close()V

    .line 358
    return-object v7

    .line 359
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v7

    .line 360
    invoke-virtual {v2}, Landroid/security/KeyChain$KeyChainConnection;->close()V

    .line 359
    throw v7
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1

    .line 362
    .end local v2    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    :catch_1
    move-exception v1

    .line 363
    .local v1, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Thread;->interrupt()V

    .line 364
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    return-object v7
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "unused"    # [Ljava/lang/Object;

    .prologue
    .line 342
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "unused":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/exsettings/CredentialStorage$ResetKeyStoreAndKeyChain;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 3
    .param p1, "success"    # Ljava/lang/Boolean;

    .prologue
    const/4 v2, 0x0

    .line 369
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 370
    iget-object v0, p0, Lcom/android/exsettings/CredentialStorage$ResetKeyStoreAndKeyChain;->this$0:Lcom/android/exsettings/CredentialStorage;

    .line 371
    const v1, 0x7f0c0c22

    .line 370
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 376
    :goto_0
    iget-object v0, p0, Lcom/android/exsettings/CredentialStorage$ResetKeyStoreAndKeyChain;->this$0:Lcom/android/exsettings/CredentialStorage;

    invoke-virtual {v0}, Lcom/android/exsettings/CredentialStorage;->finish()V

    .line 368
    return-void

    .line 373
    :cond_0
    iget-object v0, p0, Lcom/android/exsettings/CredentialStorage$ResetKeyStoreAndKeyChain;->this$0:Lcom/android/exsettings/CredentialStorage;

    .line 374
    const v1, 0x7f0c0c23

    .line 373
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "success"    # Ljava/lang/Object;

    .prologue
    .line 368
    check-cast p1, Ljava/lang/Boolean;

    .end local p1    # "success":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/exsettings/CredentialStorage$ResetKeyStoreAndKeyChain;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
