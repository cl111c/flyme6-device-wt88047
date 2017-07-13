.class public abstract Lcom/android/exsettings/applications/AppInfoWithHeader;
.super Lcom/android/exsettings/applications/AppInfoBase;
.source "AppInfoWithHeader.java"


# instance fields
.field private mCreated:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/android/exsettings/applications/AppInfoBase;-><init>()V

    return-void
.end method

.method public static getInfoIntent(Landroid/app/Fragment;Ljava/lang/String;)Landroid/content/Intent;
    .locals 7
    .param p0, "fragment"    # Landroid/app/Fragment;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 48
    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 49
    .local v0, "args":Landroid/os/Bundle;
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 50
    .local v2, "intent":Landroid/content/Intent;
    const/4 v3, 0x1

    .line 51
    .local v3, "showInfo":Z
    if-eqz v0, :cond_0

    const-string/jumbo v4, "hideInfoButton"

    invoke-virtual {v0, v4, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 52
    const/4 v3, 0x0

    .line 54
    :cond_0
    if-eqz v2, :cond_1

    const-string/jumbo v4, "hideInfoButton"

    invoke-virtual {v2, v4, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 55
    const/4 v3, 0x0

    .line 57
    :cond_1
    const/4 v1, 0x0

    .line 58
    .local v1, "infoIntent":Landroid/content/Intent;
    if-eqz v3, :cond_2

    .line 59
    new-instance v1, Landroid/content/Intent;

    .end local v1    # "infoIntent":Landroid/content/Intent;
    const-string/jumbo v4, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 60
    .local v1, "infoIntent":Landroid/content/Intent;
    const-string/jumbo v4, "package"

    invoke-static {v4, p1, v5}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 62
    .end local v1    # "infoIntent":Landroid/content/Intent;
    :cond_2
    return-object v1
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 36
    invoke-super {p0, p1}, Lcom/android/exsettings/applications/AppInfoBase;->onActivityCreated(Landroid/os/Bundle;)V

    .line 37
    iget-boolean v0, p0, Lcom/android/exsettings/applications/AppInfoWithHeader;->mCreated:Z

    if-eqz v0, :cond_0

    .line 38
    sget-object v0, Lcom/android/exsettings/applications/AppInfoWithHeader;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onActivityCreated: ignoring duplicate call"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    return-void

    .line 41
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/exsettings/applications/AppInfoWithHeader;->mCreated:Z

    .line 42
    iget-object v0, p0, Lcom/android/exsettings/applications/AppInfoWithHeader;->mPackageInfo:Landroid/content/pm/PackageInfo;

    if-nez v0, :cond_1

    return-void

    .line 43
    :cond_1
    iget-object v0, p0, Lcom/android/exsettings/applications/AppInfoWithHeader;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, p0, Lcom/android/exsettings/applications/AppInfoWithHeader;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 44
    iget-object v1, p0, Lcom/android/exsettings/applications/AppInfoWithHeader;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, p0, Lcom/android/exsettings/applications/AppInfoWithHeader;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v2}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lcom/android/exsettings/applications/AppInfoWithHeader;->mPackageName:Ljava/lang/String;

    invoke-static {p0, v2}, Lcom/android/exsettings/applications/AppInfoWithHeader;->getInfoIntent(Landroid/app/Fragment;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const/4 v3, 0x0

    .line 43
    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/exsettings/AppHeader;->createAppHeader(Lcom/android/exsettings/SettingsPreferenceFragment;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Landroid/content/Intent;I)V

    .line 35
    return-void
.end method
