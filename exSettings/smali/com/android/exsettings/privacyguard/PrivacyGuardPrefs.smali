.class public Lcom/android/exsettings/privacyguard/PrivacyGuardPrefs;
.super Lcom/android/exsettings/SettingsPreferenceFragment;
.source "PrivacyGuardPrefs.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mPrivacyGuardDefault:Landroid/preference/SwitchPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method public static newInstance()Lcom/android/exsettings/privacyguard/PrivacyGuardPrefs;
    .locals 1

    .prologue
    .line 45
    new-instance v0, Lcom/android/exsettings/privacyguard/PrivacyGuardPrefs;

    invoke-direct {v0}, Lcom/android/exsettings/privacyguard/PrivacyGuardPrefs;-><init>()V

    .line 46
    .local v0, "privacyGuardFragment":Lcom/android/exsettings/privacyguard/PrivacyGuardPrefs;
    return-object v0
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 87
    const v0, -0x7ffffff1

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 51
    invoke-super {p0, p1}, Lcom/android/exsettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 53
    const v0, 0x7f080046

    invoke-virtual {p0, v0}, Lcom/android/exsettings/privacyguard/PrivacyGuardPrefs;->addPreferencesFromResource(I)V

    .line 55
    const-string/jumbo v0, "privacy_guard_default"

    invoke-virtual {p0, v0}, Lcom/android/exsettings/privacyguard/PrivacyGuardPrefs;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/android/exsettings/privacyguard/PrivacyGuardPrefs;->mPrivacyGuardDefault:Landroid/preference/SwitchPreference;

    .line 56
    iget-object v0, p0, Lcom/android/exsettings/privacyguard/PrivacyGuardPrefs;->mPrivacyGuardDefault:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 58
    iget-object v3, p0, Lcom/android/exsettings/privacyguard/PrivacyGuardPrefs;->mPrivacyGuardDefault:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/exsettings/privacyguard/PrivacyGuardPrefs;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 59
    const-string/jumbo v4, "privacy_guard_default"

    .line 58
    invoke-static {v0, v4, v2}, Lcyanogenmod/providers/CMSettings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 50
    return-void

    :cond_0
    move v0, v2

    .line 58
    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    .line 65
    invoke-super {p0, p1, p2, p3}, Lcom/android/exsettings/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v3

    .line 66
    .local v3, "view":Landroid/view/View;
    const v4, 0x102000a

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 68
    .local v0, "list":Landroid/widget/ListView;
    invoke-virtual {v0}, Landroid/widget/ListView;->getPaddingTop()I

    move-result v2

    .line 69
    .local v2, "paddingTop":I
    invoke-virtual {v0}, Landroid/widget/ListView;->getPaddingBottom()I

    move-result v1

    .line 70
    .local v1, "paddingBottom":I
    invoke-virtual {v0, v5, v2, v5, v1}, Landroid/widget/ListView;->setPadding(IIII)V

    .line 71
    return-object v3
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 76
    iget-object v3, p0, Lcom/android/exsettings/privacyguard/PrivacyGuardPrefs;->mPrivacyGuardDefault:Landroid/preference/SwitchPreference;

    if-ne p1, v3, :cond_1

    .line 77
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 78
    .local v0, "value":Z
    invoke-virtual {p0}, Lcom/android/exsettings/privacyguard/PrivacyGuardPrefs;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 79
    const-string/jumbo v4, "privacy_guard_default"

    if-eqz v0, :cond_0

    move v1, v2

    .line 78
    :cond_0
    invoke-static {v3, v4, v1}, Lcyanogenmod/providers/CMSettings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 80
    return v2

    .line 82
    .end local v0    # "value":Z
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_1
    return v1
.end method
