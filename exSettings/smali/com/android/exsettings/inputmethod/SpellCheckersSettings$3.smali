.class Lcom/android/exsettings/inputmethod/SpellCheckersSettings$3;
.super Ljava/lang/Object;
.source "SpellCheckersSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exsettings/inputmethod/SpellCheckersSettings;->showSecurityWarnDialog(Lcom/android/exsettings/inputmethod/SpellCheckerPreference;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/inputmethod/SpellCheckersSettings;


# direct methods
.method constructor <init>(Lcom/android/exsettings/inputmethod/SpellCheckersSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/exsettings/inputmethod/SpellCheckersSettings;

    .prologue
    .line 226
    iput-object p1, p0, Lcom/android/exsettings/inputmethod/SpellCheckersSettings$3;->this$0:Lcom/android/exsettings/inputmethod/SpellCheckersSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 228
    return-void
.end method
