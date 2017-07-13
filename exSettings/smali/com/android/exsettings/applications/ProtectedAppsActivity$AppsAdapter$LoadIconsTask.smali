.class Lcom/android/exsettings/applications/ProtectedAppsActivity$AppsAdapter$LoadIconsTask;
.super Landroid/os/AsyncTask;
.source "ProtectedAppsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/applications/ProtectedAppsActivity$AppsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadIconsTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/android/exsettings/applications/ProtectedAppsActivity$AppEntry;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/exsettings/applications/ProtectedAppsActivity$AppsAdapter;


# direct methods
.method private constructor <init>(Lcom/android/exsettings/applications/ProtectedAppsActivity$AppsAdapter;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/exsettings/applications/ProtectedAppsActivity$AppsAdapter;

    .prologue
    .line 470
    iput-object p1, p0, Lcom/android/exsettings/applications/ProtectedAppsActivity$AppsAdapter$LoadIconsTask;->this$1:Lcom/android/exsettings/applications/ProtectedAppsActivity$AppsAdapter;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/exsettings/applications/ProtectedAppsActivity$AppsAdapter;Lcom/android/exsettings/applications/ProtectedAppsActivity$AppsAdapter$LoadIconsTask;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/exsettings/applications/ProtectedAppsActivity$AppsAdapter;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/exsettings/applications/ProtectedAppsActivity$AppsAdapter$LoadIconsTask;-><init>(Lcom/android/exsettings/applications/ProtectedAppsActivity$AppsAdapter;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "apps"    # [Ljava/lang/Object;

    .prologue
    .line 472
    check-cast p1, [Lcom/android/exsettings/applications/ProtectedAppsActivity$AppEntry;

    .end local p1    # "apps":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/exsettings/applications/ProtectedAppsActivity$AppsAdapter$LoadIconsTask;->doInBackground([Lcom/android/exsettings/applications/ProtectedAppsActivity$AppEntry;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Lcom/android/exsettings/applications/ProtectedAppsActivity$AppEntry;)Ljava/lang/Void;
    .locals 7
    .param p1, "apps"    # [Lcom/android/exsettings/applications/ProtectedAppsActivity$AppEntry;

    .prologue
    const/4 v4, 0x0

    .line 473
    array-length v5, p1

    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v0, p1, v4

    .line 475
    .local v0, "app":Lcom/android/exsettings/applications/ProtectedAppsActivity$AppEntry;
    :try_start_0
    iget-object v6, v0, Lcom/android/exsettings/applications/ProtectedAppsActivity$AppEntry;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 476
    .local v3, "packageName":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/exsettings/applications/ProtectedAppsActivity$AppsAdapter$LoadIconsTask;->this$1:Lcom/android/exsettings/applications/ProtectedAppsActivity$AppsAdapter;

    invoke-static {v6}, Lcom/android/exsettings/applications/ProtectedAppsActivity$AppsAdapter;->-get0(Lcom/android/exsettings/applications/ProtectedAppsActivity$AppsAdapter;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 473
    .end local v3    # "packageName":Ljava/lang/String;
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 479
    .restart local v3    # "packageName":Ljava/lang/String;
    :cond_0
    iget-object v6, p0, Lcom/android/exsettings/applications/ProtectedAppsActivity$AppsAdapter$LoadIconsTask;->this$1:Lcom/android/exsettings/applications/ProtectedAppsActivity$AppsAdapter;

    iget-object v6, v6, Lcom/android/exsettings/applications/ProtectedAppsActivity$AppsAdapter;->this$0:Lcom/android/exsettings/applications/ProtectedAppsActivity;

    invoke-static {v6}, Lcom/android/exsettings/applications/ProtectedAppsActivity;->-get2(Lcom/android/exsettings/applications/ProtectedAppsActivity;)Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 480
    .local v2, "icon":Landroid/graphics/drawable/Drawable;
    iget-object v6, p0, Lcom/android/exsettings/applications/ProtectedAppsActivity$AppsAdapter$LoadIconsTask;->this$1:Lcom/android/exsettings/applications/ProtectedAppsActivity$AppsAdapter;

    invoke-static {v6}, Lcom/android/exsettings/applications/ProtectedAppsActivity$AppsAdapter;->-get0(Lcom/android/exsettings/applications/ProtectedAppsActivity$AppsAdapter;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v6

    invoke-virtual {v6, v3, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 481
    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Void;

    invoke-virtual {p0, v6}, Lcom/android/exsettings/applications/ProtectedAppsActivity$AppsAdapter$LoadIconsTask;->publishProgress([Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 482
    .end local v2    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v3    # "packageName":Ljava/lang/String;
    :catch_0
    move-exception v1

    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_1

    .line 487
    .end local v0    # "app":Lcom/android/exsettings/applications/ProtectedAppsActivity$AppEntry;
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1
    const/4 v4, 0x0

    return-object v4
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .param p1, "progress"    # [Ljava/lang/Object;

    .prologue
    .line 491
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "progress":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/exsettings/applications/ProtectedAppsActivity$AppsAdapter$LoadIconsTask;->onProgressUpdate([Ljava/lang/Void;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Void;)V
    .locals 1
    .param p1, "progress"    # [Ljava/lang/Void;

    .prologue
    .line 492
    iget-object v0, p0, Lcom/android/exsettings/applications/ProtectedAppsActivity$AppsAdapter$LoadIconsTask;->this$1:Lcom/android/exsettings/applications/ProtectedAppsActivity$AppsAdapter;

    invoke-virtual {v0}, Lcom/android/exsettings/applications/ProtectedAppsActivity$AppsAdapter;->notifyDataSetChanged()V

    .line 491
    return-void
.end method
