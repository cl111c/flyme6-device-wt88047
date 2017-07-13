.class public Lcom/android/exsettings/DreamBackend;
.super Ljava/lang/Object;
.source "DreamBackend.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exsettings/DreamBackend$DreamInfo;,
        Lcom/android/exsettings/DreamBackend$DreamInfoComparator;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mComparator:Lcom/android/exsettings/DreamBackend$DreamInfoComparator;

.field private final mContext:Landroid/content/Context;

.field private final mDreamManager:Landroid/service/dreams/IDreamManager;

.field private final mDreamsActivatedOnDockByDefault:Z

.field private final mDreamsActivatedOnSleepByDefault:Z

.field private final mDreamsEnabledByDefault:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/android/exsettings/DreamSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".Backend"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/exsettings/DreamBackend;->TAG:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-object p1, p0, Lcom/android/exsettings/DreamBackend;->mContext:Landroid/content/Context;

    .line 85
    const-string/jumbo v0, "dreams"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 84
    invoke-static {v0}, Landroid/service/dreams/IDreamManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/dreams/IDreamManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/DreamBackend;->mDreamManager:Landroid/service/dreams/IDreamManager;

    .line 86
    new-instance v0, Lcom/android/exsettings/DreamBackend$DreamInfoComparator;

    invoke-virtual {p0}, Lcom/android/exsettings/DreamBackend;->getDefaultDream()Landroid/content/ComponentName;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/exsettings/DreamBackend$DreamInfoComparator;-><init>(Landroid/content/ComponentName;)V

    iput-object v0, p0, Lcom/android/exsettings/DreamBackend;->mComparator:Lcom/android/exsettings/DreamBackend$DreamInfoComparator;

    .line 87
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 88
    const v1, 0x1120078

    .line 87
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/exsettings/DreamBackend;->mDreamsEnabledByDefault:Z

    .line 89
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 90
    const v1, 0x112007a

    .line 89
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/exsettings/DreamBackend;->mDreamsActivatedOnSleepByDefault:Z

    .line 91
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 92
    const v1, 0x1120079

    .line 91
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/exsettings/DreamBackend;->mDreamsActivatedOnDockByDefault:Z

    .line 82
    return-void
.end method

.method private getBoolean(Ljava/lang/String;Z)Z
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "def"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 173
    iget-object v0, p0, Lcom/android/exsettings/DreamBackend;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    if-eqz p2, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v3, p1, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

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

