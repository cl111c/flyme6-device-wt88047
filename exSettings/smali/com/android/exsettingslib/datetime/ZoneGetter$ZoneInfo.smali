.class Lcom/android/exsettingslib/datetime/ZoneGetter$ZoneInfo;
.super Ljava/lang/Object;
.source "ZoneGetter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettingslib/datetime/ZoneGetter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ZoneInfo"
.end annotation


# instance fields
.field mLocalizeInPicker:Z

.field mOlsonId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "olsonId"    # Ljava/lang/String;
    .param p2, "localizeInPicker"    # Z

    .prologue
    .line 229
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 230
    iput-object p1, p0, Lcom/android/exsettingslib/datetime/ZoneGetter$ZoneInfo;->mOlsonId:Ljava/lang/String;

    .line 231
    iput-boolean p2, p0, Lcom/android/exsettingslib/datetime/ZoneGetter$ZoneInfo;->mLocalizeInPicker:Z

    .line 229
    return-void
.end method
