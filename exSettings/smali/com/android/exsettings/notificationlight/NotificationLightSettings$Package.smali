.class Lcom/android/exsettings/notificationlight/NotificationLightSettings$Package;
.super Ljava/lang/Object;
.source "NotificationLightSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/notificationlight/NotificationLightSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Package"
.end annotation


# instance fields
.field public color:Ljava/lang/Integer;

.field public name:Ljava/lang/String;

.field public timeoff:Ljava/lang/Integer;

.field public timeon:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "color"    # Ljava/lang/Integer;
    .param p3, "timeon"    # Ljava/lang/Integer;
    .param p4, "timeoff"    # Ljava/lang/Integer;

    .prologue
    .line 538
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 539
    iput-object p1, p0, Lcom/android/exsettings/notificationlight/NotificationLightSettings$Package;->name:Ljava/lang/String;

    .line 540
    iput-object p2, p0, Lcom/android/exsettings/notificationlight/NotificationLightSettings$Package;->color:Ljava/lang/Integer;

    .line 541
    iput-object p3, p0, Lcom/android/exsettings/notificationlight/NotificationLightSettings$Package;->timeon:Ljava/lang/Integer;

    .line 542
    iput-object p4, p0, Lcom/android/exsettings/notificationlight/NotificationLightSettings$Package;->timeoff:Ljava/lang/Integer;

    .line 538
    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lcom/android/exsettings/notificationlight/NotificationLightSettings$Package;
    .locals 9
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x2

    const/4 v5, 0x1

    const/4 v6, -0x1

    const/4 v8, 0x0

    .line 558
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 559
    return-object v8

    .line 561
    :cond_0
    const-string/jumbo v4, "="

    invoke-virtual {p0, v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 562
    .local v0, "app":[Ljava/lang/String;
    array-length v4, v0

    if-eq v4, v7, :cond_1

    .line 563
    return-object v8

    .line 565
    :cond_1
    aget-object v4, v0, v5

    const-string/jumbo v5, ";"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    .line 566
    .local v3, "values":[Ljava/lang/String;
    array-length v4, v3

    const/4 v5, 0x3

    if-eq v4, v5, :cond_2

    .line 567
    return-object v8

    .line 570
    :cond_2
    :try_start_0
    new-instance v2, Lcom/android/exsettings/notificationlight/NotificationLightSettings$Package;

    const/4 v4, 0x0

    aget-object v4, v0, v4

    const/4 v5, 0x0

    aget-object v5, v3, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 571
    const/4 v6, 0x1

    aget-object v6, v3, v6

    .line 570
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 571
    const/4 v7, 0x2

    aget-object v7, v3, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 570
    invoke-direct {v2, v4, v5, v6, v7}, Lcom/android/exsettings/notificationlight/NotificationLightSettings$Package;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 572
    .local v2, "item":Lcom/android/exsettings/notificationlight/NotificationLightSettings$Package;
    return-object v2

    .line 573
    .end local v2    # "item":Lcom/android/exsettings/notificationlight/NotificationLightSettings$Package;
    :catch_0
    move-exception v1

    .line 574
    .local v1, "e":Ljava/lang/NumberFormatException;
    return-object v8
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 546
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 547
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/android/exsettings/notificationlight/NotificationLightSettings$Package;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 548
    const-string/jumbo v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 549
    iget-object v1, p0, Lcom/android/exsettings/notificationlight/NotificationLightSettings$Package;->color:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 550
    const-string/jumbo v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 551
    iget-object v1, p0, Lcom/android/exsettings/notificationlight/NotificationLightSettings$Package;->timeon:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 552
    const-string/jumbo v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 553
    iget-object v1, p0, Lcom/android/exsettings/notificationlight/NotificationLightSettings$Package;->timeoff:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 554
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
