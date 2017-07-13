.class public Lcom/android/exsettings/applications/AppOpsState;
.super Ljava/lang/Object;
.source "AppOpsState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exsettings/applications/AppOpsState$OpsTemplate;,
        Lcom/android/exsettings/applications/AppOpsState$AppEntry;,
        Lcom/android/exsettings/applications/AppOpsState$AppOpEntry;,
        Lcom/android/exsettings/applications/AppOpsState$1;
    }
.end annotation


# static fields
.field public static final ALL_TEMPLATES:[Lcom/android/exsettings/applications/AppOpsState$OpsTemplate;

.field public static final APP_OP_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/exsettings/applications/AppOpsState$AppOpEntry;",
            ">;"
        }
    .end annotation
.end field

.field public static final BOOTUP_TEMPLATE:Lcom/android/exsettings/applications/AppOpsState$OpsTemplate;

.field public static final DEVICE_TEMPLATE:Lcom/android/exsettings/applications/AppOpsState$OpsTemplate;

.field public static final LOCATION_TEMPLATE:Lcom/android/exsettings/applications/AppOpsState$OpsTemplate;

.field public static final MEDIA_TEMPLATE:Lcom/android/exsettings/applications/AppOpsState$OpsTemplate;

.field public static final MESSAGING_TEMPLATE:Lcom/android/exsettings/applications/AppOpsState$OpsTemplate;

.field public static final PERSONAL_TEMPLATE:Lcom/android/exsettings/applications/AppOpsState$OpsTemplate;

.field public static final SU_TEMPLATE:Lcom/android/exsettings/applications/AppOpsState$OpsTemplate;


# instance fields
.field final mAppOps:Landroid/app/AppOpsManager;

.field final mContext:Landroid/content/Context;

