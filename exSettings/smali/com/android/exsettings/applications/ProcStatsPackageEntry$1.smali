.class final Lcom/android/exsettings/applications/ProcStatsPackageEntry$1;
.super Ljava/lang/Object;
.source "ProcStatsPackageEntry.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/applications/ProcStatsPackageEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/android/exsettings/applications/ProcStatsPackageEntry;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/exsettings/applications/ProcStatsPackageEntry;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 155
    new-instance v0, Lcom/android/exsettings/applications/ProcStatsPackageEntry;

    invoke-direct {v0, p1}, Lcom/android/exsettings/applications/ProcStatsPackageEntry;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 154
    invoke-virtual {p0, p1}, Lcom/android/exsettings/applications/ProcStatsPackageEntry$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/exsettings/applications/ProcStatsPackageEntry;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/android/exsettings/applications/ProcStatsPackageEntry;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 159
    new-array v0, p1, [Lcom/android/exsettings/applications/ProcStatsPackageEntry;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 158
    invoke-virtual {p0, p1}, Lcom/android/exsettings/applications/ProcStatsPackageEntry$1;->newArray(I)[Lcom/android/exsettings/applications/ProcStatsPackageEntry;

    move-result-object v0

    return-object v0
.end method
