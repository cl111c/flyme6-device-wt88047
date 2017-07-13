.class public Lcom/android/exsettings/DeviceInfoSettings;
.super Lcom/android/exsettings/SettingsPreferenceFragment;
.source "DeviceInfoSettings.java"

# interfaces
.implements Lcom/android/exsettings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exsettings/DeviceInfoSettings$1;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/exsettings/search/Indexable$SearchIndexProvider;


# instance fields
.field mDevHitCountdown:I

.field mDevHitToast:Landroid/widget/Toast;

.field mDevIdCountdown:I

.field mDevIdToast:Landroid/widget/Toast;

.field mHits:[J


# direct methods
.method static synthetic -wrap0(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    invoke-static {p0}, Lcom/android/exsettings/DeviceInfoSettings;->getFeedbackReporterPackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 541
    new-instance v0, Lcom/android/exsettings/DeviceInfoSettings$1;

    invoke-direct {v0}, Lcom/android/exsettings/DeviceInfoSettings$1;-><init>()V

    .line 540
    sput-object v0, Lcom/android/exsettings/DeviceInfoSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/exsettings/search/Indexable$SearchIndexProvider;

    .line 65
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;-><init>()V

    .line 94
    const/4 v0, 0x3

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/exsettings/DeviceInfoSettings;->mHits:[J

    .line 65
    return-void
.end method

.method private ciActionOnSysUpdate(Landroid/os/PersistableBundle;)V
    .locals 7
    .param p1, "b"    # Landroid/os/PersistableBundle;

    .prologue
    .line 348
    const-string/jumbo v4, "ci_action_on_sys_update_intent_string"

    invoke-virtual {p1, v4}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 350
    .local v3, "intentStr":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 351
    const-string/jumbo v4, "ci_action_on_sys_update_extra_string"

    invoke-virtual {p1, v4}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 353
    .local v0, "extra":Ljava/lang/String;
    const-string/jumbo v4, "ci_action_on_sys_update_extra_val_string"

    invoke-virtual {p1, v4}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 356
    .local v1, "extraVal":Ljava/lang/String;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 357
    .local v2, "intent":Landroid/content/Intent;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 358
    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 360
    :cond_0
    const-string/jumbo v4, "DeviceInfoSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "ciActionOnSysUpdate: broadcasting intent "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 361
    const-string/jumbo v6, " with extra "

    .line 360
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 361
    const-string/jumbo v6, ", "

    .line 360
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    invoke-virtual {p0}, Lcom/android/exsettings/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 347
    .end local v0    # "extra":Ljava/lang/String;
    .end local v1    # "extraVal":Ljava/lang/String;
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_1
    return-void
.end method

.method public static formatKernelVersion(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "rawKernelVersion"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x4

    .line 460
    const-string/jumbo v0, "Linux version (\\S+) \\((\\S+?)\\) (?:\\(gcc.+? \\)) (#\\d+) (?:.*?)?((Sun|Mon|Tue|Wed|Thu|Fri|Sat).+)"

    .line 467
    .local v0, "PROC_VERSION_REGEX":Ljava/lang/String;
    const-string/jumbo v2, "Linux version (\\S+) \\((\\S+?)\\) (?:\\(gcc.+? \\)) (#\\d+) (?:.*?)?((Sun|Mon|Tue|Wed|Thu|Fri|Sat).+)"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 468
    .local v1, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-nez v2, :cond_0

    .line 469
    const-string/jumbo v2, "DeviceInfoSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Regex did not match on /proc/version: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    const-string/jumbo v2, "Unavailable"

    return-object v2

    .line 471
    :cond_0
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v2

    if-ge v2, v4, :cond_1

    .line 472
    const-string/jumbo v2, "DeviceInfoSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Regex match on /proc/version only returned "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 473
    const-string/jumbo v4, " groups"

    .line 472
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    const-string/jumbo v2, "Unavailable"

    return-object v2

    .line 476
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 477
    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    .line 476
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 477
    const-string/jumbo v3, " "

    .line 476
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 477
    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    .line 476
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 477
    const-string/jumbo v3, "\n"

    .line 476
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 478
    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    .line 476
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static getFeedbackReporterPackage(Landroid/content/Context;)Ljava/lang/String;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v10, 0x0

    .line 504
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0c0ee6

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 505
    .local v2, "feedbackReporter":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 507
    return-object v2

    .line 511
    :cond_0
    new-instance v5, Landroid/content/Intent;

    const-string/jumbo v8, "android.intent.action.BUG_REPORT"

    invoke-direct {v5, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 513
    .local v5, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 515
    .local v6, "pm":Landroid/content/pm/PackageManager;
    const/16 v8, 0x40

    invoke-virtual {v6, v5, v8}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v7

    .line 516
    .local v7, "resolvedPackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "info$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 517
    .local v3, "info":Landroid/content/pm/ResolveInfo;
    iget-object v8, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v8, :cond_1

    .line 518
    iget-object v8, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 520
    :try_start_0
    iget-object v8, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-virtual {v6, v8, v9}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 521
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    iget v8, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_1

    .line 524
    iget-object v8, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 523
    invoke-static {v8, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    if-eqz v8, :cond_1

    .line 525
    return-object v2

    .line 534
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "info":Landroid/content/pm/ResolveInfo;
    :cond_2
    return-object v10

    .line 528
    .restart local v3    # "info":Landroid/content/pm/ResolveInfo;
    :catch_0
    move-exception v1

    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method

.method public static getFormattedKernelVersion()Ljava/lang/String;
    .locals 3

    .prologue
    .line 442
    :try_start_0
    const-string/jumbo v1, "/proc/version"

    invoke-static {v1}, Lcom/android/exsettings/DeviceInfoSettings;->readLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/exsettings/DeviceInfoSettings;->formatKernelVersion(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 444
    :catch_0
    move-exception v0

    .line 445
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v1, "DeviceInfoSettings"

    .line 446
    const-string/jumbo v2, "IO Exception when getting kernel version for Device Info screen"

    .line 445
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 449
    const-string/jumbo v1, "Unavailable"

    return-object v1
.end method

.method private static readLine(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 432
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x100

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 434
    .local v0, "reader":Ljava/io/BufferedReader;
    :try_start_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 436
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 434
    return-object v1

    .line 435
    :catchall_0
    move-exception v1

    .line 436
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 435
    throw v1
.end method

.method private removePreferenceIfBoolFalse(Ljava/lang/String;I)V
    .locals 2
    .param p1, "preference"    # Ljava/lang/String;
    .param p2, "resId"    # I

    .prologue
    .line 380
    invoke-virtual {p0}, Lcom/android/exsettings/DeviceInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 381
    invoke-virtual {p0, p1}, Lcom/android/exsettings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 382
    .local v0, "pref":Landroid/preference/Preference;
    if-eqz v0, :cond_0

    .line 383
    invoke-virtual {p0}, Lcom/android/exsettings/DeviceInfoSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 379
    .end local v0    # "pref":Landroid/preference/Preference;
    :cond_0
    return-void
.end method

.method private removePreferenceIfPropertyMissing(Landroid/preference/PreferenceGroup;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "preferenceGroup"    # Landroid/preference/PreferenceGroup;
    .param p2, "preference"    # Ljava/lang/String;
    .param p3, "property"    # Ljava/lang/String;

    .prologue
    .line 368
    invoke-static {p3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 371
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/android/exsettings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 367
    :cond_0
    :goto_0
    return-void

    .line 372
    :catch_0
    move-exception v0

    .line 373
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string/jumbo v1, "DeviceInfoSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Property \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\' missing and no \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 374
    const-string/jumbo v3, "\' preference"

    .line 373
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private sendFeedback()V
    .locals 3

    .prologue
    .line 416
    invoke-virtual {p0}, Lcom/android/exsettings/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/exsettings/DeviceInfoSettings;->getFeedbackReporterPackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 417
    .local v1, "reporterPackage":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 418
    return-void

    .line 420
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.BUG_REPORT"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 421
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 422
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/android/exsettings/DeviceInfoSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 415
    return-void
.end method

.method private setStringSummary(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "preference"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 390
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/exsettings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 388
    :goto_0
    return-void

    .line 391
    :catch_0
    move-exception v0

    .line 392
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-virtual {p0, p1}, Lcom/android/exsettings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 393
    invoke-virtual {p0}, Lcom/android/exsettings/DeviceInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c050a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 392
    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private setValueSummary(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "preference"    # Ljava/lang/String;
    .param p2, "property"    # Ljava/lang/String;

    .prologue
    .line 399
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/exsettings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 401
    invoke-virtual {p0}, Lcom/android/exsettings/DeviceInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c050a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 400
    invoke-static {p2, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 399
    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 397
    :goto_0
    return-void

    .line 402
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/RuntimeException;
    goto :goto_0
.end method


# virtual methods
.method protected getHelpResource()I
    .locals 1

    .prologue
    .line 107
    const v0, 0x7f0c0dda

    return v0
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 102
    const/16 v0, 0x28

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 13
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 112
    invoke-super {p0, p1}, Lcom/android/exsettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 114
    const v10, 0x7f080020

    invoke-virtual {p0, v10}, Lcom/android/exsettings/DeviceInfoSettings;->addPreferencesFromResource(I)V

    .line 116
    const-string/jumbo v10, "firmware_version"

    sget-object v11, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-direct {p0, v10, v11}, Lcom/android/exsettings/DeviceInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    const-string/jumbo v10, "firmware_version"

    invoke-virtual {p0, v10}, Lcom/android/exsettings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 118
    sget-object v6, Landroid/os/Build$VERSION;->SECURITY_PATCH:Ljava/lang/String;

    .line 119
    .local v6, "patch":Ljava/lang/String;
    const-string/jumbo v10, ""

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 121
    :try_start_0
    new-instance v9, Ljava/text/SimpleDateFormat;

    const-string/jumbo v10, "yyyy-MM-dd"

    invoke-direct {v9, v10}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 122
    .local v9, "template":Ljava/text/SimpleDateFormat;
    invoke-virtual {v9, v6}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v7

    .line 123
    .local v7, "patchDate":Ljava/util/Date;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v10

    const-string/jumbo v11, "dMMMMyyyy"

    invoke-static {v10, v11}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 124
    .local v2, "format":Ljava/lang/String;
    invoke-static {v2, v7}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 128
    .end local v2    # "format":Ljava/lang/String;
    .end local v7    # "patchDate":Ljava/util/Date;
    .end local v9    # "template":Ljava/text/SimpleDateFormat;
    :goto_0
    const-string/jumbo v10, "security_patch"

    invoke-direct {p0, v10, v6}, Lcom/android/exsettings/DeviceInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    :goto_1
    const-string/jumbo v10, "baseband_version"

    const-string/jumbo v11, "gsm.version.baseband"

    invoke-direct {p0, v10, v11}, Lcom/android/exsettings/DeviceInfoSettings;->setValueSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    const-string/jumbo v10, "fcc_equipment_id"

    const-string/jumbo v11, "ro.ril.fccid"

    invoke-direct {p0, v10, v11}, Lcom/android/exsettings/DeviceInfoSettings;->setValueSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    const-string/jumbo v10, "device_model"

    const-string/jumbo v11, "ro.nx.model.name"

    invoke-direct {p0, v10, v11}, Lcom/android/exsettings/DeviceInfoSettings;->setValueSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    const-string/jumbo v10, "device_model"

    invoke-virtual {p0, v10}, Lcom/android/exsettings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 137
    const-string/jumbo v10, "build_number"

    sget-object v11, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    invoke-direct {p0, v10, v11}, Lcom/android/exsettings/DeviceInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    const-string/jumbo v10, "build_number"

    invoke-virtual {p0, v10}, Lcom/android/exsettings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 140
    const-string/jumbo v10, "kernel_version"

    invoke-virtual {p0, v10}, Lcom/android/exsettings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    .line 141
    .local v4, "kernelPref":Landroid/preference/Preference;
    const/4 v10, 0x1

    invoke-virtual {v4, v10}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 142
    invoke-static {}, Lcom/android/exsettings/DeviceInfoSettings;->getFormattedKernelVersion()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 143
    const-string/jumbo v10, "mod_version"

    const-string/jumbo v11, "ro.nx.display.version"

    invoke-direct {p0, v10, v11}, Lcom/android/exsettings/DeviceInfoSettings;->setValueSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    const-string/jumbo v10, "mod_version"

    invoke-virtual {p0, v10}, Lcom/android/exsettings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 146
    const-string/jumbo v10, "device_name"

    sget-object v11, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-direct {p0, v10, v11}, Lcom/android/exsettings/DeviceInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    const-string/jumbo v10, "device_name"

    const v11, 0x7f100014

    invoke-direct {p0, v10, v11}, Lcom/android/exsettings/DeviceInfoSettings;->removePreferenceIfBoolFalse(Ljava/lang/String;I)V

    .line 150
    invoke-virtual {p0}, Lcom/android/exsettings/DeviceInfoSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v10

    const-string/jumbo v11, "safetylegal"

    .line 151
    const-string/jumbo v12, "ro.url.safetylegal"

    .line 150
    invoke-direct {p0, v10, v11, v12}, Lcom/android/exsettings/DeviceInfoSettings;->removePreferenceIfPropertyMissing(Landroid/preference/PreferenceGroup;Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    invoke-virtual {p0}, Lcom/android/exsettings/DeviceInfoSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v10

    const-string/jumbo v11, "fcc_equipment_id"

    .line 155
    const-string/jumbo v12, "ro.ril.fccid"

    .line 154
    invoke-direct {p0, v10, v11, v12}, Lcom/android/exsettings/DeviceInfoSettings;->removePreferenceIfPropertyMissing(Landroid/preference/PreferenceGroup;Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    invoke-virtual {p0}, Lcom/android/exsettings/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-static {v10}, Lcom/android/exsettings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 159
    invoke-virtual {p0}, Lcom/android/exsettings/DeviceInfoSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v10

    const-string/jumbo v11, "baseband_version"

    invoke-virtual {p0, v11}, Lcom/android/exsettings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 163
    :cond_0
    invoke-virtual {p0}, Lcom/android/exsettings/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-static {v10}, Lcom/android/exsettings/DeviceInfoSettings;->getFeedbackReporterPackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 164
    invoke-virtual {p0}, Lcom/android/exsettings/DeviceInfoSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v10

    const-string/jumbo v11, "device_feedback"

    invoke-virtual {p0, v11}, Lcom/android/exsettings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 171
    :cond_1
    invoke-virtual {p0}, Lcom/android/exsettings/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 174
    .local v0, "act":Landroid/app/Activity;
    invoke-virtual {p0}, Lcom/android/exsettings/DeviceInfoSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    .line 175
    .local v5, "parentPreference":Landroid/preference/PreferenceGroup;
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v10

    if-nez v10, :cond_4

    .line 177
    const-string/jumbo v10, "system_update_settings"

    .line 178
    const/4 v11, 0x1

    .line 176
    invoke-static {v0, v5, v10, v11}, Lcom/android/exsettings/Utils;->updatePreferenceToSpecificActivityOrRemove(Landroid/content/Context;Landroid/preference/PreferenceGroup;Ljava/lang/String;I)Z

    .line 185
    :goto_2
    const-string/jumbo v10, "additional_system_update_settings"

    .line 186
    const v11, 0x7f100004

    .line 185
    invoke-direct {p0, v10, v11}, Lcom/android/exsettings/DeviceInfoSettings;->removePreferenceIfBoolFalse(Ljava/lang/String;I)V

    .line 189
    const-string/jumbo v10, "manual"

    const v11, 0x7f100006

    invoke-direct {p0, v10, v11}, Lcom/android/exsettings/DeviceInfoSettings;->removePreferenceIfBoolFalse(Ljava/lang/String;I)V

    .line 192
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v10, "android.settings.SHOW_REGULATORY_INFO"

    invoke-direct {v3, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 193
    .local v3, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/exsettings/DeviceInfoSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v3, v11}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 194
    const-string/jumbo v10, "regulatory_info"

    invoke-virtual {p0, v10}, Lcom/android/exsettings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    .line 195
    .local v8, "pref":Landroid/preference/Preference;
    if-eqz v8, :cond_2

    .line 196
    invoke-virtual {p0}, Lcom/android/exsettings/DeviceInfoSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v10

    invoke-virtual {v10, v8}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 111
    .end local v8    # "pref":Landroid/preference/Preference;
    :cond_2
    return-void

    .line 130
    .end local v0    # "act":Landroid/app/Activity;
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v4    # "kernelPref":Landroid/preference/Preference;
    .end local v5    # "parentPreference":Landroid/preference/PreferenceGroup;
    :cond_3
    invoke-virtual {p0}, Lcom/android/exsettings/DeviceInfoSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v10

    const-string/jumbo v11, "security_patch"

    invoke-virtual {p0, v11}, Lcom/android/exsettings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_1

    .line 181
    .restart local v0    # "act":Landroid/app/Activity;
    .restart local v4    # "kernelPref":Landroid/preference/Preference;
    .restart local v5    # "parentPreference":Landroid/preference/PreferenceGroup;
    :cond_4
    const-string/jumbo v10, "system_update_settings"

    invoke-virtual {p0, v10}, Lcom/android/exsettings/DeviceInfoSettings;->removePreference(Ljava/lang/String;)V

    goto :goto_2

    .line 125
    .end local v0    # "act":Landroid/app/Activity;
    .end local v4    # "kernelPref":Landroid/preference/Preference;
    .end local v5    # "parentPreference":Landroid/preference/PreferenceGroup;
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/text/ParseException;
    goto/16 :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 18
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 214
    invoke-virtual/range {p2 .. p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "firmware_version"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 215
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/exsettings/DeviceInfoSettings;->mHits:[J

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/exsettings/DeviceInfoSettings;->mHits:[J

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/exsettings/DeviceInfoSettings;->mHits:[J

    array-length v13, v13

    add-int/lit8 v13, v13, -0x1

    const/4 v14, 0x1

    const/4 v15, 0x0

    invoke-static {v11, v14, v12, v15, v13}, Ljava/lang/System;->arraycopy([JI[JII)V

    .line 216
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/exsettings/DeviceInfoSettings;->mHits:[J

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/exsettings/DeviceInfoSettings;->mHits:[J

    array-length v12, v12

    add-int/lit8 v12, v12, -0x1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    aput-wide v14, v11, v12

    .line 217
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/exsettings/DeviceInfoSettings;->mHits:[J

    const/4 v12, 0x0

    aget-wide v12, v11, v12

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    const-wide/16 v16, 0x1f4

    sub-long v14, v14, v16

    cmp-long v11, v12, v14

    if-ltz v11, :cond_1

    .line 218
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    const-string/jumbo v12, "user"

    invoke-virtual {v11, v12}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/UserManager;

    .line 219
    .local v10, "um":Landroid/os/UserManager;
    const-string/jumbo v11, "no_fun"

    invoke-virtual {v10, v11}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 220
    const-string/jumbo v11, "DeviceInfoSettings"

    const-string/jumbo v12, "Sorry, no fun for you!"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    const/4 v11, 0x0

    return v11

    .line 224
    :cond_0
    new-instance v8, Landroid/content/Intent;

    const-string/jumbo v11, "android.intent.action.MAIN"

    invoke-direct {v8, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 225
    .local v8, "intent":Landroid/content/Intent;
    const-string/jumbo v11, "android"

    .line 226
    const-class v12, Lcom/android/internal/app/PlatLogoActivity;

    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v12

    .line 225
    invoke-virtual {v8, v11, v12}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 228
    :try_start_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/exsettings/DeviceInfoSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 341
    .end local v8    # "intent":Landroid/content/Intent;
    .end local v10    # "um":Landroid/os/UserManager;
    :cond_1
    :goto_0
    invoke-super/range {p0 .. p2}, Lcom/android/exsettings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v11

    return v11

    .line 229
    .restart local v8    # "intent":Landroid/content/Intent;
    .restart local v10    # "um":Landroid/os/UserManager;
    :catch_0
    move-exception v6

    .line 230
    .local v6, "e":Ljava/lang/Exception;
    const-string/jumbo v11, "DeviceInfoSettings"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Unable to start activity "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v8}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 233
    .end local v6    # "e":Ljava/lang/Exception;
    .end local v8    # "intent":Landroid/content/Intent;
    .end local v10    # "um":Landroid/os/UserManager;
    :cond_2
    invoke-virtual/range {p2 .. p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "kernel_version"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 235
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/exsettings/DeviceInfoSettings;->mDevIdCountdown:I

    add-int/lit8 v11, v11, -0x1

    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/exsettings/DeviceInfoSettings;->mDevIdCountdown:I

    .line 236
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/exsettings/DeviceInfoSettings;->mDevIdCountdown:I

    if-nez v11, :cond_4

    .line 237
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Lcyanogenmod/hardware/CMHardwareManager;->getInstance(Landroid/content/Context;)Lcyanogenmod/hardware/CMHardwareManager;

    move-result-object v7

    .line 238
    .local v7, "hwMgr":Lcyanogenmod/hardware/CMHardwareManager;
    invoke-virtual {v7}, Lcyanogenmod/hardware/CMHardwareManager;->getUniqueDeviceId()Ljava/lang/String;

    move-result-object v5

    .line 240
    .local v5, "deviceID":Ljava/lang/String;
    if-nez v5, :cond_3

    .line 241
    const v11, 0x7f0c0068

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/exsettings/DeviceInfoSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    .line 252
    .local v9, "msg":Ljava/lang/CharSequence;
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    .line 253
    const/4 v12, 0x1

    .line 252
    invoke-static {v11, v9, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/exsettings/DeviceInfoSettings;->mDevIdToast:Landroid/widget/Toast;

    .line 254
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/exsettings/DeviceInfoSettings;->mDevIdToast:Landroid/widget/Toast;

    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    .line 255
    const/4 v11, 0x7

    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/exsettings/DeviceInfoSettings;->mDevIdCountdown:I

    goto :goto_0

    .line 244
    .end local v9    # "msg":Ljava/lang/CharSequence;
    :cond_3
    const-string/jumbo v11, "clipboard"

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/exsettings/DeviceInfoSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ClipboardManager;

    .line 245
    .local v3, "clipboardMgr":Landroid/content/ClipboardManager;
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/DeviceInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    .line 246
    const v12, 0x7f0c0069

    .line 245
    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, v5}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v11

    invoke-virtual {v3, v11}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 248
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/DeviceInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    .line 249
    const/4 v13, 0x0

    aput-object v5, v12, v13

    const v13, 0x7f0c0067

    .line 248
    invoke-virtual {v11, v13, v12}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .restart local v9    # "msg":Ljava/lang/CharSequence;
    goto :goto_1

    .line 257
    .end local v3    # "clipboardMgr":Landroid/content/ClipboardManager;
    .end local v5    # "deviceID":Ljava/lang/String;
    .end local v7    # "hwMgr":Lcyanogenmod/hardware/CMHardwareManager;
    .end local v9    # "msg":Ljava/lang/CharSequence;
    :cond_4
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/exsettings/DeviceInfoSettings;->mDevIdCountdown:I

    if-lez v11, :cond_1

    .line 258
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/exsettings/DeviceInfoSettings;->mDevIdCountdown:I

    const/4 v12, 0x5

    if-ge v11, v12, :cond_1

    .line 260
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/exsettings/DeviceInfoSettings;->mDevIdToast:Landroid/widget/Toast;

    if-eqz v11, :cond_5

    .line 261
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/exsettings/DeviceInfoSettings;->mDevIdToast:Landroid/widget/Toast;

    invoke-virtual {v11}, Landroid/widget/Toast;->cancel()V

    .line 263
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/DeviceInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    .line 264
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/exsettings/DeviceInfoSettings;->mDevIdCountdown:I

    .line 263
    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    .line 264
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/exsettings/DeviceInfoSettings;->mDevIdCountdown:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const/16 v16, 0x0

    aput-object v15, v14, v16

    const v15, 0x7f110002

    .line 263
    invoke-virtual {v12, v15, v13, v14}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 265
    const/4 v13, 0x0

    .line 263
    invoke-static {v11, v12, v13}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/exsettings/DeviceInfoSettings;->mDevIdToast:Landroid/widget/Toast;

    .line 266
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/exsettings/DeviceInfoSettings;->mDevIdToast:Landroid/widget/Toast;

    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 269
    :cond_6
    invoke-virtual/range {p2 .. p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "build_number"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_f

    .line 271
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v11

    if-eqz v11, :cond_7

    const/4 v11, 0x1

    return v11

    .line 274
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    .line 275
    const-string/jumbo v12, "device_provisioned"

    const/4 v13, 0x0

    .line 274
    invoke-static {v11, v12, v13}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    if-nez v11, :cond_8

    .line 276
    const/4 v11, 0x1

    return v11

    .line 279
    :cond_8
    const-string/jumbo v11, "user"

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/exsettings/DeviceInfoSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/UserManager;

    .line 280
    .restart local v10    # "um":Landroid/os/UserManager;
    const-string/jumbo v11, "no_debugging_features"

    invoke-virtual {v10, v11}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_9

    const/4 v11, 0x1

    return v11

    .line 282
    :cond_9
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/exsettings/DeviceInfoSettings;->mDevHitCountdown:I

    if-lez v11, :cond_d

    .line 283
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/exsettings/DeviceInfoSettings;->mDevHitCountdown:I

    add-int/lit8 v11, v11, -0x1

    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/exsettings/DeviceInfoSettings;->mDevHitCountdown:I

    .line 284
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/exsettings/DeviceInfoSettings;->mDevHitCountdown:I

    if-nez v11, :cond_b

    .line 285
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    const-string/jumbo v12, "development"

    .line 286
    const/4 v13, 0x0

    .line 285
    invoke-virtual {v11, v12, v13}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v11

    invoke-interface {v11}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v11

    .line 287
    const-string/jumbo v12, "show"

    const/4 v13, 0x1

    .line 285
    invoke-interface {v11, v12, v13}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v11

    invoke-interface {v11}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 288
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/exsettings/DeviceInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    if-eqz v11, :cond_a

    .line 289
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/exsettings/DeviceInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    invoke-virtual {v11}, Landroid/widget/Toast;->cancel()V

    .line 291
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    const v12, 0x7f0c006a

    .line 292
    const/4 v13, 0x1

    .line 291
    invoke-static {v11, v12, v13}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/exsettings/DeviceInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    .line 293
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/exsettings/DeviceInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    .line 296
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    .line 295
    invoke-static {v11}, Lcom/android/exsettings/search/Index;->getInstance(Landroid/content/Context;)Lcom/android/exsettings/search/Index;

    move-result-object v11

    .line 297
    const-class v12, Lcom/android/exsettings/DevelopmentSettings;

    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    const/4 v14, 0x1

    .line 295
    invoke-virtual {v11, v12, v13, v14}, Lcom/android/exsettings/search/Index;->updateFromClassNameResource(Ljava/lang/String;ZZ)V

    goto/16 :goto_0

    .line 299
    :cond_b
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/exsettings/DeviceInfoSettings;->mDevHitCountdown:I

    if-lez v11, :cond_1

    .line 300
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/exsettings/DeviceInfoSettings;->mDevHitCountdown:I

    const/4 v12, 0x5

    if-ge v11, v12, :cond_1

    .line 301
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/exsettings/DeviceInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    if-eqz v11, :cond_c

    .line 302
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/exsettings/DeviceInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    invoke-virtual {v11}, Landroid/widget/Toast;->cancel()V

    .line 304
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/DeviceInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    .line 305
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/exsettings/DeviceInfoSettings;->mDevHitCountdown:I

    .line 304
    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    .line 305
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/exsettings/DeviceInfoSettings;->mDevHitCountdown:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const/16 v16, 0x0

    aput-object v15, v14, v16

    const v15, 0x7f110003

    .line 304
    invoke-virtual {v12, v15, v13, v14}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 306
    const/4 v13, 0x0

    .line 304
    invoke-static {v11, v12, v13}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/exsettings/DeviceInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    .line 307
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/exsettings/DeviceInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 309
    :cond_d
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/exsettings/DeviceInfoSettings;->mDevHitCountdown:I

    if-gez v11, :cond_1

    .line 310
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/exsettings/DeviceInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    if-eqz v11, :cond_e

    .line 311
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/exsettings/DeviceInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    invoke-virtual {v11}, Landroid/widget/Toast;->cancel()V

    .line 313
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    const v12, 0x7f0c006b

    .line 314
    const/4 v13, 0x1

    .line 313
    invoke-static {v11, v12, v13}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/exsettings/DeviceInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    .line 315
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/exsettings/DeviceInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 317
    .end local v10    # "um":Landroid/os/UserManager;
    :cond_f
    invoke-virtual/range {p2 .. p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "device_feedback"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_10

    .line 318
    invoke-direct/range {p0 .. p0}, Lcom/android/exsettings/DeviceInfoSettings;->sendFeedback()V

    goto/16 :goto_0

    .line 319
    :cond_10
    invoke-virtual/range {p2 .. p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "system_update_settings"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_11

    .line 321
    const-string/jumbo v11, "carrier_config"

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/exsettings/DeviceInfoSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/CarrierConfigManager;

    .line 322
    .local v4, "configManager":Landroid/telephony/CarrierConfigManager;
    invoke-virtual {v4}, Landroid/telephony/CarrierConfigManager;->getConfig()Landroid/os/PersistableBundle;

    move-result-object v2

    .line 323
    .local v2, "b":Landroid/os/PersistableBundle;
    const-string/jumbo v11, "ci_action_on_sys_update_bool"

    invoke-virtual {v2, v11}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 324
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/exsettings/DeviceInfoSettings;->ciActionOnSysUpdate(Landroid/os/PersistableBundle;)V

    goto/16 :goto_0

    .line 326
    .end local v2    # "b":Landroid/os/PersistableBundle;
    .end local v4    # "configManager":Landroid/telephony/CarrierConfigManager;
    :cond_11
    invoke-virtual/range {p2 .. p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "mod_version"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 327
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/exsettings/DeviceInfoSettings;->mHits:[J

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/exsettings/DeviceInfoSettings;->mHits:[J

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/exsettings/DeviceInfoSettings;->mHits:[J

    array-length v13, v13

    add-int/lit8 v13, v13, -0x1

    const/4 v14, 0x1

    const/4 v15, 0x0

    invoke-static {v11, v14, v12, v15, v13}, Ljava/lang/System;->arraycopy([JI[JII)V

    .line 328
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/exsettings/DeviceInfoSettings;->mHits:[J

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/exsettings/DeviceInfoSettings;->mHits:[J

    array-length v12, v12

    add-int/lit8 v12, v12, -0x1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    aput-wide v14, v11, v12

    .line 329
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/exsettings/DeviceInfoSettings;->mHits:[J

    const/4 v12, 0x0

    aget-wide v12, v11, v12

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    const-wide/16 v16, 0x1f4

    sub-long v14, v14, v16

    cmp-long v11, v12, v14

    if-ltz v11, :cond_1

    .line 330
    new-instance v8, Landroid/content/Intent;

    const-string/jumbo v11, "android.intent.action.MAIN"

    invoke-direct {v8, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 331
    .restart local v8    # "intent":Landroid/content/Intent;
    const-string/jumbo v11, "is_cm"

    const/4 v12, 0x1

    invoke-virtual {v8, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 332
    const-string/jumbo v11, "android"

    .line 333
    const-class v12, Lcom/android/internal/app/PlatLogoActivity;

    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v12

    .line 332
    invoke-virtual {v8, v11, v12}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 335
    :try_start_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/exsettings/DeviceInfoSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 336
    :catch_1
    move-exception v6

    .line 337
    .restart local v6    # "e":Ljava/lang/Exception;
    const-string/jumbo v11, "DeviceInfoSettings"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Unable to start activity "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v8}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public onResume()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x7

    .line 203
    invoke-super {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;->onResume()V

    .line 204
    invoke-virtual {p0}, Lcom/android/exsettings/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v2, "development"

    .line 205
    const/4 v3, 0x0

    .line 204
    invoke-virtual {v0, v2, v3}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 205
    const-string/jumbo v2, "show"

    .line 206
    sget-object v3, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string/jumbo v4, "eng"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 204
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 206
    const/4 v0, -0x1

    .line 204
    :goto_0
    iput v0, p0, Lcom/android/exsettings/DeviceInfoSettings;->mDevHitCountdown:I

    .line 207
    iput-object v5, p0, Lcom/android/exsettings/DeviceInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    .line 208
    iput v1, p0, Lcom/android/exsettings/DeviceInfoSettings;->mDevIdCountdown:I

    .line 209
    iput-object v5, p0, Lcom/android/exsettings/DeviceInfoSettings;->mDevIdToast:Landroid/widget/Toast;

    .line 202
    return-void

    :cond_0
    move v0, v1

    .line 206
    goto :goto_0
.end method
