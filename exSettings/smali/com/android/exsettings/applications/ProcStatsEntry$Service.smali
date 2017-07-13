.class public final Lcom/android/exsettings/applications/ProcStatsEntry$Service;
.super Ljava/lang/Object;
.source "ProcStatsEntry.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/applications/ProcStatsEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Service"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exsettings/applications/ProcStatsEntry$Service$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/exsettings/applications/ProcStatsEntry$Service;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final mDuration:J

.field final mName:Ljava/lang/String;

.field final mPackage:Ljava/lang/String;

.field final mProcess:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 338
    new-instance v0, Lcom/android/exsettings/applications/ProcStatsEntry$Service$1;

    invoke-direct {v0}, Lcom/android/exsettings/applications/ProcStatsEntry$Service$1;-><init>()V

    .line 337
    sput-object v0, Lcom/android/exsettings/applications/ProcStatsEntry$Service;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 302
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 317
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 318
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/applications/ProcStatsEntry$Service;->mPackage:Ljava/lang/String;

    .line 319
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/applications/ProcStatsEntry$Service;->mName:Ljava/lang/String;

    .line 320
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/applications/ProcStatsEntry$Service;->mProcess:Ljava/lang/String;

    .line 321
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/exsettings/applications/ProcStatsEntry$Service;->mDuration:J

    .line 317
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/app/ProcessStats$ServiceState;)V
    .locals 10
    .param p1, "service"    # Lcom/android/internal/app/ProcessStats$ServiceState;

    .prologue
    const-wide/16 v6, 0x0

    const/4 v1, 0x0

    .line 308
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 309
    iget-object v0, p1, Lcom/android/internal/app/ProcessStats$ServiceState;->mPackage:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/exsettings/applications/ProcStatsEntry$Service;->mPackage:Ljava/lang/String;

    .line 310
    iget-object v0, p1, Lcom/android/internal/app/ProcessStats$ServiceState;->mName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/exsettings/applications/ProcStatsEntry$Service;->mName:Ljava/lang/String;

    .line 311
    iget-object v0, p1, Lcom/android/internal/app/ProcessStats$ServiceState;->mProcessName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/exsettings/applications/ProcStatsEntry$Service;->mProcess:Ljava/lang/String;

    .line 313
    const/4 v4, 0x0

    .line 314
    const/4 v5, -0x1

    move-object v2, v1

    move-object v3, p1

    move-wide v8, v6

    .line 312
    invoke-static/range {v1 .. v9}, Lcom/android/internal/app/ProcessStats;->dumpSingleServiceTime(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/internal/app/ProcessStats$ServiceState;IIJJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/exsettings/applications/ProcStatsEntry$Service;->mDuration:J

    .line 308
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 326
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 331
    iget-object v0, p0, Lcom/android/exsettings/applications/ProcStatsEntry$Service;->mPackage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 332
    iget-object v0, p0, Lcom/android/exsettings/applications/ProcStatsEntry$Service;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 333
    iget-object v0, p0, Lcom/android/exsettings/applications/ProcStatsEntry$Service;->mProcess:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 334
    iget-wide v0, p0, Lcom/android/exsettings/applications/ProcStatsEntry$Service;->mDuration:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 330
    return-void
.end method
