.class Lcom/android/exsettings/sim/SimDialogActivity$2;
.super Ljava/lang/Object;
.source "SimDialogActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exsettings/sim/SimDialogActivity;->displayPreferredDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/sim/SimDialogActivity;


# direct methods
.method constructor <init>(Lcom/android/exsettings/sim/SimDialogActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/exsettings/sim/SimDialogActivity;

    .prologue
    .line 121
    iput-object p1, p0, Lcom/android/exsettings/sim/SimDialogActivity$2;->this$0:Lcom/android/exsettings/sim/SimDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/exsettings/sim/SimDialogActivity$2;->this$0:Lcom/android/exsettings/sim/SimDialogActivity;

    invoke-virtual {v0}, Lcom/android/exsettings/sim/SimDialogActivity;->finish()V

    .line 123
    return-void
.end method
