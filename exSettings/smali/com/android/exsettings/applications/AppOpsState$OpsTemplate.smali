.class public Lcom/android/exsettings/applications/AppOpsState$OpsTemplate;
.super Ljava/lang/Object;
.source "AppOpsState.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/applications/AppOpsState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OpsTemplate"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exsettings/applications/AppOpsState$OpsTemplate$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/exsettings/applications/AppOpsState$OpsTemplate;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final ops:[I

.field public final showPerms:[Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 93
    new-instance v0, Lcom/android/exsettings/applications/AppOpsState$OpsTemplate$1;

    invoke-direct {v0}, Lcom/android/exsettings/applications/AppOpsState$OpsTemplate$1;-><init>()V

    sput-object v0, Lcom/android/exsettings/applications/AppOpsState$OpsTemplate;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 68
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "src"    # Landroid/os/Parcel;

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/applications/AppOpsState$OpsTemplate;->ops:[I

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->createBooleanArray()[Z

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/applications/AppOpsState$OpsTemplate;->showPerms:[Z

    .line 77
    return-void
.end method

.method public constructor <init>([I[Z)V
    .locals 0
    .param p1, "_ops"    # [I
    .param p2, "_showPerms"    # [Z

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, Lcom/android/exsettings/applications/AppOpsState$OpsTemplate;->ops:[I

    .line 74
    iput-object p2, p0, Lcom/android/exsettings/applications/AppOpsState$OpsTemplate;->showPerms:[Z

    .line 72
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/exsettings/applications/AppOpsState$OpsTemplate;->ops:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 90
    iget-object v0, p0, Lcom/android/exsettings/applications/AppOpsState$OpsTemplate;->showPerms:[Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 88
    return-void
.end method
