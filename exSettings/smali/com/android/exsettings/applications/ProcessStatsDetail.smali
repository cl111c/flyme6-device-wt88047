.class public Lcom/android/exsettings/applications/ProcessStatsDetail;
.super Lcom/android/exsettings/SettingsPreferenceFragment;
.source "ProcessStatsDetail.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exsettings/applications/ProcessStatsDetail$PkgService;,
        Lcom/android/exsettings/applications/ProcessStatsDetail$1;,
        Lcom/android/exsettings/applications/ProcessStatsDetail$2;,
        Lcom/android/exsettings/applications/ProcessStatsDetail$3;
    }
.end annotation


# static fields
.field static final sEntryCompare:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/exsettings/applications/ProcStatsEntry;",
            ">;"
        }
    .end annotation
.end field

.field static final sServiceCompare:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/exsettings/applications/ProcStatsEntry$Service;",
            ">;"
        }
    .end annotation
.end field

.field static final sServicePkgCompare:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/exsettings/applications/ProcessStatsDetail$PkgService;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mApp:Lcom/android/exsettings/applications/ProcStatsPackageEntry;

.field private mColorBar:Lcom/android/exsettings/applications/LinearColorBar;

.field private mDpm:Landroid/app/admin/DevicePolicyManager;

.field private mForceStop:Landroid/view/MenuItem;

.field private mMaxMemoryUsage:D

.field private mOnePercentTime:J

.field private mPm:Landroid/content/pm/PackageManager;

.field private mProcGroup:Landroid/preference/PreferenceCategory;

.field private final mServiceMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/content/ComponentName;",
            "Lcom/android/exsettings/CancellablePreference;",
            ">;"
        }
    .end annotation
.end field

.field private mTotalScale:D

.field private mTotalTime:J

.field private mWeightToRam:D


