.class final Lcom/android/exsettings/applications/ProcessStatsUi$2;
.super Ljava/lang/Object;
.source "ProcessStatsUi.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/applications/ProcessStatsUi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/exsettings/applications/ProcStatsPackageEntry;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/exsettings/applications/ProcStatsPackageEntry;Lcom/android/exsettings/applications/ProcStatsPackageEntry;)I
    .locals 8
    .param p1, "lhs"    # Lcom/android/exsettings/applications/ProcStatsPackageEntry;
    .param p2, "rhs"    # Lcom/android/exsettings/applications/ProcStatsPackageEntry;

    .prologue
    .line 201
    iget-wide v4, p2, Lcom/android/exsettings/applications/ProcStatsPackageEntry;->mMaxBgMem:J

    iget-wide v6, p2, Lcom/android/exsettings/applications/ProcStatsPackageEntry;->mMaxRunMem:J

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    long-to-double v2, v4

    .line 202
    .local v2, "rhsMax":D
    iget-wide v4, p1, Lcom/android/exsettings/applications/ProcStatsPackageEntry;->mMaxBgMem:J

    iget-wide v6, p1, Lcom/android/exsettings/applications/ProcStatsPackageEntry;->mMaxRunMem:J

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    long-to-double v0, v4

    .line 203
    .local v0, "lhsMax":D
    cmpl-double v4, v0, v2

    if-nez v4, :cond_0

    .line 204
    const/4 v4, 0x0

    return v4

    .line 206
    :cond_0
    cmpg-double v4, v0, v2

    if-gez v4, :cond_1

    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_1
    const/4 v4, -0x1

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "lhs"    # Ljava/lang/Object;
    .param p2, "rhs"    # Ljava/lang/Object;

    .prologue
    .line 200
    check-cast p1, Lcom/android/exsettings/applications/ProcStatsPackageEntry;

    .end local p1    # "lhs":Ljava/lang/Object;
    check-cast p2, Lcom/android/exsettings/applications/ProcStatsPackageEntry;

    .end local p2    # "rhs":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/exsettings/applications/ProcessStatsUi$2;->compare(Lcom/android/exsettings/applications/ProcStatsPackageEntry;Lcom/android/exsettings/applications/ProcStatsPackageEntry;)I

    move-result v0

    return v0
.end method
