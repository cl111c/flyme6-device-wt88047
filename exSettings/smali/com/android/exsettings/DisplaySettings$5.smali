.class Lcom/android/exsettings/DisplaySettings$5;
.super Landroid/os/AsyncTask;
.source "DisplaySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exsettings/DisplaySettings;->writeLcdDensityPreference(Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/DisplaySettings;

.field final synthetic val$am:Landroid/app/IActivityManager;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$density:I

.field final synthetic val$wm:Landroid/view/IWindowManager;


# direct methods
.method constructor <init>(Lcom/android/exsettings/DisplaySettings;Landroid/content/Context;Landroid/view/IWindowManager;ILandroid/app/IActivityManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/exsettings/DisplaySettings;
    .param p2, "val$context"    # Landroid/content/Context;
    .param p3, "val$wm"    # Landroid/view/IWindowManager;
    .param p4, "val$density"    # I
    .param p5, "val$am"    # Landroid/app/IActivityManager;

    .prologue
    .line 611
    iput-object p1, p0, Lcom/android/exsettings/DisplaySettings$5;->this$0:Lcom/android/exsettings/DisplaySettings;

    iput-object p2, p0, Lcom/android/exsettings/DisplaySettings$5;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/exsettings/DisplaySettings$5;->val$wm:Landroid/view/IWindowManager;

    iput p4, p0, Lcom/android/exsettings/DisplaySettings$5;->val$density:I

    iput-object p5, p0, Lcom/android/exsettings/DisplaySettings$5;->val$am:Landroid/app/IActivityManager;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 621
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "params":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/exsettings/DisplaySettings$5;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 5
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 624
    const-wide/16 v2, 0x3e8

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 630
    :goto_0
    :try_start_1
    iget-object v2, p0, Lcom/android/exsettings/DisplaySettings$5;->val$wm:Landroid/view/IWindowManager;

    iget v3, p0, Lcom/android/exsettings/DisplaySettings$5;->val$density:I

    const/4 v4, 0x0

    invoke-interface {v2, v4, v3}, Landroid/view/IWindowManager;->setForcedDisplayDensity(II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 637
    :goto_1
    :try_start_2
    iget-object v2, p0, Lcom/android/exsettings/DisplaySettings$5;->val$am:Landroid/app/IActivityManager;

    invoke-interface {v2}, Landroid/app/IActivityManager;->restart()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 641
    :goto_2
    const/4 v2, 0x0

    return-object v2

    .line 625
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/InterruptedException;
    goto :goto_0

    .line 631
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v0

    .line 632
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "DisplaySettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Failed to set density to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/exsettings/DisplaySettings$5;->val$density:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 638
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_2
    move-exception v0

    .line 639
    .restart local v0    # "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "DisplaySettings"

    const-string/jumbo v3, "Failed to restart"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method protected onPreExecute()V
    .locals 3

    .prologue
    .line 614
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/exsettings/DisplaySettings$5;->val$context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 615
    .local v0, "dialog":Landroid/app/ProgressDialog;
    iget-object v1, p0, Lcom/android/exsettings/DisplaySettings$5;->this$0:Lcom/android/exsettings/DisplaySettings;

    invoke-virtual {v1}, Lcom/android/exsettings/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c026f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 616
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 617
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 618
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 613
    return-void
.end method
