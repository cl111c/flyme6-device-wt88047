.class public Lcom/android/exsettings/notification/ZenModeEventRuleSettings;
.super Lcom/android/exsettings/notification/ZenModeRuleSettingsBase;
.source "ZenModeEventRuleSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exsettings/notification/ZenModeEventRuleSettings$CalendarInfo;,
        Lcom/android/exsettings/notification/ZenModeEventRuleSettings$1;
    }
.end annotation


# static fields
.field private static final CALENDAR_NAME:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/exsettings/notification/ZenModeEventRuleSettings$CalendarInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCalendar:Lcom/android/exsettings/DropDownPreference;

.field private mCalendars:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/exsettings/notification/ZenModeEventRuleSettings$CalendarInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mCreate:Z

.field private mEvent:Landroid/service/notification/ZenModeConfig$EventInfo;

.field private mReply:Lcom/android/exsettings/DropDownPreference;


# direct methods
.method static synthetic -get0(Lcom/android/exsettings/notification/ZenModeEventRuleSettings;)Landroid/service/notification/ZenModeConfig$EventInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/notification/ZenModeEventRuleSettings;->mEvent:Landroid/service/notification/ZenModeConfig$EventInfo;

    return-object v0
.end method

.method static synthetic -wrap0(Landroid/service/notification/ZenModeConfig$EventInfo;)Ljava/lang/String;
    .locals 1
    .param p0, "event"    # Landroid/service/notification/ZenModeConfig$EventInfo;

    .prologue
    invoke-static {p0}, Lcom/android/exsettings/notification/ZenModeEventRuleSettings;->key(Landroid/service/notification/ZenModeConfig$EventInfo;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 220
    new-instance v0, Lcom/android/exsettings/notification/ZenModeEventRuleSettings$1;

    invoke-direct {v0}, Lcom/android/exsettings/notification/ZenModeEventRuleSettings$1;-><init>()V

    sput-object v0, Lcom/android/exsettings/notification/ZenModeEventRuleSettings;->CALENDAR_NAME:Ljava/util/Comparator;

    .line 40
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/exsettings/notification/ZenModeRuleSettingsBase;-><init>()V

    return-void
.end method

.method public static addCalendars(Landroid/content/Context;Ljava/util/List;)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/android/exsettings/notification/ZenModeEventRuleSettings$CalendarInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "outCalendars":Ljava/util/List;, "Ljava/util/List<Lcom/android/exsettings/notification/ZenModeEventRuleSettings$CalendarInfo;>;"
    const/4 v3, 0x1

    .line 184
    const-string/jumbo v8, "\"primary\""

    .line 185
    .local v8, "primary":Ljava/lang/String;
    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    const-string/jumbo v0, "_id"

    const/4 v1, 0x0

    aput-object v0, v2, v1

    const-string/jumbo v0, "calendar_displayName"

    aput-object v0, v2, v3

    .line 186
    const-string/jumbo v0, "(account_name=ownerAccount) AS \"primary\""

    const/4 v1, 0x2

    aput-object v0, v2, v1

    .line 187
    .local v2, "projection":[Ljava/lang/String;
    const-string/jumbo v9, "\"primary\" = 1"

    .line 188
    .local v9, "selection":Ljava/lang/String;
    const/4 v7, 0x0

    .line 190
    .local v7, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    .line 191
    const-string/jumbo v3, "\"primary\" = 1"

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 190
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 192
    .local v7, "cursor":Landroid/database/Cursor;
    if-nez v7, :cond_1

    .line 202
    if-eqz v7, :cond_0

    .line 203
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 193
    :cond_0
    return-void

    .line 195
    :cond_1
    :goto_0
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 196
    new-instance v6, Lcom/android/exsettings/notification/ZenModeEventRuleSettings$CalendarInfo;

    invoke-direct {v6}, Lcom/android/exsettings/notification/ZenModeEventRuleSettings$CalendarInfo;-><init>()V

    .line 197
    .local v6, "ci":Lcom/android/exsettings/notification/ZenModeEventRuleSettings$CalendarInfo;
    const/4 v0, 0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/android/exsettings/notification/ZenModeEventRuleSettings$CalendarInfo;->name:Ljava/lang/String;

    .line 198
    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result v0

    iput v0, v6, Lcom/android/exsettings/notification/ZenModeEventRuleSettings$CalendarInfo;->userId:I

    .line 199
    invoke-interface {p1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 201
    .end local v6    # "ci":Lcom/android/exsettings/notification/ZenModeEventRuleSettings$CalendarInfo;
    .end local v7    # "cursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    .line 202
    if-eqz v7, :cond_2

    .line 203
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 201
    :cond_2
    throw v0

    .line 202
    .restart local v7    # "cursor":Landroid/database/Cursor;
    :cond_3
    if-eqz v7, :cond_4

    .line 203
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 183
    :cond_4
    return-void
.end method

.method private static getCalendars(Landroid/content/Context;)Ljava/util/List;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/exsettings/notification/ZenModeEventRuleSettings$CalendarInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 164
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 165
    .local v0, "calendars":Ljava/util/List;, "Ljava/util/List<Lcom/android/exsettings/notification/ZenModeEventRuleSettings$CalendarInfo;>;"
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "user$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserHandle;

    .line 166
    .local v1, "user":Landroid/os/UserHandle;
    invoke-static {p0, v1}, Lcom/android/exsettings/notification/ZenModeEventRuleSettings;->getContextForUser(Landroid/content/Context;Landroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v3

    .line 167
    .local v3, "userContext":Landroid/content/Context;
    if-eqz v3, :cond_0

    .line 168
    invoke-static {v3, v0}, Lcom/android/exsettings/notification/ZenModeEventRuleSettings;->addCalendars(Landroid/content/Context;Ljava/util/List;)V

    goto :goto_0

    .line 171
    .end local v1    # "user":Landroid/os/UserHandle;
    .end local v3    # "userContext":Landroid/content/Context;
    :cond_1
    sget-object v4, Lcom/android/exsettings/notification/ZenModeEventRuleSettings;->CALENDAR_NAME:Ljava/util/Comparator;

    invoke-static {v0, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 172
    return-object v0
.end method

.method private static getContextForUser(Landroid/content/Context;Landroid/os/UserHandle;)Landroid/content/Context;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 177
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, p1}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 178
    :catch_0
    move-exception v0

    .line 179
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v1, 0x0

    return-object v1
.end method

.method private static key(ILjava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "userId"    # I
    .param p1, "calendar"    # Ljava/lang/String;

    .prologue
    .line 217
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Landroid/service/notification/ZenModeConfig$EventInfo;->resolveUserId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-nez p1, :cond_0

    const-string/jumbo p1, ""

    .end local p1    # "calendar":Ljava/lang/String;
    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static key(Landroid/service/notification/ZenModeConfig$EventInfo;)Ljava/lang/String;
    .locals 2
    .param p0, "event"    # Landroid/service/notification/ZenModeConfig$EventInfo;

    .prologue
    .line 213
    iget v0, p0, Landroid/service/notification/ZenModeConfig$EventInfo;->userId:I

    iget-object v1, p0, Landroid/service/notification/ZenModeConfig$EventInfo;->calendar:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/exsettings/notification/ZenModeEventRuleSettings;->key(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static key(Lcom/android/exsettings/notification/ZenModeEventRuleSettings$CalendarInfo;)Ljava/lang/String;
    .locals 2
    .param p0, "calendar"    # Lcom/android/exsettings/notification/ZenModeEventRuleSettings$CalendarInfo;

    .prologue
    .line 209
    iget v0, p0, Lcom/android/exsettings/notification/ZenModeEventRuleSettings$CalendarInfo;->userId:I

    iget-object v1, p0, Lcom/android/exsettings/notification/ZenModeEventRuleSettings$CalendarInfo;->name:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/exsettings/notification/ZenModeEventRuleSettings;->key(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private reloadCalendar()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 80
    iget-object v4, p0, Lcom/android/exsettings/notification/ZenModeEventRuleSettings;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/exsettings/notification/ZenModeEventRuleSettings;->getCalendars(Landroid/content/Context;)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/android/exsettings/notification/ZenModeEventRuleSettings;->mCalendars:Ljava/util/List;

    .line 81
    iget-object v4, p0, Lcom/android/exsettings/notification/ZenModeEventRuleSettings;->mCalendar:Lcom/android/exsettings/DropDownPreference;

    invoke-virtual {v4}, Lcom/android/exsettings/DropDownPreference;->clearItems()V

    .line 82
    iget-object v4, p0, Lcom/android/exsettings/notification/ZenModeEventRuleSettings;->mCalendar:Lcom/android/exsettings/DropDownPreference;

    const/4 v5, 0x0

    invoke-static {v5, v6}, Lcom/android/exsettings/notification/ZenModeEventRuleSettings;->key(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f0c0ebf

    invoke-virtual {v4, v6, v5}, Lcom/android/exsettings/DropDownPreference;->addItem(ILjava/lang/Object;)V

    .line 83
    iget-object v4, p0, Lcom/android/exsettings/notification/ZenModeEventRuleSettings;->mEvent:Landroid/service/notification/ZenModeConfig$EventInfo;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/exsettings/notification/ZenModeEventRuleSettings;->mEvent:Landroid/service/notification/ZenModeConfig$EventInfo;

    iget-object v2, v4, Landroid/service/notification/ZenModeConfig$EventInfo;->calendar:Ljava/lang/String;

    .line 84
    :goto_0
    const/4 v3, 0x0

    .line 85
    .local v3, "found":Z
    iget-object v4, p0, Lcom/android/exsettings/notification/ZenModeEventRuleSettings;->mCalendars:Ljava/util/List;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "calendar$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/exsettings/notification/ZenModeEventRuleSettings$CalendarInfo;

    .line 86
    .local v0, "calendar":Lcom/android/exsettings/notification/ZenModeEventRuleSettings$CalendarInfo;
    iget-object v4, p0, Lcom/android/exsettings/notification/ZenModeEventRuleSettings;->mCalendar:Lcom/android/exsettings/DropDownPreference;

    iget-object v5, v0, Lcom/android/exsettings/notification/ZenModeEventRuleSettings$CalendarInfo;->name:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/exsettings/notification/ZenModeEventRuleSettings;->key(Lcom/android/exsettings/notification/ZenModeEventRuleSettings$CalendarInfo;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/exsettings/DropDownPreference;->addItem(Ljava/lang/String;Ljava/lang/Object;)V

    .line 87
    if-eqz v2, :cond_0

    iget-object v4, v0, Lcom/android/exsettings/notification/ZenModeEventRuleSettings$CalendarInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 88
    const/4 v3, 0x1

    goto :goto_1

    .line 83
    .end local v0    # "calendar":Lcom/android/exsettings/notification/ZenModeEventRuleSettings$CalendarInfo;
    .end local v1    # "calendar$iterator":Ljava/util/Iterator;
    .end local v3    # "found":Z
    :cond_1
    const/4 v2, 0x0

    .local v2, "eventCalendar":Ljava/lang/String;
    goto :goto_0

    .line 91
    .end local v2    # "eventCalendar":Ljava/lang/String;
    .restart local v1    # "calendar$iterator":Ljava/util/Iterator;
    .restart local v3    # "found":Z
    :cond_2
    if-eqz v2, :cond_3

    if-eqz v3, :cond_4

    .line 79
    :cond_3
    :goto_2
    return-void

    .line 92
    :cond_4
    iget-object v4, p0, Lcom/android/exsettings/notification/ZenModeEventRuleSettings;->mCalendar:Lcom/android/exsettings/DropDownPreference;

    iget-object v5, p0, Lcom/android/exsettings/notification/ZenModeEventRuleSettings;->mEvent:Landroid/service/notification/ZenModeConfig$EventInfo;

    iget v5, v5, Landroid/service/notification/ZenModeConfig$EventInfo;->userId:I

    invoke-static {v5, v2}, Lcom/android/exsettings/notification/ZenModeEventRuleSettings;->key(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Lcom/android/exsettings/DropDownPreference;->addItem(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2
.end method


# virtual methods
.method protected getEnabledToastText()I
    .locals 1

    .prologue
    .line 67
    const v0, 0x7f0c0eba

    return v0
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 149
    const/16 v0, 0x92

    return v0
.end method

.method protected getZenModeDependency()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onCreateInternal()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 98
    iput-boolean v4, p0, Lcom/android/exsettings/notification/ZenModeEventRuleSettings;->mCreate:Z

    .line 99
    const v1, 0x7f08007b

    invoke-virtual {p0, v1}, Lcom/android/exsettings/notification/ZenModeEventRuleSettings;->addPreferencesFromResource(I)V

    .line 100
    invoke-virtual {p0}, Lcom/android/exsettings/notification/ZenModeEventRuleSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 102
    .local v0, "root":Landroid/preference/PreferenceScreen;
    const-string/jumbo v1, "calendar"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/exsettings/DropDownPreference;

    iput-object v1, p0, Lcom/android/exsettings/notification/ZenModeEventRuleSettings;->mCalendar:Lcom/android/exsettings/DropDownPreference;

    .line 103
    iget-object v1, p0, Lcom/android/exsettings/notification/ZenModeEventRuleSettings;->mCalendar:Lcom/android/exsettings/DropDownPreference;

    new-instance v2, Lcom/android/exsettings/notification/ZenModeEventRuleSettings$2;

    invoke-direct {v2, p0}, Lcom/android/exsettings/notification/ZenModeEventRuleSettings$2;-><init>(Lcom/android/exsettings/notification/ZenModeEventRuleSettings;)V

    invoke-virtual {v1, v2}, Lcom/android/exsettings/DropDownPreference;->setCallback(Lcom/android/exsettings/DropDownPreference$Callback;)V

    .line 119
    const-string/jumbo v1, "reply"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/exsettings/DropDownPreference;

    iput-object v1, p0, Lcom/android/exsettings/notification/ZenModeEventRuleSettings;->mReply:Lcom/android/exsettings/DropDownPreference;

    .line 120
    iget-object v1, p0, Lcom/android/exsettings/notification/ZenModeEventRuleSettings;->mReply:Lcom/android/exsettings/DropDownPreference;

    .line 121
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 120
    const v3, 0x7f0c0ec1

    invoke-virtual {v1, v3, v2}, Lcom/android/exsettings/DropDownPreference;->addItem(ILjava/lang/Object;)V

    .line 122
    iget-object v1, p0, Lcom/android/exsettings/notification/ZenModeEventRuleSettings;->mReply:Lcom/android/exsettings/DropDownPreference;

    .line 123
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 122
    const v3, 0x7f0c0ec2

    invoke-virtual {v1, v3, v2}, Lcom/android/exsettings/DropDownPreference;->addItem(ILjava/lang/Object;)V

    .line 124
    iget-object v1, p0, Lcom/android/exsettings/notification/ZenModeEventRuleSettings;->mReply:Lcom/android/exsettings/DropDownPreference;

    .line 125
    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 124
    const v3, 0x7f0c0ec3

    invoke-virtual {v1, v3, v2}, Lcom/android/exsettings/DropDownPreference;->addItem(ILjava/lang/Object;)V

    .line 126
    iget-object v1, p0, Lcom/android/exsettings/notification/ZenModeEventRuleSettings;->mReply:Lcom/android/exsettings/DropDownPreference;

    new-instance v2, Lcom/android/exsettings/notification/ZenModeEventRuleSettings$3;

    invoke-direct {v2, p0}, Lcom/android/exsettings/notification/ZenModeEventRuleSettings$3;-><init>(Lcom/android/exsettings/notification/ZenModeEventRuleSettings;)V

    invoke-virtual {v1, v2}, Lcom/android/exsettings/DropDownPreference;->setCallback(Lcom/android/exsettings/DropDownPreference$Callback;)V

    .line 137
    invoke-direct {p0}, Lcom/android/exsettings/notification/ZenModeEventRuleSettings;->reloadCalendar()V

    .line 138
    invoke-virtual {p0}, Lcom/android/exsettings/notification/ZenModeEventRuleSettings;->updateControlsInternal()V

    .line 97
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 72
    invoke-super {p0}, Lcom/android/exsettings/notification/ZenModeRuleSettingsBase;->onResume()V

    .line 73
    iget-boolean v0, p0, Lcom/android/exsettings/notification/ZenModeEventRuleSettings;->mCreate:Z

    if-nez v0, :cond_0

    .line 74
    invoke-direct {p0}, Lcom/android/exsettings/notification/ZenModeEventRuleSettings;->reloadCalendar()V

    .line 76
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/exsettings/notification/ZenModeEventRuleSettings;->mCreate:Z

    .line 71
    return-void
.end method

.method protected setRule(Landroid/service/notification/ZenModeConfig$ZenRule;)Z
    .locals 1
    .param p1, "rule"    # Landroid/service/notification/ZenModeConfig$ZenRule;

    .prologue
    const/4 v0, 0x0

    .line 55
    if-eqz p1, :cond_0

    iget-object v0, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    invoke-static {v0}, Landroid/service/notification/ZenModeConfig;->tryParseEventConditionId(Landroid/net/Uri;)Landroid/service/notification/ZenModeConfig$EventInfo;

    move-result-object v0

    :cond_0
    iput-object v0, p0, Lcom/android/exsettings/notification/ZenModeEventRuleSettings;->mEvent:Landroid/service/notification/ZenModeConfig$EventInfo;

    .line 57
    iget-object v0, p0, Lcom/android/exsettings/notification/ZenModeEventRuleSettings;->mEvent:Landroid/service/notification/ZenModeConfig$EventInfo;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected updateControlsInternal()V
    .locals 2

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/exsettings/notification/ZenModeEventRuleSettings;->mCalendar:Lcom/android/exsettings/DropDownPreference;

    iget-object v1, p0, Lcom/android/exsettings/notification/ZenModeEventRuleSettings;->mEvent:Landroid/service/notification/ZenModeConfig$EventInfo;

    invoke-static {v1}, Lcom/android/exsettings/notification/ZenModeEventRuleSettings;->key(Landroid/service/notification/ZenModeConfig$EventInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/exsettings/DropDownPreference;->setSelectedValue(Ljava/lang/Object;)V

    .line 144
    iget-object v0, p0, Lcom/android/exsettings/notification/ZenModeEventRuleSettings;->mReply:Lcom/android/exsettings/DropDownPreference;

    iget-object v1, p0, Lcom/android/exsettings/notification/ZenModeEventRuleSettings;->mEvent:Landroid/service/notification/ZenModeConfig$EventInfo;

    iget v1, v1, Landroid/service/notification/ZenModeConfig$EventInfo;->reply:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/exsettings/DropDownPreference;->setSelectedValue(Ljava/lang/Object;)V

    .line 142
    return-void
.end method
