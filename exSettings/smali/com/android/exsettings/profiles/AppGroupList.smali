.class public Lcom/android/exsettings/profiles/AppGroupList;
.super Lcom/android/exsettings/SettingsPreferenceFragment;
.source "AppGroupList.java"


# instance fields
.field private mFab:Landroid/view/View;

.field private mProfileManager:Lcyanogenmod/app/ProfileManager;


# direct methods
.method static synthetic -get0(Lcom/android/exsettings/profiles/AppGroupList;)Lcyanogenmod/app/ProfileManager;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/profiles/AppGroupList;->mProfileManager:Lcyanogenmod/app/ProfileManager;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/exsettings/profiles/AppGroupList;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/exsettings/profiles/AppGroupList;->addAppGroup()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private addAppGroup()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 123
    invoke-virtual {p0}, Lcom/android/exsettings/profiles/AppGroupList;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    .line 124
    .local v4, "inflater":Landroid/view/LayoutInflater;
    const v6, 0x7f0400e6

    invoke-virtual {v4, v6, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 125
    .local v1, "content":Landroid/view/View;
    const v6, 0x7f1301c1

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 126
    .local v5, "prompt":Landroid/widget/TextView;
    const v6, 0x7f130036

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 128
    .local v3, "entry":Landroid/widget/EditText;
    const v6, 0x7f0c00c5

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 130
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/exsettings/profiles/AppGroupList;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v0, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 131
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v6, 0x7f0c00c3

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 132
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 134
    new-instance v6, Lcom/android/exsettings/profiles/AppGroupList$2;

    invoke-direct {v6, p0, v3}, Lcom/android/exsettings/profiles/AppGroupList$2;-><init>(Lcom/android/exsettings/profiles/AppGroupList;Landroid/widget/EditText;)V

    const v7, 0x104000a

    invoke-virtual {v0, v7, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 149
    const/high16 v6, 0x1040000

    invoke-virtual {v0, v6, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 151
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 152
    .local v2, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 122
    return-void
.end method

.method private editGroup(Landroid/app/NotificationGroup;)V
    .locals 6
    .param p1, "group"    # Landroid/app/NotificationGroup;

    .prologue
    .line 156
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 157
    .local v5, "args":Landroid/os/Bundle;
    const-string/jumbo v0, "NotificationGroup"

    invoke-virtual {v5, v0, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 159
    const-class v0, Lcom/android/exsettings/profiles/AppGroupConfig;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0c00b5

    .line 160
    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p0

    .line 159
    invoke-virtual/range {v0 .. v5}, Lcom/android/exsettings/profiles/AppGroupList;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    .line 155
    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 66
    const v0, -0x7ffffffb

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 58
    invoke-super {p0, p1}, Lcom/android/exsettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 60
    const v0, 0x7f08000f

    invoke-virtual {p0, v0}, Lcom/android/exsettings/profiles/AppGroupList;->addPreferencesFromResource(I)V

    .line 61
    invoke-virtual {p0}, Lcom/android/exsettings/profiles/AppGroupList;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcyanogenmod/app/ProfileManager;->getInstance(Landroid/content/Context;)Lcyanogenmod/app/ProfileManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/profiles/AppGroupList;->mProfileManager:Lcyanogenmod/app/ProfileManager;

    .line 57
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 83
    const v0, 0x7f0400c1

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 3
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 114
    instance-of v1, p2, Landroid/preference/PreferenceScreen;

    if-eqz v1, :cond_0

    .line 115
    iget-object v1, p0, Lcom/android/exsettings/profiles/AppGroupList;->mProfileManager:Lcyanogenmod/app/ProfileManager;

    .line 116
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v2

    .line 115
    invoke-virtual {v1, v2}, Lcyanogenmod/app/ProfileManager;->getNotificationGroup(Ljava/util/UUID;)Landroid/app/NotificationGroup;

    move-result-object v0

    .line 117
    .local v0, "group":Landroid/app/NotificationGroup;
    invoke-direct {p0, v0}, Lcom/android/exsettings/profiles/AppGroupList;->editGroup(Landroid/app/NotificationGroup;)V

    .line 119
    .end local v0    # "group":Landroid/app/NotificationGroup;
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/exsettings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    return v1
.end method

.method public onResume()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 71
    invoke-super {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;->onResume()V

    .line 72
    invoke-virtual {p0}, Lcom/android/exsettings/profiles/AppGroupList;->refreshList()V

    .line 75
    invoke-virtual {p0}, Lcom/android/exsettings/profiles/AppGroupList;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lorg/cyanogenmod/internal/util/ScreenType;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    invoke-virtual {p0}, Lcom/android/exsettings/profiles/AppGroupList;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/ListView;->setPadding(IIII)V

    .line 70
    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 88
    invoke-super {p0, p1, p2}, Lcom/android/exsettings/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 89
    const v0, 0x7f130112

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/profiles/AppGroupList;->mFab:Landroid/view/View;

    .line 90
    iget-object v0, p0, Lcom/android/exsettings/profiles/AppGroupList;->mFab:Landroid/view/View;

    new-instance v1, Lcom/android/exsettings/profiles/AppGroupList$1;

    invoke-direct {v1, p0}, Lcom/android/exsettings/profiles/AppGroupList$1;-><init>(Lcom/android/exsettings/profiles/AppGroupList;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    return-void
.end method

.method public refreshList()V
    .locals 9

    .prologue
    const/4 v4, 0x0

    .line 99
    invoke-virtual {p0}, Lcom/android/exsettings/profiles/AppGroupList;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 100
    .local v0, "appgroupList":Landroid/preference/PreferenceScreen;
    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 103
    iget-object v3, p0, Lcom/android/exsettings/profiles/AppGroupList;->mProfileManager:Lcyanogenmod/app/ProfileManager;

    invoke-virtual {v3}, Lcyanogenmod/app/ProfileManager;->getNotificationGroups()[Landroid/app/NotificationGroup;

    move-result-object v5

    array-length v6, v5

    move v3, v4

    :goto_0
    if-ge v3, v6, :cond_0

    aget-object v1, v5, v3

    .line 104
    .local v1, "group":Landroid/app/NotificationGroup;
    new-instance v2, Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/android/exsettings/profiles/AppGroupList;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const/4 v8, 0x0

    invoke-direct {v2, v7, v8}, Landroid/preference/PreferenceScreen;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 105
    .local v2, "pref":Landroid/preference/PreferenceScreen;
    invoke-virtual {v1}, Landroid/app/NotificationGroup;->getUuid()Ljava/util/UUID;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/preference/PreferenceScreen;->setKey(Ljava/lang/String;)V

    .line 106
    invoke-virtual {v1}, Landroid/app/NotificationGroup;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/preference/PreferenceScreen;->setTitle(Ljava/lang/CharSequence;)V

    .line 107
    invoke-virtual {v2, v4}, Landroid/preference/PreferenceScreen;->setPersistent(Z)V

    .line 108
    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 103
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 98
    .end local v1    # "group":Landroid/app/NotificationGroup;
    .end local v2    # "pref":Landroid/preference/PreferenceScreen;
    :cond_0
    return-void
.end method
