.class public Lcom/android/exsettings/fuelgauge/PowerUsageDetail;
.super Lcom/android/exsettings/fuelgauge/PowerUsageBase;
.source "PowerUsageDetail.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exsettings/fuelgauge/PowerUsageDetail$1;
    }
.end annotation


# static fields
.field private static synthetic -com_android_internal_os_BatterySipper$DrainTypeSwitchesValues:[I

.field private static sDrainTypeDesciptions:[I


# instance fields
.field mApp:Landroid/content/pm/ApplicationInfo;

.field private final mCheckKillProcessesReceiver:Landroid/content/BroadcastReceiver;

.field private mControlsParent:Landroid/preference/PreferenceCategory;

.field private mDetailsParent:Landroid/preference/PreferenceCategory;

.field private mDpm:Landroid/app/admin/DevicePolicyManager;

.field private mDrainType:Lcom/android/internal/os/BatterySipper$DrainType;

.field private mForceStopButton:Landroid/widget/Button;

.field private mHighPower:Landroid/preference/Preference;

.field mInstaller:Landroid/content/ComponentName;

.field private mMessagesParent:Landroid/preference/PreferenceCategory;

.field private mNoCoverage:D

.field private mPackages:[Ljava/lang/String;

.field private mPackagesParent:Landroid/preference/PreferenceCategory;

.field private mPm:Landroid/content/pm/PackageManager;

.field private mReportButton:Landroid/widget/Button;

.field private mShowLocationButton:Z

.field private mStartTime:J

.field private mTypes:[I

.field private mUid:I

.field private mUsageSince:I

.field private mUsesGps:Z

.field private mValues:[D


# direct methods
.method static synthetic -get0(Lcom/android/exsettings/fuelgauge/PowerUsageDetail;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->mForceStopButton:Landroid/widget/Button;

    return-object v0
.end method

.method private static synthetic -getcom_android_internal_os_BatterySipper$DrainTypeSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->-com_android_internal_os_BatterySipper$DrainTypeSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->-com_android_internal_os_BatterySipper$DrainTypeSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/internal/os/BatterySipper$DrainType;->values()[Lcom/android/internal/os/BatterySipper$DrainType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/android/internal/os/BatterySipper$DrainType;->APP:Lcom/android/internal/os/BatterySipper$DrainType;

    invoke-virtual {v1}, Lcom/android/internal/os/BatterySipper$DrainType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_b

    :goto_0
    :try_start_1
    sget-object v1, Lcom/android/internal/os/BatterySipper$DrainType;->BLUETOOTH:Lcom/android/internal/os/BatterySipper$DrainType;

    invoke-virtual {v1}, Lcom/android/internal/os/BatterySipper$DrainType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_a

    :goto_1
    :try_start_2
    sget-object v1, Lcom/android/internal/os/BatterySipper$DrainType;->CAMERA:Lcom/android/internal/os/BatterySipper$DrainType;

    invoke-virtual {v1}, Lcom/android/internal/os/BatterySipper$DrainType;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_9

    :goto_2
    :try_start_3
    sget-object v1, Lcom/android/internal/os/BatterySipper$DrainType;->CELL:Lcom/android/internal/os/BatterySipper$DrainType;

    invoke-virtual {v1}, Lcom/android/internal/os/BatterySipper$DrainType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_8

    :goto_3
    :try_start_4
    sget-object v1, Lcom/android/internal/os/BatterySipper$DrainType;->FLASHLIGHT:Lcom/android/internal/os/BatterySipper$DrainType;

    invoke-virtual {v1}, Lcom/android/internal/os/BatterySipper$DrainType;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_7

    :goto_4
    :try_start_5
    sget-object v1, Lcom/android/internal/os/BatterySipper$DrainType;->IDLE:Lcom/android/internal/os/BatterySipper$DrainType;

    invoke-virtual {v1}, Lcom/android/internal/os/BatterySipper$DrainType;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_6

    :goto_5
    :try_start_6
    sget-object v1, Lcom/android/internal/os/BatterySipper$DrainType;->OVERCOUNTED:Lcom/android/internal/os/BatterySipper$DrainType;

    invoke-virtual {v1}, Lcom/android/internal/os/BatterySipper$DrainType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_5

    :goto_6
    :try_start_7
    sget-object v1, Lcom/android/internal/os/BatterySipper$DrainType;->PHONE:Lcom/android/internal/os/BatterySipper$DrainType;

    invoke-virtual {v1}, Lcom/android/internal/os/BatterySipper$DrainType;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_4

    :goto_7
    :try_start_8
    sget-object v1, Lcom/android/internal/os/BatterySipper$DrainType;->SCREEN:Lcom/android/internal/os/BatterySipper$DrainType;

    invoke-virtual {v1}, Lcom/android/internal/os/BatterySipper$DrainType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_3

    :goto_8
    :try_start_9
    sget-object v1, Lcom/android/internal/os/BatterySipper$DrainType;->UNACCOUNTED:Lcom/android/internal/os/BatterySipper$DrainType;

    invoke-virtual {v1}, Lcom/android/internal/os/BatterySipper$DrainType;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_2

    :goto_9
    :try_start_a
    sget-object v1, Lcom/android/internal/os/BatterySipper$DrainType;->USER:Lcom/android/internal/os/BatterySipper$DrainType;

    invoke-virtual {v1}, Lcom/android/internal/os/BatterySipper$DrainType;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_1

    :goto_a
    :try_start_b
    sget-object v1, Lcom/android/internal/os/BatterySipper$DrainType;->WIFI:Lcom/android/internal/os/BatterySipper$DrainType;

    invoke-virtual {v1}, Lcom/android/internal/os/BatterySipper$DrainType;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_0

    :goto_b
    sput-object v0, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->-com_android_internal_os_BatterySipper$DrainTypeSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_b

    :catch_1
    move-exception v1

    goto :goto_a

    :catch_2
    move-exception v1

    goto :goto_9

    :catch_3
    move-exception v1

    goto :goto_8

    :catch_4
    move-exception v1

    goto :goto_7

    :catch_5
    move-exception v1

    goto :goto_6

    :catch_6
    move-exception v1

    goto :goto_5

    :catch_7
    move-exception v1

    goto :goto_4

    :catch_8
    move-exception v1

    goto :goto_3

    :catch_9
    move-exception v1

    goto :goto_2

    :catch_a
    move-exception v1

    goto :goto_1

    :catch_b
    move-exception v1

    goto/16 :goto_0
.end method

.method static synthetic -wrap0(Lcom/android/exsettings/fuelgauge/PowerUsageDetail;I)V
    .locals 0
    .param p1, "action"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->doAction(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 71
    const/16 v0, 0xc

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->sDrainTypeDesciptions:[I

    .line 68
    return-void

    .line 71
    :array_0
    .array-data 4
        0x7f0c0b7a
        0x7f0c0b7b
        0x7f0c0b79
        0x7f0c0b81
        0x7f0c0b83
        0x7f0c0b7d
        0x7f0c0b7f
        0x7f0c0b86
        0x7f0c0b8a
        0x7f0c0b8b
        0x7f0c0b8d
        0x7f0c0b7e
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/android/exsettings/fuelgauge/PowerUsageBase;-><init>()V

    .line 695
    new-instance v0, Lcom/android/exsettings/fuelgauge/PowerUsageDetail$1;

    invoke-direct {v0, p0}, Lcom/android/exsettings/fuelgauge/PowerUsageDetail$1;-><init>(Lcom/android/exsettings/fuelgauge/PowerUsageDetail;)V

    iput-object v0, p0, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->mCheckKillProcessesReceiver:Landroid/content/BroadcastReceiver;

    .line 68
    return-void
.end method

.method private addControl(III)V
    .locals 2
    .param p1, "pageSummary"    # I
    .param p2, "actionTitle"    # I
    .param p3, "action"    # I

    .prologue
    .line 650
    new-instance v0, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 651
    .local v0, "pref":Landroid/preference/Preference;
    invoke-virtual {v0, p2}, Landroid/preference/Preference;->setTitle(I)V

    .line 652
    const v1, 0x7f040083

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 653
    new-instance v1, Lcom/android/exsettings/fuelgauge/PowerUsageDetail$3;

    invoke-direct {v1, p0, p3}, Lcom/android/exsettings/fuelgauge/PowerUsageDetail$3;-><init>(Lcom/android/exsettings/fuelgauge/PowerUsageDetail;I)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 660
    iget-object v1, p0, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->mControlsParent:Landroid/preference/PreferenceCategory;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 649
    return-void
.end method

.method private addHorizontalPreference(Landroid/preference/PreferenceCategory;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "parent"    # Landroid/preference/PreferenceCategory;
    .param p2, "title"    # Ljava/lang/CharSequence;
    .param p3, "summary"    # Ljava/lang/CharSequence;

    .prologue
    .line 581
    new-instance v0, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 582
    .local v0, "pref":Landroid/preference/Preference;
    const v1, 0x7f040083

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 583
    invoke-virtual {v0, p2}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 584
    invoke-virtual {v0, p3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 585
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSelectable(Z)V

    .line 586
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 580
    return-void
.end method

.method private addMessage(I)V
    .locals 3
    .param p1, "message"    # I

    .prologue
    .line 677
    iget-object v0, p0, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->mMessagesParent:Landroid/preference/PreferenceCategory;

    invoke-virtual {p0, p1}, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->addHorizontalPreference(Landroid/preference/PreferenceCategory;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 676
    return-void
.end method

.method private checkForceStop()V
    .locals 11

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 703
    iget-object v0, p0, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->mUid:I

    const/16 v3, 0x2710

    if-ge v0, v3, :cond_1

    .line 704
    :cond_0
    iget-object v0, p0, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->mForceStopButton:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 705
    return-void

    .line 707
    :cond_1
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    iget-object v0, p0, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    array-length v0, v0

    if-ge v9, v0, :cond_3

    .line 708
    iget-object v0, p0, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->mDpm:Landroid/app/admin/DevicePolicyManager;

    iget-object v3, p0, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    aget-object v3, v3, v9

    invoke-virtual {v0, v3}, Landroid/app/admin/DevicePolicyManager;->packageHasActiveAdmins(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 709
    iget-object v0, p0, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->mForceStopButton:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 710
    return-void

    .line 707
    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 713
    :cond_3
    const/4 v9, 0x0

    :goto_1
    iget-object v0, p0, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    array-length v0, v0

    if-ge v9, v0, :cond_4

    .line 715
    :try_start_0
    iget-object v0, p0, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->mPm:Landroid/content/pm/PackageManager;

    iget-object v3, p0, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    aget-object v3, v3, v9

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v10

    .line 716
    .local v10, "info":Landroid/content/pm/ApplicationInfo;
    iget v0, v10, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v3, 0x200000

    and-int/2addr v0, v3

    if-nez v0, :cond_5

    .line 717
    iget-object v0, p0, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->mForceStopButton:Landroid/widget/Button;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 723
    .end local v10    # "info":Landroid/content/pm/ApplicationInfo;
    :cond_4
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v0, "android.intent.action.QUERY_PACKAGE_RESTART"

    .line 724
    const-string/jumbo v3, "package"

    iget-object v4, p0, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    aget-object v4, v4, v5

    invoke-static {v3, v4, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 723
    invoke-direct {v1, v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 725
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v0, "android.intent.extra.PACKAGES"

    iget-object v3, p0, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 726
    const-string/jumbo v0, "android.intent.extra.UID"

    iget v3, p0, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->mUid:I

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 727
    const-string/jumbo v0, "android.intent.extra.user_handle"

    iget v3, p0, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->mUid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 728
    invoke-virtual {p0}, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v3, p0, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->mCheckKillProcessesReceiver:Landroid/content/BroadcastReceiver;

    move-object v4, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/app/Activity;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 702
    return-void

    .line 720
    .end local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v8

    .line 713
    :cond_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_1
.end method

.method private createDetails()V
    .locals 10

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 388
    invoke-virtual {p0}, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 389
    .local v0, "args":Landroid/os/Bundle;
    invoke-virtual {p0}, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 390
    .local v1, "context":Landroid/content/Context;
    const-string/jumbo v5, "since"

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->mUsageSince:I

    .line 391
    const-string/jumbo v5, "uid"

    invoke-virtual {v0, v5, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->mUid:I

    .line 392
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    iget v8, p0, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->mUid:I

    invoke-virtual {v5, v8}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    .line 393
    const-string/jumbo v5, "drainType"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v5

    check-cast v5, Lcom/android/internal/os/BatterySipper$DrainType;

    iput-object v5, p0, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->mDrainType:Lcom/android/internal/os/BatterySipper$DrainType;

    .line 394
    const-string/jumbo v5, "noCoverage"

    const-wide/16 v8, 0x0

    invoke-virtual {v0, v5, v8, v9}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;D)D

    move-result-wide v8

    iput-wide v8, p0, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->mNoCoverage:D

    .line 395
    const-string/jumbo v5, "showLocationButton"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->mShowLocationButton:Z

    .line 397
    const-string/jumbo v5, "types"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v5

    iput-object v5, p0, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->mTypes:[I

    .line 398
    const-string/jumbo v5, "values"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getDoubleArray(Ljava/lang/String;)[D

    move-result-object v5

    iput-object v5, p0, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->mValues:[D

    .line 400
    const-string/jumbo v5, "two_buttons"

    invoke-virtual {p0, v5}, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/android/exsettings/applications/LayoutPreference;

    .line 401
    .local v4, "twoButtons":Lcom/android/exsettings/applications/LayoutPreference;
    const v5, 0x7f13025f

    invoke-virtual {v4, v5}, Lcom/android/exsettings/applications/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->mForceStopButton:Landroid/widget/Button;

    .line 402
    const v5, 0x7f130261

    invoke-virtual {v4, v5}, Lcom/android/exsettings/applications/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->mReportButton:Landroid/widget/Button;

    .line 403
    iget-object v5, p0, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->mForceStopButton:Landroid/widget/Button;

    invoke-virtual {v5, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 405
    iget v5, p0, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->mUid:I

    const/16 v8, 0x2710

    if-lt v5, v8, :cond_5

    .line 406
    iget-object v5, p0, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->mForceStopButton:Landroid/widget/Button;

    const v8, 0x7f0c09b4

    invoke-virtual {v5, v8}, Landroid/widget/Button;->setText(I)V

    .line 407
    iget-object v5, p0, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->mForceStopButton:Landroid/widget/Button;

    const/4 v8, 0x7

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 408
    iget-object v5, p0, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->mForceStopButton:Landroid/widget/Button;

    invoke-virtual {v5, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 409
    iget-object v5, p0, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->mReportButton:Landroid/widget/Button;

    const v8, 0x10403e7

    invoke-virtual {v5, v8}, Landroid/widget/Button;->setText(I)V

    .line 410
    iget-object v5, p0, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->mReportButton:Landroid/widget/Button;

    const/16 v8, 0x8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 411
    iget-object v5, p0, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->mReportButton:Landroid/widget/Button;

    invoke-virtual {v5, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 413
    iget-object v5, p0, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    array-length v5, v5

    if-lez v5, :cond_1

    .line 415
    :try_start_0
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 416
    iget-object v8, p0, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    const/4 v9, 0x0

    aget-object v8, v8, v9

    const/4 v9, 0x0

    .line 415
    invoke-virtual {v5, v8, v9}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iput-object v5, p0, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->mApp:Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 423
    :goto_0
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 424
    const-string/jumbo v8, "send_action_app_error"

    .line 423
    invoke-static {v5, v8, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 425
    .local v3, "enabled":I
    if-eqz v3, :cond_3

    .line 426
    iget-object v5, p0, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->mApp:Landroid/content/pm/ApplicationInfo;

    if-eqz v5, :cond_0

    .line 428
    iget-object v5, p0, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    aget-object v5, v5, v7

    iget-object v8, p0, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->mApp:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 427
    invoke-static {v1, v5, v8}, Landroid/app/ApplicationErrorReport;->getErrorReportReceiver(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/ComponentName;

    move-result-object v5

    iput-object v5, p0, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->mInstaller:Landroid/content/ComponentName;

    .line 430
    :cond_0
    iget-object v8, p0, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->mReportButton:Landroid/widget/Button;

    iget-object v5, p0, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->mInstaller:Landroid/content/ComponentName;

    if-eqz v5, :cond_2

    move v5, v6

    :goto_1
    invoke-virtual {v8, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 434
    :goto_2
    iget-object v5, p0, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->mApp:Landroid/content/pm/ApplicationInfo;

    if-eqz v5, :cond_4

    .line 435
    invoke-static {}, Lcom/android/exsettings/fuelgauge/PowerWhitelistBackend;->getInstance()Lcom/android/exsettings/fuelgauge/PowerWhitelistBackend;

    move-result-object v5

    iget-object v6, p0, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->mApp:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/android/exsettings/fuelgauge/PowerWhitelistBackend;->isWhitelisted(Ljava/lang/String;)Z

    move-result v5

    .line 434
    if-eqz v5, :cond_4

    .line 436
    const-string/jumbo v5, "high_power"

    invoke-virtual {p0, v5}, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    iput-object v5, p0, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->mHighPower:Landroid/preference/Preference;

    .line 437
    iget-object v5, p0, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->mHighPower:Landroid/preference/Preference;

    new-instance v6, Lcom/android/exsettings/fuelgauge/PowerUsageDetail$2;

    invoke-direct {v6, p0}, Lcom/android/exsettings/fuelgauge/PowerUsageDetail$2;-><init>(Lcom/android/exsettings/fuelgauge/PowerUsageDetail;)V

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 452
    .end local v3    # "enabled":I
    :goto_3
    invoke-virtual {p0}, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->refreshStats()V

    .line 454
    invoke-direct {p0}, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->fillDetailsSection()V

    .line 455
    iget v5, p0, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->mUid:I

    invoke-direct {p0, v5}, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->fillPackagesSection(I)V

    .line 456
    iget v5, p0, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->mUid:I

    invoke-direct {p0, v5}, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->fillControlsSection(I)V

    .line 457
    iget v5, p0, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->mUid:I

    invoke-direct {p0, v5}, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->fillMessagesSection(I)V

    .line 387
    return-void

    .line 420
    :cond_1
    const-string/jumbo v5, "PowerUsageDetail"

    const-string/jumbo v8, "No packages!!"

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .restart local v3    # "enabled":I
    :cond_2
    move v5, v7

    .line 430
    goto :goto_1

    .line 432
    :cond_3
    const-string/jumbo v5, "two_buttons"

    invoke-virtual {p0, v5}, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->removePreference(Ljava/lang/String;)V

    goto :goto_2

    .line 445
    :cond_4
    iget-object v5, p0, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->mControlsParent:Landroid/preference/PreferenceCategory;

    const-string/jumbo v6, "high_power"

    invoke-virtual {p0, v6}, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_3

    .line 448
    .end local v3    # "enabled":I
    :cond_5
    const-string/jumbo v5, "two_buttons"

    invoke-virtual {p0, v5}, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->removePreference(Ljava/lang/String;)V

    .line 449
    iget-object v5, p0, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->mControlsParent:Landroid/preference/PreferenceCategory;

    const-string/jumbo v6, "high_power"

    invoke-virtual {p0, v6}, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_3

    .line 417
    :catch_0
    move-exception v2

    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto/16 :goto_0
.end method

.method private doAction(I)V
    .locals 7
    .param p1, "action"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x0

    .line 510
    invoke-virtual {p0}, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/exsettings/SettingsActivity;

    .line 511
    .local v0, "sa":Lcom/android/exsettings/SettingsActivity;
    packed-switch p1, :pswitch_data_0

    .line 509
    :goto_0
    return-void

    .line 513
    :pswitch_0
    const-class v1, Lcom/android/exsettings/DisplaySettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 514
    const v3, 0x7f0c07c8

    move-object v4, v2

    move-object v5, v2

    .line 513
    invoke-virtual/range {v0 .. v6}, Lcom/android/exsettings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_0

    .line 517
    :pswitch_1
    const-class v1, Lcom/android/exsettings/wifi/WifiSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 518
    const v3, 0x7f0c0705

    move-object v4, v2

    move-object v5, v2

    .line 517
    invoke-virtual/range {v0 .. v6}, Lcom/android/exsettings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_0

    .line 521
    :pswitch_2
    const-class v1, Lcom/android/exsettings/bluetooth/BluetoothSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 522
    const v3, 0x7f0c06a3

    move-object v4, v2

    move-object v5, v2

    .line 521
    invoke-virtual/range {v0 .. v6}, Lcom/android/exsettings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_0

    .line 525
    :pswitch_3
    const-class v1, Lcom/android/exsettings/WirelessSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 526
    const v3, 0x7f0c05df

    move-object v4, v2

    move-object v5, v2

    .line 525
    invoke-virtual/range {v0 .. v6}, Lcom/android/exsettings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_0

    .line 529
    :pswitch_4
    invoke-direct {p0}, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->startApplicationDetailsActivity()V

    goto :goto_0

    .line 532
    :pswitch_5
    const-class v1, Lcom/android/exsettings/location/LocationSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 533
    const v3, 0x7f0c0615

    move-object v4, v2

    move-object v5, v2

    .line 532
    invoke-virtual/range {v0 .. v6}, Lcom/android/exsettings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_0

    .line 536
    :pswitch_6
    invoke-direct {p0}, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->killProcesses()V

    goto :goto_0

    .line 539
    :pswitch_7
    invoke-direct {p0}, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->reportBatteryUse()V

    goto :goto_0

    .line 511
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private fillControlsSection(I)V
    .locals 11
    .param p1, "uid"    # I

    .prologue
    const/4 v8, 0x1

    const/4 v10, 0x0

    .line 590
    invoke-virtual {p0}, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 591
    .local v4, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v4, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v2

    .line 592
    .local v2, "packages":[Ljava/lang/String;
    const/4 v3, 0x0

    .line 594
    .local v3, "pi":Landroid/content/pm/PackageInfo;
    if-eqz v2, :cond_2

    const/4 v6, 0x0

    :try_start_0
    aget-object v6, v2, v6

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 596
    .end local v3    # "pi":Landroid/content/pm/PackageInfo;
    :goto_0
    if-eqz v3, :cond_3

    iget-object v0, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 598
    :goto_1
    const/4 v5, 0x1

    .line 599
    .local v5, "removeHeader":Z
    invoke-static {}, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->-getcom_android_internal_os_BatterySipper$DrainTypeSwitchesValues()[I

    move-result-object v6

    iget-object v7, p0, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->mDrainType:Lcom/android/internal/os/BatterySipper$DrainType;

    invoke-virtual {v7}, Lcom/android/internal/os/BatterySipper$DrainType;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 644
    :cond_0
    :goto_2
    :pswitch_0
    if-eqz v5, :cond_1

    .line 645
    iget-object v6, p0, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->mControlsParent:Landroid/preference/PreferenceCategory;

    invoke-virtual {v6, v10}, Landroid/preference/PreferenceCategory;->setTitle(Ljava/lang/CharSequence;)V

    .line 589
    :cond_1
    return-void

    .line 594
    .end local v5    # "removeHeader":Z
    .restart local v3    # "pi":Landroid/content/pm/PackageInfo;
    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    .line 596
    .end local v3    # "pi":Landroid/content/pm/PackageInfo;
    :cond_3
    const/4 v0, 0x0

    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    goto :goto_1

    .line 602
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .restart local v5    # "removeHeader":Z
    :pswitch_1
    if-eqz v2, :cond_4

    array-length v6, v2

    if-ne v6, v8, :cond_4

    .line 603
    const v6, 0x7f0c0b74

    .line 604
    const v7, 0x7f0c0b87

    const/4 v8, 0x5

    .line 603
    invoke-direct {p0, v6, v7, v8}, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->addControl(III)V

    .line 605
    const/4 v5, 0x0

    .line 611
    :cond_4
    iget-boolean v6, p0, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->mUsesGps:Z

    if-eqz v6, :cond_0

    iget-boolean v6, p0, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->mShowLocationButton:Z

    if-eqz v6, :cond_0

    .line 612
    const v6, 0x7f0c0615

    .line 613
    const v7, 0x7f0c0b88

    const/4 v8, 0x6

    .line 612
    invoke-direct {p0, v6, v7, v8}, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->addControl(III)V

    .line 614
    const/4 v5, 0x0

    goto :goto_2

    .line 618
    :pswitch_2
    const v6, 0x7f0c07fb

    .line 619
    const v7, 0x7f0c0b80

    .line 618
    invoke-direct {p0, v6, v7, v8}, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->addControl(III)V

    .line 621
    const/4 v5, 0x0

    .line 622
    goto :goto_2

    .line 624
    :pswitch_3
    const v6, 0x7f0c0705

    .line 625
    const v7, 0x7f0c0b82

    .line 626
    const/4 v8, 0x2

    .line 624
    invoke-direct {p0, v6, v7, v8}, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->addControl(III)V

    .line 627
    const/4 v5, 0x0

    .line 628
    goto :goto_2

    .line 630
    :pswitch_4
    const v6, 0x7f0c06a3

    .line 631
    const v7, 0x7f0c0b84

    .line 632
    const/4 v8, 0x3

    .line 630
    invoke-direct {p0, v6, v7, v8}, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->addControl(III)V

    .line 633
    const/4 v5, 0x0

    .line 634
    goto :goto_2

    .line 636
    :pswitch_5
    iget-wide v6, p0, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->mNoCoverage:D

    const-wide/high16 v8, 0x4024000000000000L    # 10.0

    cmpl-double v6, v6, v8

    if-lez v6, :cond_0

    .line 637
    const v6, 0x7f0c05df

    .line 638
    const v7, 0x7f0c0b7c

    .line 639
    const/4 v8, 0x4

    .line 637
    invoke-direct {p0, v6, v7, v8}, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->addControl(III)V

    .line 640
    const/4 v5, 0x0

    goto :goto_2

    .line 595
    .end local v5    # "removeHeader":Z
    .restart local v3    # "pi":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v1

    .local v1, "nnfe":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0

    .line 599
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private fillDetailsSection()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    .line 545
    iget-object v6, p0, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->mTypes:[I

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->mValues:[D

    if-eqz v6, :cond_1

    .line 546
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v6, p0, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->mTypes:[I

    array-length v6, v6

    if-ge v0, v6, :cond_1

    .line 548
    iget-object v6, p0, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->mValues:[D

    aget-wide v6, v6, v0

    const-wide/16 v8, 0x0

    cmpg-double v6, v6, v8

    if-gtz v6, :cond_0

    .line 546
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 549
    :cond_0
    iget-object v6, p0, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->mTypes:[I

    aget v6, v6, v0

    invoke-virtual {p0, v6}, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 550
    .local v1, "label":Ljava/lang/String;
    const/4 v5, 0x0

    .line 551
    .local v5, "value":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->mTypes:[I

    aget v6, v6, v0

    packed-switch v6, :pswitch_data_0

    .line 572
    :goto_2
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->getActivity()Landroid/app/Activity;

    move-result-object v6

    iget-object v7, p0, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->mValues:[D

    aget-wide v8, v7, v0

    invoke-static {v6, v8, v9, v10}, Lcom/android/exsettings/Utils;->formatElapsedTime(Landroid/content/Context;DZ)Ljava/lang/String;

    move-result-object v5

    .line 574
    .local v5, "value":Ljava/lang/String;
    :goto_3
    iget-object v6, p0, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->mDetailsParent:Landroid/preference/PreferenceCategory;

    invoke-direct {p0, v6, v1, v5}, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->addHorizontalPreference(Landroid/preference/PreferenceCategory;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 556
    .local v5, "value":Ljava/lang/String;
    :pswitch_1
    iget-object v6, p0, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->mValues:[D

    aget-wide v6, v6, v0

    double-to-long v2, v6

    .line 557
    .local v2, "packets":J
    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    .local v5, "value":Ljava/lang/String;
    goto :goto_3

    .line 560
    .end local v2    # "packets":J
    .local v5, "value":Ljava/lang/String;
    :pswitch_2
    iget-object v6, p0, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->mValues:[D

    aget-wide v6, v6, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v4, v6

    .line 561
    .local v4, "percentage":I
    invoke-static {v4}, Lcom/android/exsettings/Utils;->formatPercentage(I)Ljava/lang/String;

    move-result-object v5

    .local v5, "value":Ljava/lang/String;
    goto :goto_3

    .line 566
    .end local v4    # "percentage":I
    .local v5, "value":Ljava/lang/String;
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->getActivity()Landroid/app/Activity;

    move-result-object v6

    new-array v7, v10, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->mValues:[D

    aget-wide v8, v8, v0

    double-to-long v8, v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v7, v9

    const v8, 0x7f0c0b8e

    invoke-virtual {v6, v8, v7}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .local v5, "value":Ljava/lang/String;
    goto :goto_3

    .line 569
    .local v5, "value":Ljava/lang/String;
    :pswitch_4
    iput-boolean v10, p0, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->mUsesGps:Z

    goto :goto_2

    .line 544
    .end local v0    # "i":I
    .end local v1    # "label":Ljava/lang/String;
    .end local v5    # "value":Ljava/lang/String;
    :cond_1
    return-void

    .line 551
    :pswitch_data_0
    .packed-switch 0x7f0c0b62
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method private fillMessagesSection(I)V
    .locals 3
    .param p1, "uid"    # I

    .prologue
    .line 664
    const/4 v0, 0x1

    .line 665
    .local v0, "removeHeader":Z
    invoke-static {}, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->-getcom_android_internal_os_BatterySipper$DrainTypeSwitchesValues()[I

    move-result-object v1

    iget-object v2, p0, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->mDrainType:Lcom/android/internal/os/BatterySipper$DrainType;

    invoke-virtual {v2}, Lcom/android/internal/os/BatterySipper$DrainType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 671
    :goto_0
    if-eqz v0, :cond_0

    .line 672
    iget-object v1, p0, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->mMessagesParent:Landroid/preference/PreferenceCategory;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->setTitle(Ljava/lang/CharSequence;)V

    .line 663
    :cond_0
    return-void

    .line 667
    :pswitch_0
    const v1, 0x7f0c0b8c

    invoke-direct {p0, v1}, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->addMessage(I)V

    .line 668
    const/4 v0, 0x0

    .line 669
    goto :goto_0

    .line 665
    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
    .end packed-switch
.end method

.method private fillPackagesSection(I)V
    .locals 8
    .param p1, "uid"    # I

    .prologue
    .line 759
    const/4 v5, 0x1

    if-ge p1, v5, :cond_0

    .line 760
    invoke-direct {p0}, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->removePackagesSection()V

    .line 761
    return-void

    .line 763
    :cond_0
    iget-object v5, p0, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    array-length v5, v5

    const/4 v6, 0x2

    if-ge v5, v6, :cond_2

    .line 764
    :cond_1
    invoke-direct {p0}, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->removePackagesSection()V

    .line 765
    return-void

    .line 768
    :cond_2
    invoke-virtual {p0}, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 770
    .local v4, "pm":Landroid/content/pm/PackageManager;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v5, p0, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    array-length v5, v5

    if-ge v2, v5, :cond_4

    .line 772
    :try_start_0
    iget-object v5, p0, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    aget-object v5, v5, v2

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 773
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v0, v4}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 774
    .local v3, "label":Ljava/lang/CharSequence;
    if-eqz v3, :cond_3

    .line 775
    iget-object v5, p0, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    .line 777
    :cond_3
    iget-object v5, p0, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->mPackagesParent:Landroid/preference/PreferenceCategory;

    iget-object v6, p0, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    aget-object v6, v6, v2

    const/4 v7, 0x0

    invoke-direct {p0, v5, v6, v7}, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->addHorizontalPreference(Landroid/preference/PreferenceCategory;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 770
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "label":Ljava/lang/CharSequence;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 758
    :cond_4
    return-void

    .line 778
    :catch_0
    move-exception v1

    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_1
.end method

.method private killProcesses()V
    .locals 5

    .prologue
    .line 685
    iget-object v3, p0, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    if-nez v3, :cond_0

    return-void

    .line 686
    :cond_0
    invoke-virtual {p0}, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->getActivity()Landroid/app/Activity;

    move-result-object v3

    .line 687
    const-string/jumbo v4, "activity"

    .line 686
    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 688
    .local v0, "am":Landroid/app/ActivityManager;
    iget v3, p0, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->mUid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 689
    .local v2, "userId":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    array-length v3, v3

    if-ge v1, v3, :cond_1

    .line 690
    iget-object v3, p0, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v0, v3, v2}, Landroid/app/ActivityManager;->forceStopPackageAsUser(Ljava/lang/String;I)V

    .line 689
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 692
    :cond_1
    invoke-direct {p0}, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->checkForceStop()V

    .line 684
    return-void
.end method

.method private removePackagesSection()V
    .locals 2

    .prologue
    .line 681
    invoke-virtual {p0}, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->mPackagesParent:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 680
    return-void
.end method

.method private reportBatteryUse()V
    .locals 8

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 733
    iget-object v6, p0, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    if-nez v6, :cond_0

    return-void

    .line 735
    :cond_0
    new-instance v2, Landroid/app/ApplicationErrorReport;

    invoke-direct {v2}, Landroid/app/ApplicationErrorReport;-><init>()V

    .line 736
    .local v2, "report":Landroid/app/ApplicationErrorReport;
    const/4 v6, 0x3

    iput v6, v2, Landroid/app/ApplicationErrorReport;->type:I

    .line 737
    iget-object v6, p0, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    aget-object v6, v6, v4

    iput-object v6, v2, Landroid/app/ApplicationErrorReport;->packageName:Ljava/lang/String;

    .line 738
    iget-object v6, p0, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->mInstaller:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Landroid/app/ApplicationErrorReport;->installerPackageName:Ljava/lang/String;

    .line 739
    iget-object v6, p0, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    aget-object v6, v6, v4

    iput-object v6, v2, Landroid/app/ApplicationErrorReport;->processName:Ljava/lang/String;

    .line 740
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, v2, Landroid/app/ApplicationErrorReport;->time:J

    .line 741
    iget-object v6, p0, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->mApp:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_1

    move v4, v5

    :cond_1
    iput-boolean v4, v2, Landroid/app/ApplicationErrorReport;->systemApp:Z

    .line 743
    invoke-virtual {p0}, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 744
    .local v0, "args":Landroid/os/Bundle;
    new-instance v1, Landroid/app/ApplicationErrorReport$BatteryInfo;

    invoke-direct {v1}, Landroid/app/ApplicationErrorReport$BatteryInfo;-><init>()V

    .line 745
    .local v1, "batteryInfo":Landroid/app/ApplicationErrorReport$BatteryInfo;
    const-string/jumbo v4, "percent"

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, v1, Landroid/app/ApplicationErrorReport$BatteryInfo;->usagePercent:I

    .line 746
    const-string/jumbo v4, "duration"

    const-wide/16 v6, 0x0

    invoke-virtual {v0, v4, v6, v7}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, v1, Landroid/app/ApplicationErrorReport$BatteryInfo;->durationMicros:J

    .line 747
    const-string/jumbo v4, "report_details"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Landroid/app/ApplicationErrorReport$BatteryInfo;->usageDetails:Ljava/lang/String;

    .line 748
    const-string/jumbo v4, "report_checkin_details"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Landroid/app/ApplicationErrorReport$BatteryInfo;->checkinDetails:Ljava/lang/String;

    .line 749
    iput-object v1, v2, Landroid/app/ApplicationErrorReport;->batteryInfo:Landroid/app/ApplicationErrorReport$BatteryInfo;

    .line 751
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.APP_ERROR"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 752
    .local v3, "result":Landroid/content/Intent;
    iget-object v4, p0, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->mInstaller:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 753
    const-string/jumbo v4, "android.intent.extra.BUG_REPORT"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 754
    const/high16 v4, 0x10000000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 755
    invoke-virtual {p0, v3}, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->startActivity(Landroid/content/Intent;)V

    .line 732
    return-void
.end method

.method private setupHeader()V
    .locals 12

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 461
    invoke-virtual {p0}, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    .line 462
    .local v2, "args":Landroid/os/Bundle;
    const-string/jumbo v10, "title"

    invoke-virtual {v2, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 463
    .local v7, "title":Ljava/lang/String;
    const-string/jumbo v10, "iconPackage"

    invoke-virtual {v2, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 464
    .local v5, "pkg":Ljava/lang/String;
    const-string/jumbo v10, "iconId"

    invoke-virtual {v2, v10, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 465
    .local v3, "iconId":I
    const/4 v1, 0x0

    .line 467
    .local v1, "appIcon":Landroid/graphics/drawable/Drawable;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_6

    .line 469
    :try_start_0
    invoke-virtual {p0}, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 470
    .local v6, "pm":Landroid/content/pm/PackageManager;
    const/4 v10, 0x0

    invoke-virtual {v6, v5, v10}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v10

    iget-object v0, v10, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 471
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_0

    .line 472
    invoke-virtual {v0, v6}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 480
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "appIcon":Landroid/graphics/drawable/Drawable;
    .end local v6    # "pm":Landroid/content/pm/PackageManager;
    :cond_0
    :goto_0
    if-nez v1, :cond_1

    .line 481
    invoke-virtual {p0}, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 483
    :cond_1
    if-eqz v1, :cond_2

    .line 484
    sget-object v10, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v10}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 486
    :cond_2
    if-nez v5, :cond_3

    iget-object v10, p0, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    if-eqz v10, :cond_3

    .line 487
    iget-object v10, p0, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    aget-object v5, v10, v9

    .line 490
    :cond_3
    if-eqz v5, :cond_4

    invoke-static {p0, v5}, Lcom/android/exsettings/applications/AppInfoWithHeader;->getInfoIntent(Landroid/app/Fragment;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    .line 491
    :cond_4
    iget-object v10, p0, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->mDrainType:Lcom/android/internal/os/BatterySipper$DrainType;

    sget-object v11, Lcom/android/internal/os/BatterySipper$DrainType;->APP:Lcom/android/internal/os/BatterySipper$DrainType;

    if-eq v10, v11, :cond_5

    const v9, 0x7f0e0048

    .line 489
    :cond_5
    invoke-static {p0, v1, v7, v8, v9}, Lcom/android/exsettings/AppHeader;->createAppHeader(Lcom/android/exsettings/SettingsPreferenceFragment;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Landroid/content/Intent;I)V

    .line 460
    return-void

    .line 477
    .restart local v1    # "appIcon":Landroid/graphics/drawable/Drawable;
    :cond_6
    if-eqz v3, :cond_0

    .line 478
    invoke-virtual {p0}, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10, v3}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .local v1, "appIcon":Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 474
    .local v1, "appIcon":Landroid/graphics/drawable/Drawable;
    :catch_0
    move-exception v4

    .local v4, "nnfe":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method

.method private startApplicationDetailsActivity()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 501
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 502
    .local v2, "args":Landroid/os/Bundle;
    const-string/jumbo v1, "package"

    iget-object v3, p0, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    aget-object v3, v3, v6

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    invoke-virtual {p0}, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/exsettings/SettingsActivity;

    .line 505
    .local v0, "sa":Lcom/android/exsettings/SettingsActivity;
    const-class v1, Lcom/android/exsettings/applications/InstalledAppDetails;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 506
    const v3, 0x7f0c09aa

    move-object v5, v4

    .line 505
    invoke-virtual/range {v0 .. v6}, Lcom/android/exsettings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 499
    return-void
.end method

.method public static startBatteryDetailPage(Lcom/android/exsettings/SettingsActivity;Lcom/android/internal/os/BatteryStatsHelper;ILcom/android/exsettings/fuelgauge/BatteryEntry;Z)V
    .locals 18
    .param p0, "caller"    # Lcom/android/exsettings/SettingsActivity;
    .param p1, "helper"    # Lcom/android/internal/os/BatteryStatsHelper;
    .param p2, "statsType"    # I
    .param p3, "entry"    # Lcom/android/exsettings/fuelgauge/BatteryEntry;
    .param p4, "showLocationButton"    # Z

    .prologue
    .line 90
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/os/BatteryStatsHelper;->getStats()Landroid/os/BatteryStats;

    move-result-object v2

    .line 91
    .local v2, "stats":Landroid/os/BatteryStats;
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/os/BatteryStatsHelper;->getDockStats()Landroid/os/BatteryStats;

    .line 93
    move/from16 v0, p2

    invoke-virtual {v2, v0}, Landroid/os/BatteryStats;->getDischargeAmount(I)I

    move-result v12

    .line 94
    .local v12, "dischargeAmount":I
    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    .line 95
    .local v11, "args":Landroid/os/Bundle;
    const-string/jumbo v3, "title"

    move-object/from16 v0, p3

    iget-object v5, v0, Lcom/android/exsettings/fuelgauge/BatteryEntry;->name:Ljava/lang/String;

    invoke-virtual {v11, v3, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    const-string/jumbo v3, "percent"

    .line 97
    move-object/from16 v0, p3

    iget-object v5, v0, Lcom/android/exsettings/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-wide v6, v5, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    int-to-double v8, v12

    mul-double/2addr v6, v8

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/os/BatteryStatsHelper;->getTotalPower()D

    move-result-wide v8

    div-double/2addr v6, v8

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    add-double/2addr v6, v8

    .line 96
    double-to-int v5, v6

    invoke-virtual {v11, v3, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 98
    const-string/jumbo v3, "gauge"

    .line 99
    move-object/from16 v0, p3

    iget-object v5, v0, Lcom/android/exsettings/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-wide v6, v5, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    mul-double/2addr v6, v8

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/os/BatteryStatsHelper;->getMaxPower()D

    move-result-wide v8

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    .line 98
    double-to-int v5, v6

    invoke-virtual {v11, v3, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 100
    const-string/jumbo v3, "duration"

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/os/BatteryStatsHelper;->getStatsPeriod()J

    move-result-wide v6

    invoke-virtual {v11, v3, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 101
    const-string/jumbo v3, "iconPackage"

    move-object/from16 v0, p3

    iget-object v5, v0, Lcom/android/exsettings/fuelgauge/BatteryEntry;->defaultPackageName:Ljava/lang/String;

    invoke-virtual {v11, v3, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    const-string/jumbo v3, "iconId"

    move-object/from16 v0, p3

    iget v5, v0, Lcom/android/exsettings/fuelgauge/BatteryEntry;->iconId:I

    invoke-virtual {v11, v3, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 103
    const-string/jumbo v3, "noCoverage"

    move-object/from16 v0, p3

    iget-object v5, v0, Lcom/android/exsettings/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-wide v6, v5, Lcom/android/internal/os/BatterySipper;->noCoveragePercent:D

    invoke-virtual {v11, v3, v6, v7}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 104
    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/exsettings/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-object v3, v3, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    if-eqz v3, :cond_0

    .line 105
    const-string/jumbo v3, "uid"

    move-object/from16 v0, p3

    iget-object v5, v0, Lcom/android/exsettings/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-object v5, v5, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    invoke-virtual {v5}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v5

    invoke-virtual {v11, v3, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 107
    :cond_0
    const-string/jumbo v3, "drainType"

    move-object/from16 v0, p3

    iget-object v5, v0, Lcom/android/exsettings/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-object v5, v5, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    invoke-virtual {v11, v3, v5}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 108
    const-string/jumbo v3, "showLocationButton"

    move/from16 v0, p4

    invoke-virtual {v11, v3, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 110
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v16

    .line 113
    .local v16, "userId":I
    invoke-static {}, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->-getcom_android_internal_os_BatterySipper$DrainTypeSwitchesValues()[I

    move-result-object v3

    move-object/from16 v0, p3

    iget-object v5, v0, Lcom/android/exsettings/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-object v5, v5, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    invoke-virtual {v5}, Lcom/android/internal/os/BatterySipper$DrainType;->ordinal()I

    move-result v5

    aget v3, v3, v5

    packed-switch v3, :pswitch_data_0

    .line 267
    :pswitch_0
    const v3, 0x7f0c0b6e

    .line 268
    const v5, 0x7f0c0b71

    .line 266
    filled-new-array {v3, v5}, [I

    move-result-object v14

    .line 270
    .local v14, "types":[I
    const/4 v3, 0x2

    new-array v0, v3, [D

    move-object/from16 v17, v0

    .line 271
    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/exsettings/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-wide v6, v3, Lcom/android/internal/os/BatterySipper;->usageTimeMs:J

    long-to-double v6, v6

    const/4 v3, 0x0

    aput-wide v6, v17, v3

    .line 272
    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/exsettings/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-wide v6, v3, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    const/4 v3, 0x1

    aput-wide v6, v17, v3

    .line 276
    .local v17, "values":[D
    :cond_1
    :goto_0
    const-string/jumbo v3, "types"

    invoke-virtual {v11, v3, v14}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 277
    const-string/jumbo v3, "values"

    move-object/from16 v0, v17

    invoke-virtual {v11, v3, v0}, Landroid/os/Bundle;->putDoubleArray(Ljava/lang/String;[D)V

    .line 279
    const-class v3, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    .line 280
    new-instance v10, Landroid/os/UserHandle;

    move/from16 v0, v16

    invoke-direct {v10, v0}, Landroid/os/UserHandle;-><init>(I)V

    const v8, 0x7f0c0b51

    const/4 v9, 0x0

    move-object/from16 v5, p0

    move-object v7, v11

    .line 279
    invoke-virtual/range {v5 .. v10}, Lcom/android/exsettings/SettingsActivity;->startPreferencePanelAsUser(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/os/UserHandle;)V

    .line 88
    return-void

    .line 117
    .end local v14    # "types":[I
    .end local v17    # "values":[D
    :pswitch_1
    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/exsettings/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-object v15, v3, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    .line 118
    .local v15, "uid":Landroid/os/BatteryStats$Uid;
    const/16 v3, 0xf

    new-array v14, v3, [I

    .restart local v14    # "types":[I
    fill-array-data v14, :array_0

    .line 135
    const/16 v3, 0xf

    new-array v0, v3, [D

    move-object/from16 v17, v0

    .line 136
    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/exsettings/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-wide v6, v3, Lcom/android/internal/os/BatterySipper;->cpuTimeMs:J

    long-to-double v6, v6

    const/4 v3, 0x0

    aput-wide v6, v17, v3

    .line 137
    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/exsettings/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-wide v6, v3, Lcom/android/internal/os/BatterySipper;->cpuFgTimeMs:J

    long-to-double v6, v6

    const/4 v3, 0x1

    aput-wide v6, v17, v3

    .line 138
    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/exsettings/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-wide v6, v3, Lcom/android/internal/os/BatterySipper;->wakeLockTimeMs:J

    long-to-double v6, v6

    const/4 v3, 0x2

    aput-wide v6, v17, v3

    .line 139
    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/exsettings/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-wide v6, v3, Lcom/android/internal/os/BatterySipper;->gpsTimeMs:J

    long-to-double v6, v6

    const/4 v3, 0x3

    aput-wide v6, v17, v3

    .line 140
    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/exsettings/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-wide v6, v3, Lcom/android/internal/os/BatterySipper;->wifiRunningTimeMs:J

    long-to-double v6, v6

    const/4 v3, 0x4

    aput-wide v6, v17, v3

    .line 141
    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/exsettings/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-wide v6, v3, Lcom/android/internal/os/BatterySipper;->mobileRxPackets:J

    long-to-double v6, v6

    const/4 v3, 0x5

    aput-wide v6, v17, v3

    .line 142
    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/exsettings/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-wide v6, v3, Lcom/android/internal/os/BatterySipper;->mobileTxPackets:J

    long-to-double v6, v6

    const/4 v3, 0x6

    aput-wide v6, v17, v3

    .line 143
    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/exsettings/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-wide v6, v3, Lcom/android/internal/os/BatterySipper;->mobileActive:J

    long-to-double v6, v6

    const/4 v3, 0x7

    aput-wide v6, v17, v3

    .line 144
    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/exsettings/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-wide v6, v3, Lcom/android/internal/os/BatterySipper;->wifiRxPackets:J

    long-to-double v6, v6

    const/16 v3, 0x8

    aput-wide v6, v17, v3

    .line 145
    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/exsettings/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-wide v6, v3, Lcom/android/internal/os/BatterySipper;->wifiTxPackets:J

    long-to-double v6, v6

    const/16 v3, 0x9

    aput-wide v6, v17, v3

    .line 146
    const-wide/16 v6, 0x0

    const/16 v3, 0xa

    aput-wide v6, v17, v3

    .line 147
    const-wide/16 v6, 0x0

    const/16 v3, 0xb

    aput-wide v6, v17, v3

    .line 148
    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/exsettings/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-wide v6, v3, Lcom/android/internal/os/BatterySipper;->cameraTimeMs:J

    long-to-double v6, v6

    const/16 v3, 0xc

    aput-wide v6, v17, v3

    .line 149
    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/exsettings/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-wide v6, v3, Lcom/android/internal/os/BatterySipper;->flashlightTimeMs:J

    long-to-double v6, v6

    const/16 v3, 0xd

    aput-wide v6, v17, v3

    .line 150
    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/exsettings/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-wide v6, v3, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    const/16 v3, 0xe

    aput-wide v6, v17, v3

    .line 153
    .restart local v17    # "values":[D
    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/exsettings/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-object v3, v3, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    sget-object v5, Lcom/android/internal/os/BatterySipper$DrainType;->APP:Lcom/android/internal/os/BatterySipper$DrainType;

    if-ne v3, v5, :cond_1

    .line 154
    new-instance v13, Ljava/io/StringWriter;

    invoke-direct {v13}, Ljava/io/StringWriter;-><init>()V

    .line 155
    .local v13, "result":Ljava/io/Writer;
    new-instance v4, Lcom/android/internal/util/FastPrintWriter;

    const/4 v3, 0x0

    const/16 v5, 0x400

    invoke-direct {v4, v13, v3, v5}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/Writer;ZI)V

    .line 156
    .local v4, "printWriter":Ljava/io/PrintWriter;
    const-string/jumbo v5, ""

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/os/BatteryStatsHelper;->getStatsType()I

    move-result v6

    invoke-virtual {v15}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v7

    move-object/from16 v3, p0

    invoke-virtual/range {v2 .. v7}, Landroid/os/BatteryStats;->dumpLocked(Landroid/content/Context;Ljava/io/PrintWriter;Ljava/lang/String;II)V

    .line 157
    invoke-virtual {v4}, Ljava/io/PrintWriter;->flush()V

    .line 158
    const-string/jumbo v3, "report_details"

    invoke-virtual {v13}, Ljava/io/Writer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11, v3, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    new-instance v13, Ljava/io/StringWriter;

    .end local v13    # "result":Ljava/io/Writer;
    invoke-direct {v13}, Ljava/io/StringWriter;-><init>()V

    .line 161
    .restart local v13    # "result":Ljava/io/Writer;
    new-instance v4, Lcom/android/internal/util/FastPrintWriter;

    .end local v4    # "printWriter":Ljava/io/PrintWriter;
    const/4 v3, 0x0

    const/16 v5, 0x400

    invoke-direct {v4, v13, v3, v5}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/Writer;ZI)V

    .line 162
    .restart local v4    # "printWriter":Ljava/io/PrintWriter;
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/os/BatteryStatsHelper;->getStatsType()I

    move-result v3

    invoke-virtual {v15}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual {v2, v0, v4, v3, v5}, Landroid/os/BatteryStats;->dumpCheckinLocked(Landroid/content/Context;Ljava/io/PrintWriter;II)V

    .line 163
    invoke-virtual {v4}, Ljava/io/PrintWriter;->flush()V

    .line 164
    const-string/jumbo v3, "report_checkin_details"

    .line 165
    invoke-virtual {v13}, Ljava/io/Writer;->toString()Ljava/lang/String;

    move-result-object v5

    .line 164
    invoke-virtual {v11, v3, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    invoke-virtual {v15}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v3

    if-eqz v3, :cond_1

    .line 167
    invoke-virtual {v15}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v3

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v16

    goto/16 :goto_0

    .line 175
    .end local v4    # "printWriter":Ljava/io/PrintWriter;
    .end local v13    # "result":Ljava/io/Writer;
    .end local v14    # "types":[I
    .end local v15    # "uid":Landroid/os/BatteryStats$Uid;
    .end local v17    # "values":[D
    :pswitch_2
    const v3, 0x7f0c0b6e

    .line 176
    const v5, 0x7f0c0b6f

    .line 177
    const v6, 0x7f0c0b67

    .line 178
    const v7, 0x7f0c0b71

    .line 174
    filled-new-array {v3, v5, v6, v7}, [I

    move-result-object v14

    .line 180
    .restart local v14    # "types":[I
    const/4 v3, 0x4

    new-array v0, v3, [D

    move-object/from16 v17, v0

    .line 181
    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/exsettings/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-wide v6, v3, Lcom/android/internal/os/BatterySipper;->usageTimeMs:J

    long-to-double v6, v6

    const/4 v3, 0x0

    aput-wide v6, v17, v3

    .line 182
    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/exsettings/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-wide v6, v3, Lcom/android/internal/os/BatterySipper;->noCoveragePercent:D

    const/4 v3, 0x1

    aput-wide v6, v17, v3

    .line 183
    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/exsettings/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-wide v6, v3, Lcom/android/internal/os/BatterySipper;->mobileActive:J

    long-to-double v6, v6

    const/4 v3, 0x2

    aput-wide v6, v17, v3

    .line 184
    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/exsettings/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-wide v6, v3, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    const/4 v3, 0x3

    aput-wide v6, v17, v3

    .line 180
    .restart local v17    # "values":[D
    goto/16 :goto_0

    .line 190
    .end local v14    # "types":[I
    .end local v17    # "values":[D
    :pswitch_3
    const/16 v3, 0x9

    new-array v14, v3, [I

    .restart local v14    # "types":[I
    fill-array-data v14, :array_1

    .line 201
    const/16 v3, 0x9

    new-array v0, v3, [D

    move-object/from16 v17, v0

    .line 202
    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/exsettings/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-wide v6, v3, Lcom/android/internal/os/BatterySipper;->wifiRunningTimeMs:J

    long-to-double v6, v6

    const/4 v3, 0x0

    aput-wide v6, v17, v3

    .line 203
    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/exsettings/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-wide v6, v3, Lcom/android/internal/os/BatterySipper;->cpuTimeMs:J

    long-to-double v6, v6

    const/4 v3, 0x1

    aput-wide v6, v17, v3

    .line 204
    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/exsettings/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-wide v6, v3, Lcom/android/internal/os/BatterySipper;->cpuFgTimeMs:J

    long-to-double v6, v6

    const/4 v3, 0x2

    aput-wide v6, v17, v3

    .line 205
    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/exsettings/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-wide v6, v3, Lcom/android/internal/os/BatterySipper;->wakeLockTimeMs:J

    long-to-double v6, v6

    const/4 v3, 0x3

    aput-wide v6, v17, v3

    .line 206
    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/exsettings/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-wide v6, v3, Lcom/android/internal/os/BatterySipper;->mobileRxPackets:J

    long-to-double v6, v6

    const/4 v3, 0x4

    aput-wide v6, v17, v3

    .line 207
    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/exsettings/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-wide v6, v3, Lcom/android/internal/os/BatterySipper;->mobileTxPackets:J

    long-to-double v6, v6

    const/4 v3, 0x5

    aput-wide v6, v17, v3

    .line 208
    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/exsettings/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-wide v6, v3, Lcom/android/internal/os/BatterySipper;->wifiRxPackets:J

    long-to-double v6, v6

    const/4 v3, 0x6

    aput-wide v6, v17, v3

    .line 209
    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/exsettings/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-wide v6, v3, Lcom/android/internal/os/BatterySipper;->wifiTxPackets:J

    long-to-double v6, v6

    const/4 v3, 0x7

    aput-wide v6, v17, v3

    .line 210
    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/exsettings/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-wide v6, v3, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    const/16 v3, 0x8

    aput-wide v6, v17, v3

    .line 201
    .restart local v17    # "values":[D
    goto/16 :goto_0

    .line 215
    .end local v14    # "types":[I
    .end local v17    # "values":[D
    :pswitch_4
    const/16 v3, 0x9

    new-array v14, v3, [I

    .restart local v14    # "types":[I
    fill-array-data v14, :array_2

    .line 226
    const/16 v3, 0x9

    new-array v0, v3, [D

    move-object/from16 v17, v0

    .line 227
    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/exsettings/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-wide v6, v3, Lcom/android/internal/os/BatterySipper;->usageTimeMs:J

    long-to-double v6, v6

    const/4 v3, 0x0

    aput-wide v6, v17, v3

    .line 228
    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/exsettings/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-wide v6, v3, Lcom/android/internal/os/BatterySipper;->cpuTimeMs:J

    long-to-double v6, v6

    const/4 v3, 0x1

    aput-wide v6, v17, v3

    .line 229
    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/exsettings/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-wide v6, v3, Lcom/android/internal/os/BatterySipper;->cpuFgTimeMs:J

    long-to-double v6, v6

    const/4 v3, 0x2

    aput-wide v6, v17, v3

    .line 230
    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/exsettings/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-wide v6, v3, Lcom/android/internal/os/BatterySipper;->wakeLockTimeMs:J

    long-to-double v6, v6

    const/4 v3, 0x3

    aput-wide v6, v17, v3

    .line 231
    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/exsettings/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-wide v6, v3, Lcom/android/internal/os/BatterySipper;->mobileRxPackets:J

    long-to-double v6, v6

    const/4 v3, 0x4

    aput-wide v6, v17, v3

    .line 232
    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/exsettings/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-wide v6, v3, Lcom/android/internal/os/BatterySipper;->mobileTxPackets:J

    long-to-double v6, v6

    const/4 v3, 0x5

    aput-wide v6, v17, v3

    .line 233
    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/exsettings/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-wide v6, v3, Lcom/android/internal/os/BatterySipper;->wifiRxPackets:J

    long-to-double v6, v6

    const/4 v3, 0x6

    aput-wide v6, v17, v3

    .line 234
    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/exsettings/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-wide v6, v3, Lcom/android/internal/os/BatterySipper;->wifiTxPackets:J

    long-to-double v6, v6

    const/4 v3, 0x7

    aput-wide v6, v17, v3

    .line 235
    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/exsettings/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-wide v6, v3, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    const/16 v3, 0x8

    aput-wide v6, v17, v3

    .line 226
    .restart local v17    # "values":[D
    goto/16 :goto_0

    .line 241
    .end local v14    # "types":[I
    .end local v17    # "values":[D
    :pswitch_5
    const v3, 0x7f0c0b70

    .line 242
    const v5, 0x7f0c0b71

    .line 243
    const v6, 0x7f0c0b72

    .line 240
    filled-new-array {v3, v5, v6}, [I

    move-result-object v14

    .line 245
    .restart local v14    # "types":[I
    const/4 v3, 0x3

    new-array v0, v3, [D

    move-object/from16 v17, v0

    .line 246
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/os/BatteryStatsHelper;->getPowerProfile()Lcom/android/internal/os/PowerProfile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/os/PowerProfile;->getBatteryCapacity()D

    move-result-wide v6

    const/4 v3, 0x0

    aput-wide v6, v17, v3

    .line 247
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/os/BatteryStatsHelper;->getComputedPower()D

    move-result-wide v6

    const/4 v3, 0x1

    aput-wide v6, v17, v3

    .line 248
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/os/BatteryStatsHelper;->getMinDrainedPower()D

    move-result-wide v6

    const/4 v3, 0x2

    aput-wide v6, v17, v3

    .line 245
    .restart local v17    # "values":[D
    goto/16 :goto_0

    .line 254
    .end local v14    # "types":[I
    .end local v17    # "values":[D
    :pswitch_6
    const v3, 0x7f0c0b70

    .line 255
    const v5, 0x7f0c0b71

    .line 256
    const v6, 0x7f0c0b72

    .line 253
    filled-new-array {v3, v5, v6}, [I

    move-result-object v14

    .line 258
    .restart local v14    # "types":[I
    const/4 v3, 0x3

    new-array v0, v3, [D

    move-object/from16 v17, v0

    .line 259
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/os/BatteryStatsHelper;->getPowerProfile()Lcom/android/internal/os/PowerProfile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/os/PowerProfile;->getBatteryCapacity()D

    move-result-wide v6

    const/4 v3, 0x0

    aput-wide v6, v17, v3

    .line 260
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/os/BatteryStatsHelper;->getComputedPower()D

    move-result-wide v6

    const/4 v3, 0x1

    aput-wide v6, v17, v3

    .line 261
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/os/BatteryStatsHelper;->getMaxDrainedPower()D

    move-result-wide v6

    const/4 v3, 0x2

    aput-wide v6, v17, v3

    .line 258
    .restart local v17    # "values":[D
    goto/16 :goto_0

    .line 113
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_4
        :pswitch_2
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_1
        :pswitch_3
    .end packed-switch

    .line 118
    :array_0
    .array-data 4
        0x7f0c0b5f
        0x7f0c0b60
        0x7f0c0b61
        0x7f0c0b62
        0x7f0c0b63
        0x7f0c0b66
        0x7f0c0b65
        0x7f0c0b67
        0x7f0c0b69
        0x7f0c0b68
        0x7f0c0b6a
        0x7f0c0b6b
        0x7f0c0b6c
        0x7f0c0b6d
        0x7f0c0b71
    .end array-data

    .line 190
    :array_1
    .array-data 4
        0x7f0c0b63
        0x7f0c0b5f
        0x7f0c0b60
        0x7f0c0b61
        0x7f0c0b66
        0x7f0c0b65
        0x7f0c0b69
        0x7f0c0b68
        0x7f0c0b71
    .end array-data

    .line 215
    :array_2
    .array-data 4
        0x7f0c0b6e
        0x7f0c0b5f
        0x7f0c0b60
        0x7f0c0b61
        0x7f0c0b66
        0x7f0c0b65
        0x7f0c0b69
        0x7f0c0b68
        0x7f0c0b71
    .end array-data
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 364
    const/16 v0, 0x35

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 381
    invoke-super {p0, p1, p2, p3}, Lcom/android/exsettings/fuelgauge/PowerUsageBase;->onActivityResult(IILandroid/content/Intent;)V

    .line 382
    iget-object v0, p0, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->mHighPower:Landroid/preference/Preference;

    if-eqz v0, :cond_0

    .line 383
    iget-object v0, p0, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->mHighPower:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->mApp:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/android/exsettings/fuelgauge/HighPowerDetail;->getSummary(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 380
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 495
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->doAction(I)V

    .line 494
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 348
    invoke-super {p0, p1}, Lcom/android/exsettings/fuelgauge/PowerUsageBase;->onCreate(Landroid/os/Bundle;)V

    .line 349
    invoke-virtual {p0}, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->mPm:Landroid/content/pm/PackageManager;

    .line 350
    invoke-virtual {p0}, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 352
    const v0, 0x7f080041

    invoke-virtual {p0, v0}, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->addPreferencesFromResource(I)V

    .line 353
    const-string/jumbo v0, "details_parent"

    invoke-virtual {p0, v0}, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->mDetailsParent:Landroid/preference/PreferenceCategory;

    .line 354
    const-string/jumbo v0, "controls_parent"

    invoke-virtual {p0, v0}, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->mControlsParent:Landroid/preference/PreferenceCategory;

    .line 355
    const-string/jumbo v0, "messages_parent"

    invoke-virtual {p0, v0}, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->mMessagesParent:Landroid/preference/PreferenceCategory;

    .line 356
    const-string/jumbo v0, "packages_parent"

    invoke-virtual {p0, v0}, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->mPackagesParent:Landroid/preference/PreferenceCategory;

    .line 357
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->hideRefreshButton(Z)V

    .line 359
    invoke-direct {p0}, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->createDetails()V

    .line 347
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 369
    invoke-super {p0}, Lcom/android/exsettings/fuelgauge/PowerUsageBase;->onResume()V

    .line 370
    invoke-static {}, Landroid/os/Process;->getElapsedCpuTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->mStartTime:J

    .line 371
    invoke-direct {p0}, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->checkForceStop()V

    .line 372
    iget-object v0, p0, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->mHighPower:Landroid/preference/Preference;

    if-eqz v0, :cond_0

    .line 373
    iget-object v0, p0, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->mHighPower:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->mApp:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/android/exsettings/fuelgauge/HighPowerDetail;->getSummary(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 376
    :cond_0
    invoke-direct {p0}, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->setupHeader()V

    .line 368
    return-void
.end method
