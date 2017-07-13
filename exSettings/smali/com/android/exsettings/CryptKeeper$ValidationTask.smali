.class Lcom/android/exsettings/CryptKeeper$ValidationTask;
.super Landroid/os/AsyncTask;
.source "CryptKeeper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/CryptKeeper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ValidationTask"
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
.field state:I

.field final synthetic this$0:Lcom/android/exsettings/CryptKeeper;


# direct methods
.method private constructor <init>(Lcom/android/exsettings/CryptKeeper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/exsettings/CryptKeeper;

    .prologue
    .line 314
    iput-object p1, p0, Lcom/android/exsettings/CryptKeeper$ValidationTask;->this$0:Lcom/android/exsettings/CryptKeeper;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/exsettings/CryptKeeper;Lcom/android/exsettings/CryptKeeper$ValidationTask;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/exsettings/CryptKeeper;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/exsettings/CryptKeeper$ValidationTask;-><init>(Lcom/android/exsettings/CryptKeeper;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 8
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    const/4 v7, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 319
    iget-object v4, p0, Lcom/android/exsettings/CryptKeeper$ValidationTask;->this$0:Lcom/android/exsettings/CryptKeeper;

    invoke-static {v4}, Lcom/android/exsettings/CryptKeeper;->-wrap0(Lcom/android/exsettings/CryptKeeper;)Landroid/os/storage/IMountService;

    move-result-object v1

    .line 321
    .local v1, "service":Landroid/os/storage/IMountService;
    :try_start_0
    const-string/jumbo v4, "CryptKeeper"

    const-string/jumbo v5, "Validating encryption state."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    invoke-interface {v1}, Landroid/os/storage/IMountService;->getEncryptionState()I

    move-result v4

    iput v4, p0, Lcom/android/exsettings/CryptKeeper$ValidationTask;->state:I

    .line 323
    iget v4, p0, Lcom/android/exsettings/CryptKeeper$ValidationTask;->state:I

    if-ne v4, v2, :cond_0

    .line 324
    const-string/jumbo v2, "CryptKeeper"

    const-string/jumbo v4, "Unexpectedly in CryptKeeper even though there is no encryption."

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    return-object v2

    .line 327
    :cond_0
    iget-object v5, p0, Lcom/android/exsettings/CryptKeeper$ValidationTask;->this$0:Lcom/android/exsettings/CryptKeeper;

    iget v4, p0, Lcom/android/exsettings/CryptKeeper$ValidationTask;->state:I

    const/4 v6, -0x5

    if-eq v4, v6, :cond_2

    .line 328
    iget v4, p0, Lcom/android/exsettings/CryptKeeper$ValidationTask;->state:I

    if-ne v4, v7, :cond_3

    move v4, v2

    .line 327
    :goto_0
    invoke-static {v5, v4}, Lcom/android/exsettings/CryptKeeper;->-set2(Lcom/android/exsettings/CryptKeeper;Z)Z

    .line 329
    iget v4, p0, Lcom/android/exsettings/CryptKeeper$ValidationTask;->state:I

    if-eqz v4, :cond_1

    .line 330
    iget v4, p0, Lcom/android/exsettings/CryptKeeper$ValidationTask;->state:I

    if-ne v4, v7, :cond_4

    .line 329
    :cond_1
    :goto_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    :cond_2
    move v4, v2

    .line 327
    goto :goto_0

    :cond_3
    move v4, v3

    .line 328
    goto :goto_0

    :cond_4
    move v2, v3

    .line 330
    goto :goto_1

    .line 331
    :catch_0
    move-exception v0

    .line 332
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "CryptKeeper"

    const-string/jumbo v4, "Unable to get encryption state properly"

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    return-object v2
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 318
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "params":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/exsettings/CryptKeeper$ValidationTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 4
    .param p1, "result"    # Ljava/lang/Boolean;

    .prologue
    const/4 v0, 0x1

    .line 339
    iget-object v1, p0, Lcom/android/exsettings/CryptKeeper$ValidationTask;->this$0:Lcom/android/exsettings/CryptKeeper;

    invoke-static {v1, v0}, Lcom/android/exsettings/CryptKeeper;->-set4(Lcom/android/exsettings/CryptKeeper;Z)Z

    .line 340
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, p1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 341
    const-string/jumbo v1, "CryptKeeper"

    const-string/jumbo v2, "Incomplete, or corrupted encryption detected. Prompting user to wipe."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    iget-object v1, p0, Lcom/android/exsettings/CryptKeeper$ValidationTask;->this$0:Lcom/android/exsettings/CryptKeeper;

    invoke-static {v1, v0}, Lcom/android/exsettings/CryptKeeper;->-set1(Lcom/android/exsettings/CryptKeeper;Z)Z

    .line 343
    iget-object v1, p0, Lcom/android/exsettings/CryptKeeper$ValidationTask;->this$0:Lcom/android/exsettings/CryptKeeper;

    iget v2, p0, Lcom/android/exsettings/CryptKeeper$ValidationTask;->state:I

    const/4 v3, -0x4

    if-ne v2, v3, :cond_0

    :goto_0
    invoke-static {v1, v0}, Lcom/android/exsettings/CryptKeeper;->-set0(Lcom/android/exsettings/CryptKeeper;Z)Z

    .line 347
    :goto_1
    iget-object v0, p0, Lcom/android/exsettings/CryptKeeper$ValidationTask;->this$0:Lcom/android/exsettings/CryptKeeper;

    invoke-static {v0}, Lcom/android/exsettings/CryptKeeper;->-wrap9(Lcom/android/exsettings/CryptKeeper;)V

    .line 338
    return-void

    .line 343
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 345
    :cond_1
    const-string/jumbo v0, "CryptKeeper"

    const-string/jumbo v1, "Encryption state validated. Proceeding to configure UI"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 338
    check-cast p1, Ljava/lang/Boolean;

    .end local p1    # "result":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/exsettings/CryptKeeper$ValidationTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