# direct methods
.method static synthetic -wrap0(Lcom/android/exsettings/applications/ProcessStatsDetail;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/exsettings/applications/ProcessStatsDetail;->doStopService(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/exsettings/applications/ProcessStatsDetail;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/exsettings/applications/ProcessStatsDetail;->stopService(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 222
    new-instance v0, Lcom/android/exsettings/applications/ProcessStatsDetail$1;

    invoke-direct {v0}, Lcom/android/exsettings/applications/ProcessStatsDetail$1;-><init>()V

    sput-object v0, Lcom/android/exsettings/applications/ProcessStatsDetail;->sEntryCompare:Ljava/util/Comparator;

    .line 295
    new-instance v0, Lcom/android/exsettings/applications/ProcessStatsDetail$2;

    invoke-direct {v0}, Lcom/android/exsettings/applications/ProcessStatsDetail$2;-><init>()V

    .line 294
    sput-object v0, Lcom/android/exsettings/applications/ProcessStatsDetail;->sServiceCompare:Ljava/util/Comparator;

    .line 307
    new-instance v0, Lcom/android/exsettings/applications/ProcessStatsDetail$3;

    invoke-direct {v0}, Lcom/android/exsettings/applications/ProcessStatsDetail$3;-><init>()V

    sput-object v0, Lcom/android/exsettings/applications/ProcessStatsDetail;->sServicePkgCompare:Ljava/util/Comparator;

    .line 60
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;-><init>()V

    .line 79
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/exsettings/applications/ProcessStatsDetail;->mServiceMap:Landroid/util/ArrayMap;

    .line 60
    return-void
.end method

.method private static capitalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "processName"    # Ljava/lang/String;

    .prologue
    .line 269
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 270
    .local v0, "c":C
    invoke-static {v0}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v1

    if-nez v1, :cond_0

    .line 271
    return-object p0

    .line 273
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private checkForceStop()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 427
    iget-object v7, p0, Lcom/android/exsettings/applications/ProcessStatsDetail;->mForceStop:Landroid/view/MenuItem;

    if-nez v7, :cond_0

    .line 428
    return-void

    .line 430
    :cond_0
    iget-object v7, p0, Lcom/android/exsettings/applications/ProcessStatsDetail;->mApp:Lcom/android/exsettings/applications/ProcStatsPackageEntry;

    iget-object v7, v7, Lcom/android/exsettings/applications/ProcStatsPackageEntry;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/exsettings/applications/ProcStatsEntry;

    iget v7, v7, Lcom/android/exsettings/applications/ProcStatsEntry;->mUid:I

    const/16 v8, 0x2710

    if-ge v7, v8, :cond_1

    .line 431
    iget-object v7, p0, Lcom/android/exsettings/applications/ProcessStatsDetail;->mForceStop:Landroid/view/MenuItem;

    invoke-interface {v7, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 432
    return-void

    .line 434
    :cond_1
    const/4 v4, 0x0

    .line 435
    .local v4, "isStarted":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v7, p0, Lcom/android/exsettings/applications/ProcessStatsDetail;->mApp:Lcom/android/exsettings/applications/ProcStatsPackageEntry;

    iget-object v7, v7, Lcom/android/exsettings/applications/ProcStatsPackageEntry;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v2, v7, :cond_5

    .line 436
    iget-object v7, p0, Lcom/android/exsettings/applications/ProcessStatsDetail;->mApp:Lcom/android/exsettings/applications/ProcStatsPackageEntry;

    iget-object v7, v7, Lcom/android/exsettings/applications/ProcStatsPackageEntry;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/exsettings/applications/ProcStatsEntry;

    .line 437
    .local v1, "ent":Lcom/android/exsettings/applications/ProcStatsEntry;
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_1
    iget-object v7, v1, Lcom/android/exsettings/applications/ProcStatsEntry;->mPackages:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v5, v7, :cond_4

    .line 438
    iget-object v7, v1, Lcom/android/exsettings/applications/ProcStatsEntry;->mPackages:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 439
    .local v6, "pkg":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/exsettings/applications/ProcessStatsDetail;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v7, v6}, Landroid/app/admin/DevicePolicyManager;->packageHasActiveAdmins(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 440
    iget-object v7, p0, Lcom/android/exsettings/applications/ProcessStatsDetail;->mForceStop:Landroid/view/MenuItem;

    invoke-interface {v7, v9}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 441
    return-void

    .line 444
    :cond_2
    :try_start_0
    iget-object v7, p0, Lcom/android/exsettings/applications/ProcessStatsDetail;->mPm:Landroid/content/pm/PackageManager;

    const/4 v8, 0x0

    invoke-virtual {v7, v6, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 445
    .local v3, "info":Landroid/content/pm/ApplicationInfo;
    iget v7, v3, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/high16 v8, 0x200000

    and-int/2addr v7, v8

    if-nez v7, :cond_3

    .line 446
    const/4 v4, 0x1

    .line 437
    .end local v3    # "info":Landroid/content/pm/ApplicationInfo;
    :cond_3
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 435
    .end local v6    # "pkg":Ljava/lang/String;
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 452
    .end local v1    # "ent":Lcom/android/exsettings/applications/ProcStatsEntry;
    .end local v5    # "j":I
    :cond_5
    if-eqz v4, :cond_6

    .line 453
    iget-object v7, p0, Lcom/android/exsettings/applications/ProcessStatsDetail;->mForceStop:Landroid/view/MenuItem;

    const/4 v8, 0x1

    invoke-interface {v7, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 426
    :cond_6
    return-void

    .line 448
    .restart local v1    # "ent":Lcom/android/exsettings/applications/ProcStatsEntry;
    .restart local v5    # "j":I
    .restart local v6    # "pkg":Ljava/lang/String;
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_2
.end method

.method private createDetails()V
    .locals 18

    .prologue
    .line 177
    const v14, 0x7f08000a

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/exsettings/applications/ProcessStatsDetail;->addPreferencesFromResource(I)V

    .line 179
    const-string/jumbo v14, "processes"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/exsettings/applications/ProcessStatsDetail;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    check-cast v14, Landroid/preference/PreferenceCategory;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/exsettings/applications/ProcessStatsDetail;->mProcGroup:Landroid/preference/PreferenceCategory;

    .line 180
    invoke-direct/range {p0 .. p0}, Lcom/android/exsettings/applications/ProcessStatsDetail;->fillProcessesSection()V

    .line 182
    const-string/jumbo v14, "status_header"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/exsettings/applications/ProcessStatsDetail;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Lcom/android/exsettings/applications/LayoutPreference;

    .line 185
    .local v9, "headerLayout":Lcom/android/exsettings/applications/LayoutPreference;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/exsettings/applications/ProcessStatsDetail;->mApp:Lcom/android/exsettings/applications/ProcStatsPackageEntry;

    iget-wide v14, v14, Lcom/android/exsettings/applications/ProcStatsPackageEntry;->mRunWeight:D

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/applications/ProcessStatsDetail;->mApp:Lcom/android/exsettings/applications/ProcStatsPackageEntry;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/android/exsettings/applications/ProcStatsPackageEntry;->mBgWeight:D

    move-wide/from16 v16, v0

    cmpl-double v14, v14, v16

    if-lez v14, :cond_0

    const/4 v13, 0x1

    .line 186
    .local v13, "statsForeground":Z
    :goto_0
    if-eqz v13, :cond_1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/exsettings/applications/ProcessStatsDetail;->mApp:Lcom/android/exsettings/applications/ProcStatsPackageEntry;

    iget-wide v14, v14, Lcom/android/exsettings/applications/ProcStatsPackageEntry;->mRunWeight:D

    :goto_1
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/exsettings/applications/ProcessStatsDetail;->mWeightToRam:D

    move-wide/from16 v16, v0

    mul-double v2, v14, v16

    .line 187
    .local v2, "avgRam":D
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/exsettings/applications/ProcessStatsDetail;->mMaxMemoryUsage:D

    div-double v14, v2, v14

    double-to-float v4, v14

    .line 188
    .local v4, "avgRatio":F
    const/high16 v14, 0x3f800000    # 1.0f

    sub-float v12, v14, v4

    .line 189
    .local v12, "remainingRatio":F
    const v14, 0x7f1301bb

    invoke-virtual {v9, v14}, Lcom/android/exsettings/applications/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Lcom/android/exsettings/applications/LinearColorBar;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/exsettings/applications/ProcessStatsDetail;->mColorBar:Lcom/android/exsettings/applications/LinearColorBar;

    .line 190
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/applications/ProcessStatsDetail;->getActivity()Landroid/app/Activity;

    move-result-object v5

    .line 191
    .local v5, "context":Landroid/content/Context;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/exsettings/applications/ProcessStatsDetail;->mColorBar:Lcom/android/exsettings/applications/LinearColorBar;

    const v15, 0x7f0e008e

    invoke-virtual {v5, v15}, Landroid/content/Context;->getColor(I)I

    move-result v15

    .line 192
    const v16, 0x7f0e008f

    move/from16 v0, v16

    invoke-virtual {v5, v0}, Landroid/content/Context;->getColor(I)I

    move-result v16

    .line 191
    const/16 v17, 0x0

    move/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v14, v15, v0, v1}, Lcom/android/exsettings/applications/LinearColorBar;->setColors(III)V

    .line 193
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/exsettings/applications/ProcessStatsDetail;->mColorBar:Lcom/android/exsettings/applications/LinearColorBar;

    const/4 v15, 0x0

    invoke-virtual {v14, v4, v15, v12}, Lcom/android/exsettings/applications/LinearColorBar;->setRatios(FFF)V

    .line 194
    const v14, 0x7f1301ba

    invoke-virtual {v9, v14}, Lcom/android/exsettings/applications/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 195
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/applications/ProcessStatsDetail;->getContext()Landroid/content/Context;

    move-result-object v15

    double-to-long v0, v2

    move-wide/from16 v16, v0

    invoke-static/range {v15 .. v17}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v15

    .line 194
    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 197
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/exsettings/applications/ProcessStatsDetail;->mApp:Lcom/android/exsettings/applications/ProcStatsPackageEntry;

    iget-wide v14, v14, Lcom/android/exsettings/applications/ProcStatsPackageEntry;->mRunDuration:J

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/applications/ProcessStatsDetail;->mApp:Lcom/android/exsettings/applications/ProcStatsPackageEntry;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/android/exsettings/applications/ProcStatsPackageEntry;->mBgDuration:J

    move-wide/from16 v16, v0

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    .line 198
    .local v6, "duration":J
    long-to-float v14, v6

    .line 199
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/exsettings/applications/ProcessStatsDetail;->mTotalTime:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    long-to-float v15, v0

    .line 198
    div-float/2addr v14, v15

    .line 199
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/applications/ProcessStatsDetail;->getActivity()Landroid/app/Activity;

    move-result-object v15

    .line 198
    invoke-static {v14, v15}, Lcom/android/exsettings/applications/ProcStatsPackageEntry;->getFrequency(FLandroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v8

    .line 200
    .local v8, "frequency":Ljava/lang/CharSequence;
    const-string/jumbo v14, "frequency"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/exsettings/applications/ProcessStatsDetail;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    invoke-virtual {v14, v8}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 201
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/exsettings/applications/ProcessStatsDetail;->mApp:Lcom/android/exsettings/applications/ProcStatsPackageEntry;

    iget-wide v14, v14, Lcom/android/exsettings/applications/ProcStatsPackageEntry;->mMaxBgMem:J

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/applications/ProcessStatsDetail;->mApp:Lcom/android/exsettings/applications/ProcStatsPackageEntry;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/android/exsettings/applications/ProcStatsPackageEntry;->mMaxRunMem:J

    move-wide/from16 v16, v0

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v14

    long-to-double v14, v14

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/exsettings/applications/ProcessStatsDetail;->mTotalScale:D

    move-wide/from16 v16, v0

    mul-double v14, v14, v16

    const-wide/high16 v16, 0x4090000000000000L    # 1024.0

    mul-double v10, v14, v16

    .line 202
    .local v10, "max":D
    const-string/jumbo v14, "max_usage"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/exsettings/applications/ProcessStatsDetail;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    .line 203
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/applications/ProcessStatsDetail;->getContext()Landroid/content/Context;

    move-result-object v15

    double-to-long v0, v10

    move-wide/from16 v16, v0

    invoke-static/range {v15 .. v17}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v15

    .line 202
    invoke-virtual {v14, v15}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 176
    return-void

    .line 185
    .end local v2    # "avgRam":D
    .end local v4    # "avgRatio":F
    .end local v5    # "context":Landroid/content/Context;
    .end local v6    # "duration":J
    .end local v8    # "frequency":Ljava/lang/CharSequence;
    .end local v10    # "max":D
    .end local v12    # "remainingRatio":F
    .end local v13    # "statsForeground":Z
    :cond_0
    const/4 v13, 0x0

    .restart local v13    # "statsForeground":Z
    goto/16 :goto_0

    .line 186
    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/exsettings/applications/ProcessStatsDetail;->mApp:Lcom/android/exsettings/applications/ProcStatsPackageEntry;

    iget-wide v14, v14, Lcom/android/exsettings/applications/ProcStatsPackageEntry;->mBgWeight:D

    goto/16 :goto_1
.end method

.method private doStopService(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 411
    invoke-virtual {p0}, Lcom/android/exsettings/applications/ProcessStatsDetail;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v1, p1, p2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->stopService(Landroid/content/Intent;)Z

    .line 412
    invoke-direct {p0}, Lcom/android/exsettings/applications/ProcessStatsDetail;->updateRunningServices()V

    .line 410
    return-void
.end method

.method private fillProcessesSection()V
    .locals 18

    .prologue
    .line 235
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/exsettings/applications/ProcessStatsDetail;->mProcGroup:Landroid/preference/PreferenceCategory;

    invoke-virtual {v12}, Landroid/preference/PreferenceCategory;->removeAll()V

    .line 236
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 237
    .local v4, "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/exsettings/applications/ProcStatsEntry;>;"
    const/4 v7, 0x0

    .local v7, "ie":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/exsettings/applications/ProcessStatsDetail;->mApp:Lcom/android/exsettings/applications/ProcStatsPackageEntry;

    iget-object v12, v12, Lcom/android/exsettings/applications/ProcStatsPackageEntry;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v7, v12, :cond_1

    .line 238
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/exsettings/applications/ProcessStatsDetail;->mApp:Lcom/android/exsettings/applications/ProcStatsPackageEntry;

    iget-object v12, v12, Lcom/android/exsettings/applications/ProcStatsPackageEntry;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v12, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/exsettings/applications/ProcStatsEntry;

    .line 239
    .local v5, "entry":Lcom/android/exsettings/applications/ProcStatsEntry;
    iget-object v12, v5, Lcom/android/exsettings/applications/ProcStatsEntry;->mPackage:Ljava/lang/String;

    const-string/jumbo v13, "os"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 240
    iget-object v12, v5, Lcom/android/exsettings/applications/ProcStatsEntry;->mName:Ljava/lang/String;

    iput-object v12, v5, Lcom/android/exsettings/applications/ProcStatsEntry;->mLabel:Ljava/lang/CharSequence;

    .line 244
    :goto_1
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 237
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 242
    :cond_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/exsettings/applications/ProcessStatsDetail;->mApp:Lcom/android/exsettings/applications/ProcStatsPackageEntry;

    iget-object v12, v12, Lcom/android/exsettings/applications/ProcStatsPackageEntry;->mUiLabel:Ljava/lang/String;

    invoke-static {v12, v5}, Lcom/android/exsettings/applications/ProcessStatsDetail;->getProcessName(Ljava/lang/String;Lcom/android/exsettings/applications/ProcStatsEntry;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v5, Lcom/android/exsettings/applications/ProcStatsEntry;->mLabel:Ljava/lang/CharSequence;

    goto :goto_1

    .line 246
    .end local v5    # "entry":Lcom/android/exsettings/applications/ProcStatsEntry;
    :cond_1
    sget-object v12, Lcom/android/exsettings/applications/ProcessStatsDetail;->sEntryCompare:Ljava/util/Comparator;

    invoke-static {v4, v12}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 247
    const/4 v7, 0x0

    :goto_2
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v7, v12, :cond_2

    .line 248
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/exsettings/applications/ProcStatsEntry;

    .line 249
    .restart local v5    # "entry":Lcom/android/exsettings/applications/ProcStatsEntry;
    new-instance v9, Landroid/preference/Preference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/applications/ProcessStatsDetail;->getActivity()Landroid/app/Activity;

    move-result-object v12

    invoke-direct {v9, v12}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 250
    .local v9, "processPref":Landroid/preference/Preference;
    iget-object v12, v5, Lcom/android/exsettings/applications/ProcStatsEntry;->mLabel:Ljava/lang/CharSequence;

    invoke-virtual {v9, v12}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 251
    const/4 v12, 0x0

    invoke-virtual {v9, v12}, Landroid/preference/Preference;->setSelectable(Z)V

    .line 253
    iget-wide v12, v5, Lcom/android/exsettings/applications/ProcStatsEntry;->mRunDuration:J

    iget-wide v14, v5, Lcom/android/exsettings/applications/ProcStatsEntry;->mBgDuration:J

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 254
    .local v2, "duration":J
    iget-wide v12, v5, Lcom/android/exsettings/applications/ProcStatsEntry;->mRunWeight:D

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/exsettings/applications/ProcessStatsDetail;->mWeightToRam:D

    mul-double/2addr v12, v14

    double-to-long v12, v12

    .line 255
    iget-wide v14, v5, Lcom/android/exsettings/applications/ProcStatsEntry;->mBgWeight:D

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/exsettings/applications/ProcessStatsDetail;->mWeightToRam:D

    move-wide/from16 v16, v0

    mul-double v14, v14, v16

    double-to-long v14, v14

    .line 254
    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v10

    .line 256
    .local v10, "memoryUse":J
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/applications/ProcessStatsDetail;->getActivity()Landroid/app/Activity;

    move-result-object v12

    invoke-static {v12, v10, v11}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v8

    .line 257
    .local v8, "memoryString":Ljava/lang/String;
    long-to-float v12, v2

    .line 258
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/exsettings/applications/ProcessStatsDetail;->mTotalTime:J

    long-to-float v13, v14

    .line 257
    div-float/2addr v12, v13

    .line 258
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/applications/ProcessStatsDetail;->getActivity()Landroid/app/Activity;

    move-result-object v13

    .line 257
    invoke-static {v12, v13}, Lcom/android/exsettings/applications/ProcStatsPackageEntry;->getFrequency(FLandroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v6

    .line 260
    .local v6, "frequency":Ljava/lang/CharSequence;
    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v8, v12, v13

    const/4 v13, 0x1

    aput-object v6, v12, v13

    const v13, 0x7f0c0f60

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v12}, Lcom/android/exsettings/applications/ProcessStatsDetail;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 259
    invoke-virtual {v9, v12}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 261
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/exsettings/applications/ProcessStatsDetail;->mProcGroup:Landroid/preference/PreferenceCategory;

    invoke-virtual {v12, v9}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 247
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 263
    .end local v2    # "duration":J
    .end local v5    # "entry":Lcom/android/exsettings/applications/ProcStatsEntry;
    .end local v6    # "frequency":Ljava/lang/CharSequence;
    .end local v8    # "memoryString":Ljava/lang/String;
    .end local v9    # "processPref":Landroid/preference/Preference;
    .end local v10    # "memoryUse":J
    :cond_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/exsettings/applications/ProcessStatsDetail;->mProcGroup:Landroid/preference/PreferenceCategory;

    invoke-virtual {v12}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v12

    const/4 v13, 0x2

    if-ge v12, v13, :cond_3

    .line 264
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/applications/ProcessStatsDetail;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/exsettings/applications/ProcessStatsDetail;->mProcGroup:Landroid/preference/PreferenceCategory;

    invoke-virtual {v12, v13}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 234
    :cond_3
    return-void
.end method

.method private static getProcessName(Ljava/lang/String;Lcom/android/exsettings/applications/ProcStatsEntry;)Ljava/lang/String;
    .locals 4
    .param p0, "appLabel"    # Ljava/lang/String;
    .param p1, "entry"    # Lcom/android/exsettings/applications/ProcStatsEntry;

    .prologue
    .line 277
    iget-object v0, p1, Lcom/android/exsettings/applications/ProcStatsEntry;->mName:Ljava/lang/String;

    .line 278
    .local v0, "processName":Ljava/lang/String;
    const-string/jumbo v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 279
    const/16 v2, 0x3a

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/exsettings/applications/ProcessStatsDetail;->capitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 281
    :cond_0
    iget-object v2, p1, Lcom/android/exsettings/applications/ProcStatsEntry;->mPackage:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 282
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    iget-object v3, p1, Lcom/android/exsettings/applications/ProcStatsEntry;->mPackage:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v2, v3, :cond_1

    .line 283
    return-object p0

    .line 285
    :cond_1
    iget-object v2, p1, Lcom/android/exsettings/applications/ProcStatsEntry;->mPackage:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    .line 286
    .local v1, "start":I
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2e

    if-ne v2, v3, :cond_2

    .line 287
    add-int/lit8 v1, v1, 0x1

    .line 289
    :cond_2
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/exsettings/applications/ProcessStatsDetail;->capitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 291
    .end local v1    # "start":I
    :cond_3
    return-object v0
.end method

.method private killProcesses()V
    .locals 6

    .prologue
    .line 416
    invoke-virtual {p0}, Lcom/android/exsettings/applications/ProcessStatsDetail;->getActivity()Landroid/app/Activity;

    move-result-object v4

    .line 417
    const-string/jumbo v5, "activity"

    .line 416
    invoke-virtual {v4, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 418
    .local v0, "am":Landroid/app/ActivityManager;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v4, p0, Lcom/android/exsettings/applications/ProcessStatsDetail;->mApp:Lcom/android/exsettings/applications/ProcStatsPackageEntry;

    iget-object v4, v4, Lcom/android/exsettings/applications/ProcStatsPackageEntry;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_1

    .line 419
    iget-object v4, p0, Lcom/android/exsettings/applications/ProcessStatsDetail;->mApp:Lcom/android/exsettings/applications/ProcStatsPackageEntry;

    iget-object v4, v4, Lcom/android/exsettings/applications/ProcStatsPackageEntry;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/exsettings/applications/ProcStatsEntry;

    .line 420
    .local v1, "ent":Lcom/android/exsettings/applications/ProcStatsEntry;
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    iget-object v4, v1, Lcom/android/exsettings/applications/ProcStatsEntry;->mPackages:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 421
    iget-object v4, v1, Lcom/android/exsettings/applications/ProcStatsEntry;->mPackages:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    .line 420
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 418
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 415
    .end local v1    # "ent":Lcom/android/exsettings/applications/ProcStatsEntry;
    .end local v3    # "j":I
    :cond_1
    return-void
.end method

.method private showStopServiceDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 398
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/exsettings/applications/ProcessStatsDetail;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 399
    const v1, 0x7f0c0a38

    .line 398
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 400
    const v1, 0x7f0c0a39

    .line 398
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 401
    new-instance v1, Lcom/android/exsettings/applications/ProcessStatsDetail$5;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/exsettings/applications/ProcessStatsDetail$5;-><init>(Lcom/android/exsettings/applications/ProcessStatsDetail;Ljava/lang/String;Ljava/lang/String;)V

    const v2, 0x7f0c09e2

    .line 398
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 406
    const v1, 0x7f0c09e3

    const/4 v2, 0x0

    .line 398
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 397
    return-void
.end method

.method private stopService(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 385
    :try_start_0
    invoke-virtual {p0}, Lcom/android/exsettings/applications/ProcessStatsDetail;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 386
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget v2, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    .line 387
    invoke-direct {p0, p1, p2}, Lcom/android/exsettings/applications/ProcessStatsDetail;->showStopServiceDialog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 388
    return-void

    .line 390
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v1

    .line 391
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v2, "ProcessStatsDetail"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Can\'t find app "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 392
    return-void

    .line 394
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/exsettings/applications/ProcessStatsDetail;->doStopService(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    return-void
.end method

.method private updateRunningServices()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 143
    invoke-virtual {p0}, Lcom/android/exsettings/applications/ProcessStatsDetail;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const-string/jumbo v8, "activity"

    invoke-virtual {v7, v8}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 142
    check-cast v1, Landroid/app/ActivityManager;

    .line 145
    .local v1, "activityManager":Landroid/app/ActivityManager;
    const v7, 0x7fffffff

    invoke-virtual {v1, v7}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v5

    .line 148
    .local v5, "runningServices":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    iget-object v7, p0, Lcom/android/exsettings/applications/ProcessStatsDetail;->mServiceMap:Landroid/util/ArrayMap;

    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 149
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 150
    iget-object v7, p0, Lcom/android/exsettings/applications/ProcessStatsDetail;->mServiceMap:Landroid/util/ArrayMap;

    invoke-virtual {v7, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/exsettings/CancellablePreference;

    invoke-virtual {v7, v9}, Lcom/android/exsettings/CancellablePreference;->setCancellable(Z)V

    .line 149
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 153
    :cond_0
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    .line 154
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_3

    .line 155
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 156
    .local v4, "runningService":Landroid/app/ActivityManager$RunningServiceInfo;
    iget-boolean v7, v4, Landroid/app/ActivityManager$RunningServiceInfo;->started:Z

    if-nez v7, :cond_2

    iget v7, v4, Landroid/app/ActivityManager$RunningServiceInfo;->clientLabel:I

    if-nez v7, :cond_2

    .line 154
    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 159
    :cond_2
    iget v7, v4, Landroid/app/ActivityManager$RunningServiceInfo;->flags:I

    and-int/lit8 v7, v7, 0x8

    if-nez v7, :cond_1

    .line 162
    iget-object v6, v4, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    .line 163
    .local v6, "service":Landroid/content/ComponentName;
    iget-object v7, p0, Lcom/android/exsettings/applications/ProcessStatsDetail;->mServiceMap:Landroid/util/ArrayMap;

    invoke-virtual {v7, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/exsettings/CancellablePreference;

    .line 164
    .local v3, "pref":Lcom/android/exsettings/CancellablePreference;
    if-eqz v3, :cond_1

    .line 165
    new-instance v7, Lcom/android/exsettings/applications/ProcessStatsDetail$4;

    invoke-direct {v7, p0, v6}, Lcom/android/exsettings/applications/ProcessStatsDetail$4;-><init>(Lcom/android/exsettings/applications/ProcessStatsDetail;Landroid/content/ComponentName;)V

    invoke-virtual {v3, v7}, Lcom/android/exsettings/CancellablePreference;->setOnCancelListener(Lcom/android/exsettings/CancellablePreference$OnCancelListener;)V

    .line 171
    const/4 v7, 0x1

    invoke-virtual {v3, v7}, Lcom/android/exsettings/CancellablePreference;->setCancellable(Z)V

    goto :goto_2

    .line 141
    .end local v3    # "pref":Lcom/android/exsettings/CancellablePreference;
    .end local v4    # "runningService":Landroid/app/ActivityManager$RunningServiceInfo;
    .end local v6    # "service":Landroid/content/ComponentName;
    :cond_3
    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 130
    const/16 v0, 0x15

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 101
    invoke-super {p0, p1}, Lcom/android/exsettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 102
    invoke-virtual {p0}, Lcom/android/exsettings/applications/ProcessStatsDetail;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/exsettings/applications/ProcessStatsDetail;->mPm:Landroid/content/pm/PackageManager;

    .line 103
    invoke-virtual {p0}, Lcom/android/exsettings/applications/ProcessStatsDetail;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string/jumbo v2, "device_policy"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    iput-object v1, p0, Lcom/android/exsettings/applications/ProcessStatsDetail;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 104
    invoke-virtual {p0}, Lcom/android/exsettings/applications/ProcessStatsDetail;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 105
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v1, "package_entry"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/android/exsettings/applications/ProcStatsPackageEntry;

    iput-object v1, p0, Lcom/android/exsettings/applications/ProcessStatsDetail;->mApp:Lcom/android/exsettings/applications/ProcStatsPackageEntry;

    .line 106
    iget-object v1, p0, Lcom/android/exsettings/applications/ProcessStatsDetail;->mApp:Lcom/android/exsettings/applications/ProcStatsPackageEntry;

    invoke-virtual {p0}, Lcom/android/exsettings/applications/ProcessStatsDetail;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/exsettings/applications/ProcessStatsDetail;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v2, v3}, Lcom/android/exsettings/applications/ProcStatsPackageEntry;->retrieveUiData(Landroid/content/Context;Landroid/content/pm/PackageManager;)V

    .line 107
    const-string/jumbo v1, "weight_to_ram"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/exsettings/applications/ProcessStatsDetail;->mWeightToRam:D

    .line 108
    const-string/jumbo v1, "total_time"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/exsettings/applications/ProcessStatsDetail;->mTotalTime:J

    .line 109
    const-string/jumbo v1, "max_memory_usage"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/exsettings/applications/ProcessStatsDetail;->mMaxMemoryUsage:D

    .line 110
    const-string/jumbo v1, "total_scale"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/exsettings/applications/ProcessStatsDetail;->mTotalScale:D

    .line 111
    iget-wide v2, p0, Lcom/android/exsettings/applications/ProcessStatsDetail;->mTotalTime:J

    const-wide/16 v4, 0x64

    div-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/exsettings/applications/ProcessStatsDetail;->mOnePercentTime:J

    .line 113
    iget-object v1, p0, Lcom/android/exsettings/applications/ProcessStatsDetail;->mServiceMap:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    .line 114
    invoke-direct {p0}, Lcom/android/exsettings/applications/ProcessStatsDetail;->createDetails()V

    .line 115
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/exsettings/applications/ProcessStatsDetail;->setHasOptionsMenu(Z)V

    .line 100
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v2, 0x0

    .line 208
    const/4 v0, 0x1

    const v1, 0x7f0c09b4

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/applications/ProcessStatsDetail;->mForceStop:Landroid/view/MenuItem;

    .line 209
    invoke-direct {p0}, Lcom/android/exsettings/applications/ProcessStatsDetail;->checkForceStop()V

    .line 207
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 214
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 219
    const/4 v0, 0x0

    return v0

    .line 216
    :pswitch_0
    invoke-direct {p0}, Lcom/android/exsettings/applications/ProcessStatsDetail;->killProcesses()V

    .line 217
    const/4 v0, 0x1

    return v0

    .line 214
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 135
    invoke-super {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;->onResume()V

    .line 137
    invoke-direct {p0}, Lcom/android/exsettings/applications/ProcessStatsDetail;->checkForceStop()V

    .line 138
    invoke-direct {p0}, Lcom/android/exsettings/applications/ProcessStatsDetail;->updateRunningServices()V

    .line 134
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x0

    .line 120
    invoke-super {p0, p1, p2}, Lcom/android/exsettings/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 123
    iget-object v0, p0, Lcom/android/exsettings/applications/ProcessStatsDetail;->mApp:Lcom/android/exsettings/applications/ProcStatsPackageEntry;

    iget-object v0, v0, Lcom/android/exsettings/applications/ProcStatsPackageEntry;->mUiTargetApp:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/exsettings/applications/ProcessStatsDetail;->mApp:Lcom/android/exsettings/applications/ProcStatsPackageEntry;

    iget-object v0, v0, Lcom/android/exsettings/applications/ProcStatsPackageEntry;->mUiTargetApp:Landroid/content/pm/ApplicationInfo;

    iget-object v2, p0, Lcom/android/exsettings/applications/ProcessStatsDetail;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v2}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 124
    :goto_0
    iget-object v2, p0, Lcom/android/exsettings/applications/ProcessStatsDetail;->mApp:Lcom/android/exsettings/applications/ProcStatsPackageEntry;

    iget-object v2, v2, Lcom/android/exsettings/applications/ProcStatsPackageEntry;->mUiLabel:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/exsettings/applications/ProcessStatsDetail;->mApp:Lcom/android/exsettings/applications/ProcStatsPackageEntry;

    iget-object v3, v3, Lcom/android/exsettings/applications/ProcStatsPackageEntry;->mPackage:Ljava/lang/String;

    const-string/jumbo v4, "os"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 122
    :goto_1
    invoke-static {p0, v0, v2, v1}, Lcom/android/exsettings/AppHeader;->createAppHeader(Lcom/android/exsettings/SettingsPreferenceFragment;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Landroid/content/Intent;)V

    .line 119
    return-void

    .line 123
    :cond_0
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    goto :goto_0

    .line 125
    :cond_1
    iget-object v1, p0, Lcom/android/exsettings/applications/ProcessStatsDetail;->mApp:Lcom/android/exsettings/applications/ProcStatsPackageEntry;

    iget-object v1, v1, Lcom/android/exsettings/applications/ProcStatsPackageEntry;->mPackage:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/android/exsettings/applications/AppInfoWithHeader;->getInfoIntent(Landroid/app/Fragment;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    goto :goto_1
.end method
