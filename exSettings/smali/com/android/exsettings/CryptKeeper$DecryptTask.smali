.class Lcom/android/exsettings/CryptKeeper$DecryptTask;
.super Landroid/os/AsyncTask;
.source "CryptKeeper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/CryptKeeper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DecryptTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/CryptKeeper;


# direct methods
.method private constructor <init>(Lcom/android/exsettings/CryptKeeper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/exsettings/CryptKeeper;

    .prologue
    .line 182
    iput-object p1, p0, Lcom/android/exsettings/CryptKeeper$DecryptTask;->this$0:Lcom/android/exsettings/CryptKeeper;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/exsettings/CryptKeeper;Lcom/android/exsettings/CryptKeeper$DecryptTask;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/exsettings/CryptKeeper;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/exsettings/CryptKeeper$DecryptTask;-><init>(Lcom/android/exsettings/CryptKeeper;)V

    return-void
.end method

.method private hide(I)V
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 184
    iget-object v1, p0, Lcom/android/exsettings/CryptKeeper$DecryptTask;->this$0:Lcom/android/exsettings/CryptKeeper;

    invoke-virtual {v1, p1}, Lcom/android/exsettings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 185
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 186
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 183
    :cond_0
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Integer;
    .locals 4
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    .line 201
    iget-object v2, p0, Lcom/android/exsettings/CryptKeeper$DecryptTask;->this$0:Lcom/android/exsettings/CryptKeeper;

    invoke-static {v2}, Lcom/android/exsettings/CryptKeeper;->-wrap0(Lcom/android/exsettings/CryptKeeper;)Landroid/os/storage/IMountService;

    move-result-object v1

    .line 203
    .local v1, "service":Landroid/os/storage/IMountService;
    const/4 v2, 0x0

    :try_start_0
    aget-object v2, p1, v2

    invoke-interface {v1, v2}, Landroid/os/storage/IMountService;->decryptStorage(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 204
    :catch_0
    move-exception v0

    .line 205
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "CryptKeeper"

    const-string/jumbo v3, "Error while decrypting..."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 206
    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    return-object v2
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 200
    check-cast p1, [Ljava/lang/String;

    .end local p1    # "params":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/exsettings/CryptKeeper$DecryptTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 8
    .param p1, "failedAttempts"    # Ljava/lang/Integer;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 212
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v3, :cond_1

    .line 215
    iget-object v3, p0, Lcom/android/exsettings/CryptKeeper$DecryptTask;->this$0:Lcom/android/exsettings/CryptKeeper;

    invoke-static {v3}, Lcom/android/exsettings/CryptKeeper;->-get3(Lcom/android/exsettings/CryptKeeper;)Lcom/android/internal/widget/LockPatternView;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 216
    iget-object v3, p0, Lcom/android/exsettings/CryptKeeper$DecryptTask;->this$0:Lcom/android/exsettings/CryptKeeper;

    invoke-static {v3}, Lcom/android/exsettings/CryptKeeper;->-get3(Lcom/android/exsettings/CryptKeeper;)Lcom/android/internal/widget/LockPatternView;

    move-result-object v3

    iget-object v4, p0, Lcom/android/exsettings/CryptKeeper$DecryptTask;->this$0:Lcom/android/exsettings/CryptKeeper;

    invoke-static {v4}, Lcom/android/exsettings/CryptKeeper;->-get0(Lcom/android/exsettings/CryptKeeper;)Ljava/lang/Runnable;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/LockPatternView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 217
    iget-object v3, p0, Lcom/android/exsettings/CryptKeeper$DecryptTask;->this$0:Lcom/android/exsettings/CryptKeeper;

    invoke-static {v3}, Lcom/android/exsettings/CryptKeeper;->-get3(Lcom/android/exsettings/CryptKeeper;)Lcom/android/internal/widget/LockPatternView;

    move-result-object v3

    iget-object v4, p0, Lcom/android/exsettings/CryptKeeper$DecryptTask;->this$0:Lcom/android/exsettings/CryptKeeper;

    invoke-static {v4}, Lcom/android/exsettings/CryptKeeper;->-get0(Lcom/android/exsettings/CryptKeeper;)Ljava/lang/Runnable;

    move-result-object v4

    const-wide/16 v6, 0x1f4

    invoke-virtual {v3, v4, v6, v7}, Lcom/android/internal/widget/LockPatternView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 219
    :cond_0
    iget-object v3, p0, Lcom/android/exsettings/CryptKeeper$DecryptTask;->this$0:Lcom/android/exsettings/CryptKeeper;

    invoke-static {v3}, Lcom/android/exsettings/CryptKeeper;->-get6(Lcom/android/exsettings/CryptKeeper;)Landroid/widget/TextView;

    move-result-object v3

    const v4, 0x7f0c0ca6

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 220
    const v3, 0x7f130078

    invoke-direct {p0, v3}, Lcom/android/exsettings/CryptKeeper$DecryptTask;->hide(I)V

    .line 221
    const v3, 0x7f130088

    invoke-direct {p0, v3}, Lcom/android/exsettings/CryptKeeper$DecryptTask;->hide(I)V

    .line 222
    const v3, 0x7f13005e

    invoke-direct {p0, v3}, Lcom/android/exsettings/CryptKeeper$DecryptTask;->hide(I)V

    .line 223
    const v3, 0x7f130087

    invoke-direct {p0, v3}, Lcom/android/exsettings/CryptKeeper$DecryptTask;->hide(I)V

    .line 224
    const v3, 0x7f130077

    invoke-direct {p0, v3}, Lcom/android/exsettings/CryptKeeper$DecryptTask;->hide(I)V

    .line 225
    const v3, 0x7f130079

    invoke-direct {p0, v3}, Lcom/android/exsettings/CryptKeeper$DecryptTask;->hide(I)V

    .line 211
    :goto_0
    return-void

    .line 226
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v4, 0x1e

    if-ne v3, v4, :cond_3

    .line 228
    iget-object v3, p0, Lcom/android/exsettings/CryptKeeper$DecryptTask;->this$0:Lcom/android/exsettings/CryptKeeper;

    invoke-static {v3}, Lcom/android/exsettings/CryptKeeper;->-get4(Lcom/android/exsettings/CryptKeeper;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 229
    const-string/jumbo v3, "CryptKeeper"

    .line 230
    const-string/jumbo v4, "  CryptKeeper.MAX_FAILED_ATTEMPTS, calling encryptStorage with wipe"

    .line 229
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    :try_start_0
    iget-object v3, p0, Lcom/android/exsettings/CryptKeeper$DecryptTask;->this$0:Lcom/android/exsettings/CryptKeeper;

    invoke-static {v3}, Lcom/android/exsettings/CryptKeeper;->-wrap0(Lcom/android/exsettings/CryptKeeper;)Landroid/os/storage/IMountService;

    move-result-object v2

    .line 233
    .local v2, "service":Landroid/os/storage/IMountService;
    const-string/jumbo v3, ""

    const/4 v4, 0x1

    invoke-interface {v2, v4, v3}, Landroid/os/storage/IMountService;->encryptWipeStorage(ILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 235
    .end local v2    # "service":Landroid/os/storage/IMountService;
    :catch_0
    move-exception v0

    .line 236
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "CryptKeeper"

    const-string/jumbo v4, "Unable to call MountService properly"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    return-void

    .line 240
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.MASTER_CLEAR"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 241
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v3, 0x10000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 242
    const-string/jumbo v3, "android.intent.extra.REASON"

    const-string/jumbo v4, "CryptKeeper.MAX_FAILED_ATTEMPTS"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 243
    iget-object v3, p0, Lcom/android/exsettings/CryptKeeper$DecryptTask;->this$0:Lcom/android/exsettings/CryptKeeper;

    invoke-virtual {v3, v1}, Lcom/android/exsettings/CryptKeeper;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 245
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_4

    .line 247
    iget-object v3, p0, Lcom/android/exsettings/CryptKeeper$DecryptTask;->this$0:Lcom/android/exsettings/CryptKeeper;

    const v4, 0x7f04003a

    invoke-virtual {v3, v4}, Lcom/android/exsettings/CryptKeeper;->setContentView(I)V

    .line 248
    iget-object v3, p0, Lcom/android/exsettings/CryptKeeper$DecryptTask;->this$0:Lcom/android/exsettings/CryptKeeper;

    invoke-static {v3, v6, v5}, Lcom/android/exsettings/CryptKeeper;->-wrap10(Lcom/android/exsettings/CryptKeeper;ZZ)V

    .line 249
    return-void

    .line 251
    :cond_4
    iget-object v3, p0, Lcom/android/exsettings/CryptKeeper$DecryptTask;->this$0:Lcom/android/exsettings/CryptKeeper;

    invoke-static {v3, p1}, Lcom/android/exsettings/CryptKeeper;->-wrap4(Lcom/android/exsettings/CryptKeeper;Ljava/lang/Integer;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "failedAttempts"    # Ljava/lang/Object;

    .prologue
    .line 211
    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "failedAttempts":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/exsettings/CryptKeeper$DecryptTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 192
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 193
    iget-object v0, p0, Lcom/android/exsettings/CryptKeeper$DecryptTask;->this$0:Lcom/android/exsettings/CryptKeeper;

    invoke-static {v0}, Lcom/android/exsettings/CryptKeeper;->-get3(Lcom/android/exsettings/CryptKeeper;)Lcom/android/internal/widget/LockPatternView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/android/exsettings/CryptKeeper$DecryptTask;->this$0:Lcom/android/exsettings/CryptKeeper;

    invoke-static {v0}, Lcom/android/exsettings/CryptKeeper;->-get3(Lcom/android/exsettings/CryptKeeper;)Lcom/android/internal/widget/LockPatternView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/exsettings/CryptKeeper$DecryptTask;->this$0:Lcom/android/exsettings/CryptKeeper;

    invoke-static {v1}, Lcom/android/exsettings/CryptKeeper;->-get2(Lcom/android/exsettings/CryptKeeper;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 196
    :cond_0
    iget-object v0, p0, Lcom/android/exsettings/CryptKeeper$DecryptTask;->this$0:Lcom/android/exsettings/CryptKeeper;

    invoke-static {v0}, Lcom/android/exsettings/CryptKeeper;->-wrap1(Lcom/android/exsettings/CryptKeeper;)V

    .line 191
    return-void
.end method
