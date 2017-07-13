.class public Lcom/android/exsettings/cyanogenmod/LiveLockScreenSettings$LiveLockScreenBackend;
.super Ljava/lang/Object;
.source "LiveLockScreenSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/cyanogenmod/LiveLockScreenSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LiveLockScreenBackend"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exsettings/cyanogenmod/LiveLockScreenSettings$LiveLockScreenBackend$LiveLockScreenInfo;,
        Lcom/android/exsettings/cyanogenmod/LiveLockScreenSettings$LiveLockScreenBackend$LiveLockScreenInfoComparator;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mComparator:Lcom/android/exsettings/cyanogenmod/LiveLockScreenSettings$LiveLockScreenBackend$LiveLockScreenInfoComparator;

.field private final mContext:Landroid/content/Context;

.field private mLLSM:Lcyanogenmod/app/LiveLockScreenManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 292
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/android/exsettings/cyanogenmod/LiveLockScreenSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".Backend"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/exsettings/cyanogenmod/LiveLockScreenSettings$LiveLockScreenBackend;->TAG:Ljava/lang/String;

    .line 291
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 320
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 321
    iput-object p1, p0, Lcom/android/exsettings/cyanogenmod/LiveLockScreenSettings$LiveLockScreenBackend;->mContext:Landroid/content/Context;

    .line 322
    new-instance v0, Lcom/android/exsettings/cyanogenmod/LiveLockScreenSettings$LiveLockScreenBackend$LiveLockScreenInfoComparator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/exsettings/cyanogenmod/LiveLockScreenSettings$LiveLockScreenBackend$LiveLockScreenInfoComparator;-><init>(Landroid/content/ComponentName;)V

    iput-object v0, p0, Lcom/android/exsettings/cyanogenmod/LiveLockScreenSettings$LiveLockScreenBackend;->mComparator:Lcom/android/exsettings/cyanogenmod/LiveLockScreenSettings$LiveLockScreenBackend$LiveLockScreenInfoComparator;

    .line 323
    invoke-static {p1}, Lcyanogenmod/app/LiveLockScreenManager;->getInstance(Landroid/content/Context;)Lcyanogenmod/app/LiveLockScreenManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/cyanogenmod/LiveLockScreenSettings$LiveLockScreenBackend;->mLLSM:Lcyanogenmod/app/LiveLockScreenManager;

    .line 320
    return-void
.end method

