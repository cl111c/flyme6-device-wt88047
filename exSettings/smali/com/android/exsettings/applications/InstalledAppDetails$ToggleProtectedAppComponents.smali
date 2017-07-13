.class Lcom/android/exsettings/applications/InstalledAppDetails$ToggleProtectedAppComponents;
.super Landroid/os/AsyncTask;
.source "InstalledAppDetails.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/applications/InstalledAppDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ToggleProtectedAppComponents"
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
.field final synthetic this$0:Lcom/android/exsettings/applications/InstalledAppDetails;


# direct methods
.method private constructor <init>(Lcom/android/exsettings/applications/InstalledAppDetails;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/exsettings/applications/InstalledAppDetails;

    .prologue
    .line 471
    iput-object p1, p0, Lcom/android/exsettings/applications/InstalledAppDetails$ToggleProtectedAppComponents;->this$0:Lcom/android/exsettings/applications/InstalledAppDetails;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/exsettings/applications/InstalledAppDetails;Lcom/android/exsettings/applications/InstalledAppDetails$ToggleProtectedAppComponents;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/exsettings/applications/InstalledAppDetails;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/exsettings/applications/InstalledAppDetails$ToggleProtectedAppComponents;-><init>(Lcom/android/exsettings/applications/InstalledAppDetails;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 481
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "params":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/exsettings/applications/InstalledAppDetails$ToggleProtectedAppComponents;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 8
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 482
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 483
    .local v1, "components":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    iget-object v2, p0, Lcom/android/exsettings/applications/InstalledAppDetails$ToggleProtectedAppComponents;->this$0:Lcom/android/exsettings/applications/InstalledAppDetails;

    iget-object v2, v2, Lcom/android/exsettings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v3, v2, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    const/4 v2, 0x0

    array-length v4, v3

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v0, v3, v2

    .line 484
    .local v0, "aInfo":Landroid/content/pm/ActivityInfo;
    new-instance v5, Landroid/content/ComponentName;

    iget-object v6, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v7, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 483
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 487
    .end local v0    # "aInfo":Landroid/content/pm/ActivityInfo;
    :cond_0
    iget-object v2, p0, Lcom/android/exsettings/applications/InstalledAppDetails$ToggleProtectedAppComponents;->this$0:Lcom/android/exsettings/applications/InstalledAppDetails;

    invoke-virtual {v2}, Lcom/android/exsettings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 488
    const/4 v3, 0x1

    .line 487
    invoke-static {v2, v1, v3}, Lcom/android/exsettings/cyanogenmod/ProtectedAppsReceiver;->updateProtectedAppComponentsAndNotify(Landroid/content/Context;Ljava/util/ArrayList;Z)V

    .line 489
    const/4 v2, 0x0

    return-object v2
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "aVoid"    # Ljava/lang/Object;

    .prologue
    .line 473
    check-cast p1, Ljava/lang/Void;

    .end local p1    # "aVoid":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/exsettings/applications/InstalledAppDetails$ToggleProtectedAppComponents;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 2
    .param p1, "aVoid"    # Ljava/lang/Void;

    .prologue
    const/4 v1, 0x1

    .line 474
    iget-object v0, p0, Lcom/android/exsettings/applications/InstalledAppDetails$ToggleProtectedAppComponents;->this$0:Lcom/android/exsettings/applications/InstalledAppDetails;

    invoke-virtual {v0}, Lcom/android/exsettings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 475
    iget-object v0, p0, Lcom/android/exsettings/applications/InstalledAppDetails$ToggleProtectedAppComponents;->this$0:Lcom/android/exsettings/applications/InstalledAppDetails;

    invoke-virtual {v0}, Lcom/android/exsettings/applications/InstalledAppDetails;->refreshUi()Z

    move-result v0

    if-nez v0, :cond_0

    .line 476
    iget-object v0, p0, Lcom/android/exsettings/applications/InstalledAppDetails$ToggleProtectedAppComponents;->this$0:Lcom/android/exsettings/applications/InstalledAppDetails;

    invoke-virtual {v0, v1, v1}, Lcom/android/exsettings/applications/InstalledAppDetails;->setIntentAndFinish(ZZ)V

    .line 473
    :cond_0
    return-void
.end method
