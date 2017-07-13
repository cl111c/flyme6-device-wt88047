.class Lcom/android/exsettings/privacyguard/PrivacyGuardAppListAdapter$LoadIconsTask;
.super Landroid/os/AsyncTask;
.source "PrivacyGuardAppListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/privacyguard/PrivacyGuardAppListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadIconsTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/android/exsettings/privacyguard/PrivacyGuardManager$AppInfo;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/privacyguard/PrivacyGuardAppListAdapter;


# direct methods
.method private constructor <init>(Lcom/android/exsettings/privacyguard/PrivacyGuardAppListAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/exsettings/privacyguard/PrivacyGuardAppListAdapter;

    .prologue
    .line 155
    iput-object p1, p0, Lcom/android/exsettings/privacyguard/PrivacyGuardAppListAdapter$LoadIconsTask;->this$0:Lcom/android/exsettings/privacyguard/PrivacyGuardAppListAdapter;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/exsettings/privacyguard/PrivacyGuardAppListAdapter;Lcom/android/exsettings/privacyguard/PrivacyGuardAppListAdapter$LoadIconsTask;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/exsettings/privacyguard/PrivacyGuardAppListAdapter;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/exsettings/privacyguard/PrivacyGuardAppListAdapter$LoadIconsTask;-><init>(Lcom/android/exsettings/privacyguard/PrivacyGuardAppListAdapter;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "apps"    # [Ljava/lang/Object;

    .prologue
    .line 157
    check-cast p1, [Lcom/android/exsettings/privacyguard/PrivacyGuardManager$AppInfo;

    .end local p1    # "apps":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/exsettings/privacyguard/PrivacyGuardAppListAdapter$LoadIconsTask;->doInBackground([Lcom/android/exsettings/privacyguard/PrivacyGuardManager$AppInfo;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Lcom/android/exsettings/privacyguard/PrivacyGuardManager$AppInfo;)Ljava/lang/Void;
    .locals 7
    .param p1, "apps"    # [Lcom/android/exsettings/privacyguard/PrivacyGuardManager$AppInfo;

    .prologue
    const/4 v3, 0x0

    .line 158
    array-length v4, p1

    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v0, p1, v3

    .line 160
    .local v0, "app":Lcom/android/exsettings/privacyguard/PrivacyGuardManager$AppInfo;
    :try_start_0
    iget-object v5, p0, Lcom/android/exsettings/privacyguard/PrivacyGuardAppListAdapter$LoadIconsTask;->this$0:Lcom/android/exsettings/privacyguard/PrivacyGuardAppListAdapter;

    invoke-static {v5}, Lcom/android/exsettings/privacyguard/PrivacyGuardAppListAdapter;->-get1(Lcom/android/exsettings/privacyguard/PrivacyGuardAppListAdapter;)Landroid/content/pm/PackageManager;

    move-result-object v5

    iget-object v6, v0, Lcom/android/exsettings/privacyguard/PrivacyGuardManager$AppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 161
    .local v2, "icon":Landroid/graphics/drawable/Drawable;
    iget-object v5, p0, Lcom/android/exsettings/privacyguard/PrivacyGuardAppListAdapter$LoadIconsTask;->this$0:Lcom/android/exsettings/privacyguard/PrivacyGuardAppListAdapter;

    invoke-static {v5}, Lcom/android/exsettings/privacyguard/PrivacyGuardAppListAdapter;->-get0(Lcom/android/exsettings/privacyguard/PrivacyGuardAppListAdapter;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v5

    iget-object v6, v0, Lcom/android/exsettings/privacyguard/PrivacyGuardManager$AppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Void;

    invoke-virtual {p0, v5}, Lcom/android/exsettings/privacyguard/PrivacyGuardAppListAdapter$LoadIconsTask;->publishProgress([Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    .end local v2    # "icon":Landroid/graphics/drawable/Drawable;
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 168
    .end local v0    # "app":Lcom/android/exsettings/privacyguard/PrivacyGuardManager$AppInfo;
    :cond_0
    const/4 v3, 0x0

    return-object v3

    .line 163
    .restart local v0    # "app":Lcom/android/exsettings/privacyguard/PrivacyGuardManager$AppInfo;
    :catch_0
    move-exception v1

    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_1
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .param p1, "progress"    # [Ljava/lang/Object;

    .prologue
    .line 172
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "progress":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/exsettings/privacyguard/PrivacyGuardAppListAdapter$LoadIconsTask;->onProgressUpdate([Ljava/lang/Void;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Void;)V
    .locals 1
    .param p1, "progress"    # [Ljava/lang/Void;

    .prologue
    .line 173
    iget-object v0, p0, Lcom/android/exsettings/privacyguard/PrivacyGuardAppListAdapter$LoadIconsTask;->this$0:Lcom/android/exsettings/privacyguard/PrivacyGuardAppListAdapter;

    invoke-virtual {v0}, Lcom/android/exsettings/privacyguard/PrivacyGuardAppListAdapter;->notifyDataSetChanged()V

    .line 172
    return-void
.end method
