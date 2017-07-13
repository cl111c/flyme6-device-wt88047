.class public Lcom/android/exsettings/profiles/SetupTriggersFragment;
.super Lcom/android/exsettings/SettingsPreferenceFragment;
.source "SetupTriggersFragment.java"


# instance fields
.field mAdapter:Lcom/android/exsettings/profiles/TriggerPagerAdapter;

.field mNewProfileMode:Z

.field mPager:Landroid/support/v4/view/ViewPager;

.field mPreselectedItem:I

.field mProfile:Lcyanogenmod/app/Profile;

.field mProfileManager:Lcyanogenmod/app/ProfileManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 81
    const v0, -0x7fffffec

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 91
    invoke-super {p0, p1}, Lcom/android/exsettings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 92
    invoke-virtual {p0}, Lcom/android/exsettings/profiles/SetupTriggersFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 93
    .local v0, "actionBar":Landroid/app/ActionBar;
    iget-boolean v2, p0, Lcom/android/exsettings/profiles/SetupTriggersFragment;->mNewProfileMode:Z

    if-eqz v2, :cond_0

    .line 94
    const v2, 0x7f0c00f4

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setTitle(I)V

    .line 90
    :goto_0
    return-void

    .line 96
    :cond_0
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 97
    iget-object v3, p0, Lcom/android/exsettings/profiles/SetupTriggersFragment;->mProfile:Lcyanogenmod/app/Profile;

    invoke-virtual {v3}, Lcyanogenmod/app/Profile;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 96
    const v3, 0x7f0c00f5

    invoke-virtual {p0, v3, v2}, Lcom/android/exsettings/profiles/SetupTriggersFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 98
    .local v1, "title":Ljava/lang/String;
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 170
    invoke-super {p0, p1, p2, p3}, Lcom/android/exsettings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 171
    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    .line 172
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 174
    invoke-virtual {p0}, Lcom/android/exsettings/profiles/SetupTriggersFragment;->finishFragment()V

    .line 169
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 70
    invoke-super {p0, p1}, Lcom/android/exsettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 71
    invoke-virtual {p0}, Lcom/android/exsettings/profiles/SetupTriggersFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 72
    invoke-virtual {p0}, Lcom/android/exsettings/profiles/SetupTriggersFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "Profile"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcyanogenmod/app/Profile;

    iput-object v0, p0, Lcom/android/exsettings/profiles/SetupTriggersFragment;->mProfile:Lcyanogenmod/app/Profile;

    .line 73
    invoke-virtual {p0}, Lcom/android/exsettings/profiles/SetupTriggersFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "new_profile_mode"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/exsettings/profiles/SetupTriggersFragment;->mNewProfileMode:Z

    .line 74
    invoke-virtual {p0}, Lcom/android/exsettings/profiles/SetupTriggersFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "current_item"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/exsettings/profiles/SetupTriggersFragment;->mPreselectedItem:I

    .line 76
    :cond_0
    invoke-virtual {p0}, Lcom/android/exsettings/profiles/SetupTriggersFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcyanogenmod/app/ProfileManager;->getInstance(Landroid/content/Context;)Lcyanogenmod/app/ProfileManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/profiles/SetupTriggersFragment;->mProfileManager:Lcyanogenmod/app/ProfileManager;

    .line 69
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 11
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x0

    .line 112
    const v6, 0x7f04007f

    invoke-virtual {p1, v6, p2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 114
    .local v4, "root":Landroid/view/View;
    const v6, 0x7f130127

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/support/v4/view/ViewPager;

    iput-object v6, p0, Lcom/android/exsettings/profiles/SetupTriggersFragment;->mPager:Landroid/support/v4/view/ViewPager;

    .line 115
    new-instance v6, Lcom/android/exsettings/profiles/TriggerPagerAdapter;

    invoke-virtual {p0}, Lcom/android/exsettings/profiles/SetupTriggersFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {p0}, Lcom/android/exsettings/profiles/SetupTriggersFragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v9

    invoke-direct {v6, v8, v9}, Lcom/android/exsettings/profiles/TriggerPagerAdapter;-><init>(Landroid/app/Activity;Landroid/app/FragmentManager;)V

    iput-object v6, p0, Lcom/android/exsettings/profiles/SetupTriggersFragment;->mAdapter:Lcom/android/exsettings/profiles/TriggerPagerAdapter;

    .line 117
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 118
    .local v3, "profileArgs":Landroid/os/Bundle;
    const-string/jumbo v6, "Profile"

    iget-object v8, p0, Lcom/android/exsettings/profiles/SetupTriggersFragment;->mProfile:Lcyanogenmod/app/Profile;

    invoke-virtual {v3, v6, v8}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 121
    invoke-static {}, Lcom/android/exsettings/profiles/TriggerPagerAdapter$TriggerFragments;->values()[Lcom/android/exsettings/profiles/TriggerPagerAdapter$TriggerFragments;

    move-result-object v1

    .line 123
    .local v1, "fragments":[Lcom/android/exsettings/profiles/TriggerPagerAdapter$TriggerFragments;
    array-length v8, v1

    move v6, v7

    :goto_0
    if-ge v6, v8, :cond_1

    aget-object v0, v1, v6

    .line 124
    .local v0, "fragment":Lcom/android/exsettings/profiles/TriggerPagerAdapter$TriggerFragments;
    invoke-virtual {v0}, Lcom/android/exsettings/profiles/TriggerPagerAdapter$TriggerFragments;->getFragmentClass()Ljava/lang/Class;

    move-result-object v7

    const-class v9, Lcom/android/exsettings/profiles/triggers/NfcTriggerFragment;

    if-ne v7, v9, :cond_0

    .line 125
    invoke-virtual {p0}, Lcom/android/exsettings/profiles/SetupTriggersFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 126
    const-string/jumbo v9, "android.hardware.nfc"

    .line 125
    invoke-virtual {v7, v9}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 123
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 131
    :cond_0
    iget-object v7, p0, Lcom/android/exsettings/profiles/SetupTriggersFragment;->mAdapter:Lcom/android/exsettings/profiles/TriggerPagerAdapter;

    invoke-virtual {v0}, Lcom/android/exsettings/profiles/TriggerPagerAdapter$TriggerFragments;->getFragmentClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v0}, Lcom/android/exsettings/profiles/TriggerPagerAdapter$TriggerFragments;->getTitleRes()I

    move-result v10

    invoke-virtual {v7, v9, v3, v10}, Lcom/android/exsettings/profiles/TriggerPagerAdapter;->add(Ljava/lang/Class;Landroid/os/Bundle;I)V

    goto :goto_1

    .line 134
    .end local v0    # "fragment":Lcom/android/exsettings/profiles/TriggerPagerAdapter$TriggerFragments;
    :cond_1
    iget-object v6, p0, Lcom/android/exsettings/profiles/SetupTriggersFragment;->mPager:Landroid/support/v4/view/ViewPager;

    iget-object v7, p0, Lcom/android/exsettings/profiles/SetupTriggersFragment;->mAdapter:Lcom/android/exsettings/profiles/TriggerPagerAdapter;

    invoke-virtual {v6, v7}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 136
    const v6, 0x7f13002c

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/support/v4/view/PagerTabStrip;

    .line 137
    .local v5, "tabs":Landroid/support/v4/view/PagerTabStrip;
    const v6, 0x7f0e0011

    invoke-virtual {v5, v6}, Landroid/support/v4/view/PagerTabStrip;->setTabIndicatorColorResource(I)V

    .line 139
    iget-boolean v6, p0, Lcom/android/exsettings/profiles/SetupTriggersFragment;->mNewProfileMode:Z

    if-eqz v6, :cond_2

    .line 140
    const v6, 0x7f130128

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 141
    .local v2, "nextButton":Landroid/widget/Button;
    new-instance v6, Lcom/android/exsettings/profiles/SetupTriggersFragment$1;

    invoke-direct {v6, p0}, Lcom/android/exsettings/profiles/SetupTriggersFragment$1;-><init>(Lcom/android/exsettings/profiles/SetupTriggersFragment;)V

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 156
    const v6, 0x7f130124

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    new-instance v7, Lcom/android/exsettings/profiles/SetupTriggersFragment$2;

    invoke-direct {v7, p0}, Lcom/android/exsettings/profiles/SetupTriggersFragment$2;-><init>(Lcom/android/exsettings/profiles/SetupTriggersFragment;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 165
    .end local v2    # "nextButton":Landroid/widget/Button;
    :goto_2
    return-object v4

    .line 163
    :cond_2
    const v6, 0x7f130123

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 86
    invoke-super {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;->onResume()V

    .line 85
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 104
    invoke-super {p0, p1, p2}, Lcom/android/exsettings/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 105
    iget-object v0, p0, Lcom/android/exsettings/profiles/SetupTriggersFragment;->mPager:Landroid/support/v4/view/ViewPager;

    iget v1, p0, Lcom/android/exsettings/profiles/SetupTriggersFragment;->mPreselectedItem:I

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 103
    return-void
.end method
