.class Lcom/android/exsettings/inputmethod/InputMethodAndLanguageSettings$4;
.super Ljava/lang/Object;
.source "InputMethodAndLanguageSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exsettings/inputmethod/InputMethodAndLanguageSettings;->updateHardKeyboards()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/inputmethod/InputMethodAndLanguageSettings;

.field final synthetic val$identifier:Landroid/hardware/input/InputDeviceIdentifier;


# direct methods
.method constructor <init>(Lcom/android/exsettings/inputmethod/InputMethodAndLanguageSettings;Landroid/hardware/input/InputDeviceIdentifier;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/exsettings/inputmethod/InputMethodAndLanguageSettings;
    .param p2, "val$identifier"    # Landroid/hardware/input/InputDeviceIdentifier;

    .prologue
    .line 656
    iput-object p1, p0, Lcom/android/exsettings/inputmethod/InputMethodAndLanguageSettings$4;->this$0:Lcom/android/exsettings/inputmethod/InputMethodAndLanguageSettings;

    iput-object p2, p0, Lcom/android/exsettings/inputmethod/InputMethodAndLanguageSettings$4;->val$identifier:Landroid/hardware/input/InputDeviceIdentifier;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 659
    iget-object v0, p0, Lcom/android/exsettings/inputmethod/InputMethodAndLanguageSettings$4;->this$0:Lcom/android/exsettings/inputmethod/InputMethodAndLanguageSettings;

    iget-object v1, p0, Lcom/android/exsettings/inputmethod/InputMethodAndLanguageSettings$4;->val$identifier:Landroid/hardware/input/InputDeviceIdentifier;

    invoke-static {v0, v1}, Lcom/android/exsettings/inputmethod/InputMethodAndLanguageSettings;->-wrap2(Lcom/android/exsettings/inputmethod/InputMethodAndLanguageSettings;Landroid/hardware/input/InputDeviceIdentifier;)V

    .line 660
    const/4 v0, 0x1

    return v0
.end method
