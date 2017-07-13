.class Lcom/android/exsettings/inputmethod/SpellCheckersSettings$1;
.super Ljava/lang/Object;
.source "SpellCheckersSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exsettings/inputmethod/SpellCheckersSettings;->showChooseLanguageDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/inputmethod/SpellCheckersSettings;

.field final synthetic val$currentSci:Landroid/view/textservice/SpellCheckerInfo;


# direct methods
.method constructor <init>(Lcom/android/exsettings/inputmethod/SpellCheckersSettings;Landroid/view/textservice/SpellCheckerInfo;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/exsettings/inputmethod/SpellCheckersSettings;
    .param p2, "val$currentSci"    # Landroid/view/textservice/SpellCheckerInfo;

    .prologue
    .line 188
    iput-object p1, p0, Lcom/android/exsettings/inputmethod/SpellCheckersSettings$1;->this$0:Lcom/android/exsettings/inputmethod/SpellCheckersSettings;

    iput-object p2, p0, Lcom/android/exsettings/inputmethod/SpellCheckersSettings$1;->val$currentSci:Landroid/view/textservice/SpellCheckerInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "item"    # I

    .prologue
    .line 191
    if-nez p2, :cond_0

    .line 192
    iget-object v1, p0, Lcom/android/exsettings/inputmethod/SpellCheckersSettings$1;->this$0:Lcom/android/exsettings/inputmethod/SpellCheckersSettings;

    invoke-static {v1}, Lcom/android/exsettings/inputmethod/SpellCheckersSettings;->-get0(Lcom/android/exsettings/inputmethod/SpellCheckersSettings;)Landroid/view/textservice/TextServicesManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/textservice/TextServicesManager;->setSpellCheckerSubtype(Landroid/view/textservice/SpellCheckerSubtype;)V

    .line 203
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 204
    iget-object v1, p0, Lcom/android/exsettings/inputmethod/SpellCheckersSettings$1;->this$0:Lcom/android/exsettings/inputmethod/SpellCheckersSettings;

    invoke-static {v1}, Lcom/android/exsettings/inputmethod/SpellCheckersSettings;->-wrap2(Lcom/android/exsettings/inputmethod/SpellCheckersSettings;)V

    .line 190
    return-void

    .line 194
    :cond_0
    invoke-static {p2}, Lcom/android/exsettings/inputmethod/SpellCheckersSettings;->-wrap0(I)I

    move-result v0

    .line 195
    .local v0, "index":I
    iget-object v1, p0, Lcom/android/exsettings/inputmethod/SpellCheckersSettings$1;->this$0:Lcom/android/exsettings/inputmethod/SpellCheckersSettings;

    invoke-static {v1}, Lcom/android/exsettings/inputmethod/SpellCheckersSettings;->-get0(Lcom/android/exsettings/inputmethod/SpellCheckersSettings;)Landroid/view/textservice/TextServicesManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/exsettings/inputmethod/SpellCheckersSettings$1;->val$currentSci:Landroid/view/textservice/SpellCheckerInfo;

    invoke-virtual {v2, v0}, Landroid/view/textservice/SpellCheckerInfo;->getSubtypeAt(I)Landroid/view/textservice/SpellCheckerSubtype;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/textservice/TextServicesManager;->setSpellCheckerSubtype(Landroid/view/textservice/SpellCheckerSubtype;)V

    goto :goto_0
.end method
