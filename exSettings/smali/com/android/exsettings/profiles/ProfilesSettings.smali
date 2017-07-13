.class public Lcom/android/exsettings/profiles/ProfilesSettings;
.super Lcom/android/exsettings/SettingsPreferenceFragment;
.source "ProfilesSettings.java"

# interfaces
.implements Lcom/android/exsettings/cyanogenmod/CMBaseSystemSettingSwitchBar$SwitchBarChangeCallback;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mAddProfileFab:Landroid/view/View;

.field mContainer:Landroid/view/ViewGroup;

.field private mEnabled:Z

.field private final mFilter:Landroid/content/IntentFilter;

.field private mProfileEnabler:Lcom/android/exsettings/cyanogenmod/CMBaseSystemSettingSwitchBar;

.field private mProfileManager:Lcyanogenmod/app/ProfileManager;

.field private final mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static synthetic -get0(Lcom/android/exsettings/profiles/ProfilesSettings;)Lcyanogenmod/app/ProfileManager;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/profiles/ProfilesSettings;->mProfileManager:Lcyanogenmod/app/ProfileManager;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/exsettings/profiles/ProfilesSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/exsettings/profiles/ProfilesSettings;->addProfile()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/exsettings/profiles/ProfilesSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/exsettings/profiles/ProfilesSettings;->updateProfilesEnabledState()V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;-><init>()V

    .line 79
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/exsettings/profiles/ProfilesSettings;->mFilter:Landroid/content/IntentFilter;

    .line 80
    iget-object v0, p0, Lcom/android/exsettings/profiles/ProfilesSettings;->mFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "cyanogenmod.platform.app.profiles.PROFILES_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 82
    new-instance v0, Lcom/android/exsettings/profiles/ProfilesSettings$1;

    invoke-direct {v0, p0}, Lcom/android/exsettings/profiles/ProfilesSettings$1;-><init>(Lcom/android/exsettings/profiles/ProfilesSettings;)V

    iput-object v0, p0, Lcom/android/exsettings/profiles/ProfilesSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 92
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/exsettings/profiles/ProfilesSettings;->setHasOptionsMenu(Z)V

    .line 78
    return-void
.end method

