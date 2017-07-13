.class public Lcom/android/exsettings/applications/ProcessStatsSummary;
.super Lcom/android/exsettings/applications/ProcessStatsBase;
.source "ProcessStatsSummary.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mAppListPreference:Landroid/preference/Preference;

.field private mAppStartupPreference:Landroid/preference/Preference;

.field private mAverageUsed:Landroid/preference/Preference;

.field private mColors:Lcom/android/exsettings/applications/LinearColorBar;

.field private mFree:Landroid/preference/Preference;

.field private mHeader:Lcom/android/exsettings/applications/LayoutPreference;

.field private mMemStatus:Landroid/widget/TextView;

.field private mPerformance:Landroid/preference/Preference;

.field private mTotalMemory:Landroid/preference/Preference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/exsettings/applications/ProcessStatsBase;-><init>()V

    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 121
    const/16 v0, 0xca

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 62
    invoke-super {p0, p1}, Lcom/android/exsettings/applications/ProcessStatsBase;->onCreate(Landroid/os/Bundle;)V

    .line 64
    invoke-virtual {p0}, Lcom/android/exsettings/applications/ProcessStatsSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/applications/ProcessStatsSummary;->mActivity:Landroid/app/Activity;

    .line 66
    const v0, 0x7f080049

    invoke-virtual {p0, v0}, Lcom/android/exsettings/applications/ProcessStatsSummary;->addPreferencesFromResource(I)V

    .line 67
    const-string/jumbo v0, "status_header"

    invoke-virtual {p0, v0}, Lcom/android/exsettings/applications/ProcessStatsSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/exsettings/applications/LayoutPreference;

    iput-object v0, p0, Lcom/android/exsettings/applications/ProcessStatsSummary;->mHeader:Lcom/android/exsettings/applications/LayoutPreference;

    .line 68
    iget-object v0, p0, Lcom/android/exsettings/applications/ProcessStatsSummary;->mHeader:Lcom/android/exsettings/applications/LayoutPreference;

    const v1, 0x7f1301ba

    invoke-virtual {v0, v1}, Lcom/android/exsettings/applications/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/exsettings/applications/ProcessStatsSummary;->mMemStatus:Landroid/widget/TextView;

    .line 69
    iget-object v0, p0, Lcom/android/exsettings/applications/ProcessStatsSummary;->mHeader:Lcom/android/exsettings/applications/LayoutPreference;

    const v1, 0x7f1301bb

    invoke-virtual {v0, v1}, Lcom/android/exsettings/applications/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/exsettings/applications/LinearColorBar;

    iput-object v0, p0, Lcom/android/exsettings/applications/ProcessStatsSummary;->mColors:Lcom/android/exsettings/applications/LinearColorBar;

    .line 71
    const-string/jumbo v0, "performance"

    invoke-virtual {p0, v0}, Lcom/android/exsettings/applications/ProcessStatsSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/applications/ProcessStatsSummary;->mPerformance:Landroid/preference/Preference;

    .line 72
    const-string/jumbo v0, "total_memory"

    invoke-virtual {p0, v0}, Lcom/android/exsettings/applications/ProcessStatsSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/applications/ProcessStatsSummary;->mTotalMemory:Landroid/preference/Preference;

    .line 73
    const-string/jumbo v0, "average_used"

    invoke-virtual {p0, v0}, Lcom/android/exsettings/applications/ProcessStatsSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/applications/ProcessStatsSummary;->mAverageUsed:Landroid/preference/Preference;

    .line 74
    const-string/jumbo v0, "free"

    invoke-virtual {p0, v0}, Lcom/android/exsettings/applications/ProcessStatsSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/applications/ProcessStatsSummary;->mFree:Landroid/preference/Preference;

    .line 75
    const-string/jumbo v0, "apps_list"

    invoke-virtual {p0, v0}, Lcom/android/exsettings/applications/ProcessStatsSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/applications/ProcessStatsSummary;->mAppListPreference:Landroid/preference/Preference;

    .line 76
    iget-object v0, p0, Lcom/android/exsettings/applications/ProcessStatsSummary;->mAppListPreference:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 77
    const-string/jumbo v0, "apps_startup"

    invoke-virtual {p0, v0}, Lcom/android/exsettings/applications/ProcessStatsSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/applications/ProcessStatsSummary;->mAppStartupPreference:Landroid/preference/Preference;

    .line 78
    iget-object v0, p0, Lcom/android/exsettings/applications/ProcessStatsSummary;->mAppStartupPreference:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 61
    return-void
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 8
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v4, 0x0

    const/4 v7, 0x1

    .line 126
    iget-object v0, p0, Lcom/android/exsettings/applications/ProcessStatsSummary;->mAppListPreference:Landroid/preference/Preference;

    if-ne p1, v0, :cond_0

    .line 127
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 128
    .local v5, "args":Landroid/os/Bundle;
    const-string/jumbo v0, "transfer_stats"

    invoke-virtual {v5, v0, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 129
    const-string/jumbo v0, "duration_index"

    iget v1, p0, Lcom/android/exsettings/applications/ProcessStatsSummary;->mDurationIndex:I

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 130
    iget-object v0, p0, Lcom/android/exsettings/applications/ProcessStatsSummary;->mStatsManager:Lcom/android/exsettings/applications/ProcStatsData;

    invoke-virtual {v0}, Lcom/android/exsettings/applications/ProcStatsData;->xferStats()V

    .line 131
    const-class v0, Lcom/android/exsettings/applications/ProcessStatsUi;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0c0f86

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/exsettings/applications/ProcessStatsSummary;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    .line 133
    return v7

    .line 134
    .end local v5    # "args":Landroid/os/Bundle;
    :cond_0
    iget-object v0, p0, Lcom/android/exsettings/applications/ProcessStatsSummary;->mAppStartupPreference:Landroid/preference/Preference;

    if-ne p1, v0, :cond_1

    .line 135
    new-instance v6, Landroid/content/Intent;

    const-string/jumbo v0, "android.intent.action.MAIN"

    invoke-direct {v6, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 136
    .local v6, "intent":Landroid/content/Intent;
    const-string/jumbo v0, "appops_tab"

    const v1, 0x7f0c013e

    invoke-virtual {p0, v1}, Lcom/android/exsettings/applications/ProcessStatsSummary;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 137
    iget-object v0, p0, Lcom/android/exsettings/applications/ProcessStatsSummary;->mActivity:Landroid/app/Activity;

    const-class v1, Lcom/android/exsettings/Settings$AppOpsSummaryActivity;

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 138
    iget-object v0, p0, Lcom/android/exsettings/applications/ProcessStatsSummary;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v6}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 139
    return v7

    .line 141
    .end local v6    # "intent":Landroid/content/Intent;
    :cond_1
    return v4
.end method

.method public refreshUi()V
    .locals 28

    .prologue
    .line 83
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/applications/ProcessStatsSummary;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 84
    .local v4, "context":Landroid/content/Context;
    const v22, 0x7f0e007c

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Landroid/content/Context;->getColor(I)I

    move-result v9

    .line 85
    .local v9, "memColor":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/applications/ProcessStatsSummary;->mColors:Lcom/android/exsettings/applications/LinearColorBar;

    move-object/from16 v22, v0

    const v23, 0x7f0e007d

    move/from16 v0, v23

    invoke-virtual {v4, v0}, Landroid/content/Context;->getColor(I)I

    move-result v23

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v0, v9, v9, v1}, Lcom/android/exsettings/applications/LinearColorBar;->setColors(III)V

    .line 87
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/applications/ProcessStatsSummary;->mStatsManager:Lcom/android/exsettings/applications/ProcStatsData;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/exsettings/applications/ProcStatsData;->getMemInfo()Lcom/android/exsettings/applications/ProcStatsData$MemInfo;

    move-result-object v10

    .line 89
    .local v10, "memInfo":Lcom/android/exsettings/applications/ProcStatsData$MemInfo;
    iget-wide v0, v10, Lcom/android/exsettings/applications/ProcStatsData$MemInfo;->realUsedRam:D

    move-wide/from16 v18, v0

    .line 90
    .local v18, "usedRam":D
    iget-wide v0, v10, Lcom/android/exsettings/applications/ProcStatsData$MemInfo;->realTotalRam:D

    move-wide/from16 v16, v0

    .line 91
    .local v16, "totalRam":D
    iget-wide v6, v10, Lcom/android/exsettings/applications/ProcStatsData$MemInfo;->realFreeRam:D

    .line 92
    .local v6, "freeRam":D
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    move-wide/from16 v0, v18

    double-to-long v0, v0

    move-wide/from16 v24, v0

    .line 93
    const/16 v23, 0x1

    .line 92
    move-object/from16 v0, v22

    move-wide/from16 v1, v24

    move/from16 v3, v23

    invoke-static {v0, v1, v2, v3}, Landroid/text/format/Formatter;->formatBytes(Landroid/content/res/Resources;JI)Landroid/text/format/Formatter$BytesResult;

    move-result-object v21

    .line 94
    .local v21, "usedResult":Landroid/text/format/Formatter$BytesResult;
    move-wide/from16 v0, v16

    double-to-long v0, v0

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    invoke-static {v4, v0, v1}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v15

    .line 95
    .local v15, "totalString":Ljava/lang/String;
    double-to-long v0, v6

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    invoke-static {v4, v0, v1}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v8

    .line 97
    .local v8, "freeString":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/applications/ProcessStatsSummary;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x7f0a0062

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v12

    .line 98
    .local v12, "memStatesStr":[Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/applications/ProcessStatsSummary;->mStatsManager:Lcom/android/exsettings/applications/ProcStatsData;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/exsettings/applications/ProcStatsData;->getMemState()I

    move-result v11

    .line 99
    .local v11, "memState":I
    if-ltz v11, :cond_0

    array-length v0, v12

    move/from16 v22, v0

    add-int/lit8 v22, v22, -0x1

    move/from16 v0, v22

    if-ge v11, v0, :cond_0

    .line 100
    aget-object v13, v12, v11

    .line 104
    .local v13, "memString":Ljava/lang/CharSequence;
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/applications/ProcessStatsSummary;->mMemStatus:Landroid/widget/TextView;

    move-object/from16 v22, v0

    const v23, 0x7f0c089a

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/exsettings/applications/ProcessStatsSummary;->getText(I)Ljava/lang/CharSequence;

    move-result-object v23

    const/16 v24, 0x2

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/CharSequence;

    move-object/from16 v24, v0

    .line 105
    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/text/format/Formatter$BytesResult;->value:Ljava/lang/String;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v25, v24, v26

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/text/format/Formatter$BytesResult;->units:Ljava/lang/String;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    aput-object v25, v24, v26

    .line 104
    invoke-static/range {v23 .. v24}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    add-double v22, v6, v18

    div-double v22, v18, v22

    move-wide/from16 v0, v22

    double-to-float v0, v0

    move/from16 v20, v0

    .line 107
    .local v20, "usedRatio":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/applications/ProcessStatsSummary;->mColors:Lcom/android/exsettings/applications/LinearColorBar;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/high16 v24, 0x3f800000    # 1.0f

    sub-float v24, v24, v20

    move-object/from16 v0, v22

    move/from16 v1, v20

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/exsettings/applications/LinearColorBar;->setRatios(FFF)V

    .line 109
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/applications/ProcessStatsSummary;->mPerformance:Landroid/preference/Preference;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 110
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/applications/ProcessStatsSummary;->mTotalMemory:Landroid/preference/Preference;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 111
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/applications/ProcessStatsSummary;->mAverageUsed:Landroid/preference/Preference;

    move-object/from16 v22, v0

    move-wide/from16 v0, v18

    double-to-long v0, v0

    move-wide/from16 v24, v0

    move-wide/from16 v0, v16

    double-to-long v0, v0

    move-wide/from16 v26, v0

    invoke-static/range {v24 .. v27}, Lcom/android/exsettings/Utils;->formatPercentage(JJ)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 112
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/applications/ProcessStatsSummary;->mFree:Landroid/preference/Preference;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 113
    sget-object v22, Lcom/android/exsettings/applications/ProcessStatsSummary;->sDurationLabels:[I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/exsettings/applications/ProcessStatsSummary;->mDurationIndex:I

    move/from16 v23, v0

    aget v22, v22, v23

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/exsettings/applications/ProcessStatsSummary;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 114
    .local v5, "durationString":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/applications/ProcessStatsSummary;->mStatsManager:Lcom/android/exsettings/applications/ProcStatsData;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/exsettings/applications/ProcStatsData;->getEntries()Ljava/util/List;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v14

    .line 115
    .local v14, "numApps":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/applications/ProcessStatsSummary;->mAppListPreference:Landroid/preference/Preference;

    move-object/from16 v22, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/applications/ProcessStatsSummary;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const/16 v24, 0x2

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    .line 116
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    const/16 v26, 0x0

    aput-object v25, v24, v26

    const/16 v25, 0x1

    aput-object v5, v24, v25

    const v25, 0x7f110015

    .line 115
    move-object/from16 v0, v23

    move/from16 v1, v25

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v14, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 82
    return-void

    .line 102
    .end local v5    # "durationString":Ljava/lang/String;
    .end local v13    # "memString":Ljava/lang/CharSequence;
    .end local v14    # "numApps":I
    .end local v20    # "usedRatio":F
    :cond_0
    array-length v0, v12

    move/from16 v22, v0

    add-int/lit8 v22, v22, -0x1

    aget-object v13, v12, v22

    .restart local v13    # "memString":Ljava/lang/CharSequence;
    goto/16 :goto_0
.end method
