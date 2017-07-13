.class public abstract Lcom/android/exsettings/applications/AppInfoBase;
.super Lcom/android/exsettings/SettingsPreferenceFragment;
.source "AppInfoBase.java"

# interfaces
.implements Lcom/android/exsettingslib/applications/ApplicationsState$Callbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exsettings/applications/AppInfoBase$MyAlertDialogFragment;
    }
.end annotation


# static fields
.field protected static final TAG:Ljava/lang/String;


# instance fields
.field protected mAppControlRestricted:Z

.field protected mAppEntry:Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;

.field protected mDpm:Landroid/app/admin/DevicePolicyManager;

.field protected mFinishing:Z

.field protected mPackageInfo:Landroid/content/pm/PackageInfo;

.field protected mPackageName:Ljava/lang/String;

.field protected mPm:Landroid/content/pm/PackageManager;

.field protected mSession:Lcom/android/exsettingslib/applications/ApplicationsState$Session;

.field protected mState:Lcom/android/exsettingslib/applications/ApplicationsState;

.field protected mUsbManager:Landroid/hardware/usb/IUsbManager;

.field protected mUserId:I

.field protected mUserManager:Landroid/os/UserManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const-class v0, Lcom/android/exsettings/applications/AppInfoBase;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/exsettings/applications/AppInfoBase;->TAG:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;-><init>()V

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/exsettings/applications/AppInfoBase;->mAppControlRestricted:Z

    .line 46
    return-void
.end method

