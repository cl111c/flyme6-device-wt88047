.class public Lcom/android/exsettings/applications/ProcessStatsUi;
.super Lcom/android/exsettings/applications/ProcessStatsBase;
.source "ProcessStatsUi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exsettings/applications/ProcessStatsUi$1;,
        Lcom/android/exsettings/applications/ProcessStatsUi$2;
    }
.end annotation


# static fields
.field public static final BACKGROUND_AND_SYSTEM_PROC_STATES:[I

.field public static final CACHED_PROC_STATES:[I

.field public static final FOREGROUND_PROC_STATES:[I

.field static final sMaxPackageEntryCompare:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/exsettings/applications/ProcStatsPackageEntry;",
            ">;"
        }
    .end annotation
.end field

.field static final sPackageEntryCompare:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/exsettings/applications/ProcStatsPackageEntry;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAppListGroup:Landroid/preference/PreferenceGroup;

.field private mMenuAvg:Landroid/view/MenuItem;

.field private mMenuMax:Landroid/view/MenuItem;

.field private mPm:Landroid/content/pm/PackageManager;

.field private mShowMax:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 123
    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/exsettings/applications/ProcessStatsUi;->BACKGROUND_AND_SYSTEM_PROC_STATES:[I

    .line 131
    new-array v0, v2, [I

    .line 132
    const/4 v1, 0x0

    aput v2, v0, v1

    .line 131
    sput-object v0, Lcom/android/exsettings/applications/ProcessStatsUi;->FOREGROUND_PROC_STATES:[I

    .line 136
    const/16 v0, 0xb

    const/16 v1, 0xc

    .line 137
    const/16 v2, 0xd

    .line 135
    filled-new-array {v0, v1, v2}, [I

    move-result-object v0

    sput-object v0, Lcom/android/exsettings/applications/ProcessStatsUi;->CACHED_PROC_STATES:[I

    .line 185
    new-instance v0, Lcom/android/exsettings/applications/ProcessStatsUi$1;

    invoke-direct {v0}, Lcom/android/exsettings/applications/ProcessStatsUi$1;-><init>()V

    .line 184
    sput-object v0, Lcom/android/exsettings/applications/ProcessStatsUi;->sPackageEntryCompare:Ljava/util/Comparator;

    .line 198
    new-instance v0, Lcom/android/exsettings/applications/ProcessStatsUi$2;

    invoke-direct {v0}, Lcom/android/exsettings/applications/ProcessStatsUi$2;-><init>()V

    .line 197
    sput-object v0, Lcom/android/exsettings/applications/ProcessStatsUi;->sMaxPackageEntryCompare:Ljava/util/Comparator;

    .line 41
    return-void

    .line 123
    :array_0
    .array-data 4
        0x0
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/exsettings/applications/ProcessStatsBase;-><init>()V

    return-void
.end method

.method private updateMenu()V
    .locals 2

    .prologue
    .line 90
    iget-object v1, p0, Lcom/android/exsettings/applications/ProcessStatsUi;->mMenuMax:Landroid/view/MenuItem;

    iget-boolean v0, p0, Lcom/android/exsettings/applications/ProcessStatsUi;->mShowMax:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 91
    iget-object v0, p0, Lcom/android/exsettings/applications/ProcessStatsUi;->mMenuAvg:Landroid/view/MenuItem;

    iget-boolean v1, p0, Lcom/android/exsettings/applications/ProcessStatsUi;->mShowMax:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 89
    return-void

    .line 90
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 96
    const/16 v0, 0x17

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 59
    invoke-super {p0, p1}, Lcom/android/exsettings/applications/ProcessStatsBase;->onCreate(Landroid/os/Bundle;)V

    .line 61
    invoke-virtual {p0}, Lcom/android/exsettings/applications/ProcessStatsUi;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/applications/ProcessStatsUi;->mPm:Landroid/content/pm/PackageManager;

    .line 63
    const v0, 0x7f08004a

    invoke-virtual {p0, v0}, Lcom/android/exsettings/applications/ProcessStatsUi;->addPreferencesFromResource(I)V

    .line 64
    const-string/jumbo v0, "app_list"

    invoke-virtual {p0, v0}, Lcom/android/exsettings/applications/ProcessStatsUi;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    iput-object v0, p0, Lcom/android/exsettings/applications/ProcessStatsUi;->mAppListGroup:Landroid/preference/PreferenceGroup;

    .line 65
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/exsettings/applications/ProcessStatsUi;->setHasOptionsMenu(Z)V

    .line 58
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v2, 0x0

    .line 70
    invoke-super {p0, p1, p2}, Lcom/android/exsettings/applications/ProcessStatsBase;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 71
    const/4 v0, 0x1

    const v1, 0x7f0c0f8a

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/applications/ProcessStatsUi;->mMenuAvg:Landroid/view/MenuItem;

    .line 72
    const/4 v0, 0x2

    const v1, 0x7f0c0f8b

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/applications/ProcessStatsUi;->mMenuMax:Landroid/view/MenuItem;

    .line 73
    invoke-direct {p0}, Lcom/android/exsettings/applications/ProcessStatsUi;->updateMenu()V

    .line 69
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v1, 0x1

    .line 78
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 86
    invoke-super {p0, p1}, Lcom/android/exsettings/applications/ProcessStatsBase;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 81
    :pswitch_0
    iget-boolean v0, p0, Lcom/android/exsettings/applications/ProcessStatsUi;->mShowMax:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/exsettings/applications/ProcessStatsUi;->mShowMax:Z

    .line 82
    invoke-virtual {p0}, Lcom/android/exsettings/applications/ProcessStatsUi;->refreshUi()V

    .line 83
    invoke-direct {p0}, Lcom/android/exsettings/applications/ProcessStatsUi;->updateMenu()V

    .line 84
    return v1

    :cond_0
    move v0, v1

    .line 81
    goto :goto_0

    .line 78
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 106
    instance-of v2, p2, Lcom/android/exsettings/applications/ProcessStatsPreference;

    if-nez v2, :cond_0

    .line 107
    const/4 v2, 0x0

    return v2

    :cond_0
    move-object v1, p2

    .line 109
    check-cast v1, Lcom/android/exsettings/applications/ProcessStatsPreference;

    .line 110
    .local v1, "pgp":Lcom/android/exsettings/applications/ProcessStatsPreference;
    iget-object v2, p0, Lcom/android/exsettings/applications/ProcessStatsUi;->mStatsManager:Lcom/android/exsettings/applications/ProcStatsData;

    invoke-virtual {v2}, Lcom/android/exsettings/applications/ProcStatsData;->getMemInfo()Lcom/android/exsettings/applications/ProcStatsData$MemInfo;

    move-result-object v0

    .line 111
    .local v0, "memInfo":Lcom/android/exsettings/applications/ProcStatsData$MemInfo;
    invoke-virtual {p0}, Lcom/android/exsettings/applications/ProcessStatsUi;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/android/exsettings/SettingsActivity;

    invoke-virtual {v1}, Lcom/android/exsettings/applications/ProcessStatsPreference;->getEntry()Lcom/android/exsettings/applications/ProcStatsPackageEntry;

    move-result-object v3

    invoke-static {v2, v0, v3}, Lcom/android/exsettings/applications/ProcessStatsUi;->launchMemoryDetail(Lcom/android/exsettings/SettingsActivity;Lcom/android/exsettings/applications/ProcStatsData$MemInfo;Lcom/android/exsettings/applications/ProcStatsPackageEntry;)V

    .line 113
    invoke-super {p0, p1, p2}, Lcom/android/exsettings/applications/ProcessStatsBase;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    return v2
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 101
    invoke-super {p0, p1}, Lcom/android/exsettings/applications/ProcessStatsBase;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 100
    return-void
.end method

.method public refreshUi()V
    .locals 15

    .prologue
    .line 148
    iget-object v3, p0, Lcom/android/exsettings/applications/ProcessStatsUi;->mAppListGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v3}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 149
    iget-object v3, p0, Lcom/android/exsettings/applications/ProcessStatsUi;->mAppListGroup:Landroid/preference/PreferenceGroup;

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Landroid/preference/PreferenceGroup;->setOrderingAsAdded(Z)V

    .line 150
    iget-object v6, p0, Lcom/android/exsettings/applications/ProcessStatsUi;->mAppListGroup:Landroid/preference/PreferenceGroup;

    iget-boolean v3, p0, Lcom/android/exsettings/applications/ProcessStatsUi;->mShowMax:Z

    if-eqz v3, :cond_0

    const v3, 0x7f0c0f84

    :goto_0
    invoke-virtual {v6, v3}, Landroid/preference/PreferenceGroup;->setTitle(I)V

    .line 153
    invoke-virtual {p0}, Lcom/android/exsettings/applications/ProcessStatsUi;->getActivity()Landroid/app/Activity;

    move-result-object v11

    .line 154
    .local v11, "context":Landroid/content/Context;
    iget-object v3, p0, Lcom/android/exsettings/applications/ProcessStatsUi;->mStatsManager:Lcom/android/exsettings/applications/ProcStatsData;

    invoke-virtual {v3}, Lcom/android/exsettings/applications/ProcStatsData;->getMemInfo()Lcom/android/exsettings/applications/ProcStatsData$MemInfo;

    move-result-object v13

    .line 156
    .local v13, "memInfo":Lcom/android/exsettings/applications/ProcStatsData$MemInfo;
    iget-object v3, p0, Lcom/android/exsettings/applications/ProcessStatsUi;->mStatsManager:Lcom/android/exsettings/applications/ProcStatsData;

    invoke-virtual {v3}, Lcom/android/exsettings/applications/ProcStatsData;->getEntries()Ljava/util/List;

    move-result-object v14

    .line 159
    .local v14, "pkgEntries":Ljava/util/List;, "Ljava/util/List<Lcom/android/exsettings/applications/ProcStatsPackageEntry;>;"
    const/4 v12, 0x0

    .local v12, "i":I
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v0

    .local v0, "N":I
    :goto_1
    if-ge v12, v0, :cond_1

    .line 160
    invoke-interface {v14, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/exsettings/applications/ProcStatsPackageEntry;

    .line 161
    .local v2, "pkg":Lcom/android/exsettings/applications/ProcStatsPackageEntry;
    invoke-virtual {v2}, Lcom/android/exsettings/applications/ProcStatsPackageEntry;->updateMetrics()V

    .line 159
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 151
    .end local v0    # "N":I
    .end local v2    # "pkg":Lcom/android/exsettings/applications/ProcStatsPackageEntry;
    .end local v11    # "context":Landroid/content/Context;
    .end local v12    # "i":I
    .end local v13    # "memInfo":Lcom/android/exsettings/applications/ProcStatsData$MemInfo;
    .end local v14    # "pkgEntries":Ljava/util/List;, "Ljava/util/List<Lcom/android/exsettings/applications/ProcStatsPackageEntry;>;"
    :cond_0
    const v3, 0x7f0c0f83

    goto :goto_0

    .line 164
    .restart local v0    # "N":I
    .restart local v11    # "context":Landroid/content/Context;
    .restart local v12    # "i":I
    .restart local v13    # "memInfo":Lcom/android/exsettings/applications/ProcStatsData$MemInfo;
    .restart local v14    # "pkgEntries":Ljava/util/List;, "Ljava/util/List<Lcom/android/exsettings/applications/ProcStatsPackageEntry;>;"
    :cond_1
    iget-boolean v3, p0, Lcom/android/exsettings/applications/ProcessStatsUi;->mShowMax:Z

    if-eqz v3, :cond_2

    sget-object v3, Lcom/android/exsettings/applications/ProcessStatsUi;->sMaxPackageEntryCompare:Ljava/util/Comparator;

    :goto_2
    invoke-static {v14, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 171
    iget-boolean v3, p0, Lcom/android/exsettings/applications/ProcessStatsUi;->mShowMax:Z

    if-eqz v3, :cond_3

    iget-wide v4, v13, Lcom/android/exsettings/applications/ProcStatsData$MemInfo;->realTotalRam:D

    .line 173
    .local v4, "maxMemory":D
    :goto_3
    const/4 v12, 0x0

    :goto_4
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v3

    if-ge v12, v3, :cond_5

    .line 174
    invoke-interface {v14, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/exsettings/applications/ProcStatsPackageEntry;

    .line 175
    .restart local v2    # "pkg":Lcom/android/exsettings/applications/ProcStatsPackageEntry;
    new-instance v1, Lcom/android/exsettings/applications/ProcessStatsPreference;

    invoke-direct {v1, v11}, Lcom/android/exsettings/applications/ProcessStatsPreference;-><init>(Landroid/content/Context;)V

    .line 176
    .local v1, "pref":Lcom/android/exsettings/applications/ProcessStatsPreference;
    iget-object v3, p0, Lcom/android/exsettings/applications/ProcessStatsUi;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v11, v3}, Lcom/android/exsettings/applications/ProcStatsPackageEntry;->retrieveUiData(Landroid/content/Context;Landroid/content/pm/PackageManager;)V

    .line 177
    iget-object v3, p0, Lcom/android/exsettings/applications/ProcessStatsUi;->mPm:Landroid/content/pm/PackageManager;

    iget-wide v6, v13, Lcom/android/exsettings/applications/ProcStatsData$MemInfo;->weightToRam:D

    .line 178
    iget-wide v8, v13, Lcom/android/exsettings/applications/ProcStatsData$MemInfo;->totalScale:D

    iget-boolean v10, p0, Lcom/android/exsettings/applications/ProcessStatsUi;->mShowMax:Z

    if-eqz v10, :cond_4

    const/4 v10, 0x0

    .line 177
    :goto_5
    invoke-virtual/range {v1 .. v10}, Lcom/android/exsettings/applications/ProcessStatsPreference;->init(Lcom/android/exsettings/applications/ProcStatsPackageEntry;Landroid/content/pm/PackageManager;DDDZ)V

    .line 179
    invoke-virtual {v1, v12}, Lcom/android/exsettings/applications/ProcessStatsPreference;->setOrder(I)V

    .line 180
    iget-object v3, p0, Lcom/android/exsettings/applications/ProcessStatsUi;->mAppListGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v3, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 173
    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    .line 164
    .end local v1    # "pref":Lcom/android/exsettings/applications/ProcessStatsPreference;
    .end local v2    # "pkg":Lcom/android/exsettings/applications/ProcStatsPackageEntry;
    .end local v4    # "maxMemory":D
    :cond_2
    sget-object v3, Lcom/android/exsettings/applications/ProcessStatsUi;->sPackageEntryCompare:Ljava/util/Comparator;

    goto :goto_2

    .line 172
    :cond_3
    iget-wide v6, v13, Lcom/android/exsettings/applications/ProcStatsData$MemInfo;->usedWeight:D

    iget-wide v8, v13, Lcom/android/exsettings/applications/ProcStatsData$MemInfo;->weightToRam:D

    mul-double v4, v6, v8

    .restart local v4    # "maxMemory":D
    goto :goto_3

    .line 178
    .restart local v1    # "pref":Lcom/android/exsettings/applications/ProcessStatsPreference;
    .restart local v2    # "pkg":Lcom/android/exsettings/applications/ProcStatsPackageEntry;
    :cond_4
    const/4 v10, 0x1

    goto :goto_5

    .line 147
    .end local v1    # "pref":Lcom/android/exsettings/applications/ProcessStatsPreference;
    .end local v2    # "pkg":Lcom/android/exsettings/applications/ProcStatsPackageEntry;
    :cond_5
    return-void
.end method
