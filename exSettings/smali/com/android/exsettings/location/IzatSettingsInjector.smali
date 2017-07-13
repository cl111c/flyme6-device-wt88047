.class Lcom/android/exsettings/location/IzatSettingsInjector;
.super Lcom/android/exsettings/location/SettingsInjector;
.source "IzatSettingsInjector.java"


# static fields
.field private static final GS_PACKAGE_NAMES:[Ljava/lang/String;

.field private static final PRINT_DEBUG_LOG:Z

.field private static mGsExists:I


# instance fields
.field private final IZAT_EULA_PACKAGE_NAME:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 53
    const-string/jumbo v0, "IzatSettingsInjector"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/exsettings/location/IzatSettingsInjector;->PRINT_DEBUG_LOG:Z

    .line 55
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "com.google.android.gms"

    aput-object v1, v0, v3

    .line 56
    const-string/jumbo v1, "com.google.android.location"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 55
    sput-object v0, Lcom/android/exsettings/location/IzatSettingsInjector;->GS_PACKAGE_NAMES:[Ljava/lang/String;

    .line 62
    sput v3, Lcom/android/exsettings/location/IzatSettingsInjector;->mGsExists:I

    .line 51
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/android/exsettings/location/SettingsInjector;-><init>(Landroid/content/Context;)V

    .line 57
    const-string/jumbo v0, "com.qualcomm.location.XT"

    iput-object v0, p0, Lcom/android/exsettings/location/IzatSettingsInjector;->IZAT_EULA_PACKAGE_NAME:Ljava/lang/String;

    .line 77
    return-void
.end method

.method private static checkGsPresence(Landroid/content/Context;)V
    .locals 11
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v10, 0x1

    const/4 v6, 0x0

    .line 82
    const/4 v5, 0x2

    sput v5, Lcom/android/exsettings/location/IzatSettingsInjector;->mGsExists:I

    .line 85
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 86
    .local v4, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v4, v6}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v3

    .line 88
    .local v3, "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "packageInfo$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 89
    .local v0, "packageInfo":Landroid/content/pm/ApplicationInfo;
    sget v5, Lcom/android/exsettings/location/IzatSettingsInjector;->mGsExists:I

    if-eq v5, v10, :cond_3

    .line 90
    sget-object v7, Lcom/android/exsettings/location/IzatSettingsInjector;->GS_PACKAGE_NAMES:[Ljava/lang/String;

    array-length v8, v7

    move v5, v6

    :goto_1
    if-ge v5, v8, :cond_0

    aget-object v2, v7, v5

    .line 91
    .local v2, "packageName":Ljava/lang/String;
    iget-object v9, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 92
    sget-boolean v5, Lcom/android/exsettings/location/IzatSettingsInjector;->PRINT_DEBUG_LOG:Z

    if-eqz v5, :cond_1

    const-string/jumbo v5, "IzatSettingsInjector"

    const-string/jumbo v7, "Found GS Packages"

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    :cond_1
    sput v10, Lcom/android/exsettings/location/IzatSettingsInjector;->mGsExists:I

    goto :goto_0

    .line 90
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 81
    .end local v0    # "packageInfo":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "packageName":Ljava/lang/String;
    :cond_3
    return-void
.end method

.method public static getSettingInjector(Landroid/content/Context;)Lcom/android/exsettings/location/SettingsInjector;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 66
    sget v0, Lcom/android/exsettings/location/IzatSettingsInjector;->mGsExists:I

    if-nez v0, :cond_0

    .line 67
    invoke-static {p0}, Lcom/android/exsettings/location/IzatSettingsInjector;->checkGsPresence(Landroid/content/Context;)V

    .line 70
    :cond_0
    sget v0, Lcom/android/exsettings/location/IzatSettingsInjector;->mGsExists:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 71
    new-instance v0, Lcom/android/exsettings/location/SettingsInjector;

    invoke-direct {v0, p0}, Lcom/android/exsettings/location/SettingsInjector;-><init>(Landroid/content/Context;)V

    return-object v0

    .line 73
    :cond_1
    new-instance v0, Lcom/android/exsettings/location/IzatSettingsInjector;

    invoke-direct {v0, p0}, Lcom/android/exsettings/location/IzatSettingsInjector;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method protected parseServiceInfo(Landroid/content/pm/ResolveInfo;Landroid/os/UserHandle;Landroid/content/pm/PackageManager;)Lcom/android/exsettings/location/InjectedSetting;
    .locals 3
    .param p1, "service"    # Landroid/content/pm/ResolveInfo;
    .param p2, "userHandle"    # Landroid/os/UserHandle;
    .param p3, "pm"    # Landroid/content/pm/PackageManager;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 107
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 108
    .local v0, "si":Landroid/content/pm/ServiceInfo;
    iget-object v1, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    const-string/jumbo v2, "com.qualcomm.location.XT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 109
    const/4 v1, 0x0

    return-object v1

    .line 112
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/exsettings/location/SettingsInjector;->parseServiceInfo(Landroid/content/pm/ResolveInfo;Landroid/os/UserHandle;Landroid/content/pm/PackageManager;)Lcom/android/exsettings/location/InjectedSetting;

    move-result-object v1

    return-object v1
.end method
