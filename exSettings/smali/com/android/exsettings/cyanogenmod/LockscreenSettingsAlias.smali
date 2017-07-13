.class public Lcom/android/exsettings/cyanogenmod/LockscreenSettingsAlias;
.super Lcom/android/exsettings/SecuritySettings;
.source "LockscreenSettingsAlias.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exsettings/cyanogenmod/LockscreenSettingsAlias$SecuritySearchIndexProvider;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/exsettings/search/Indexable$SearchIndexProvider;


# direct methods
.method static synthetic -get0()I
    .locals 1

    sget v0, Lcom/android/exsettings/cyanogenmod/LockscreenSettingsAlias;->MY_USER_ID:I

    return v0
.end method

.method static synthetic -wrap0(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "lockPatternUtils"    # Lcom/android/internal/widget/LockPatternUtils;

    .prologue
    invoke-static {p0, p1}, Lcom/android/exsettings/cyanogenmod/LockscreenSettingsAlias;->getResIdForLockUnlockScreen(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Landroid/content/pm/PackageManager;Lcom/android/internal/widget/LockPatternUtils;Landroid/app/admin/DevicePolicyManager;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "pm"    # Landroid/content/pm/PackageManager;
    .param p1, "utils"    # Lcom/android/internal/widget/LockPatternUtils;
    .param p2, "dpm"    # Landroid/app/admin/DevicePolicyManager;

    .prologue
    invoke-static {p0, p1, p2}, Lcom/android/exsettings/cyanogenmod/LockscreenSettingsAlias;->getActiveTrustAgents(Landroid/content/pm/PackageManager;Lcom/android/internal/widget/LockPatternUtils;Landroid/app/admin/DevicePolicyManager;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    new-instance v0, Lcom/android/exsettings/cyanogenmod/LockscreenSettingsAlias$SecuritySearchIndexProvider;

    invoke-direct {v0}, Lcom/android/exsettings/cyanogenmod/LockscreenSettingsAlias$SecuritySearchIndexProvider;-><init>()V

    .line 39
    sput-object v0, Lcom/android/exsettings/cyanogenmod/LockscreenSettingsAlias;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/exsettings/search/Indexable$SearchIndexProvider;

    .line 38
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/android/exsettings/SecuritySettings;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 136
    invoke-super {p0, p1}, Lcom/android/exsettings/SecuritySettings;->onCreate(Landroid/os/Bundle;)V

    .line 135
    return-void
.end method