.field final mOpLabels:[Ljava/lang/CharSequence;

.field final mOpSummaries:[Ljava/lang/CharSequence;

.field final mPm:Landroid/content/pm/PackageManager;

.field private mPreferences:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x7

    const/16 v5, 0xe

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 104
    new-instance v0, Lcom/android/exsettings/applications/AppOpsState$OpsTemplate;

    .line 105
    new-array v1, v6, [I

    fill-array-data v1, :array_0

    .line 112
    new-array v2, v6, [Z

    fill-array-data v2, :array_1

    .line 104
    invoke-direct {v0, v1, v2}, Lcom/android/exsettings/applications/AppOpsState$OpsTemplate;-><init>([I[Z)V

    sput-object v0, Lcom/android/exsettings/applications/AppOpsState;->LOCATION_TEMPLATE:Lcom/android/exsettings/applications/AppOpsState$OpsTemplate;

    .line 121
    new-instance v0, Lcom/android/exsettings/applications/AppOpsState$OpsTemplate;

    .line 122
    new-array v1, v7, [I

    fill-array-data v1, :array_2

    .line 130
    new-array v2, v7, [Z

    fill-array-data v2, :array_3

    .line 121
    invoke-direct {v0, v1, v2}, Lcom/android/exsettings/applications/AppOpsState$OpsTemplate;-><init>([I[Z)V

    sput-object v0, Lcom/android/exsettings/applications/AppOpsState;->PERSONAL_TEMPLATE:Lcom/android/exsettings/applications/AppOpsState$OpsTemplate;

    .line 140
    new-instance v0, Lcom/android/exsettings/applications/AppOpsState$OpsTemplate;

    .line 141
    const/16 v1, 0x9

    new-array v1, v1, [I

    fill-array-data v1, :array_4

    .line 150
    const/16 v2, 0x9

    new-array v2, v2, [Z

    fill-array-data v2, :array_5

    .line 140
    invoke-direct {v0, v1, v2}, Lcom/android/exsettings/applications/AppOpsState$OpsTemplate;-><init>([I[Z)V

    sput-object v0, Lcom/android/exsettings/applications/AppOpsState;->MESSAGING_TEMPLATE:Lcom/android/exsettings/applications/AppOpsState$OpsTemplate;

    .line 161
    new-instance v0, Lcom/android/exsettings/applications/AppOpsState$OpsTemplate;

    .line 162
    new-array v1, v5, [I

    fill-array-data v1, :array_6

    .line 176
    new-array v2, v5, [Z

    fill-array-data v2, :array_7

    .line 161
    invoke-direct {v0, v1, v2}, Lcom/android/exsettings/applications/AppOpsState$OpsTemplate;-><init>([I[Z)V

    sput-object v0, Lcom/android/exsettings/applications/AppOpsState;->MEDIA_TEMPLATE:Lcom/android/exsettings/applications/AppOpsState$OpsTemplate;

    .line 192
    new-instance v0, Lcom/android/exsettings/applications/AppOpsState$OpsTemplate;

    .line 193
    new-array v1, v5, [I

    fill-array-data v1, :array_8

    .line 207
    new-array v2, v5, [Z

    fill-array-data v2, :array_9

    .line 192
    invoke-direct {v0, v1, v2}, Lcom/android/exsettings/applications/AppOpsState$OpsTemplate;-><init>([I[Z)V

    sput-object v0, Lcom/android/exsettings/applications/AppOpsState;->DEVICE_TEMPLATE:Lcom/android/exsettings/applications/AppOpsState$OpsTemplate;

    .line 223
    new-instance v0, Lcom/android/exsettings/applications/AppOpsState$OpsTemplate;

    .line 224
    new-array v1, v4, [I

    const/16 v2, 0x41

    aput v2, v1, v3

    .line 225
    new-array v2, v4, [Z

    aput-boolean v4, v2, v3

    .line 223
    invoke-direct {v0, v1, v2}, Lcom/android/exsettings/applications/AppOpsState$OpsTemplate;-><init>([I[Z)V

    sput-object v0, Lcom/android/exsettings/applications/AppOpsState;->BOOTUP_TEMPLATE:Lcom/android/exsettings/applications/AppOpsState$OpsTemplate;

    .line 228
    new-instance v0, Lcom/android/exsettings/applications/AppOpsState$OpsTemplate;

    .line 229
    new-array v1, v4, [I

    const/16 v2, 0x44

    aput v2, v1, v3

    .line 230
    new-array v2, v4, [Z

    aput-boolean v3, v2, v3

    .line 228
    invoke-direct {v0, v1, v2}, Lcom/android/exsettings/applications/AppOpsState$OpsTemplate;-><init>([I[Z)V

    sput-object v0, Lcom/android/exsettings/applications/AppOpsState;->SU_TEMPLATE:Lcom/android/exsettings/applications/AppOpsState$OpsTemplate;

    .line 233
    new-array v0, v6, [Lcom/android/exsettings/applications/AppOpsState$OpsTemplate;

    .line 234
    sget-object v1, Lcom/android/exsettings/applications/AppOpsState;->LOCATION_TEMPLATE:Lcom/android/exsettings/applications/AppOpsState$OpsTemplate;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/exsettings/applications/AppOpsState;->PERSONAL_TEMPLATE:Lcom/android/exsettings/applications/AppOpsState$OpsTemplate;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/exsettings/applications/AppOpsState;->MESSAGING_TEMPLATE:Lcom/android/exsettings/applications/AppOpsState$OpsTemplate;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 235
    sget-object v1, Lcom/android/exsettings/applications/AppOpsState;->MEDIA_TEMPLATE:Lcom/android/exsettings/applications/AppOpsState$OpsTemplate;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/exsettings/applications/AppOpsState;->DEVICE_TEMPLATE:Lcom/android/exsettings/applications/AppOpsState$OpsTemplate;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/exsettings/applications/AppOpsState;->BOOTUP_TEMPLATE:Lcom/android/exsettings/applications/AppOpsState$OpsTemplate;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/exsettings/applications/AppOpsState;->SU_TEMPLATE:Lcom/android/exsettings/applications/AppOpsState$OpsTemplate;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 233
    sput-object v0, Lcom/android/exsettings/applications/AppOpsState;->ALL_TEMPLATES:[Lcom/android/exsettings/applications/AppOpsState$OpsTemplate;

    .line 476
    new-instance v0, Lcom/android/exsettings/applications/AppOpsState$1;

    invoke-direct {v0}, Lcom/android/exsettings/applications/AppOpsState$1;-><init>()V

    sput-object v0, Lcom/android/exsettings/applications/AppOpsState;->APP_OP_COMPARATOR:Ljava/util/Comparator;

    .line 45
    return-void

    .line 105
    nop

    :array_0
    .array-data 4
        0x0
        0x1
        0x2
        0xa
        0xc
        0x29
        0x2a
    .end array-data

    .line 112
    :array_1
    .array-data 1
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    .line 122
    :array_2
    .array-data 4
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0x1d
        0x1e
    .end array-data

    .line 130
    :array_3
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
    .end array-data

    .line 141
    :array_4
    .array-data 4
        0xe
        0x10
        0x11
        0x12
        0x13
        0xf
        0x14
        0x15
        0x16
    .end array-data

    .line 150
    :array_5
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data

    .line 162
    nop

    :array_6
    .array-data 4
        0x3
        0x1a
        0x1b
        0x1c
        0x1f
        0x20
        0x21
        0x22
        0x23
        0x24
        0x25
        0x26
        0x27
        0x2c
    .end array-data

    .line 176
    :array_7
    .array-data 1
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    .line 193
    nop

    :array_8
    .array-data 4
        0xb
        0x19
        0xd
        0x17
        0x18
        0x28
        0x2e
        0x2f
        0x31
        0x32
        0x3f
        0x40
        0x42
        0x43
    .end array-data

    .line 207
    :array_9
    .array-data 1
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/android/exsettings/applications/AppOpsState;->mContext:Landroid/content/Context;

    .line 61
    const-string/jumbo v0, "appops"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/exsettings/applications/AppOpsState;->mAppOps:Landroid/app/AppOpsManager;

    .line 62
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/applications/AppOpsState;->mPm:Landroid/content/pm/PackageManager;

    .line 63
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0086

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/applications/AppOpsState;->mOpSummaries:[Ljava/lang/CharSequence;

    .line 64
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0087

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/applications/AppOpsState;->mOpLabels:[Ljava/lang/CharSequence;

    .line 65
    const-string/jumbo v0, "appops_manager"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/applications/AppOpsState;->mPreferences:Landroid/content/SharedPreferences;

    .line 59
    return-void
.end method

.method private addOp(Ljava/util/List;Landroid/app/AppOpsManager$PackageOps;Lcom/android/exsettings/applications/AppOpsState$AppEntry;Landroid/app/AppOpsManager$OpEntry;ZI)V
    .locals 8
    .param p2, "pkgOps"    # Landroid/app/AppOpsManager$PackageOps;
    .param p3, "appEntry"    # Lcom/android/exsettings/applications/AppOpsState$AppEntry;
    .param p4, "opEntry"    # Landroid/app/AppOpsManager$OpEntry;
    .param p5, "allowMerge"    # Z
    .param p6, "switchOrder"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/exsettings/applications/AppOpsState$AppOpEntry;",
            ">;",
            "Landroid/app/AppOpsManager$PackageOps;",
            "Lcom/android/exsettings/applications/AppOpsState$AppEntry;",
            "Landroid/app/AppOpsManager$OpEntry;",
            "ZI)V"
        }
    .end annotation

    .prologue
    .local p1, "entries":Ljava/util/List;, "Ljava/util/List<Lcom/android/exsettings/applications/AppOpsState$AppOpEntry;>;"
    const-wide/16 v6, 0x0

    .line 498
    if-eqz p5, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 499
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/exsettings/applications/AppOpsState$AppOpEntry;

    .line 500
    .local v2, "last":Lcom/android/exsettings/applications/AppOpsState$AppOpEntry;
    invoke-virtual {v2}, Lcom/android/exsettings/applications/AppOpsState$AppOpEntry;->getAppEntry()Lcom/android/exsettings/applications/AppOpsState$AppEntry;

    move-result-object v4

    if-ne v4, p3, :cond_2

    .line 501
    invoke-virtual {v2}, Lcom/android/exsettings/applications/AppOpsState$AppOpEntry;->getTime()J

    move-result-wide v4

    cmp-long v4, v4, v6

    if-eqz v4, :cond_0

    const/4 v3, 0x1

    .line 502
    .local v3, "lastExe":Z
    :goto_0
    invoke-virtual {p4}, Landroid/app/AppOpsManager$OpEntry;->getTime()J

    move-result-wide v4

    cmp-long v4, v4, v6

    if-eqz v4, :cond_1

    const/4 v1, 0x1

    .line 503
    .local v1, "entryExe":Z
    :goto_1
    if-ne v3, v1, :cond_2

    .line 506
    invoke-virtual {v2, p4}, Lcom/android/exsettings/applications/AppOpsState$AppOpEntry;->addOp(Landroid/app/AppOpsManager$OpEntry;)V

    .line 507
    return-void

    .line 501
    .end local v1    # "entryExe":Z
    .end local v3    # "lastExe":Z
    :cond_0
    const/4 v3, 0x0

    .restart local v3    # "lastExe":Z
    goto :goto_0

    .line 502
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "entryExe":Z
    goto :goto_1

    .line 511
    .end local v1    # "entryExe":Z
    .end local v2    # "last":Lcom/android/exsettings/applications/AppOpsState$AppOpEntry;
    .end local v3    # "lastExe":Z
    :cond_2
    invoke-virtual {p4}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v4

    invoke-virtual {p3, v4}, Lcom/android/exsettings/applications/AppOpsState$AppEntry;->getOpSwitch(I)Lcom/android/exsettings/applications/AppOpsState$AppOpEntry;

    move-result-object v0

    .line 512
    .local v0, "entry":Lcom/android/exsettings/applications/AppOpsState$AppOpEntry;
    if-eqz v0, :cond_3

    .line 513
    invoke-virtual {v0, p4}, Lcom/android/exsettings/applications/AppOpsState$AppOpEntry;->addOp(Landroid/app/AppOpsManager$OpEntry;)V

    .line 514
    return-void

    .line 516
    :cond_3
    new-instance v0, Lcom/android/exsettings/applications/AppOpsState$AppOpEntry;

    .end local v0    # "entry":Lcom/android/exsettings/applications/AppOpsState$AppOpEntry;
    invoke-direct {v0, p2, p4, p3, p6}, Lcom/android/exsettings/applications/AppOpsState$AppOpEntry;-><init>(Landroid/app/AppOpsManager$PackageOps;Landroid/app/AppOpsManager$OpEntry;Lcom/android/exsettings/applications/AppOpsState$AppEntry;I)V

    .line 519
    .restart local v0    # "entry":Lcom/android/exsettings/applications/AppOpsState$AppOpEntry;
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 497
    return-void
.end method

.method private getAppEntry(Landroid/content/Context;Ljava/util/HashMap;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Z)Lcom/android/exsettings/applications/AppOpsState$AppEntry;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "appInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p5, "applyFilters"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/exsettings/applications/AppOpsState$AppEntry;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/content/pm/ApplicationInfo;",
            "Z)",
            "Lcom/android/exsettings/applications/AppOpsState$AppEntry;"
        }
    .end annotation

    .prologue
    .local p2, "appEntries":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/exsettings/applications/AppOpsState$AppEntry;>;"
    const/4 v5, 0x0

    .line 529
    if-nez p4, :cond_0

    .line 531
    :try_start_0
    iget-object v2, p0, Lcom/android/exsettings/applications/AppOpsState;->mPm:Landroid/content/pm/PackageManager;

    .line 532
    const/16 v3, 0x2200

    .line 531
    invoke-virtual {v2, p3, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p4

    .line 540
    :cond_0
    if-eqz p5, :cond_2

    .line 542
    invoke-direct {p0}, Lcom/android/exsettings/applications/AppOpsState;->shouldShowUserApps()Z

    move-result v2

    if-nez v2, :cond_1

    .line 543
    iget v2, p4, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_1

    .line 544
    return-object v5

    .line 534
    :catch_0
    move-exception v1

    .line 535
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v2, "AppOpsState"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unable to find info for package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    return-object v5

    .line 547
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1
    invoke-direct {p0}, Lcom/android/exsettings/applications/AppOpsState;->shouldShowSystemApps()Z

    move-result v2

    if-nez v2, :cond_2

    .line 548
    iget v2, p4, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2

    .line 549
    return-object v5

    .line 553
    :cond_2
    invoke-virtual {p2, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/exsettings/applications/AppOpsState$AppEntry;

    .line 554
    .local v0, "appEntry":Lcom/android/exsettings/applications/AppOpsState$AppEntry;
    if-nez v0, :cond_3

    .line 555
    new-instance v0, Lcom/android/exsettings/applications/AppOpsState$AppEntry;

    .end local v0    # "appEntry":Lcom/android/exsettings/applications/AppOpsState$AppEntry;
    invoke-direct {v0, p0, p4}, Lcom/android/exsettings/applications/AppOpsState$AppEntry;-><init>(Lcom/android/exsettings/applications/AppOpsState;Landroid/content/pm/ApplicationInfo;)V

    .line 556
    .restart local v0    # "appEntry":Lcom/android/exsettings/applications/AppOpsState$AppEntry;
    invoke-virtual {v0, p1}, Lcom/android/exsettings/applications/AppOpsState$AppEntry;->loadLabel(Landroid/content/Context;)V

    .line 557
    invoke-virtual {p2, p3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 559
    :cond_3
    return-object v0
.end method

.method private shouldShowSystemApps()Z
    .locals 3

    .prologue
    .line 567
    iget-object v0, p0, Lcom/android/exsettings/applications/AppOpsState;->mPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "show_system_apps"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private shouldShowUserApps()Z
    .locals 3

    .prologue
    .line 563
    iget-object v0, p0, Lcom/android/exsettings/applications/AppOpsState;->mPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "show_user_apps"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public buildState(Lcom/android/exsettings/applications/AppOpsState$OpsTemplate;)Ljava/util/List;
    .locals 2
    .param p1, "tpl"    # Lcom/android/exsettings/applications/AppOpsState$OpsTemplate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/exsettings/applications/AppOpsState$OpsTemplate;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/exsettings/applications/AppOpsState$AppOpEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 523
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/exsettings/applications/AppOpsState;->buildState(Lcom/android/exsettings/applications/AppOpsState$OpsTemplate;ILjava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public buildState(Lcom/android/exsettings/applications/AppOpsState$OpsTemplate;ILjava/lang/String;)Ljava/util/List;
    .locals 39
    .param p1, "tpl"    # Lcom/android/exsettings/applications/AppOpsState$OpsTemplate;
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/exsettings/applications/AppOpsState$OpsTemplate;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/exsettings/applications/AppOpsState$AppOpEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 571
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/exsettings/applications/AppOpsState;->mContext:Landroid/content/Context;

    .line 573
    .local v4, "context":Landroid/content/Context;
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 574
    .local v5, "appEntries":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/exsettings/applications/AppOpsState$AppEntry;>;"
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 576
    .local v10, "entries":Ljava/util/List;, "Ljava/util/List<Lcom/android/exsettings/applications/AppOpsState$AppOpEntry;>;"
    new-instance v35, Ljava/util/ArrayList;

    invoke-direct/range {v35 .. v35}, Ljava/util/ArrayList;-><init>()V

    .line 577
    .local v35, "perms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v34, Ljava/util/ArrayList;

    invoke-direct/range {v34 .. v34}, Ljava/util/ArrayList;-><init>()V

    .line 578
    .local v34, "permOps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/16 v3, 0x45

    new-array v0, v3, [I

    move-object/from16 v32, v0

    .line 579
    .local v32, "opToOrder":[I
    const/16 v29, 0x0

    .local v29, "i":I
    :goto_0
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/exsettings/applications/AppOpsState$OpsTemplate;->ops:[I

    array-length v3, v3

    move/from16 v0, v29

    if-ge v0, v3, :cond_2

    .line 580
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/exsettings/applications/AppOpsState$OpsTemplate;->showPerms:[Z

    aget-boolean v3, v3, v29

    if-eqz v3, :cond_0

    .line 581
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/exsettings/applications/AppOpsState$OpsTemplate;->ops:[I

    aget v3, v3, v29

    invoke-static {v3}, Landroid/app/AppOpsManager;->opToPermission(I)Ljava/lang/String;

    move-result-object v33

    .line 582
    .local v33, "perm":Ljava/lang/String;
    if-eqz v33, :cond_0

    move-object/from16 v0, v35

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 579
    .end local v33    # "perm":Ljava/lang/String;
    :cond_0
    :goto_1
    add-int/lit8 v29, v29, 0x1

    goto :goto_0

    .line 583
    .restart local v33    # "perm":Ljava/lang/String;
    :cond_1
    move-object/from16 v0, v35

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 584
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/exsettings/applications/AppOpsState$OpsTemplate;->ops:[I

    aget v3, v3, v29

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v34

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 585
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/exsettings/applications/AppOpsState$OpsTemplate;->ops:[I

    aget v3, v3, v29

    aput v29, v32, v3

    goto :goto_1

    .line 591
    .end local v33    # "perm":Ljava/lang/String;
    :cond_2
    if-nez p3, :cond_4

    const/4 v8, 0x1

    .line 594
    .local v8, "applyFilters":Z
    :goto_2
    if-eqz p3, :cond_5

    .line 595
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/exsettings/applications/AppOpsState;->mAppOps:Landroid/app/AppOpsManager;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/exsettings/applications/AppOpsState$OpsTemplate;->ops:[I

    move/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v3, v0, v1, v6}, Landroid/app/AppOpsManager;->getOpsForPackage(ILjava/lang/String;[I)Ljava/util/List;

    move-result-object v38

    .line 600
    .local v38, "pkgs":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    :goto_3
    if-eqz v38, :cond_9

    .line 601
    const/16 v29, 0x0

    :goto_4
    invoke-interface/range {v38 .. v38}, Ljava/util/List;->size()I

    move-result v3

    move/from16 v0, v29

    if-ge v0, v3, :cond_9

    .line 602
    move-object/from16 v0, v38

    move/from16 v1, v29

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/AppOpsManager$PackageOps;

    .line 603
    .local v11, "pkgOps":Landroid/app/AppOpsManager$PackageOps;
    invoke-virtual {v11}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/exsettings/applications/AppOpsState;->getAppEntry(Landroid/content/Context;Ljava/util/HashMap;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Z)Lcom/android/exsettings/applications/AppOpsState$AppEntry;

    move-result-object v12

    .line 605
    .local v12, "appEntry":Lcom/android/exsettings/applications/AppOpsState$AppEntry;
    if-nez v12, :cond_6

    .line 601
    :cond_3
    add-int/lit8 v29, v29, 0x1

    goto :goto_4

    .line 591
    .end local v8    # "applyFilters":Z
    .end local v11    # "pkgOps":Landroid/app/AppOpsManager$PackageOps;
    .end local v12    # "appEntry":Lcom/android/exsettings/applications/AppOpsState$AppEntry;
    .end local v38    # "pkgs":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    :cond_4
    const/4 v8, 0x0

    .restart local v8    # "applyFilters":Z
    goto :goto_2

    .line 597
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/exsettings/applications/AppOpsState;->mAppOps:Landroid/app/AppOpsManager;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/exsettings/applications/AppOpsState$OpsTemplate;->ops:[I

    invoke-virtual {v3, v6}, Landroid/app/AppOpsManager;->getPackagesForOps([I)Ljava/util/List;

    move-result-object v38

    .restart local v38    # "pkgs":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    goto :goto_3

    .line 608
    .restart local v11    # "pkgOps":Landroid/app/AppOpsManager$PackageOps;
    .restart local v12    # "appEntry":Lcom/android/exsettings/applications/AppOpsState$AppEntry;
    :cond_6
    const/16 v30, 0x0

    .local v30, "j":I
    :goto_5
    invoke-virtual {v11}, Landroid/app/AppOpsManager$PackageOps;->getOps()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    move/from16 v0, v30

    if-ge v0, v3, :cond_3

    .line 609
    invoke-virtual {v11}, Landroid/app/AppOpsManager$PackageOps;->getOps()Ljava/util/List;

    move-result-object v3

    move/from16 v0, v30

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/app/AppOpsManager$OpEntry;

    .line 610
    .local v13, "opEntry":Landroid/app/AppOpsManager$OpEntry;
    if-nez p3, :cond_7

    const/4 v14, 0x1

    .line 611
    :goto_6
    if-nez p3, :cond_8

    const/4 v15, 0x0

    :goto_7
    move-object/from16 v9, p0

    .line 610
    invoke-direct/range {v9 .. v15}, Lcom/android/exsettings/applications/AppOpsState;->addOp(Ljava/util/List;Landroid/app/AppOpsManager$PackageOps;Lcom/android/exsettings/applications/AppOpsState$AppEntry;Landroid/app/AppOpsManager$OpEntry;ZI)V

    .line 608
    add-int/lit8 v30, v30, 0x1

    goto :goto_5

    .line 610
    :cond_7
    const/4 v14, 0x0

    goto :goto_6

    .line 611
    :cond_8
    invoke-virtual {v13}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v3

    aget v15, v32, v3

    goto :goto_7

    .line 617
    .end local v11    # "pkgOps":Landroid/app/AppOpsManager$PackageOps;
    .end local v12    # "appEntry":Lcom/android/exsettings/applications/AppOpsState$AppEntry;
    .end local v13    # "opEntry":Landroid/app/AppOpsManager$OpEntry;
    .end local v30    # "j":I
    :cond_9
    if-eqz p3, :cond_b

    .line 618
    new-instance v26, Ljava/util/ArrayList;

    invoke-direct/range {v26 .. v26}, Ljava/util/ArrayList;-><init>()V

    .line 620
    .local v26, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/exsettings/applications/AppOpsState;->mPm:Landroid/content/pm/PackageManager;

    const/16 v6, 0x1000

    move-object/from16 v0, p3

    invoke-virtual {v3, v0, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v37

    .line 621
    .local v37, "pi":Landroid/content/pm/PackageInfo;
    move-object/from16 v0, v26

    move-object/from16 v1, v37

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 629
    .end local v37    # "pi":Landroid/content/pm/PackageInfo;
    :goto_8
    const/16 v29, 0x0

    :goto_9
    invoke-interface/range {v26 .. v26}, Ljava/util/List;->size()I

    move-result v3

    move/from16 v0, v29

    if-ge v0, v3, :cond_14

    .line 630
    move-object/from16 v0, v26

    move/from16 v1, v29

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/content/pm/PackageInfo;

    .line 631
    .local v25, "appInfo":Landroid/content/pm/PackageInfo;
    move-object/from16 v0, v25

    iget-object v6, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 632
    move-object/from16 v0, v25

    iget-object v7, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v3, p0

    .line 631
    invoke-direct/range {v3 .. v8}, Lcom/android/exsettings/applications/AppOpsState;->getAppEntry(Landroid/content/Context;Ljava/util/HashMap;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Z)Lcom/android/exsettings/applications/AppOpsState$AppEntry;

    move-result-object v12

    .line 633
    .restart local v12    # "appEntry":Lcom/android/exsettings/applications/AppOpsState$AppEntry;
    if-nez v12, :cond_c

    .line 629
    :cond_a
    add-int/lit8 v29, v29, 0x1

    goto :goto_9

    .line 625
    .end local v12    # "appEntry":Lcom/android/exsettings/applications/AppOpsState$AppEntry;
    .end local v25    # "appInfo":Landroid/content/pm/PackageInfo;
    .end local v26    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    :cond_b
    invoke-virtual/range {v35 .. v35}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v0, v3, [Ljava/lang/String;

    move-object/from16 v36, v0

    .line 626
    .local v36, "permsArray":[Ljava/lang/String;
    invoke-virtual/range {v35 .. v36}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 627
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/exsettings/applications/AppOpsState;->mPm:Landroid/content/pm/PackageManager;

    const/4 v6, 0x0

    move-object/from16 v0, v36

    invoke-virtual {v3, v0, v6}, Landroid/content/pm/PackageManager;->getPackagesHoldingPermissions([Ljava/lang/String;I)Ljava/util/List;

    move-result-object v26

    .restart local v26    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    goto :goto_8

    .line 636
    .end local v36    # "permsArray":[Ljava/lang/String;
    .restart local v12    # "appEntry":Lcom/android/exsettings/applications/AppOpsState$AppEntry;
    .restart local v25    # "appInfo":Landroid/content/pm/PackageInfo;
    :cond_c
    const/16 v27, 0x0

    .line 637
    .local v27, "dummyOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$OpEntry;>;"
    const/4 v11, 0x0

    .line 638
    .local v11, "pkgOps":Landroid/app/AppOpsManager$PackageOps;
    move-object/from16 v0, v25

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-eqz v3, :cond_a

    .line 639
    const/16 v30, 0x0

    .end local v11    # "pkgOps":Landroid/app/AppOpsManager$PackageOps;
    .end local v27    # "dummyOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$OpEntry;>;"
    .restart local v30    # "j":I
    :goto_a
    move-object/from16 v0, v25

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    array-length v3, v3

    move/from16 v0, v30

    if-ge v0, v3, :cond_a

    .line 640
    move-object/from16 v0, v25

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->requestedPermissionsFlags:[I

    if-eqz v3, :cond_e

    .line 641
    move-object/from16 v0, v25

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->requestedPermissionsFlags:[I

    aget v3, v3, v30

    and-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_e

    .line 639
    :cond_d
    add-int/lit8 v30, v30, 0x1

    goto :goto_a

    .line 650
    :cond_e
    const/16 v31, 0x0

    .local v31, "k":I
    :goto_b
    invoke-virtual/range {v35 .. v35}, Ljava/util/ArrayList;->size()I

    move-result v3

    move/from16 v0, v31

    if-ge v0, v3, :cond_d

    .line 651
    move-object/from16 v0, v35

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object/from16 v0, v25

    iget-object v6, v0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    aget-object v6, v6, v30

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_10

    .line 650
    :cond_f
    :goto_c
    add-int/lit8 v31, v31, 0x1

    goto :goto_b

    .line 656
    :cond_10
    move-object/from16 v0, v34

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v12, v3}, Lcom/android/exsettings/applications/AppOpsState$AppEntry;->hasOp(I)Z

    move-result v3

    if-nez v3, :cond_f

    .line 659
    if-nez v27, :cond_11

    .line 660
    new-instance v27, Ljava/util/ArrayList;

    invoke-direct/range {v27 .. v27}, Ljava/util/ArrayList;-><init>()V

    .line 661
    .local v27, "dummyOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$OpEntry;>;"
    new-instance v11, Landroid/app/AppOpsManager$PackageOps;

    .line 662
    move-object/from16 v0, v25

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v25

    iget-object v6, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 661
    move-object/from16 v0, v27

    invoke-direct {v11, v3, v6, v0}, Landroid/app/AppOpsManager$PackageOps;-><init>(Ljava/lang/String;ILjava/util/List;)V

    .line 665
    .end local v27    # "dummyOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$OpEntry;>;"
    :cond_11
    new-instance v13, Landroid/app/AppOpsManager$OpEntry;

    .line 666
    move-object/from16 v0, v34

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v14

    const-wide/16 v16, 0x0

    const-wide/16 v18, 0x0

    const/4 v15, 0x0

    const/16 v20, 0x0

    const/16 v21, -0x1

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    .line 665
    invoke-direct/range {v13 .. v24}, Landroid/app/AppOpsManager$OpEntry;-><init>(IIJJIILjava/lang/String;II)V

    .line 667
    .restart local v13    # "opEntry":Landroid/app/AppOpsManager$OpEntry;
    move-object/from16 v0, v27

    invoke-interface {v0, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 668
    if-nez p3, :cond_12

    const/4 v14, 0x1

    .line 669
    :goto_d
    if-nez p3, :cond_13

    const/4 v15, 0x0

    :goto_e
    move-object/from16 v9, p0

    .line 668
    invoke-direct/range {v9 .. v15}, Lcom/android/exsettings/applications/AppOpsState;->addOp(Ljava/util/List;Landroid/app/AppOpsManager$PackageOps;Lcom/android/exsettings/applications/AppOpsState$AppEntry;Landroid/app/AppOpsManager$OpEntry;ZI)V

    goto :goto_c

    :cond_12
    const/4 v14, 0x0

    goto :goto_d

    .line 669
    :cond_13
    invoke-virtual {v13}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v3

    aget v15, v32, v3

    goto :goto_e

    .line 676
    .end local v12    # "appEntry":Lcom/android/exsettings/applications/AppOpsState$AppEntry;
    .end local v13    # "opEntry":Landroid/app/AppOpsManager$OpEntry;
    .end local v25    # "appInfo":Landroid/content/pm/PackageInfo;
    .end local v30    # "j":I
    .end local v31    # "k":I
    :cond_14
    sget-object v3, Lcom/android/exsettings/applications/AppOpsState;->APP_OP_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v10, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 679
    return-object v10

    .line 622
    :catch_0
    move-exception v28

    .local v28, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto/16 :goto_8
.end method
