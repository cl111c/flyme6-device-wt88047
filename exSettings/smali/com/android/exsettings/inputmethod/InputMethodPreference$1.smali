.class Lcom/android/exsettings/inputmethod/InputMethodPreference$1;
.super Ljava/lang/Object;
.source "InputMethodPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exsettings/inputmethod/InputMethodPreference;->showSecurityWarnDialog(Landroid/view/inputmethod/InputMethodInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/inputmethod/InputMethodPreference;


# direct methods
.method constructor <init>(Lcom/android/exsettings/inputmethod/InputMethodPreference;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/exsettings/inputmethod/InputMethodPreference;

    .prologue
    .line 223
    iput-object p1, p0, Lcom/android/exsettings/inputmethod/InputMethodPreference$1;->this$0:Lcom/android/exsettings/inputmethod/InputMethodPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 227
    iget-object v0, p0, Lcom/android/exsettings/inputmethod/InputMethodPreference$1;->this$0:Lcom/android/exsettings/inputmethod/InputMethodPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/exsettings/inputmethod/InputMethodPreference;->setChecked(Z)V

    .line 228
    iget-object v0, p0, Lcom/android/exsettings/inputmethod/InputMethodPreference$1;->this$0:Lcom/android/exsettings/inputmethod/InputMethodPreference;

    invoke-static {v0}, Lcom/android/exsettings/inputmethod/InputMethodPreference;->-get0(Lcom/android/exsettings/inputmethod/InputMethodPreference;)Lcom/android/exsettings/inputmethod/InputMethodPreference$OnSavePreferenceListener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/exsettings/inputmethod/InputMethodPreference$1;->this$0:Lcom/android/exsettings/inputmethod/InputMethodPreference;

    invoke-interface {v0, v1}, Lcom/android/exsettings/inputmethod/InputMethodPreference$OnSavePreferenceListener;->onSaveInputMethodPreference(Lcom/android/exsettings/inputmethod/InputMethodPreference;)V

    .line 229
    iget-object v0, p0, Lcom/android/exsettings/inputmethod/InputMethodPreference$1;->this$0:Lcom/android/exsettings/inputmethod/InputMethodPreference;

    invoke-static {v0}, Lcom/android/exsettings/inputmethod/InputMethodPreference;->-wrap0(Lcom/android/exsettings/inputmethod/InputMethodPreference;)V

    .line 225
    return-void
.end method
