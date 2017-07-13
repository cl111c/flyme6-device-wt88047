.class public Lcom/android/exsettings/applications/AppStatePowerBridge;
.super Lcom/android/exsettings/applications/AppStateBaseBridge;
.source "AppStatePowerBridge.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exsettings/applications/AppStatePowerBridge$HighPowerState;,
        Lcom/android/exsettings/applications/AppStatePowerBridge$1;
    }
.end annotation


# static fields
.field public static final FILTER_POWER_WHITELISTED:Lcom/android/exsettingslib/applications/ApplicationsState$AppFilter;


# instance fields
.field private final mBackend:Lcom/android/exsettings/fuelgauge/PowerWhitelistBackend;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 58
    new-instance v0, Lcom/android/exsettingslib/applications/ApplicationsState$CompoundFilter;

    .line 59
    sget-object v1, Lcom/android/exsettingslib/applications/ApplicationsState;->FILTER_PERSONAL_WITHOUT_DISABLED_UNTIL_USED:Lcom/android/exsettingslib/applications/ApplicationsState$AppFilter;

    new-instance v2, Lcom/android/exsettings/applications/AppStatePowerBridge$1;

    invoke-direct {v2}, Lcom/android/exsettings/applications/AppStatePowerBridge$1;-><init>()V

    .line 58
    invoke-direct {v0, v1, v2}, Lcom/android/exsettingslib/applications/ApplicationsState$CompoundFilter;-><init>(Lcom/android/exsettingslib/applications/ApplicationsState$AppFilter;Lcom/android/exsettingslib/applications/ApplicationsState$AppFilter;)V

    sput-object v0, Lcom/android/exsettings/applications/AppStatePowerBridge;->FILTER_POWER_WHITELISTED:Lcom/android/exsettingslib/applications/ApplicationsState$AppFilter;

    .line 29
    return-void
.end method

.method public constructor <init>(Lcom/android/exsettingslib/applications/ApplicationsState;Lcom/android/exsettings/applications/AppStateBaseBridge$Callback;)V
    .locals 1
    .param p1, "appState"    # Lcom/android/exsettingslib/applications/ApplicationsState;
    .param p2, "callback"    # Lcom/android/exsettings/applications/AppStateBaseBridge$Callback;

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Lcom/android/exsettings/applications/AppStateBaseBridge;-><init>(Lcom/android/exsettingslib/applications/ApplicationsState;Lcom/android/exsettings/applications/AppStateBaseBridge$Callback;)V

    .line 31
    invoke-static {}, Lcom/android/exsettings/fuelgauge/PowerWhitelistBackend;->getInstance()Lcom/android/exsettings/fuelgauge/PowerWhitelistBackend;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/applications/AppStatePowerBridge;->mBackend:Lcom/android/exsettings/fuelgauge/PowerWhitelistBackend;

    .line 33
    return-void
.end method


# virtual methods
.method protected loadAllExtraInfo()V
    .locals 6

    .prologue
    .line 39
    iget-object v4, p0, Lcom/android/exsettings/applications/AppStatePowerBridge;->mAppSession:Lcom/android/exsettingslib/applications/ApplicationsState$Session;

    invoke-virtual {v4}, Lcom/android/exsettingslib/applications/ApplicationsState$Session;->getAllApps()Ljava/util/ArrayList;

    move-result-object v2

    .line 40
    .local v2, "apps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 41
    .local v0, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 42
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;

    .line 43
    .local v1, "app":Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;
    iget-object v4, p0, Lcom/android/exsettings/applications/AppStatePowerBridge;->mBackend:Lcom/android/exsettings/fuelgauge/PowerWhitelistBackend;

    iget-object v5, v1, Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/android/exsettings/fuelgauge/PowerWhitelistBackend;->isWhitelisted(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 44
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 43
    :goto_1
    iput-object v4, v1, Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    .line 41
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 44
    :cond_0
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_1

    .line 38
    .end local v1    # "app":Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;
    :cond_1
    return-void
.end method

.method protected updateExtraInfo(Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;Ljava/lang/String;I)V
    .locals 1
    .param p1, "app"    # Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "uid"    # I

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/exsettings/applications/AppStatePowerBridge;->mBackend:Lcom/android/exsettings/fuelgauge/PowerWhitelistBackend;

    invoke-virtual {v0, p2}, Lcom/android/exsettings/fuelgauge/PowerWhitelistBackend;->isWhitelisted(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_0
    iput-object v0, p1, Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    .line 49
    return-void

    .line 50
    :cond_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0
.end method
