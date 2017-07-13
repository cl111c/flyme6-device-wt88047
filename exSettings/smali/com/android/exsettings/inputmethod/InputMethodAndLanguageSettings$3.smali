.class Lcom/android/exsettings/inputmethod/InputMethodAndLanguageSettings$3;
.super Ljava/lang/Object;
.source "InputMethodAndLanguageSettings.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exsettings/inputmethod/InputMethodAndLanguageSettings;->updateInputMethodPreferenceViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/exsettings/inputmethod/InputMethodPreference;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/inputmethod/InputMethodAndLanguageSettings;

.field final synthetic val$collator:Ljava/text/Collator;


# direct methods
.method constructor <init>(Lcom/android/exsettings/inputmethod/InputMethodAndLanguageSettings;Ljava/text/Collator;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/exsettings/inputmethod/InputMethodAndLanguageSettings;
    .param p2, "val$collator"    # Ljava/text/Collator;

    .prologue
    .line 524
    iput-object p1, p0, Lcom/android/exsettings/inputmethod/InputMethodAndLanguageSettings$3;->this$0:Lcom/android/exsettings/inputmethod/InputMethodAndLanguageSettings;

    iput-object p2, p0, Lcom/android/exsettings/inputmethod/InputMethodAndLanguageSettings$3;->val$collator:Ljava/text/Collator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/exsettings/inputmethod/InputMethodPreference;Lcom/android/exsettings/inputmethod/InputMethodPreference;)I
    .locals 1
    .param p1, "lhs"    # Lcom/android/exsettings/inputmethod/InputMethodPreference;
    .param p2, "rhs"    # Lcom/android/exsettings/inputmethod/InputMethodPreference;

    .prologue
    .line 527
    iget-object v0, p0, Lcom/android/exsettings/inputmethod/InputMethodAndLanguageSettings$3;->val$collator:Ljava/text/Collator;

    invoke-virtual {p1, p2, v0}, Lcom/android/exsettings/inputmethod/InputMethodPreference;->compareTo(Lcom/android/exsettings/inputmethod/InputMethodPreference;Ljava/text/Collator;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "lhs"    # Ljava/lang/Object;
    .param p2, "rhs"    # Ljava/lang/Object;

    .prologue
    .line 526
    check-cast p1, Lcom/android/exsettings/inputmethod/InputMethodPreference;

    .end local p1    # "lhs":Ljava/lang/Object;
    check-cast p2, Lcom/android/exsettings/inputmethod/InputMethodPreference;

    .end local p2    # "rhs":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/exsettings/inputmethod/InputMethodAndLanguageSettings$3;->compare(Lcom/android/exsettings/inputmethod/InputMethodPreference;Lcom/android/exsettings/inputmethod/InputMethodPreference;)I

    move-result v0

    return v0
.end method
