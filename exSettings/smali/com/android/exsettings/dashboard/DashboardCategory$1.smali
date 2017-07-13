.class final Lcom/android/exsettings/dashboard/DashboardCategory$1;
.super Ljava/lang/Object;
.source "DashboardCategory.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/dashboard/DashboardCategory;
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
        "Lcom/android/exsettings/dashboard/DashboardCategory;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/exsettings/dashboard/DashboardCategory;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 151
    new-instance v0, Lcom/android/exsettings/dashboard/DashboardCategory;

    invoke-direct {v0, p1}, Lcom/android/exsettings/dashboard/DashboardCategory;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 150
    invoke-virtual {p0, p1}, Lcom/android/exsettings/dashboard/DashboardCategory$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/exsettings/dashboard/DashboardCategory;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/android/exsettings/dashboard/DashboardCategory;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 155
    new-array v0, p1, [Lcom/android/exsettings/dashboard/DashboardCategory;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 154
    invoke-virtual {p0, p1}, Lcom/android/exsettings/dashboard/DashboardCategory$1;->newArray(I)[Lcom/android/exsettings/dashboard/DashboardCategory;

    move-result-object v0

    return-object v0
.end method
