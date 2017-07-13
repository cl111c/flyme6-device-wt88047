.class Lcom/android/exsettings/applications/RunningServiceDetails$MyAlertDialogFragment$1;
.super Ljava/lang/Object;
.source "RunningServiceDetails.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exsettings/applications/RunningServiceDetails$MyAlertDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/exsettings/applications/RunningServiceDetails$MyAlertDialogFragment;

.field final synthetic val$comp:Landroid/content/ComponentName;


# direct methods
.method constructor <init>(Lcom/android/exsettings/applications/RunningServiceDetails$MyAlertDialogFragment;Landroid/content/ComponentName;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/exsettings/applications/RunningServiceDetails$MyAlertDialogFragment;
    .param p2, "val$comp"    # Landroid/content/ComponentName;

    .prologue
    .line 595
    iput-object p1, p0, Lcom/android/exsettings/applications/RunningServiceDetails$MyAlertDialogFragment$1;->this$1:Lcom/android/exsettings/applications/RunningServiceDetails$MyAlertDialogFragment;

    iput-object p2, p0, Lcom/android/exsettings/applications/RunningServiceDetails$MyAlertDialogFragment$1;->val$comp:Landroid/content/ComponentName;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 597
    iget-object v1, p0, Lcom/android/exsettings/applications/RunningServiceDetails$MyAlertDialogFragment$1;->this$1:Lcom/android/exsettings/applications/RunningServiceDetails$MyAlertDialogFragment;

    invoke-virtual {v1}, Lcom/android/exsettings/applications/RunningServiceDetails$MyAlertDialogFragment;->getOwner()Lcom/android/exsettings/applications/RunningServiceDetails;

    move-result-object v1

    iget-object v2, p0, Lcom/android/exsettings/applications/RunningServiceDetails$MyAlertDialogFragment$1;->val$comp:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Lcom/android/exsettings/applications/RunningServiceDetails;->activeDetailForService(Landroid/content/ComponentName;)Lcom/android/exsettings/applications/RunningServiceDetails$ActiveDetail;

    move-result-object v0

    .line 598
    .local v0, "ad":Lcom/android/exsettings/applications/RunningServiceDetails$ActiveDetail;
    if-eqz v0, :cond_0

    .line 599
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/exsettings/applications/RunningServiceDetails$ActiveDetail;->stopActiveService(Z)V

    .line 596
    :cond_0
    return-void
.end method
