.class public final Lcom/android/exsettings/bluetooth/DeviceProfilesSettings;
.super Landroid/app/DialogFragment;
.source "DeviceProfilesSettings.java"

# interfaces
.implements Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice$Callback;
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final mAutoConnectPrefs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfile;",
            "Landroid/preference/CheckBoxPreference;",
            ">;"
        }
    .end annotation
.end field

.field private mCachedDevice:Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;

.field private mDisconnectDialog:Landroid/app/AlertDialog;

.field private mManager:Lcom/android/exsettingslib/bluetooth/LocalBluetoothManager;

.field private mProfileContainer:Landroid/view/ViewGroup;

.field private mProfileGroupIsRemoved:Z

.field private mProfileLabel:Landroid/widget/TextView;

.field private mProfileManager:Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfileManager;

.field private mRootView:Landroid/view/View;


# direct methods
.method static synthetic -wrap0(Lcom/android/exsettings/bluetooth/DeviceProfilesSettings;Ljava/lang/String;)Landroid/widget/CheckBox;
    .locals 1
    .param p1, "profile"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/exsettings/bluetooth/DeviceProfilesSettings;->findProfile(Ljava/lang/String;)Landroid/widget/CheckBox;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/exsettings/bluetooth/DeviceProfilesSettings;Landroid/widget/CheckBox;Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfile;)V
    .locals 0
    .param p1, "profilePref"    # Landroid/widget/CheckBox;
    .param p2, "profile"    # Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfile;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/exsettings/bluetooth/DeviceProfilesSettings;->refreshProfilePreference(Landroid/widget/CheckBox;Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfile;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 72
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 71
    iput-object v0, p0, Lcom/android/exsettings/bluetooth/DeviceProfilesSettings;->mAutoConnectPrefs:Ljava/util/HashMap;

    .line 52
    return-void
.end method

