.class public Lcom/android/exsettings/profiles/ProfilesPreference;
.super Landroid/preference/CheckBoxPreference;
.source "ProfilesPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mFragment:Lcom/android/exsettings/SettingsPreferenceFragment;

.field private mProfilesPref:Landroid/view/View;

.field private mProfilesSettingsButton:Landroid/widget/ImageView;

.field private final mSettingsBundle:Landroid/os/Bundle;

.field private mSummaryText:Landroid/widget/TextView;

.field private mTitleText:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lcom/android/exsettings/profiles/ProfilesPreference;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/exsettings/profiles/ProfilesPreference;->TAG:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public constructor <init>(Lcom/android/exsettings/SettingsPreferenceFragment;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "fragment"    # Lcom/android/exsettings/SettingsPreferenceFragment;
    .param p2, "settingsBundle"    # Landroid/os/Bundle;

    .prologue
    .line 45
    invoke-virtual {p1}, Lcom/android/exsettings/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    const v2, 0x7f0d005e

    invoke-direct {p0, v0, v1, v2}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    const v0, 0x7f0400c5

    invoke-virtual {p0, v0}, Lcom/android/exsettings/profiles/ProfilesPreference;->setLayoutResource(I)V

    .line 47
    const v0, 0x7f0400c6

    invoke-virtual {p0, v0}, Lcom/android/exsettings/profiles/ProfilesPreference;->setWidgetLayoutResource(I)V

    .line 48
    iput-object p1, p0, Lcom/android/exsettings/profiles/ProfilesPreference;->mFragment:Lcom/android/exsettings/SettingsPreferenceFragment;

    .line 49
    iput-object p2, p0, Lcom/android/exsettings/profiles/ProfilesPreference;->mSettingsBundle:Landroid/os/Bundle;

    .line 44
    return-void
.end method

.method private disablePreferenceViews()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 97
    iget-object v0, p0, Lcom/android/exsettings/profiles/ProfilesPreference;->mProfilesSettingsButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/android/exsettings/profiles/ProfilesPreference;->mProfilesSettingsButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 99
    iget-object v0, p0, Lcom/android/exsettings/profiles/ProfilesPreference;->mProfilesSettingsButton:Landroid/widget/ImageView;

    const v1, 0x3ecccccd    # 0.4f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/android/exsettings/profiles/ProfilesPreference;->mProfilesPref:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 102
    iget-object v0, p0, Lcom/android/exsettings/profiles/ProfilesPreference;->mProfilesPref:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 103
    iget-object v0, p0, Lcom/android/exsettings/profiles/ProfilesPreference;->mProfilesPref:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 96
    :cond_1
    return-void
.end method

.method private startProfileConfigActivity()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 133
    iget-object v1, p0, Lcom/android/exsettings/profiles/ProfilesPreference;->mFragment:Lcom/android/exsettings/SettingsPreferenceFragment;

    invoke-virtual {v1}, Lcom/android/exsettings/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/exsettings/SettingsActivity;

    .line 134
    .local v0, "pa":Lcom/android/exsettings/SettingsActivity;
    const-class v1, Lcom/android/exsettings/profiles/SetupActionsFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/exsettings/profiles/ProfilesPreference;->mSettingsBundle:Landroid/os/Bundle;

    .line 135
    const v3, 0x7f0c00b3

    const/4 v6, 0x1

    move-object v5, v4

    .line 134
    invoke-virtual/range {v0 .. v6}, Lcom/android/exsettings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 132
    return-void
.end method

.method private updatePreferenceViews()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x1

    .line 108
    invoke-virtual {p0}, Lcom/android/exsettings/profiles/ProfilesPreference;->isChecked()Z

    move-result v0

    .line 109
    .local v0, "checked":Z
    iget-object v3, p0, Lcom/android/exsettings/profiles/ProfilesPreference;->mProfilesSettingsButton:Landroid/widget/ImageView;

    if-eqz v3, :cond_0

    .line 110
    iget-object v3, p0, Lcom/android/exsettings/profiles/ProfilesPreference;->mProfilesSettingsButton:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 111
    iget-object v3, p0, Lcom/android/exsettings/profiles/ProfilesPreference;->mProfilesSettingsButton:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 112
    iget-object v3, p0, Lcom/android/exsettings/profiles/ProfilesPreference;->mProfilesSettingsButton:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 114
    :cond_0
    iget-object v3, p0, Lcom/android/exsettings/profiles/ProfilesPreference;->mTitleText:Landroid/widget/TextView;

    if-eqz v3, :cond_1

    .line 115
    iget-object v3, p0, Lcom/android/exsettings/profiles/ProfilesPreference;->mTitleText:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 117
    :cond_1
    iget-object v3, p0, Lcom/android/exsettings/profiles/ProfilesPreference;->mSummaryText:Landroid/widget/TextView;

    if-eqz v3, :cond_2

    .line 118
    iget-object v3, p0, Lcom/android/exsettings/profiles/ProfilesPreference;->mSummaryText:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 120
    :cond_2
    iget-object v3, p0, Lcom/android/exsettings/profiles/ProfilesPreference;->mProfilesPref:Landroid/view/View;

    if-eqz v3, :cond_4

    .line 121
    iget-object v3, p0, Lcom/android/exsettings/profiles/ProfilesPreference;->mProfilesPref:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 122
    iget-object v3, p0, Lcom/android/exsettings/profiles/ProfilesPreference;->mProfilesPref:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->setLongClickable(Z)V

    .line 123
    invoke-virtual {p0}, Lcom/android/exsettings/profiles/ProfilesPreference;->isEnabled()Z

    move-result v1

    .line 124
    .local v1, "enabled":Z
    iget-object v3, p0, Lcom/android/exsettings/profiles/ProfilesPreference;->mProfilesPref:Landroid/view/View;

    if-eqz v1, :cond_3

    move-object v2, p0

    :cond_3
    invoke-virtual {v3, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    if-nez v1, :cond_4

    .line 126
    iget-object v2, p0, Lcom/android/exsettings/profiles/ProfilesPreference;->mProfilesPref:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 107
    .end local v1    # "enabled":Z
    :cond_4
    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 54
    invoke-super {p0, p1}, Landroid/preference/CheckBoxPreference;->onBindView(Landroid/view/View;)V

    .line 56
    const v0, 0x7f13019f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/profiles/ProfilesPreference;->mProfilesPref:Landroid/view/View;

    .line 57
    iget-object v0, p0, Lcom/android/exsettings/profiles/ProfilesPreference;->mProfilesPref:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    const v0, 0x7f1301a0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/exsettings/profiles/ProfilesPreference;->mProfilesSettingsButton:Landroid/widget/ImageView;

    .line 59
    const v0, 0x1020016

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/exsettings/profiles/ProfilesPreference;->mTitleText:Landroid/widget/TextView;

    .line 60
    const v0, 0x1020010

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/exsettings/profiles/ProfilesPreference;->mSummaryText:Landroid/widget/TextView;

    .line 62
    iget-object v0, p0, Lcom/android/exsettings/profiles/ProfilesPreference;->mSettingsBundle:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/android/exsettings/profiles/ProfilesPreference;->mProfilesSettingsButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    invoke-direct {p0}, Lcom/android/exsettings/profiles/ProfilesPreference;->updatePreferenceViews()V

    .line 53
    :goto_0
    return-void

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/android/exsettings/profiles/ProfilesPreference;->mProfilesSettingsButton:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 72
    iget-object v1, p0, Lcom/android/exsettings/profiles/ProfilesPreference;->mProfilesSettingsButton:Landroid/widget/ImageView;

    if-ne p1, v1, :cond_1

    .line 74
    :try_start_0
    invoke-direct {p0}, Lcom/android/exsettings/profiles/ProfilesPreference;->startProfileConfigActivity()V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    :cond_0
    :goto_0
    return-void

    .line 75
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/content/ActivityNotFoundException;
    goto :goto_0

    .line 78
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    :cond_1
    iget-object v1, p0, Lcom/android/exsettings/profiles/ProfilesPreference;->mProfilesPref:Landroid/view/View;

    if-ne p1, v1, :cond_0

    .line 79
    invoke-virtual {p0}, Lcom/android/exsettings/profiles/ProfilesPreference;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/exsettings/profiles/ProfilesPreference;->isChecked()Z

    move-result v1

    if-nez v1, :cond_0

    .line 80
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/exsettings/profiles/ProfilesPreference;->setChecked(Z)V

    .line 81
    invoke-virtual {p0}, Lcom/android/exsettings/profiles/ProfilesPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/exsettings/profiles/ProfilesPreference;->callChangeListener(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public setEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 88
    invoke-super {p0, p1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 89
    if-eqz p1, :cond_0

    .line 90
    invoke-direct {p0}, Lcom/android/exsettings/profiles/ProfilesPreference;->updatePreferenceViews()V

    .line 87
    :goto_0
    return-void

    .line 92
    :cond_0
    invoke-direct {p0}, Lcom/android/exsettings/profiles/ProfilesPreference;->disablePreferenceViews()V

    goto :goto_0
.end method
