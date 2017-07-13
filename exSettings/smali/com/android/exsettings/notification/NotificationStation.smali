.class public Lcom/android/exsettings/notification/NotificationStation;
.super Lcom/android/exsettings/SettingsPreferenceFragment;
.source "NotificationStation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exsettings/notification/NotificationStation$HistoricalNotificationInfo;,
        Lcom/android/exsettings/notification/NotificationStation$NotificationHistoryAdapter;,
        Lcom/android/exsettings/notification/NotificationStation$1;,
        Lcom/android/exsettings/notification/NotificationStation$2;,
        Lcom/android/exsettings/notification/NotificationStation$3;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAdapter:Lcom/android/exsettings/notification/NotificationStation$NotificationHistoryAdapter;

.field private mContext:Landroid/content/Context;

.field private mFilter:Landroid/graphics/ColorFilter;

.field private mListener:Landroid/service/notification/NotificationListenerService;

.field private mNoMan:Landroid/app/INotificationManager;

.field private final mNotificationSorter:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/exsettings/notification/NotificationStation$HistoricalNotificationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mPm:Landroid/content/pm/PackageManager;

.field private mRefreshListRunnable:Ljava/lang/Runnable;


# direct methods
.method static synthetic -get0(Lcom/android/exsettings/notification/NotificationStation;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/notification/NotificationStation;->mRefreshListRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -wrap0(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    invoke-static {p0, p1}, Lcom/android/exsettings/notification/NotificationStation;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/exsettings/notification/NotificationStation;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/exsettings/notification/NotificationStation;->refreshList()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/exsettings/notification/NotificationStation;Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/exsettings/notification/NotificationStation;->startApplicationDetailsActivity(Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    const-class v0, Lcom/android/exsettings/notification/NotificationStation;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/exsettings/notification/NotificationStation;->TAG:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;-><init>()V

    .line 81
    new-instance v0, Lcom/android/exsettings/notification/NotificationStation$1;

    invoke-direct {v0, p0}, Lcom/android/exsettings/notification/NotificationStation$1;-><init>(Lcom/android/exsettings/notification/NotificationStation;)V

    iput-object v0, p0, Lcom/android/exsettings/notification/NotificationStation;->mRefreshListRunnable:Ljava/lang/Runnable;

    .line 88
    new-instance v0, Lcom/android/exsettings/notification/NotificationStation$2;

    invoke-direct {v0, p0}, Lcom/android/exsettings/notification/NotificationStation$2;-><init>(Lcom/android/exsettings/notification/NotificationStation;)V

    iput-object v0, p0, Lcom/android/exsettings/notification/NotificationStation;->mListener:Landroid/service/notification/NotificationListenerService;

    .line 109
    new-instance v0, Lcom/android/exsettings/notification/NotificationStation$3;

    invoke-direct {v0, p0}, Lcom/android/exsettings/notification/NotificationStation$3;-><init>(Lcom/android/exsettings/notification/NotificationStation;)V

    .line 108
    iput-object v0, p0, Lcom/android/exsettings/notification/NotificationStation;->mNotificationSorter:Ljava/util/Comparator;

    .line 60
    return-void
.end method

.method private getResourcesForUserPackage(Ljava/lang/String;I)Landroid/content/res/Resources;
    .locals 6
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    const/4 v5, 0x0

    .line 248
    const/4 v1, 0x0

    .line 250
    .local v1, "r":Landroid/content/res/Resources;
    if-eqz p1, :cond_1

    .line 252
    const/4 v2, -0x1

    if-ne p2, v2, :cond_0

    .line 253
    const/4 p2, 0x0

    .line 255
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/exsettings/notification/NotificationStation;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, p1, p2}, Landroid/content/pm/PackageManager;->getResourcesForApplicationAsUser(Ljava/lang/String;I)Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 263
    .local v1, "r":Landroid/content/res/Resources;
    :goto_0
    return-object v1

    .line 256
    .local v1, "r":Landroid/content/res/Resources;
    :catch_0
    move-exception v0

    .line 257
    .local v0, "ex":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v2, Lcom/android/exsettings/notification/NotificationStation;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Icon package not found: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 258
    return-object v5

    .line 261
    .end local v0    # "ex":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1
    iget-object v2, p0, Lcom/android/exsettings/notification/NotificationStation;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .local v1, "r":Landroid/content/res/Resources;
    goto :goto_0
.end method

.method private loadIconDrawable(Ljava/lang/String;II)Landroid/graphics/drawable/Drawable;
    .locals 7
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "resId"    # I

    .prologue
    const/4 v6, 0x0

    .line 289
    invoke-direct {p0, p1, p2}, Lcom/android/exsettings/notification/NotificationStation;->getResourcesForUserPackage(Ljava/lang/String;I)Landroid/content/res/Resources;

    move-result-object v2

    .line 292
    .local v2, "r":Landroid/content/res/Resources;
    if-nez p3, :cond_0

    .line 293
    return-object v6

    .line 297
    :cond_0
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v2, p3, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 298
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    iget-object v3, p0, Lcom/android/exsettings/notification/NotificationStation;->mFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 299
    return-object v0

    .line 300
    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    :catch_0
    move-exception v1

    .line 301
    .local v1, "e":Ljava/lang/RuntimeException;
    sget-object v4, Lcom/android/exsettings/notification/NotificationStation;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Icon not found in "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 302
    if-eqz p1, :cond_1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 301
    :goto_0
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 303
    const-string/jumbo v5, ": "

    .line 301
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 303
    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    .line 301
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 306
    return-object v6

    .line 302
    :cond_1
    const-string/jumbo v3, "<system>"

    goto :goto_0
.end method

.method private loadNotifications()Ljava/util/List;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/exsettings/notification/NotificationStation$HistoricalNotificationInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 193
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v5

    .line 195
    .local v5, "currentUserId":I
    :try_start_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/exsettings/notification/NotificationStation;->mNoMan:Landroid/app/INotificationManager;

    .line 196
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/exsettings/notification/NotificationStation;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v13

    .line 195
    invoke-interface {v12, v13}, Landroid/app/INotificationManager;->getActiveNotifications(Ljava/lang/String;)[Landroid/service/notification/StatusBarNotification;

    move-result-object v4

    .line 197
    .local v4, "active":[Landroid/service/notification/StatusBarNotification;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/exsettings/notification/NotificationStation;->mNoMan:Landroid/app/INotificationManager;

    .line 198
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/exsettings/notification/NotificationStation;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v13

    const/16 v14, 0x32

    .line 197
    invoke-interface {v12, v13, v14}, Landroid/app/INotificationManager;->getHistoricalNotifications(Ljava/lang/String;I)[Landroid/service/notification/StatusBarNotification;

    move-result-object v6

    .line 201
    .local v6, "dismissed":[Landroid/service/notification/StatusBarNotification;
    new-instance v9, Ljava/util/ArrayList;

    array-length v12, v4

    array-length v13, v6

    add-int/2addr v12, v13

    invoke-direct {v9, v12}, Ljava/util/ArrayList;-><init>(I)V

    .line 204
    .local v9, "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/exsettings/notification/NotificationStation$HistoricalNotificationInfo;>;"
    const/4 v12, 0x2

    new-array v15, v12, [[Landroid/service/notification/StatusBarNotification;

    const/4 v12, 0x0

    aput-object v4, v15, v12

    const/4 v12, 0x1

    aput-object v6, v15, v12

    .line 203
    const/4 v12, 0x0

    array-length v0, v15

    move/from16 v16, v0

    move v14, v12

    :goto_0
    move/from16 v0, v16

    if-ge v14, v0, :cond_a

    aget-object v10, v15, v14

    .line 205
    .local v10, "resultset":[Landroid/service/notification/StatusBarNotification;
    const/4 v12, 0x0

    array-length v0, v10

    move/from16 v17, v0

    move v13, v12

    :goto_1
    move/from16 v0, v17

    if-ge v13, v0, :cond_9

    aget-object v11, v10, v13

    .line 206
    .local v11, "sbn":Landroid/service/notification/StatusBarNotification;
    new-instance v8, Lcom/android/exsettings/notification/NotificationStation$HistoricalNotificationInfo;

    const/4 v12, 0x0

    invoke-direct {v8, v12}, Lcom/android/exsettings/notification/NotificationStation$HistoricalNotificationInfo;-><init>(Lcom/android/exsettings/notification/NotificationStation$HistoricalNotificationInfo;)V

    .line 207
    .local v8, "info":Lcom/android/exsettings/notification/NotificationStation$HistoricalNotificationInfo;
    invoke-virtual {v11}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v12

    iput-object v12, v8, Lcom/android/exsettings/notification/NotificationStation$HistoricalNotificationInfo;->pkg:Ljava/lang/String;

    .line 208
    invoke-virtual {v11}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v12

    iput v12, v8, Lcom/android/exsettings/notification/NotificationStation$HistoricalNotificationInfo;->user:I

    .line 209
    iget-object v12, v8, Lcom/android/exsettings/notification/NotificationStation$HistoricalNotificationInfo;->pkg:Ljava/lang/String;

    iget v0, v8, Lcom/android/exsettings/notification/NotificationStation$HistoricalNotificationInfo;->user:I

    move/from16 v18, v0

    invoke-virtual {v11}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v19

    move-object/from16 v0, v19

    iget v0, v0, Landroid/app/Notification;->icon:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v12, v1, v2}, Lcom/android/exsettings/notification/NotificationStation;->loadIconDrawable(Ljava/lang/String;II)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    iput-object v12, v8, Lcom/android/exsettings/notification/NotificationStation$HistoricalNotificationInfo;->icon:Landroid/graphics/drawable/Drawable;

    .line 210
    iget-object v12, v8, Lcom/android/exsettings/notification/NotificationStation$HistoricalNotificationInfo;->pkg:Ljava/lang/String;

    iget v0, v8, Lcom/android/exsettings/notification/NotificationStation$HistoricalNotificationInfo;->user:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v12, v1}, Lcom/android/exsettings/notification/NotificationStation;->loadPackageIconDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    iput-object v12, v8, Lcom/android/exsettings/notification/NotificationStation$HistoricalNotificationInfo;->pkgicon:Landroid/graphics/drawable/Drawable;

    .line 211
    iget-object v12, v8, Lcom/android/exsettings/notification/NotificationStation$HistoricalNotificationInfo;->pkg:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/exsettings/notification/NotificationStation;->loadPackageName(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v12

    iput-object v12, v8, Lcom/android/exsettings/notification/NotificationStation$HistoricalNotificationInfo;->pkgname:Ljava/lang/CharSequence;

    .line 212
    invoke-virtual {v11}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v12

    iget-object v12, v12, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    if-eqz v12, :cond_1

    .line 213
    invoke-virtual {v11}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v12

    iget-object v12, v12, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 214
    const-string/jumbo v18, "android.title"

    .line 213
    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v8, Lcom/android/exsettings/notification/NotificationStation$HistoricalNotificationInfo;->title:Ljava/lang/CharSequence;

    .line 215
    iget-object v12, v8, Lcom/android/exsettings/notification/NotificationStation$HistoricalNotificationInfo;->title:Ljava/lang/CharSequence;

    if-eqz v12, :cond_0

    const-string/jumbo v12, ""

    iget-object v0, v8, Lcom/android/exsettings/notification/NotificationStation$HistoricalNotificationInfo;->title:Ljava/lang/CharSequence;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 216
    :cond_0
    invoke-virtual {v11}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v12

    iget-object v12, v12, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 217
    const-string/jumbo v18, "android.text"

    .line 216
    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v8, Lcom/android/exsettings/notification/NotificationStation$HistoricalNotificationInfo;->title:Ljava/lang/CharSequence;

    .line 220
    :cond_1
    iget-object v12, v8, Lcom/android/exsettings/notification/NotificationStation$HistoricalNotificationInfo;->title:Ljava/lang/CharSequence;

    if-eqz v12, :cond_2

    const-string/jumbo v12, ""

    iget-object v0, v8, Lcom/android/exsettings/notification/NotificationStation$HistoricalNotificationInfo;->title:Ljava/lang/CharSequence;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 221
    :cond_2
    invoke-virtual {v11}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v12

    iget-object v12, v12, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    iput-object v12, v8, Lcom/android/exsettings/notification/NotificationStation$HistoricalNotificationInfo;->title:Ljava/lang/CharSequence;

    .line 224
    :cond_3
    iget-object v12, v8, Lcom/android/exsettings/notification/NotificationStation$HistoricalNotificationInfo;->title:Ljava/lang/CharSequence;

    if-eqz v12, :cond_4

    const-string/jumbo v12, ""

    iget-object v0, v8, Lcom/android/exsettings/notification/NotificationStation$HistoricalNotificationInfo;->title:Ljava/lang/CharSequence;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 225
    :cond_4
    iget-object v12, v8, Lcom/android/exsettings/notification/NotificationStation$HistoricalNotificationInfo;->pkgname:Ljava/lang/CharSequence;

    iput-object v12, v8, Lcom/android/exsettings/notification/NotificationStation$HistoricalNotificationInfo;->title:Ljava/lang/CharSequence;

    .line 227
    :cond_5
    invoke-virtual {v11}, Landroid/service/notification/StatusBarNotification;->getPostTime()J

    move-result-wide v18

    move-wide/from16 v0, v18

    iput-wide v0, v8, Lcom/android/exsettings/notification/NotificationStation$HistoricalNotificationInfo;->timestamp:J

    .line 228
    invoke-virtual {v11}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v12

    iget v12, v12, Landroid/app/Notification;->priority:I

    iput v12, v8, Lcom/android/exsettings/notification/NotificationStation$HistoricalNotificationInfo;->priority:I

    .line 229
    const-string/jumbo v12, "   [%d] %s: %s"

    const/16 v18, 0x3

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    iget-wide v0, v8, Lcom/android/exsettings/notification/NotificationStation$HistoricalNotificationInfo;->timestamp:J

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    const/16 v20, 0x0

    aput-object v19, v18, v20

    iget-object v0, v8, Lcom/android/exsettings/notification/NotificationStation$HistoricalNotificationInfo;->pkg:Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    aput-object v19, v18, v20

    iget-object v0, v8, Lcom/android/exsettings/notification/NotificationStation$HistoricalNotificationInfo;->title:Ljava/lang/CharSequence;

    move-object/from16 v19, v0

    const/16 v20, 0x2

    aput-object v19, v18, v20

    move-object/from16 v0, v18

    invoke-static {v12, v0}, Lcom/android/exsettings/notification/NotificationStation;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 231
    if-ne v10, v4, :cond_8

    const/4 v12, 0x1

    :goto_2
    iput-boolean v12, v8, Lcom/android/exsettings/notification/NotificationStation$HistoricalNotificationInfo;->active:Z

    .line 233
    iget v12, v8, Lcom/android/exsettings/notification/NotificationStation$HistoricalNotificationInfo;->user:I

    const/16 v18, -0x1

    move/from16 v0, v18

    if-eq v12, v0, :cond_6

    .line 234
    iget v12, v8, Lcom/android/exsettings/notification/NotificationStation$HistoricalNotificationInfo;->user:I

    if-ne v12, v5, :cond_7

    .line 235
    :cond_6
    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 205
    :cond_7
    add-int/lit8 v12, v13, 0x1

    move v13, v12

    goto/16 :goto_1

    .line 231
    :cond_8
    const/4 v12, 0x0

    goto :goto_2

    .line 203
    .end local v8    # "info":Lcom/android/exsettings/notification/NotificationStation$HistoricalNotificationInfo;
    .end local v11    # "sbn":Landroid/service/notification/StatusBarNotification;
    :cond_9
    add-int/lit8 v12, v14, 0x1

    move v14, v12

    goto/16 :goto_0

    .line 240
    .end local v10    # "resultset":[Landroid/service/notification/StatusBarNotification;
    :cond_a
    return-object v9

    .line 241
    .end local v4    # "active":[Landroid/service/notification/StatusBarNotification;
    .end local v6    # "dismissed":[Landroid/service/notification/StatusBarNotification;
    .end local v9    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/exsettings/notification/NotificationStation$HistoricalNotificationInfo;>;"
    :catch_0
    move-exception v7

    .line 242
    .local v7, "e":Landroid/os/RemoteException;
    sget-object v12, Lcom/android/exsettings/notification/NotificationStation;->TAG:Ljava/lang/String;

    const-string/jumbo v13, "Cannot load Notifications: "

    invoke-static {v12, v13, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 244
    const/4 v12, 0x0

    return-object v12
.end method

.method private loadPackageIconDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 267
    const/4 v1, 0x0

    .line 269
    .local v1, "icon":Landroid/graphics/drawable/Drawable;
    :try_start_0
    iget-object v2, p0, Lcom/android/exsettings/notification/NotificationStation;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, p1}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 274
    .end local v1    # "icon":Landroid/graphics/drawable/Drawable;
    :goto_0
    return-object v1

    .line 270
    .restart local v1    # "icon":Landroid/graphics/drawable/Drawable;
    :catch_0
    move-exception v0

    .line 271
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v2, Lcom/android/exsettings/notification/NotificationStation;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Cannot get application icon"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private loadPackageName(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 4
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 279
    :try_start_0
    iget-object v2, p0, Lcom/android/exsettings/notification/NotificationStation;->mPm:Landroid/content/pm/PackageManager;

    .line 280
    const/16 v3, 0x2000

    .line 279
    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 281
    .local v1, "info":Landroid/content/pm/ApplicationInfo;
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/exsettings/notification/NotificationStation;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 282
    .end local v1    # "info":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v0

    .line 283
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v2, Lcom/android/exsettings/notification/NotificationStation;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Cannot load package name"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 285
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    return-object p1
.end method

.method private static varargs logd(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 186
    return-void
.end method

.method private refreshList()V
    .locals 5

    .prologue
    .line 177
    invoke-direct {p0}, Lcom/android/exsettings/notification/NotificationStation;->loadNotifications()Ljava/util/List;

    move-result-object v0

    .line 178
    .local v0, "infos":Ljava/util/List;, "Ljava/util/List<Lcom/android/exsettings/notification/NotificationStation$HistoricalNotificationInfo;>;"
    if-eqz v0, :cond_0

    .line 179
    const-string/jumbo v1, "adding %d infos"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/android/exsettings/notification/NotificationStation;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 180
    iget-object v1, p0, Lcom/android/exsettings/notification/NotificationStation;->mAdapter:Lcom/android/exsettings/notification/NotificationStation$NotificationHistoryAdapter;

    invoke-virtual {v1}, Lcom/android/exsettings/notification/NotificationStation$NotificationHistoryAdapter;->clear()V

    .line 181
    iget-object v1, p0, Lcom/android/exsettings/notification/NotificationStation;->mAdapter:Lcom/android/exsettings/notification/NotificationStation$NotificationHistoryAdapter;

    invoke-virtual {v1, v0}, Lcom/android/exsettings/notification/NotificationStation$NotificationHistoryAdapter;->addAll(Ljava/util/Collection;)V

    .line 182
    iget-object v1, p0, Lcom/android/exsettings/notification/NotificationStation;->mAdapter:Lcom/android/exsettings/notification/NotificationStation$NotificationHistoryAdapter;

    iget-object v2, p0, Lcom/android/exsettings/notification/NotificationStation;->mNotificationSorter:Ljava/util/Comparator;

    invoke-virtual {v1, v2}, Lcom/android/exsettings/notification/NotificationStation$NotificationHistoryAdapter;->sort(Ljava/util/Comparator;)V

    .line 176
    :cond_0
    return-void
.end method

.method private startApplicationDetailsActivity(Ljava/lang/String;)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 358
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    .line 359
    const-string/jumbo v2, "package"

    const/4 v3, 0x0

    invoke-static {v2, p1, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 358
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 360
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/exsettings/notification/NotificationStation;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 361
    invoke-virtual {p0, v0}, Lcom/android/exsettings/notification/NotificationStation;->startActivity(Landroid/content/Intent;)V

    .line 357
    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 154
    const/16 v0, 0x4b

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 159
    const-string/jumbo v1, "onActivityCreated(%s)"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Lcom/android/exsettings/notification/NotificationStation;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 160
    invoke-super {p0, p1}, Lcom/android/exsettings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 162
    invoke-virtual {p0}, Lcom/android/exsettings/notification/NotificationStation;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 163
    .local v0, "listView":Landroid/widget/ListView;
    invoke-static {v0, v3}, Lcom/android/exsettings/Utils;->forceCustomPadding(Landroid/view/View;Z)V

    .line 165
    new-instance v1, Lcom/android/exsettings/notification/NotificationStation$NotificationHistoryAdapter;

    iget-object v2, p0, Lcom/android/exsettings/notification/NotificationStation;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v2}, Lcom/android/exsettings/notification/NotificationStation$NotificationHistoryAdapter;-><init>(Lcom/android/exsettings/notification/NotificationStation;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/exsettings/notification/NotificationStation;->mAdapter:Lcom/android/exsettings/notification/NotificationStation$NotificationHistoryAdapter;

    .line 166
    iget-object v1, p0, Lcom/android/exsettings/notification/NotificationStation;->mAdapter:Lcom/android/exsettings/notification/NotificationStation$NotificationHistoryAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 158
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 6
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 119
    const-string/jumbo v1, "onAttach(%s)"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/app/Activity;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/android/exsettings/notification/NotificationStation;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 120
    invoke-super {p0, p1}, Lcom/android/exsettings/SettingsPreferenceFragment;->onAttach(Landroid/app/Activity;)V

    .line 121
    iput-object p1, p0, Lcom/android/exsettings/notification/NotificationStation;->mContext:Landroid/content/Context;

    .line 122
    iget-object v1, p0, Lcom/android/exsettings/notification/NotificationStation;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/exsettings/notification/NotificationStation;->mPm:Landroid/content/pm/PackageManager;

    .line 124
    const-string/jumbo v1, "notification"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 123
    invoke-static {v1}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/exsettings/notification/NotificationStation;->mNoMan:Landroid/app/INotificationManager;

    .line 126
    :try_start_0
    iget-object v1, p0, Lcom/android/exsettings/notification/NotificationStation;->mListener:Landroid/service/notification/NotificationListenerService;

    iget-object v2, p0, Lcom/android/exsettings/notification/NotificationStation;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, p0, Lcom/android/exsettings/notification/NotificationStation;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 127
    invoke-virtual {p0}, Lcom/android/exsettings/notification/NotificationStation;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v5

    .line 126
    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4

    .line 126
    invoke-virtual {v1, v2, v3, v4}, Landroid/service/notification/NotificationListenerService;->registerAsSystemService(Landroid/content/Context;Landroid/content/ComponentName;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    :goto_0
    return-void

    .line 128
    :catch_0
    move-exception v0

    .line 129
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/android/exsettings/notification/NotificationStation;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Cannot register listener"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 135
    const-string/jumbo v1, "onCreate(%s)"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Lcom/android/exsettings/notification/NotificationStation;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 136
    invoke-super {p0, p1}, Lcom/android/exsettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 138
    invoke-virtual {p0}, Lcom/android/exsettings/notification/NotificationStation;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0092

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 139
    .local v0, "colorPrimaryDark":I
    new-instance v1, Landroid/graphics/LightingColorFilter;

    invoke-direct {v1, v0, v0}, Landroid/graphics/LightingColorFilter;-><init>(II)V

    iput-object v1, p0, Lcom/android/exsettings/notification/NotificationStation;->mFilter:Landroid/graphics/ColorFilter;

    .line 134
    return-void
.end method

.method public onDetach()V
    .locals 3

    .prologue
    .line 145
    :try_start_0
    iget-object v1, p0, Lcom/android/exsettings/notification/NotificationStation;->mListener:Landroid/service/notification/NotificationListenerService;

    invoke-virtual {v1}, Landroid/service/notification/NotificationListenerService;->unregisterAsSystemService()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    :goto_0
    invoke-super {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;->onDetach()V

    .line 143
    return-void

    .line 146
    :catch_0
    move-exception v0

    .line 147
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/android/exsettings/notification/NotificationStation;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Cannot unregister listener"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 171
    const-string/jumbo v0, "onResume()"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/exsettings/notification/NotificationStation;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 172
    invoke-super {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;->onResume()V

    .line 173
    invoke-direct {p0}, Lcom/android/exsettings/notification/NotificationStation;->refreshList()V

    .line 170
    return-void
.end method
