.class Lcom/android/exsettings/profiles/NFCProfileSelect$4;
.super Ljava/lang/Object;
.source "NFCProfileSelect.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exsettings/profiles/NFCProfileSelect;->showProfileSelectionDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/profiles/NFCProfileSelect;


# direct methods
.method constructor <init>(Lcom/android/exsettings/profiles/NFCProfileSelect;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/exsettings/profiles/NFCProfileSelect;

    .prologue
    .line 108
    iput-object p1, p0, Lcom/android/exsettings/profiles/NFCProfileSelect$4;->this$0:Lcom/android/exsettings/profiles/NFCProfileSelect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/exsettings/profiles/NFCProfileSelect$4;->this$0:Lcom/android/exsettings/profiles/NFCProfileSelect;

    invoke-virtual {v0}, Lcom/android/exsettings/profiles/NFCProfileSelect;->finish()V

    .line 110
    return-void
.end method
