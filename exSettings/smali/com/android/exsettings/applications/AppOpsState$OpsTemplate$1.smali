.class final Lcom/android/exsettings/applications/AppOpsState$OpsTemplate$1;
.super Ljava/lang/Object;
.source "AppOpsState.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/applications/AppOpsState$OpsTemplate;
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
        "Lcom/android/exsettings/applications/AppOpsState$OpsTemplate;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/exsettings/applications/AppOpsState$OpsTemplate;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 95
    new-instance v0, Lcom/android/exsettings/applications/AppOpsState$OpsTemplate;

    invoke-direct {v0, p1}, Lcom/android/exsettings/applications/AppOpsState$OpsTemplate;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 94
    invoke-virtual {p0, p1}, Lcom/android/exsettings/applications/AppOpsState$OpsTemplate$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/exsettings/applications/AppOpsState$OpsTemplate;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/android/exsettings/applications/AppOpsState$OpsTemplate;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 99
    new-array v0, p1, [Lcom/android/exsettings/applications/AppOpsState$OpsTemplate;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 98
    invoke-virtual {p0, p1}, Lcom/android/exsettings/applications/AppOpsState$OpsTemplate$1;->newArray(I)[Lcom/android/exsettings/applications/AppOpsState$OpsTemplate;

    move-result-object v0

    return-object v0
.end method
