.class public Lcom/android/exsettings/blacklist/BlacklistPreferences;
.super Lcom/android/exsettings/SettingsPreferenceFragment;
.source "BlacklistPreferences.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mBlacklistPrivate:Landroid/preference/MultiSelectListPreference;

.field private mBlacklistUnknown:Landroid/preference/MultiSelectListPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private getPolicyFromSelectList(Ljava/util/Set;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 112
    .local p1, "values":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 114
    .local v0, "mode":I
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "value$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 115
    .local v1, "value":Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    or-int/2addr v0, v3

    goto :goto_0

    .line 118
    .end local v1    # "value":Ljava/lang/String;
    :cond_0
    return v0
.end method

.method private updatePolicyFromSelectList(Ljava/util/Set;Ljava/lang/String;)V
    .locals 2
    .param p2, "setting"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 122
    .local p1, "values":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Lcom/android/exsettings/blacklist/BlacklistPreferences;->getPolicyFromSelectList(Ljava/util/Set;)I

    move-result v0

    .line 123
    .local v0, "mode":I
    invoke-virtual {p0}, Lcom/android/exsettings/blacklist/BlacklistPreferences;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, p2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 121
    return-void
.end method

.method private updateSelectListFromPolicy(Landroid/preference/MultiSelectListPreference;Ljava/lang/String;)V
    .locals 4
    .param p1, "pref"    # Landroid/preference/MultiSelectListPreference;
    .param p2, "setting"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 99
    invoke-virtual {p0}, Lcom/android/exsettings/blacklist/BlacklistPreferences;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, p2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 100
    .local v0, "mode":I
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 102
    .local v1, "values":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    and-int/lit8 v2, v0, 0x1

    if-eqz v2, :cond_0

    .line 103
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 105
    :cond_0
    and-int/lit8 v2, v0, 0x10

    if-eqz v2, :cond_1

    .line 106
    const/16 v2, 0x10

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 108
    :cond_1
    invoke-virtual {p1, v1}, Landroid/preference/MultiSelectListPreference;->setValues(Ljava/util/Set;)V

    .line 98
    return-void
.end method

.method private updateSelectListSummary(Landroid/preference/MultiSelectListPreference;Ljava/util/Set;II)V
    .locals 5
    .param p1, "pref"    # Landroid/preference/MultiSelectListPreference;
    .param p3, "summaryResId"    # I
    .param p4, "disabledSummaryResId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/preference/MultiSelectListPreference;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .local p2, "values":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 128
    invoke-direct {p0, p2}, Lcom/android/exsettings/blacklist/BlacklistPreferences;->getPolicyFromSelectList(Ljava/util/Set;)I

    move-result v0

    .line 131
    .local v0, "mode":I
    if-nez v0, :cond_0

    .line 132
    invoke-virtual {p0, p4}, Lcom/android/exsettings/blacklist/BlacklistPreferences;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/preference/MultiSelectListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 133
    return-void

    .line 136
    :cond_0
    if-ne v0, v3, :cond_1

    .line 137
    const v1, 0x7f0c0304

    .line 144
    .local v1, "typeResId":I
    :goto_0
    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {p0, v1}, Lcom/android/exsettings/blacklist/BlacklistPreferences;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0, p3, v2}, Lcom/android/exsettings/blacklist/BlacklistPreferences;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/preference/MultiSelectListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 127
    return-void

    .line 138
    .end local v1    # "typeResId":I
    :cond_1
    const/16 v2, 0x10

    if-ne v0, v2, :cond_2

    .line 139
    const v1, 0x7f0c0305

    .restart local v1    # "typeResId":I
    goto :goto_0

    .line 141
    .end local v1    # "typeResId":I
    :cond_2
    const v1, 0x7f0c0306

    .restart local v1    # "typeResId":I
    goto :goto_0
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 149
    const/16 v0, 0x51

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 47
    invoke-super {p0, p1}, Lcom/android/exsettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 49
    const v1, 0x7f080015

    invoke-virtual {p0, v1}, Lcom/android/exsettings/blacklist/BlacklistPreferences;->addPreferencesFromResource(I)V

    .line 51
    invoke-virtual {p0}, Lcom/android/exsettings/blacklist/BlacklistPreferences;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 53
    .local v0, "prefSet":Landroid/preference/PreferenceScreen;
    const-string/jumbo v1, "button_blacklist_private_numbers"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/MultiSelectListPreference;

    .line 52
    iput-object v1, p0, Lcom/android/exsettings/blacklist/BlacklistPreferences;->mBlacklistPrivate:Landroid/preference/MultiSelectListPreference;

    .line 54
    iget-object v1, p0, Lcom/android/exsettings/blacklist/BlacklistPreferences;->mBlacklistPrivate:Landroid/preference/MultiSelectListPreference;

    invoke-virtual {v1, p0}, Landroid/preference/MultiSelectListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 56
    const-string/jumbo v1, "button_blacklist_unknown_numbers"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/MultiSelectListPreference;

    .line 55
    iput-object v1, p0, Lcom/android/exsettings/blacklist/BlacklistPreferences;->mBlacklistUnknown:Landroid/preference/MultiSelectListPreference;

    .line 57
    iget-object v1, p0, Lcom/android/exsettings/blacklist/BlacklistPreferences;->mBlacklistUnknown:Landroid/preference/MultiSelectListPreference;

    invoke-virtual {v1, p0}, Landroid/preference/MultiSelectListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 46
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "objValue"    # Ljava/lang/Object;

    .prologue
    .line 79
    iget-object v1, p0, Lcom/android/exsettings/blacklist/BlacklistPreferences;->mBlacklistUnknown:Landroid/preference/MultiSelectListPreference;

    if-ne p1, v1, :cond_1

    move-object v0, p2

    .line 80
    check-cast v0, Ljava/util/Set;

    .line 82
    .local v0, "newValues":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string/jumbo v1, "phone_blacklist_unknown_number_enabled"

    .line 81
    invoke-direct {p0, v0, v1}, Lcom/android/exsettings/blacklist/BlacklistPreferences;->updatePolicyFromSelectList(Ljava/util/Set;Ljava/lang/String;)V

    .line 83
    iget-object v1, p0, Lcom/android/exsettings/blacklist/BlacklistPreferences;->mBlacklistUnknown:Landroid/preference/MultiSelectListPreference;

    .line 84
    const v2, 0x7f0c0303

    .line 85
    const v3, 0x7f0c0302

    .line 83
    invoke-direct {p0, v1, v0, v2, v3}, Lcom/android/exsettings/blacklist/BlacklistPreferences;->updateSelectListSummary(Landroid/preference/MultiSelectListPreference;Ljava/util/Set;II)V

    .line 95
    .end local v0    # "newValues":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 86
    :cond_1
    iget-object v1, p0, Lcom/android/exsettings/blacklist/BlacklistPreferences;->mBlacklistPrivate:Landroid/preference/MultiSelectListPreference;

    if-ne p1, v1, :cond_0

    move-object v0, p2

    .line 87
    check-cast v0, Ljava/util/Set;

    .line 89
    .restart local v0    # "newValues":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string/jumbo v1, "phone_blacklist_private_number_enabled"

    .line 88
    invoke-direct {p0, v0, v1}, Lcom/android/exsettings/blacklist/BlacklistPreferences;->updatePolicyFromSelectList(Ljava/util/Set;Ljava/lang/String;)V

    .line 90
    iget-object v1, p0, Lcom/android/exsettings/blacklist/BlacklistPreferences;->mBlacklistPrivate:Landroid/preference/MultiSelectListPreference;

    .line 91
    const v2, 0x7f0c0300

    .line 92
    const v3, 0x7f0c02ff

    .line 90
    invoke-direct {p0, v1, v0, v2, v3}, Lcom/android/exsettings/blacklist/BlacklistPreferences;->updateSelectListSummary(Landroid/preference/MultiSelectListPreference;Ljava/util/Set;II)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 5

    .prologue
    .line 62
    invoke-super {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;->onResume()V

    .line 64
    invoke-virtual {p0}, Lcom/android/exsettings/blacklist/BlacklistPreferences;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 65
    .local v0, "context":Landroid/content/Context;
    iget-object v1, p0, Lcom/android/exsettings/blacklist/BlacklistPreferences;->mBlacklistPrivate:Landroid/preference/MultiSelectListPreference;

    .line 66
    const-string/jumbo v2, "phone_blacklist_private_number_enabled"

    .line 65
    invoke-direct {p0, v1, v2}, Lcom/android/exsettings/blacklist/BlacklistPreferences;->updateSelectListFromPolicy(Landroid/preference/MultiSelectListPreference;Ljava/lang/String;)V

    .line 67
    iget-object v1, p0, Lcom/android/exsettings/blacklist/BlacklistPreferences;->mBlacklistPrivate:Landroid/preference/MultiSelectListPreference;

    iget-object v2, p0, Lcom/android/exsettings/blacklist/BlacklistPreferences;->mBlacklistPrivate:Landroid/preference/MultiSelectListPreference;

    invoke-virtual {v2}, Landroid/preference/MultiSelectListPreference;->getValues()Ljava/util/Set;

    move-result-object v2

    .line 68
    const v3, 0x7f0c0300

    .line 69
    const v4, 0x7f0c02ff

    .line 67
    invoke-direct {p0, v1, v2, v3, v4}, Lcom/android/exsettings/blacklist/BlacklistPreferences;->updateSelectListSummary(Landroid/preference/MultiSelectListPreference;Ljava/util/Set;II)V

    .line 70
    iget-object v1, p0, Lcom/android/exsettings/blacklist/BlacklistPreferences;->mBlacklistUnknown:Landroid/preference/MultiSelectListPreference;

    .line 71
    const-string/jumbo v2, "phone_blacklist_unknown_number_enabled"

    .line 70
    invoke-direct {p0, v1, v2}, Lcom/android/exsettings/blacklist/BlacklistPreferences;->updateSelectListFromPolicy(Landroid/preference/MultiSelectListPreference;Ljava/lang/String;)V

    .line 72
    iget-object v1, p0, Lcom/android/exsettings/blacklist/BlacklistPreferences;->mBlacklistUnknown:Landroid/preference/MultiSelectListPreference;

    iget-object v2, p0, Lcom/android/exsettings/blacklist/BlacklistPreferences;->mBlacklistUnknown:Landroid/preference/MultiSelectListPreference;

    invoke-virtual {v2}, Landroid/preference/MultiSelectListPreference;->getValues()Ljava/util/Set;

    move-result-object v2

    .line 73
    const v3, 0x7f0c0303

    .line 74
    const v4, 0x7f0c0302

    .line 72
    invoke-direct {p0, v1, v2, v3, v4}, Lcom/android/exsettings/blacklist/BlacklistPreferences;->updateSelectListSummary(Landroid/preference/MultiSelectListPreference;Ljava/util/Set;II)V

    .line 61
    return-void
.end method
