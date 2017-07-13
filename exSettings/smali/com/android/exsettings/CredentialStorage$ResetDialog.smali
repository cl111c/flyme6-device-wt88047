.class Lcom/android/exsettings/CredentialStorage$ResetDialog;
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
    name = "ResetDialog"
.end annotation


# instance fields
.field private mResetConfirmed:Z

.field final synthetic this$0:Lcom/android/exsettings/CredentialStorage;


# direct methods
.method private constructor <init>(Lcom/android/exsettings/CredentialStorage;)V
    .locals 3
    .param p1, "this$0"    # Lcom/android/exsettings/CredentialStorage;

    .prologue
    .line 312
    iput-object p1, p0, Lcom/android/exsettings/CredentialStorage$ResetDialog;->this$0:Lcom/android/exsettings/CredentialStorage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 313
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 314
    const v2, 0x1040014

    .line 313
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 315
    const v2, 0x7f0c0c1d

    .line 313
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 316
    const v2, 0x104000a

    .line 313
    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 317
    const/high16 v2, 0x1040000

    .line 313
    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 319
    .local v0, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v0, p0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 320
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 312
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/exsettings/CredentialStorage;Lcom/android/exsettings/CredentialStorage$ResetDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/exsettings/CredentialStorage;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/exsettings/CredentialStorage$ResetDialog;-><init>(Lcom/android/exsettings/CredentialStorage;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "button"    # I

    .prologue
    .line 324
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/exsettings/CredentialStorage$ResetDialog;->mResetConfirmed:Z

    .line 323
    return-void

    .line 324
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    const/4 v3, 0x0

    .line 328
    iget-boolean v0, p0, Lcom/android/exsettings/CredentialStorage$ResetDialog;->mResetConfirmed:Z

    if-eqz v0, :cond_0

    .line 329
    iput-boolean v3, p0, Lcom/android/exsettings/CredentialStorage$ResetDialog;->mResetConfirmed:Z

    .line 330
    new-instance v0, Lcom/android/exsettings/CredentialStorage$ResetKeyStoreAndKeyChain;

    iget-object v1, p0, Lcom/android/exsettings/CredentialStorage$ResetDialog;->this$0:Lcom/android/exsettings/CredentialStorage;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/exsettings/CredentialStorage$ResetKeyStoreAndKeyChain;-><init>(Lcom/android/exsettings/CredentialStorage;Lcom/android/exsettings/CredentialStorage$ResetKeyStoreAndKeyChain;)V

    new-array v1, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/exsettings/CredentialStorage$ResetKeyStoreAndKeyChain;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 331
    return-void

    .line 333
    :cond_0
    iget-object v0, p0, Lcom/android/exsettings/CredentialStorage$ResetDialog;->this$0:Lcom/android/exsettings/CredentialStorage;

    invoke-virtual {v0}, Lcom/android/exsettings/CredentialStorage;->finish()V

    .line 327
    return-void
.end method
