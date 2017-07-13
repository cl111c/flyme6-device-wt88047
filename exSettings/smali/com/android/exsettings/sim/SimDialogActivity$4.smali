.class Lcom/android/exsettings/sim/SimDialogActivity$4;
.super Ljava/lang/Object;
.source "SimDialogActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exsettings/sim/SimDialogActivity;->createDialog(Landroid/content/Context;I)Landroid/app/Dialog;
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
    .line 237
    iput-object p1, p0, Lcom/android/exsettings/sim/SimDialogActivity$4;->this$0:Lcom/android/exsettings/sim/SimDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 241
    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/android/exsettings/sim/SimDialogActivity$4;->this$0:Lcom/android/exsettings/sim/SimDialogActivity;

    invoke-virtual {v0}, Lcom/android/exsettings/sim/SimDialogActivity;->finish()V

    .line 244
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
