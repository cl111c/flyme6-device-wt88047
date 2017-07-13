.class public Lcom/android/exsettings/cyanogenmod/WeatherServiceSettings;
.super Lcom/android/exsettings/SettingsPreferenceFragment;
.source "WeatherServiceSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exsettings/cyanogenmod/WeatherServiceSettings$WeatherProviderPreference;,
        Lcom/android/exsettings/cyanogenmod/WeatherServiceSettings$WeatherProviderServiceInfo;,
        Lcom/android/exsettings/cyanogenmod/WeatherServiceSettings$1;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mGeneralSettingsCategory:Landroid/preference/PreferenceCategory;

.field private mHandler:Landroid/os/Handler;

.field private mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

.field private mProvidersCategory:Landroid/preference/PreferenceCategory;

.field private mTemperatureUnit:Landroid/preference/ListPreference;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/exsettings/cyanogenmod/WeatherServiceSettings;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/exsettings/cyanogenmod/WeatherServiceSettings;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/cyanogenmod/WeatherServiceSettings;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/exsettings/cyanogenmod/WeatherServiceSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/exsettings/cyanogenmod/WeatherServiceSettings;->launchGetWeatherProviders()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/exsettings/cyanogenmod/WeatherServiceSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/exsettings/cyanogenmod/WeatherServiceSettings;->updateAdapter()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 73
    const-class v0, Lcom/android/exsettings/cyanogenmod/WeatherServiceSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/exsettings/cyanogenmod/WeatherServiceSettings;->TAG:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;-><init>()V

    .line 153
    new-instance v0, Lcom/android/exsettings/cyanogenmod/WeatherServiceSettings$1;

    invoke-direct {v0, p0}, Lcom/android/exsettings/cyanogenmod/WeatherServiceSettings$1;-><init>(Lcom/android/exsettings/cyanogenmod/WeatherServiceSettings;)V

    iput-object v0, p0, Lcom/android/exsettings/cyanogenmod/WeatherServiceSettings;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    .line 68
    return-void
.end method

.method private getEnabledWeatherServiceProvider()Landroid/content/ComponentName;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 432
    iget-object v1, p0, Lcom/android/exsettings/cyanogenmod/WeatherServiceSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "weather_provider_service"

    .line 431
    invoke-static {v1, v2}, Lcyanogenmod/providers/CMSettings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 433
    .local v0, "activeWeatherServiceProvider":Ljava/lang/String;
    if-nez v0, :cond_0

    return-object v3

    .line 434
    :cond_0
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    return-object v1
.end method

.method public static getSelectedTemperatureUnit(Landroid/content/Context;)I
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, -0x1

    .line 246
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 247
    const-string/jumbo v4, "weather_temperature_unit"

    .line 246
    invoke-static {v3, v4, v5}, Lcyanogenmod/providers/CMSettings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 248
    .local v1, "tempUnit":I
    if-eq v1, v5, :cond_0

    .line 249
    return v1

    .line 252
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget-object v0, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 253
    .local v0, "locale":Ljava/util/Locale;
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v3}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 254
    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "ms_MY"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 253
    if-nez v3, :cond_1

    .line 255
    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "si_LK"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 256
    :goto_0
    if-eqz v2, :cond_2

    .line 257
    const/4 v3, 0x2

    .line 256
    :goto_1
    return v3

    .line 253
    :cond_1
    const/4 v2, 0x1

    .local v2, "useFahrenheit":Z
    goto :goto_0

    .line 258
    .end local v2    # "useFahrenheit":Z
    :cond_2
    const/4 v3, 0x1

    goto :goto_1
.end method