.method private addPreferencesForProfiles()V
    .locals 12

    .prologue
    .line 175
    iget-object v9, p0, Lcom/android/exsettings/bluetooth/DeviceProfilesSettings;->mProfileContainer:Landroid/view/ViewGroup;

    invoke-virtual {v9}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 176
    iget-object v9, p0, Lcom/android/exsettings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v9}, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->getConnectableProfiles()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "profile$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfile;

    .line 178
    .local v6, "profile":Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfile;
    instance-of v9, v6, Lcom/android/exsettingslib/bluetooth/PbapServerProfile;

    if-nez v9, :cond_1

    .line 179
    instance-of v9, v6, Lcom/android/exsettingslib/bluetooth/MapProfile;

    .line 178
    :goto_1
    if-nez v9, :cond_0

    .line 180
    invoke-direct {p0, v6}, Lcom/android/exsettings/bluetooth/DeviceProfilesSettings;->createProfilePreference(Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfile;)Landroid/widget/CheckBox;

    move-result-object v5

    .line 181
    .local v5, "pref":Landroid/widget/CheckBox;
    iget-object v9, p0, Lcom/android/exsettings/bluetooth/DeviceProfilesSettings;->mProfileContainer:Landroid/view/ViewGroup;

    invoke-virtual {v9, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 178
    .end local v5    # "pref":Landroid/widget/CheckBox;
    :cond_1
    const/4 v9, 0x1

    goto :goto_1

    .line 185
    .end local v6    # "profile":Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfile;
    :cond_2
    iget-object v9, p0, Lcom/android/exsettings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v9}, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->getPhonebookPermissionChoice()I

    move-result v3

    .line 186
    .local v3, "pbapPermission":I
    const-string/jumbo v9, "DeviceProfilesSettings"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "addPreferencesForProfiles: pbapPermission = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    if-eqz v3, :cond_3

    .line 189
    iget-object v9, p0, Lcom/android/exsettings/bluetooth/DeviceProfilesSettings;->mManager:Lcom/android/exsettingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v9}, Lcom/android/exsettingslib/bluetooth/LocalBluetoothManager;->getProfileManager()Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfileManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfileManager;->getPbapProfile()Lcom/android/exsettingslib/bluetooth/PbapServerProfile;

    move-result-object v8

    .line 190
    .local v8, "psp":Lcom/android/exsettingslib/bluetooth/PbapServerProfile;
    invoke-direct {p0, v8}, Lcom/android/exsettings/bluetooth/DeviceProfilesSettings;->createProfilePreference(Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfile;)Landroid/widget/CheckBox;

    move-result-object v4

    .line 191
    .local v4, "pbapPref":Landroid/widget/CheckBox;
    iget-object v9, p0, Lcom/android/exsettings/bluetooth/DeviceProfilesSettings;->mProfileContainer:Landroid/view/ViewGroup;

    invoke-virtual {v9, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 194
    .end local v4    # "pbapPref":Landroid/widget/CheckBox;
    .end local v8    # "psp":Lcom/android/exsettingslib/bluetooth/PbapServerProfile;
    :cond_3
    iget-object v9, p0, Lcom/android/exsettings/bluetooth/DeviceProfilesSettings;->mManager:Lcom/android/exsettingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v9}, Lcom/android/exsettingslib/bluetooth/LocalBluetoothManager;->getProfileManager()Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfileManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfileManager;->getMapProfile()Lcom/android/exsettingslib/bluetooth/MapProfile;

    move-result-object v2

    .line 195
    .local v2, "mapProfile":Lcom/android/exsettingslib/bluetooth/MapProfile;
    iget-object v9, p0, Lcom/android/exsettings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v9}, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->getMessagePermissionChoice()I

    move-result v0

    .line 196
    .local v0, "mapPermission":I
    const-string/jumbo v9, "DeviceProfilesSettings"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "addPreferencesForProfiles: mapPermission = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    if-eqz v0, :cond_4

    .line 198
    invoke-direct {p0, v2}, Lcom/android/exsettings/bluetooth/DeviceProfilesSettings;->createProfilePreference(Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfile;)Landroid/widget/CheckBox;

    move-result-object v1

    .line 199
    .local v1, "mapPreference":Landroid/widget/CheckBox;
    iget-object v9, p0, Lcom/android/exsettings/bluetooth/DeviceProfilesSettings;->mProfileContainer:Landroid/view/ViewGroup;

    invoke-virtual {v9, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 202
    .end local v1    # "mapPreference":Landroid/widget/CheckBox;
    :cond_4
    invoke-direct {p0}, Lcom/android/exsettings/bluetooth/DeviceProfilesSettings;->showOrHideProfileGroup()V

    .line 174
    return-void
.end method

.method private askDisconnect(Landroid/content/Context;Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfile;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "profile"    # Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfile;

    .prologue
    .line 282
    iget-object v0, p0, Lcom/android/exsettings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;

    .line 283
    .local v0, "device":Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;
    invoke-virtual {v0}, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v3

    .line 284
    .local v3, "name":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 285
    const v6, 0x7f0c055e

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 288
    :cond_0
    invoke-virtual {v0}, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v6

    invoke-interface {p2, v6}, Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfile;->getNameResource(Landroid/bluetooth/BluetoothDevice;)I

    move-result v6

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 290
    .local v4, "profileName":Ljava/lang/String;
    const v6, 0x7f0c055b

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 291
    .local v5, "title":Ljava/lang/String;
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    .line 292
    const/4 v7, 0x0

    aput-object v4, v6, v7

    const/4 v7, 0x1

    aput-object v3, v6, v7

    .line 291
    const v7, 0x7f0c055c

    invoke-virtual {p1, v7, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 295
    .local v2, "message":Ljava/lang/String;
    new-instance v1, Lcom/android/exsettings/bluetooth/DeviceProfilesSettings$1;

    invoke-direct {v1, p0, v0, p2}, Lcom/android/exsettings/bluetooth/DeviceProfilesSettings$1;-><init>(Lcom/android/exsettings/bluetooth/DeviceProfilesSettings;Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfile;)V

    .line 313
    .local v1, "disconnectListener":Landroid/content/DialogInterface$OnClickListener;
    iget-object v6, p0, Lcom/android/exsettings/bluetooth/DeviceProfilesSettings;->mDisconnectDialog:Landroid/app/AlertDialog;

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v7

    .line 312
    invoke-static {p1, v6, v1, v5, v7}, Lcom/android/exsettings/bluetooth/Utils;->showDisconnectDialog(Landroid/content/Context;Landroid/app/AlertDialog;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/AlertDialog;

    move-result-object v6

    iput-object v6, p0, Lcom/android/exsettings/bluetooth/DeviceProfilesSettings;->mDisconnectDialog:Landroid/app/AlertDialog;

    .line 280
    return-void
.end method

.method private createProfilePreference(Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfile;)Landroid/widget/CheckBox;
    .locals 2
    .param p1, "profile"    # Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfile;

    .prologue
    .line 227
    new-instance v0, Landroid/widget/CheckBox;

    invoke-virtual {p0}, Lcom/android/exsettings/bluetooth/DeviceProfilesSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    .line 228
    .local v0, "pref":Landroid/widget/CheckBox;
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    .line 229
    iget-object v1, p0, Lcom/android/exsettings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfile;->getNameResource(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setText(I)V

    .line 230
    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 232
    invoke-direct {p0, v0, p1}, Lcom/android/exsettings/bluetooth/DeviceProfilesSettings;->refreshProfilePreference(Landroid/widget/CheckBox;Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfile;)V

    .line 234
    return-object v0
.end method

.method private findProfile(Ljava/lang/String;)Landroid/widget/CheckBox;
    .locals 1
    .param p1, "profile"    # Ljava/lang/String;

    .prologue
    .line 352
    iget-object v0, p0, Lcom/android/exsettings/bluetooth/DeviceProfilesSettings;->mProfileContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    return-object v0
.end method

.method private getProfileOf(Landroid/view/View;)Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfile;
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 380
    instance-of v2, p1, Landroid/widget/CheckBox;

    if-nez v2, :cond_0

    .line 381
    return-object v3

    .line 383
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 384
    .local v1, "key":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v3

    .line 387
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/android/exsettings/bluetooth/DeviceProfilesSettings;->mProfileManager:Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v2, v1}, Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfileManager;->getProfileByName(Ljava/lang/String;)Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfile;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 388
    :catch_0
    move-exception v0

    .line 389
    .local v0, "ignored":Ljava/lang/IllegalArgumentException;
    return-object v3
.end method

.method private onProfileClicked(Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfile;Landroid/widget/CheckBox;)V
    .locals 3
    .param p1, "profile"    # Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfile;
    .param p2, "profilePref"    # Landroid/widget/CheckBox;

    .prologue
    const/4 v2, 0x1

    .line 249
    iget-object v1, p0, Lcom/android/exsettings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 251
    .local v0, "device":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {p2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-nez v1, :cond_0

    .line 253
    invoke-virtual {p2, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 254
    iget-object v1, p0, Lcom/android/exsettings/bluetooth/DeviceProfilesSettings;->mManager:Lcom/android/exsettingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v1}, Lcom/android/exsettingslib/bluetooth/LocalBluetoothManager;->getForegroundActivity()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1, p1}, Lcom/android/exsettings/bluetooth/DeviceProfilesSettings;->askDisconnect(Landroid/content/Context;Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfile;)V

    .line 248
    :goto_0
    return-void

    .line 256
    :cond_0
    instance-of v1, p1, Lcom/android/exsettingslib/bluetooth/MapProfile;

    if-eqz v1, :cond_1

    .line 257
    iget-object v1, p0, Lcom/android/exsettings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1, v2}, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->setMessagePermissionChoice(I)V

    .line 259
    :cond_1
    instance-of v1, p1, Lcom/android/exsettingslib/bluetooth/PbapServerProfile;

    if-eqz v1, :cond_2

    .line 260
    iget-object v1, p0, Lcom/android/exsettings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1, v2}, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->setPhonebookPermissionChoice(I)V

    .line 261
    invoke-direct {p0, p2, p1}, Lcom/android/exsettings/bluetooth/DeviceProfilesSettings;->refreshProfilePreference(Landroid/widget/CheckBox;Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfile;)V

    .line 262
    return-void

    .line 264
    :cond_2
    invoke-interface {p1, v0}, Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfile;->isPreferred(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 266
    instance-of v1, p1, Lcom/android/exsettingslib/bluetooth/PanProfile;

    if-eqz v1, :cond_3

    .line 267
    iget-object v1, p0, Lcom/android/exsettings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1, p1}, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->connectProfile(Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfile;)V

    .line 275
    :goto_1
    invoke-direct {p0, p2, p1}, Lcom/android/exsettings/bluetooth/DeviceProfilesSettings;->refreshProfilePreference(Landroid/widget/CheckBox;Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfile;)V

    goto :goto_0

    .line 269
    :cond_3
    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfile;->setPreferred(Landroid/bluetooth/BluetoothDevice;Z)V

    goto :goto_1

    .line 272
    :cond_4
    invoke-interface {p1, v0, v2}, Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfile;->setPreferred(Landroid/bluetooth/BluetoothDevice;Z)V

    .line 273
    iget-object v1, p0, Lcom/android/exsettings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1, p1}, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->connectProfile(Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfile;)V

    goto :goto_1
.end method

.method private refresh()V
    .locals 3

    .prologue
    .line 322
    iget-object v1, p0, Lcom/android/exsettings/bluetooth/DeviceProfilesSettings;->mRootView:Landroid/view/View;

    const v2, 0x7f130036

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 323
    .local v0, "deviceNameField":Landroid/widget/EditText;
    if-eqz v0, :cond_0

    .line 324
    iget-object v1, p0, Lcom/android/exsettings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 327
    :cond_0
    invoke-direct {p0}, Lcom/android/exsettings/bluetooth/DeviceProfilesSettings;->refreshProfiles()V

    .line 321
    return-void
.end method

.method private refreshProfilePreference(Landroid/widget/CheckBox;Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfile;)V
    .locals 5
    .param p1, "profilePref"    # Landroid/widget/CheckBox;
    .param p2, "profile"    # Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfile;

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 357
    iget-object v1, p0, Lcom/android/exsettings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 360
    .local v0, "device":Landroid/bluetooth/BluetoothDevice;
    iget-object v1, p0, Lcom/android/exsettings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->isBusy()Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {p1, v1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 362
    instance-of v1, p2, Lcom/android/exsettingslib/bluetooth/MapProfile;

    if-eqz v1, :cond_2

    .line 363
    iget-object v1, p0, Lcom/android/exsettings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->getMessagePermissionChoice()I

    move-result v1

    if-ne v1, v3, :cond_1

    :goto_1
    invoke-virtual {p1, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 356
    :goto_2
    return-void

    :cond_0
    move v1, v3

    .line 360
    goto :goto_0

    :cond_1
    move v3, v2

    .line 363
    goto :goto_1

    .line 366
    :cond_2
    instance-of v1, p2, Lcom/android/exsettingslib/bluetooth/PbapServerProfile;

    if-eqz v1, :cond_4

    .line 367
    iget-object v1, p0, Lcom/android/exsettings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->getPhonebookPermissionChoice()I

    move-result v1

    if-ne v1, v3, :cond_3

    :goto_3
    invoke-virtual {p1, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_2

    :cond_3
    move v3, v2

    goto :goto_3

    .line 370
    :cond_4
    instance-of v1, p2, Lcom/android/exsettingslib/bluetooth/PanProfile;

    if-eqz v1, :cond_6

    .line 371
    invoke-interface {p2, v0}, Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfile;->getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    .line 372
    const/4 v4, 0x2

    .line 371
    if-ne v1, v4, :cond_5

    :goto_4
    invoke-virtual {p1, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_2

    :cond_5
    move v3, v2

    goto :goto_4

    .line 375
    :cond_6
    invoke-interface {p2, v0}, Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfile;->isPreferred(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_2
.end method

.method private refreshProfiles()V
    .locals 6

    .prologue
    .line 331
    iget-object v3, p0, Lcom/android/exsettings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v3}, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->getConnectableProfiles()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "profile$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfile;

    .line 332
    .local v0, "profile":Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfile;
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/exsettings/bluetooth/DeviceProfilesSettings;->findProfile(Ljava/lang/String;)Landroid/widget/CheckBox;

    move-result-object v2

    .line 333
    .local v2, "profilePref":Landroid/widget/CheckBox;
    if-nez v2, :cond_0

    .line 334
    invoke-direct {p0, v0}, Lcom/android/exsettings/bluetooth/DeviceProfilesSettings;->createProfilePreference(Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfile;)Landroid/widget/CheckBox;

    move-result-object v2

    .line 335
    iget-object v3, p0, Lcom/android/exsettings/bluetooth/DeviceProfilesSettings;->mProfileContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 337
    :cond_0
    invoke-direct {p0, v2, v0}, Lcom/android/exsettings/bluetooth/DeviceProfilesSettings;->refreshProfilePreference(Landroid/widget/CheckBox;Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfile;)V

    goto :goto_0

    .line 340
    .end local v0    # "profile":Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfile;
    .end local v2    # "profilePref":Landroid/widget/CheckBox;
    :cond_1
    iget-object v3, p0, Lcom/android/exsettings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v3}, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->getRemovedProfiles()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfile;

    .line 341
    .restart local v0    # "profile":Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfile;
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/exsettings/bluetooth/DeviceProfilesSettings;->findProfile(Ljava/lang/String;)Landroid/widget/CheckBox;

    move-result-object v2

    .line 342
    .restart local v2    # "profilePref":Landroid/widget/CheckBox;
    if-eqz v2, :cond_2

    .line 343
    const-string/jumbo v3, "DeviceProfilesSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Removing "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " from profile list"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    iget-object v3, p0, Lcom/android/exsettings/bluetooth/DeviceProfilesSettings;->mProfileContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_1

    .line 348
    .end local v0    # "profile":Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfile;
    .end local v2    # "profilePref":Landroid/widget/CheckBox;
    :cond_3
    invoke-direct {p0}, Lcom/android/exsettings/bluetooth/DeviceProfilesSettings;->showOrHideProfileGroup()V

    .line 330
    return-void
.end method

.method private showOrHideProfileGroup()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 206
    iget-object v1, p0, Lcom/android/exsettings/bluetooth/DeviceProfilesSettings;->mProfileContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 207
    .local v0, "numProfiles":I
    iget-boolean v1, p0, Lcom/android/exsettings/bluetooth/DeviceProfilesSettings;->mProfileGroupIsRemoved:Z

    if-nez v1, :cond_1

    if-nez v0, :cond_1

    .line 208
    iget-object v1, p0, Lcom/android/exsettings/bluetooth/DeviceProfilesSettings;->mProfileContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 209
    iget-object v1, p0, Lcom/android/exsettings/bluetooth/DeviceProfilesSettings;->mProfileLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 210
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/exsettings/bluetooth/DeviceProfilesSettings;->mProfileGroupIsRemoved:Z

    .line 205
    :cond_0
    :goto_0
    return-void

    .line 211
    :cond_1
    iget-boolean v1, p0, Lcom/android/exsettings/bluetooth/DeviceProfilesSettings;->mProfileGroupIsRemoved:Z

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 212
    iget-object v1, p0, Lcom/android/exsettings/bluetooth/DeviceProfilesSettings;->mProfileContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 213
    iget-object v1, p0, Lcom/android/exsettings/bluetooth/DeviceProfilesSettings;->mProfileLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 214
    iput-boolean v2, p0, Lcom/android/exsettings/bluetooth/DeviceProfilesSettings;->mProfileGroupIsRemoved:Z

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 115
    packed-switch p2, :pswitch_data_0

    .line 114
    :goto_0
    return-void

    .line 117
    :pswitch_0
    iget-object v0, p0, Lcom/android/exsettings/bluetooth/DeviceProfilesSettings;->mRootView:Landroid/view/View;

    const v1, 0x7f130036

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    .line 118
    .local v6, "deviceName":Landroid/widget/EditText;
    iget-object v0, p0, Lcom/android/exsettings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->setName(Ljava/lang/String;)V

    goto :goto_0

    .line 121
    .end local v6    # "deviceName":Landroid/widget/EditText;
    :pswitch_1
    iget-object v0, p0, Lcom/android/exsettings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->unpair()V

    .line 122
    invoke-virtual {p0}, Lcom/android/exsettings/bluetooth/DeviceProfilesSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 123
    const-class v1, Lcom/android/exsettings/bluetooth/BluetoothSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/exsettings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v2}, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    .line 124
    const v3, 0x7f0c06a3

    invoke-virtual {p0, v3}, Lcom/android/exsettings/bluetooth/DeviceProfilesSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 125
    const v4, 0x7f0200b0

    const/4 v5, 0x0

    .line 122
    invoke-static/range {v0 .. v5}, Lcom/android/exsettings/bluetooth/Utils;->updateSearchIndex(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    goto :goto_0

    .line 115
    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 239
    instance-of v1, p1, Landroid/widget/CheckBox;

    if-eqz v1, :cond_0

    .line 240
    invoke-direct {p0, p1}, Lcom/android/exsettings/bluetooth/DeviceProfilesSettings;->getProfileOf(Landroid/view/View;)Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfile;

    move-result-object v0

    .line 241
    .local v0, "prof":Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfile;
    if-eqz v0, :cond_1

    .line 242
    check-cast p1, Landroid/widget/CheckBox;

    .end local p1    # "v":Landroid/view/View;
    invoke-direct {p0, v0, p1}, Lcom/android/exsettings/bluetooth/DeviceProfilesSettings;->onProfileClicked(Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfile;Landroid/widget/CheckBox;)V

    .line 238
    .end local v0    # "prof":Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfile;
    :cond_0
    :goto_0
    return-void

    .line 244
    .restart local v0    # "prof":Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfile;
    .restart local p1    # "v":Landroid/view/View;
    :cond_1
    const-string/jumbo v1, "DeviceProfilesSettings"

    const-string/jumbo v2, "Error: Can\'t get the profile for the preference"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 81
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 83
    invoke-virtual {p0}, Lcom/android/exsettings/bluetooth/DeviceProfilesSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/exsettings/bluetooth/Utils;->getLocalBtManager(Landroid/content/Context;)Lcom/android/exsettingslib/bluetooth/LocalBluetoothManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/exsettings/bluetooth/DeviceProfilesSettings;->mManager:Lcom/android/exsettingslib/bluetooth/LocalBluetoothManager;

    .line 84
    iget-object v3, p0, Lcom/android/exsettings/bluetooth/DeviceProfilesSettings;->mManager:Lcom/android/exsettingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v3}, Lcom/android/exsettingslib/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/exsettingslib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v1

    .line 86
    .local v1, "deviceManager":Lcom/android/exsettingslib/bluetooth/CachedBluetoothDeviceManager;
    invoke-virtual {p0}, Lcom/android/exsettings/bluetooth/DeviceProfilesSettings;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "device_address"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 87
    .local v0, "address":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/exsettings/bluetooth/DeviceProfilesSettings;->mManager:Lcom/android/exsettingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v3}, Lcom/android/exsettingslib/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/exsettingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/exsettingslib/bluetooth/LocalBluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    .line 89
    .local v2, "remoteDevice":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v1, v2}, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v3

    iput-object v3, p0, Lcom/android/exsettings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;

    .line 90
    iget-object v3, p0, Lcom/android/exsettings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;

    if-nez v3, :cond_0

    .line 91
    iget-object v3, p0, Lcom/android/exsettings/bluetooth/DeviceProfilesSettings;->mManager:Lcom/android/exsettingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v3}, Lcom/android/exsettingslib/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/exsettingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object v3

    .line 92
    iget-object v4, p0, Lcom/android/exsettings/bluetooth/DeviceProfilesSettings;->mManager:Lcom/android/exsettingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v4}, Lcom/android/exsettingslib/bluetooth/LocalBluetoothManager;->getProfileManager()Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfileManager;

    move-result-object v4

    .line 91
    invoke-virtual {v1, v3, v4, v2}, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDeviceManager;->addDevice(Lcom/android/exsettingslib/bluetooth/LocalBluetoothAdapter;Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfileManager;Landroid/bluetooth/BluetoothDevice;)Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v3

    iput-object v3, p0, Lcom/android/exsettings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;

    .line 94
    :cond_0
    iget-object v3, p0, Lcom/android/exsettings/bluetooth/DeviceProfilesSettings;->mManager:Lcom/android/exsettingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v3}, Lcom/android/exsettingslib/bluetooth/LocalBluetoothManager;->getProfileManager()Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfileManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/exsettings/bluetooth/DeviceProfilesSettings;->mProfileManager:Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfileManager;

    .line 80
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 99
    invoke-virtual {p0}, Lcom/android/exsettings/bluetooth/DeviceProfilesSettings;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040057

    .line 100
    const/4 v3, 0x0

    .line 99
    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/exsettings/bluetooth/DeviceProfilesSettings;->mRootView:Landroid/view/View;

    .line 101
    iget-object v1, p0, Lcom/android/exsettings/bluetooth/DeviceProfilesSettings;->mRootView:Landroid/view/View;

    const v2, 0x7f1300c7

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/exsettings/bluetooth/DeviceProfilesSettings;->mProfileContainer:Landroid/view/ViewGroup;

    .line 102
    iget-object v1, p0, Lcom/android/exsettings/bluetooth/DeviceProfilesSettings;->mRootView:Landroid/view/View;

    const v2, 0x7f1300c6

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/exsettings/bluetooth/DeviceProfilesSettings;->mProfileLabel:Landroid/widget/TextView;

    .line 103
    iget-object v1, p0, Lcom/android/exsettings/bluetooth/DeviceProfilesSettings;->mRootView:Landroid/view/View;

    const v2, 0x7f130036

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 104
    .local v0, "deviceName":Landroid/widget/EditText;
    iget-object v1, p0, Lcom/android/exsettings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v0, v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 105
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/exsettings/bluetooth/DeviceProfilesSettings;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 106
    iget-object v2, p0, Lcom/android/exsettings/bluetooth/DeviceProfilesSettings;->mRootView:Landroid/view/View;

    .line 105
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 107
    const v2, 0x7f0c05d8

    .line 105
    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 108
    const v2, 0x7f0c05d7

    .line 105
    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 109
    const v2, 0x7f0c06c1

    .line 105
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 132
    invoke-super {p0}, Landroid/app/DialogFragment;->onDestroy()V

    .line 133
    iget-object v0, p0, Lcom/android/exsettings/bluetooth/DeviceProfilesSettings;->mDisconnectDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/android/exsettings/bluetooth/DeviceProfilesSettings;->mDisconnectDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 135
    iput-object v1, p0, Lcom/android/exsettings/bluetooth/DeviceProfilesSettings;->mDisconnectDialog:Landroid/app/AlertDialog;

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/android/exsettings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;

    if-eqz v0, :cond_1

    .line 138
    iget-object v0, p0, Lcom/android/exsettings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0, p0}, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->unregisterCallback(Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice$Callback;)V

    .line 131
    :cond_1
    return-void