.method private addProfile()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 216
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 217
    .local v2, "args":Landroid/os/Bundle;
    const-string/jumbo v1, "new_profile_mode"

    const/4 v4, 0x1

    invoke-virtual {v2, v1, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 218
    const-string/jumbo v1, "Profile"

    new-instance v4, Lcyanogenmod/app/Profile;

    const v5, 0x7f0c00a1

    invoke-virtual {p0, v5}, Lcom/android/exsettings/profiles/ProfilesSettings;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcyanogenmod/app/Profile;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 220
    invoke-virtual {p0}, Lcom/android/exsettings/profiles/ProfilesSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/exsettings/SettingsActivity;

    .line 221
    .local v0, "pa":Lcom/android/exsettings/SettingsActivity;
    const-class v1, Lcom/android/exsettings/profiles/SetupTriggersFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    .line 222
    const/4 v4, 0x0

    move-object v5, p0

    move v6, v3

    .line 221
    invoke-virtual/range {v0 .. v6}, Lcom/android/exsettings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 215
    return-void
.end method

.method private resetAll()V
    .locals 3

    .prologue
    .line 226
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/exsettings/profiles/ProfilesSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 227
    const v1, 0x7f0c00a6

    .line 226
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 228
    const v1, 0x1010355

    .line 226
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 229
    const v1, 0x7f0c00a7

    .line 226
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 230
    new-instance v1, Lcom/android/exsettings/profiles/ProfilesSettings$3;

    invoke-direct {v1, p0}, Lcom/android/exsettings/profiles/ProfilesSettings$3;-><init>(Lcom/android/exsettings/profiles/ProfilesSettings;)V

    const v2, 0x104000a

    .line 226
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 241
    const v1, 0x7f0c05d6

    const/4 v2, 0x0

    .line 226
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 225
    return-void
.end method

.method private setSelectedProfile(Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 309
    :try_start_0
    invoke-static {p1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v1

    .line 310
    .local v1, "selectedUuid":Ljava/util/UUID;
    iget-object v2, p0, Lcom/android/exsettings/profiles/ProfilesSettings;->mProfileManager:Lcyanogenmod/app/ProfileManager;

    invoke-virtual {v2, v1}, Lcyanogenmod/app/ProfileManager;->setActiveProfile(Ljava/util/UUID;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 307
    .end local v1    # "selectedUuid":Ljava/util/UUID;
    :goto_0
    return-void

    .line 311
    :catch_0
    move-exception v0

    .line 312
    .local v0, "ex":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0
.end method

.method private updateProfilesEnabledState()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 246
    invoke-virtual {p0}, Lcom/android/exsettings/profiles/ProfilesSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 248
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 249
    const-string/jumbo v4, "system_profiles_enabled"

    .line 248
    invoke-static {v3, v4, v1}, Lcyanogenmod/providers/CMSettings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_0

    :goto_0
    iput-boolean v1, p0, Lcom/android/exsettings/profiles/ProfilesSettings;->mEnabled:Z

    .line 250
    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 252
    iget-object v1, p0, Lcom/android/exsettings/profiles/ProfilesSettings;->mAddProfileFab:Landroid/view/View;

    iget-boolean v3, p0, Lcom/android/exsettings/profiles/ProfilesSettings;->mEnabled:Z

    if-eqz v3, :cond_1

    :goto_1
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 253
    iget-boolean v1, p0, Lcom/android/exsettings/profiles/ProfilesSettings;->mEnabled:Z

    if-nez v1, :cond_2

    .line 254
    invoke-virtual {p0}, Lcom/android/exsettings/profiles/ProfilesSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 245
    :goto_2
    return-void

    :cond_0
    move v1, v2

    .line 248
    goto :goto_0

    .line 252
    :cond_1
    const/16 v2, 0x8

    goto :goto_1

    .line 256
    :cond_2
    invoke-virtual {p0}, Lcom/android/exsettings/profiles/ProfilesSettings;->refreshList()V

    goto :goto_2
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 150
    const v0, -0x7fffffee

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 143
    invoke-virtual {p0}, Lcom/android/exsettings/profiles/ProfilesSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcyanogenmod/app/ProfileManager;->getInstance(Landroid/content/Context;)Lcyanogenmod/app/ProfileManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/profiles/ProfilesSettings;->mProfileManager:Lcyanogenmod/app/ProfileManager;

    .line 145
    invoke-super {p0, p1}, Lcom/android/exsettings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 142
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 97
    invoke-super {p0, p1}, Lcom/android/exsettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 98
    const v0, 0x7f08004c

    invoke-virtual {p0, v0}, Lcom/android/exsettings/profiles/ProfilesSettings;->addPreferencesFromResource(I)V

    .line 96
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v2, 0x0

    .line 192
    invoke-super {p0, p1, p2}, Lcom/android/exsettings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 193
    const/4 v0, 0x1

    const v1, 0x7f0c00a6

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 194
    const/16 v1, 0x72

    .line 193
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v0

    .line 195
    iget-boolean v1, p0, Lcom/android/exsettings/profiles/ProfilesSettings;->mEnabled:Z

    .line 193
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 197
    const/4 v0, 0x2

    const v1, 0x7f0c00c2

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 191
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 104
    invoke-super {p0, p1, p2, p3}, Lcom/android/exsettings/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v1

    .line 105
    .local v1, "view":Landroid/view/View;
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/android/exsettings/profiles/ProfilesSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 106
    .local v0, "frameLayout":Landroid/widget/FrameLayout;
    iput-object v0, p0, Lcom/android/exsettings/profiles/ProfilesSettings;->mContainer:Landroid/view/ViewGroup;

    .line 107
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 108
    return-object v0
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/android/exsettings/profiles/ProfilesSettings;->mProfileEnabler:Lcom/android/exsettings/cyanogenmod/CMBaseSystemSettingSwitchBar;

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/android/exsettings/profiles/ProfilesSettings;->mProfileEnabler:Lcom/android/exsettings/cyanogenmod/CMBaseSystemSettingSwitchBar;

    invoke-virtual {v0}, Lcom/android/exsettings/cyanogenmod/CMBaseSystemSettingSwitchBar;->teardownSwitchBar()V

    .line 187
    :cond_0
    invoke-super {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;->onDestroyView()V

    .line 183
    return-void
.end method

.method public onEnablerChanged(Z)V
    .locals 3
    .param p1, "isEnabled"    # Z

    .prologue
    .line 262
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "cyanogenmod.platform.app.profiles.PROFILES_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 263
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "profile_state"

    .line 264
    if-eqz p1, :cond_0

    .line 265
    const/4 v1, 0x1

    .line 263
    :goto_0
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 267
    invoke-virtual {p0}, Lcom/android/exsettings/profiles/ProfilesSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 261
    return-void

    .line 266
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v6, 0x1

    .line 203
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 212
    invoke-super {p0, p1}, Lcom/android/exsettings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 205
    :pswitch_0
    invoke-direct {p0}, Lcom/android/exsettings/profiles/ProfilesSettings;->resetAll()V

    .line 206
    return v6

    .line 208
    :pswitch_1
    const-class v0, Lcom/android/exsettings/profiles/AppGroupList;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 209
    const v3, 0x7f0c00c2

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p0

    .line 208
    invoke-virtual/range {v0 .. v5}, Lcom/android/exsettings/profiles/ProfilesSettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    .line 210
    return v6

    .line 203
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 167
    invoke-super {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;->onPause()V

    .line 168
    iget-object v0, p0, Lcom/android/exsettings/profiles/ProfilesSettings;->mProfileEnabler:Lcom/android/exsettings/cyanogenmod/CMBaseSystemSettingSwitchBar;

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/android/exsettings/profiles/ProfilesSettings;->mProfileEnabler:Lcom/android/exsettings/cyanogenmod/CMBaseSystemSettingSwitchBar;

    invoke-virtual {v0}, Lcom/android/exsettings/cyanogenmod/CMBaseSystemSettingSwitchBar;->pause()V

    .line 171
    :cond_0
    invoke-virtual {p0}, Lcom/android/exsettings/profiles/ProfilesSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/exsettings/profiles/ProfilesSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 166
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 300
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 301
    check-cast p2, Ljava/lang/String;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-direct {p0, p2}, Lcom/android/exsettings/profiles/ProfilesSettings;->setSelectedProfile(Ljava/lang/String;)V

    .line 302
    invoke-virtual {p0}, Lcom/android/exsettings/profiles/ProfilesSettings;->refreshList()V

    .line 304
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 155
    invoke-super {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;->onResume()V

    .line 156
    iget-object v0, p0, Lcom/android/exsettings/profiles/ProfilesSettings;->mProfileEnabler:Lcom/android/exsettings/cyanogenmod/CMBaseSystemSettingSwitchBar;

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/android/exsettings/profiles/ProfilesSettings;->mProfileEnabler:Lcom/android/exsettings/cyanogenmod/CMBaseSystemSettingSwitchBar;

    invoke-virtual {p0}, Lcom/android/exsettings/profiles/ProfilesSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/exsettings/cyanogenmod/CMBaseSystemSettingSwitchBar;->resume(Landroid/content/Context;)V

    .line 159
    :cond_0
    invoke-virtual {p0}, Lcom/android/exsettings/profiles/ProfilesSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/exsettings/profiles/ProfilesSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/exsettings/profiles/ProfilesSettings;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 162
    invoke-direct {p0}, Lcom/android/exsettings/profiles/ProfilesSettings;->updateProfilesEnabledState()V

    .line 154
    return-void
.end method

.method public onStart()V
    .locals 6

    .prologue
    .line 176
    invoke-super {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;->onStart()V

    .line 177
    invoke-virtual {p0}, Lcom/android/exsettings/profiles/ProfilesSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/exsettings/SettingsActivity;

    .line 178
    .local v1, "activity":Lcom/android/exsettings/SettingsActivity;
    new-instance v0, Lcom/android/exsettings/cyanogenmod/CMBaseSystemSettingSwitchBar;

    invoke-virtual {v1}, Lcom/android/exsettings/SettingsActivity;->getSwitchBar()Lcom/android/exsettings/widget/SwitchBar;

    move-result-object v2

    .line 179
    const-string/jumbo v3, "system_profiles_enabled"

    const/4 v4, 0x1

    move-object v5, p0

    .line 178
    invoke-direct/range {v0 .. v5}, Lcom/android/exsettings/cyanogenmod/CMBaseSystemSettingSwitchBar;-><init>(Landroid/content/Context;Lcom/android/exsettings/widget/SwitchBar;Ljava/lang/String;ZLcom/android/exsettings/cyanogenmod/CMBaseSystemSettingSwitchBar$SwitchBarChangeCallback;)V

    iput-object v0, p0, Lcom/android/exsettings/profiles/ProfilesSettings;->mProfileEnabler:Lcom/android/exsettings/cyanogenmod/CMBaseSystemSettingSwitchBar;

    .line 175
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 9
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 113
    invoke-super {p0, p1, p2}, Lcom/android/exsettings/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 116
    invoke-virtual {p0}, Lcom/android/exsettings/profiles/ProfilesSettings;->getListView()Landroid/widget/ListView;

    move-result-object v3

    .line 117
    .local v3, "listView":Landroid/widget/ListView;
    invoke-virtual {p0}, Lcom/android/exsettings/profiles/ProfilesSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    .line 118
    const v6, 0x7f040067

    .line 117
    invoke-virtual {v5, v6, v3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 119
    .local v2, "footer":Landroid/view/View;
    invoke-virtual {v3, v2}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 120
    invoke-virtual {v3, v7}, Landroid/widget/ListView;->setFooterDividersEnabled(Z)V

    .line 121
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    invoke-virtual {p0}, Lcom/android/exsettings/profiles/ProfilesSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    .line 124
    check-cast p1, Landroid/view/ViewGroup;

    .end local p1    # "view":Landroid/view/View;
    const v6, 0x7f04006a

    .line 123
    invoke-virtual {v5, v6, p1, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 126
    .local v4, "v":Landroid/view/View;
    const v5, 0x7f130104

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 127
    .local v0, "emptyTextView":Landroid/widget/TextView;
    invoke-virtual {v3, v0}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 129
    invoke-virtual {p0}, Lcom/android/exsettings/profiles/ProfilesSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    .line 130
    iget-object v6, p0, Lcom/android/exsettings/profiles/ProfilesSettings;->mContainer:Landroid/view/ViewGroup;

    const v7, 0x7f040070

    .line 129
    invoke-virtual {v5, v7, v6, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 131
    .local v1, "fab":Landroid/view/View;
    const v5, 0x7f130112

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/exsettings/profiles/ProfilesSettings;->mAddProfileFab:Landroid/view/View;

    .line 132
    iget-object v5, p0, Lcom/android/exsettings/profiles/ProfilesSettings;->mAddProfileFab:Landroid/view/View;

    .line 133
    new-instance v6, Lcom/android/exsettings/profiles/ProfilesSettings$2;

    invoke-direct {v6, p0}, Lcom/android/exsettings/profiles/ProfilesSettings$2;-><init>(Lcom/android/exsettings/profiles/ProfilesSettings;)V

    .line 132
    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    return-void
.end method

.method public refreshList()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v7, 0x0

    .line 271
    invoke-virtual {p0}, Lcom/android/exsettings/profiles/ProfilesSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 272
    .local v1, "plist":Landroid/preference/PreferenceScreen;
    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 275
    iget-object v6, p0, Lcom/android/exsettings/profiles/ProfilesSettings;->mProfileManager:Lcyanogenmod/app/ProfileManager;

    invoke-virtual {v6}, Lcyanogenmod/app/ProfileManager;->getActiveProfile()Lcyanogenmod/app/Profile;

    move-result-object v3

    .line 276
    .local v3, "prof":Lcyanogenmod/app/Profile;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcyanogenmod/app/Profile;->getUuid()Ljava/util/UUID;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v5

    .line 278
    :goto_0
    iget-object v6, p0, Lcom/android/exsettings/profiles/ProfilesSettings;->mProfileManager:Lcyanogenmod/app/ProfileManager;

    invoke-virtual {v6}, Lcyanogenmod/app/ProfileManager;->getProfiles()[Lcyanogenmod/app/Profile;

    move-result-object v8

    array-length v9, v8

    move v6, v7

    :goto_1
    if-ge v6, v9, :cond_2

    aget-object v4, v8, v6

    .line 279
    .local v4, "profile":Lcyanogenmod/app/Profile;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 280
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v10, "Profile"

    invoke-virtual {v0, v10, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 281
    const-string/jumbo v10, "new_profile_mode"

    invoke-virtual {v0, v10, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 283
    new-instance v2, Lcom/android/exsettings/profiles/ProfilesPreference;

    invoke-direct {v2, p0, v0}, Lcom/android/exsettings/profiles/ProfilesPreference;-><init>(Lcom/android/exsettings/SettingsPreferenceFragment;Landroid/os/Bundle;)V

    .line 284
    .local v2, "ppref":Lcom/android/exsettings/profiles/ProfilesPreference;
    invoke-virtual {v4}, Lcyanogenmod/app/Profile;->getUuid()Ljava/util/UUID;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Lcom/android/exsettings/profiles/ProfilesPreference;->setKey(Ljava/lang/String;)V

    .line 285
    invoke-virtual {v4}, Lcyanogenmod/app/Profile;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Lcom/android/exsettings/profiles/ProfilesPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 286
    invoke-virtual {v2, v7}, Lcom/android/exsettings/profiles/ProfilesPreference;->setPersistent(Z)V

    .line 287
    invoke-virtual {v2, p0}, Lcom/android/exsettings/profiles/ProfilesPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 288
    invoke-virtual {v2, v11}, Lcom/android/exsettings/profiles/ProfilesPreference;->setSelectable(Z)V

    .line 289
    invoke-virtual {v2, v11}, Lcom/android/exsettings/profiles/ProfilesPreference;->setEnabled(Z)V

    .line 291
    invoke-virtual {v2}, Lcom/android/exsettings/profiles/ProfilesPreference;->getKey()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 292
    invoke-virtual {v2, v11}, Lcom/android/exsettings/profiles/ProfilesPreference;->setChecked(Z)V

    .line 295
    :cond_0
    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 278
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 276
    .end local v0    # "args":Landroid/os/Bundle;
    .end local v2    # "ppref":Lcom/android/exsettings/profiles/ProfilesPreference;
    .end local v4    # "profile":Lcyanogenmod/app/Profile;
    :cond_1
    const/4 v5, 0x0

    .local v5, "selectedKey":Ljava/lang/String;
    goto :goto_0

    .line 270
    .end local v5    # "selectedKey":Ljava/lang/String;
    :cond_2
    return-void
.end method
