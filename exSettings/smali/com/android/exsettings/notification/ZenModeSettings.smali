.class public Lcom/android/exsettings/notification/ZenModeSettings;
.super Lcom/android/exsettings/notification/ZenModeSettingsBase;
.source "ZenModeSettings.java"

# interfaces
.implements Lcom/android/exsettings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exsettings/notification/ZenModeSettings$1;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/exsettings/search/Indexable$SearchIndexProvider;


# instance fields
.field private mPrioritySettings:Landroid/preference/Preference;

.field private mZenAccess:Landroid/preference/Preference;


# direct methods
.method static synthetic -wrap0(Landroid/content/Context;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    invoke-static {p0}, Lcom/android/exsettings/notification/ZenModeSettings;->allKeyTitles(Landroid/content/Context;)Landroid/util/SparseArray;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 119
    new-instance v0, Lcom/android/exsettings/notification/ZenModeSettings$1;

    invoke-direct {v0}, Lcom/android/exsettings/notification/ZenModeSettings$1;-><init>()V

    .line 118
    sput-object v0, Lcom/android/exsettings/notification/ZenModeSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/exsettings/search/Indexable$SearchIndexProvider;

    .line 37
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/android/exsettings/notification/ZenModeSettingsBase;-><init>()V

    return-void
.end method

.method private static allKeyTitles(Landroid/content/Context;)Landroid/util/SparseArray;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 106
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 107
    .local v0, "rt":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    const-string/jumbo v1, "priority_settings"

    const v2, 0x7f0c0e79

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 108
    const-string/jumbo v1, "automation_settings"

    const v2, 0x7f0c0e7a

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 109
    return-object v0
.end method

.method private refreshZenAccess()V
    .locals 0

    .prologue
    .line 149
    return-void
.end method

.method private updateControls()V
    .locals 0

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/android/exsettings/notification/ZenModeSettings;->updatePrioritySettingsSummary()V

    .line 83
    return-void
.end method

.method private updatePrioritySettingsSummary()V
    .locals 3

    .prologue
    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 89
    .local v0, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const v1, 0x7f0c0ed3

    invoke-virtual {p0, v1}, Lcom/android/exsettings/notification/ZenModeSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    iget-object v1, p0, Lcom/android/exsettings/notification/ZenModeSettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-boolean v1, v1, Landroid/service/notification/ZenModeConfig;->allowReminders:Z

    if-eqz v1, :cond_0

    .line 91
    const v1, 0x7f0c035a

    invoke-virtual {p0, v1}, Lcom/android/exsettings/notification/ZenModeSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    :cond_0
    iget-object v1, p0, Lcom/android/exsettings/notification/ZenModeSettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-boolean v1, v1, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    if-eqz v1, :cond_1

    .line 94
    const v1, 0x7f0c035b

    invoke-virtual {p0, v1}, Lcom/android/exsettings/notification/ZenModeSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    :cond_1
    iget-object v1, p0, Lcom/android/exsettings/notification/ZenModeSettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-boolean v1, v1, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/exsettings/notification/ZenModeSettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-boolean v1, v1, Landroid/service/notification/ZenModeConfig;->allowRepeatCallers:Z

    if-eqz v1, :cond_3

    .line 97
    :cond_2
    const v1, 0x7f0c035c

    invoke-virtual {p0, v1}, Lcom/android/exsettings/notification/ZenModeSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    :cond_3
    iget-object v1, p0, Lcom/android/exsettings/notification/ZenModeSettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-boolean v1, v1, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    if-eqz v1, :cond_4

    .line 100
    const v1, 0x7f0c035d

    invoke-virtual {p0, v1}, Lcom/android/exsettings/notification/ZenModeSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    :cond_4
    iget-object v1, p0, Lcom/android/exsettings/notification/ZenModeSettings;->mPrioritySettings:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/exsettings/notification/ZenModeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/android/exsettings/Utils;->join(Landroid/content/res/Resources;Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 87
    return-void
.end method


# virtual methods
.method protected getHelpResource()I
    .locals 1

    .prologue
    .line 114
    const v0, 0x7f0c0dd3

    return v0
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 70
    const/16 v0, 0x4c

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 47
    invoke-super {p0, p1}, Lcom/android/exsettings/notification/ZenModeSettingsBase;->onCreate(Landroid/os/Bundle;)V

    .line 49
    const v1, 0x7f08007f

    invoke-virtual {p0, v1}, Lcom/android/exsettings/notification/ZenModeSettings;->addPreferencesFromResource(I)V

    .line 50
    invoke-virtual {p0}, Lcom/android/exsettings/notification/ZenModeSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 52
    .local v0, "root":Landroid/preference/PreferenceScreen;
    const-string/jumbo v1, "priority_settings"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/exsettings/notification/ZenModeSettings;->mPrioritySettings:Landroid/preference/Preference;

    .line 53
    iget-object v1, p0, Lcom/android/exsettings/notification/ZenModeSettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/exsettings/notification/ZenModeSettings;->isScheduleSupported(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 54
    const-string/jumbo v1, "automation_settings"

    invoke-virtual {p0, v1}, Lcom/android/exsettings/notification/ZenModeSettings;->removePreference(Ljava/lang/String;)V

    .line 57
    :cond_0
    const-string/jumbo v1, "manage_zen_access"

    invoke-virtual {p0, v1}, Lcom/android/exsettings/notification/ZenModeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/exsettings/notification/ZenModeSettings;->mZenAccess:Landroid/preference/Preference;

    .line 58
    invoke-direct {p0}, Lcom/android/exsettings/notification/ZenModeSettings;->refreshZenAccess()V

    .line 46
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 63
    invoke-super {p0}, Lcom/android/exsettings/notification/ZenModeSettingsBase;->onResume()V

    .line 64
    invoke-direct {p0}, Lcom/android/exsettings/notification/ZenModeSettings;->updateControls()V

    .line 65
    invoke-direct {p0}, Lcom/android/exsettings/notification/ZenModeSettings;->refreshZenAccess()V

    .line 62
    return-void
.end method

.method protected onZenModeChanged()V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/android/exsettings/notification/ZenModeSettings;->updateControls()V

    .line 74
    return-void
.end method

.method protected onZenModeConfigChanged()V
    .locals 0

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/android/exsettings/notification/ZenModeSettings;->updateControls()V

    .line 79
    return-void
.end method
