.class public Lcom/android/exsettings/notification/ZenModeAutomationSettings;
.super Lcom/android/exsettings/notification/ZenModeSettingsBase;
.source "ZenModeAutomationSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exsettings/notification/ZenModeAutomationSettings$ZenRuleInfo;,
        Lcom/android/exsettings/notification/ZenModeAutomationSettings$1;,
        Lcom/android/exsettings/notification/ZenModeAutomationSettings$2;
    }
.end annotation


# static fields
.field static final CONFIG:Lcom/android/exsettings/notification/ManagedServiceSettings$Config;

.field private static final RULE_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/exsettings/notification/ZenModeAutomationSettings$ZenRuleInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mCalendar:Ljava/util/Calendar;

.field private final mDayFormat:Ljava/text/SimpleDateFormat;

.field private mServiceListing:Lcom/android/exsettings/notification/ServiceListing;

.field private final mServiceListingCallback:Lcom/android/exsettings/notification/ServiceListing$Callback;


# direct methods
.method static synthetic -get0(Lcom/android/exsettings/notification/ZenModeAutomationSettings;)Lcom/android/exsettings/notification/ServiceListing;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/notification/ZenModeAutomationSettings;->mServiceListing:Lcom/android/exsettings/notification/ServiceListing;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/exsettings/notification/ZenModeAutomationSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/exsettings/notification/ZenModeAutomationSettings;->showAddRuleDialog()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/exsettings/notification/ZenModeAutomationSettings;Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "settingsAction"    # Ljava/lang/String;
    .param p2, "configurationActivity"    # Landroid/content/ComponentName;
    .param p3, "ruleId"    # Ljava/lang/String;
    .param p4, "ruleName"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/exsettings/notification/ZenModeAutomationSettings;->showRule(Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    invoke-static {}, Lcom/android/exsettings/notification/ZenModeAutomationSettings;->getConditionProviderConfig()Lcom/android/exsettings/notification/ManagedServiceSettings$Config;

    move-result-object v0

    sput-object v0, Lcom/android/exsettings/notification/ZenModeAutomationSettings;->CONFIG:Lcom/android/exsettings/notification/ManagedServiceSettings$Config;

    .line 317
    new-instance v0, Lcom/android/exsettings/notification/ZenModeAutomationSettings$2;

    invoke-direct {v0}, Lcom/android/exsettings/notification/ZenModeAutomationSettings$2;-><init>()V

    sput-object v0, Lcom/android/exsettings/notification/ZenModeAutomationSettings;->RULE_COMPARATOR:Ljava/util/Comparator;

    .line 53
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/exsettings/notification/ZenModeSettingsBase;-><init>()V

    .line 58
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "EEE"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/exsettings/notification/ZenModeAutomationSettings;->mDayFormat:Ljava/text/SimpleDateFormat;

    .line 59
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/notification/ZenModeAutomationSettings;->mCalendar:Ljava/util/Calendar;

    .line 301
    new-instance v0, Lcom/android/exsettings/notification/ZenModeAutomationSettings$1;

    invoke-direct {v0, p0}, Lcom/android/exsettings/notification/ZenModeAutomationSettings$1;-><init>(Lcom/android/exsettings/notification/ZenModeAutomationSettings;)V

    iput-object v0, p0, Lcom/android/exsettings/notification/ZenModeAutomationSettings;->mServiceListingCallback:Lcom/android/exsettings/notification/ServiceListing$Callback;

    .line 53
    return-void
.end method

.method private computeCalendarName(Landroid/service/notification/ZenModeConfig$EventInfo;)Ljava/lang/String;
    .locals 1
    .param p1, "event"    # Landroid/service/notification/ZenModeConfig$EventInfo;

    .prologue
    .line 217
    iget-object v0, p1, Landroid/service/notification/ZenModeConfig$EventInfo;->calendar:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/service/notification/ZenModeConfig$EventInfo;->calendar:Ljava/lang/String;

    :goto_0
    return-object v0

    .line 218
    :cond_0
    const v0, 0x7f0c0ebd

    invoke-virtual {p0, v0}, Lcom/android/exsettings/notification/ZenModeAutomationSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private computeContiguousDayRanges([I)Ljava/lang/String;
    .locals 14
    .param p1, "days"    # [I

    .prologue
    const/4 v13, 0x2

    const/4 v12, 0x1

    const/4 v9, 0x0

    .line 241
    new-instance v2, Ljava/util/TreeSet;

    invoke-direct {v2}, Ljava/util/TreeSet;-><init>()V

    .line 242
    .local v2, "daySet":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-eqz p1, :cond_0

    array-length v8, p1

    if-ge v4, v8, :cond_0

    .line 243
    aget v8, p1, v4

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 242
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 245
    :cond_0
    invoke-virtual {v2}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 246
    const v8, 0x7f0c0ec7

    invoke-virtual {p0, v8}, Lcom/android/exsettings/notification/ZenModeAutomationSettings;->getString(I)Ljava/lang/String;

    move-result-object v8

    return-object v8

    .line 248
    :cond_1
    sget-object v8, Landroid/service/notification/ZenModeConfig;->ALL_DAYS:[I

    array-length v0, v8

    .line 249
    .local v0, "N":I
    invoke-virtual {v2}, Ljava/util/TreeSet;->size()I

    move-result v8

    if-ne v8, v0, :cond_2

    .line 250
    const v8, 0x7f0c0ec8

    invoke-virtual {p0, v8}, Lcom/android/exsettings/notification/ZenModeAutomationSettings;->getString(I)Ljava/lang/String;

    move-result-object v8

    return-object v8

    .line 252
    :cond_2
    const/4 v5, 0x0

    .line 253
    .local v5, "rt":Ljava/lang/String;
    const/4 v4, 0x0

    .end local v5    # "rt":Ljava/lang/String;
    :goto_1
    if-ge v4, v0, :cond_9

    .line 254
    sget-object v8, Landroid/service/notification/ZenModeConfig;->ALL_DAYS:[I

    aget v6, v8, v4

    .line 255
    .local v6, "startDay":I
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/util/TreeSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    .line 256
    .local v1, "active":Z
    if-nez v1, :cond_3

    .line 253
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 257
    :cond_3
    const/4 v3, 0x0

    .line 258
    .local v3, "end":I
    :goto_3
    sget-object v8, Landroid/service/notification/ZenModeConfig;->ALL_DAYS:[I

    add-int v10, v4, v3

    add-int/lit8 v10, v10, 0x1

    rem-int/2addr v10, v0

    aget v8, v8, v10

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/util/TreeSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 259
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 261
    :cond_4
    if-nez v4, :cond_6

    sget-object v8, Landroid/service/notification/ZenModeConfig;->ALL_DAYS:[I

    add-int/lit8 v10, v0, -0x1

    aget v8, v8, v10

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/util/TreeSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    :goto_4
    if-nez v8, :cond_5

    .line 262
    if-nez v3, :cond_7

    invoke-direct {p0, v6}, Lcom/android/exsettings/notification/ZenModeAutomationSettings;->dayString(I)Ljava/lang/String;

    move-result-object v7

    .line 266
    .local v7, "v":Ljava/lang/String;
    :goto_5
    if-nez v5, :cond_8

    move-object v5, v7

    .line 268
    .end local v7    # "v":Ljava/lang/String;
    :cond_5
    :goto_6
    add-int/2addr v4, v3

    goto :goto_2

    :cond_6
    move v8, v9

    .line 261
    goto :goto_4

    .line 263
    :cond_7
    new-array v8, v13, [Ljava/lang/Object;

    .line 264
    invoke-direct {p0, v6}, Lcom/android/exsettings/notification/ZenModeAutomationSettings;->dayString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    .line 265
    sget-object v10, Landroid/service/notification/ZenModeConfig;->ALL_DAYS:[I

    add-int v11, v4, v3

    rem-int/2addr v11, v0

    aget v10, v10, v11

    invoke-direct {p0, v10}, Lcom/android/exsettings/notification/ZenModeAutomationSettings;->dayString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v12

    .line 263
    const v10, 0x7f0c0eca

    invoke-virtual {p0, v10, v8}, Lcom/android/exsettings/notification/ZenModeAutomationSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .restart local v7    # "v":Ljava/lang/String;
    goto :goto_5

    .line 266
    :cond_8
    new-array v8, v13, [Ljava/lang/Object;

    aput-object v5, v8, v9

    aput-object v7, v8, v12

    const v10, 0x7f0c0ec9

    invoke-virtual {p0, v10, v8}, Lcom/android/exsettings/notification/ZenModeAutomationSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .local v5, "rt":Ljava/lang/String;
    goto :goto_6

    .line 270
    .end local v1    # "active":Z
    .end local v3    # "end":I
    .end local v5    # "rt":Ljava/lang/String;
    .end local v6    # "startDay":I
    .end local v7    # "v":Ljava/lang/String;
    :cond_9
    return-object v5
.end method

.method private computeEventRuleSummary(Landroid/service/notification/ZenModeConfig$EventInfo;)Ljava/lang/String;
    .locals 6
    .param p1, "event"    # Landroid/service/notification/ZenModeConfig$EventInfo;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 209
    new-array v2, v5, [Ljava/lang/Object;

    .line 210
    invoke-direct {p0, p1}, Lcom/android/exsettings/notification/ZenModeAutomationSettings;->computeCalendarName(Landroid/service/notification/ZenModeConfig$EventInfo;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    .line 209
    const v3, 0x7f0c0ebc

    invoke-virtual {p0, v3, v2}, Lcom/android/exsettings/notification/ZenModeAutomationSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 211
    .local v0, "calendar":Ljava/lang/String;
    new-array v2, v5, [Ljava/lang/Object;

    .line 212
    invoke-direct {p0, p1}, Lcom/android/exsettings/notification/ZenModeAutomationSettings;->computeReply(Landroid/service/notification/ZenModeConfig$EventInfo;)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/exsettings/notification/ZenModeAutomationSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    .line 211
    const v3, 0x7f0c0ebe

    invoke-virtual {p0, v3, v2}, Lcom/android/exsettings/notification/ZenModeAutomationSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 213
    .local v1, "reply":Ljava/lang/String;
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v4

    aput-object v1, v2, v5

    const v3, 0x7f0c0ec5

    invoke-virtual {p0, v3, v2}, Lcom/android/exsettings/notification/ZenModeAutomationSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private computeReply(Landroid/service/notification/ZenModeConfig$EventInfo;)I
    .locals 3
    .param p1, "event"    # Landroid/service/notification/ZenModeConfig$EventInfo;

    .prologue
    .line 222
    iget v0, p1, Landroid/service/notification/ZenModeConfig$EventInfo;->reply:I

    packed-switch v0, :pswitch_data_0

    .line 230
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Bad reply: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/service/notification/ZenModeConfig$EventInfo;->reply:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 224
    :pswitch_0
    const v0, 0x7f0c0ec1

    return v0

    .line 226
    :pswitch_1
    const v0, 0x7f0c0ec3

    return v0

    .line 228
    :pswitch_2
    const v0, 0x7f0c0ec2

    return v0

    .line 222
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private computeRuleSummary(Landroid/service/notification/ZenModeConfig$ZenRule;)Ljava/lang/String;
    .locals 6
    .param p1, "rule"    # Landroid/service/notification/ZenModeConfig$ZenRule;

    .prologue
    .line 187
    if-eqz p1, :cond_1

    iget-boolean v4, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    if-eqz v4, :cond_1

    .line 188
    invoke-virtual {p0}, Lcom/android/exsettings/notification/ZenModeAutomationSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v5, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    invoke-static {v4, v5}, Lcom/android/exsettings/notification/ZenModeAutomationSettings;->computeZenModeCaption(Landroid/content/res/Resources;I)Ljava/lang/String;

    move-result-object v1

    .line 189
    .local v1, "mode":Ljava/lang/String;
    const v4, 0x7f0c0ee8

    invoke-virtual {p0, v4}, Lcom/android/exsettings/notification/ZenModeAutomationSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 190
    .local v3, "summary":Ljava/lang/String;
    iget-object v4, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    invoke-static {v4}, Landroid/service/notification/ZenModeConfig;->tryParseScheduleConditionId(Landroid/net/Uri;)Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    move-result-object v2

    .line 191
    .local v2, "schedule":Landroid/service/notification/ZenModeConfig$ScheduleInfo;
    iget-object v4, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    invoke-static {v4}, Landroid/service/notification/ZenModeConfig;->tryParseEventConditionId(Landroid/net/Uri;)Landroid/service/notification/ZenModeConfig$EventInfo;

    move-result-object v0

    .line 192
    .local v0, "event":Landroid/service/notification/ZenModeConfig$EventInfo;
    if-eqz v2, :cond_2

    .line 193
    invoke-direct {p0, v2}, Lcom/android/exsettings/notification/ZenModeAutomationSettings;->computeScheduleRuleSummary(Landroid/service/notification/ZenModeConfig$ScheduleInfo;)Ljava/lang/String;

    move-result-object v3

    .line 197
    :cond_0
    :goto_0
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    const/4 v5, 0x1

    aput-object v1, v4, v5

    const v5, 0x7f0c0ec5

    invoke-virtual {p0, v5, v4}, Lcom/android/exsettings/notification/ZenModeAutomationSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 187
    .end local v0    # "event":Landroid/service/notification/ZenModeConfig$EventInfo;
    .end local v1    # "mode":Ljava/lang/String;
    .end local v2    # "schedule":Landroid/service/notification/ZenModeConfig$ScheduleInfo;
    .end local v3    # "summary":Ljava/lang/String;
    :cond_1
    const v4, 0x7f0c0ee9

    invoke-virtual {p0, v4}, Lcom/android/exsettings/notification/ZenModeAutomationSettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 194
    .restart local v0    # "event":Landroid/service/notification/ZenModeConfig$EventInfo;
    .restart local v1    # "mode":Ljava/lang/String;
    .restart local v2    # "schedule":Landroid/service/notification/ZenModeConfig$ScheduleInfo;
    .restart local v3    # "summary":Ljava/lang/String;
    :cond_2
    if-eqz v0, :cond_0

    .line 195
    invoke-direct {p0, v0}, Lcom/android/exsettings/notification/ZenModeAutomationSettings;->computeEventRuleSummary(Landroid/service/notification/ZenModeConfig$EventInfo;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method private computeScheduleRuleSummary(Landroid/service/notification/ZenModeConfig$ScheduleInfo;)Ljava/lang/String;
    .locals 9
    .param p1, "schedule"    # Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 201
    iget-object v4, p1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->days:[I

    invoke-direct {p0, v4}, Lcom/android/exsettings/notification/ZenModeAutomationSettings;->computeContiguousDayRanges([I)Ljava/lang/String;

    move-result-object v0

    .line 202
    .local v0, "days":Ljava/lang/String;
    iget v4, p1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startHour:I

    iget v5, p1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startMinute:I

    invoke-direct {p0, v4, v5}, Lcom/android/exsettings/notification/ZenModeAutomationSettings;->getTime(II)Ljava/lang/String;

    move-result-object v2

    .line 203
    .local v2, "start":Ljava/lang/String;
    iget v4, p1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endHour:I

    iget v5, p1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endMinute:I

    invoke-direct {p0, v4, v5}, Lcom/android/exsettings/notification/ZenModeAutomationSettings;->getTime(II)Ljava/lang/String;

    move-result-object v1

    .line 204
    .local v1, "end":Ljava/lang/String;
    new-array v4, v8, [Ljava/lang/Object;

    aput-object v2, v4, v6

    aput-object v1, v4, v7

    const v5, 0x7f0c0ecb

    invoke-virtual {p0, v5, v4}, Lcom/android/exsettings/notification/ZenModeAutomationSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 205
    .local v3, "time":Ljava/lang/String;
    new-array v4, v8, [Ljava/lang/Object;

    aput-object v0, v4, v6

    aput-object v3, v4, v7

    const v5, 0x7f0c0ec5

    invoke-virtual {p0, v5, v4}, Lcom/android/exsettings/notification/ZenModeAutomationSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private static computeZenModeCaption(Landroid/content/res/Resources;I)Ljava/lang/String;
    .locals 1
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "zenMode"    # I

    .prologue
    .line 289
    packed-switch p1, :pswitch_data_0

    .line 297
    const/4 v0, 0x0

    return-object v0

    .line 291
    :pswitch_0
    const v0, 0x7f0c0e7c

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 293
    :pswitch_1
    const v0, 0x7f0c0e7b

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 295
    :pswitch_2
    const v0, 0x7f0c0e7d

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 289
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private dayString(I)Ljava/lang/String;
    .locals 2
    .param p1, "day"    # I

    .prologue
    .line 274
    iget-object v0, p0, Lcom/android/exsettings/notification/ZenModeAutomationSettings;->mCalendar:Ljava/util/Calendar;

    const/4 v1, 0x7

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    .line 275
    iget-object v0, p0, Lcom/android/exsettings/notification/ZenModeAutomationSettings;->mDayFormat:Ljava/text/SimpleDateFormat;

    iget-object v1, p0, Lcom/android/exsettings/notification/ZenModeAutomationSettings;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getConditionProviderConfig()Lcom/android/exsettings/notification/ManagedServiceSettings$Config;
    .locals 2

    .prologue
    .line 279
    new-instance v0, Lcom/android/exsettings/notification/ManagedServiceSettings$Config;

    invoke-direct {v0}, Lcom/android/exsettings/notification/ManagedServiceSettings$Config;-><init>()V

    .line 280
    .local v0, "c":Lcom/android/exsettings/notification/ManagedServiceSettings$Config;
    const-string/jumbo v1, "ZenModeSettings"

    iput-object v1, v0, Lcom/android/exsettings/notification/ManagedServiceSettings$Config;->tag:Ljava/lang/String;

    .line 281
    const-string/jumbo v1, "enabled_condition_providers"

    iput-object v1, v0, Lcom/android/exsettings/notification/ManagedServiceSettings$Config;->setting:Ljava/lang/String;

    .line 282
    const-string/jumbo v1, "android.service.notification.ConditionProviderService"

    iput-object v1, v0, Lcom/android/exsettings/notification/ManagedServiceSettings$Config;->intentAction:Ljava/lang/String;

    .line 283
    const-string/jumbo v1, "android.permission.BIND_CONDITION_PROVIDER_SERVICE"

    iput-object v1, v0, Lcom/android/exsettings/notification/ManagedServiceSettings$Config;->permission:Ljava/lang/String;

    .line 284
    const-string/jumbo v1, "condition provider"

    iput-object v1, v0, Lcom/android/exsettings/notification/ManagedServiceSettings$Config;->noun:Ljava/lang/String;

    .line 285
    return-object v0
.end method

.method private getTime(II)Ljava/lang/String;
    .locals 2
    .param p1, "hour"    # I
    .param p2, "minute"    # I

    .prologue
    .line 235
    iget-object v0, p0, Lcom/android/exsettings/notification/ZenModeAutomationSettings;->mCalendar:Ljava/util/Calendar;

    const/16 v1, 0xb

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    .line 236
    iget-object v0, p0, Lcom/android/exsettings/notification/ZenModeAutomationSettings;->mCalendar:Ljava/util/Calendar;

    const/16 v1, 0xc

    invoke-virtual {v0, v1, p2}, Ljava/util/Calendar;->set(II)V

    .line 237
    iget-object v0, p0, Lcom/android/exsettings/notification/ZenModeAutomationSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    iget-object v1, p0, Lcom/android/exsettings/notification/ZenModeAutomationSettings;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private showAddRuleDialog()V
    .locals 6

    .prologue
    .line 97
    new-instance v0, Lcom/android/exsettings/notification/ZenModeAutomationSettings$3;

    iget-object v2, p0, Lcom/android/exsettings/notification/ZenModeAutomationSettings;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/exsettings/notification/ZenModeAutomationSettings;->mServiceListing:Lcom/android/exsettings/notification/ServiceListing;

    iget-object v1, p0, Lcom/android/exsettings/notification/ZenModeAutomationSettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v1}, Landroid/service/notification/ZenModeConfig;->getAutomaticRuleNames()Landroid/util/ArraySet;

    move-result-object v5

    const/4 v4, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/exsettings/notification/ZenModeAutomationSettings$3;-><init>(Lcom/android/exsettings/notification/ZenModeAutomationSettings;Landroid/content/Context;Lcom/android/exsettings/notification/ServiceListing;Ljava/lang/String;Landroid/util/ArraySet;)V

    invoke-virtual {v0}, Lcom/android/exsettings/notification/ZenModeAutomationSettings$3;->show()V

    .line 96
    return-void
.end method

.method private showRule(Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "settingsAction"    # Ljava/lang/String;
    .param p2, "configurationActivity"    # Landroid/content/ComponentName;
    .param p3, "ruleId"    # Ljava/lang/String;
    .param p4, "ruleName"    # Ljava/lang/String;

    .prologue
    .line 119
    sget-boolean v0, Lcom/android/exsettings/notification/ZenModeAutomationSettings;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "ZenModeSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "showRule "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/android/exsettings/notification/ZenModeAutomationSettings;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 121
    const/high16 v2, 0x4000000

    .line 120
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    .line 122
    const-string/jumbo v2, "rule_id"

    .line 120
    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 118
    return-void
.end method

.method private sortedRules()[Lcom/android/exsettings/notification/ZenModeAutomationSettings$ZenRuleInfo;
    .locals 4

    .prologue
    .line 126
    iget-object v3, p0, Lcom/android/exsettings/notification/ZenModeAutomationSettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-object v3, v3, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    new-array v1, v3, [Lcom/android/exsettings/notification/ZenModeAutomationSettings$ZenRuleInfo;

    .line 127
    .local v1, "rt":[Lcom/android/exsettings/notification/ZenModeAutomationSettings$ZenRuleInfo;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_0

    .line 128
    new-instance v2, Lcom/android/exsettings/notification/ZenModeAutomationSettings$ZenRuleInfo;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/exsettings/notification/ZenModeAutomationSettings$ZenRuleInfo;-><init>(Lcom/android/exsettings/notification/ZenModeAutomationSettings$ZenRuleInfo;)V

    .line 129
    .local v2, "zri":Lcom/android/exsettings/notification/ZenModeAutomationSettings$ZenRuleInfo;
    iget-object v3, p0, Lcom/android/exsettings/notification/ZenModeAutomationSettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-object v3, v3, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, v2, Lcom/android/exsettings/notification/ZenModeAutomationSettings$ZenRuleInfo;->id:Ljava/lang/String;

    .line 130
    iget-object v3, p0, Lcom/android/exsettings/notification/ZenModeAutomationSettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-object v3, v3, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/service/notification/ZenModeConfig$ZenRule;

    iput-object v3, v2, Lcom/android/exsettings/notification/ZenModeAutomationSettings$ZenRuleInfo;->rule:Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 131
    aput-object v2, v1, v0

    .line 127
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 133
    .end local v2    # "zri":Lcom/android/exsettings/notification/ZenModeAutomationSettings$ZenRuleInfo;
    :cond_0
    sget-object v3, Lcom/android/exsettings/notification/ZenModeAutomationSettings;->RULE_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v1, v3}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 134
    return-object v1
.end method

.method private updateControls()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 138
    invoke-virtual {p0}, Lcom/android/exsettings/notification/ZenModeAutomationSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    .line 139
    .local v8, "root":Landroid/preference/PreferenceScreen;
    invoke-virtual {v8}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 140
    iget-object v0, p0, Lcom/android/exsettings/notification/ZenModeAutomationSettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    if-nez v0, :cond_0

    return-void

    .line 141
    :cond_0
    invoke-direct {p0}, Lcom/android/exsettings/notification/ZenModeAutomationSettings;->sortedRules()[Lcom/android/exsettings/notification/ZenModeAutomationSettings$ZenRuleInfo;

    move-result-object v9

    .line 142
    .local v9, "sortedRules":[Lcom/android/exsettings/notification/ZenModeAutomationSettings$ZenRuleInfo;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    array-length v0, v9

    if-ge v6, v0, :cond_3

    .line 143
    aget-object v0, v9, v6

    iget-object v4, v0, Lcom/android/exsettings/notification/ZenModeAutomationSettings$ZenRuleInfo;->id:Ljava/lang/String;

    .line 144
    .local v4, "id":Ljava/lang/String;
    aget-object v0, v9, v6

    iget-object v5, v0, Lcom/android/exsettings/notification/ZenModeAutomationSettings$ZenRuleInfo;->rule:Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 145
    .local v5, "rule":Landroid/service/notification/ZenModeConfig$ZenRule;
    iget-object v0, v5, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    invoke-static {v0}, Landroid/service/notification/ZenModeConfig;->isValidScheduleConditionId(Landroid/net/Uri;)Z

    move-result v2

    .line 146
    .local v2, "isSchedule":Z
    iget-object v0, v5, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    invoke-static {v0}, Landroid/service/notification/ZenModeConfig;->isValidEventConditionId(Landroid/net/Uri;)Z

    move-result v3

    .line 147
    .local v3, "isEvent":Z
    new-instance v7, Landroid/preference/Preference;

    iget-object v0, p0, Lcom/android/exsettings/notification/ZenModeAutomationSettings;->mContext:Landroid/content/Context;

    invoke-direct {v7, v0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 148
    .local v7, "p":Landroid/preference/Preference;
    if-eqz v2, :cond_1

    const v0, 0x7f02009d

    :goto_1
    invoke-virtual {v7, v0}, Landroid/preference/Preference;->setIcon(I)V

    .line 151
    iget-object v0, v5, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    invoke-virtual {v7, v0}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 152
    invoke-direct {p0, v5}, Lcom/android/exsettings/notification/ZenModeAutomationSettings;->computeRuleSummary(Landroid/service/notification/ZenModeConfig$ZenRule;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 153
    invoke-virtual {v7, v10}, Landroid/preference/Preference;->setPersistent(Z)V

    .line 154
    new-instance v0, Lcom/android/exsettings/notification/ZenModeAutomationSettings$4;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/exsettings/notification/ZenModeAutomationSettings$4;-><init>(Lcom/android/exsettings/notification/ZenModeAutomationSettings;ZZLjava/lang/String;Landroid/service/notification/ZenModeConfig$ZenRule;)V

    invoke-virtual {v7, v0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 164
    invoke-virtual {v8, v7}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 142
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 149
    :cond_1
    if-eqz v3, :cond_2

    const v0, 0x7f02006a

    goto :goto_1

    .line 150
    :cond_2
    const v0, 0x7f02007b

    goto :goto_1

    .line 166
    .end local v2    # "isSchedule":Z
    .end local v3    # "isEvent":Z
    .end local v4    # "id":Ljava/lang/String;
    .end local v5    # "rule":Landroid/service/notification/ZenModeConfig$ZenRule;
    .end local v7    # "p":Landroid/preference/Preference;
    :cond_3
    new-instance v7, Landroid/preference/Preference;

    iget-object v0, p0, Lcom/android/exsettings/notification/ZenModeAutomationSettings;->mContext:Landroid/content/Context;

    invoke-direct {v7, v0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 167
    .restart local v7    # "p":Landroid/preference/Preference;
    const v0, 0x7f02003c

    invoke-virtual {v7, v0}, Landroid/preference/Preference;->setIcon(I)V

    .line 168
    const v0, 0x7f0c0eb0

    invoke-virtual {v7, v0}, Landroid/preference/Preference;->setTitle(I)V

    .line 169
    invoke-virtual {v7, v10}, Landroid/preference/Preference;->setPersistent(Z)V

    .line 170
    new-instance v0, Lcom/android/exsettings/notification/ZenModeAutomationSettings$5;

    invoke-direct {v0, p0}, Lcom/android/exsettings/notification/ZenModeAutomationSettings$5;-><init>(Lcom/android/exsettings/notification/ZenModeAutomationSettings;)V

    invoke-virtual {v7, v0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 178
    invoke-virtual {v8, v7}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 137
    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 183
    const/16 v0, 0x8e

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 65
    invoke-super {p0, p1}, Lcom/android/exsettings/notification/ZenModeSettingsBase;->onCreate(Landroid/os/Bundle;)V

    .line 66
    const v0, 0x7f08007a

    invoke-virtual {p0, v0}, Lcom/android/exsettings/notification/ZenModeAutomationSettings;->addPreferencesFromResource(I)V

    .line 67
    new-instance v0, Lcom/android/exsettings/notification/ServiceListing;

    iget-object v1, p0, Lcom/android/exsettings/notification/ZenModeAutomationSettings;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/exsettings/notification/ZenModeAutomationSettings;->CONFIG:Lcom/android/exsettings/notification/ManagedServiceSettings$Config;

    invoke-direct {v0, v1, v2}, Lcom/android/exsettings/notification/ServiceListing;-><init>(Landroid/content/Context;Lcom/android/exsettings/notification/ManagedServiceSettings$Config;)V

    iput-object v0, p0, Lcom/android/exsettings/notification/ZenModeAutomationSettings;->mServiceListing:Lcom/android/exsettings/notification/ServiceListing;

    .line 68
    iget-object v0, p0, Lcom/android/exsettings/notification/ZenModeAutomationSettings;->mServiceListing:Lcom/android/exsettings/notification/ServiceListing;

    iget-object v1, p0, Lcom/android/exsettings/notification/ZenModeAutomationSettings;->mServiceListingCallback:Lcom/android/exsettings/notification/ServiceListing$Callback;

    invoke-virtual {v0, v1}, Lcom/android/exsettings/notification/ServiceListing;->addCallback(Lcom/android/exsettings/notification/ServiceListing$Callback;)V

    .line 69
    iget-object v0, p0, Lcom/android/exsettings/notification/ZenModeAutomationSettings;->mServiceListing:Lcom/android/exsettings/notification/ServiceListing;

    invoke-virtual {v0}, Lcom/android/exsettings/notification/ServiceListing;->reload()Ljava/util/List;

    .line 70
    iget-object v0, p0, Lcom/android/exsettings/notification/ZenModeAutomationSettings;->mServiceListing:Lcom/android/exsettings/notification/ServiceListing;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/exsettings/notification/ServiceListing;->setListening(Z)V

    .line 64
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 75
    invoke-super {p0}, Lcom/android/exsettings/notification/ZenModeSettingsBase;->onDestroy()V

    .line 76
    iget-object v0, p0, Lcom/android/exsettings/notification/ZenModeAutomationSettings;->mServiceListing:Lcom/android/exsettings/notification/ServiceListing;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/exsettings/notification/ServiceListing;->setListening(Z)V

    .line 77
    iget-object v0, p0, Lcom/android/exsettings/notification/ZenModeAutomationSettings;->mServiceListing:Lcom/android/exsettings/notification/ServiceListing;

    iget-object v1, p0, Lcom/android/exsettings/notification/ZenModeAutomationSettings;->mServiceListingCallback:Lcom/android/exsettings/notification/ServiceListing$Callback;

    invoke-virtual {v0, v1}, Lcom/android/exsettings/notification/ServiceListing;->removeCallback(Lcom/android/exsettings/notification/ServiceListing$Callback;)V

    .line 74
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 92
    invoke-super {p0}, Lcom/android/exsettings/notification/ZenModeSettingsBase;->onResume()V

    .line 93
    invoke-direct {p0}, Lcom/android/exsettings/notification/ZenModeAutomationSettings;->updateControls()V

    .line 91
    return-void
.end method

.method protected onZenModeChanged()V
    .locals 0

    .prologue
    .line 81
    return-void
.end method

.method protected onZenModeConfigChanged()V
    .locals 0

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/android/exsettings/notification/ZenModeAutomationSettings;->updateControls()V

    .line 86
    return-void
.end method
