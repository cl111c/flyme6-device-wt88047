.class final Lcom/android/exsettings/cyanogenmod/SpamList$PackageInfo;
.super Lcom/android/exsettings/cyanogenmod/SpamList$ItemInfo;
.source "SpamList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/cyanogenmod/SpamList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PackageInfo"
.end annotation


# instance fields
.field applicationLabel:Ljava/lang/CharSequence;

.field packageName:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 149
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/exsettings/cyanogenmod/SpamList$ItemInfo;-><init>(Lcom/android/exsettings/cyanogenmod/SpamList$ItemInfo;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/exsettings/cyanogenmod/SpamList$PackageInfo;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/android/exsettings/cyanogenmod/SpamList$PackageInfo;-><init>()V

    return-void
.end method
