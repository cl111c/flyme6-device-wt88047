.class Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings$ConfirmClearCacheFragment$1;
.super Ljava/lang/Object;
.source "PrivateVolumeSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings$ConfirmClearCacheFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings$ConfirmClearCacheFragment;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings$ConfirmClearCacheFragment;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings$ConfirmClearCacheFragment;
    .param p2, "val$context"    # Landroid/content/Context;

    .prologue
    .line 692
    iput-object p1, p0, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings$ConfirmClearCacheFragment$1;->this$1:Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings$ConfirmClearCacheFragment;

    iput-object p2, p0, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings$ConfirmClearCacheFragment$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 695
    iget-object v6, p0, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings$ConfirmClearCacheFragment$1;->this$1:Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings$ConfirmClearCacheFragment;

    invoke-virtual {v6}, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings$ConfirmClearCacheFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v5

    check-cast v5, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;

    .line 696
    .local v5, "target":Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;
    iget-object v6, p0, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings$ConfirmClearCacheFragment$1;->val$context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 697
    .local v4, "pm":Landroid/content/pm/PackageManager;
    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v2

    .line 698
    .local v2, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    new-instance v3, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings$ClearCacheObserver;

    .line 699
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    .line 698
    invoke-direct {v3, v5, v6}, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings$ClearCacheObserver;-><init>(Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;I)V

    .line 700
    .local v3, "observer":Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings$ClearCacheObserver;
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "info$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    .line 701
    .local v0, "info":Landroid/content/pm/PackageInfo;
    iget-object v6, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v6, v3}, Landroid/content/pm/PackageManager;->deleteApplicationCacheFiles(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)V

    goto :goto_0

    .line 694
    .end local v0    # "info":Landroid/content/pm/PackageInfo;
    :cond_0
    return-void
.end method
