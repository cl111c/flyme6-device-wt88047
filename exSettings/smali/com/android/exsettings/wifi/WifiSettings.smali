.class public Lcom/android/exsettings/wifi/WifiSettings;
.super Lcom/android/exsettings/RestrictedSettingsFragment;
.source "WifiSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Lcom/android/exsettings/search/Indexable;
.implements Lcom/android/exsettingslib/wifi/WifiTracker$WifiListener;
.implements Lcom/android/exsettingslib/wifi/AccessPoint$AccessPointListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exsettings/wifi/WifiSettings$1;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/exsettings/search/Indexable$SearchIndexProvider;

.field private static savedNetworksExist:Z


# instance fields
.field private mAccessPointSavedState:Landroid/os/Bundle;

.field private mBgThread:Landroid/os/HandlerThread;

.field private mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

.field private mDialog:Lcom/android/exsettings/wifi/WifiDialog;

.field private mDlgAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

.field private mDlgEdit:Z

.field private mDlgModify:Z

.field private mEmptyView:Landroid/widget/TextView;

.field private mEnableNextOnConnection:Z

.field private mForgetListener:Landroid/net/wifi/WifiManager$ActionListener;

.field private mOpenSsid:Ljava/lang/String;

.field private mProgressHeader:Landroid/widget/ProgressBar;

.field private mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

.field private mSelectedAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

.field private mUserBadgeCache:Lcom/android/exsettings/wifi/AccessPointPreference$UserBadgeCache;

.field private mWifiEnabler:Lcom/android/exsettings/wifi/WifiEnabler;

.field protected mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiNfcDialogSavedState:Landroid/os/Bundle;

.field private mWifiToNfcDialog:Lcom/android/exsettings/wifi/WriteWifiConfigToNfcDialog;

.field private mWifiTracker:Lcom/android/exsettingslib/wifi/WifiTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 938
    new-instance v0, Lcom/android/exsettings/wifi/WifiSettings$1;

    invoke-direct {v0}, Lcom/android/exsettings/wifi/WifiSettings$1;-><init>()V

    .line 937
    sput-object v0, Lcom/android/exsettings/wifi/WifiSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/exsettings/search/Indexable$SearchIndexProvider;

    .line 97
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 169
    const-string/jumbo v0, "no_config_wifi"

    invoke-direct {p0, v0}, Lcom/android/exsettings/RestrictedSettingsFragment;-><init>(Ljava/lang/String;)V

    .line 168
    return-void
.end method

.method private addMessagePreference(I)V
    .locals 1
    .param p1, "messageId"    # I

    .prologue
    .line 768
    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiSettings;->mEmptyView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiSettings;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 769
    :cond_0
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/WifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 767
    return-void
.end method

