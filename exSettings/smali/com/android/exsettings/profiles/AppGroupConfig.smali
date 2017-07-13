.class public Lcom/android/exsettings/profiles/AppGroupConfig;
.super Lcom/android/exsettings/SettingsPreferenceFragment;
.source "AppGroupConfig.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private mAppAdapter:Lcom/android/exsettings/cyanogenmod/PackageListAdapter;

.field private mListView:Landroid/widget/ListView;

.field private mNamePreference:Lcom/android/exsettings/profiles/NamePreference;

.field private mNotificationGroup:Landroid/app/NotificationGroup;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field mPackageToDelete:Ljava/lang/String;

.field private mProfileManager:Lcyanogenmod/app/ProfileManager;


# direct methods
.method static synthetic -get0(Lcom/android/exsettings/profiles/AppGroupConfig;)Landroid/app/NotificationGroup;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/profiles/AppGroupConfig;->mNotificationGroup:Landroid/app/NotificationGroup;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/exsettings/profiles/AppGroupConfig;)Lcyanogenmod/app/ProfileManager;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/profiles/AppGroupConfig;->mProfileManager:Lcyanogenmod/app/ProfileManager;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/exsettings/profiles/AppGroupConfig;Landroid/app/NotificationGroup;)Landroid/app/NotificationGroup;
    .locals 0

    iput-object p1, p0, Lcom/android/exsettings/profiles/AppGroupConfig;->mNotificationGroup:Landroid/app/NotificationGroup;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/exsettings/profiles/AppGroupConfig;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/exsettings/profiles/AppGroupConfig;->doDelete()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/exsettings/profiles/AppGroupConfig;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/exsettings/profiles/AppGroupConfig;->updatePackages()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    const-string/jumbo v0, "AppGroupConfig"

    sput-object v0, Lcom/android/exsettings/profiles/AppGroupConfig;->TAG:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private addNewApp()V
    .locals 1

    .prologue
    .line 242
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/exsettings/profiles/AppGroupConfig;->showDialog(I)V

    .line 241
    return-void
.end method

.method private deleteAppFromGroup(Lcom/android/exsettings/cyanogenmod/PackageListAdapter$PackageItem;)V
    .locals 2
    .param p1, "selectedGroup"    # Lcom/android/exsettings/cyanogenmod/PackageListAdapter$PackageItem;

    .prologue
    .line 196
    if-eqz p1, :cond_0

    .line 197
    iget-object v0, p0, Lcom/android/exsettings/profiles/AppGroupConfig;->mNotificationGroup:Landroid/app/NotificationGroup;

    iget-object v1, p1, Lcom/android/exsettings/cyanogenmod/PackageListAdapter$PackageItem;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/NotificationGroup;->removePackage(Ljava/lang/String;)V

    .line 198
    invoke-direct {p0}, Lcom/android/exsettings/profiles/AppGroupConfig;->updatePackages()V

    .line 195
    :cond_0
    return-void
.end method

.method private deleteNotificationGroup()V
    .locals 1

    .prologue
    .line 252
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/exsettings/profiles/AppGroupConfig;->showDialog(I)V

    .line 251
    return-void
.end method

.method private doDelete()V
    .locals 2

    .prologue
    .line 325
    iget-object v0, p0, Lcom/android/exsettings/profiles/AppGroupConfig;->mNotificationGroup:Landroid/app/NotificationGroup;

    iget-object v1, p0, Lcom/android/exsettings/profiles/AppGroupConfig;->mPackageToDelete:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/NotificationGroup;->removePackage(Ljava/lang/String;)V

    .line 326
    invoke-direct {p0}, Lcom/android/exsettings/profiles/AppGroupConfig;->updatePackages()V

    .line 324
    return-void
.end method

