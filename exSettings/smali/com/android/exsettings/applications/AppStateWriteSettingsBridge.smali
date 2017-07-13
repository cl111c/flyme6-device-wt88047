.class public Lcom/android/exsettings/applications/AppStateWriteSettingsBridge;
.super Lcom/android/exsettings/applications/AppStateAppOpsBridge;
.source "AppStateWriteSettingsBridge.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exsettings/applications/AppStateWriteSettingsBridge$WriteSettingsState;,
        Lcom/android/exsettings/applications/AppStateWriteSettingsBridge$1;
    }
.end annotation


# static fields
.field public static final FILTER_WRITE_SETTINGS:Lcom/android/exsettingslib/applications/ApplicationsState$AppFilter;

.field private static final PM_PERMISSIONS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 38
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    .line 39
    const-string/jumbo v1, "android.permission.WRITE_SETTINGS"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 38
    sput-object v0, Lcom/android/exsettings/applications/AppStateWriteSettingsBridge;->PM_PERMISSIONS:[Ljava/lang/String;

    .line 77
    new-instance v0, Lcom/android/exsettings/applications/AppStateWriteSettingsBridge$1;

    invoke-direct {v0}, Lcom/android/exsettings/applications/AppStateWriteSettingsBridge$1;-><init>()V

    sput-object v0, Lcom/android/exsettings/applications/AppStateWriteSettingsBridge;->FILTER_WRITE_SETTINGS:Lcom/android/exsettingslib/applications/ApplicationsState$AppFilter;

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/exsettingslib/applications/ApplicationsState;Lcom/android/exsettings/applications/AppStateBaseBridge$Callback;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appState"    # Lcom/android/exsettingslib/applications/ApplicationsState;
    .param p3, "callback"    # Lcom/android/exsettings/applications/AppStateBaseBridge$Callback;

    .prologue
    .line 44
    sget-object v5, Lcom/android/exsettings/applications/AppStateWriteSettingsBridge;->PM_PERMISSIONS:[Ljava/lang/String;

    const/16 v4, 0x17

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/exsettings/applications/AppStateAppOpsBridge;-><init>(Landroid/content/Context;Lcom/android/exsettingslib/applications/ApplicationsState;Lcom/android/exsettings/applications/AppStateBaseBridge$Callback;I[Ljava/lang/String;)V

    .line 43
    return-void
.end method


# virtual methods
.method public getNumberOfPackagesCanWriteSettings()I
    .locals 1

    .prologue
    .line 64
    invoke-super {p0}, Lcom/android/exsettings/applications/AppStateAppOpsBridge;->getNumPackagesAllowedByAppOps()I

    move-result v0

    return v0
.end method

.method public getNumberOfPackagesWithPermission()I
    .locals 1

    .prologue
    .line 59
    invoke-super {p0}, Lcom/android/exsettings/applications/AppStateAppOpsBridge;->getNumPackagesDeclaredPermission()I

    move-result v0

    return v0
.end method

.method public getWriteSettingsInfo(Ljava/lang/String;I)Lcom/android/exsettings/applications/AppStateWriteSettingsBridge$WriteSettingsState;
    .locals 2
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 53
    invoke-super {p0, p1, p2}, Lcom/android/exsettings/applications/AppStateAppOpsBridge;->getPermissionInfo(Ljava/lang/String;I)Lcom/android/exsettings/applications/AppStateAppOpsBridge$PermissionState;

    move-result-object v0

    .line 54
    .local v0, "permissionState":Lcom/android/exsettings/applications/AppStateAppOpsBridge$PermissionState;
    new-instance v1, Lcom/android/exsettings/applications/AppStateWriteSettingsBridge$WriteSettingsState;

    invoke-direct {v1, v0}, Lcom/android/exsettings/applications/AppStateWriteSettingsBridge$WriteSettingsState;-><init>(Lcom/android/exsettings/applications/AppStateAppOpsBridge$PermissionState;)V

    return-object v1
.end method

.method protected updateExtraInfo(Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;Ljava/lang/String;I)V
    .locals 1
    .param p1, "app"    # Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "uid"    # I

    .prologue
    .line 49
    invoke-virtual {p0, p2, p3}, Lcom/android/exsettings/applications/AppStateWriteSettingsBridge;->getWriteSettingsInfo(Ljava/lang/String;I)Lcom/android/exsettings/applications/AppStateWriteSettingsBridge$WriteSettingsState;

    move-result-object v0

    iput-object v0, p1, Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    .line 48
    return-void
.end method