.method private getSettingsComponent(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;)Landroid/content/ComponentName;
    .locals 15
    .param p1, "pm"    # Landroid/content/pm/PackageManager;
    .param p2, "resolveInfo"    # Landroid/content/pm/ResolveInfo;

    .prologue
    .line 378
    if-eqz p2, :cond_0

    .line 379
    move-object/from16 v0, p2

    iget-object v12, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-nez v12, :cond_1

    .line 381
    :cond_0
    const/4 v12, 0x0

    return-object v12

    .line 380
    :cond_1
    move-object/from16 v0, p2

    iget-object v12, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v12, v12, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    if-eqz v12, :cond_0

    .line 383
    const/4 v3, 0x0

    .line 384
    .local v3, "cn":Ljava/lang/String;
    const/4 v8, 0x0

    .line 385
    .local v8, "parser":Landroid/content/res/XmlResourceParser;
    const/4 v2, 0x0

    .line 388
    .local v2, "caughtException":Ljava/lang/Exception;
    :try_start_0
    move-object/from16 v0, p2

    iget-object v12, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 389
    const-string/jumbo v13, "cyanogenmod.weatherservice"

    .line 388
    move-object/from16 v0, p1

    invoke-virtual {v12, v0, v13}, Landroid/content/pm/ServiceInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v8

    .line 390
    .local v8, "parser":Landroid/content/res/XmlResourceParser;
    if-nez v8, :cond_3

    .line 391
    sget-object v12, Lcom/android/exsettings/cyanogenmod/WeatherServiceSettings;->TAG:Ljava/lang/String;

    const-string/jumbo v13, "Can\'t find cyanogenmod.weatherservice meta-data"

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 392
    const/4 v12, 0x0

    .line 417
    if-eqz v8, :cond_2

    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->close()V

    .line 392
    :cond_2
    return-object v12

    .line 395
    :cond_3
    :try_start_1
    move-object/from16 v0, p2

    iget-object v12, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v12, v12, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v9

    .line 396
    .local v9, "res":Landroid/content/res/Resources;
    invoke-static {v8}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v1

    .line 398
    .local v1, "attrs":Landroid/util/AttributeSet;
    :cond_4
    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v11

    .local v11, "type":I
    const/4 v12, 0x1

    if-eq v11, v12, :cond_5

    .line 399
    const/4 v12, 0x2

    if-ne v11, v12, :cond_4

    .line 401
    :cond_5
    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 402
    .local v7, "nodeName":Ljava/lang/String;
    const-string/jumbo v12, "weather-provider-service"

    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_7

    .line 403
    sget-object v12, Lcom/android/exsettings/cyanogenmod/WeatherServiceSettings;->TAG:Ljava/lang/String;

    const-string/jumbo v13, "Meta-data does not start with weather-provider-service tag"

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 404
    const/4 v12, 0x0

    .line 417
    if-eqz v8, :cond_6

    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->close()V

    .line 404
    :cond_6
    return-object v12

    .line 407
    :cond_7
    :try_start_2
    sget-object v12, Lcom/android/internal/R$styleable;->Dream:[I

    invoke-virtual {v9, v1, v12}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v10

    .line 408
    .local v10, "sa":Landroid/content/res/TypedArray;
    const/4 v12, 0x0

    invoke-virtual {v10, v12}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 409
    .local v3, "cn":Ljava/lang/String;
    invoke-virtual {v10}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 417
    if-eqz v8, :cond_8

    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->close()V

    .line 419
    .end local v1    # "attrs":Landroid/util/AttributeSet;
    .end local v2    # "caughtException":Ljava/lang/Exception;
    .end local v3    # "cn":Ljava/lang/String;
    .end local v7    # "nodeName":Ljava/lang/String;
    .end local v8    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v9    # "res":Landroid/content/res/Resources;
    .end local v10    # "sa":Landroid/content/res/TypedArray;
    .end local v11    # "type":I
    :cond_8
    :goto_0
    if-eqz v2, :cond_a

    .line 420
    sget-object v12, Lcom/android/exsettings/cyanogenmod/WeatherServiceSettings;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Error parsing : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p2

    iget-object v14, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v14, v14, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 422
    const/4 v12, 0x0

    return-object v12

    .line 414
    .restart local v2    # "caughtException":Ljava/lang/Exception;
    :catch_0
    move-exception v6

    .line 415
    .local v6, "e":Lorg/xmlpull/v1/XmlPullParserException;
    move-object v2, v6

    .line 417
    .local v2, "caughtException":Ljava/lang/Exception;
    if-eqz v8, :cond_8

    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_0

    .line 412
    .end local v6    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .local v2, "caughtException":Ljava/lang/Exception;
    :catch_1
    move-exception v5

    .line 413
    .local v5, "e":Ljava/io/IOException;
    move-object v2, v5

    .line 417
    .local v2, "caughtException":Ljava/lang/Exception;
    if-eqz v8, :cond_8

    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_0

    .line 410
    .end local v5    # "e":Ljava/io/IOException;
    .local v2, "caughtException":Ljava/lang/Exception;
    :catch_2
    move-exception v4

    .line 411
    .local v4, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    move-object v2, v4

    .line 417
    .local v2, "caughtException":Ljava/lang/Exception;
    if-eqz v8, :cond_8

    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_0

    .line 416
    .end local v4    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .local v2, "caughtException":Ljava/lang/Exception;
    :catchall_0
    move-exception v12

    .line 417
    if-eqz v8, :cond_9

    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->close()V

    .line 416
    :cond_9
    throw v12

    .line 424
    .end local v2    # "caughtException":Ljava/lang/Exception;
    :cond_a
    if-eqz v3, :cond_b

    const/16 v12, 0x2f

    invoke-virtual {v3, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v12

    if-gez v12, :cond_b

    .line 425
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    iget-object v13, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v13, v13, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 427
    :cond_b
    if-nez v3, :cond_c

    const/4 v12, 0x0

    :goto_1
    return-object v12

    :cond_c
    invoke-static {v3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v12

    goto :goto_1
.end method

.method private launchGetWeatherProviders()V
    .locals 5

    .prologue
    const/high16 v4, 0x10000000

    .line 139
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.VIEW"

    .line 140
    const v3, 0x7f0c038f

    invoke-virtual {p0, v3}, Lcom/android/exsettings/cyanogenmod/WeatherServiceSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 139
    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 141
    const/high16 v2, 0x10000000

    .line 139
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/exsettings/cyanogenmod/WeatherServiceSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    :goto_0
    return-void

    .line 142
    :catch_0
    move-exception v0

    .line 143
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.VIEW"

    .line 144
    const v3, 0x7f0c0390

    invoke-virtual {p0, v3}, Lcom/android/exsettings/cyanogenmod/WeatherServiceSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 143
    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/exsettings/cyanogenmod/WeatherServiceSettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private registerPackageMonitor()V
    .locals 5

    .prologue
    .line 133
    iget-object v0, p0, Lcom/android/exsettings/cyanogenmod/WeatherServiceSettings;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    iget-object v1, p0, Lcom/android/exsettings/cyanogenmod/WeatherServiceSettings;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    .line 134
    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v4, 0x1

    .line 133
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    .line 132
    return-void
.end method

.method private unregisterPackageMonitor()V
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/exsettings/cyanogenmod/WeatherServiceSettings;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {v0}, Lcom/android/internal/content/PackageMonitor;->unregister()V

    .line 149
    return-void
.end method

.method private updateAdapter()V
    .locals 15

    .prologue
    .line 176
    invoke-virtual {p0}, Lcom/android/exsettings/cyanogenmod/WeatherServiceSettings;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 177
    .local v5, "pm":Landroid/content/pm/PackageManager;
    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v12, "cyanogenmod.weatherservice.WeatherProviderService"

    invoke-direct {v4, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 179
    .local v4, "intent":Landroid/content/Intent;
    const/16 v12, 0x84

    .line 178
    invoke-virtual {v5, v4, v12}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v9

    .line 181
    .local v9, "resolveInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v11, Ljava/util/ArrayList;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v12

    invoke-direct {v11, v12}, Ljava/util/ArrayList;-><init>(I)V

    .line 182
    .local v11, "weatherProviderServiceInfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/exsettings/cyanogenmod/WeatherServiceSettings$WeatherProviderServiceInfo;>;"
    invoke-direct {p0}, Lcom/android/exsettings/cyanogenmod/WeatherServiceSettings;->getEnabledWeatherServiceProvider()Landroid/content/ComponentName;

    move-result-object v0

    .line 183
    .local v0, "activeService":Landroid/content/ComponentName;
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "resolveInfo$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    .line 184
    .local v7, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v12, v7, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v12, :cond_0

    .line 186
    iget-object v12, v7, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v12, v12, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    if-eqz v12, :cond_0

    .line 187
    iget-object v12, v7, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v12, v12, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    if-eqz v12, :cond_0

    .line 192
    iget-object v12, v7, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v12, v12, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    .line 193
    const-string/jumbo v13, "cyanogenmod.permission.BIND_WEATHER_PROVIDER_SERVICE"

    .line 192
    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 196
    new-instance v10, Lcom/android/exsettings/cyanogenmod/WeatherServiceSettings$WeatherProviderServiceInfo;

    const/4 v12, 0x0

    invoke-direct {v10, p0, v12}, Lcom/android/exsettings/cyanogenmod/WeatherServiceSettings$WeatherProviderServiceInfo;-><init>(Lcom/android/exsettings/cyanogenmod/WeatherServiceSettings;Lcom/android/exsettings/cyanogenmod/WeatherServiceSettings$WeatherProviderServiceInfo;)V

    .line 197
    .local v10, "serviceInfo":Lcom/android/exsettings/cyanogenmod/WeatherServiceSettings$WeatherProviderServiceInfo;
    new-instance v12, Landroid/content/ComponentName;

    iget-object v13, v7, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v13, v13, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 198
    iget-object v14, v7, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v14, v14, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 197
    invoke-direct {v12, v13, v14}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v12, v10, Lcom/android/exsettings/cyanogenmod/WeatherServiceSettings$WeatherProviderServiceInfo;->componentName:Landroid/content/ComponentName;

    .line 199
    iget-object v12, v10, Lcom/android/exsettings/cyanogenmod/WeatherServiceSettings$WeatherProviderServiceInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v12, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v12

    iput-boolean v12, v10, Lcom/android/exsettings/cyanogenmod/WeatherServiceSettings$WeatherProviderServiceInfo;->isActive:Z

    .line 200
    invoke-virtual {v7, v5}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v12

    iput-object v12, v10, Lcom/android/exsettings/cyanogenmod/WeatherServiceSettings$WeatherProviderServiceInfo;->caption:Ljava/lang/CharSequence;

    .line 201
    invoke-virtual {v7, v5}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    iput-object v12, v10, Lcom/android/exsettings/cyanogenmod/WeatherServiceSettings$WeatherProviderServiceInfo;->icon:Landroid/graphics/drawable/Drawable;

    .line 202
    invoke-direct {p0, v5, v7}, Lcom/android/exsettings/cyanogenmod/WeatherServiceSettings;->getSettingsComponent(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;)Landroid/content/ComponentName;

    move-result-object v12

    iput-object v12, v10, Lcom/android/exsettings/cyanogenmod/WeatherServiceSettings$WeatherProviderServiceInfo;->settingsComponentName:Landroid/content/ComponentName;

    .line 204
    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 207
    .end local v7    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v10    # "serviceInfo":Lcom/android/exsettings/cyanogenmod/WeatherServiceSettings$WeatherProviderServiceInfo;
    :cond_1
    invoke-virtual {p0}, Lcom/android/exsettings/cyanogenmod/WeatherServiceSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    .line 208
    .local v6, "ps":Landroid/preference/PreferenceScreen;
    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_5

    .line 209
    const-string/jumbo v12, "weather_general_settings"

    invoke-virtual {v6, v12}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    if-nez v12, :cond_2

    .line 210
    iget-object v12, p0, Lcom/android/exsettings/cyanogenmod/WeatherServiceSettings;->mGeneralSettingsCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v6, v12}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 212
    :cond_2
    const-string/jumbo v12, "weather_service_providers"

    invoke-virtual {v6, v12}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    if-nez v12, :cond_3

    .line 213
    iget-object v12, p0, Lcom/android/exsettings/cyanogenmod/WeatherServiceSettings;->mProvidersCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v6, v12}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 216
    :cond_3
    iget-object v12, p0, Lcom/android/exsettings/cyanogenmod/WeatherServiceSettings;->mProvidersCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v12}, Landroid/preference/PreferenceCategory;->removeAll()V

    .line 217
    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "info$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/exsettings/cyanogenmod/WeatherServiceSettings$WeatherProviderServiceInfo;

    .line 218
    .local v2, "info":Lcom/android/exsettings/cyanogenmod/WeatherServiceSettings$WeatherProviderServiceInfo;
    iget-object v12, p0, Lcom/android/exsettings/cyanogenmod/WeatherServiceSettings;->mProvidersCategory:Landroid/preference/PreferenceCategory;

    new-instance v13, Lcom/android/exsettings/cyanogenmod/WeatherServiceSettings$WeatherProviderPreference;

    iget-object v14, p0, Lcom/android/exsettings/cyanogenmod/WeatherServiceSettings;->mContext:Landroid/content/Context;

    invoke-direct {v13, v14, v2}, Lcom/android/exsettings/cyanogenmod/WeatherServiceSettings$WeatherProviderPreference;-><init>(Landroid/content/Context;Lcom/android/exsettings/cyanogenmod/WeatherServiceSettings$WeatherProviderServiceInfo;)V

    invoke-virtual {v12, v13}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_1

    .line 221
    .end local v2    # "info":Lcom/android/exsettings/cyanogenmod/WeatherServiceSettings$WeatherProviderServiceInfo;
    :cond_4
    new-instance v1, Landroid/preference/Preference;

    iget-object v12, p0, Lcom/android/exsettings/cyanogenmod/WeatherServiceSettings;->mContext:Landroid/content/Context;

    invoke-direct {v1, v12}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 222
    .local v1, "addServicePreference":Landroid/preference/Preference;
    const v12, 0x7f0c038e

    invoke-virtual {v1, v12}, Landroid/preference/Preference;->setTitle(I)V

    .line 223
    const v12, 0x7f02003c

    invoke-virtual {v1, v12}, Landroid/preference/Preference;->setIcon(I)V

    .line 225
    new-instance v12, Lcom/android/exsettings/cyanogenmod/WeatherServiceSettings$2;

    invoke-direct {v12, p0}, Lcom/android/exsettings/cyanogenmod/WeatherServiceSettings$2;-><init>(Lcom/android/exsettings/cyanogenmod/WeatherServiceSettings;)V

    .line 224
    invoke-virtual {v1, v12}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 232
    iget-object v12, p0, Lcom/android/exsettings/cyanogenmod/WeatherServiceSettings;->mProvidersCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v12, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 175
    .end local v1    # "addServicePreference":Landroid/preference/Preference;
    .end local v3    # "info$iterator":Ljava/util/Iterator;
    :goto_2
    return-void

    .line 235
    :cond_5
    iget-object v12, p0, Lcom/android/exsettings/cyanogenmod/WeatherServiceSettings;->mGeneralSettingsCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v6, v12}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 236
    iget-object v12, p0, Lcom/android/exsettings/cyanogenmod/WeatherServiceSettings;->mProvidersCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v6, v12}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_2
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 104
    const v0, -0x7fffffd5

    return v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 85
    invoke-super {p0, p1}, Lcom/android/exsettings/SettingsPreferenceFragment;->onAttach(Landroid/app/Activity;)V

    .line 86
    iput-object p1, p0, Lcom/android/exsettings/cyanogenmod/WeatherServiceSettings;->mContext:Landroid/content/Context;

    .line 87
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/exsettings/cyanogenmod/WeatherServiceSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/exsettings/cyanogenmod/WeatherServiceSettings;->mHandler:Landroid/os/Handler;

    .line 84
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 92
    invoke-super {p0, p1}, Lcom/android/exsettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 93
    const v1, 0x7f080070

    invoke-virtual {p0, v1}, Lcom/android/exsettings/cyanogenmod/WeatherServiceSettings;->addPreferencesFromResource(I)V

    .line 95
    invoke-virtual {p0}, Lcom/android/exsettings/cyanogenmod/WeatherServiceSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 96
    .local v0, "ps":Landroid/preference/PreferenceScreen;
    const-string/jumbo v1, "weather_general_settings"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    iput-object v1, p0, Lcom/android/exsettings/cyanogenmod/WeatherServiceSettings;->mGeneralSettingsCategory:Landroid/preference/PreferenceCategory;

    .line 97
    const-string/jumbo v1, "weather_service_providers"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    iput-object v1, p0, Lcom/android/exsettings/cyanogenmod/WeatherServiceSettings;->mProvidersCategory:Landroid/preference/PreferenceCategory;

    .line 98
    const-string/jumbo v1, "weather_temperature_unit"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    iput-object v1, p0, Lcom/android/exsettings/cyanogenmod/WeatherServiceSettings;->mTemperatureUnit:Landroid/preference/ListPreference;

    .line 99
    iget-object v1, p0, Lcom/android/exsettings/cyanogenmod/WeatherServiceSettings;->mTemperatureUnit:Landroid/preference/ListPreference;

    invoke-virtual {v1, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 91
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 118
    invoke-super {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;->onPause()V

    .line 119
    invoke-direct {p0}, Lcom/android/exsettings/cyanogenmod/WeatherServiceSettings;->unregisterPackageMonitor()V

    .line 117
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/exsettings/cyanogenmod/WeatherServiceSettings;->mTemperatureUnit:Landroid/preference/ListPreference;

    if-ne p1, v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/android/exsettings/cyanogenmod/WeatherServiceSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 126
    const-string/jumbo v1, "weather_temperature_unit"

    .line 127
    check-cast p2, Ljava/lang/String;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 125
    invoke-static {v0, v1, v2}, Lcyanogenmod/providers/CMSettings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 129
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 109
    invoke-super {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;->onResume()V

    .line 110
    invoke-direct {p0}, Lcom/android/exsettings/cyanogenmod/WeatherServiceSettings;->updateAdapter()V

    .line 111
    invoke-direct {p0}, Lcom/android/exsettings/cyanogenmod/WeatherServiceSettings;->registerPackageMonitor()V

    .line 113
    iget-object v0, p0, Lcom/android/exsettings/cyanogenmod/WeatherServiceSettings;->mTemperatureUnit:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/exsettings/cyanogenmod/WeatherServiceSettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/exsettings/cyanogenmod/WeatherServiceSettings;->getSelectedTemperatureUnit(Landroid/content/Context;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 108
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 439
    invoke-super {p0, p1, p2}, Lcom/android/exsettings/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 441
    invoke-virtual {p0}, Lcom/android/exsettings/cyanogenmod/WeatherServiceSettings;->getListView()Landroid/widget/ListView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/ListView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 442
    .local v1, "contentRoot":Landroid/view/ViewGroup;
    invoke-virtual {p0}, Lcom/android/exsettings/cyanogenmod/WeatherServiceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    .line 443
    const v6, 0x7f04006b

    const/4 v7, 0x0

    .line 442
    invoke-virtual {v5, v6, v1, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 444
    .local v3, "emptyView":Landroid/view/View;
    const v5, 0x7f130039

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 445
    .local v2, "emptyTextView":Landroid/widget/TextView;
    const v5, 0x7f0c038b

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(I)V

    .line 447
    const v5, 0x7f130106

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 448
    .local v0, "addProviderButton":Landroid/widget/Button;
    new-instance v5, Lcom/android/exsettings/cyanogenmod/WeatherServiceSettings$3;

    invoke-direct {v5, p0}, Lcom/android/exsettings/cyanogenmod/WeatherServiceSettings$3;-><init>(Lcom/android/exsettings/cyanogenmod/WeatherServiceSettings;)V

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 455
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 457
    invoke-virtual {p0}, Lcom/android/exsettings/cyanogenmod/WeatherServiceSettings;->getListView()Landroid/widget/ListView;

    move-result-object v4

    .line 458
    .local v4, "listView":Landroid/widget/ListView;
    invoke-virtual {v4, v3}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 438
    return-void
.end method