.method private getBoolean(Ljava/lang/String;Z)Z
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "def"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 379
    iget-object v0, p0, Lcom/android/exsettings/cyanogenmod/LiveLockScreenSettings$LiveLockScreenBackend;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    if-eqz p2, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v3, p1, v0}, Lcyanogenmod/providers/CMSettings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_1

    :goto_1
    return v1

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method private static getLiveLockScreenComponentName(Landroid/content/pm/ResolveInfo;)Landroid/content/ComponentName;
    .locals 3
    .param p0, "resolveInfo"    # Landroid/content/pm/ResolveInfo;

    .prologue
    const/4 v1, 0x0

    .line 409
    if-eqz p0, :cond_0

    iget-object v0, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-nez v0, :cond_1

    .line 410
    :cond_0
    return-object v1

    .line 412
    :cond_1
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 413
    iget-object v2, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 412
    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private static getSettingsComponentName(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;)Landroid/content/ComponentName;
    .locals 14
    .param p0, "pm"    # Landroid/content/pm/PackageManager;
    .param p1, "resolveInfo"    # Landroid/content/pm/ResolveInfo;

    .prologue
    .line 418
    if-eqz p1, :cond_0

    .line 419
    iget-object v11, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-nez v11, :cond_1

    .line 421
    :cond_0
    const/4 v11, 0x0

    return-object v11

    .line 420
    :cond_1
    iget-object v11, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v11, v11, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    if-eqz v11, :cond_0

    .line 423
    const/4 v2, 0x0

    .line 424
    .local v2, "cn":Ljava/lang/String;
    const/4 v7, 0x0

    .line 425
    .local v7, "parser":Landroid/content/res/XmlResourceParser;
    const/4 v1, 0x0

    .line 427
    .local v1, "caughtException":Ljava/lang/Exception;
    :try_start_0
    iget-object v11, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 428
    const-string/jumbo v12, "cyanogenmod.externalviews.keyguard"

    .line 427
    invoke-virtual {v11, p0, v12}, Landroid/content/pm/ServiceInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v7

    .line 429
    .local v7, "parser":Landroid/content/res/XmlResourceParser;
    if-nez v7, :cond_3

    .line 430
    sget-object v11, Lcom/android/exsettings/cyanogenmod/LiveLockScreenSettings$LiveLockScreenBackend;->TAG:Ljava/lang/String;

    const-string/jumbo v12, "No cyanogenmod.externalviews.keyguard meta-data"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 432
    const/4 v11, 0x0

    .line 457
    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->close()V

    .line 432
    :cond_2
    return-object v11

    .line 435
    :cond_3
    :try_start_1
    iget-object v11, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v11, v11, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0, v11}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v8

    .line 436
    .local v8, "res":Landroid/content/res/Resources;
    invoke-static {v7}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    .line 438
    .local v0, "attrs":Landroid/util/AttributeSet;
    :cond_4
    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v10

    .local v10, "type":I
    const/4 v11, 0x1

    if-eq v10, v11, :cond_5

    .line 439
    const/4 v11, 0x2

    if-ne v10, v11, :cond_4

    .line 441
    :cond_5
    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 442
    .local v6, "nodeName":Ljava/lang/String;
    const-string/jumbo v11, "lockscreen"

    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_7

    .line 443
    sget-object v11, Lcom/android/exsettings/cyanogenmod/LiveLockScreenSettings$LiveLockScreenBackend;->TAG:Ljava/lang/String;

    const-string/jumbo v12, "Meta-data does not start with lockscreen tag"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 444
    const/4 v11, 0x0

    .line 457
    if-eqz v7, :cond_6

    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->close()V

    .line 444
    :cond_6
    return-object v11

    .line 447
    :cond_7
    :try_start_2
    sget-object v11, Lcom/android/internal/R$styleable;->Dream:[I

    invoke-virtual {v8, v0, v11}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v9

    .line 448
    .local v9, "sa":Landroid/content/res/TypedArray;
    const/4 v11, 0x0

    invoke-virtual {v9, v11}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 449
    .local v2, "cn":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 457
    if-eqz v7, :cond_8

    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->close()V

    .line 459
    .end local v0    # "attrs":Landroid/util/AttributeSet;
    .end local v1    # "caughtException":Ljava/lang/Exception;
    .end local v2    # "cn":Ljava/lang/String;
    .end local v6    # "nodeName":Ljava/lang/String;
    .end local v7    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v8    # "res":Landroid/content/res/Resources;
    .end local v9    # "sa":Landroid/content/res/TypedArray;
    .end local v10    # "type":I
    :cond_8
    :goto_0
    if-eqz v1, :cond_a

    .line 460
    sget-object v11, Lcom/android/exsettings/cyanogenmod/LiveLockScreenSettings$LiveLockScreenBackend;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Error parsing : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v13, v13, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 462
    const/4 v11, 0x0

    return-object v11

    .line 454
    .restart local v1    # "caughtException":Ljava/lang/Exception;
    :catch_0
    move-exception v5

    .line 455
    .local v5, "e":Lorg/xmlpull/v1/XmlPullParserException;
    move-object v1, v5

    .line 457
    .local v1, "caughtException":Ljava/lang/Exception;
    if-eqz v7, :cond_8

    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_0

    .line 452
    .end local v5    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .local v1, "caughtException":Ljava/lang/Exception;
    :catch_1
    move-exception v4

    .line 453
    .local v4, "e":Ljava/io/IOException;
    move-object v1, v4

    .line 457
    .local v1, "caughtException":Ljava/lang/Exception;
    if-eqz v7, :cond_8

    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_0

    .line 450
    .end local v4    # "e":Ljava/io/IOException;
    .local v1, "caughtException":Ljava/lang/Exception;
    :catch_2
    move-exception v3

    .line 451
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    move-object v1, v3

    .line 457
    .local v1, "caughtException":Ljava/lang/Exception;
    if-eqz v7, :cond_8

    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_0

    .line 456
    .end local v3    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .local v1, "caughtException":Ljava/lang/Exception;
    :catchall_0
    move-exception v11

    .line 457
    if-eqz v7, :cond_9

    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->close()V

    .line 456
    :cond_9
    throw v11

    .line 464
    .end local v1    # "caughtException":Ljava/lang/Exception;
    :cond_a
    if-eqz v2, :cond_b

    const/16 v11, 0x2f

    invoke-virtual {v2, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v11

    if-gez v11, :cond_b

    .line 465
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v12, v12, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 467
    :cond_b
    if-nez v2, :cond_c

    const/4 v11, 0x0

    :goto_1
    return-object v11

    :cond_c
    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v11

    goto :goto_1
.end method

.method private static varargs logd(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 470
    return-void
.end method

.method private setBoolean(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .prologue
    .line 383
    iget-object v0, p0, Lcom/android/exsettings/cyanogenmod/LiveLockScreenSettings$LiveLockScreenBackend;->mLLSM:Lcyanogenmod/app/LiveLockScreenManager;

    invoke-virtual {v0, p2}, Lcyanogenmod/app/LiveLockScreenManager;->setLiveLockScreenEnabled(Z)V

    .line 382
    return-void
.end method


# virtual methods
.method public getActiveLiveLockScreen()Landroid/content/ComponentName;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 395
    iget-object v2, p0, Lcom/android/exsettings/cyanogenmod/LiveLockScreenSettings$LiveLockScreenBackend;->mLLSM:Lcyanogenmod/app/LiveLockScreenManager;

    invoke-virtual {v2}, Lcyanogenmod/app/LiveLockScreenManager;->getDefaultLiveLockScreen()Lcyanogenmod/app/LiveLockScreenInfo;

    move-result-object v0

    .line 396
    .local v0, "llsInfo":Lcyanogenmod/app/LiveLockScreenInfo;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcyanogenmod/app/LiveLockScreenInfo;->component:Landroid/content/ComponentName;

    :cond_0
    return-object v1
.end method

.method public getLiveLockScreenInfos()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/exsettings/cyanogenmod/LiveLockScreenSettings$LiveLockScreenBackend$LiveLockScreenInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 327
    const-string/jumbo v8, "getLiveLockScreenInfos()"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v8, v9}, Lcom/android/exsettings/cyanogenmod/LiveLockScreenSettings$LiveLockScreenBackend;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 328
    invoke-virtual {p0}, Lcom/android/exsettings/cyanogenmod/LiveLockScreenSettings$LiveLockScreenBackend;->getActiveLiveLockScreen()Landroid/content/ComponentName;

    move-result-object v0

    .line 329
    .local v0, "activeLiveLockScreen":Landroid/content/ComponentName;
    iget-object v8, p0, Lcom/android/exsettings/cyanogenmod/LiveLockScreenSettings$LiveLockScreenBackend;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 331
    .local v4, "pm":Landroid/content/pm/PackageManager;
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v8, "cyanogenmod.externalviews.KeyguardExternalViewProviderService"

    invoke-direct {v3, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 333
    .local v3, "liveLockScreenIntent":Landroid/content/Intent;
    const/16 v8, 0x80

    .line 332
    invoke-virtual {v4, v3, v8}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v7

    .line 334
    .local v7, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    invoke-direct {v2, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 335
    .local v2, "liveLockScreenInfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/exsettings/cyanogenmod/LiveLockScreenSettings$LiveLockScreenBackend$LiveLockScreenInfo;>;"
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "resolveInfo$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 336
    .local v5, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v8, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v8, :cond_0

    .line 339
    new-instance v1, Lcom/android/exsettings/cyanogenmod/LiveLockScreenSettings$LiveLockScreenBackend$LiveLockScreenInfo;

    invoke-direct {v1}, Lcom/android/exsettings/cyanogenmod/LiveLockScreenSettings$LiveLockScreenBackend$LiveLockScreenInfo;-><init>()V

    .line 340
    .local v1, "liveLockScreenInfo":Lcom/android/exsettings/cyanogenmod/LiveLockScreenSettings$LiveLockScreenBackend$LiveLockScreenInfo;
    invoke-virtual {v5, v4}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v8

    iput-object v8, v1, Lcom/android/exsettings/cyanogenmod/LiveLockScreenSettings$LiveLockScreenBackend$LiveLockScreenInfo;->caption:Ljava/lang/CharSequence;

    .line 341
    invoke-virtual {v5, v4}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    iput-object v8, v1, Lcom/android/exsettings/cyanogenmod/LiveLockScreenSettings$LiveLockScreenBackend$LiveLockScreenInfo;->icon:Landroid/graphics/drawable/Drawable;

    .line 342
    invoke-static {v5}, Lcom/android/exsettings/cyanogenmod/LiveLockScreenSettings$LiveLockScreenBackend;->getLiveLockScreenComponentName(Landroid/content/pm/ResolveInfo;)Landroid/content/ComponentName;

    move-result-object v8

    iput-object v8, v1, Lcom/android/exsettings/cyanogenmod/LiveLockScreenSettings$LiveLockScreenBackend$LiveLockScreenInfo;->componentName:Landroid/content/ComponentName;

    .line 343
    iget-object v8, v1, Lcom/android/exsettings/cyanogenmod/LiveLockScreenSettings$LiveLockScreenBackend$LiveLockScreenInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v8, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v8

    iput-boolean v8, v1, Lcom/android/exsettings/cyanogenmod/LiveLockScreenSettings$LiveLockScreenBackend$LiveLockScreenInfo;->isActive:Z

    .line 346
    invoke-static {v4, v5}, Lcom/android/exsettings/cyanogenmod/LiveLockScreenSettings$LiveLockScreenBackend;->getSettingsComponentName(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;)Landroid/content/ComponentName;

    move-result-object v8

    .line 345
    iput-object v8, v1, Lcom/android/exsettings/cyanogenmod/LiveLockScreenSettings$LiveLockScreenBackend$LiveLockScreenInfo;->settingsComponentName:Landroid/content/ComponentName;

    .line 347
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 349
    .end local v1    # "liveLockScreenInfo":Lcom/android/exsettings/cyanogenmod/LiveLockScreenSettings$LiveLockScreenBackend$LiveLockScreenInfo;
    .end local v5    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_1
    iget-object v8, p0, Lcom/android/exsettings/cyanogenmod/LiveLockScreenSettings$LiveLockScreenBackend;->mComparator:Lcom/android/exsettings/cyanogenmod/LiveLockScreenSettings$LiveLockScreenBackend$LiveLockScreenInfoComparator;

    invoke-static {v2, v8}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 350
    return-object v2
.end method

.method public isEnabled()Z
    .locals 2

    .prologue
    .line 370
    const-string/jumbo v0, "live_lock_screen_enabled"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/exsettings/cyanogenmod/LiveLockScreenSettings$LiveLockScreenBackend;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public launchSettings(Lcom/android/exsettings/cyanogenmod/LiveLockScreenSettings$LiveLockScreenBackend$LiveLockScreenInfo;)V
    .locals 3
    .param p1, "liveLockScreenInfo"    # Lcom/android/exsettings/cyanogenmod/LiveLockScreenSettings$LiveLockScreenBackend$LiveLockScreenInfo;

    .prologue
    .line 400
    const-string/jumbo v0, "launchSettings(%s)"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/android/exsettings/cyanogenmod/LiveLockScreenSettings$LiveLockScreenBackend;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 401
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/android/exsettings/cyanogenmod/LiveLockScreenSettings$LiveLockScreenBackend$LiveLockScreenInfo;->settingsComponentName:Landroid/content/ComponentName;

    if-nez v0, :cond_1

    .line 402
    :cond_0
    return-void

    .line 404
    :cond_1
    iget-object v0, p0, Lcom/android/exsettings/cyanogenmod/LiveLockScreenSettings$LiveLockScreenBackend;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 405
    iget-object v2, p1, Lcom/android/exsettings/cyanogenmod/LiveLockScreenSettings$LiveLockScreenBackend$LiveLockScreenInfo;->settingsComponentName:Landroid/content/ComponentName;

    .line 404
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 399
    return-void
.end method

.method public setActiveLiveLockScreen(Landroid/content/ComponentName;)V
    .locals 4
    .param p1, "liveLockScreen"    # Landroid/content/ComponentName;

    .prologue
    .line 387
    const-string/jumbo v1, "setActiveLiveLockScreen(%s)"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Lcom/android/exsettings/cyanogenmod/LiveLockScreenSettings$LiveLockScreenBackend;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 389
    new-instance v0, Lcyanogenmod/app/LiveLockScreenInfo$Builder;

    invoke-direct {v0}, Lcyanogenmod/app/LiveLockScreenInfo$Builder;-><init>()V

    .line 390
    .local v0, "builder":Lcyanogenmod/app/LiveLockScreenInfo$Builder;
    invoke-virtual {v0, p1}, Lcyanogenmod/app/LiveLockScreenInfo$Builder;->setComponent(Landroid/content/ComponentName;)Lcyanogenmod/app/LiveLockScreenInfo$Builder;

    .line 391
    iget-object v1, p0, Lcom/android/exsettings/cyanogenmod/LiveLockScreenSettings$LiveLockScreenBackend;->mLLSM:Lcyanogenmod/app/LiveLockScreenManager;

    invoke-virtual {v0}, Lcyanogenmod/app/LiveLockScreenInfo$Builder;->build()Lcyanogenmod/app/LiveLockScreenInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcyanogenmod/app/LiveLockScreenManager;->setDefaultLiveLockScreen(Lcyanogenmod/app/LiveLockScreenInfo;)V

    .line 386
    return-void
.end method

.method public setEnabled(Z)V
    .locals 4
    .param p1, "value"    # Z

    .prologue
    .line 374
    const-string/jumbo v0, "setEnabled(%s)"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/android/exsettings/cyanogenmod/LiveLockScreenSettings$LiveLockScreenBackend;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 375
    const-string/jumbo v0, "live_lock_screen_enabled"

    invoke-direct {p0, v0, p1}, Lcom/android/exsettings/cyanogenmod/LiveLockScreenSettings$LiveLockScreenBackend;->setBoolean(Ljava/lang/String;Z)V

    .line 373
    return-void
.end method
