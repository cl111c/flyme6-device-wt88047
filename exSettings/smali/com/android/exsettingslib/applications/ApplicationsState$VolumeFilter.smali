.class public Lcom/android/exsettingslib/applications/ApplicationsState$VolumeFilter;
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
    name = "VolumeFilter"
.end annotation


# instance fields
.field private final mVolumeUuid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "volumeUuid"    # Ljava/lang/String;

    .prologue
    .line 1345
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1346
    iput-object p1, p0, Lcom/android/exsettingslib/applications/ApplicationsState$VolumeFilter;->mVolumeUuid:Ljava/lang/String;

    .line 1345
    return-void
.end method


# virtual methods
.method public filterApp(Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;)Z
    .locals 2
    .param p1, "info"    # Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;

    .prologue
    .line 1355
    iget-object v0, p1, Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->volumeUuid:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/exsettingslib/applications/ApplicationsState$VolumeFilter;->mVolumeUuid:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public init()V
    .locals 0

    .prologue
    .line 1350
    return-void
.end method
