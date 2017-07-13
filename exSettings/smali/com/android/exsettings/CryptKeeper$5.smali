.class Lcom/android/exsettings/CryptKeeper$5;
.super Landroid/os/AsyncTask;
.source "CryptKeeper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exsettings/CryptKeeper;->setupUi()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field owner_info:Ljava/lang/String;

.field passwordType:I

.field password_visible:Z

.field pattern_visible:Z

.field final synthetic this$0:Lcom/android/exsettings/CryptKeeper;


# direct methods
.method constructor <init>(Lcom/android/exsettings/CryptKeeper;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/exsettings/CryptKeeper;

    .prologue
    .line 506
    iput-object p1, p0, Lcom/android/exsettings/CryptKeeper$5;->this$0:Lcom/android/exsettings/CryptKeeper;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 507
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/exsettings/CryptKeeper$5;->passwordType:I

    .line 506
    return-void
.end method


# virtual methods
.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "v"    # [Ljava/lang/Object;

    .prologue
    .line 513
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "v":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/exsettings/CryptKeeper$5;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 6
    .param p1, "v"    # [Ljava/lang/Void;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 515
    :try_start_0
    iget-object v4, p0, Lcom/android/exsettings/CryptKeeper$5;->this$0:Lcom/android/exsettings/CryptKeeper;

    invoke-static {v4}, Lcom/android/exsettings/CryptKeeper;->-wrap0(Lcom/android/exsettings/CryptKeeper;)Landroid/os/storage/IMountService;

    move-result-object v1

    .line 516
    .local v1, "service":Landroid/os/storage/IMountService;
    invoke-interface {v1}, Landroid/os/storage/IMountService;->getPasswordType()I

    move-result v4

    iput v4, p0, Lcom/android/exsettings/CryptKeeper$5;->passwordType:I

    .line 517
    const-string/jumbo v4, "OwnerInfo"

    invoke-interface {v1, v4}, Landroid/os/storage/IMountService;->getField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/exsettings/CryptKeeper$5;->owner_info:Ljava/lang/String;

    .line 518
    const-string/jumbo v4, "0"

    const-string/jumbo v5, "PatternVisible"

    invoke-interface {v1, v5}, Landroid/os/storage/IMountService;->getField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v4, v2

    :goto_0
    iput-boolean v4, p0, Lcom/android/exsettings/CryptKeeper$5;->pattern_visible:Z

    .line 519
    const-string/jumbo v4, "0"

    const-string/jumbo v5, "PasswordVisible"

    invoke-interface {v1, v5}, Landroid/os/storage/IMountService;->getField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    :goto_1
    iput-boolean v2, p0, Lcom/android/exsettings/CryptKeeper$5;->password_visible:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 524
    .end local v1    # "service":Landroid/os/storage/IMountService;
    :goto_2
    const/4 v2, 0x0

    return-object v2

    .restart local v1    # "service":Landroid/os/storage/IMountService;
    :cond_0
    move v4, v3

    .line 518
    goto :goto_0

    :cond_1
    move v2, v3

    .line 519
    goto :goto_1

    .line 520
    .end local v1    # "service":Landroid/os/storage/IMountService;
    :catch_0
    move-exception v0

    .line 521
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "CryptKeeper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Error calling mount service "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "v"    # Ljava/lang/Object;

    .prologue
    .line 528
    check-cast p1, Ljava/lang/Void;

    .end local p1    # "v":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/exsettings/CryptKeeper$5;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method public onPostExecute(Ljava/lang/Void;)V
    .locals 6
    .param p1, "v"    # Ljava/lang/Void;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 529
    iget-object v1, p0, Lcom/android/exsettings/CryptKeeper$5;->this$0:Lcom/android/exsettings/CryptKeeper;

    invoke-virtual {v1}, Lcom/android/exsettings/CryptKeeper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "show_password"

    .line 530
    iget-boolean v1, p0, Lcom/android/exsettings/CryptKeeper$5;->password_visible:Z

    if-eqz v1, :cond_3

    move v1, v2

    .line 529
    :goto_0
    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 532
    iget v1, p0, Lcom/android/exsettings/CryptKeeper$5;->passwordType:I

    const/4 v4, 0x3

    if-ne v1, v4, :cond_4

    .line 533
    iget-object v1, p0, Lcom/android/exsettings/CryptKeeper$5;->this$0:Lcom/android/exsettings/CryptKeeper;

    const v4, 0x7f040038

    invoke-virtual {v1, v4}, Lcom/android/exsettings/CryptKeeper;->setContentView(I)V

    .line 534
    iget-object v1, p0, Lcom/android/exsettings/CryptKeeper$5;->this$0:Lcom/android/exsettings/CryptKeeper;

    const v4, 0x7f0c0ca0

    invoke-static {v1, v4}, Lcom/android/exsettings/CryptKeeper;->-set3(Lcom/android/exsettings/CryptKeeper;I)I

    .line 543
    :goto_1
    iget-object v1, p0, Lcom/android/exsettings/CryptKeeper$5;->this$0:Lcom/android/exsettings/CryptKeeper;

    invoke-static {v1}, Lcom/android/exsettings/CryptKeeper;->-get6(Lcom/android/exsettings/CryptKeeper;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v4, p0, Lcom/android/exsettings/CryptKeeper$5;->this$0:Lcom/android/exsettings/CryptKeeper;

    invoke-static {v4}, Lcom/android/exsettings/CryptKeeper;->-get5(Lcom/android/exsettings/CryptKeeper;)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    .line 545
    iget-object v1, p0, Lcom/android/exsettings/CryptKeeper$5;->this$0:Lcom/android/exsettings/CryptKeeper;

    const v4, 0x7f130087

    invoke-virtual {v1, v4}, Lcom/android/exsettings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 546
    .local v0, "ownerInfo":Landroid/widget/TextView;
    iget-object v1, p0, Lcom/android/exsettings/CryptKeeper$5;->owner_info:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 547
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 549
    iget-object v1, p0, Lcom/android/exsettings/CryptKeeper$5;->this$0:Lcom/android/exsettings/CryptKeeper;

    invoke-static {v1}, Lcom/android/exsettings/CryptKeeper;->-wrap6(Lcom/android/exsettings/CryptKeeper;)V

    .line 551
    iget-object v1, p0, Lcom/android/exsettings/CryptKeeper$5;->this$0:Lcom/android/exsettings/CryptKeeper;

    const v4, 0x1020002

    invoke-virtual {v1, v4}, Lcom/android/exsettings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/high16 v4, 0x400000

    invoke-virtual {v1, v4}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 553
    iget-object v1, p0, Lcom/android/exsettings/CryptKeeper$5;->this$0:Lcom/android/exsettings/CryptKeeper;

    invoke-static {v1}, Lcom/android/exsettings/CryptKeeper;->-get3(Lcom/android/exsettings/CryptKeeper;)Lcom/android/internal/widget/LockPatternView;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 554
    iget-object v1, p0, Lcom/android/exsettings/CryptKeeper$5;->this$0:Lcom/android/exsettings/CryptKeeper;

    invoke-static {v1}, Lcom/android/exsettings/CryptKeeper;->-get3(Lcom/android/exsettings/CryptKeeper;)Lcom/android/internal/widget/LockPatternView;

    move-result-object v1

    iget-boolean v4, p0, Lcom/android/exsettings/CryptKeeper$5;->pattern_visible:Z

    if-eqz v4, :cond_0

    move v2, v3

    :cond_0
    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternView;->setInStealthMode(Z)V

    .line 556
    :cond_1
    iget-object v1, p0, Lcom/android/exsettings/CryptKeeper$5;->this$0:Lcom/android/exsettings/CryptKeeper;

    invoke-static {v1}, Lcom/android/exsettings/CryptKeeper;->-get1(Lcom/android/exsettings/CryptKeeper;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 558
    iget-object v1, p0, Lcom/android/exsettings/CryptKeeper$5;->this$0:Lcom/android/exsettings/CryptKeeper;

    invoke-static {v1, v3}, Lcom/android/exsettings/CryptKeeper;->-wrap7(Lcom/android/exsettings/CryptKeeper;Z)V

    .line 559
    iget-object v1, p0, Lcom/android/exsettings/CryptKeeper$5;->this$0:Lcom/android/exsettings/CryptKeeper;

    invoke-static {v1}, Lcom/android/exsettings/CryptKeeper;->-wrap2(Lcom/android/exsettings/CryptKeeper;)V

    .line 528
    :cond_2
    return-void

    .end local v0    # "ownerInfo":Landroid/widget/TextView;
    :cond_3
    move v1, v3

    .line 530
    goto :goto_0

    .line 535
    :cond_4
    iget v1, p0, Lcom/android/exsettings/CryptKeeper$5;->passwordType:I

    const/4 v4, 0x2

    if-ne v1, v4, :cond_5

    .line 536
    iget-object v1, p0, Lcom/android/exsettings/CryptKeeper$5;->this$0:Lcom/android/exsettings/CryptKeeper;

    const v4, 0x7f040035

    invoke-virtual {v1, v4}, Lcom/android/exsettings/CryptKeeper;->setContentView(I)V

    .line 537
    iget-object v1, p0, Lcom/android/exsettings/CryptKeeper$5;->this$0:Lcom/android/exsettings/CryptKeeper;

    invoke-static {v1, v3}, Lcom/android/exsettings/CryptKeeper;->-wrap7(Lcom/android/exsettings/CryptKeeper;Z)V

    .line 538
    iget-object v1, p0, Lcom/android/exsettings/CryptKeeper$5;->this$0:Lcom/android/exsettings/CryptKeeper;

    const v4, 0x7f0c0ca1

    invoke-static {v1, v4}, Lcom/android/exsettings/CryptKeeper;->-set3(Lcom/android/exsettings/CryptKeeper;I)I

    goto :goto_1

    .line 540
    :cond_5
    iget-object v1, p0, Lcom/android/exsettings/CryptKeeper$5;->this$0:Lcom/android/exsettings/CryptKeeper;

    const v4, 0x7f040033

    invoke-virtual {v1, v4}, Lcom/android/exsettings/CryptKeeper;->setContentView(I)V

    .line 541
    iget-object v1, p0, Lcom/android/exsettings/CryptKeeper$5;->this$0:Lcom/android/exsettings/CryptKeeper;

    const v4, 0x7f0c0c9f

    invoke-static {v1, v4}, Lcom/android/exsettings/CryptKeeper;->-set3(Lcom/android/exsettings/CryptKeeper;I)I

    goto/16 :goto_1
.end method
