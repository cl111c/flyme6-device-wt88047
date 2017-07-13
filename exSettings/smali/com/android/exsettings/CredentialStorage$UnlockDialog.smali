.class Lcom/android/exsettings/CredentialStorage$UnlockDialog;
.super Ljava/lang/Object;
.source "CredentialStorage.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/CredentialStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UnlockDialog"
.end annotation


# instance fields
.field private final mButton:Landroid/widget/Button;

.field private final mError:Landroid/widget/TextView;

.field private final mOldPassword:Landroid/widget/TextView;

.field private mUnlockConfirmed:Z

.field final synthetic this$0:Lcom/android/exsettings/CredentialStorage;


# direct methods
.method private constructor <init>(Lcom/android/exsettings/CredentialStorage;)V
    .locals 8
    .param p1, "this$0"    # Lcom/android/exsettings/CredentialStorage;

    .prologue
    const/4 v7, 0x1

    const/4 v6, -0x1

    const/4 v5, 0x0

    .line 502
    iput-object p1, p0, Lcom/android/exsettings/CredentialStorage$UnlockDialog;->this$0:Lcom/android/exsettings/CredentialStorage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 503
    const v3, 0x7f04002e

    const/4 v4, 0x0

    invoke-static {p1, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 506
    .local v2, "view":Landroid/view/View;
    invoke-static {p1}, Lcom/android/exsettings/CredentialStorage;->-get2(Lcom/android/exsettings/CredentialStorage;)I

    move-result v3

    if-ne v3, v6, :cond_0

    .line 507
    invoke-virtual {p1}, Lcom/android/exsettings/CredentialStorage;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0c1b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 516
    .local v1, "text":Ljava/lang/CharSequence;
    :goto_0
    const v3, 0x7f130071

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 517
    const v3, 0x7f130074

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/exsettings/CredentialStorage$UnlockDialog;->mOldPassword:Landroid/widget/TextView;

    .line 518
    iget-object v3, p0, Lcom/android/exsettings/CredentialStorage$UnlockDialog;->mOldPassword:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 519
    iget-object v3, p0, Lcom/android/exsettings/CredentialStorage$UnlockDialog;->mOldPassword:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 520
    const v3, 0x7f130072

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/exsettings/CredentialStorage$UnlockDialog;->mError:Landroid/widget/TextView;

    .line 522
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 524
    const v4, 0x7f0c0c1a

    .line 522
    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 525
    const v4, 0x104000a

    .line 522
    invoke-virtual {v3, v4, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 526
    const/high16 v4, 0x1040000

    .line 522
    invoke-virtual {v3, v4, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 528
    .local v0, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v0, p0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 529
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 530
    invoke-virtual {v0, v6}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v3

    iput-object v3, p0, Lcom/android/exsettings/CredentialStorage$UnlockDialog;->mButton:Landroid/widget/Button;

    .line 531
    iget-object v3, p0, Lcom/android/exsettings/CredentialStorage$UnlockDialog;->mButton:Landroid/widget/Button;

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 502
    return-void

    .line 508
    .end local v0    # "dialog":Landroid/app/AlertDialog;
    .end local v1    # "text":Ljava/lang/CharSequence;
    :cond_0
    invoke-static {p1}, Lcom/android/exsettings/CredentialStorage;->-get2(Lcom/android/exsettings/CredentialStorage;)I

    move-result v3

    const/4 v4, 0x3

    if-le v3, v4, :cond_1

    .line 509
    invoke-virtual {p1}, Lcom/android/exsettings/CredentialStorage;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0c1f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .restart local v1    # "text":Ljava/lang/CharSequence;
    goto :goto_0

    .line 510
    .end local v1    # "text":Ljava/lang/CharSequence;
    :cond_1
    invoke-static {p1}, Lcom/android/exsettings/CredentialStorage;->-get2(Lcom/android/exsettings/CredentialStorage;)I

    move-result v3

    if-ne v3, v7, :cond_2

    .line 511
    invoke-virtual {p1}, Lcom/android/exsettings/CredentialStorage;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0c20

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .restart local v1    # "text":Ljava/lang/CharSequence;
    goto/16 :goto_0

    .line 513
    .end local v1    # "text":Ljava/lang/CharSequence;
    :cond_2
    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {p1}, Lcom/android/exsettings/CredentialStorage;->-get2(Lcom/android/exsettings/CredentialStorage;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    const v4, 0x7f0c0c21

    invoke-virtual {p1, v4, v3}, Lcom/android/exsettings/CredentialStorage;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "text":Ljava/lang/CharSequence;
    goto/16 :goto_0
.end method

.method synthetic constructor <init>(Lcom/android/exsettings/CredentialStorage;Lcom/android/exsettings/CredentialStorage$UnlockDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/exsettings/CredentialStorage;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/exsettings/CredentialStorage$UnlockDialog;-><init>(Lcom/android/exsettings/CredentialStorage;)V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 4
    .param p1, "editable"    # Landroid/text/Editable;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 535
    iget-object v2, p0, Lcom/android/exsettings/CredentialStorage$UnlockDialog;->mButton:Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/exsettings/CredentialStorage$UnlockDialog;->mOldPassword:Landroid/widget/TextView;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/exsettings/CredentialStorage$UnlockDialog;->mOldPassword:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_1

    :cond_0
    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 534
    return-void

    :cond_1
    move v0, v1

    .line 535
    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 538
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "button"    # I

    .prologue
    .line 545
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/exsettings/CredentialStorage$UnlockDialog;->mUnlockConfirmed:Z

    .line 544
    return-void

    .line 545
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 549
    iget-boolean v1, p0, Lcom/android/exsettings/CredentialStorage$UnlockDialog;->mUnlockConfirmed:Z

    if-eqz v1, :cond_3

    .line 550
    iput-boolean v3, p0, Lcom/android/exsettings/CredentialStorage$UnlockDialog;->mUnlockConfirmed:Z

    .line 551
    iget-object v1, p0, Lcom/android/exsettings/CredentialStorage$UnlockDialog;->mError:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 552
    iget-object v1, p0, Lcom/android/exsettings/CredentialStorage$UnlockDialog;->this$0:Lcom/android/exsettings/CredentialStorage;

    invoke-static {v1}, Lcom/android/exsettings/CredentialStorage;->-get1(Lcom/android/exsettings/CredentialStorage;)Landroid/security/KeyStore;

    move-result-object v1

    iget-object v2, p0, Lcom/android/exsettings/CredentialStorage$UnlockDialog;->mOldPassword:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/security/KeyStore;->unlock(Ljava/lang/String;)Z

    .line 553
    iget-object v1, p0, Lcom/android/exsettings/CredentialStorage$UnlockDialog;->this$0:Lcom/android/exsettings/CredentialStorage;

    invoke-static {v1}, Lcom/android/exsettings/CredentialStorage;->-get1(Lcom/android/exsettings/CredentialStorage;)Landroid/security/KeyStore;

    move-result-object v1

    invoke-virtual {v1}, Landroid/security/KeyStore;->getLastError()I

    move-result v0

    .line 554
    .local v0, "error":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 555
    iget-object v1, p0, Lcom/android/exsettings/CredentialStorage$UnlockDialog;->this$0:Lcom/android/exsettings/CredentialStorage;

    invoke-static {v1, v4}, Lcom/android/exsettings/CredentialStorage;->-set0(Lcom/android/exsettings/CredentialStorage;I)I

    .line 556
    iget-object v1, p0, Lcom/android/exsettings/CredentialStorage$UnlockDialog;->this$0:Lcom/android/exsettings/CredentialStorage;

    .line 557
    const v2, 0x7f0c0c24

    .line 556
    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 561
    iget-object v1, p0, Lcom/android/exsettings/CredentialStorage$UnlockDialog;->this$0:Lcom/android/exsettings/CredentialStorage;

    invoke-static {v1}, Lcom/android/exsettings/CredentialStorage;->-wrap0(Lcom/android/exsettings/CredentialStorage;)V

    .line 574
    :cond_0
    :goto_0
    return-void

    .line 562
    :cond_1
    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 563
    iget-object v1, p0, Lcom/android/exsettings/CredentialStorage$UnlockDialog;->this$0:Lcom/android/exsettings/CredentialStorage;

    invoke-static {v1, v4}, Lcom/android/exsettings/CredentialStorage;->-set0(Lcom/android/exsettings/CredentialStorage;I)I

    .line 564
    iget-object v1, p0, Lcom/android/exsettings/CredentialStorage$UnlockDialog;->this$0:Lcom/android/exsettings/CredentialStorage;

    .line 565
    const v2, 0x7f0c0c22

    .line 564
    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 568
    iget-object v1, p0, Lcom/android/exsettings/CredentialStorage$UnlockDialog;->this$0:Lcom/android/exsettings/CredentialStorage;

    invoke-static {v1}, Lcom/android/exsettings/CredentialStorage;->-wrap1(Lcom/android/exsettings/CredentialStorage;)V

    goto :goto_0

    .line 569
    :cond_2
    const/16 v1, 0xa

    if-lt v0, v1, :cond_0

    .line 571
    iget-object v1, p0, Lcom/android/exsettings/CredentialStorage$UnlockDialog;->this$0:Lcom/android/exsettings/CredentialStorage;

    add-int/lit8 v2, v0, -0xa

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1, v2}, Lcom/android/exsettings/CredentialStorage;->-set0(Lcom/android/exsettings/CredentialStorage;I)I

    .line 572
    iget-object v1, p0, Lcom/android/exsettings/CredentialStorage$UnlockDialog;->this$0:Lcom/android/exsettings/CredentialStorage;

    invoke-static {v1}, Lcom/android/exsettings/CredentialStorage;->-wrap1(Lcom/android/exsettings/CredentialStorage;)V

    goto :goto_0

    .line 576
    .end local v0    # "error":I
    :cond_3
    iget-object v1, p0, Lcom/android/exsettings/CredentialStorage$UnlockDialog;->this$0:Lcom/android/exsettings/CredentialStorage;

    invoke-virtual {v1}, Lcom/android/exsettings/CredentialStorage;->finish()V

    .line 548
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 541
    return-void
.end method
