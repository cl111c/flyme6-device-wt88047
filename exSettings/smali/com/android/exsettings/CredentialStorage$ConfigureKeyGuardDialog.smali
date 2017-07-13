.class Lcom/android/exsettings/CredentialStorage$ConfigureKeyGuardDialog;
.super Ljava/lang/Object;
.source "CredentialStorage.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/CredentialStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConfigureKeyGuardDialog"
.end annotation


# instance fields
.field private mConfigureConfirmed:Z

.field final synthetic this$0:Lcom/android/exsettings/CredentialStorage;


# direct methods
.method private constructor <init>(Lcom/android/exsettings/CredentialStorage;)V
    .locals 3
    .param p1, "this$0"    # Lcom/android/exsettings/CredentialStorage;

    .prologue
    .line 388
    iput-object p1, p0, Lcom/android/exsettings/CredentialStorage$ConfigureKeyGuardDialog;->this$0:Lcom/android/exsettings/CredentialStorage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 389
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 390
    const v2, 0x1040014

    .line 389
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 391
    const v2, 0x7f0c0c25

    .line 389
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 392
    const v2, 0x104000a

    .line 389
    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 393
    const/high16 v2, 0x1040000

    .line 389
    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 395
    .local v0, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v0, p0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 396
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 388
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/exsettings/CredentialStorage;Lcom/android/exsettings/CredentialStorage$ConfigureKeyGuardDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/exsettings/CredentialStorage;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/exsettings/CredentialStorage$ConfigureKeyGuardDialog;-><init>(Lcom/android/exsettings/CredentialStorage;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "button"    # I

    .prologue
    .line 400
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/exsettings/CredentialStorage$ConfigureKeyGuardDialog;->mConfigureConfirmed:Z

    .line 399
    return-void

    .line 400
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 404
    iget-boolean v1, p0, Lcom/android/exsettings/CredentialStorage$ConfigureKeyGuardDialog;->mConfigureConfirmed:Z

    if-eqz v1, :cond_0

    .line 405
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/exsettings/CredentialStorage$ConfigureKeyGuardDialog;->mConfigureConfirmed:Z

    .line 406
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.app.action.SET_NEW_PASSWORD"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 407
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "minimum_quality"

    .line 408
    const/high16 v2, 0x10000

    .line 407
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 409
    iget-object v1, p0, Lcom/android/exsettings/CredentialStorage$ConfigureKeyGuardDialog;->this$0:Lcom/android/exsettings/CredentialStorage;

    invoke-virtual {v1, v0}, Lcom/android/exsettings/CredentialStorage;->startActivity(Landroid/content/Intent;)V

    .line 410
    return-void

    .line 412
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    iget-object v1, p0, Lcom/android/exsettings/CredentialStorage$ConfigureKeyGuardDialog;->this$0:Lcom/android/exsettings/CredentialStorage;

    invoke-virtual {v1}, Lcom/android/exsettings/CredentialStorage;->finish()V

    .line 403
    return-void
.end method
