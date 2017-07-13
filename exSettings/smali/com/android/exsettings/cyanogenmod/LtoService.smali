.class public Lcom/android/exsettings/cyanogenmod/LtoService;
.super Landroid/app/Service;
.source "LtoService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exsettings/cyanogenmod/LtoService$LtoDownloadTask;
    }
.end annotation


# instance fields
.field private mHardware:Lcyanogenmod/hardware/CMHardwareManager;

.field private mTask:Lcom/android/exsettings/cyanogenmod/LtoService$LtoDownloadTask;


# direct methods
.method static synthetic -wrap0(Lcom/android/exsettings/cyanogenmod/LtoService;J)Landroid/app/PendingIntent;
    .locals 1
    .param p1, "lastDownload"    # J

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/exsettings/cyanogenmod/LtoService;->scheduleNextDownload(J)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/exsettings/cyanogenmod/LtoService;)J
    .locals 2

    invoke-direct {p0}, Lcom/android/exsettings/cyanogenmod/LtoService;->getLastDownload()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic -wrap2(Lcom/android/exsettings/cyanogenmod/LtoService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/exsettings/cyanogenmod/LtoService;->notifyNewGpsData()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method private getLastDownload()J
    .locals 4

    .prologue
    .line 335
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 336
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string/jumbo v1, "lto_last_download"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    return-wide v2
.end method

.method private notifyNewGpsData()V
    .locals 2

    .prologue
    .line 319
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.cyanogenmod.actions.NEW_GPS_DATA"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 320
    .local v0, "intent":Landroid/content/Intent;
    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Lcom/android/exsettings/cyanogenmod/LtoService;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 318
    return-void
.end method

.method private scheduleNextDownload(J)Landroid/app/PendingIntent;
    .locals 9
    .param p1, "lastDownload"    # J

    .prologue
    .line 324
    const-string/jumbo v5, "alarm"

    invoke-virtual {p0, v5}, Lcom/android/exsettings/cyanogenmod/LtoService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 325
    .local v0, "am":Landroid/app/AlarmManager;
    new-instance v1, Landroid/content/Intent;

    const-class v5, Lcom/android/exsettings/cyanogenmod/LtoService;

    invoke-direct {v1, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 326
    .local v1, "intent":Landroid/content/Intent;
    const/4 v5, 0x0

    .line 327
    const/high16 v6, 0x48000000    # 131072.0f

    .line 326
    invoke-static {p0, v5, v1, v6}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 329
    .local v4, "pi":Landroid/app/PendingIntent;
    iget-object v5, p0, Lcom/android/exsettings/cyanogenmod/LtoService;->mHardware:Lcyanogenmod/hardware/CMHardwareManager;

    invoke-virtual {v5}, Lcyanogenmod/hardware/CMHardwareManager;->getLtoDownloadInterval()J

    move-result-wide v6

    add-long v2, p1, v6

    .line 330
    .local v2, "nextLtoDownload":J
    const/4 v5, 0x1

    invoke-virtual {v0, v5, v2, v3, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 331
    return-object v4
.end method

.method private shouldDownload()Z
    .locals 15

    .prologue
    const/4 v14, 0x1

    const/4 v13, 0x0

    .line 115
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v8

    .line 116
    .local v8, "prefs":Landroid/content/SharedPreferences;
    const-string/jumbo v10, "connectivity"

    invoke-virtual {p0, v10}, Lcom/android/exsettings/cyanogenmod/LtoService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 117
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 119
    .local v1, "info":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 123
    const-string/jumbo v10, "lto_download_data_wifi_only"

    .line 122
    invoke-interface {v8, v10, v13}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    .line 124
    .local v9, "wifiOnly":Z
    if-eqz v9, :cond_1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v10

    if-eq v10, v14, :cond_1

    .line 126
    const-string/jumbo v10, "LtoService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Active network is of type "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 127
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v12

    .line 126
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 127
    const-string/jumbo v12, ", but Wifi only was selected"

    .line 126
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    return v13

    .line 120
    .end local v9    # "wifiOnly":Z
    :cond_0
    const-string/jumbo v10, "LtoService"

    const-string/jumbo v11, "No network connection is available for LTO download"

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 134
    .local v6, "now":J
    invoke-direct {p0}, Lcom/android/exsettings/cyanogenmod/LtoService;->getLastDownload()J

    move-result-wide v4

    .line 135
    .local v4, "lastDownload":J
    iget-object v10, p0, Lcom/android/exsettings/cyanogenmod/LtoService;->mHardware:Lcyanogenmod/hardware/CMHardwareManager;

    invoke-virtual {v10}, Lcyanogenmod/hardware/CMHardwareManager;->getLtoDownloadInterval()J

    move-result-wide v10

    add-long v2, v4, v10

    .line 138
    .local v2, "due":J
    const-string/jumbo v10, "LtoService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Now "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " due "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    new-instance v12, Ljava/util/Date;

    invoke-direct {v12, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    const-wide/16 v10, 0x0

    cmp-long v10, v4, v10

    if-eqz v10, :cond_2

    cmp-long v10, v6, v2

    if-gez v10, :cond_2

    .line 142
    const-string/jumbo v10, "LtoService"

    const-string/jumbo v11, "LTO download is not due yet"

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    return v13

    .line 146
    :cond_2
    return v14
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 97
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 102
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 103
    invoke-static {p0}, Lcyanogenmod/hardware/CMHardwareManager;->getInstance(Landroid/content/Context;)Lcyanogenmod/hardware/CMHardwareManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/cyanogenmod/LtoService;->mHardware:Lcyanogenmod/hardware/CMHardwareManager;

    .line 101
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 108
    iget-object v0, p0, Lcom/android/exsettings/cyanogenmod/LtoService;->mTask:Lcom/android/exsettings/cyanogenmod/LtoService$LtoDownloadTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/exsettings/cyanogenmod/LtoService;->mTask:Lcom/android/exsettings/cyanogenmod/LtoService$LtoDownloadTask;

    invoke-virtual {v0}, Lcom/android/exsettings/cyanogenmod/LtoService$LtoDownloadTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_0

    .line 109
    iget-object v0, p0, Lcom/android/exsettings/cyanogenmod/LtoService;->mTask:Lcom/android/exsettings/cyanogenmod/LtoService$LtoDownloadTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/exsettings/cyanogenmod/LtoService$LtoDownloadTask;->cancel(Z)Z

    .line 110
    iput-object v2, p0, Lcom/android/exsettings/cyanogenmod/LtoService;->mTask:Lcom/android/exsettings/cyanogenmod/LtoService$LtoDownloadTask;

    .line 107
    :cond_0
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    const/4 v4, 0x3

    const/4 v2, 0x2

    .line 67
    iget-object v0, p0, Lcom/android/exsettings/cyanogenmod/LtoService;->mHardware:Lcyanogenmod/hardware/CMHardwareManager;

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/android/exsettings/cyanogenmod/LtoService;->mHardware:Lcyanogenmod/hardware/CMHardwareManager;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Lcyanogenmod/hardware/CMHardwareManager;->isSupported(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    invoke-static {p0}, Lcom/android/exsettings/location/LocationSettings;->isLocationModeEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 73
    const-string/jumbo v0, "LtoService"

    const-string/jumbo v1, "Location mode not enabled in this device"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    return v2

    .line 69
    :cond_0
    const-string/jumbo v0, "LtoService"

    const-string/jumbo v1, "LTO is not supported by this device"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    return v2

    .line 77
    :cond_1
    iget-object v0, p0, Lcom/android/exsettings/cyanogenmod/LtoService;->mTask:Lcom/android/exsettings/cyanogenmod/LtoService$LtoDownloadTask;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/exsettings/cyanogenmod/LtoService;->mTask:Lcom/android/exsettings/cyanogenmod/LtoService$LtoDownloadTask;

    invoke-virtual {v0}, Lcom/android/exsettings/cyanogenmod/LtoService$LtoDownloadTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_2

    .line 78
    const-string/jumbo v0, "LtoService"

    const-string/jumbo v1, "LTO download is still active, not starting new download"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    return v4

    .line 82
    :cond_2
    invoke-direct {p0}, Lcom/android/exsettings/cyanogenmod/LtoService;->shouldDownload()Z

    move-result v0

    if-nez v0, :cond_3

    .line 83
    const-string/jumbo v0, "LtoService"

    const-string/jumbo v1, "Service started, but shouldn\'t download ... stopping"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    invoke-virtual {p0}, Lcom/android/exsettings/cyanogenmod/LtoService;->stopSelf()V

    .line 85
    return v2

    .line 88
    :cond_3
    new-instance v0, Lcom/android/exsettings/cyanogenmod/LtoService$LtoDownloadTask;

    iget-object v1, p0, Lcom/android/exsettings/cyanogenmod/LtoService;->mHardware:Lcyanogenmod/hardware/CMHardwareManager;

    invoke-virtual {v1}, Lcyanogenmod/hardware/CMHardwareManager;->getLtoSource()Ljava/lang/String;

    move-result-object v1

    .line 89
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/android/exsettings/cyanogenmod/LtoService;->mHardware:Lcyanogenmod/hardware/CMHardwareManager;

    invoke-virtual {v3}, Lcyanogenmod/hardware/CMHardwareManager;->getLtoDestination()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 88
    invoke-direct {v0, p0, v1, v2}, Lcom/android/exsettings/cyanogenmod/LtoService$LtoDownloadTask;-><init>(Lcom/android/exsettings/cyanogenmod/LtoService;Ljava/lang/String;Ljava/io/File;)V

    iput-object v0, p0, Lcom/android/exsettings/cyanogenmod/LtoService;->mTask:Lcom/android/exsettings/cyanogenmod/LtoService$LtoDownloadTask;

    .line 90
    iget-object v0, p0, Lcom/android/exsettings/cyanogenmod/LtoService;->mTask:Lcom/android/exsettings/cyanogenmod/LtoService$LtoDownloadTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/exsettings/cyanogenmod/LtoService$LtoDownloadTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 92
    return v4
.end method
