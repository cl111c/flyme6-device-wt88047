.class public abstract Lcom/android/exsettings/applications/ProcessStatsBase;
.super Lcom/android/exsettings/SettingsPreferenceFragment;
.source "ProcessStatsBase.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# static fields
.field private static final DURATION_QUANTUM:J

.field protected static sDurationLabels:[I

.field protected static sDurations:[J


# instance fields
.field protected mDurationIndex:I

.field private mFilterAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mFilterSpinner:Landroid/widget/Spinner;

.field private mSpinnerHeader:Landroid/view/ViewGroup;

.field protected mStatsManager:Lcom/android/exsettings/applications/ProcStatsData;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x2

    .line 46
    sget-wide v0, Lcom/android/internal/app/ProcessStats;->COMMIT_PERIOD:J

    sput-wide v0, Lcom/android/exsettings/applications/ProcessStatsBase;->DURATION_QUANTUM:J

    .line 47
    const/4 v0, 0x4

    new-array v0, v0, [J

    .line 48
    sget-wide v2, Lcom/android/exsettings/applications/ProcessStatsBase;->DURATION_QUANTUM:J

    div-long/2addr v2, v6

    const-wide/32 v4, 0xa4cb80

    sub-long v2, v4, v2

    const/4 v1, 0x0

    aput-wide v2, v0, v1

    sget-wide v2, Lcom/android/exsettings/applications/ProcessStatsBase;->DURATION_QUANTUM:J

    div-long/2addr v2, v6

    const-wide/32 v4, 0x1499700

    sub-long v2, v4, v2

    const/4 v1, 0x1

    aput-wide v2, v0, v1

    .line 49
    sget-wide v2, Lcom/android/exsettings/applications/ProcessStatsBase;->DURATION_QUANTUM:J

    div-long/2addr v2, v6

    const-wide/32 v4, 0x2932e00

    sub-long v2, v4, v2

    const/4 v1, 0x2

    aput-wide v2, v0, v1

    sget-wide v2, Lcom/android/exsettings/applications/ProcessStatsBase;->DURATION_QUANTUM:J

    div-long/2addr v2, v6

    const-wide/32 v4, 0x5265c00

    sub-long v2, v4, v2

    const/4 v1, 0x3

    aput-wide v2, v0, v1

    .line 47
    sput-object v0, Lcom/android/exsettings/applications/ProcessStatsBase;->sDurations:[J

    .line 52
    const v0, 0x7f0c0bb5

    const v1, 0x7f0c0bb6

    .line 53
    const v2, 0x7f0c0bb7

    const v3, 0x7f0c0bb8

    .line 51
    filled-new-array {v0, v1, v2, v3}, [I

    move-result-object v0

    sput-object v0, Lcom/android/exsettings/applications/ProcessStatsBase;->sDurationLabels:[I

    .line 32
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method public static launchMemoryDetail(Lcom/android/exsettings/SettingsActivity;Lcom/android/exsettings/applications/ProcStatsData$MemInfo;Lcom/android/exsettings/applications/ProcStatsPackageEntry;)V
    .locals 10
    .param p0, "activity"    # Lcom/android/exsettings/SettingsActivity;
    .param p1, "memInfo"    # Lcom/android/exsettings/applications/ProcStatsData$MemInfo;
    .param p2, "entry"    # Lcom/android/exsettings/applications/ProcStatsPackageEntry;

    .prologue
    const/4 v4, 0x0

    .line 132
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 133
    .local v2, "args":Landroid/os/Bundle;
    const-string/jumbo v0, "package_entry"

    invoke-virtual {v2, v0, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 134
    const-string/jumbo v0, "weight_to_ram"

    iget-wide v6, p1, Lcom/android/exsettings/applications/ProcStatsData$MemInfo;->weightToRam:D

    invoke-virtual {v2, v0, v6, v7}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 135
    const-string/jumbo v0, "total_time"

    iget-wide v6, p1, Lcom/android/exsettings/applications/ProcStatsData$MemInfo;->memTotalTime:J

    invoke-virtual {v2, v0, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 136
    const-string/jumbo v0, "max_memory_usage"

    .line 137
    iget-wide v6, p1, Lcom/android/exsettings/applications/ProcStatsData$MemInfo;->usedWeight:D

    iget-wide v8, p1, Lcom/android/exsettings/applications/ProcStatsData$MemInfo;->weightToRam:D

    mul-double/2addr v6, v8

    .line 136
    invoke-virtual {v2, v0, v6, v7}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 138
    const-string/jumbo v0, "total_scale"

    iget-wide v6, p1, Lcom/android/exsettings/applications/ProcStatsData$MemInfo;->totalScale:D

    invoke-virtual {v2, v0, v6, v7}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 139
    const-class v0, Lcom/android/exsettings/applications/ProcessStatsDetail;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 140
    const v3, 0x7f0c0f85

    const/4 v6, 0x0

    move-object v0, p0

    move-object v5, v4

    .line 139
    invoke-virtual/range {v0 .. v6}, Lcom/android/exsettings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 131
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 65
    invoke-super {p0, p1}, Lcom/android/exsettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 67
    invoke-virtual {p0}, Lcom/android/exsettings/applications/ProcessStatsBase;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 68
    .local v0, "args":Landroid/os/Bundle;
    new-instance v3, Lcom/android/exsettings/applications/ProcStatsData;

    invoke-virtual {p0}, Lcom/android/exsettings/applications/ProcessStatsBase;->getActivity()Landroid/app/Activity;

    move-result-object v4

    if-nez p1, :cond_0

    .line 69
    if-eqz v0, :cond_1

    const-string/jumbo v1, "transfer_stats"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 68
    :goto_0
    invoke-direct {v3, v4, v1}, Lcom/android/exsettings/applications/ProcStatsData;-><init>(Landroid/content/Context;Z)V

    iput-object v3, p0, Lcom/android/exsettings/applications/ProcessStatsBase;->mStatsManager:Lcom/android/exsettings/applications/ProcStatsData;

    .line 71
    if-eqz p1, :cond_2

    .line 72
    const-string/jumbo v1, "duration_index"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 71
    :goto_1
    iput v1, p0, Lcom/android/exsettings/applications/ProcessStatsBase;->mDurationIndex:I

    .line 74
    iget-object v1, p0, Lcom/android/exsettings/applications/ProcessStatsBase;->mStatsManager:Lcom/android/exsettings/applications/ProcStatsData;

    if-eqz p1, :cond_4

    .line 75
    const-string/jumbo v3, "duration"

    sget-object v4, Lcom/android/exsettings/applications/ProcessStatsBase;->sDurations:[J

    aget-wide v4, v4, v2

    invoke-virtual {p1, v3, v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 74
    :goto_2
    invoke-virtual {v1, v2, v3}, Lcom/android/exsettings/applications/ProcStatsData;->setDuration(J)V

    .line 64
    return-void

    .line 68
    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v2

    .line 69
    goto :goto_0

    .line 73
    :cond_2
    if-eqz v0, :cond_3

    const-string/jumbo v1, "duration_index"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_1

    :cond_3
    move v1, v2

    goto :goto_1

    .line 75
    :cond_4
    sget-object v3, Lcom/android/exsettings/applications/ProcessStatsBase;->sDurations:[J

    aget-wide v2, v3, v2

    goto :goto_2
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 94
    invoke-super {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;->onDestroy()V

    .line 95
    invoke-virtual {p0}, Lcom/android/exsettings/applications/ProcessStatsBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/android/exsettings/applications/ProcessStatsBase;->mStatsManager:Lcom/android/exsettings/applications/ProcStatsData;

    invoke-virtual {v0}, Lcom/android/exsettings/applications/ProcStatsData;->xferStats()V

    .line 93
    :cond_0
    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 117
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iput p3, p0, Lcom/android/exsettings/applications/ProcessStatsBase;->mDurationIndex:I

    .line 118
    iget-object v0, p0, Lcom/android/exsettings/applications/ProcessStatsBase;->mStatsManager:Lcom/android/exsettings/applications/ProcStatsData;

    sget-object v1, Lcom/android/exsettings/applications/ProcessStatsBase;->sDurations:[J

    aget-wide v2, v1, p3

    invoke-virtual {v0, v2, v3}, Lcom/android/exsettings/applications/ProcStatsData;->setDuration(J)V

    .line 119
    invoke-virtual {p0}, Lcom/android/exsettings/applications/ProcessStatsBase;->refreshUi()V

    .line 116
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 125
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/android/exsettings/applications/ProcessStatsBase;->mFilterSpinner:Landroid/widget/Spinner;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 123
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 87
    invoke-super {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;->onResume()V

    .line 88
    iget-object v0, p0, Lcom/android/exsettings/applications/ProcessStatsBase;->mStatsManager:Lcom/android/exsettings/applications/ProcStatsData;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/exsettings/applications/ProcStatsData;->refreshStats(Z)V

    .line 89
    invoke-virtual {p0}, Lcom/android/exsettings/applications/ProcessStatsBase;->refreshUi()V

    .line 86
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 80
    invoke-super {p0, p1}, Lcom/android/exsettings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 81
    const-string/jumbo v0, "duration"

    iget-object v1, p0, Lcom/android/exsettings/applications/ProcessStatsBase;->mStatsManager:Lcom/android/exsettings/applications/ProcStatsData;

    invoke-virtual {v1}, Lcom/android/exsettings/applications/ProcStatsData;->getDuration()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 82
    const-string/jumbo v0, "duration_index"

    iget v1, p0, Lcom/android/exsettings/applications/ProcessStatsBase;->mDurationIndex:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 79
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 102
    invoke-super {p0, p1, p2}, Lcom/android/exsettings/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 103
    const v1, 0x7f040014

    invoke-virtual {p0, v1}, Lcom/android/exsettings/applications/ProcessStatsBase;->setPinnedHeaderView(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/exsettings/applications/ProcessStatsBase;->mSpinnerHeader:Landroid/view/ViewGroup;

    .line 104
    iget-object v1, p0, Lcom/android/exsettings/applications/ProcessStatsBase;->mSpinnerHeader:Landroid/view/ViewGroup;

    const v2, 0x7f130032

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    iput-object v1, p0, Lcom/android/exsettings/applications/ProcessStatsBase;->mFilterSpinner:Landroid/widget/Spinner;

    .line 105
    new-instance v1, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/android/exsettings/applications/ProcessStatsBase;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f040071

    invoke-direct {v1, v2, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/android/exsettings/applications/ProcessStatsBase;->mFilterAdapter:Landroid/widget/ArrayAdapter;

    .line 106
    iget-object v1, p0, Lcom/android/exsettings/applications/ProcessStatsBase;->mFilterAdapter:Landroid/widget/ArrayAdapter;

    const v2, 0x1090009

    invoke-virtual {v1, v2}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 107
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 108
    iget-object v1, p0, Lcom/android/exsettings/applications/ProcessStatsBase;->mFilterAdapter:Landroid/widget/ArrayAdapter;

    sget-object v2, Lcom/android/exsettings/applications/ProcessStatsBase;->sDurationLabels:[I

    aget v2, v2, v0

    invoke-virtual {p0, v2}, Lcom/android/exsettings/applications/ProcessStatsBase;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 107
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 110
    :cond_0
    iget-object v1, p0, Lcom/android/exsettings/applications/ProcessStatsBase;->mFilterSpinner:Landroid/widget/Spinner;

    iget-object v2, p0, Lcom/android/exsettings/applications/ProcessStatsBase;->mFilterAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 111
    iget-object v1, p0, Lcom/android/exsettings/applications/ProcessStatsBase;->mFilterSpinner:Landroid/widget/Spinner;

    iget v2, p0, Lcom/android/exsettings/applications/ProcessStatsBase;->mDurationIndex:I

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setSelection(I)V

    .line 112
    iget-object v1, p0, Lcom/android/exsettings/applications/ProcessStatsBase;->mFilterSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 101
    return-void
.end method

.method public abstract refreshUi()V
.end method
