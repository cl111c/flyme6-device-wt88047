.class public Lcom/android/exsettings/cmstats/ReportingService;
.super Landroid/app/IntentService;
.source "ReportingService.java"


# static fields
.field private static final DEBUG:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 34
    const-string/jumbo v0, "CMStats"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/exsettings/cmstats/ReportingService;->DEBUG:Z

    .line 32
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    const-class v0, Lcom/android/exsettings/cmstats/ReportingService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 38
    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 18
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 44
    const-string/jumbo v14, "jobscheduler"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/exsettings/cmstats/ReportingService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/app/job/JobScheduler;

    .line 46
    .local v12, "js":Landroid/app/job/JobScheduler;
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/cmstats/ReportingService;->getApplicationContext()Landroid/content/Context;

    move-result-object v14

    invoke-static {v14}, Lcom/android/exsettings/cmstats/Utilities;->getUniqueID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    .line 47
    .local v9, "deviceId":Ljava/lang/String;
    invoke-static {}, Lcom/android/exsettings/cmstats/Utilities;->getDevice()Ljava/lang/String;

    move-result-object v10

    .line 48
    .local v10, "deviceName":Ljava/lang/String;
    invoke-static {}, Lcom/android/exsettings/cmstats/Utilities;->getModVersion()Ljava/lang/String;

    move-result-object v11

    .line 49
    .local v11, "deviceVersion":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/cmstats/ReportingService;->getApplicationContext()Landroid/content/Context;

    move-result-object v14

    invoke-static {v14}, Lcom/android/exsettings/cmstats/Utilities;->getCountryCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    .line 50
    .local v8, "deviceCountry":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/cmstats/ReportingService;->getApplicationContext()Landroid/content/Context;

    move-result-object v14

    invoke-static {v14}, Lcom/android/exsettings/cmstats/Utilities;->getCarrier(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    .line 51
    .local v6, "deviceCarrier":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/cmstats/ReportingService;->getApplicationContext()Landroid/content/Context;

    move-result-object v14

    invoke-static {v14}, Lcom/android/exsettings/cmstats/Utilities;->getCarrierId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    .line 52
    .local v7, "deviceCarrierId":Ljava/lang/String;
    const-string/jumbo v14, "cmstats::opt_out"

    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v13

    .line 54
    .local v13, "optOut":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/cmstats/ReportingService;->getApplicationContext()Landroid/content/Context;

    move-result-object v14

    invoke-static {v14}, Lcom/android/exsettings/cmstats/AnonymousStats;->getNextJobId(Landroid/content/Context;)I

    move-result v5

    .line 55
    .local v5, "cyanogenJobId":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/cmstats/ReportingService;->getApplicationContext()Landroid/content/Context;

    move-result-object v14

    invoke-static {v14}, Lcom/android/exsettings/cmstats/AnonymousStats;->getNextJobId(Landroid/content/Context;)I

    move-result v3

    .line 57
    .local v3, "cmOrgJobId":I
    sget-boolean v14, Lcom/android/exsettings/cmstats/ReportingService;->DEBUG:Z

    if-eqz v14, :cond_0

    const-string/jumbo v14, "CMStats"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "scheduling jobs id: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, ", "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    :cond_0
    new-instance v4, Landroid/os/PersistableBundle;

    invoke-direct {v4}, Landroid/os/PersistableBundle;-><init>()V

    .line 60
    .local v4, "cyanogenBundle":Landroid/os/PersistableBundle;
    const-string/jumbo v14, "optOut"

    invoke-virtual {v4, v14, v13}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 61
    const-string/jumbo v14, "deviceName"

    invoke-virtual {v4, v14, v10}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    const-string/jumbo v14, "uniqueId"

    invoke-virtual {v4, v14, v9}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    const-string/jumbo v14, "version"

    invoke-virtual {v4, v14, v11}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    const-string/jumbo v14, "country"

    invoke-virtual {v4, v14, v8}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    const-string/jumbo v14, "carrier"

    invoke-virtual {v4, v14, v6}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    const-string/jumbo v14, "carrierId"

    invoke-virtual {v4, v14, v7}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    const-string/jumbo v14, "timeStamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v4, v14, v0, v1}, Landroid/os/PersistableBundle;->putLong(Ljava/lang/String;J)V

    .line 70
    new-instance v2, Landroid/os/PersistableBundle;

    invoke-direct {v2, v4}, Landroid/os/PersistableBundle;-><init>(Landroid/os/PersistableBundle;)V

    .line 73
    .local v2, "cmBundle":Landroid/os/PersistableBundle;
    const-string/jumbo v14, "job_type"

    .line 74
    const/4 v15, 0x1

    .line 73
    invoke-virtual {v4, v14, v15}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 75
    const-string/jumbo v14, "job_type"

    .line 76
    const/4 v15, 0x2

    .line 75
    invoke-virtual {v2, v14, v15}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 79
    new-instance v14, Landroid/app/job/JobInfo$Builder;

    new-instance v15, Landroid/content/ComponentName;

    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/cmstats/ReportingService;->getPackageName()Ljava/lang/String;

    move-result-object v16

    .line 80
    const-class v17, Lcom/android/exsettings/cmstats/StatsUploadJobService;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v17

    .line 79
    invoke-direct/range {v15 .. v17}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v14, v5, v15}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    .line 81
    const/4 v15, 0x1

    .line 79
    invoke-virtual {v14, v15}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    move-result-object v14

    .line 82
    const-wide/16 v16, 0x3e8

    .line 79
    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;

    move-result-object v14

    invoke-virtual {v14, v4}, Landroid/app/job/JobInfo$Builder;->setExtras(Landroid/os/PersistableBundle;)Landroid/app/job/JobInfo$Builder;

    move-result-object v14

    .line 84
    const/4 v15, 0x1

    .line 79
    invoke-virtual {v14, v15}, Landroid/app/job/JobInfo$Builder;->setPersisted(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v14

    invoke-virtual {v14}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v14

    invoke-virtual {v12, v14}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    .line 88
    new-instance v14, Landroid/app/job/JobInfo$Builder;

    new-instance v15, Landroid/content/ComponentName;

    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/cmstats/ReportingService;->getPackageName()Ljava/lang/String;

    move-result-object v16

    .line 89
    const-class v17, Lcom/android/exsettings/cmstats/StatsUploadJobService;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v17

    .line 88
    invoke-direct/range {v15 .. v17}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v14, v3, v15}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    .line 90
    const/4 v15, 0x1

    .line 88
    invoke-virtual {v14, v15}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    move-result-object v14

    .line 91
    const-wide/16 v16, 0x3e8

    .line 88
    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;

    move-result-object v14

    invoke-virtual {v14, v2}, Landroid/app/job/JobInfo$Builder;->setExtras(Landroid/os/PersistableBundle;)Landroid/app/job/JobInfo$Builder;

    move-result-object v14

    .line 93
    const/4 v15, 0x1

    .line 88
    invoke-virtual {v14, v15}, Landroid/app/job/JobInfo$Builder;->setPersisted(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v14

    invoke-virtual {v14}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v14

    invoke-virtual {v12, v14}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    .line 96
    if-eqz v13, :cond_1

    .line 98
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/cmstats/ReportingService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    .line 99
    const-string/jumbo v15, "stats_collection_reported"

    const/16 v16, 0x1

    const/16 v17, 0x0

    .line 98
    invoke-static/range {v14 .. v17}, Lcyanogenmod/providers/CMSettings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 103
    :cond_1
    invoke-static/range {p0 .. p0}, Lcom/android/exsettings/cmstats/AnonymousStats;->updateLastSynced(Landroid/content/Context;)V

    .line 104
    invoke-static/range {p0 .. p0}, Lcom/android/exsettings/cmstats/ReportingServiceManager;->setAlarm(Landroid/content/Context;)V

    .line 43
    return-void
.end method
