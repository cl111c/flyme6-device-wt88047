.class public Lcom/android/exsettings/wifi/SavedAccessPointsWifiSettings;
.super Lcom/android/exsettings/RestrictedSettingsFragment;
.source "SavedAccessPointsWifiSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Lcom/android/exsettings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exsettings/wifi/SavedAccessPointsWifiSettings$1;,
        Lcom/android/exsettings/wifi/SavedAccessPointsWifiSettings$2;,
        Lcom/android/exsettings/wifi/SavedAccessPointsWifiSettings$3;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/exsettings/search/Indexable$SearchIndexProvider;


# instance fields
.field private mAccessPointSavedState:Landroid/os/Bundle;

.field private mDialog:Lcom/android/exsettings/wifi/WifiDialog;

.field private mDlgAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

.field private mDropListener:Lcom/android/exsettings/DraggableSortListView$DropListener;

.field private mNetworksListView:Lcom/android/exsettings/DraggableSortListView;

.field private mPrioritiesOrderChanged:Z

.field private mSelectedAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

.field private final mSettingsObserver:Landroid/database/ContentObserver;

.field private mUserBadgeCache:Lcom/android/exsettings/wifi/AccessPointPreference$UserBadgeCache;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static synthetic -get0(Lcom/android/exsettings/wifi/SavedAccessPointsWifiSettings;)Lcom/android/exsettings/DraggableSortListView$DropListener;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/wifi/SavedAccessPointsWifiSettings;->mDropListener:Lcom/android/exsettings/DraggableSortListView$DropListener;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/exsettings/wifi/SavedAccessPointsWifiSettings;)Lcom/android/exsettings/DraggableSortListView;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/wifi/SavedAccessPointsWifiSettings;->mNetworksListView:Lcom/android/exsettings/DraggableSortListView;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/exsettings/wifi/SavedAccessPointsWifiSettings;)Landroid/net/wifi/WifiManager;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/wifi/SavedAccessPointsWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/exsettings/wifi/SavedAccessPointsWifiSettings;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/exsettings/wifi/SavedAccessPointsWifiSettings;->mPrioritiesOrderChanged:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/exsettings/wifi/SavedAccessPointsWifiSettings;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/exsettings/wifi/SavedAccessPointsWifiSettings;->isAutoConfigPriorities()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/exsettings/wifi/SavedAccessPointsWifiSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/exsettings/wifi/SavedAccessPointsWifiSettings;->initPreferences()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 364
    new-instance v0, Lcom/android/exsettings/wifi/SavedAccessPointsWifiSettings$3;

    invoke-direct {v0}, Lcom/android/exsettings/wifi/SavedAccessPointsWifiSettings$3;-><init>()V

    .line 363
    sput-object v0, Lcom/android/exsettings/wifi/SavedAccessPointsWifiSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/exsettings/search/Indexable$SearchIndexProvider;

    .line 63
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 129
    const-string/jumbo v0, "no_config_wifi"

    invoke-direct {p0, v0}, Lcom/android/exsettings/RestrictedSettingsFragment;-><init>(Ljava/lang/String;)V

    .line 68
    new-instance v0, Lcom/android/exsettings/wifi/SavedAccessPointsWifiSettings$1;

    invoke-direct {v0, p0}, Lcom/android/exsettings/wifi/SavedAccessPointsWifiSettings$1;-><init>(Lcom/android/exsettings/wifi/SavedAccessPointsWifiSettings;)V

    .line 67
    iput-object v0, p0, Lcom/android/exsettings/wifi/SavedAccessPointsWifiSettings;->mDropListener:Lcom/android/exsettings/DraggableSortListView$DropListener;

    .line 102
    new-instance v0, Lcom/android/exsettings/wifi/SavedAccessPointsWifiSettings$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/exsettings/wifi/SavedAccessPointsWifiSettings$2;-><init>(Lcom/android/exsettings/wifi/SavedAccessPointsWifiSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/exsettings/wifi/SavedAccessPointsWifiSettings;->mSettingsObserver:Landroid/database/ContentObserver;

    .line 128
    return-void
.end method

.method private initPreferences()V
    .locals 10

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 249
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/SavedAccessPointsWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    .line 250
    .local v9, "preferenceScreen":Landroid/preference/PreferenceScreen;
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/SavedAccessPointsWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 252
    .local v2, "context":Landroid/content/Context;
    invoke-static {v2, v4, v5, v4}, Lcom/android/exsettingslib/wifi/WifiTracker;->getCurrentAccessPoints(Landroid/content/Context;ZZZ)Ljava/util/List;

    move-result-object v6

    .line 255
    .local v6, "accessPoints":Ljava/util/List;, "Ljava/util/List<Lcom/android/exsettingslib/wifi/AccessPoint;>;"
    new-instance v3, Lcom/android/exsettings/wifi/SavedAccessPointsWifiSettings$4;

    invoke-direct {v3, p0}, Lcom/android/exsettings/wifi/SavedAccessPointsWifiSettings$4;-><init>(Lcom/android/exsettings/wifi/SavedAccessPointsWifiSettings;)V

    invoke-static {v6, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 270
    invoke-virtual {v9, v5}, Landroid/preference/PreferenceScreen;->setOrderingAsAdded(Z)V

    .line 271
    invoke-virtual {v9}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 273
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    .line 274
    .local v7, "accessPointsSize":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, v7, :cond_1

    .line 275
    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/exsettingslib/wifi/AccessPoint;

    .line 276
    .local v1, "accessPoint":Lcom/android/exsettingslib/wifi/AccessPoint;
    new-instance v0, Lcom/android/exsettings/wifi/AccessPointPreference;

    .line 277
    iget-object v3, p0, Lcom/android/exsettings/wifi/SavedAccessPointsWifiSettings;->mUserBadgeCache:Lcom/android/exsettings/wifi/AccessPointPreference$UserBadgeCache;

    move v5, v4

    .line 276
    invoke-direct/range {v0 .. v5}, Lcom/android/exsettings/wifi/AccessPointPreference;-><init>(Lcom/android/exsettingslib/wifi/AccessPoint;Landroid/content/Context;Lcom/android/exsettings/wifi/AccessPointPreference$UserBadgeCache;ZZ)V

    .line 278
    .local v0, "preference":Lcom/android/exsettings/wifi/AccessPointPreference;
    iget-object v3, p0, Lcom/android/exsettings/wifi/SavedAccessPointsWifiSettings;->mSelectedAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    if-eqz v3, :cond_0

    .line 279
    iget-object v3, p0, Lcom/android/exsettings/wifi/SavedAccessPointsWifiSettings;->mSelectedAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    invoke-virtual {v3}, Lcom/android/exsettingslib/wifi/AccessPoint;->getNetworkId()I

    move-result v3

    invoke-virtual {v1}, Lcom/android/exsettingslib/wifi/AccessPoint;->getNetworkId()I

    move-result v5

    if-ne v3, v5, :cond_0

    .line 280
    iput-object v1, p0, Lcom/android/exsettings/wifi/SavedAccessPointsWifiSettings;->mSelectedAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    .line 282
    :cond_0
    invoke-virtual {v0, v8}, Lcom/android/exsettings/wifi/AccessPointPreference;->setOrder(I)V

    .line 283
    invoke-virtual {v9, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 274
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 286
    .end local v0    # "preference":Lcom/android/exsettings/wifi/AccessPointPreference;
    .end local v1    # "accessPoint":Lcom/android/exsettingslib/wifi/AccessPoint;
    :cond_1
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/SavedAccessPointsWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v3

    if-ge v3, v4, :cond_2

    .line 287
    const-string/jumbo v3, "SavedAccessPointsWifiSettings"

    const-string/jumbo v4, "Saved networks activity loaded, but there are no saved networks!"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    :cond_2
    return-void
.end method

.method private isAutoConfigPriorities()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 356
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/SavedAccessPointsWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 357
    const-string/jumbo v3, "wifi_auto_priority"

    .line 356
    invoke-static {v2, v3, v0}, Lcyanogenmod/providers/CMSettings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private showDialog(Lcom/android/exsettings/wifi/AccessPointPreference;Z)V
    .locals 3
    .param p1, "accessPoint"    # Lcom/android/exsettings/wifi/AccessPointPreference;
    .param p2, "edit"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 292
    iget-object v0, p0, Lcom/android/exsettings/wifi/SavedAccessPointsWifiSettings;->mDialog:Lcom/android/exsettings/wifi/WifiDialog;

    if-eqz v0, :cond_0

    .line 293
    invoke-virtual {p0, v1}, Lcom/android/exsettings/wifi/SavedAccessPointsWifiSettings;->removeDialog(I)V

    .line 294
    iput-object v2, p0, Lcom/android/exsettings/wifi/SavedAccessPointsWifiSettings;->mDialog:Lcom/android/exsettings/wifi/WifiDialog;

    .line 298
    :cond_0
    invoke-virtual {p1}, Lcom/android/exsettings/wifi/AccessPointPreference;->getAccessPoint()Lcom/android/exsettingslib/wifi/AccessPoint;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/wifi/SavedAccessPointsWifiSettings;->mDlgAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    .line 300
    invoke-virtual {p0, v1}, Lcom/android/exsettings/wifi/SavedAccessPointsWifiSettings;->showDialog(I)V

    .line 291
    return-void
.end method


# virtual methods
.method addOptionsMenuItems(Landroid/view/Menu;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 211
    const v0, 0x7f0c0233

    invoke-interface {p1, v2, v1, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    move-result-object v0

    .line 213
    invoke-direct {p0}, Lcom/android/exsettings/wifi/SavedAccessPointsWifiSettings;->isAutoConfigPriorities()Z

    move-result v1

    .line 211
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 210
    return-void
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 134
    const/16 v0, 0x6a

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 173
    invoke-super {p0, p1}, Lcom/android/exsettings/RestrictedSettingsFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 174
    const-string/jumbo v0, "wifi"

    invoke-virtual {p0, v0}, Lcom/android/exsettings/wifi/SavedAccessPointsWifiSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/exsettings/wifi/SavedAccessPointsWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 176
    if-eqz p1, :cond_1

    .line 177
    const-string/jumbo v0, "wifi_ap_state"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 179
    const-string/jumbo v0, "wifi_ap_state"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 178
    iput-object v0, p0, Lcom/android/exsettings/wifi/SavedAccessPointsWifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    .line 180
    new-instance v0, Lcom/android/exsettingslib/wifi/AccessPoint;

    invoke-virtual {p0}, Lcom/android/exsettings/wifi/SavedAccessPointsWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/exsettings/wifi/SavedAccessPointsWifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    invoke-direct {v0, v1, v2}, Lcom/android/exsettingslib/wifi/AccessPoint;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    iput-object v0, p0, Lcom/android/exsettings/wifi/SavedAccessPointsWifiSettings;->mDlgAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    .line 181
    iget-object v0, p0, Lcom/android/exsettings/wifi/SavedAccessPointsWifiSettings;->mDlgAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    iput-object v0, p0, Lcom/android/exsettings/wifi/SavedAccessPointsWifiSettings;->mSelectedAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    .line 184
    :cond_0
    const-string/jumbo v0, "priorities_order_changed"

    const/4 v1, 0x0

    .line 183
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/exsettings/wifi/SavedAccessPointsWifiSettings;->mPrioritiesOrderChanged:Z

    .line 187
    :cond_1
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/SavedAccessPointsWifiSettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/exsettings/wifi/SavedAccessPointsWifiSettings;->registerForContextMenu(Landroid/view/View;)V

    .line 188
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/exsettings/wifi/SavedAccessPointsWifiSettings;->setHasOptionsMenu(Z)V

    .line 172
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "button"    # I

    .prologue
    const/4 v2, 0x0

    .line 338
    const/4 v0, -0x3

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/android/exsettings/wifi/SavedAccessPointsWifiSettings;->mSelectedAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    if-eqz v0, :cond_0

    .line 339
    iget-object v0, p0, Lcom/android/exsettings/wifi/SavedAccessPointsWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/exsettings/wifi/SavedAccessPointsWifiSettings;->mSelectedAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/exsettingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    iget v1, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiManager;->forget(ILandroid/net/wifi/WifiManager$ActionListener;)V

    .line 340
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/SavedAccessPointsWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v0, p0, Lcom/android/exsettings/wifi/SavedAccessPointsWifiSettings;->mSelectedAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/exsettingslib/wifi/AccessPoint;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/Preference;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 341
    iput-object v2, p0, Lcom/android/exsettings/wifi/SavedAccessPointsWifiSettings;->mSelectedAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    .line 337
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 139
    invoke-super {p0, p1}, Lcom/android/exsettings/RestrictedSettingsFragment;->onCreate(Landroid/os/Bundle;)V

    .line 140
    const v0, 0x7f080075

    invoke-virtual {p0, v0}, Lcom/android/exsettings/wifi/SavedAccessPointsWifiSettings;->addPreferencesFromResource(I)V

    .line 141
    new-instance v0, Lcom/android/exsettings/wifi/AccessPointPreference$UserBadgeCache;

    invoke-virtual {p0}, Lcom/android/exsettings/wifi/SavedAccessPointsWifiSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/exsettings/wifi/AccessPointPreference$UserBadgeCache;-><init>(Landroid/content/pm/PackageManager;)V

    iput-object v0, p0, Lcom/android/exsettings/wifi/SavedAccessPointsWifiSettings;->mUserBadgeCache:Lcom/android/exsettings/wifi/AccessPointPreference$UserBadgeCache;

    .line 138
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 8
    .param p1, "dialogId"    # I

    .prologue
    const/4 v4, 0x0

    .line 305
    packed-switch p1, :pswitch_data_0

    .line 318
    invoke-super {p0, p1}, Lcom/android/exsettings/RestrictedSettingsFragment;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    return-object v0

    .line 307
    :pswitch_0
    iget-object v0, p0, Lcom/android/exsettings/wifi/SavedAccessPointsWifiSettings;->mDlgAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    iput-object v0, p0, Lcom/android/exsettings/wifi/SavedAccessPointsWifiSettings;->mSelectedAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    .line 310
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/SavedAccessPointsWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 311
    iget-object v1, p0, Lcom/android/exsettings/wifi/SavedAccessPointsWifiSettings;->mDlgAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/exsettingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    .line 310
    invoke-static {v0, v1}, Lcom/android/exsettings/wifi/WifiSettings;->isEditabilityLockedDown(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)Z

    move-result v7

    .line 312
    .local v7, "hideForgetButton":Z
    new-instance v0, Lcom/android/exsettings/wifi/WifiDialog;

    invoke-virtual {p0}, Lcom/android/exsettings/wifi/SavedAccessPointsWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v3, p0, Lcom/android/exsettings/wifi/SavedAccessPointsWifiSettings;->mDlgAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    .line 313
    const/4 v6, 0x1

    move-object v2, p0

    move v5, v4

    .line 312
    invoke-direct/range {v0 .. v7}, Lcom/android/exsettings/wifi/WifiDialog;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Lcom/android/exsettingslib/wifi/AccessPoint;ZZZZ)V

    iput-object v0, p0, Lcom/android/exsettings/wifi/SavedAccessPointsWifiSettings;->mDialog:Lcom/android/exsettings/wifi/WifiDialog;

    .line 315
    iget-object v0, p0, Lcom/android/exsettings/wifi/SavedAccessPointsWifiSettings;->mDialog:Lcom/android/exsettings/wifi/WifiDialog;

    return-object v0

    .line 305
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 204
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/SavedAccessPointsWifiSettings;->isUiRestricted()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 206
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/exsettings/wifi/SavedAccessPointsWifiSettings;->addOptionsMenuItems(Landroid/view/Menu;)V

    .line 207
    invoke-super {p0, p1, p2}, Lcom/android/exsettings/RestrictedSettingsFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 202
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 165
    new-instance v0, Lcom/android/exsettings/DraggableSortListView;

    invoke-virtual {p0}, Lcom/android/exsettings/wifi/SavedAccessPointsWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/exsettings/DraggableSortListView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/exsettings/wifi/SavedAccessPointsWifiSettings;->mNetworksListView:Lcom/android/exsettings/DraggableSortListView;

    .line 166
    iget-object v0, p0, Lcom/android/exsettings/wifi/SavedAccessPointsWifiSettings;->mNetworksListView:Lcom/android/exsettings/DraggableSortListView;

    const v1, 0x102000a

    invoke-virtual {v0, v1}, Lcom/android/exsettings/DraggableSortListView;->setId(I)V

    .line 167
    iget-object v0, p0, Lcom/android/exsettings/wifi/SavedAccessPointsWifiSettings;->mNetworksListView:Lcom/android/exsettings/DraggableSortListView;

    iget-object v1, p0, Lcom/android/exsettings/wifi/SavedAccessPointsWifiSettings;->mDropListener:Lcom/android/exsettings/DraggableSortListView$DropListener;

    invoke-virtual {v0, v1}, Lcom/android/exsettings/DraggableSortListView;->setDropListener(Lcom/android/exsettings/DraggableSortListView$DropListener;)V

    .line 168
    iget-object v0, p0, Lcom/android/exsettings/wifi/SavedAccessPointsWifiSettings;->mNetworksListView:Lcom/android/exsettings/DraggableSortListView;

    return-object v0
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 193
    invoke-super {p0}, Lcom/android/exsettings/RestrictedSettingsFragment;->onDetach()V

    .line 195
    iget-boolean v0, p0, Lcom/android/exsettings/wifi/SavedAccessPointsWifiSettings;->mPrioritiesOrderChanged:Z

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/android/exsettings/wifi/SavedAccessPointsWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->disconnect()Z

    .line 192
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 11
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 220
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/SavedAccessPointsWifiSettings;->isUiRestricted()Z

    move-result v6

    if-eqz v6, :cond_0

    return v8

    .line 222
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 245
    invoke-super {p0, p1}, Lcom/android/exsettings/RestrictedSettingsFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v6

    return v6

    .line 224
    :pswitch_0
    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v1, 0x0

    .line 227
    .local v1, "autoConfig":Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/SavedAccessPointsWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    .line 228
    const-string/jumbo v10, "wifi_auto_priority"

    if-eqz v1, :cond_2

    move v6, v7

    .line 227
    :goto_1
    invoke-static {v9, v10, v6}, Lcyanogenmod/providers/CMSettings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 229
    iget-object v9, p0, Lcom/android/exsettings/wifi/SavedAccessPointsWifiSettings;->mNetworksListView:Lcom/android/exsettings/DraggableSortListView;

    if-eqz v1, :cond_3

    const/4 v6, 0x0

    :goto_2
    invoke-virtual {v9, v6}, Lcom/android/exsettings/DraggableSortListView;->setDropListener(Lcom/android/exsettings/DraggableSortListView$DropListener;)V

    .line 230
    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 232
    if-nez v1, :cond_4

    .line 234
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/SavedAccessPointsWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    .line 235
    .local v5, "preferences":Landroid/preference/PreferenceScreen;
    invoke-virtual {v5}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v3

    .line 236
    .local v3, "count":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_3
    if-ge v4, v3, :cond_4

    .line 238
    invoke-virtual {v5, v4}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v6

    .line 237
    check-cast v6, Lcom/android/exsettings/wifi/AccessPointPreference;

    invoke-virtual {v6}, Lcom/android/exsettings/wifi/AccessPointPreference;->getAccessPoint()Lcom/android/exsettingslib/wifi/AccessPoint;

    move-result-object v0

    .line 239
    .local v0, "ap":Lcom/android/exsettingslib/wifi/AccessPoint;
    invoke-virtual {v0}, Lcom/android/exsettingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    .line 240
    .local v2, "config":Landroid/net/wifi/WifiConfiguration;
    iget-object v6, p0, Lcom/android/exsettings/wifi/SavedAccessPointsWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget v9, v2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v6, v9, v8}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    .line 236
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 224
    .end local v0    # "ap":Lcom/android/exsettingslib/wifi/AccessPoint;
    .end local v1    # "autoConfig":Z
    .end local v2    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v3    # "count":I
    .end local v4    # "i":I
    .end local v5    # "preferences":Landroid/preference/PreferenceScreen;
    :cond_1
    const/4 v1, 0x1

    .restart local v1    # "autoConfig":Z
    goto :goto_0

    :cond_2
    move v6, v8

    .line 228
    goto :goto_1

    .line 229
    :cond_3
    iget-object v6, p0, Lcom/android/exsettings/wifi/SavedAccessPointsWifiSettings;->mDropListener:Lcom/android/exsettings/DraggableSortListView$DropListener;

    goto :goto_2

    .line 243
    :cond_4
    return v7

    .line 222
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 158
    invoke-super {p0}, Lcom/android/exsettings/RestrictedSettingsFragment;->onResume()V

    .line 159
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/SavedAccessPointsWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/exsettings/wifi/SavedAccessPointsWifiSettings;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 157
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 1
    .param p1, "screen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 347
    instance-of v0, p2, Lcom/android/exsettings/wifi/AccessPointPreference;

    if-eqz v0, :cond_0

    .line 348
    check-cast p2, Lcom/android/exsettings/wifi/AccessPointPreference;

    .end local p2    # "preference":Landroid/preference/Preference;
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/android/exsettings/wifi/SavedAccessPointsWifiSettings;->showDialog(Lcom/android/exsettings/wifi/AccessPointPreference;Z)V

    .line 349
    const/4 v0, 0x1

    return v0

    .line 351
    .restart local p2    # "preference":Landroid/preference/Preference;
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/exsettings/RestrictedSettingsFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 146
    invoke-super {p0}, Lcom/android/exsettings/RestrictedSettingsFragment;->onResume()V

    .line 147
    invoke-direct {p0}, Lcom/android/exsettings/wifi/SavedAccessPointsWifiSettings;->initPreferences()V

    .line 149
    iget-object v2, p0, Lcom/android/exsettings/wifi/SavedAccessPointsWifiSettings;->mNetworksListView:Lcom/android/exsettings/DraggableSortListView;

    invoke-direct {p0}, Lcom/android/exsettings/wifi/SavedAccessPointsWifiSettings;->isAutoConfigPriorities()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v2, v1}, Lcom/android/exsettings/DraggableSortListView;->setDropListener(Lcom/android/exsettings/DraggableSortListView$DropListener;)V

    .line 150
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/SavedAccessPointsWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 151
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/SavedAccessPointsWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 153
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v1, "wifi_auto_priority"

    .line 152
    invoke-static {v1}, Lcyanogenmod/providers/CMSettings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 153
    iget-object v2, p0, Lcom/android/exsettings/wifi/SavedAccessPointsWifiSettings;->mSettingsObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    .line 152
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 145
    return-void

    .line 149
    .end local v0    # "resolver":Landroid/content/ContentResolver;
    :cond_0
    iget-object v1, p0, Lcom/android/exsettings/wifi/SavedAccessPointsWifiSettings;->mDropListener:Lcom/android/exsettings/DraggableSortListView$DropListener;

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 323
    invoke-super {p0, p1}, Lcom/android/exsettings/RestrictedSettingsFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 326
    iget-object v0, p0, Lcom/android/exsettings/wifi/SavedAccessPointsWifiSettings;->mDialog:Lcom/android/exsettings/wifi/WifiDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/exsettings/wifi/SavedAccessPointsWifiSettings;->mDialog:Lcom/android/exsettings/wifi/WifiDialog;

    invoke-virtual {v0}, Lcom/android/exsettings/wifi/WifiDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 327
    iget-object v0, p0, Lcom/android/exsettings/wifi/SavedAccessPointsWifiSettings;->mDlgAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    if-eqz v0, :cond_0

    .line 328
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/android/exsettings/wifi/SavedAccessPointsWifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    .line 329
    iget-object v0, p0, Lcom/android/exsettings/wifi/SavedAccessPointsWifiSettings;->mDlgAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    iget-object v1, p0, Lcom/android/exsettings/wifi/SavedAccessPointsWifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/android/exsettingslib/wifi/AccessPoint;->saveWifiState(Landroid/os/Bundle;)V

    .line 330
    const-string/jumbo v0, "wifi_ap_state"

    iget-object v1, p0, Lcom/android/exsettings/wifi/SavedAccessPointsWifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 333
    :cond_0
    const-string/jumbo v0, "priorities_order_changed"

    iget-boolean v1, p0, Lcom/android/exsettings/wifi/SavedAccessPointsWifiSettings;->mPrioritiesOrderChanged:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 322
    return-void
.end method
