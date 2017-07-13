.class public Lcom/android/exsettingslib/applications/ApplicationsState$CompoundFilter;
.super Ljava/lang/Object;
.source "ApplicationsState.java"

# interfaces
.implements Lcom/android/exsettingslib/applications/ApplicationsState$AppFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettingslib/applications/ApplicationsState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CompoundFilter"
.end annotation


# instance fields
.field private final mFirstFilter:Lcom/android/exsettingslib/applications/ApplicationsState$AppFilter;

.field private final mSecondFilter:Lcom/android/exsettingslib/applications/ApplicationsState$AppFilter;


# direct methods
.method public constructor <init>(Lcom/android/exsettingslib/applications/ApplicationsState$AppFilter;Lcom/android/exsettingslib/applications/ApplicationsState$AppFilter;)V
    .locals 0
    .param p1, "first"    # Lcom/android/exsettingslib/applications/ApplicationsState$AppFilter;
    .param p2, "second"    # Lcom/android/exsettingslib/applications/ApplicationsState$AppFilter;

    .prologue
    .line 1363
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1364
    iput-object p1, p0, Lcom/android/exsettingslib/applications/ApplicationsState$CompoundFilter;->mFirstFilter:Lcom/android/exsettingslib/applications/ApplicationsState$AppFilter;

    .line 1365
    iput-object p2, p0, Lcom/android/exsettingslib/applications/ApplicationsState$CompoundFilter;->mSecondFilter:Lcom/android/exsettingslib/applications/ApplicationsState$AppFilter;

    .line 1363
    return-void
.end method


# virtual methods
.method public filterApp(Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;)Z
    .locals 1
    .param p1, "info"    # Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;

    .prologue
    .line 1376
    iget-object v0, p0, Lcom/android/exsettingslib/applications/ApplicationsState$CompoundFilter;->mFirstFilter:Lcom/android/exsettingslib/applications/ApplicationsState$AppFilter;

    invoke-interface {v0, p1}, Lcom/android/exsettingslib/applications/ApplicationsState$AppFilter;->filterApp(Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/exsettingslib/applications/ApplicationsState$CompoundFilter;->mSecondFilter:Lcom/android/exsettingslib/applications/ApplicationsState$AppFilter;

    invoke-interface {v0, p1}, Lcom/android/exsettingslib/applications/ApplicationsState$AppFilter;->filterApp(Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public init()V
    .locals 1

    .prologue
    .line 1370
    iget-object v0, p0, Lcom/android/exsettingslib/applications/ApplicationsState$CompoundFilter;->mFirstFilter:Lcom/android/exsettingslib/applications/ApplicationsState$AppFilter;

    invoke-interface {v0}, Lcom/android/exsettingslib/applications/ApplicationsState$AppFilter;->init()V

    .line 1371
    iget-object v0, p0, Lcom/android/exsettingslib/applications/ApplicationsState$CompoundFilter;->mSecondFilter:Lcom/android/exsettingslib/applications/ApplicationsState$AppFilter;

    invoke-interface {v0}, Lcom/android/exsettingslib/applications/ApplicationsState$AppFilter;->init()V

    .line 1369
    return-void
.end method
