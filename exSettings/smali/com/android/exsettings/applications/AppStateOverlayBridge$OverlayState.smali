.class public Lcom/android/exsettings/applications/AppStateOverlayBridge$OverlayState;
.super Lcom/android/exsettings/applications/AppStateAppOpsBridge$PermissionState;
.source "AppStateOverlayBridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/applications/AppStateOverlayBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OverlayState"
.end annotation


# direct methods
.method public constructor <init>(Lcom/android/exsettings/applications/AppStateAppOpsBridge$PermissionState;)V
    .locals 2
    .param p1, "permissionState"    # Lcom/android/exsettings/applications/AppStateAppOpsBridge$PermissionState;

    .prologue
    .line 68
    iget-object v0, p1, Lcom/android/exsettings/applications/AppStateAppOpsBridge$PermissionState;->packageName:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/exsettings/applications/AppStateAppOpsBridge$PermissionState;->userHandle:Landroid/os/UserHandle;

    invoke-direct {p0, v0, v1}, Lcom/android/exsettings/applications/AppStateAppOpsBridge$PermissionState;-><init>(Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 69
    iget-object v0, p1, Lcom/android/exsettings/applications/AppStateAppOpsBridge$PermissionState;->packageInfo:Landroid/content/pm/PackageInfo;

    iput-object v0, p0, Lcom/android/exsettings/applications/AppStateOverlayBridge$OverlayState;->packageInfo:Landroid/content/pm/PackageInfo;

    .line 70
    iget v0, p1, Lcom/android/exsettings/applications/AppStateAppOpsBridge$PermissionState;->appOpMode:I

    iput v0, p0, Lcom/android/exsettings/applications/AppStateOverlayBridge$OverlayState;->appOpMode:I

    .line 71
    iget-boolean v0, p1, Lcom/android/exsettings/applications/AppStateAppOpsBridge$PermissionState;->permissionDeclared:Z

    iput-boolean v0, p0, Lcom/android/exsettings/applications/AppStateOverlayBridge$OverlayState;->permissionDeclared:Z

    .line 72
    iget-boolean v0, p1, Lcom/android/exsettings/applications/AppStateAppOpsBridge$PermissionState;->staticPermissionGranted:Z

    iput-boolean v0, p0, Lcom/android/exsettings/applications/AppStateOverlayBridge$OverlayState;->staticPermissionGranted:Z

    .line 67
    return-void
.end method
