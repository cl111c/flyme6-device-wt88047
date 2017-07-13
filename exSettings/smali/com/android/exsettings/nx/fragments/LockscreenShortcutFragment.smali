.class public Lcom/android/exsettings/nx/fragments/LockscreenShortcutFragment;
.super Lcom/android/exsettings/SettingsPreferenceFragment;
.source "LockscreenShortcutFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mLockscreenShortcutsLongpress:Landroid/preference/SwitchPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 76
    const v0, -0x7ffffffe

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 45
    invoke-super {p0, p1}, Lcom/android/exsettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 47
    const v1, 0x7f080037

    invoke-virtual {p0, v1}, Lcom/android/exsettings/nx/fragments/LockscreenShortcutFragment;->addPreferencesFromResource(I)V

    .line 49
    invoke-virtual {p0}, Lcom/android/exsettings/nx/fragments/LockscreenShortcutFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 52
    .local v0, "prefSet":Landroid/preference/PreferenceScreen;
    const-string/jumbo v1, "lockscreen_shortcuts_longpress"

    .line 51
    invoke-virtual {p0, v1}, Lcom/android/exsettings/nx/fragments/LockscreenShortcutFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreference;

    iput-object v1, p0, Lcom/android/exsettings/nx/fragments/LockscreenShortcutFragment;->mLockscreenShortcutsLongpress:Landroid/preference/SwitchPreference;

    .line 53
    iget-object v4, p0, Lcom/android/exsettings/nx/fragments/LockscreenShortcutFragment;->mLockscreenShortcutsLongpress:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/exsettings/nx/fragments/LockscreenShortcutFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 54
    const-string/jumbo v5, "lockscreen_shortcuts_longpress"

    .line 53
    invoke-static {v1, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 55
    iget-object v1, p0, Lcom/android/exsettings/nx/fragments/LockscreenShortcutFragment;->mLockscreenShortcutsLongpress:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 57
    invoke-virtual {p0, v3}, Lcom/android/exsettings/nx/fragments/LockscreenShortcutFragment;->setHasOptionsMenu(Z)V

    .line 44
    return-void

    :cond_0
    move v1, v3

    .line 53
    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    .line 63
    invoke-super {p0, p1, p2, p3}, Lcom/android/exsettings/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v3

    .line 64
    .local v3, "view":Landroid/view/View;
    const v4, 0x102000a

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 66
    .local v0, "list":Landroid/widget/ListView;
    if-eqz v0, :cond_0

    .line 67
    invoke-virtual {v0}, Landroid/widget/ListView;->getPaddingTop()I

    move-result v2

    .line 68
    .local v2, "paddingTop":I
    invoke-virtual {v0}, Landroid/widget/ListView;->getPaddingBottom()I

    move-result v1

    .line 69
    .local v1, "paddingBottom":I
    invoke-virtual {v0, v5, v2, v5, v1}, Landroid/widget/ListView;->setPadding(IIII)V

    .line 71
    .end local v1    # "paddingBottom":I
    .end local v2    # "paddingTop":I
    :cond_0
    return-object v3
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    .line 81
    iget-object v0, p0, Lcom/android/exsettings/nx/fragments/LockscreenShortcutFragment;->mLockscreenShortcutsLongpress:Landroid/preference/SwitchPreference;

    if-ne p1, v0, :cond_0

    .line 82
    invoke-virtual {p0}, Lcom/android/exsettings/nx/fragments/LockscreenShortcutFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 83
    const-string/jumbo v3, "lockscreen_shortcuts_longpress"

    .line 84
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 82
    :goto_0
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 86
    :cond_0
    return v1

    .line 84
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
