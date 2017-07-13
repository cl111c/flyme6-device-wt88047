.class public Lcom/android/exsettings/DataUsageSummary$CycleAdapter;
.super Landroid/widget/ArrayAdapter;
.source "DataUsageSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CycleAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/android/exsettings/DataUsageSummary$CycleItem;",
        ">;"
    }
.end annotation


# instance fields
.field private final mChangeItem:Lcom/android/exsettings/DataUsageSummary$CycleChangeItem;

.field private mChangePossible:Z

.field private mChangeVisible:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 1853
    const v0, 0x7f040048

    invoke-direct {p0, p1, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 1847
    iput-boolean v1, p0, Lcom/android/exsettings/DataUsageSummary$CycleAdapter;->mChangePossible:Z

    .line 1848
    iput-boolean v1, p0, Lcom/android/exsettings/DataUsageSummary$CycleAdapter;->mChangeVisible:Z

    .line 1854
    const v0, 0x7f040049

    invoke-virtual {p0, v0}, Lcom/android/exsettings/DataUsageSummary$CycleAdapter;->setDropDownViewResource(I)V

    .line 1855
    new-instance v0, Lcom/android/exsettings/DataUsageSummary$CycleChangeItem;

    invoke-direct {v0, p1}, Lcom/android/exsettings/DataUsageSummary$CycleChangeItem;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/exsettings/DataUsageSummary$CycleAdapter;->mChangeItem:Lcom/android/exsettings/DataUsageSummary$CycleChangeItem;

    .line 1852
    return-void
.end method

.method private updateChange()V
    .locals 1

    .prologue
    .line 1869
    iget-object v0, p0, Lcom/android/exsettings/DataUsageSummary$CycleAdapter;->mChangeItem:Lcom/android/exsettings/DataUsageSummary$CycleChangeItem;

    invoke-virtual {p0, v0}, Lcom/android/exsettings/DataUsageSummary$CycleAdapter;->remove(Ljava/lang/Object;)V

    .line 1870
    iget-boolean v0, p0, Lcom/android/exsettings/DataUsageSummary$CycleAdapter;->mChangePossible:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/exsettings/DataUsageSummary$CycleAdapter;->mChangeVisible:Z

    if-eqz v0, :cond_0

    .line 1871
    iget-object v0, p0, Lcom/android/exsettings/DataUsageSummary$CycleAdapter;->mChangeItem:Lcom/android/exsettings/DataUsageSummary$CycleChangeItem;

    invoke-virtual {p0, v0}, Lcom/android/exsettings/DataUsageSummary$CycleAdapter;->add(Ljava/lang/Object;)V

    .line 1868
    :cond_0
    return-void
.end method


# virtual methods
.method public findNearestPosition(Lcom/android/exsettings/DataUsageSummary$CycleItem;)I
    .locals 5
    .param p1, "target"    # Lcom/android/exsettings/DataUsageSummary$CycleItem;

    .prologue
    const/4 v4, 0x0

    .line 1880
    if-eqz p1, :cond_2

    .line 1881
    invoke-virtual {p0}, Lcom/android/exsettings/DataUsageSummary$CycleAdapter;->getCount()I

    move-result v0

    .line 1882
    .local v0, "count":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 1883
    invoke-virtual {p0, v1}, Lcom/android/exsettings/DataUsageSummary$CycleAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/exsettings/DataUsageSummary$CycleItem;

    .line 1884
    .local v2, "item":Lcom/android/exsettings/DataUsageSummary$CycleItem;
    instance-of v3, v2, Lcom/android/exsettings/DataUsageSummary$CycleChangeItem;

    if-eqz v3, :cond_1

    .line 1882
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1886
    :cond_1
    invoke-virtual {v2, p1}, Lcom/android/exsettings/DataUsageSummary$CycleItem;->compareTo(Lcom/android/exsettings/DataUsageSummary$CycleItem;)I

    move-result v3

    if-ltz v3, :cond_0

    .line 1887
    return v1

    .line 1891
    .end local v0    # "count":I
    .end local v1    # "i":I
    .end local v2    # "item":Lcom/android/exsettings/DataUsageSummary$CycleItem;
    :cond_2
    return v4
.end method

.method public setChangePossible(Z)V
    .locals 0
    .param p1, "possible"    # Z

    .prologue
    .line 1859
    iput-boolean p1, p0, Lcom/android/exsettings/DataUsageSummary$CycleAdapter;->mChangePossible:Z

    .line 1860
    invoke-direct {p0}, Lcom/android/exsettings/DataUsageSummary$CycleAdapter;->updateChange()V

    .line 1858
    return-void
.end method

.method public setChangeVisible(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 1864
    iput-boolean p1, p0, Lcom/android/exsettings/DataUsageSummary$CycleAdapter;->mChangeVisible:Z

    .line 1865
    invoke-direct {p0}, Lcom/android/exsettings/DataUsageSummary$CycleAdapter;->updateChange()V

    .line 1863
    return-void
.end method