.method private removeApp(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 247
    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/profiles/AppGroupConfig;->mPackageToDelete:Ljava/lang/String;

    .line 248
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/exsettings/profiles/AppGroupConfig;->showDialog(I)V

    .line 246
    return-void
.end method

.method private updatePackages()V
    .locals 13

    .prologue
    const/4 v8, 0x0

    .line 144
    invoke-virtual {p0}, Lcom/android/exsettings/profiles/AppGroupConfig;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    .line 147
    .local v7, "prefSet":Landroid/preference/PreferenceScreen;
    const-string/jumbo v9, "general_section"

    invoke-virtual {v7, v9}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceGroup;

    .line 148
    .local v2, "generalPrefs":Landroid/preference/PreferenceGroup;
    if-eqz v2, :cond_0

    .line 149
    invoke-virtual {v2}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 152
    new-instance v9, Lcom/android/exsettings/profiles/NamePreference;

    invoke-virtual {p0}, Lcom/android/exsettings/profiles/AppGroupConfig;->getActivity()Landroid/app/Activity;

    move-result-object v10

    iget-object v11, p0, Lcom/android/exsettings/profiles/AppGroupConfig;->mNotificationGroup:Landroid/app/NotificationGroup;

    invoke-virtual {v11}, Landroid/app/NotificationGroup;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lcom/android/exsettings/profiles/NamePreference;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v9, p0, Lcom/android/exsettings/profiles/AppGroupConfig;->mNamePreference:Lcom/android/exsettings/profiles/NamePreference;

    .line 153
    iget-object v9, p0, Lcom/android/exsettings/profiles/AppGroupConfig;->mNamePreference:Lcom/android/exsettings/profiles/NamePreference;

    invoke-virtual {v9, p0}, Lcom/android/exsettings/profiles/NamePreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 154
    iget-object v9, p0, Lcom/android/exsettings/profiles/AppGroupConfig;->mNamePreference:Lcom/android/exsettings/profiles/NamePreference;

    invoke-virtual {v2, v9}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 157
    :cond_0
    const-string/jumbo v9, "applications_list"

    invoke-virtual {v7, v9}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    .line 158
    .local v0, "applicationsList":Landroid/preference/PreferenceGroup;
    if-eqz v0, :cond_1

    .line 159
    invoke-virtual {v0}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 160
    iget-object v9, p0, Lcom/android/exsettings/profiles/AppGroupConfig;->mNotificationGroup:Landroid/app/NotificationGroup;

    invoke-virtual {v9}, Landroid/app/NotificationGroup;->getPackages()[Ljava/lang/String;

    move-result-object v9

    array-length v10, v9

    :goto_0
    if-ge v8, v10, :cond_1

    aget-object v5, v9, v8

    .line 161
    .local v5, "pkg":Ljava/lang/String;
    new-instance v6, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/exsettings/profiles/AppGroupConfig;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-direct {v6, v11}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 163
    .local v6, "pref":Landroid/preference/Preference;
    :try_start_0
    iget-object v11, p0, Lcom/android/exsettings/profiles/AppGroupConfig;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v12, 0x0

    invoke-virtual {v11, v5, v12}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 164
    .local v3, "group":Landroid/content/pm/PackageInfo;
    iget-object v11, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v11}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 165
    iget-object v11, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v12, p0, Lcom/android/exsettings/profiles/AppGroupConfig;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v11, v12}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v6, v11}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 166
    iget-object v11, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v12, p0, Lcom/android/exsettings/profiles/AppGroupConfig;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v11, v12}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 167
    .local v4, "icon":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v6, v4}, Landroid/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 168
    const/4 v11, 0x1

    invoke-virtual {v6, v11}, Landroid/preference/Preference;->setSelectable(Z)V

    .line 169
    const/4 v11, 0x0

    invoke-virtual {v6, v11}, Landroid/preference/Preference;->setPersistent(Z)V

    .line 170
    invoke-virtual {v0, v6}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 160
    .end local v3    # "group":Landroid/content/pm/PackageInfo;
    .end local v4    # "icon":Landroid/graphics/drawable/Drawable;
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 171
    :catch_0
    move-exception v1

    .line 172
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 143
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v5    # "pkg":Ljava/lang/String;
    .end local v6    # "pref":Landroid/preference/Preference;
    :cond_1
    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 204
    const v0, -0x7ffffffc

    return v0
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 185
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 186
    .local v0, "aMenuInfo":Landroid/widget/AdapterView$AdapterContextMenuInfo;
    iget-object v2, p0, Lcom/android/exsettings/profiles/AppGroupConfig;->mListView:Landroid/widget/ListView;

    iget v3, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/exsettings/cyanogenmod/PackageListAdapter$PackageItem;

    .line 187
    .local v1, "selectedGroup":Lcom/android/exsettings/cyanogenmod/PackageListAdapter$PackageItem;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 192
    invoke-super {p0, p1}, Lcom/android/exsettings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    return v2

    .line 189
    :pswitch_0
    invoke-direct {p0, v1}, Lcom/android/exsettings/profiles/AppGroupConfig;->deleteAppFromGroup(Lcom/android/exsettings/cyanogenmod/PackageListAdapter$PackageItem;)V

    .line 190
    const/4 v2, 0x1

    return v2

    .line 187
    nop

    :pswitch_data_0
    .packed-switch 0x7f0c00e9
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 85
    invoke-super {p0, p1}, Lcom/android/exsettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 87
    if-eqz p1, :cond_0

    .line 88
    const-string/jumbo v1, "package_delete"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/exsettings/profiles/AppGroupConfig;->mPackageToDelete:Ljava/lang/String;

    .line 91
    :cond_0
    invoke-virtual {p0}, Lcom/android/exsettings/profiles/AppGroupConfig;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcyanogenmod/app/ProfileManager;->getInstance(Landroid/content/Context;)Lcyanogenmod/app/ProfileManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/exsettings/profiles/AppGroupConfig;->mProfileManager:Lcyanogenmod/app/ProfileManager;

    .line 92
    const v1, 0x7f080010

    invoke-virtual {p0, v1}, Lcom/android/exsettings/profiles/AppGroupConfig;->addPreferencesFromResource(I)V

    .line 94
    invoke-virtual {p0}, Lcom/android/exsettings/profiles/AppGroupConfig;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 95
    .local v0, "args":Landroid/os/Bundle;
    if-eqz v0, :cond_1

    .line 96
    const-string/jumbo v1, "NotificationGroup"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationGroup;

    iput-object v1, p0, Lcom/android/exsettings/profiles/AppGroupConfig;->mNotificationGroup:Landroid/app/NotificationGroup;

    .line 97
    invoke-virtual {p0}, Lcom/android/exsettings/profiles/AppGroupConfig;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/exsettings/profiles/AppGroupConfig;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 98
    new-instance v1, Lcom/android/exsettings/cyanogenmod/PackageListAdapter;

    invoke-virtual {p0}, Lcom/android/exsettings/profiles/AppGroupConfig;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/exsettings/cyanogenmod/PackageListAdapter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/exsettings/profiles/AppGroupConfig;->mAppAdapter:Lcom/android/exsettings/cyanogenmod/PackageListAdapter;

    .line 100
    invoke-direct {p0}, Lcom/android/exsettings/profiles/AppGroupConfig;->updatePackages()V

    .line 102
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/exsettings/profiles/AppGroupConfig;->setHasOptionsMenu(Z)V

    .line 84
    :cond_1
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 2
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    const v1, 0x7f0c00e9

    const/4 v0, 0x0

    .line 180
    invoke-interface {p1, v0, v1, v0, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 179
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 8
    .param p1, "id"    # I

    .prologue
    const v7, 0x7f0c00e9

    const v6, 0x1040013

    const v5, 0x1040009

    const v4, 0x1010355

    .line 257
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/exsettings/profiles/AppGroupConfig;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 259
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    packed-switch p1, :pswitch_data_0

    .line 317
    const/4 v1, 0x0

    .line 319
    :goto_0
    return-object v1

    .line 261
    :pswitch_0
    new-instance v2, Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/android/exsettings/profiles/AppGroupConfig;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 262
    .local v2, "list":Landroid/widget/ListView;
    iget-object v3, p0, Lcom/android/exsettings/profiles/AppGroupConfig;->mAppAdapter:Lcom/android/exsettings/cyanogenmod/PackageListAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 263
    const v3, 0x7f0c00c7

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 264
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 265
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 266
    .local v1, "dialog":Landroid/app/Dialog;
    new-instance v3, Lcom/android/exsettings/profiles/AppGroupConfig$1;

    invoke-direct {v3, p0, v1}, Lcom/android/exsettings/profiles/AppGroupConfig$1;-><init>(Lcom/android/exsettings/profiles/AppGroupConfig;Landroid/app/Dialog;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_0

    .line 277
    .end local v1    # "dialog":Landroid/app/Dialog;
    .end local v2    # "list":Landroid/widget/ListView;
    :pswitch_1
    const v3, 0x7f0c00a8

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 278
    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 279
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    .line 281
    new-instance v3, Lcom/android/exsettings/profiles/AppGroupConfig$2;

    invoke-direct {v3, p0}, Lcom/android/exsettings/profiles/AppGroupConfig$2;-><init>(Lcom/android/exsettings/profiles/AppGroupConfig;)V

    .line 280
    invoke-virtual {v0, v6, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 288
    new-instance v3, Lcom/android/exsettings/profiles/AppGroupConfig$3;

    invoke-direct {v3, p0}, Lcom/android/exsettings/profiles/AppGroupConfig$3;-><init>(Lcom/android/exsettings/profiles/AppGroupConfig;)V

    .line 287
    invoke-virtual {v0, v5, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 293
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .restart local v1    # "dialog":Landroid/app/Dialog;
    goto :goto_0

    .line 296
    .end local v1    # "dialog":Landroid/app/Dialog;
    :pswitch_2
    const v3, 0x7f0c00c4

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 297
    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 298
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    .line 300
    new-instance v3, Lcom/android/exsettings/profiles/AppGroupConfig$4;

    invoke-direct {v3, p0}, Lcom/android/exsettings/profiles/AppGroupConfig$4;-><init>(Lcom/android/exsettings/profiles/AppGroupConfig;)V

    .line 299
    invoke-virtual {v0, v6, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 309
    new-instance v3, Lcom/android/exsettings/profiles/AppGroupConfig$5;

    invoke-direct {v3, p0}, Lcom/android/exsettings/profiles/AppGroupConfig$5;-><init>(Lcom/android/exsettings/profiles/AppGroupConfig;)V

    .line 308
    invoke-virtual {v0, v5, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 314
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .restart local v1    # "dialog":Landroid/app/Dialog;
    goto :goto_0

    .line 259
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 6
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v5, 0x5

    const/4 v4, 0x0

    .line 108
    const/4 v2, 0x1

    const v3, 0x7f0c00e9

    invoke-interface {p1, v4, v2, v4, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    .line 109
    const v3, 0x7f02008c

    .line 108
    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 110
    .local v1, "delete":Landroid/view/MenuItem;
    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 113
    const/4 v2, 0x2

    const v3, 0x7f0c0088

    invoke-interface {p1, v4, v2, v4, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    .line 114
    const v3, 0x7f020084

    .line 113
    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 115
    const/16 v3, 0x61

    .line 113
    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v0

    .line 116
    .local v0, "addApplication":Landroid/view/MenuItem;
    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 107
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 122
    invoke-super {p0, p1, p2, p3}, Lcom/android/exsettings/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v1, 0x1

    .line 127
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 135
    const/4 v0, 0x0

    return v0

    .line 129
    :pswitch_0
    invoke-direct {p0}, Lcom/android/exsettings/profiles/AppGroupConfig;->deleteNotificationGroup()V

    .line 130
    return v1

    .line 132
    :pswitch_1
    invoke-direct {p0}, Lcom/android/exsettings/profiles/AppGroupConfig;->addNewApp()V

    .line 133
    return v1

    .line 127
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 209
    iget-object v0, p0, Lcom/android/exsettings/profiles/AppGroupConfig;->mNotificationGroup:Landroid/app/NotificationGroup;

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/android/exsettings/profiles/AppGroupConfig;->mProfileManager:Lcyanogenmod/app/ProfileManager;

    iget-object v1, p0, Lcom/android/exsettings/profiles/AppGroupConfig;->mNotificationGroup:Landroid/app/NotificationGroup;

    invoke-virtual {v0, v1}, Lcyanogenmod/app/ProfileManager;->addNotificationGroup(Landroid/app/NotificationGroup;)V

    .line 212
    :cond_0
    invoke-super {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;->onPause()V

    .line 208
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x1

    .line 217
    iget-object v1, p0, Lcom/android/exsettings/profiles/AppGroupConfig;->mNamePreference:Lcom/android/exsettings/profiles/NamePreference;

    if-ne p1, v1, :cond_0

    .line 218
    iget-object v1, p0, Lcom/android/exsettings/profiles/AppGroupConfig;->mNamePreference:Lcom/android/exsettings/profiles/NamePreference;

    invoke-virtual {v1}, Lcom/android/exsettings/profiles/NamePreference;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    .line 219
    .local v0, "name":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/exsettings/profiles/AppGroupConfig;->mNotificationGroup:Landroid/app/NotificationGroup;

    invoke-virtual {v1}, Landroid/app/NotificationGroup;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 220
    iget-object v1, p0, Lcom/android/exsettings/profiles/AppGroupConfig;->mProfileManager:Lcyanogenmod/app/ProfileManager;

    invoke-virtual {v1, v0}, Lcyanogenmod/app/ProfileManager;->notificationGroupExists(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 221
    iget-object v1, p0, Lcom/android/exsettings/profiles/AppGroupConfig;->mNotificationGroup:Landroid/app/NotificationGroup;

    invoke-virtual {v1, v0}, Landroid/app/NotificationGroup;->setName(Ljava/lang/String;)V

    .line 228
    .end local v0    # "name":Ljava/lang/String;
    :cond_0
    :goto_0
    return v3

    .line 223
    .restart local v0    # "name":Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/android/exsettings/profiles/AppGroupConfig;->mNamePreference:Lcom/android/exsettings/profiles/NamePreference;

    iget-object v2, p0, Lcom/android/exsettings/profiles/AppGroupConfig;->mNotificationGroup:Landroid/app/NotificationGroup;

    invoke-virtual {v2}, Landroid/app/NotificationGroup;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/exsettings/profiles/NamePreference;->setName(Ljava/lang/String;)V

    .line 224
    invoke-virtual {p0}, Lcom/android/exsettings/profiles/AppGroupConfig;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0c00a4

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 2
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 233
    instance-of v1, p2, Landroid/preference/Preference;

    if-eqz v1, :cond_0

    .line 234
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 235
    .local v0, "deleteItem":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/android/exsettings/profiles/AppGroupConfig;->removeApp(Ljava/lang/String;)V

    .line 236
    const/4 v1, 0x1

    return v1

    .line 238
    .end local v0    # "deleteItem":Ljava/lang/String;
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/exsettings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    return v1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Bundle;

    .prologue
    .line 331
    invoke-super {p0, p1}, Lcom/android/exsettings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 332
    const-string/jumbo v0, "package_delete"

    iget-object v1, p0, Lcom/android/exsettings/profiles/AppGroupConfig;->mPackageToDelete:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    return-void
.end method
