.class public Lcom/android/exsettings/applications/ProtectedAppsActivity$StoreComponentProtectedStatus;
.super Landroid/os/AsyncTask;
.source "ProtectedAppsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/applications/ProtectedAppsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "StoreComponentProtectedStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/android/exsettings/applications/ProtectedAppsActivity$AppProtectList;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDialog:Landroid/app/ProgressDialog;

.field final synthetic this$0:Lcom/android/exsettings/applications/ProtectedAppsActivity;


# direct methods
.method public constructor <init>(Lcom/android/exsettings/applications/ProtectedAppsActivity;Landroid/content/Context;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/exsettings/applications/ProtectedAppsActivity;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 316
    iput-object p1, p0, Lcom/android/exsettings/applications/ProtectedAppsActivity$StoreComponentProtectedStatus;->this$0:Lcom/android/exsettings/applications/ProtectedAppsActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 317
    iput-object p2, p0, Lcom/android/exsettings/applications/ProtectedAppsActivity$StoreComponentProtectedStatus;->mContext:Landroid/content/Context;

    .line 318
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/exsettings/applications/ProtectedAppsActivity$StoreComponentProtectedStatus;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/exsettings/applications/ProtectedAppsActivity$StoreComponentProtectedStatus;->mDialog:Landroid/app/ProgressDialog;

    .line 316
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 339
    check-cast p1, [Lcom/android/exsettings/applications/ProtectedAppsActivity$AppProtectList;

    .end local p1    # "args":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/exsettings/applications/ProtectedAppsActivity$StoreComponentProtectedStatus;->doInBackground([Lcom/android/exsettings/applications/ProtectedAppsActivity$AppProtectList;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Lcom/android/exsettings/applications/ProtectedAppsActivity$AppProtectList;)Ljava/lang/Void;
    .locals 6
    .param p1, "args"    # [Lcom/android/exsettings/applications/ProtectedAppsActivity$AppProtectList;

    .prologue
    .line 340
    const/4 v1, 0x0

    array-length v2, p1

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v0, p1, v1

    .line 341
    .local v0, "appList":Lcom/android/exsettings/applications/ProtectedAppsActivity$AppProtectList;
    iget-object v3, p0, Lcom/android/exsettings/applications/ProtectedAppsActivity$StoreComponentProtectedStatus;->mContext:Landroid/content/Context;

    .line 342
    iget-object v4, v0, Lcom/android/exsettings/applications/ProtectedAppsActivity$AppProtectList;->componentNames:Ljava/util/ArrayList;

    iget-boolean v5, v0, Lcom/android/exsettings/applications/ProtectedAppsActivity$AppProtectList;->state:Z

    .line 341
    invoke-static {v3, v4, v5}, Lcom/android/exsettings/cyanogenmod/ProtectedAppsReceiver;->updateProtectedAppComponentsAndNotify(Landroid/content/Context;Ljava/util/ArrayList;Z)V

    .line 340
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 345
    .end local v0    # "appList":Lcom/android/exsettings/applications/ProtectedAppsActivity$AppProtectList;
    :cond_0
    iget-object v1, p0, Lcom/android/exsettings/applications/ProtectedAppsActivity$StoreComponentProtectedStatus;->this$0:Lcom/android/exsettings/applications/ProtectedAppsActivity;

    invoke-static {v1}, Lcom/android/exsettings/applications/ProtectedAppsActivity;->-wrap2(Lcom/android/exsettings/applications/ProtectedAppsActivity;)V

    .line 346
    const/4 v1, 0x0

    return-object v1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "aVoid"    # Ljava/lang/Object;

    .prologue
    .line 330
    check-cast p1, Ljava/lang/Void;

    .end local p1    # "aVoid":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/exsettings/applications/ProtectedAppsActivity$StoreComponentProtectedStatus;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1
    .param p1, "aVoid"    # Ljava/lang/Void;

    .prologue
    .line 331
    iget-object v0, p0, Lcom/android/exsettings/applications/ProtectedAppsActivity$StoreComponentProtectedStatus;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 332
    iget-object v0, p0, Lcom/android/exsettings/applications/ProtectedAppsActivity$StoreComponentProtectedStatus;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 335
    :cond_0
    iget-object v0, p0, Lcom/android/exsettings/applications/ProtectedAppsActivity$StoreComponentProtectedStatus;->this$0:Lcom/android/exsettings/applications/ProtectedAppsActivity;

    invoke-static {v0}, Lcom/android/exsettings/applications/ProtectedAppsActivity;->-get1(Lcom/android/exsettings/applications/ProtectedAppsActivity;)Lcom/android/exsettings/applications/ProtectedAppsActivity$AppsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/exsettings/applications/ProtectedAppsActivity$AppsAdapter;->notifyDataSetChanged()V

    .line 330
    return-void
.end method

.method protected onPreExecute()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 323
    iget-object v0, p0, Lcom/android/exsettings/applications/ProtectedAppsActivity$StoreComponentProtectedStatus;->mDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/exsettings/applications/ProtectedAppsActivity$StoreComponentProtectedStatus;->this$0:Lcom/android/exsettings/applications/ProtectedAppsActivity;

    invoke-virtual {v1}, Lcom/android/exsettings/applications/ProtectedAppsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c032e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 324
    iget-object v0, p0, Lcom/android/exsettings/applications/ProtectedAppsActivity$StoreComponentProtectedStatus;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 325
    iget-object v0, p0, Lcom/android/exsettings/applications/ProtectedAppsActivity$StoreComponentProtectedStatus;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 326
    iget-object v0, p0, Lcom/android/exsettings/applications/ProtectedAppsActivity$StoreComponentProtectedStatus;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 322
    return-void
.end method
