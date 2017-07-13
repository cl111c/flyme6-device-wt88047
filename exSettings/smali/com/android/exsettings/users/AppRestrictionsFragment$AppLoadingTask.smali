.class Lcom/android/exsettings/users/AppRestrictionsFragment$AppLoadingTask;
.super Landroid/os/AsyncTask;
.source "AppRestrictionsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/users/AppRestrictionsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AppLoadingTask"
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
.field final synthetic this$0:Lcom/android/exsettings/users/AppRestrictionsFragment;


# direct methods
.method private constructor <init>(Lcom/android/exsettings/users/AppRestrictionsFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/exsettings/users/AppRestrictionsFragment;

    .prologue
    .line 488
    iput-object p1, p0, Lcom/android/exsettings/users/AppRestrictionsFragment$AppLoadingTask;->this$0:Lcom/android/exsettings/users/AppRestrictionsFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/exsettings/users/AppRestrictionsFragment;Lcom/android/exsettings/users/AppRestrictionsFragment$AppLoadingTask;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/exsettings/users/AppRestrictionsFragment;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/exsettings/users/AppRestrictionsFragment$AppLoadingTask;-><init>(Lcom/android/exsettings/users/AppRestrictionsFragment;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 491
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "params":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/exsettings/users/AppRestrictionsFragment$AppLoadingTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 492
    iget-object v0, p0, Lcom/android/exsettings/users/AppRestrictionsFragment$AppLoadingTask;->this$0:Lcom/android/exsettings/users/AppRestrictionsFragment;

    invoke-static {v0}, Lcom/android/exsettings/users/AppRestrictionsFragment;->-wrap2(Lcom/android/exsettings/users/AppRestrictionsFragment;)V

    .line 493
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 497
    check-cast p1, Ljava/lang/Void;

    .end local p1    # "result":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/exsettings/users/AppRestrictionsFragment$AppLoadingTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 498
    iget-object v0, p0, Lcom/android/exsettings/users/AppRestrictionsFragment$AppLoadingTask;->this$0:Lcom/android/exsettings/users/AppRestrictionsFragment;

    invoke-static {v0}, Lcom/android/exsettings/users/AppRestrictionsFragment;->-wrap5(Lcom/android/exsettings/users/AppRestrictionsFragment;)V

    .line 497
    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 502
    return-void
.end method
