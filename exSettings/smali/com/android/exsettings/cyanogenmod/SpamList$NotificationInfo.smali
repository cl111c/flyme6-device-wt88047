.class final Lcom/android/exsettings/cyanogenmod/SpamList$NotificationInfo;
.super Lcom/android/exsettings/cyanogenmod/SpamList$ItemInfo;
.source "SpamList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/cyanogenmod/SpamList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "NotificationInfo"
.end annotation


# instance fields
.field appLabel:Ljava/lang/CharSequence;

.field count:I

.field date:J

.field messageText:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 154
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/exsettings/cyanogenmod/SpamList$ItemInfo;-><init>(Lcom/android/exsettings/cyanogenmod/SpamList$ItemInfo;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/exsettings/cyanogenmod/SpamList$NotificationInfo;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/android/exsettings/cyanogenmod/SpamList$NotificationInfo;-><init>()V

    return-void
.end method
