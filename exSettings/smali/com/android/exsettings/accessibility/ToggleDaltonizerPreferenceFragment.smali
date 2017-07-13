.class public Lcom/android/exsettings/accessibility/ToggleDaltonizerPreferenceFragment;
.super Lcom/android/exsettings/accessibility/ToggleFeaturePreferenceFragment;
.source "ToggleDaltonizerPreferenceFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/exsettings/widget/SwitchBar$OnSwitchChangeListener;


# instance fields
.field private mType:Landroid/preference/ListPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/android/exsettings/accessibility/ToggleFeaturePreferenceFragment;-><init>()V

    return-void
.end method

.method private initPreferences()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 94
    invoke-virtual {p0}, Lcom/android/exsettings/accessibility/ToggleDaltonizerPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "accessibility_display_daltonizer"

    const/16 v4, 0xc

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 93
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 95
    .local v1, "value":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/exsettings/accessibility/ToggleDaltonizerPreferenceFragment;->mType:Landroid/preference/ListPreference;

    invoke-virtual {v2, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 96
    iget-object v2, p0, Lcom/android/exsettings/accessibility/ToggleDaltonizerPreferenceFragment;->mType:Landroid/preference/ListPreference;

    invoke-virtual {v2, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 97
    iget-object v2, p0, Lcom/android/exsettings/accessibility/ToggleDaltonizerPreferenceFragment;->mType:Landroid/preference/ListPreference;

    invoke-virtual {v2, v1}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 98
    .local v0, "index":I
    if-gez v0, :cond_0

    .line 100
    iget-object v2, p0, Lcom/android/exsettings/accessibility/ToggleDaltonizerPreferenceFragment;->mType:Landroid/preference/ListPreference;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    .line 101
    const v4, 0x7f0c0cc9

    invoke-virtual {p0, v4}, Lcom/android/exsettings/accessibility/ToggleDaltonizerPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    .line 100
    const v4, 0x7f0c0ae1

    invoke-virtual {p0, v4, v3}, Lcom/android/exsettings/accessibility/ToggleDaltonizerPreferenceFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 92
    :cond_0
    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x5

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 46
    invoke-super {p0, p1}, Lcom/android/exsettings/accessibility/ToggleFeaturePreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 48
    const v0, 0x7f080001

    invoke-virtual {p0, v0}, Lcom/android/exsettings/accessibility/ToggleDaltonizerPreferenceFragment;->addPreferencesFromResource(I)V

    .line 50
    const-string/jumbo v0, "type"

    invoke-virtual {p0, v0}, Lcom/android/exsettings/accessibility/ToggleDaltonizerPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/exsettings/accessibility/ToggleDaltonizerPreferenceFragment;->mType:Landroid/preference/ListPreference;

    .line 52
    invoke-direct {p0}, Lcom/android/exsettings/accessibility/ToggleDaltonizerPreferenceFragment;->initPreferences()V

    .line 45
    return-void
.end method

.method protected onInstallSwitchBarToggleSwitch()V
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 79
    invoke-super {p0}, Lcom/android/exsettings/accessibility/ToggleFeaturePreferenceFragment;->onInstallSwitchBarToggleSwitch()V

    .line 81
    iget-object v2, p0, Lcom/android/exsettings/accessibility/ToggleDaltonizerPreferenceFragment;->mSwitchBar:Lcom/android/exsettings/widget/SwitchBar;

    .line 82
    invoke-virtual {p0}, Lcom/android/exsettings/accessibility/ToggleDaltonizerPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "accessibility_display_daltonizer_enabled"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v0, :cond_0

    .line 81
    :goto_0
    invoke-virtual {v2, v0}, Lcom/android/exsettings/widget/SwitchBar;->setCheckedInternal(Z)V

    .line 83
    iget-object v0, p0, Lcom/android/exsettings/accessibility/ToggleDaltonizerPreferenceFragment;->mSwitchBar:Lcom/android/exsettings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/exsettings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/exsettings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 78
    return-void

    :cond_0
    move v0, v1

    .line 82
    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/exsettings/accessibility/ToggleDaltonizerPreferenceFragment;->mType:Landroid/preference/ListPreference;

    if-ne p1, v0, :cond_0

    .line 63
    invoke-virtual {p0}, Lcom/android/exsettings/accessibility/ToggleDaltonizerPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "accessibility_display_daltonizer"

    check-cast p2, Ljava/lang/String;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 64
    const-string/jumbo v0, "%s"

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 67
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method protected onPreferenceToggled(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "preferenceKey"    # Ljava/lang/String;
    .param p2, "enabled"    # Z

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/android/exsettings/accessibility/ToggleDaltonizerPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "accessibility_display_daltonizer_enabled"

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 56
    return-void

    .line 57
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onRemoveSwitchBarToggleSwitch()V
    .locals 1

    .prologue
    .line 88
    invoke-super {p0}, Lcom/android/exsettings/accessibility/ToggleFeaturePreferenceFragment;->onRemoveSwitchBarToggleSwitch()V

    .line 89
    iget-object v0, p0, Lcom/android/exsettings/accessibility/ToggleDaltonizerPreferenceFragment;->mSwitchBar:Lcom/android/exsettings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/exsettings/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/exsettings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 87
    return-void
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 1
    .param p1, "switchView"    # Landroid/widget/Switch;
    .param p2, "isChecked"    # Z

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/exsettings/accessibility/ToggleDaltonizerPreferenceFragment;->mPreferenceKey:Ljava/lang/String;

    invoke-virtual {p0, v0, p2}, Lcom/android/exsettings/accessibility/ToggleDaltonizerPreferenceFragment;->onPreferenceToggled(Ljava/lang/String;Z)V

    .line 106
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 72
    invoke-super {p0, p1, p2}, Lcom/android/exsettings/accessibility/ToggleFeaturePreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 74
    const v0, 0x7f0c0add

    invoke-virtual {p0, v0}, Lcom/android/exsettings/accessibility/ToggleDaltonizerPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/exsettings/accessibility/ToggleDaltonizerPreferenceFragment;->setTitle(Ljava/lang/String;)V

    .line 71
    return-void
.end method
