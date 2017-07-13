.class public Lcom/android/exsettings/applications/AppStateUsageBridge$UsageState;
.super Lcom/android/exsettings/applications/AppStateAppOpsBridge$PermissionState;
.source "AppStateUsageBridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/applications/AppStateUsageBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UsageState"
.end annotation


# direct methods
.method public constructor <init>(Lcom/android/exsettings/applications/AppStateAppOpsBridge$PermissionState;)V
    .locals 2
    .param p1, "permissionState"    # Lcom/android/exsettings/applications/AppStateAppOpsBridge$PermissionState;

    .prologue
    .line 59
    iget-object v0, p1, Lcom/android/exsettings/applications/AppStateAppOpsBridge$PermissionState;->packageName:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/exsettings/applications/AppStateAppOpsBridge$PermissionState;->userHandle:Landroid/os/UserHandle;

    invoke-direct {p0, v0, v1}, Lcom/android/exsettings/applications/AppStateAppOpsBridge$PermissionState;-><init>(Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 60
    iget-object v0, p1, Lcom/android/exsettings/applications/AppStateAppOpsBridge$PermissionState;->packageInfo:Landroid/content/pm/PackageInfo;

    iput-object v0, p0, Lcom/android/exsettings/applications/AppStateUsageBridge$UsageState;->packageInfo:Landroid/content/pm/PackageInfo;

    .line 61
    iget v0, p1, Lcom/android/exsettings/applications/AppStateAppOpsBridge$PermissionState;->appOpMode:I

    iput v0, p0, Lcom/android/exsettings/applications/AppStateUsageBridge$UsageState;->appOpMode:I

    .line 62
    iget-boolean v0, p1, Lcom/android/exsettings/applications/AppStateAppOpsBridge$PermissionState;->permissionDeclared:Z

    iput-boolean v0, p0, Lcom/android/exsettings/applications/AppStateUsageBridge$UsageState;->permissionDeclared:Z

    .line 63
    iget-boolean v0, p1, Lcom/android/exsettings/applications/AppStateAppOpsBridge$PermissionState;->staticPermissionGranted:Z

    iput-boolean v0, p0, Lcom/android/exsettings/applications/AppStateUsageBridge$UsageState;->staticPermissionGranted:Z

    .line 58
    return-void
.end method
