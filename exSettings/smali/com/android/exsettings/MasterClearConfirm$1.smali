.class Lcom/android/exsettings/MasterClearConfirm$1;
.super Ljava/lang/Object;
.source "MasterClearConfirm.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/MasterClearConfirm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/MasterClearConfirm;


# direct methods
.method static synthetic -wrap0(Lcom/android/exsettings/MasterClearConfirm$1;)Landroid/app/ProgressDialog;
    .locals 1

    invoke-direct {p0}, Lcom/android/exsettings/MasterClearConfirm$1;->getProgressDialog()Landroid/app/ProgressDialog;

    move-result-object v0

    return-object v0
.end method

.method constructor <init>(Lcom/android/exsettings/MasterClearConfirm;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/exsettings/MasterClearConfirm;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/android/exsettings/MasterClearConfirm$1;->this$0:Lcom/android/exsettings/MasterClearConfirm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getProgressDialog()Landroid/app/ProgressDialog;
    .locals 3

    .prologue
    .line 107
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/exsettings/MasterClearConfirm$1;->this$0:Lcom/android/exsettings/MasterClearConfirm;

    invoke-virtual {v1}, Lcom/android/exsettings/MasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 108
    .local v0, "progressDialog":Landroid/app/ProgressDialog;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 109
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 111
    iget-object v1, p0, Lcom/android/exsettings/MasterClearConfirm$1;->this$0:Lcom/android/exsettings/MasterClearConfirm;

    invoke-virtual {v1}, Lcom/android/exsettings/MasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0c0915

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 110
    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 113
    iget-object v1, p0, Lcom/android/exsettings/MasterClearConfirm$1;->this$0:Lcom/android/exsettings/MasterClearConfirm;

    invoke-virtual {v1}, Lcom/android/exsettings/MasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0c0916

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 112
    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 114
    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 60
    invoke-static {}, Lcom/android/exsettings/Utils;->isMonkeyRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 61
    return-void

    .line 65
    :cond_0
    iget-object v1, p0, Lcom/android/exsettings/MasterClearConfirm$1;->this$0:Lcom/android/exsettings/MasterClearConfirm;

    invoke-virtual {v1}, Lcom/android/exsettings/MasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string/jumbo v2, "persistent_data_block"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 64
    check-cast v0, Landroid/service/persistentdata/PersistentDataBlockManager;

    .line 67
    .local v0, "pdbManager":Landroid/service/persistentdata/PersistentDataBlockManager;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/service/persistentdata/PersistentDataBlockManager;->getOemUnlockEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 102
    :cond_1
    iget-object v1, p0, Lcom/android/exsettings/MasterClearConfirm$1;->this$0:Lcom/android/exsettings/MasterClearConfirm;

    invoke-static {v1}, Lcom/android/exsettings/MasterClearConfirm;->-wrap0(Lcom/android/exsettings/MasterClearConfirm;)V

    .line 59
    :goto_0
    return-void

    .line 68
    :cond_2
    iget-object v1, p0, Lcom/android/exsettings/MasterClearConfirm$1;->this$0:Lcom/android/exsettings/MasterClearConfirm;

    invoke-virtual {v1}, Lcom/android/exsettings/MasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 69
    const-string/jumbo v2, "device_provisioned"

    .line 68
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_1

    .line 73
    new-instance v1, Lcom/android/exsettings/MasterClearConfirm$1$1;

    invoke-direct {v1, p0, v0}, Lcom/android/exsettings/MasterClearConfirm$1$1;-><init>(Lcom/android/exsettings/MasterClearConfirm$1;Landroid/service/persistentdata/PersistentDataBlockManager;)V

    new-array v2, v3, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/android/exsettings/MasterClearConfirm$1$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method