.end method

.method public onDeviceAttributesChanged()V
    .locals 0

    .prologue
    .line 318
    invoke-direct {p0}, Lcom/android/exsettings/bluetooth/DeviceProfilesSettings;->refresh()V

    .line 317
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 165
    invoke-super {p0}, Landroid/app/DialogFragment;->onPause()V

    .line 167
    iget-object v0, p0, Lcom/android/exsettings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/android/exsettings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0, p0}, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->unregisterCallback(Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice$Callback;)V

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/android/exsettings/bluetooth/DeviceProfilesSettings;->mManager:Lcom/android/exsettingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0, v1}, Lcom/android/exsettingslib/bluetooth/LocalBluetoothManager;->setForegroundActivity(Landroid/content/Context;)V

    .line 164
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 149
    invoke-super {p0}, Landroid/app/DialogFragment;->onResume()V

    .line 151
    iget-object v0, p0, Lcom/android/exsettings/bluetooth/DeviceProfilesSettings;->mManager:Lcom/android/exsettingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {p0}, Lcom/android/exsettings/bluetooth/DeviceProfilesSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/exsettingslib/bluetooth/LocalBluetoothManager;->setForegroundActivity(Landroid/content/Context;)V

    .line 152
    iget-object v0, p0, Lcom/android/exsettings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;

    if-eqz v0, :cond_1

    .line 153
    iget-object v0, p0, Lcom/android/exsettings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0, p0}, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->registerCallback(Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice$Callback;)V

    .line 154
    iget-object v0, p0, Lcom/android/exsettings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 155
    invoke-virtual {p0}, Lcom/android/exsettings/bluetooth/DeviceProfilesSettings;->dismiss()V

    .line 156
    return-void

    .line 158
    :cond_0
    invoke-direct {p0}, Lcom/android/exsettings/bluetooth/DeviceProfilesSettings;->addPreferencesForProfiles()V

    .line 159
    invoke-direct {p0}, Lcom/android/exsettings/bluetooth/DeviceProfilesSettings;->refresh()V

    .line 148
    :cond_1
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 144
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 143
    return-void
.end method
