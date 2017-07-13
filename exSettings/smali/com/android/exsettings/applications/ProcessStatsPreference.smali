.class public Lcom/android/exsettings/applications/ProcessStatsPreference;
.super Lcom/android/exsettings/AppProgressPreference;
.source "ProcessStatsPreference.java"


# instance fields
.field private mEntry:Lcom/android/exsettings/applications/ProcStatsPackageEntry;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 32
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/exsettings/AppProgressPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    return-void
.end method


# virtual methods
.method public getEntry()Lcom/android/exsettings/applications/ProcStatsPackageEntry;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/exsettings/applications/ProcessStatsPreference;->mEntry:Lcom/android/exsettings/applications/ProcStatsPackageEntry;

    return-object v0
.end method

.method public init(Lcom/android/exsettings/applications/ProcStatsPackageEntry;Landroid/content/pm/PackageManager;DDDZ)V
    .locals 9
    .param p1, "entry"    # Lcom/android/exsettings/applications/ProcStatsPackageEntry;
    .param p2, "pm"    # Landroid/content/pm/PackageManager;
    .param p3, "maxMemory"    # D
    .param p5, "weightToRam"    # D
    .param p7, "totalScale"    # D
    .param p9, "avg"    # Z

    .prologue
    .line 37
    iput-object p1, p0, Lcom/android/exsettings/applications/ProcessStatsPreference;->mEntry:Lcom/android/exsettings/applications/ProcStatsPackageEntry;

    .line 38
    iget-object v3, p1, Lcom/android/exsettings/applications/ProcStatsPackageEntry;->mUiLabel:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p1, Lcom/android/exsettings/applications/ProcStatsPackageEntry;->mPackage:Ljava/lang/String;

    :goto_0
    invoke-virtual {p0, v3}, Lcom/android/exsettings/applications/ProcessStatsPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 39
    iget-object v3, p1, Lcom/android/exsettings/applications/ProcStatsPackageEntry;->mUiTargetApp:Landroid/content/pm/ApplicationInfo;

    if-eqz v3, :cond_1

    .line 40
    iget-object v3, p1, Lcom/android/exsettings/applications/ProcStatsPackageEntry;->mUiTargetApp:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v3, p2}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/exsettings/applications/ProcessStatsPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 44
    :goto_1
    iget-wide v4, p1, Lcom/android/exsettings/applications/ProcStatsPackageEntry;->mRunWeight:D

    iget-wide v6, p1, Lcom/android/exsettings/applications/ProcStatsPackageEntry;->mBgWeight:D

    cmpl-double v3, v4, v6

    if-lez v3, :cond_2

    const/4 v2, 0x1

    .line 45
    .local v2, "statsForeground":Z
    :goto_2
    if-eqz p9, :cond_4

    if-eqz v2, :cond_3

    iget-wide v4, p1, Lcom/android/exsettings/applications/ProcStatsPackageEntry;->mRunWeight:D

    :goto_3
    mul-double v0, v4, p5

    .line 47
    .local v0, "amount":D
    :goto_4
    invoke-virtual {p0}, Lcom/android/exsettings/applications/ProcessStatsPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    double-to-long v4, v0

    invoke-static {v3, v4, v5}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/exsettings/applications/ProcessStatsPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 48
    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    mul-double/2addr v4, v0

    div-double/2addr v4, p3

    double-to-int v3, v4

    invoke-virtual {p0, v3}, Lcom/android/exsettings/applications/ProcessStatsPreference;->setProgress(I)V

    .line 36
    return-void

    .line 38
    .end local v0    # "amount":D
    .end local v2    # "statsForeground":Z
    :cond_0
    iget-object v3, p1, Lcom/android/exsettings/applications/ProcStatsPackageEntry;->mUiLabel:Ljava/lang/String;

    goto :goto_0

    .line 42
    :cond_1
    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v3}, Lcom/android/exsettings/applications/ProcessStatsPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 44
    :cond_2
    const/4 v2, 0x0

    .restart local v2    # "statsForeground":Z
    goto :goto_2

    .line 45
    :cond_3
    iget-wide v4, p1, Lcom/android/exsettings/applications/ProcStatsPackageEntry;->mBgWeight:D

    goto :goto_3

    .line 46
    :cond_4
    if-eqz v2, :cond_5

    iget-wide v4, p1, Lcom/android/exsettings/applications/ProcStatsPackageEntry;->mMaxRunMem:J

    :goto_5
    long-to-double v4, v4

    mul-double v4, v4, p7

    const-wide/high16 v6, 0x4090000000000000L    # 1024.0

    mul-double v0, v4, v6

    .restart local v0    # "amount":D
    goto :goto_4

    .end local v0    # "amount":D
    :cond_5
    iget-wide v4, p1, Lcom/android/exsettings/applications/ProcStatsPackageEntry;->mMaxBgMem:J

    goto :goto_5
.end method