.method static canModifyNetwork(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)Z
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 984
    if-nez p1, :cond_0

    .line 985
    return v9

    .line 989
    :cond_0
    const-string/jumbo v10, "device_policy"

    .line 988
    invoke-virtual {p0, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/DevicePolicyManager;

    .line 993
    .local v2, "dpm":Landroid/app/admin/DevicePolicyManager;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 994
    .local v6, "pm":Landroid/content/pm/PackageManager;
    const-string/jumbo v10, "android.software.device_admin"

    invoke-virtual {v6, v10}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    if-nez v2, :cond_1

    .line 995
    return v8

    .line 998
    :cond_1
    const/4 v4, 0x0

    .line 999
    .local v4, "isConfigEligibleForLockdown":Z
    if-eqz v2, :cond_2

    .line 1000
    invoke-virtual {v2}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwner()Ljava/lang/String;

    move-result-object v0

    .line 1001
    .local v0, "deviceOwnerPackageName":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 1004
    const/4 v10, 0x0

    .line 1003
    :try_start_0
    invoke-virtual {v6, v0, v10}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result v1

    .line 1005
    .local v1, "deviceOwnerUid":I
    iget v10, p1, Landroid/net/wifi/WifiConfiguration;->creatorUid:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v1, v10, :cond_3

    const/4 v4, 0x1

    .line 1011
    .end local v0    # "deviceOwnerPackageName":Ljava/lang/String;
    .end local v1    # "deviceOwnerUid":I
    :cond_2
    :goto_0
    if-nez v4, :cond_4

    .line 1012
    return v9

    .line 1005
    .restart local v0    # "deviceOwnerPackageName":Ljava/lang/String;
    .restart local v1    # "deviceOwnerUid":I
    :cond_3
    const/4 v4, 0x0

    goto :goto_0

    .line 1015
    .end local v0    # "deviceOwnerPackageName":Ljava/lang/String;
    .end local v1    # "deviceOwnerUid":I
    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 1017
    .local v7, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v10, "wifi_device_owner_configs_lockdown"

    .line 1016
    invoke-static {v7, v10, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-eqz v10, :cond_5

    const/4 v5, 0x1

    .line 1018
    .local v5, "isLockdownFeatureEnabled":Z
    :goto_1
    if-eqz v5, :cond_6

    :goto_2
    return v8

    .line 1016
    .end local v5    # "isLockdownFeatureEnabled":Z
    :cond_5
    const/4 v5, 0x0

    .restart local v5    # "isLockdownFeatureEnabled":Z
    goto :goto_1

    :cond_6
    move v8, v9

    .line 1018
    goto :goto_2

    .line 1006
    .end local v5    # "isLockdownFeatureEnabled":Z
    .end local v7    # "resolver":Landroid/content/ContentResolver;
    .restart local v0    # "deviceOwnerPackageName":Ljava/lang/String;
    :catch_0
    move-exception v3

    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method

.method private changeNextButtonState(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 810
    iget-boolean v0, p0, Lcom/android/exsettings/wifi/WifiSettings;->mEnableNextOnConnection:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/exsettings/wifi/WifiSettings;->hasNextButton()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 811
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/WifiSettings;->getNextButton()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 809
    :cond_0
    return-void
.end method

.method static isEditabilityLockedDown(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 973
    invoke-static {p0, p1}, Lcom/android/exsettings/wifi/WifiSettings;->canModifyNetwork(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private setOffMessage()V
    .locals 6

    .prologue
    .line 731
    iget-object v4, p0, Lcom/android/exsettings/wifi/WifiSettings;->mEmptyView:Landroid/widget/TextView;

    if-nez v4, :cond_0

    .line 732
    return-void

    .line 735
    :cond_0
    const v4, 0x7f0c0730

    invoke-virtual {p0, v4}, Lcom/android/exsettings/wifi/WifiSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 740
    .local v0, "briefText":Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 742
    .local v2, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v4, "wifi_scan_always_enabled"

    const/4 v5, 0x0

    .line 741
    invoke-static {v2, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 742
    const/4 v5, 0x1

    .line 741
    if-ne v4, v5, :cond_1

    const/4 v3, 0x1

    .line 744
    .local v3, "wifiScanningMode":Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/WifiSettings;->isUiRestricted()Z

    move-result v4

    if-nez v4, :cond_2

    if-eqz v3, :cond_2

    .line 750
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 751
    .local v1, "contentBuilder":Ljava/lang/StringBuilder;
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 752
    const-string/jumbo v4, "\n\n"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 753
    const v4, 0x7f0c0719

    invoke-virtual {p0, v4}, Lcom/android/exsettings/wifi/WifiSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 754
    iget-object v4, p0, Lcom/android/exsettings/wifi/WifiSettings;->mEmptyView:Landroid/widget/TextView;

    new-instance v5, Lcom/android/exsettings/wifi/WifiSettings$5;

    invoke-direct {v5, p0}, Lcom/android/exsettings/wifi/WifiSettings$5;-><init>(Lcom/android/exsettings/wifi/WifiSettings;)V

    invoke-static {v4, v1, v5}, Lcom/android/exsettings/LinkifyUtils;->linkify(Landroid/widget/TextView;Ljava/lang/StringBuilder;Lcom/android/exsettings/LinkifyUtils$OnClickListener;)Z

    .line 764
    .end local v1    # "contentBuilder":Ljava/lang/StringBuilder;
    :goto_1
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/WifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v4}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 730
    return-void

    .line 741
    .end local v3    # "wifiScanningMode":Z
    :cond_1
    const/4 v3, 0x0

    .restart local v3    # "wifiScanningMode":Z
    goto :goto_0

    .line 747
    :cond_2
    iget-object v4, p0, Lcom/android/exsettings/wifi/WifiSettings;->mEmptyView:Landroid/widget/TextView;

    sget-object v5, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v4, v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    goto :goto_1
.end method

.method private showDialog(Lcom/android/exsettingslib/wifi/AccessPoint;Z)V
    .locals 13
    .param p1, "accessPoint"    # Lcom/android/exsettingslib/wifi/AccessPoint;
    .param p2, "edit"    # Z

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    const/4 v12, 0x0

    .line 561
    if-eqz p1, :cond_1

    .line 562
    invoke-virtual {p1}, Lcom/android/exsettingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v3

    .line 563
    .local v3, "config":Landroid/net/wifi/WifiConfiguration;
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-static {v9, v3}, Lcom/android/exsettings/wifi/WifiSettings;->isEditabilityLockedDown(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-virtual {p1}, Lcom/android/exsettingslib/wifi/AccessPoint;->isActive()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 564
    iget v9, v3, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    invoke-static {v9}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    .line 565
    .local v8, "userId":I
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 566
    .local v7, "pm":Landroid/content/pm/PackageManager;
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v5

    .line 567
    .local v5, "ipm":Landroid/content/pm/IPackageManager;
    iget v9, v3, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    invoke-virtual {v7, v9}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v1

    .line 569
    .local v1, "appName":Ljava/lang/String;
    const/4 v9, 0x0

    :try_start_0
    invoke-interface {v5, v1, v9, v8}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 571
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v7, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v6

    .line 572
    .local v6, "label":Ljava/lang/CharSequence;
    if-eqz v6, :cond_0

    .line 573
    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 578
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v6    # "label":Ljava/lang/CharSequence;
    :cond_0
    :goto_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/exsettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v2, v9}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 579
    .local v2, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {p1}, Lcom/android/exsettingslib/wifi/AccessPoint;->getSsid()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v2, v9}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    .line 580
    new-array v10, v10, [Ljava/lang/Object;

    .line 581
    aput-object v1, v10, v11

    .line 580
    const v11, 0x7f0c06f8

    invoke-virtual {p0, v11, v10}, Lcom/android/exsettings/wifi/WifiSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 579
    invoke-virtual {v9, v10}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    .line 582
    const v10, 0x104000a

    .line 579
    invoke-virtual {v9, v10, v12}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 584
    return-void

    .line 588
    .end local v1    # "appName":Ljava/lang/String;
    .end local v2    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v3    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v5    # "ipm":Landroid/content/pm/IPackageManager;
    .end local v7    # "pm":Landroid/content/pm/PackageManager;
    .end local v8    # "userId":I
    :cond_1
    iget-object v9, p0, Lcom/android/exsettings/wifi/WifiSettings;->mDialog:Lcom/android/exsettings/wifi/WifiDialog;

    if-eqz v9, :cond_2

    .line 589
    invoke-virtual {p0, v10}, Lcom/android/exsettings/wifi/WifiSettings;->removeDialog(I)V

    .line 590
    iput-object v12, p0, Lcom/android/exsettings/wifi/WifiSettings;->mDialog:Lcom/android/exsettings/wifi/WifiDialog;

    .line 594
    :cond_2
    iput-object p1, p0, Lcom/android/exsettings/wifi/WifiSettings;->mDlgAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    .line 595
    iput-boolean p2, p0, Lcom/android/exsettings/wifi/WifiSettings;->mDlgEdit:Z

    .line 597
    invoke-virtual {p0, v10}, Lcom/android/exsettings/wifi/WifiSettings;->showDialog(I)V

    .line 560
    return-void

    .line 575
    .restart local v1    # "appName":Ljava/lang/String;
    .restart local v3    # "config":Landroid/net/wifi/WifiConfiguration;
    .restart local v5    # "ipm":Landroid/content/pm/IPackageManager;
    .restart local v7    # "pm":Landroid/content/pm/PackageManager;
    .restart local v8    # "userId":I
    :catch_0
    move-exception v4

    .local v4, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method


# virtual methods
.method addOptionsMenuItems(Landroid/view/Menu;)V
    .locals 6
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v5, 0x0

    .line 351
    iget-object v2, p0, Lcom/android/exsettings/wifi/WifiSettings;->mWifiTracker:Lcom/android/exsettingslib/wifi/WifiTracker;

    invoke-virtual {v2}, Lcom/android/exsettingslib/wifi/WifiTracker;->isWifiEnabled()Z

    move-result v1

    .line 352
    .local v1, "wifiIsEnabled":Z
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    .line 353
    const v3, 0x7f010056

    const v4, 0x7f010058

    filled-new-array {v3, v4}, [I

    move-result-object v3

    .line 352
    invoke-virtual {v2, v3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 354
    .local v0, "ta":Landroid/content/res/TypedArray;
    const/4 v2, 0x4

    const v3, 0x7f0c0723

    invoke-interface {p1, v5, v2, v5, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    .line 355
    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 354
    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 358
    sget-boolean v2, Lcom/android/exsettings/wifi/WifiSettings;->savedNetworksExist:Z

    if-eqz v2, :cond_0

    .line 359
    const/4 v2, 0x3

    const v3, 0x7f0c077b

    invoke-interface {p1, v5, v2, v5, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    .line 360
    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 359
    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 364
    :cond_0
    const/4 v2, 0x6

    const v3, 0x7f0c0b92

    invoke-interface {p1, v5, v2, v5, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 367
    const/4 v2, 0x5

    const v3, 0x7f0c072a

    invoke-interface {p1, v5, v2, v5, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 369
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 350
    return-void
.end method

.method protected connect(Landroid/net/wifi/WifiConfiguration;)V
    .locals 2
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 871
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/16 v1, 0x87

    invoke-static {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    .line 872
    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/exsettings/wifi/WifiSettings;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v0, p1, v1}, Landroid/net/wifi/WifiManager;->connect(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    .line 870
    return-void
.end method

.method createWifiEnabler()Lcom/android/exsettings/wifi/WifiEnabler;
    .locals 3

    .prologue
    .line 312
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/exsettings/SettingsActivity;

    .line 313
    .local v0, "activity":Lcom/android/exsettings/SettingsActivity;
    new-instance v1, Lcom/android/exsettings/wifi/WifiEnabler;

    invoke-virtual {v0}, Lcom/android/exsettings/SettingsActivity;->getSwitchBar()Lcom/android/exsettings/widget/SwitchBar;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/android/exsettings/wifi/WifiEnabler;-><init>(Landroid/content/Context;Lcom/android/exsettings/widget/SwitchBar;)V

    return-object v1
.end method

.method forget()V
    .locals 3

    .prologue
    .line 848
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/16 v1, 0x89

    invoke-static {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    .line 849
    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/exsettingslib/wifi/AccessPoint;->isSaved()Z

    move-result v0

    if-nez v0, :cond_1

    .line 850
    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/exsettingslib/wifi/AccessPoint;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 851
    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/exsettingslib/wifi/AccessPoint;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v0

    sget-object v1, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v0, v1, :cond_0

    .line 853
    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 854
    iget-object v1, p0, Lcom/android/exsettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/exsettingslib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/exsettingslib/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 853
    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->disableEphemeralNetwork(Ljava/lang/String;)V

    .line 864
    :goto_0
    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiSettings;->mWifiTracker:Lcom/android/exsettingslib/wifi/WifiTracker;

    invoke-virtual {v0}, Lcom/android/exsettingslib/wifi/WifiTracker;->resumeScanning()V

    .line 867
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/exsettings/wifi/WifiSettings;->changeNextButtonState(Z)V

    .line 847
    return-void

    .line 857
    :cond_0
    const-string/jumbo v0, "WifiSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Failed to forget invalid network "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/exsettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/exsettingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 858
    return-void

    .line 861
    :cond_1
    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/exsettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/exsettingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    iget v1, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iget-object v2, p0, Lcom/android/exsettings/wifi/WifiSettings;->mForgetListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiManager;->forget(ILandroid/net/wifi/WifiManager$ActionListener;)V

    goto :goto_0
.end method

.method protected getHelpResource()I
    .locals 1

    .prologue
    .line 924
    const v0, 0x7f0c0ddb

    return v0
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 374
    const/16 v0, 0x67

    return v0
.end method

.method protected initEmptyView()Landroid/widget/TextView;
    .locals 3

    .prologue
    .line 725
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x1020004

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 726
    .local v0, "emptyView":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/WifiSettings;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 727
    return-object v0
.end method

.method public onAccessPointChanged(Lcom/android/exsettingslib/wifi/AccessPoint;)V
    .locals 1
    .param p1, "accessPoint"    # Lcom/android/exsettingslib/wifi/AccessPoint;

    .prologue
    .line 929
    invoke-virtual {p1}, Lcom/android/exsettingslib/wifi/AccessPoint;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/exsettings/wifi/AccessPointPreference;

    invoke-virtual {v0}, Lcom/android/exsettings/wifi/AccessPointPreference;->refresh()V

    .line 928
    return-void
.end method

.method public onAccessPointsChanged()V
    .locals 15

    .prologue
    const/4 v13, 0x1

    const/4 v14, 0x0

    const/4 v4, 0x0

    .line 649
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-nez v2, :cond_0

    return-void

    .line 651
    :cond_0
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/WifiSettings;->isUiRestricted()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 652
    const v2, 0x7f0c0732

    invoke-direct {p0, v2}, Lcom/android/exsettings/wifi/WifiSettings;->addMessagePreference(I)V

    .line 653
    return-void

    .line 655
    :cond_1
    iget-object v2, p0, Lcom/android/exsettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v12

    .line 657
    .local v12, "wifiState":I
    packed-switch v12, :pswitch_data_0

    .line 718
    :goto_0
    sget-boolean v2, Lcom/android/exsettings/wifi/WifiSettings;->savedNetworksExist:Z

    iget-object v3, p0, Lcom/android/exsettings/wifi/WifiSettings;->mWifiTracker:Lcom/android/exsettingslib/wifi/WifiTracker;

    invoke-virtual {v3}, Lcom/android/exsettingslib/wifi/WifiTracker;->doSavedNetworksExist()Z

    move-result v3

    if-eq v2, v3, :cond_2

    .line 719
    sget-boolean v2, Lcom/android/exsettings/wifi/WifiSettings;->savedNetworksExist:Z

    if-eqz v2, :cond_b

    :goto_1
    sput-boolean v4, Lcom/android/exsettings/wifi/WifiSettings;->savedNetworksExist:Z

    .line 720
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 647
    :cond_2
    return-void

    .line 661
    :pswitch_0
    iget-object v2, p0, Lcom/android/exsettings/wifi/WifiSettings;->mWifiTracker:Lcom/android/exsettingslib/wifi/WifiTracker;

    invoke-virtual {v2}, Lcom/android/exsettingslib/wifi/WifiTracker;->getAccessPoints()Ljava/util/List;

    move-result-object v7

    .line 662
    .local v7, "accessPoints":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/exsettingslib/wifi/AccessPoint;>;"
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/WifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 664
    const/4 v8, 0x0

    .line 665
    .local v8, "hasAvailableAccessPoints":Z
    const/4 v9, 0x0

    .line 666
    .local v9, "index":I
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "accessPoint$iterator":Ljava/util/Iterator;
    :cond_3
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/exsettingslib/wifi/AccessPoint;

    .line 668
    .local v1, "accessPoint":Lcom/android/exsettingslib/wifi/AccessPoint;
    invoke-virtual {v1}, Lcom/android/exsettingslib/wifi/AccessPoint;->getLevel()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_3

    .line 669
    invoke-virtual {v1}, Lcom/android/exsettingslib/wifi/AccessPoint;->isSaved()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-boolean v2, v1, Lcom/android/exsettingslib/wifi/AccessPoint;->foundInScanResult:Z

    if-eqz v2, :cond_5

    .line 673
    :cond_4
    const/4 v8, 0x1

    .line 674
    invoke-virtual {v1}, Lcom/android/exsettingslib/wifi/AccessPoint;->getTag()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 675
    invoke-virtual {v1}, Lcom/android/exsettingslib/wifi/AccessPoint;->getTag()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/preference/Preference;

    .line 676
    .local v11, "pref":Landroid/preference/Preference;
    add-int/lit8 v10, v9, 0x1

    .end local v9    # "index":I
    .local v10, "index":I
    invoke-virtual {v11, v9}, Landroid/preference/Preference;->setOrder(I)V

    .line 677
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/WifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v11}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    move v9, v10

    .line 678
    .end local v10    # "index":I
    .restart local v9    # "index":I
    goto :goto_2

    .line 670
    .end local v11    # "pref":Landroid/preference/Preference;
    :cond_5
    invoke-virtual {v1}, Lcom/android/exsettingslib/wifi/AccessPoint;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v2

    if-nez v2, :cond_4

    goto :goto_2

    .line 680
    :cond_6
    new-instance v0, Lcom/android/exsettings/wifi/AccessPointPreference;

    .line 681
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/exsettings/wifi/WifiSettings;->mUserBadgeCache:Lcom/android/exsettings/wifi/AccessPointPreference$UserBadgeCache;

    move v5, v4

    .line 680
    invoke-direct/range {v0 .. v5}, Lcom/android/exsettings/wifi/AccessPointPreference;-><init>(Lcom/android/exsettingslib/wifi/AccessPoint;Landroid/content/Context;Lcom/android/exsettings/wifi/AccessPointPreference$UserBadgeCache;ZZ)V

    .line 682
    .local v0, "preference":Lcom/android/exsettings/wifi/AccessPointPreference;
    add-int/lit8 v10, v9, 0x1

    .end local v9    # "index":I
    .restart local v10    # "index":I
    invoke-virtual {v0, v9}, Lcom/android/exsettings/wifi/AccessPointPreference;->setOrder(I)V

    .line 684
    iget-object v2, p0, Lcom/android/exsettings/wifi/WifiSettings;->mOpenSsid:Ljava/lang/String;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/exsettings/wifi/WifiSettings;->mOpenSsid:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/android/exsettingslib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 685
    invoke-virtual {v1}, Lcom/android/exsettingslib/wifi/AccessPoint;->isSaved()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 690
    :cond_7
    :goto_3
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/WifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 691
    invoke-virtual {v1, p0}, Lcom/android/exsettingslib/wifi/AccessPoint;->setListener(Lcom/android/exsettingslib/wifi/AccessPoint$AccessPointListener;)V

    move v9, v10

    .end local v10    # "index":I
    .restart local v9    # "index":I
    goto :goto_2

    .line 686
    .end local v9    # "index":I
    .restart local v10    # "index":I
    :cond_8
    invoke-virtual {v1}, Lcom/android/exsettingslib/wifi/AccessPoint;->getSecurity()I

    move-result v2

    if-eqz v2, :cond_7

    .line 687
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/WifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {p0, v2, v0}, Lcom/android/exsettings/wifi/WifiSettings;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    .line 688
    iput-object v14, p0, Lcom/android/exsettings/wifi/WifiSettings;->mOpenSsid:Ljava/lang/String;

    goto :goto_3

    .line 694
    .end local v0    # "preference":Lcom/android/exsettings/wifi/AccessPointPreference;
    .end local v1    # "accessPoint":Lcom/android/exsettingslib/wifi/AccessPoint;
    .end local v10    # "index":I
    .restart local v9    # "index":I
    :cond_9
    if-nez v8, :cond_a

    .line 695
    invoke-virtual {p0, v13}, Lcom/android/exsettings/wifi/WifiSettings;->setProgressBarVisible(Z)V

    .line 696
    const v2, 0x7f0c0731

    invoke-direct {p0, v2}, Lcom/android/exsettings/wifi/WifiSettings;->addMessagePreference(I)V

    goto/16 :goto_0

    .line 698
    :cond_a
    invoke-virtual {p0, v4}, Lcom/android/exsettings/wifi/WifiSettings;->setProgressBarVisible(Z)V

    goto/16 :goto_0

    .line 703
    .end local v6    # "accessPoint$iterator":Ljava/util/Iterator;
    .end local v7    # "accessPoints":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/exsettingslib/wifi/AccessPoint;>;"
    .end local v8    # "hasAvailableAccessPoints":Z
    .end local v9    # "index":I
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/WifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 704
    invoke-virtual {p0, v13}, Lcom/android/exsettings/wifi/WifiSettings;->setProgressBarVisible(Z)V

    goto/16 :goto_0

    .line 708
    :pswitch_2
    const v2, 0x7f0c070c

    invoke-direct {p0, v2}, Lcom/android/exsettings/wifi/WifiSettings;->addMessagePreference(I)V

    .line 709
    invoke-virtual {p0, v13}, Lcom/android/exsettings/wifi/WifiSettings;->setProgressBarVisible(Z)V

    goto/16 :goto_0

    .line 713
    :pswitch_3
    invoke-direct {p0}, Lcom/android/exsettings/wifi/WifiSettings;->setOffMessage()V

    .line 714
    invoke-virtual {p0, v4}, Lcom/android/exsettings/wifi/WifiSettings;->setProgressBarVisible(Z)V

    goto/16 :goto_0

    :cond_b
    move v4, v13

    .line 719
    goto/16 :goto_1

    .line 657
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x1

    .line 199
    invoke-super {p0, p1}, Lcom/android/exsettings/RestrictedSettingsFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 202
    new-instance v0, Lcom/android/exsettingslib/wifi/WifiTracker;

    invoke-virtual {p0}, Lcom/android/exsettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/exsettings/wifi/WifiSettings;->mBgThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    move-object v2, p0

    move v5, v4

    invoke-direct/range {v0 .. v6}, Lcom/android/exsettingslib/wifi/WifiTracker;-><init>(Landroid/content/Context;Lcom/android/exsettingslib/wifi/WifiTracker$WifiListener;Landroid/os/Looper;ZZZ)V

    .line 201
    iput-object v0, p0, Lcom/android/exsettings/wifi/WifiSettings;->mWifiTracker:Lcom/android/exsettingslib/wifi/WifiTracker;

    .line 203
    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiSettings;->mWifiTracker:Lcom/android/exsettingslib/wifi/WifiTracker;

    invoke-virtual {v0}, Lcom/android/exsettingslib/wifi/WifiTracker;->getManager()Landroid/net/wifi/WifiManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 205
    new-instance v0, Lcom/android/exsettings/wifi/WifiSettings$2;

    invoke-direct {v0, p0}, Lcom/android/exsettings/wifi/WifiSettings$2;-><init>(Lcom/android/exsettings/wifi/WifiSettings;)V

    iput-object v0, p0, Lcom/android/exsettings/wifi/WifiSettings;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    .line 220
    new-instance v0, Lcom/android/exsettings/wifi/WifiSettings$3;

    invoke-direct {v0, p0}, Lcom/android/exsettings/wifi/WifiSettings$3;-><init>(Lcom/android/exsettings/wifi/WifiSettings;)V

    iput-object v0, p0, Lcom/android/exsettings/wifi/WifiSettings;->mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

    .line 235
    new-instance v0, Lcom/android/exsettings/wifi/WifiSettings$4;

    invoke-direct {v0, p0}, Lcom/android/exsettings/wifi/WifiSettings$4;-><init>(Lcom/android/exsettings/wifi/WifiSettings;)V

    iput-object v0, p0, Lcom/android/exsettings/wifi/WifiSettings;->mForgetListener:Landroid/net/wifi/WifiManager$ActionListener;

    .line 250
    if-eqz p1, :cond_1

    .line 251
    const-string/jumbo v0, "edit_mode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/exsettings/wifi/WifiSettings;->mDlgEdit:Z

    .line 252
    const-string/jumbo v0, "modify_mode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/exsettings/wifi/WifiSettings;->mDlgModify:Z

    .line 253
    const-string/jumbo v0, "wifi_ap_state"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 255
    const-string/jumbo v0, "wifi_ap_state"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 254
    iput-object v0, p0, Lcom/android/exsettings/wifi/WifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    .line 258
    :cond_0
    const-string/jumbo v0, "wifi_nfc_dlg_state"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 260
    const-string/jumbo v0, "wifi_nfc_dlg_state"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 259
    iput-object v0, p0, Lcom/android/exsettings/wifi/WifiSettings;->mWifiNfcDialogSavedState:Landroid/os/Bundle;

    .line 266
    :cond_1
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v9

    .line 267
    .local v9, "intent":Landroid/content/Intent;
    const-string/jumbo v0, "wifi_enable_next_on_connect"

    invoke-virtual {v9, v0, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/exsettings/wifi/WifiSettings;->mEnableNextOnConnection:Z

    .line 269
    iget-boolean v0, p0, Lcom/android/exsettings/wifi/WifiSettings;->mEnableNextOnConnection:Z

    if-eqz v0, :cond_2

    .line 270
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/WifiSettings;->hasNextButton()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 272
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .line 271
    check-cast v7, Landroid/net/ConnectivityManager;

    .line 273
    .local v7, "connectivity":Landroid/net/ConnectivityManager;
    if-eqz v7, :cond_2

    .line 274
    invoke-virtual {v7, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v8

    .line 276
    .local v8, "info":Landroid/net/NetworkInfo;
    invoke-virtual {v8}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/exsettings/wifi/WifiSettings;->changeNextButtonState(Z)V

    .line 281
    .end local v7    # "connectivity":Landroid/net/ConnectivityManager;
    .end local v8    # "info":Landroid/net/NetworkInfo;
    :cond_2
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/WifiSettings;->initEmptyView()Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/wifi/WifiSettings;->mEmptyView:Landroid/widget/TextView;

    .line 282
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/WifiSettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/exsettings/wifi/WifiSettings;->registerForContextMenu(Landroid/view/View;)V

    .line 283
    invoke-virtual {p0, v4}, Lcom/android/exsettings/wifi/WifiSettings;->setHasOptionsMenu(Z)V

    .line 285
    const-string/jumbo v0, "wifi_start_connect_ssid"

    invoke-virtual {v9, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 286
    const-string/jumbo v0, "wifi_start_connect_ssid"

    invoke-virtual {v9, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/wifi/WifiSettings;->mOpenSsid:Ljava/lang/String;

    .line 287
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/WifiSettings;->onAccessPointsChanged()V

    .line 198
    :cond_3
    return-void
.end method

.method onAddNetworkPressed()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 893
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/16 v1, 0x86

    invoke-static {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    .line 895
    iput-object v2, p0, Lcom/android/exsettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    .line 896
    const/4 v0, 0x1

    invoke-direct {p0, v2, v0}, Lcom/android/exsettings/wifi/WifiSettings;->showDialog(Lcom/android/exsettingslib/wifi/AccessPoint;Z)V

    .line 892
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "button"    # I

    .prologue
    .line 817
    const/4 v0, -0x3

    if-ne p2, v0, :cond_1

    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    if-eqz v0, :cond_1

    .line 818
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/WifiSettings;->forget()V

    .line 816
    :cond_0
    :goto_0
    return-void

    .line 819
    :cond_1
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 820
    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiSettings;->mDialog:Lcom/android/exsettings/wifi/WifiDialog;

    if-eqz v0, :cond_0

    .line 821
    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiSettings;->mDialog:Lcom/android/exsettings/wifi/WifiDialog;

    invoke-virtual {v0}, Lcom/android/exsettings/wifi/WifiDialog;->getController()Lcom/android/exsettings/wifi/WifiConfigController;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/exsettings/wifi/WifiSettings;->submit(Lcom/android/exsettings/wifi/WifiConfigController;)V

    goto :goto_0
.end method

.method public onConnectedChanged()V
    .locals 1

    .prologue
    .line 800
    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiSettings;->mWifiTracker:Lcom/android/exsettingslib/wifi/WifiTracker;

    invoke-virtual {v0}, Lcom/android/exsettingslib/wifi/WifiTracker;->isConnected()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/exsettings/wifi/WifiSettings;->changeNextButtonState(Z)V

    .line 799
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 500
    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    if-nez v0, :cond_0

    .line 501
    invoke-super {p0, p1}, Lcom/android/exsettings/RestrictedSettingsFragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 503
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 531
    invoke-super {p0, p1}, Lcom/android/exsettings/RestrictedSettingsFragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 505
    :pswitch_0
    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/exsettingslib/wifi/AccessPoint;->isSaved()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 506
    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/exsettingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/exsettings/wifi/WifiSettings;->connect(Landroid/net/wifi/WifiConfiguration;)V

    .line 515
    :goto_0
    return v1

    .line 507
    :cond_1
    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/exsettingslib/wifi/AccessPoint;->getSecurity()I

    move-result v0

    if-nez v0, :cond_2

    .line 509
    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/exsettingslib/wifi/AccessPoint;->generateOpenNetworkConfig()V

    .line 510
    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/exsettingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/exsettings/wifi/WifiSettings;->connect(Landroid/net/wifi/WifiConfiguration;)V

    goto :goto_0

    .line 512
    :cond_2
    iput-boolean v2, p0, Lcom/android/exsettings/wifi/WifiSettings;->mDlgModify:Z

    .line 513
    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    invoke-direct {p0, v0, v1}, Lcom/android/exsettings/wifi/WifiSettings;->showDialog(Lcom/android/exsettingslib/wifi/AccessPoint;Z)V

    goto :goto_0

    .line 518
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/WifiSettings;->forget()V

    .line 519
    return v1

    .line 522
    :pswitch_2
    iput-boolean v1, p0, Lcom/android/exsettings/wifi/WifiSettings;->mDlgModify:Z

    .line 523
    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    invoke-direct {p0, v0, v1}, Lcom/android/exsettings/wifi/WifiSettings;->showDialog(Lcom/android/exsettingslib/wifi/AccessPoint;Z)V

    .line 524
    return v1

    .line 527
    :pswitch_3
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/android/exsettings/wifi/WifiSettings;->showDialog(I)V

    .line 528
    return v1

    .line 503
    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 183
    invoke-super {p0, p1}, Lcom/android/exsettings/RestrictedSettingsFragment;->onCreate(Landroid/os/Bundle;)V

    .line 184
    const v0, 0x7f080078

    invoke-virtual {p0, v0}, Lcom/android/exsettings/wifi/WifiSettings;->addPreferencesFromResource(I)V

    .line 185
    new-instance v0, Lcom/android/exsettings/wifi/AccessPointPreference$UserBadgeCache;

    invoke-virtual {p0}, Lcom/android/exsettings/wifi/WifiSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/exsettings/wifi/AccessPointPreference$UserBadgeCache;-><init>(Landroid/content/pm/PackageManager;)V

    iput-object v0, p0, Lcom/android/exsettings/wifi/WifiSettings;->mUserBadgeCache:Lcom/android/exsettings/wifi/AccessPointPreference$UserBadgeCache;

    .line 187
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "WifiSettings"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/exsettings/wifi/WifiSettings;->mBgThread:Landroid/os/HandlerThread;

    .line 188
    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiSettings;->mBgThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 182
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 6
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "info"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    const/4 v5, 0x0

    .line 462
    instance-of v3, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    if-eqz v3, :cond_4

    .line 463
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/WifiSettings;->getListView()Landroid/widget/ListView;

    move-result-object v3

    .line 464
    check-cast p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .end local p3    # "info":Landroid/view/ContextMenu$ContextMenuInfo;
    iget v4, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    .line 463
    invoke-virtual {v3, v4}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/preference/Preference;

    .line 466
    .local v2, "preference":Landroid/preference/Preference;
    instance-of v3, v2, Lcom/android/exsettings/wifi/AccessPointPreference;

    if-eqz v3, :cond_4

    .line 467
    check-cast v2, Lcom/android/exsettings/wifi/AccessPointPreference;

    .end local v2    # "preference":Landroid/preference/Preference;
    invoke-virtual {v2}, Lcom/android/exsettings/wifi/AccessPointPreference;->getAccessPoint()Lcom/android/exsettingslib/wifi/AccessPoint;

    move-result-object v3

    iput-object v3, p0, Lcom/android/exsettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    .line 468
    iget-object v3, p0, Lcom/android/exsettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    invoke-virtual {v3}, Lcom/android/exsettingslib/wifi/AccessPoint;->getSsid()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {p1, v3}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 469
    iget-object v3, p0, Lcom/android/exsettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    invoke-virtual {v3}, Lcom/android/exsettingslib/wifi/AccessPoint;->isConnectable()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 470
    const/4 v3, 0x7

    const v4, 0x7f0c072b

    invoke-interface {p1, v5, v3, v5, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 473
    :cond_0
    iget-object v3, p0, Lcom/android/exsettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    invoke-virtual {v3}, Lcom/android/exsettingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 475
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/android/exsettings/wifi/WifiSettings;->isEditabilityLockedDown(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 476
    return-void

    .line 479
    :cond_1
    iget-object v3, p0, Lcom/android/exsettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    invoke-virtual {v3}, Lcom/android/exsettingslib/wifi/AccessPoint;->isSaved()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/exsettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    invoke-virtual {v3}, Lcom/android/exsettingslib/wifi/AccessPoint;->isEphemeral()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 483
    :cond_2
    const/16 v3, 0x8

    const v4, 0x7f0c072d

    invoke-interface {p1, v5, v3, v5, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 485
    :cond_3
    iget-object v3, p0, Lcom/android/exsettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    invoke-virtual {v3}, Lcom/android/exsettingslib/wifi/AccessPoint;->isSaved()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 486
    const/16 v3, 0x9

    const v4, 0x7f0c072e

    invoke-interface {p1, v5, v3, v5, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 487
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v1

    .line 488
    .local v1, "nfcAdapter":Landroid/nfc/NfcAdapter;
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 489
    iget-object v3, p0, Lcom/android/exsettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    invoke-virtual {v3}, Lcom/android/exsettingslib/wifi/AccessPoint;->getSecurity()I

    move-result v3

    if-eqz v3, :cond_4

    .line 491
    const/16 v3, 0xa

    const v4, 0x7f0c072f

    invoke-interface {p1, v5, v3, v5, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 461
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v1    # "nfcAdapter":Landroid/nfc/NfcAdapter;
    :cond_4
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 8
    .param p1, "dialogId"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x0

    .line 602
    packed-switch p1, :pswitch_data_0

    .line 639
    :pswitch_0
    invoke-super {p0, p1}, Lcom/android/exsettings/RestrictedSettingsFragment;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    return-object v0

    .line 604
    :pswitch_1
    iget-object v3, p0, Lcom/android/exsettings/wifi/WifiSettings;->mDlgAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    .line 605
    .local v3, "ap":Lcom/android/exsettingslib/wifi/AccessPoint;
    if-nez v3, :cond_0

    .line 606
    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 607
    new-instance v3, Lcom/android/exsettingslib/wifi/AccessPoint;

    .end local v3    # "ap":Lcom/android/exsettingslib/wifi/AccessPoint;
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/exsettings/wifi/WifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    invoke-direct {v3, v0, v1}, Lcom/android/exsettingslib/wifi/AccessPoint;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 609
    .restart local v3    # "ap":Lcom/android/exsettingslib/wifi/AccessPoint;
    iput-object v3, p0, Lcom/android/exsettings/wifi/WifiSettings;->mDlgAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    .line 611
    iput-object v2, p0, Lcom/android/exsettings/wifi/WifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    .line 615
    :cond_0
    iput-object v3, p0, Lcom/android/exsettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    .line 616
    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/android/exsettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 617
    invoke-virtual {v3}, Lcom/android/exsettingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    .line 616
    invoke-static {v0, v1}, Lcom/android/exsettings/wifi/WifiSettings;->isEditabilityLockedDown(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)Z

    move-result v7

    .line 618
    :goto_0
    new-instance v0, Lcom/android/exsettings/wifi/WifiDialog;

    invoke-virtual {p0}, Lcom/android/exsettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-boolean v4, p0, Lcom/android/exsettings/wifi/WifiSettings;->mDlgEdit:Z

    .line 619
    iget-boolean v5, p0, Lcom/android/exsettings/wifi/WifiSettings;->mDlgModify:Z

    move-object v2, p0

    .line 618
    invoke-direct/range {v0 .. v7}, Lcom/android/exsettings/wifi/WifiDialog;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Lcom/android/exsettingslib/wifi/AccessPoint;ZZZZ)V

    iput-object v0, p0, Lcom/android/exsettings/wifi/WifiSettings;->mDialog:Lcom/android/exsettings/wifi/WifiDialog;

    .line 621
    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiSettings;->mDialog:Lcom/android/exsettings/wifi/WifiDialog;

    return-object v0

    .line 616
    :cond_1
    const/4 v7, 0x1

    .local v7, "hideForget":Z
    goto :goto_0

    .line 623
    .end local v3    # "ap":Lcom/android/exsettingslib/wifi/AccessPoint;
    .end local v7    # "hideForget":Z
    :pswitch_2
    new-instance v0, Lcom/android/exsettings/wifi/WpsDialog;

    invoke-virtual {p0}, Lcom/android/exsettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, v6}, Lcom/android/exsettings/wifi/WpsDialog;-><init>(Landroid/content/Context;I)V

    return-object v0

    .line 625
    :pswitch_3
    new-instance v0, Lcom/android/exsettings/wifi/WpsDialog;

    invoke-virtual {p0}, Lcom/android/exsettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/exsettings/wifi/WpsDialog;-><init>(Landroid/content/Context;I)V

    return-object v0

    .line 627
    :pswitch_4
    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    if-eqz v0, :cond_3

    .line 628
    new-instance v0, Lcom/android/exsettings/wifi/WriteWifiConfigToNfcDialog;

    .line 629
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/exsettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/exsettingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    iget v2, v2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 630
    iget-object v4, p0, Lcom/android/exsettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    invoke-virtual {v4}, Lcom/android/exsettingslib/wifi/AccessPoint;->getSecurity()I

    move-result v4

    .line 631
    iget-object v5, p0, Lcom/android/exsettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 628
    invoke-direct {v0, v1, v2, v4, v5}, Lcom/android/exsettings/wifi/WriteWifiConfigToNfcDialog;-><init>(Landroid/content/Context;IILandroid/net/wifi/WifiManager;)V

    iput-object v0, p0, Lcom/android/exsettings/wifi/WifiSettings;->mWifiToNfcDialog:Lcom/android/exsettings/wifi/WriteWifiConfigToNfcDialog;

    .line 637
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiSettings;->mWifiToNfcDialog:Lcom/android/exsettings/wifi/WriteWifiConfigToNfcDialog;

    return-object v0

    .line 632
    :cond_3
    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiSettings;->mWifiNfcDialogSavedState:Landroid/os/Bundle;

    if-eqz v0, :cond_2

    .line 633
    new-instance v0, Lcom/android/exsettings/wifi/WriteWifiConfigToNfcDialog;

    .line 634
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/exsettings/wifi/WifiSettings;->mWifiNfcDialogSavedState:Landroid/os/Bundle;

    iget-object v4, p0, Lcom/android/exsettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 633
    invoke-direct {v0, v1, v2, v4}, Lcom/android/exsettings/wifi/WriteWifiConfigToNfcDialog;-><init>(Landroid/content/Context;Landroid/os/Bundle;Landroid/net/wifi/WifiManager;)V

    iput-object v0, p0, Lcom/android/exsettings/wifi/WifiSettings;->mWifiToNfcDialog:Lcom/android/exsettings/wifi/WriteWifiConfigToNfcDialog;

    goto :goto_1

    .line 602
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 341
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/WifiSettings;->isUiRestricted()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 343
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/exsettings/wifi/WifiSettings;->addOptionsMenuItems(Landroid/view/Menu;)V

    .line 344
    invoke-super {p0, p1, p2}, Lcom/android/exsettings/RestrictedSettingsFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 339
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiSettings;->mBgThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 194
    invoke-super {p0}, Lcom/android/exsettings/RestrictedSettingsFragment;->onDestroy()V

    .line 192
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 293
    invoke-super {p0}, Lcom/android/exsettings/RestrictedSettingsFragment;->onDestroyView()V

    .line 295
    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiSettings;->mWifiEnabler:Lcom/android/exsettings/wifi/WifiEnabler;

    if-eqz v0, :cond_0

    .line 296
    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiSettings;->mWifiEnabler:Lcom/android/exsettings/wifi/WifiEnabler;

    invoke-virtual {v0}, Lcom/android/exsettings/wifi/WifiEnabler;->teardownSwitchBar()V

    .line 292
    :cond_0
    return-void
.end method

.method public onLevelChanged(Lcom/android/exsettingslib/wifi/AccessPoint;)V
    .locals 1
    .param p1, "accessPoint"    # Lcom/android/exsettingslib/wifi/AccessPoint;

    .prologue
    .line 934
    invoke-virtual {p1}, Lcom/android/exsettingslib/wifi/AccessPoint;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/exsettings/wifi/AccessPointPreference;

    invoke-virtual {v0}, Lcom/android/exsettings/wifi/AccessPointPreference;->onLevelChanged()V

    .line 933
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 11
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const v3, 0x7f0c0774

    const/4 v8, -0x1

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v10, 0x1

    .line 402
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/WifiSettings;->isUiRestricted()Z

    move-result v0

    if-eqz v0, :cond_0

    return v6

    .line 404
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 457
    invoke-super {p0, p1}, Lcom/android/exsettings/RestrictedSettingsFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 406
    :pswitch_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/exsettings/wifi/WifiSettings;->showDialog(I)V

    .line 407
    return v10

    .line 423
    :pswitch_1
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/exsettings/wifi/WifiSettings;->showDialog(I)V

    .line 424
    return v10

    .line 426
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/16 v1, 0x88

    invoke-static {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    .line 427
    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiSettings;->mWifiTracker:Lcom/android/exsettingslib/wifi/WifiTracker;

    invoke-virtual {v0}, Lcom/android/exsettingslib/wifi/WifiTracker;->forceScan()V

    .line 428
    return v10

    .line 430
    :pswitch_3
    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiSettings;->mWifiTracker:Lcom/android/exsettingslib/wifi/WifiTracker;

    invoke-virtual {v0}, Lcom/android/exsettingslib/wifi/WifiTracker;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 431
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/WifiSettings;->onAddNetworkPressed()V

    .line 433
    :cond_1
    return v10

    .line 435
    :pswitch_4
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/exsettings/SettingsActivity;

    if-eqz v0, :cond_2

    .line 436
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/exsettings/SettingsActivity;

    .line 437
    const-class v1, Lcom/android/exsettings/wifi/SavedAccessPointsWifiSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    move-object v4, v2

    move-object v5, p0

    .line 436
    invoke-virtual/range {v0 .. v6}, Lcom/android/exsettings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 444
    :goto_0
    return v10

    .line 440
    :cond_2
    const-class v0, Lcom/android/exsettings/wifi/SavedAccessPointsWifiSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v6

    move-object v4, p0

    move-object v5, p0

    move v7, v3

    move-object v9, v2

    invoke-virtual/range {v4 .. v9}, Lcom/android/exsettings/wifi/WifiSettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    goto :goto_0

    .line 446
    :pswitch_5
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/exsettings/SettingsActivity;

    if-eqz v0, :cond_3

    .line 447
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/exsettings/SettingsActivity;

    .line 448
    const-class v1, Lcom/android/exsettings/wifi/AdvancedWifiSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    .line 449
    const v3, 0x7f0c0775

    move-object v4, v2

    move-object v5, p0

    .line 447
    invoke-virtual/range {v0 .. v6}, Lcom/android/exsettings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 455
    :goto_1
    return v10

    .line 451
    :cond_3
    const-class v0, Lcom/android/exsettings/wifi/AdvancedWifiSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v6

    .line 452
    const v7, 0x7f0c0775

    move-object v4, p0

    move-object v5, p0

    move-object v9, v2

    .line 451
    invoke-virtual/range {v4 .. v9}, Lcom/android/exsettings/wifi/WifiSettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    goto :goto_1

    .line 404
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_2
    .end packed-switch
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 330
    invoke-super {p0}, Lcom/android/exsettings/RestrictedSettingsFragment;->onPause()V

    .line 331
    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiSettings;->mWifiEnabler:Lcom/android/exsettings/wifi/WifiEnabler;

    if-eqz v0, :cond_0

    .line 332
    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiSettings;->mWifiEnabler:Lcom/android/exsettings/wifi/WifiEnabler;

    invoke-virtual {v0}, Lcom/android/exsettings/wifi/WifiEnabler;->pause()V

    .line 335
    :cond_0
    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiSettings;->mWifiTracker:Lcom/android/exsettingslib/wifi/WifiTracker;

    invoke-virtual {v0}, Lcom/android/exsettingslib/wifi/WifiTracker;->stopTracking()V

    .line 329
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 3
    .param p1, "screen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 536
    instance-of v0, p2, Lcom/android/exsettings/wifi/AccessPointPreference;

    if-eqz v0, :cond_4

    .line 537
    check-cast p2, Lcom/android/exsettings/wifi/AccessPointPreference;

    .end local p2    # "preference":Landroid/preference/Preference;
    invoke-virtual {p2}, Lcom/android/exsettings/wifi/AccessPointPreference;->getAccessPoint()Lcom/android/exsettingslib/wifi/AccessPoint;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    .line 539
    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/exsettingslib/wifi/AccessPoint;->getSecurity()I

    move-result v0

    if-nez v0, :cond_0

    .line 540
    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/exsettingslib/wifi/AccessPoint;->isSaved()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 547
    :cond_0
    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/exsettingslib/wifi/AccessPoint;->isSaved()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 548
    iput-boolean v1, p0, Lcom/android/exsettings/wifi/WifiSettings;->mDlgModify:Z

    .line 549
    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    invoke-direct {p0, v0, v1}, Lcom/android/exsettings/wifi/WifiSettings;->showDialog(Lcom/android/exsettingslib/wifi/AccessPoint;Z)V

    .line 557
    :goto_0
    return v2

    .line 540
    :cond_1
    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/exsettingslib/wifi/AccessPoint;->isActive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 541
    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/exsettingslib/wifi/AccessPoint;->generateOpenNetworkConfig()V

    .line 542
    sget-boolean v0, Lcom/android/exsettings/wifi/WifiSettings;->savedNetworksExist:Z

    if-nez v0, :cond_2

    .line 543
    sput-boolean v2, Lcom/android/exsettings/wifi/WifiSettings;->savedNetworksExist:Z

    .line 544
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 546
    :cond_2
    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/exsettingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/exsettings/wifi/WifiSettings;->connect(Landroid/net/wifi/WifiConfiguration;)V

    goto :goto_0

    .line 551
    :cond_3
    iput-boolean v1, p0, Lcom/android/exsettings/wifi/WifiSettings;->mDlgModify:Z

    .line 552
    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    invoke-direct {p0, v0, v2}, Lcom/android/exsettings/wifi/WifiSettings;->showDialog(Lcom/android/exsettingslib/wifi/AccessPoint;Z)V

    goto :goto_0

    .line 555
    .restart local p2    # "preference":Landroid/preference/Preference;
    :cond_4
    invoke-super {p0, p1, p2}, Lcom/android/exsettings/RestrictedSettingsFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 318
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 319
    .local v0, "activity":Landroid/app/Activity;
    invoke-super {p0}, Lcom/android/exsettings/RestrictedSettingsFragment;->onResume()V

    .line 320
    const-string/jumbo v1, "dummy"

    invoke-virtual {p0, v1}, Lcom/android/exsettings/wifi/WifiSettings;->removePreference(Ljava/lang/String;)V

    .line 321
    iget-object v1, p0, Lcom/android/exsettings/wifi/WifiSettings;->mWifiEnabler:Lcom/android/exsettings/wifi/WifiEnabler;

    if-eqz v1, :cond_0

    .line 322
    iget-object v1, p0, Lcom/android/exsettings/wifi/WifiSettings;->mWifiEnabler:Lcom/android/exsettings/wifi/WifiEnabler;

    invoke-virtual {v1, v0}, Lcom/android/exsettings/wifi/WifiEnabler;->resume(Landroid/content/Context;)V

    .line 325
    :cond_0
    iget-object v1, p0, Lcom/android/exsettings/wifi/WifiSettings;->mWifiTracker:Lcom/android/exsettingslib/wifi/WifiTracker;

    invoke-virtual {v1}, Lcom/android/exsettingslib/wifi/WifiTracker;->startTracking()V

    .line 317
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 379
    invoke-super {p0, p1}, Lcom/android/exsettings/RestrictedSettingsFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 382
    iget-object v1, p0, Lcom/android/exsettings/wifi/WifiSettings;->mDialog:Lcom/android/exsettings/wifi/WifiDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/exsettings/wifi/WifiSettings;->mDialog:Lcom/android/exsettings/wifi/WifiDialog;

    invoke-virtual {v1}, Lcom/android/exsettings/wifi/WifiDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 383
    const-string/jumbo v1, "edit_mode"

    iget-boolean v2, p0, Lcom/android/exsettings/wifi/WifiSettings;->mDlgEdit:Z

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 384
    const-string/jumbo v1, "modify_mode"

    iget-boolean v2, p0, Lcom/android/exsettings/wifi/WifiSettings;->mDlgModify:Z

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 385
    iget-object v1, p0, Lcom/android/exsettings/wifi/WifiSettings;->mDlgAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    if-eqz v1, :cond_0

    .line 386
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, p0, Lcom/android/exsettings/wifi/WifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    .line 387
    iget-object v1, p0, Lcom/android/exsettings/wifi/WifiSettings;->mDlgAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    iget-object v2, p0, Lcom/android/exsettings/wifi/WifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Lcom/android/exsettingslib/wifi/AccessPoint;->saveWifiState(Landroid/os/Bundle;)V

    .line 388
    const-string/jumbo v1, "wifi_ap_state"

    iget-object v2, p0, Lcom/android/exsettings/wifi/WifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 392
    :cond_0
    iget-object v1, p0, Lcom/android/exsettings/wifi/WifiSettings;->mWifiToNfcDialog:Lcom/android/exsettings/wifi/WriteWifiConfigToNfcDialog;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/exsettings/wifi/WifiSettings;->mWifiToNfcDialog:Lcom/android/exsettings/wifi/WriteWifiConfigToNfcDialog;

    invoke-virtual {v1}, Lcom/android/exsettings/wifi/WriteWifiConfigToNfcDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 393
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 394
    .local v0, "savedState":Landroid/os/Bundle;
    iget-object v1, p0, Lcom/android/exsettings/wifi/WifiSettings;->mWifiToNfcDialog:Lcom/android/exsettings/wifi/WriteWifiConfigToNfcDialog;

    invoke-virtual {v1, v0}, Lcom/android/exsettings/wifi/WriteWifiConfigToNfcDialog;->saveState(Landroid/os/Bundle;)V

    .line 395
    const-string/jumbo v1, "wifi_nfc_dlg_state"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 378
    .end local v0    # "savedState":Landroid/os/Bundle;
    :cond_1
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 302
    invoke-super {p0}, Lcom/android/exsettings/RestrictedSettingsFragment;->onStart()V

    .line 305
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/WifiSettings;->createWifiEnabler()Lcom/android/exsettings/wifi/WifiEnabler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/wifi/WifiSettings;->mWifiEnabler:Lcom/android/exsettings/wifi/WifiEnabler;

    .line 301
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 174
    invoke-super {p0, p1, p2}, Lcom/android/exsettings/RestrictedSettingsFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 175
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 176
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 177
    const v1, 0x7f040158

    invoke-virtual {p0, v1}, Lcom/android/exsettings/wifi/WifiSettings;->setPinnedHeaderView(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/android/exsettings/wifi/WifiSettings;->mProgressHeader:Landroid/widget/ProgressBar;

    .line 173
    :cond_0
    return-void
.end method

.method public onWifiStateChanged(I)V
    .locals 2
    .param p1, "state"    # I

    .prologue
    .line 780
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 781
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 782
    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 785
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 779
    :goto_0
    return-void

    .line 787
    :pswitch_0
    const v1, 0x7f0c070b

    invoke-direct {p0, v1}, Lcom/android/exsettings/wifi/WifiSettings;->addMessagePreference(I)V

    .line 788
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/exsettings/wifi/WifiSettings;->setProgressBarVisible(Z)V

    goto :goto_0

    .line 792
    :pswitch_1
    invoke-direct {p0}, Lcom/android/exsettings/wifi/WifiSettings;->setOffMessage()V

    .line 793
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/exsettings/wifi/WifiSettings;->setProgressBarVisible(Z)V

    goto :goto_0

    .line 785
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected setProgressBarVisible(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 773
    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiSettings;->mProgressHeader:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 774
    iget-object v1, p0, Lcom/android/exsettings/wifi/WifiSettings;->mProgressHeader:Landroid/widget/ProgressBar;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 772
    :cond_0
    return-void

    .line 774
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method submit(Lcom/android/exsettings/wifi/WifiConfigController;)V
    .locals 3
    .param p1, "configController"    # Lcom/android/exsettings/wifi/WifiConfigController;

    .prologue
    .line 828
    invoke-virtual {p1}, Lcom/android/exsettings/wifi/WifiConfigController;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 830
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-nez v0, :cond_1

    .line 831
    iget-object v1, p0, Lcom/android/exsettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    if-eqz v1, :cond_0

    .line 832
    iget-object v1, p0, Lcom/android/exsettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/exsettingslib/wifi/AccessPoint;->isSaved()Z

    move-result v1

    .line 831
    if-eqz v1, :cond_0

    .line 833
    iget-object v1, p0, Lcom/android/exsettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/exsettingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/exsettings/wifi/WifiSettings;->connect(Landroid/net/wifi/WifiConfiguration;)V

    .line 844
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/exsettings/wifi/WifiSettings;->mWifiTracker:Lcom/android/exsettingslib/wifi/WifiTracker;

    invoke-virtual {v1}, Lcom/android/exsettingslib/wifi/WifiTracker;->resumeScanning()V

    .line 826
    return-void

    .line 835
    :cond_1
    invoke-virtual {p1}, Lcom/android/exsettings/wifi/WifiConfigController;->isModify()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 836
    iget-object v1, p0, Lcom/android/exsettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/android/exsettings/wifi/WifiSettings;->mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v1, v0, v2}, Landroid/net/wifi/WifiManager;->save(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    goto :goto_0

    .line 838
    :cond_2
    iget-object v1, p0, Lcom/android/exsettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/android/exsettings/wifi/WifiSettings;->mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v1, v0, v2}, Landroid/net/wifi/WifiManager;->save(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    .line 839
    iget-object v1, p0, Lcom/android/exsettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    if-eqz v1, :cond_0

    .line 840
    invoke-virtual {p0, v0}, Lcom/android/exsettings/wifi/WifiSettings;->connect(Landroid/net/wifi/WifiConfiguration;)V

    goto :goto_0
.end method
