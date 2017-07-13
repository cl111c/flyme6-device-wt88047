.class Lcom/android/exsettings/DataUsageSummary$ConfirmLimitFragment$1;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exsettings/DataUsageSummary$ConfirmLimitFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/exsettings/DataUsageSummary$ConfirmLimitFragment;

.field final synthetic val$limitBytes:J


# direct methods
.method constructor <init>(Lcom/android/exsettings/DataUsageSummary$ConfirmLimitFragment;J)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/exsettings/DataUsageSummary$ConfirmLimitFragment;
    .param p2, "val$limitBytes"    # J

    .prologue
    .line 2222
    iput-object p1, p0, Lcom/android/exsettings/DataUsageSummary$ConfirmLimitFragment$1;->this$1:Lcom/android/exsettings/DataUsageSummary$ConfirmLimitFragment;

    iput-wide p2, p0, Lcom/android/exsettings/DataUsageSummary$ConfirmLimitFragment$1;->val$limitBytes:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 2225
    iget-object v1, p0, Lcom/android/exsettings/DataUsageSummary$ConfirmLimitFragment$1;->this$1:Lcom/android/exsettings/DataUsageSummary$ConfirmLimitFragment;

    invoke-virtual {v1}, Lcom/android/exsettings/DataUsageSummary$ConfirmLimitFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/exsettings/DataUsageSummary;

    .line 2226
    .local v0, "target":Lcom/android/exsettings/DataUsageSummary;
    if-eqz v0, :cond_0

    .line 2227
    iget-wide v2, p0, Lcom/android/exsettings/DataUsageSummary$ConfirmLimitFragment$1;->val$limitBytes:J

    invoke-static {v0, v2, v3}, Lcom/android/exsettings/DataUsageSummary;->-wrap8(Lcom/android/exsettings/DataUsageSummary;J)V

    .line 2224
    :cond_0
    return-void
.end method
