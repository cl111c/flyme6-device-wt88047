.class Lcom/android/exsettings/inputmethod/KeyboardLayoutDialogFragment$1;
.super Ljava/lang/Object;
.source "KeyboardLayoutDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exsettings/inputmethod/KeyboardLayoutDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/inputmethod/KeyboardLayoutDialogFragment;


# direct methods
.method constructor <init>(Lcom/android/exsettings/inputmethod/KeyboardLayoutDialogFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/exsettings/inputmethod/KeyboardLayoutDialogFragment;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/android/exsettings/inputmethod/KeyboardLayoutDialogFragment$1;->this$0:Lcom/android/exsettings/inputmethod/KeyboardLayoutDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/exsettings/inputmethod/KeyboardLayoutDialogFragment$1;->this$0:Lcom/android/exsettings/inputmethod/KeyboardLayoutDialogFragment;

    invoke-static {v0}, Lcom/android/exsettings/inputmethod/KeyboardLayoutDialogFragment;->-wrap1(Lcom/android/exsettings/inputmethod/KeyboardLayoutDialogFragment;)V

    .line 99
    return-void
.end method
