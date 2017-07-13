.class public Lcyanogenmod/app/LiveLockScreenManager;
.super Ljava/lang/Object;
.source "LiveLockScreenManager.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static sInstance:Lcyanogenmod/app/LiveLockScreenManager;

.field private static sService:Lcyanogenmod/app/ILiveLockScreenManager;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lcyanogenmod/app/LiveLockScreenManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcyanogenmod/app/LiveLockScreenManager;->TAG:Ljava/lang/String;

    .line 33
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcyanogenmod/app/LiveLockScreenManager;->mContext:Landroid/content/Context;

    .line 49
    invoke-direct {p0}, Lcyanogenmod/app/LiveLockScreenManager;->getService()Lcyanogenmod/app/ILiveLockScreenManager;

    move-result-object v0

    sput-object v0, Lcyanogenmod/app/LiveLockScreenManager;->sService:Lcyanogenmod/app/ILiveLockScreenManager;

    .line 50
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 51
    const-string/jumbo v1, "org.cyanogenmod.livelockscreen"

    .line 50
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    sget-object v0, Lcyanogenmod/app/LiveLockScreenManager;->sService:Lcyanogenmod/app/ILiveLockScreenManager;

    if-nez v0, :cond_0

    .line 52
    sget-object v0, Lcyanogenmod/app/LiveLockScreenManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Unable to get LiveLockScreenManagerService. The service either crashed, was not started, or the interface has been called to early in SystemServer init"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    :cond_0
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcyanogenmod/app/LiveLockScreenManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 74
    sget-object v0, Lcyanogenmod/app/LiveLockScreenManager;->sInstance:Lcyanogenmod/app/LiveLockScreenManager;

    if-nez v0, :cond_0

    .line 75
    new-instance v0, Lcyanogenmod/app/LiveLockScreenManager;

    invoke-direct {v0, p0}, Lcyanogenmod/app/LiveLockScreenManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcyanogenmod/app/LiveLockScreenManager;->sInstance:Lcyanogenmod/app/LiveLockScreenManager;

    .line 78
    :cond_0
    sget-object v0, Lcyanogenmod/app/LiveLockScreenManager;->sInstance:Lcyanogenmod/app/LiveLockScreenManager;

    return-object v0
.end method

.method private getService()Lcyanogenmod/app/ILiveLockScreenManager;
    .locals 2

    .prologue
    .line 59
    sget-object v1, Lcyanogenmod/app/LiveLockScreenManager;->sService:Lcyanogenmod/app/ILiveLockScreenManager;

    if-nez v1, :cond_0

    .line 60
    const-string/jumbo v1, "cmlivelockscreen"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 61
    .local v0, "b":Landroid/os/IBinder;
    if-eqz v0, :cond_0

    .line 62
    invoke-static {v0}, Lcyanogenmod/app/ILiveLockScreenManager$Stub;->asInterface(Landroid/os/IBinder;)Lcyanogenmod/app/ILiveLockScreenManager;

    move-result-object v1

    sput-object v1, Lcyanogenmod/app/LiveLockScreenManager;->sService:Lcyanogenmod/app/ILiveLockScreenManager;

    .line 66
    .end local v0    # "b":Landroid/os/IBinder;
    :cond_0
    sget-object v1, Lcyanogenmod/app/LiveLockScreenManager;->sService:Lcyanogenmod/app/ILiveLockScreenManager;

    return-object v1
.end method

.method private logServiceException(Ljava/lang/Exception;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 70
    sget-object v0, Lcyanogenmod/app/LiveLockScreenManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Unable to access LiveLockScreenServiceBroker"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 69
    return-void
.end method


# virtual methods
.method public getDefaultLiveLockScreen()Lcyanogenmod/app/LiveLockScreenInfo;
    .locals 2

    .prologue
    .line 143
    :try_start_0
    sget-object v1, Lcyanogenmod/app/LiveLockScreenManager;->sService:Lcyanogenmod/app/ILiveLockScreenManager;

    invoke-interface {v1}, Lcyanogenmod/app/ILiveLockScreenManager;->getDefaultLiveLockScreen()Lcyanogenmod/app/LiveLockScreenInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 144
    :catch_0
    move-exception v0

    .line 145
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcyanogenmod/app/LiveLockScreenManager;->logServiceException(Ljava/lang/Exception;)V

    .line 148
    const/4 v1, 0x0

    return-object v1
.end method

.method public setDefaultLiveLockScreen(Lcyanogenmod/app/LiveLockScreenInfo;)V
    .locals 2
    .param p1, "llsInfo"    # Lcyanogenmod/app/LiveLockScreenInfo;

    .prologue
    .line 128
    :try_start_0
    sget-object v1, Lcyanogenmod/app/LiveLockScreenManager;->sService:Lcyanogenmod/app/ILiveLockScreenManager;

    invoke-interface {v1, p1}, Lcyanogenmod/app/ILiveLockScreenManager;->setDefaultLiveLockScreen(Lcyanogenmod/app/LiveLockScreenInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    :goto_0
    return-void

    .line 129
    :catch_0
    move-exception v0

    .line 130
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcyanogenmod/app/LiveLockScreenManager;->logServiceException(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public setLiveLockScreenEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 177
    :try_start_0
    sget-object v1, Lcyanogenmod/app/LiveLockScreenManager;->sService:Lcyanogenmod/app/ILiveLockScreenManager;

    invoke-interface {v1, p1}, Lcyanogenmod/app/ILiveLockScreenManager;->setLiveLockScreenEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    :goto_0
    return-void

    .line 178
    :catch_0
    move-exception v0

    .line 179
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcyanogenmod/app/LiveLockScreenManager;->logServiceException(Ljava/lang/Exception;)V

    goto :goto_0
.end method