.method private static getDreamComponentName(Landroid/content/pm/ResolveInfo;)Landroid/content/ComponentName;
    .locals 3
    .param p0, "resolveInfo"    # Landroid/content/pm/ResolveInfo;

    .prologue
    const/4 v1, 0x0

    .line 234
    if-eqz p0, :cond_0

    iget-object v0, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-nez v0, :cond_1

    .line 235
    :cond_0
    return-object v1

    .line 236
    :cond_1
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v2, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private static getSettingsComponentName(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;)Landroid/content/ComponentName;
    .locals 14
    .param p0, "pm"    # Landroid/content/pm/PackageManager;
    .param p1, "resolveInfo"    # Landroid/content/pm/ResolveInfo;

    .prologue
    .line 240
    if-eqz p1, :cond_0

    .line 241
    iget-object v11, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-nez v11, :cond_1

    .line 243
    :cond_0
    const/4 v11, 0x0

    return-object v11

    .line 242
    :cond_1
    iget-object v11, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v11, v11, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    if-eqz v11, :cond_0

    .line 244
    const/4 v2, 0x0

    .line 245
    .local v2, "cn":Ljava/lang/String;
    const/4 v7, 0x0

    .line 246
    .local v7, "parser":Landroid/content/res/XmlResourceParser;
    const/4 v1, 0x0

    .line 248
    .local v1, "caughtException":Ljava/lang/Exception;
    :try_start_0
    iget-object v11, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    const-string/jumbo v12, "android.service.dream"

    invoke-virtual {v11, p0, v12}, Landroid/content/pm/ServiceInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v7

    .line 249
    .local v7, "parser":Landroid/content/res/XmlResourceParser;
    if-nez v7, :cond_3

    .line 250
    sget-object v11, Lcom/android/exsettings/DreamBackend;->TAG:Ljava/lang/String;

    const-string/jumbo v12, "No android.service.dream meta-data"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 251
    const/4 v11, 0x0

    .line 274
    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->close()V

    .line 251
    :cond_2
    return-object v11

    .line 253
    :cond_3
    :try_start_1
    iget-object v11, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v11, v11, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0, v11}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v8

    .line 254
    .local v8, "res":Landroid/content/res/Resources;
    invoke-static {v7}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    .line 256
    .local v0, "attrs":Landroid/util/AttributeSet;
    :cond_4
    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v10

    .local v10, "type":I
    const/4 v11, 0x1

    if-eq v10, v11, :cond_5

    .line 257
    const/4 v11, 0x2

    if-ne v10, v11, :cond_4

    .line 259
    :cond_5
    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 260
    .local v6, "nodeName":Ljava/lang/String;
    const-string/jumbo v11, "dream"

    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_7

    .line 261
    sget-object v11, Lcom/android/exsettings/DreamBackend;->TAG:Ljava/lang/String;

    const-string/jumbo v12, "Meta-data does not start with dream tag"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 262
    const/4 v11, 0x0

    .line 274
    if-eqz v7, :cond_6

    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->close()V

    .line 262
    :cond_6
    return-object v11

    .line 264
    :cond_7
    :try_start_2
    sget-object v11, Lcom/android/internal/R$styleable;->Dream:[I

    invoke-virtual {v8, v0, v11}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v9

    .line 265
    .local v9, "sa":Landroid/content/res/TypedArray;
    const/4 v11, 0x0

    invoke-virtual {v9, v11}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 266
    .local v2, "cn":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 274
    if-eqz v7, :cond_8

    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->close()V

    .line 276
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

    .line 277
    sget-object v11, Lcom/android/exsettings/DreamBackend;->TAG:Ljava/lang/String;

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

    .line 278
    const/4 v11, 0x0

    return-object v11

    .line 271
    .restart local v1    # "caughtException":Ljava/lang/Exception;
    :catch_0
    move-exception v5

    .line 272
    .local v5, "e":Lorg/xmlpull/v1/XmlPullParserException;
    move-object v1, v5

    .line 274
    .local v1, "caughtException":Ljava/lang/Exception;
    if-eqz v7, :cond_8

    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_0

    .line 269
    .end local v5    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .local v1, "caughtException":Ljava/lang/Exception;
    :catch_1
    move-exception v4

    .line 270
    .local v4, "e":Ljava/io/IOException;
    move-object v1, v4

    .line 274
    .local v1, "caughtException":Ljava/lang/Exception;
    if-eqz v7, :cond_8

    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_0

    .line 267
    .end local v4    # "e":Ljava/io/IOException;
    .local v1, "caughtException":Ljava/lang/Exception;
    :catch_2
    move-exception v3

    .line 268
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    move-object v1, v3

    .line 274
    .local v1, "caughtException":Ljava/lang/Exception;
    if-eqz v7, :cond_8

    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_0

    .line 273
    .end local v3    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .local v1, "caughtException":Ljava/lang/Exception;
    :catchall_0
    move-exception v11

    .line 274
    if-eqz v7, :cond_9

    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->close()V

    .line 273
    :cond_9
    throw v11

    .line 280
    .end local v1    # "caughtException":Ljava/lang/Exception;
    :cond_a
    if-eqz v2, :cond_b

    const/16 v11, 0x2f

    invoke-virtual {v2, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v11

    if-gez v11, :cond_b

    .line 281
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

    .line 283
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
    .line 286
    return-void
.end method

.method private setBoolean(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .prologue
    .line 177
    iget-object v0, p0, Lcom/android/exsettings/DreamBackend;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, p1, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 176
    return-void

    .line 177
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getActiveDream()Landroid/content/ComponentName;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 193
    iget-object v3, p0, Lcom/android/exsettings/DreamBackend;->mDreamManager:Landroid/service/dreams/IDreamManager;

    if-nez v3, :cond_0

    .line 194
    return-object v2

    .line 196
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/android/exsettings/DreamBackend;->mDreamManager:Landroid/service/dreams/IDreamManager;

    invoke-interface {v3}, Landroid/service/dreams/IDreamManager;->getDreamComponents()[Landroid/content/ComponentName;

    move-result-object v0

    .line 197
    .local v0, "dreams":[Landroid/content/ComponentName;
    if-eqz v0, :cond_1

    array-length v3, v0

    if-lez v3, :cond_1

    const/4 v3, 0x0

    aget-object v2, v0, v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-object v2

    .line 198
    .end local v0    # "dreams":[Landroid/content/ComponentName;
    :catch_0
    move-exception v1

    .line 199
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v3, Lcom/android/exsettings/DreamBackend;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "Failed to get active dream"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 200
    return-object v2
.end method

.method public getActiveDreamName()Ljava/lang/CharSequence;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 130
    invoke-virtual {p0}, Lcom/android/exsettings/DreamBackend;->getActiveDream()Landroid/content/ComponentName;

    move-result-object v0

    .line 131
    .local v0, "cn":Landroid/content/ComponentName;
    if-eqz v0, :cond_0

    .line 132
    iget-object v4, p0, Lcom/android/exsettings/DreamBackend;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 134
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v2, v0, v4}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v3

    .line 135
    .local v3, "ri":Landroid/content/pm/ServiceInfo;
    if-eqz v3, :cond_0

    .line 136
    invoke-virtual {v3, v2}, Landroid/content/pm/ServiceInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    return-object v4

    .line 138
    .end local v3    # "ri":Landroid/content/pm/ServiceInfo;
    :catch_0
    move-exception v1

    .line 139
    .local v1, "exc":Landroid/content/pm/PackageManager$NameNotFoundException;
    return-object v5

    .line 142
    .end local v1    # "exc":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    :cond_0
    return-object v5
.end method

.method public getDefaultDream()Landroid/content/ComponentName;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 119
    iget-object v1, p0, Lcom/android/exsettings/DreamBackend;->mDreamManager:Landroid/service/dreams/IDreamManager;

    if-nez v1, :cond_0

    .line 120
    return-object v3

    .line 122
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/exsettings/DreamBackend;->mDreamManager:Landroid/service/dreams/IDreamManager;

    invoke-interface {v1}, Landroid/service/dreams/IDreamManager;->getDefaultDreamComponent()Landroid/content/ComponentName;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 123
    :catch_0
    move-exception v0

    .line 124
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/android/exsettings/DreamBackend;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed to get default dream"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 125
    return-object v3
.end method

.method public getDreamInfos()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/exsettings/DreamBackend$DreamInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 96
    const-string/jumbo v8, "getDreamInfos()"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v8, v9}, Lcom/android/exsettings/DreamBackend;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 97
    invoke-virtual {p0}, Lcom/android/exsettings/DreamBackend;->getActiveDream()Landroid/content/ComponentName;

    move-result-object v0

    .line 98
    .local v0, "activeDream":Landroid/content/ComponentName;
    iget-object v8, p0, Lcom/android/exsettings/DreamBackend;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 99
    .local v4, "pm":Landroid/content/pm/PackageManager;
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v8, "android.service.dreams.DreamService"

    invoke-direct {v3, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 101
    .local v3, "dreamIntent":Landroid/content/Intent;
    const/16 v8, 0x80

    .line 100
    invoke-virtual {v4, v3, v8}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v7

    .line 102
    .local v7, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    invoke-direct {v2, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 103
    .local v2, "dreamInfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/exsettings/DreamBackend$DreamInfo;>;"
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

    .line 104
    .local v5, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v8, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v8, :cond_0

    .line 106
    new-instance v1, Lcom/android/exsettings/DreamBackend$DreamInfo;

    invoke-direct {v1}, Lcom/android/exsettings/DreamBackend$DreamInfo;-><init>()V

    .line 107
    .local v1, "dreamInfo":Lcom/android/exsettings/DreamBackend$DreamInfo;
    invoke-virtual {v5, v4}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v8

    iput-object v8, v1, Lcom/android/exsettings/DreamBackend$DreamInfo;->caption:Ljava/lang/CharSequence;

    .line 108
    invoke-virtual {v5, v4}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    iput-object v8, v1, Lcom/android/exsettings/DreamBackend$DreamInfo;->icon:Landroid/graphics/drawable/Drawable;

    .line 109
    invoke-static {v5}, Lcom/android/exsettings/DreamBackend;->getDreamComponentName(Landroid/content/pm/ResolveInfo;)Landroid/content/ComponentName;

    move-result-object v8

    iput-object v8, v1, Lcom/android/exsettings/DreamBackend$DreamInfo;->componentName:Landroid/content/ComponentName;

    .line 110
    iget-object v8, v1, Lcom/android/exsettings/DreamBackend$DreamInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v8, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v8

    iput-boolean v8, v1, Lcom/android/exsettings/DreamBackend$DreamInfo;->isActive:Z

    .line 111
    invoke-static {v4, v5}, Lcom/android/exsettings/DreamBackend;->getSettingsComponentName(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;)Landroid/content/ComponentName;

    move-result-object v8

    iput-object v8, v1, Lcom/android/exsettings/DreamBackend$DreamInfo;->settingsComponentName:Landroid/content/ComponentName;

    .line 112
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 114
    .end local v1    # "dreamInfo":Lcom/android/exsettings/DreamBackend$DreamInfo;
    .end local v5    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_1
    iget-object v8, p0, Lcom/android/exsettings/DreamBackend;->mComparator:Lcom/android/exsettings/DreamBackend$DreamInfoComparator;

    invoke-static {v2, v8}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 115
    return-object v2
.end method

.method public isActivatedOnDock()Z
    .locals 2

    .prologue
    .line 155
    const-string/jumbo v0, "screensaver_activate_on_dock"

    iget-boolean v1, p0, Lcom/android/exsettings/DreamBackend;->mDreamsActivatedOnDockByDefault:Z

    invoke-direct {p0, v0, v1}, Lcom/android/exsettings/DreamBackend;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isActivatedOnSleep()Z
    .locals 2

    .prologue
    .line 164
    const-string/jumbo v0, "screensaver_activate_on_sleep"

    iget-boolean v1, p0, Lcom/android/exsettings/DreamBackend;->mDreamsActivatedOnSleepByDefault:Z

    invoke-direct {p0, v0, v1}, Lcom/android/exsettings/DreamBackend;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isEnabled()Z
    .locals 2

    .prologue
    .line 146
    const-string/jumbo v0, "screensaver_enabled"

    iget-boolean v1, p0, Lcom/android/exsettings/DreamBackend;->mDreamsEnabledByDefault:Z

    invoke-direct {p0, v0, v1}, Lcom/android/exsettings/DreamBackend;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public launchSettings(Lcom/android/exsettings/DreamBackend$DreamInfo;)V
    .locals 3
    .param p1, "dreamInfo"    # Lcom/android/exsettings/DreamBackend$DreamInfo;

    .prologue
    .line 205
    const-string/jumbo v0, "launchSettings(%s)"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/android/exsettings/DreamBackend;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 206
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/android/exsettings/DreamBackend$DreamInfo;->settingsComponentName:Landroid/content/ComponentName;

    if-nez v0, :cond_1

    .line 207
    :cond_0
    return-void

    .line 208
    :cond_1
    iget-object v0, p0, Lcom/android/exsettings/DreamBackend;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iget-object v2, p1, Lcom/android/exsettings/DreamBackend$DreamInfo;->settingsComponentName:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 204
    return-void
.end method

.method public setActivatedOnDock(Z)V
    .locals 4
    .param p1, "value"    # Z

    .prologue
    .line 159
    const-string/jumbo v0, "setActivatedOnDock(%s)"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/android/exsettings/DreamBackend;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 160
    const-string/jumbo v0, "screensaver_activate_on_dock"

    invoke-direct {p0, v0, p1}, Lcom/android/exsettings/DreamBackend;->setBoolean(Ljava/lang/String;Z)V

    .line 158
    return-void
.end method

.method public setActivatedOnSleep(Z)V
    .locals 4
    .param p1, "value"    # Z

    .prologue
    .line 168
    const-string/jumbo v0, "setActivatedOnSleep(%s)"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/android/exsettings/DreamBackend;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 169
    const-string/jumbo v0, "screensaver_activate_on_sleep"

    invoke-direct {p0, v0, p1}, Lcom/android/exsettings/DreamBackend;->setBoolean(Ljava/lang/String;Z)V

    .line 167
    return-void
.end method

.method public setActiveDream(Landroid/content/ComponentName;)V
    .locals 6
    .param p1, "dream"    # Landroid/content/ComponentName;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 181
    const-string/jumbo v3, "setActiveDream(%s)"

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v5

    invoke-static {v3, v4}, Lcom/android/exsettings/DreamBackend;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 182
    iget-object v3, p0, Lcom/android/exsettings/DreamBackend;->mDreamManager:Landroid/service/dreams/IDreamManager;

    if-nez v3, :cond_0

    .line 183
    return-void

    .line 185
    :cond_0
    const/4 v3, 0x1

    :try_start_0
    new-array v0, v3, [Landroid/content/ComponentName;

    const/4 v3, 0x0

    aput-object p1, v0, v3

    .line 186
    .local v0, "dreams":[Landroid/content/ComponentName;
    iget-object v3, p0, Lcom/android/exsettings/DreamBackend;->mDreamManager:Landroid/service/dreams/IDreamManager;

    if-nez p1, :cond_1

    move-object v0, v2

    .end local v0    # "dreams":[Landroid/content/ComponentName;
    :cond_1
    invoke-interface {v3, v0}, Landroid/service/dreams/IDreamManager;->setDreamComponents([Landroid/content/ComponentName;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    :goto_0
    return-void

    .line 187
    :catch_0
    move-exception v1

    .line 188
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Lcom/android/exsettings/DreamBackend;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Failed to set active dream to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setEnabled(Z)V
    .locals 4
    .param p1, "value"    # Z

    .prologue
    .line 150
    const-string/jumbo v0, "setEnabled(%s)"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/android/exsettings/DreamBackend;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 151
    const-string/jumbo v0, "screensaver_enabled"

    invoke-direct {p0, v0, p1}, Lcom/android/exsettings/DreamBackend;->setBoolean(Ljava/lang/String;Z)V

    .line 149
    return-void
.end method

.method public startDreaming()V
    .locals 3

    .prologue
    .line 223
    const-string/jumbo v1, "startDreaming()"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/android/exsettings/DreamBackend;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 224
    iget-object v1, p0, Lcom/android/exsettings/DreamBackend;->mDreamManager:Landroid/service/dreams/IDreamManager;

    if-nez v1, :cond_0

    .line 225
    return-void

    .line 227
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/exsettings/DreamBackend;->mDreamManager:Landroid/service/dreams/IDreamManager;

    invoke-interface {v1}, Landroid/service/dreams/IDreamManager;->dream()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 222
    :goto_0
    return-void

    .line 228
    :catch_0
    move-exception v0

    .line 229
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/android/exsettings/DreamBackend;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed to dream"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
