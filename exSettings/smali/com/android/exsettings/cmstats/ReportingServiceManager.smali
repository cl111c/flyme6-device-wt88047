.class public Lcom/android/exsettings/cmstats/ReportingServiceManager;
.super Landroid/content/BroadcastReceiver;
.source "ReportingServiceManager.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-class v0, Lcom/android/exsettings/cmstats/ReportingServiceManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/exsettings/cmstats/ReportingServiceManager;->TAG:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static initiateOptOut(Landroid/content/Context;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 54
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 55
    const-string/jumbo v3, "stats_collection_reported"

    .line 54
    invoke-static {v2, v3, v4, v4}, Lcyanogenmod/providers/CMSettings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-ne v2, v5, :cond_1

    const/4 v1, 0x1

    .line 56
    .local v1, "optOutReported":Z
    :goto_0
    if-nez v1, :cond_0

    .line 57
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 58
    .local v0, "intent":Landroid/content/Intent;
    const-class v2, Lcom/android/exsettings/cmstats/ReportingService;

    invoke-virtual {v0, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 59
    const-string/jumbo v2, "cmstats::opt_out"

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 60
    sget-object v2, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 53
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void

    .line 54
    .end local v1    # "optOutReported":Z
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "optOutReported":Z
    goto :goto_0
.end method

.method public static launchService(Landroid/content/Context;Z)V
    .locals 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "force"    # Z

    .prologue
    const-wide/32 v12, 0x5265c00

    const-wide/16 v10, 0x0

    .line 91
    invoke-static {p0}, Lcom/android/exsettings/cmstats/AnonymousStats;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 93
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-static {p0}, Lcom/android/exsettings/cmstats/Utilities;->isStatsCollectionEnabled(Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 94
    return-void

    .line 97
    :cond_0
    if-nez p1, :cond_2

    .line 98
    const-string/jumbo v8, "pref_anonymous_checked_in"

    invoke-interface {v1, v8, v10, v11}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 99
    .local v2, "lastSynced":J
    cmp-long v8, v2, v10

    if-nez v8, :cond_1

    .line 100
    invoke-static {p0}, Lcom/android/exsettings/cmstats/ReportingServiceManager;->setAlarm(Landroid/content/Context;)V

    .line 101
    return-void

    .line 103
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long v4, v8, v2

    .line 104
    .local v4, "timeElapsed":J
    cmp-long v8, v4, v12

    if-gez v8, :cond_2

    .line 105
    sub-long v6, v12, v4

    .line 106
    .local v6, "timeLeft":J
    sget-object v8, Lcom/android/exsettings/cmstats/ReportingServiceManager;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Waiting for next sync : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 107
    const-wide/32 v10, 0x36ee80

    div-long v10, v6, v10

    .line 106
    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 107
    const-string/jumbo v10, " hours"

    .line 106
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    return-void

    .line 112
    .end local v2    # "lastSynced":J
    .end local v4    # "timeElapsed":J
    .end local v6    # "timeLeft":J
    :cond_2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 113
    .local v0, "intent":Landroid/content/Intent;
    const-class v8, Lcom/android/exsettings/cmstats/ReportingService;

    invoke-virtual {v0, p0, v8}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 114
    sget-object v8, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v8}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 90
    return-void
.end method

.method private static migrate(Landroid/content/Context;Landroid/content/SharedPreferences;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "prefs"    # Landroid/content/SharedPreferences;

    .prologue
    .line 119
    const-string/jumbo v0, "pref_anonymous_opt_in"

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 118
    invoke-static {p0, v0}, Lcom/android/exsettings/cmstats/Utilities;->setStatsCollectionEnabled(Landroid/content/Context;Z)V

    .line 120
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "pref_anonymous_opt_in"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 117
    return-void
.end method

.method public static setAlarm(Landroid/content/Context;)V
    .locals 13
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const-wide/16 v8, 0x0

    const/4 v12, 0x0

    .line 65
    invoke-static {p0}, Lcom/android/exsettings/cmstats/AnonymousStats;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 66
    .local v6, "prefs":Landroid/content/SharedPreferences;
    const-string/jumbo v7, "pref_anonymous_opt_in"

    invoke-interface {v6, v7}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 67
    invoke-static {p0, v6}, Lcom/android/exsettings/cmstats/ReportingServiceManager;->migrate(Landroid/content/Context;Landroid/content/SharedPreferences;)V

    .line 69
    :cond_0
    invoke-static {p0}, Lcom/android/exsettings/cmstats/Utilities;->isStatsCollectionEnabled(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 70
    invoke-static {p0}, Lcom/android/exsettings/cmstats/ReportingServiceManager;->initiateOptOut(Landroid/content/Context;)V

    .line 71
    return-void

    .line 73
    :cond_1
    const-string/jumbo v7, "pref_anonymous_checked_in"

    invoke-interface {v6, v7, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 74
    .local v2, "lastSynced":J
    cmp-long v7, v2, v8

    if-nez v7, :cond_2

    .line 75
    const/4 v7, 0x1

    invoke-static {p0, v7}, Lcom/android/exsettings/cmstats/ReportingServiceManager;->launchService(Landroid/content/Context;Z)V

    .line 76
    return-void

    .line 78
    :cond_2
    const-wide/32 v8, 0x5265c00

    add-long/2addr v8, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long v4, v8, v10

    .line 80
    .local v4, "millisFromNow":J
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v7, "com.android.settings.action.TRIGGER_REPORT_METRICS"

    invoke-direct {v1, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 81
    .local v1, "intent":Landroid/content/Intent;
    const-class v7, Lcom/android/exsettings/cmstats/ReportingServiceManager;

    invoke-virtual {v1, p0, v7}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 83
    const-string/jumbo v7, "alarm"

    invoke-virtual {p0, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 84
    .local v0, "alarmManager":Landroid/app/AlarmManager;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    add-long/2addr v8, v4

    .line 85
    invoke-static {p0, v12, v1, v12}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    .line 84
    invoke-virtual {v0, v12, v8, v9, v7}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 86
    sget-object v7, Lcom/android/exsettings/cmstats/ReportingServiceManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Next sync attempt in : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 87
    const-wide/32 v10, 0x36ee80

    div-long v10, v4, v10

    .line 86
    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 87
    const-string/jumbo v9, " hours"

    .line 86
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 43
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 44
    invoke-static {p1}, Lcom/android/exsettings/cmstats/ReportingServiceManager;->setAlarm(Landroid/content/Context;)V

    .line 42
    :cond_0
    :goto_0
    return-void

    .line 45
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "com.android.settings.action.TRIGGER_REPORT_METRICS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    const-string/jumbo v0, "force"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {p1, v0}, Lcom/android/exsettings/cmstats/ReportingServiceManager;->launchService(Landroid/content/Context;Z)V

    goto :goto_0
.end method
