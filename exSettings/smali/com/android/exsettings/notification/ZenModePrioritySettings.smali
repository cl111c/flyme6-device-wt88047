.class public Lcom/android/exsettings/notification/ZenModePrioritySettings;
.super Lcom/android/exsettings/notification/ZenModeSettingsBase;
.source "ZenModePrioritySettings.java"

# interfaces
.implements Lcom/android/exsettings/search/Indexable;


# instance fields
.field private mCalls:Lcom/android/exsettings/DropDownPreference;

.field private mDisableListeners:Z

.field private mEvents:Landroid/preference/SwitchPreference;

.field private mMessages:Lcom/android/exsettings/DropDownPreference;

.field private mReminders:Landroid/preference/SwitchPreference;

.field private mRepeatCallers:Landroid/preference/SwitchPreference;


# direct methods
.method static synthetic -get0(Lcom/android/exsettings/notification/ZenModePrioritySettings;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/exsettings/notification/ZenModePrioritySettings;->mDisableListeners:Z

    return v0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/exsettings/notification/ZenModeSettingsBase;-><init>()V

    return-void
.end method

.method private static addSources(Lcom/android/exsettings/DropDownPreference;)V
    .locals 2
    .param p0, "pref"    # Lcom/android/exsettings/DropDownPreference;

    .prologue
    .line 188
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const v1, 0x7f0c0ecf

    invoke-virtual {p0, v1, v0}, Lcom/android/exsettings/DropDownPreference;->addItem(ILjava/lang/Object;)V

    .line 189
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const v1, 0x7f0c0ed0

    invoke-virtual {p0, v1, v0}, Lcom/android/exsettings/DropDownPreference;->addItem(ILjava/lang/Object;)V

    .line 190
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const v1, 0x7f0c0ed1

    invoke-virtual {p0, v1, v0}, Lcom/android/exsettings/DropDownPreference;->addItem(ILjava/lang/Object;)V

    .line 191
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const v1, 0x7f0c0ed2

    invoke-virtual {p0, v1, v0}, Lcom/android/exsettings/DropDownPreference;->addItem(ILjava/lang/Object;)V

    .line 187
    return-void
.end method

.method private updateControls()V
    .locals 5

    .prologue
    const/4 v1, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 169
    iput-boolean v2, p0, Lcom/android/exsettings/notification/ZenModePrioritySettings;->mDisableListeners:Z

    .line 170
    iget-object v0, p0, Lcom/android/exsettings/notification/ZenModePrioritySettings;->mCalls:Lcom/android/exsettings/DropDownPreference;

    if-eqz v0, :cond_0

    .line 171
    iget-object v4, p0, Lcom/android/exsettings/notification/ZenModePrioritySettings;->mCalls:Lcom/android/exsettings/DropDownPreference;

    iget-object v0, p0, Lcom/android/exsettings/notification/ZenModePrioritySettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-boolean v0, v0, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/exsettings/notification/ZenModePrioritySettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget v0, v0, Landroid/service/notification/ZenModeConfig;->allowCallsFrom:I

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/android/exsettings/DropDownPreference;->setSelectedValue(Ljava/lang/Object;)V

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/android/exsettings/notification/ZenModePrioritySettings;->mMessages:Lcom/android/exsettings/DropDownPreference;

    iget-object v4, p0, Lcom/android/exsettings/notification/ZenModePrioritySettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-boolean v4, v4, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    if-eqz v4, :cond_1

    iget-object v1, p0, Lcom/android/exsettings/notification/ZenModePrioritySettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget v1, v1, Landroid/service/notification/ZenModeConfig;->allowMessagesFrom:I

    :cond_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/exsettings/DropDownPreference;->setSelectedValue(Ljava/lang/Object;)V

    .line 174
    iget-object v0, p0, Lcom/android/exsettings/notification/ZenModePrioritySettings;->mReminders:Landroid/preference/SwitchPreference;

    iget-object v1, p0, Lcom/android/exsettings/notification/ZenModePrioritySettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-boolean v1, v1, Landroid/service/notification/ZenModeConfig;->allowReminders:Z

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 175
    iget-object v0, p0, Lcom/android/exsettings/notification/ZenModePrioritySettings;->mEvents:Landroid/preference/SwitchPreference;

    iget-object v1, p0, Lcom/android/exsettings/notification/ZenModePrioritySettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-boolean v1, v1, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 176
    iget-object v0, p0, Lcom/android/exsettings/notification/ZenModePrioritySettings;->mRepeatCallers:Landroid/preference/SwitchPreference;

    iget-object v1, p0, Lcom/android/exsettings/notification/ZenModePrioritySettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-boolean v1, v1, Landroid/service/notification/ZenModeConfig;->allowRepeatCallers:Z

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 177
    iget-object v1, p0, Lcom/android/exsettings/notification/ZenModePrioritySettings;->mRepeatCallers:Landroid/preference/SwitchPreference;

    iget-object v0, p0, Lcom/android/exsettings/notification/ZenModePrioritySettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-boolean v0, v0, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    if-eqz v0, :cond_3

    .line 178
    iget-object v0, p0, Lcom/android/exsettings/notification/ZenModePrioritySettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget v0, v0, Landroid/service/notification/ZenModeConfig;->allowCallsFrom:I

    if-eqz v0, :cond_4

    move v0, v2

    .line 177
    :goto_1
    invoke-virtual {v1, v0}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 179
    iput-boolean v3, p0, Lcom/android/exsettings/notification/ZenModePrioritySettings;->mDisableListeners:Z

    .line 168
    return-void

    :cond_2
    move v0, v1

    .line 171
    goto :goto_0

    :cond_3
    move v0, v2

    .line 177
    goto :goto_1

    :cond_4
    move v0, v3

    .line 178
    goto :goto_1
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 184
    const/16 v0, 0x8d

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 51
    invoke-super {p0, p1}, Lcom/android/exsettings/notification/ZenModeSettingsBase;->onCreate(Landroid/os/Bundle;)V

    .line 52
    const v1, 0x7f08007d

    invoke-virtual {p0, v1}, Lcom/android/exsettings/notification/ZenModePrioritySettings;->addPreferencesFromResource(I)V

    .line 53
    invoke-virtual {p0}, Lcom/android/exsettings/notification/ZenModePrioritySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 55
    .local v0, "root":Landroid/preference/PreferenceScreen;
    const-string/jumbo v1, "reminders"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreference;

    iput-object v1, p0, Lcom/android/exsettings/notification/ZenModePrioritySettings;->mReminders:Landroid/preference/SwitchPreference;

    .line 56
    iget-object v1, p0, Lcom/android/exsettings/notification/ZenModePrioritySettings;->mReminders:Landroid/preference/SwitchPreference;

    new-instance v2, Lcom/android/exsettings/notification/ZenModePrioritySettings$1;

    invoke-direct {v2, p0}, Lcom/android/exsettings/notification/ZenModePrioritySettings$1;-><init>(Lcom/android/exsettings/notification/ZenModePrioritySettings;)V

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 70
    const-string/jumbo v1, "events"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreference;

    iput-object v1, p0, Lcom/android/exsettings/notification/ZenModePrioritySettings;->mEvents:Landroid/preference/SwitchPreference;

    .line 71
    iget-object v1, p0, Lcom/android/exsettings/notification/ZenModePrioritySettings;->mEvents:Landroid/preference/SwitchPreference;

    new-instance v2, Lcom/android/exsettings/notification/ZenModePrioritySettings$2;

    invoke-direct {v2, p0}, Lcom/android/exsettings/notification/ZenModePrioritySettings$2;-><init>(Lcom/android/exsettings/notification/ZenModePrioritySettings;)V

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 85
    const-string/jumbo v1, "messages"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/exsettings/DropDownPreference;

    iput-object v1, p0, Lcom/android/exsettings/notification/ZenModePrioritySettings;->mMessages:Lcom/android/exsettings/DropDownPreference;

    .line 86
    iget-object v1, p0, Lcom/android/exsettings/notification/ZenModePrioritySettings;->mMessages:Lcom/android/exsettings/DropDownPreference;

    invoke-static {v1}, Lcom/android/exsettings/notification/ZenModePrioritySettings;->addSources(Lcom/android/exsettings/DropDownPreference;)V

    .line 87
    iget-object v1, p0, Lcom/android/exsettings/notification/ZenModePrioritySettings;->mMessages:Lcom/android/exsettings/DropDownPreference;

    new-instance v2, Lcom/android/exsettings/notification/ZenModePrioritySettings$3;

    invoke-direct {v2, p0}, Lcom/android/exsettings/notification/ZenModePrioritySettings$3;-><init>(Lcom/android/exsettings/notification/ZenModePrioritySettings;)V

    invoke-virtual {v1, v2}, Lcom/android/exsettings/DropDownPreference;->setCallback(Lcom/android/exsettings/DropDownPreference$Callback;)V

    .line 108
    const-string/jumbo v1, "calls"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/exsettings/DropDownPreference;

    iput-object v1, p0, Lcom/android/exsettings/notification/ZenModePrioritySettings;->mCalls:Lcom/android/exsettings/DropDownPreference;

    .line 109
    iget-object v1, p0, Lcom/android/exsettings/notification/ZenModePrioritySettings;->mCalls:Lcom/android/exsettings/DropDownPreference;

    invoke-static {v1}, Lcom/android/exsettings/notification/ZenModePrioritySettings;->addSources(Lcom/android/exsettings/DropDownPreference;)V

    .line 110
    iget-object v1, p0, Lcom/android/exsettings/notification/ZenModePrioritySettings;->mCalls:Lcom/android/exsettings/DropDownPreference;

    new-instance v2, Lcom/android/exsettings/notification/ZenModePrioritySettings$4;

    invoke-direct {v2, p0}, Lcom/android/exsettings/notification/ZenModePrioritySettings$4;-><init>(Lcom/android/exsettings/notification/ZenModePrioritySettings;)V

    invoke-virtual {v1, v2}, Lcom/android/exsettings/DropDownPreference;->setCallback(Lcom/android/exsettings/DropDownPreference$Callback;)V

    .line 131
    const-string/jumbo v1, "repeat_callers"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreference;

    iput-object v1, p0, Lcom/android/exsettings/notification/ZenModePrioritySettings;->mRepeatCallers:Landroid/preference/SwitchPreference;

    .line 132
    iget-object v1, p0, Lcom/android/exsettings/notification/ZenModePrioritySettings;->mRepeatCallers:Landroid/preference/SwitchPreference;

    iget-object v2, p0, Lcom/android/exsettings/notification/ZenModePrioritySettings;->mContext:Landroid/content/Context;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    .line 133
    iget-object v4, p0, Lcom/android/exsettings/notification/ZenModePrioritySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10e009d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 132
    const v4, 0x7f0c0ed8

    invoke-virtual {v2, v4, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 135
    iget-object v1, p0, Lcom/android/exsettings/notification/ZenModePrioritySettings;->mRepeatCallers:Landroid/preference/SwitchPreference;

    new-instance v2, Lcom/android/exsettings/notification/ZenModePrioritySettings$5;

    invoke-direct {v2, p0}, Lcom/android/exsettings/notification/ZenModePrioritySettings$5;-><init>(Lcom/android/exsettings/notification/ZenModePrioritySettings;)V

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 150
    invoke-virtual {p0}, Lcom/android/exsettings/notification/ZenModePrioritySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 151
    const v2, 0x1120047

    .line 150
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 152
    const-string/jumbo v1, "zen_priority_allow_lights"

    invoke-virtual {p0, v1}, Lcom/android/exsettings/notification/ZenModePrioritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 155
    :cond_0
    invoke-direct {p0}, Lcom/android/exsettings/notification/ZenModePrioritySettings;->updateControls()V

    .line 50
    return-void
.end method

.method protected onZenModeChanged()V
    .locals 0

    .prologue
    .line 159
    return-void
.end method

.method protected onZenModeConfigChanged()V
    .locals 0

    .prologue
    .line 165
    invoke-direct {p0}, Lcom/android/exsettings/notification/ZenModePrioritySettings;->updateControls()V

    .line 164
    return-void
.end method
