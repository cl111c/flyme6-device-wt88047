.class Lcom/android/exsettings/profiles/SetupActionsFragment$19;
.super Ljava/lang/Object;
.source "SetupActionsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exsettings/profiles/SetupActionsFragment;->requestProfileName()Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/profiles/SetupActionsFragment;

.field final synthetic val$entry:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/android/exsettings/profiles/SetupActionsFragment;Landroid/widget/EditText;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/exsettings/profiles/SetupActionsFragment;
    .param p2, "val$entry"    # Landroid/widget/EditText;

    .prologue
    .line 1019
    iput-object p1, p0, Lcom/android/exsettings/profiles/SetupActionsFragment$19;->this$0:Lcom/android/exsettings/profiles/SetupActionsFragment;

    iput-object p2, p0, Lcom/android/exsettings/profiles/SetupActionsFragment$19;->val$entry:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 1023
    iget-object v1, p0, Lcom/android/exsettings/profiles/SetupActionsFragment$19;->this$0:Lcom/android/exsettings/profiles/SetupActionsFragment;

    const-string/jumbo v2, "input_method"

    invoke-static {v1, v2}, Lcom/android/exsettings/profiles/SetupActionsFragment;->-wrap0(Lcom/android/exsettings/profiles/SetupActionsFragment;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 1022
    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1024
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/android/exsettings/profiles/SetupActionsFragment$19;->val$entry:Landroid/widget/EditText;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 1021
    return-void
.end method