.method public static startAppInfoFragment(Ljava/lang/Class;ILjava/lang/String;ILandroid/app/Fragment;I)V
    .locals 8
    .param p1, "titleRes"    # I
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "source"    # Landroid/app/Fragment;
    .param p5, "request"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;I",
            "Ljava/lang/String;",
            "I",
            "Landroid/app/Fragment;",
            "I)V"
        }
    .end annotation

    .prologue
    .local p0, "fragment":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v3, 0x0

    .line 199
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 200
    .local v2, "args":Landroid/os/Bundle;
    const-string/jumbo v0, "package"

    invoke-virtual {v2, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    const-string/jumbo v0, "uid"

    invoke-virtual {v2, v0, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 203
    invoke-virtual {p4}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 204
    const/4 v6, 0x0

    move v4, p1

    move-object v5, v3

    .line 203
    invoke-static/range {v0 .. v6}, Lcom/android/exsettings/Utils;->onBuildStartFragmentIntent(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;ILjava/lang/CharSequence;Z)Landroid/content/Intent;

    move-result-object v7

    .line 205
    .local v7, "intent":Landroid/content/Intent;
    invoke-virtual {p4}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 206
    new-instance v1, Landroid/os/UserHandle;

    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    invoke-direct {v1, v3}, Landroid/os/UserHandle;-><init>(I)V

    .line 205
    invoke-virtual {v0, v7, p5, v1}, Landroid/app/Activity;->startActivityForResultAsUser(Landroid/content/Intent;ILandroid/os/UserHandle;)V

    .line 198
    return-void
.end method


# virtual methods
.method protected abstract createDialog(II)Landroid/app/AlertDialog;
.end method

.method public onAllSizesComputed()V
    .locals 0

    .prologue
    .line 178
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 76
    invoke-super {p0, p1}, Lcom/android/exsettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 77
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/exsettings/applications/AppInfoBase;->mFinishing:Z

    .line 79
    invoke-virtual {p0}, Lcom/android/exsettings/applications/AppInfoBase;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-static {v2}, Lcom/android/exsettingslib/applications/ApplicationsState;->getInstance(Landroid/app/Application;)Lcom/android/exsettingslib/applications/ApplicationsState;

    move-result-object v2

    iput-object v2, p0, Lcom/android/exsettings/applications/AppInfoBase;->mState:Lcom/android/exsettingslib/applications/ApplicationsState;

    .line 80
    iget-object v2, p0, Lcom/android/exsettings/applications/AppInfoBase;->mState:Lcom/android/exsettingslib/applications/ApplicationsState;

    invoke-virtual {v2, p0}, Lcom/android/exsettingslib/applications/ApplicationsState;->newSession(Lcom/android/exsettingslib/applications/ApplicationsState$Callbacks;)Lcom/android/exsettingslib/applications/ApplicationsState$Session;

    move-result-object v2

    iput-object v2, p0, Lcom/android/exsettings/applications/AppInfoBase;->mSession:Lcom/android/exsettingslib/applications/ApplicationsState$Session;

    .line 81
    invoke-virtual {p0}, Lcom/android/exsettings/applications/AppInfoBase;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 82
    .local v1, "context":Landroid/content/Context;
    const-string/jumbo v2, "device_policy"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/DevicePolicyManager;

    iput-object v2, p0, Lcom/android/exsettings/applications/AppInfoBase;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 83
    const-string/jumbo v2, "user"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    iput-object v2, p0, Lcom/android/exsettings/applications/AppInfoBase;->mUserManager:Landroid/os/UserManager;

    .line 84
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/exsettings/applications/AppInfoBase;->mPm:Landroid/content/pm/PackageManager;

    .line 85
    const-string/jumbo v2, "usb"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 86
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/hardware/usb/IUsbManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/usb/IUsbManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/exsettings/applications/AppInfoBase;->mUsbManager:Landroid/hardware/usb/IUsbManager;

    .line 88
    invoke-virtual {p0}, Lcom/android/exsettings/applications/AppInfoBase;->retrieveAppEntry()Ljava/lang/String;

    .line 75
    return-void
.end method

.method public onLauncherInfoChanged()V
    .locals 0

    .prologue
    .line 183
    return-void
.end method

.method public onLoadEntriesCompleted()V
    .locals 0

    .prologue
    .line 188
    return-void
.end method

.method public onPackageIconChanged()V
    .locals 0

    .prologue
    .line 168
    return-void
.end method

.method public onPackageListChanged()V
    .locals 0

    .prologue
    .line 194
    invoke-virtual {p0}, Lcom/android/exsettings/applications/AppInfoBase;->refreshUi()Z

    .line 193
    return-void
.end method

.method public onPackageSizeChanged(Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 173
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/exsettings/applications/AppInfoBase;->mSession:Lcom/android/exsettingslib/applications/ApplicationsState$Session;

    invoke-virtual {v0}, Lcom/android/exsettingslib/applications/ApplicationsState$Session;->pause()V

    .line 105
    invoke-super {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;->onPause()V

    .line 103
    return-void
.end method

.method public onRebuildComplete(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 163
    .local p1, "apps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;>;"
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 93
    invoke-super {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;->onResume()V

    .line 94
    iget-object v0, p0, Lcom/android/exsettings/applications/AppInfoBase;->mSession:Lcom/android/exsettingslib/applications/ApplicationsState$Session;

    invoke-virtual {v0}, Lcom/android/exsettingslib/applications/ApplicationsState$Session;->resume()V

    .line 95
    iget-object v0, p0, Lcom/android/exsettings/applications/AppInfoBase;->mUserManager:Landroid/os/UserManager;

    const-string/jumbo v1, "no_control_apps"

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/exsettings/applications/AppInfoBase;->mAppControlRestricted:Z

    .line 97
    invoke-virtual {p0}, Lcom/android/exsettings/applications/AppInfoBase;->refreshUi()Z

    move-result v0

    if-nez v0, :cond_0

    .line 98
    invoke-virtual {p0, v2, v2}, Lcom/android/exsettings/applications/AppInfoBase;->setIntentAndFinish(ZZ)V

    .line 92
    :cond_0
    return-void
.end method

.method public onRunningStateChanged(Z)V
    .locals 0
    .param p1, "running"    # Z

    .prologue
    .line 159
    invoke-virtual {p0}, Lcom/android/exsettings/applications/AppInfoBase;->refreshUi()Z

    .line 158
    return-void
.end method

.method protected abstract refreshUi()Z
.end method

.method protected retrieveAppEntry()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 109
    invoke-virtual {p0}, Lcom/android/exsettings/applications/AppInfoBase;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 110
    .local v0, "args":Landroid/os/Bundle;
    if-eqz v0, :cond_1

    const-string/jumbo v3, "package"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_0
    iput-object v3, p0, Lcom/android/exsettings/applications/AppInfoBase;->mPackageName:Ljava/lang/String;

    .line 111
    iget-object v3, p0, Lcom/android/exsettings/applications/AppInfoBase;->mPackageName:Ljava/lang/String;

    if-nez v3, :cond_0

    .line 112
    if-nez v0, :cond_2

    .line 113
    invoke-virtual {p0}, Lcom/android/exsettings/applications/AppInfoBase;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 114
    .local v2, "intent":Landroid/content/Intent;
    :goto_1
    if-eqz v2, :cond_0

    .line 115
    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/exsettings/applications/AppInfoBase;->mPackageName:Ljava/lang/String;

    .line 118
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    iput v3, p0, Lcom/android/exsettings/applications/AppInfoBase;->mUserId:I

    .line 119
    iget-object v3, p0, Lcom/android/exsettings/applications/AppInfoBase;->mState:Lcom/android/exsettingslib/applications/ApplicationsState;

    iget-object v5, p0, Lcom/android/exsettings/applications/AppInfoBase;->mPackageName:Ljava/lang/String;

    iget v6, p0, Lcom/android/exsettings/applications/AppInfoBase;->mUserId:I

    invoke-virtual {v3, v5, v6}, Lcom/android/exsettingslib/applications/ApplicationsState;->getEntry(Ljava/lang/String;I)Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;

    move-result-object v3

    iput-object v3, p0, Lcom/android/exsettings/applications/AppInfoBase;->mAppEntry:Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;

    .line 120
    iget-object v3, p0, Lcom/android/exsettings/applications/AppInfoBase;->mAppEntry:Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;

    if-eqz v3, :cond_3

    .line 123
    :try_start_0
    iget-object v3, p0, Lcom/android/exsettings/applications/AppInfoBase;->mPm:Landroid/content/pm/PackageManager;

    iget-object v4, p0, Lcom/android/exsettings/applications/AppInfoBase;->mAppEntry:Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;

    iget-object v4, v4, Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 124
    const/16 v5, 0x2241

    .line 123
    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    iput-object v3, p0, Lcom/android/exsettings/applications/AppInfoBase;->mPackageInfo:Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    :goto_2
    iget-object v3, p0, Lcom/android/exsettings/applications/AppInfoBase;->mPackageName:Ljava/lang/String;

    return-object v3

    :cond_1
    move-object v3, v4

    .line 110
    goto :goto_0

    .line 113
    :cond_2
    const-string/jumbo v3, "intent"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    .restart local v2    # "intent":Landroid/content/Intent;
    goto :goto_1

    .line 128
    .end local v2    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v1

    .line 129
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v3, Lcom/android/exsettings/applications/AppInfoBase;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Exception when retrieving package:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/exsettings/applications/AppInfoBase;->mAppEntry:Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;

    iget-object v5, v5, Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 132
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_3
    sget-object v3, Lcom/android/exsettings/applications/AppInfoBase;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "Missing AppEntry; maybe reinstalling?"

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    iput-object v4, p0, Lcom/android/exsettings/applications/AppInfoBase;->mPackageInfo:Landroid/content/pm/PackageInfo;

    goto :goto_2
.end method

.method protected setIntentAndFinish(ZZ)V
    .locals 3
    .param p1, "finish"    # Z
    .param p2, "appChanged"    # Z

    .prologue
    .line 141
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 142
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "chg"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 143
    invoke-virtual {p0}, Lcom/android/exsettings/applications/AppInfoBase;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/exsettings/SettingsActivity;

    .line 144
    .local v1, "sa":Lcom/android/exsettings/SettingsActivity;
    const/4 v2, -0x1

    invoke-virtual {v1, p0, v2, v0}, Lcom/android/exsettings/SettingsActivity;->finishPreferencePanel(Landroid/app/Fragment;ILandroid/content/Intent;)V

    .line 145
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/exsettings/applications/AppInfoBase;->mFinishing:Z

    .line 139
    return-void
.end method

.method protected showDialogInner(II)V
    .locals 4
    .param p1, "id"    # I
    .param p2, "moveErrorCode"    # I

    .prologue
    .line 149
    invoke-static {p1, p2}, Lcom/android/exsettings/applications/AppInfoBase$MyAlertDialogFragment;->newInstance(II)Lcom/android/exsettings/applications/AppInfoBase$MyAlertDialogFragment;

    move-result-object v0

    .line 150
    .local v0, "newFragment":Landroid/app/DialogFragment;
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/app/DialogFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 151
    invoke-virtual {p0}, Lcom/android/exsettings/applications/AppInfoBase;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "dialog "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 148
    return-void
.end method
