.class final Lcom/android/exsettings/applications/ProcStatsData$1;
.super Ljava/lang/Object;
.source "ProcStatsData.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/applications/ProcStatsData;
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
        "Lcom/android/exsettings/applications/ProcStatsEntry;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 444
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/exsettings/applications/ProcStatsEntry;Lcom/android/exsettings/applications/ProcStatsEntry;)I
    .locals 6
    .param p1, "lhs"    # Lcom/android/exsettings/applications/ProcStatsEntry;
    .param p2, "rhs"    # Lcom/android/exsettings/applications/ProcStatsEntry;

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    .line 447
    iget-wide v0, p1, Lcom/android/exsettings/applications/ProcStatsEntry;->mRunWeight:D

    iget-wide v2, p2, Lcom/android/exsettings/applications/ProcStatsEntry;->mRunWeight:D

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    .line 448
    return v5

    .line 449
    :cond_0
    iget-wide v0, p1, Lcom/android/exsettings/applications/ProcStatsEntry;->mRunWeight:D

    iget-wide v2, p2, Lcom/android/exsettings/applications/ProcStatsEntry;->mRunWeight:D

    cmpl-double v0, v0, v2

    if-lez v0, :cond_1

    .line 450
    return v4

    .line 451
    :cond_1
    iget-wide v0, p1, Lcom/android/exsettings/applications/ProcStatsEntry;->mRunDuration:J

    iget-wide v2, p2, Lcom/android/exsettings/applications/ProcStatsEntry;->mRunDuration:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_2

    .line 452
    return v5

    .line 453
    :cond_2
    iget-wide v0, p1, Lcom/android/exsettings/applications/ProcStatsEntry;->mRunDuration:J

    iget-wide v2, p2, Lcom/android/exsettings/applications/ProcStatsEntry;->mRunDuration:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    .line 454
    return v4

    .line 456
    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "lhs"    # Ljava/lang/Object;
    .param p2, "rhs"    # Ljava/lang/Object;

    .prologue
    .line 446
    check-cast p1, Lcom/android/exsettings/applications/ProcStatsEntry;

    .end local p1    # "lhs":Ljava/lang/Object;
    check-cast p2, Lcom/android/exsettings/applications/ProcStatsEntry;

    .end local p2    # "rhs":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/exsettings/applications/ProcStatsData$1;->compare(Lcom/android/exsettings/applications/ProcStatsEntry;Lcom/android/exsettings/applications/ProcStatsEntry;)I

    move-result v0

    return v0
.end method
