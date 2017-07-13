.class public final Lcyanogenmod/providers/DataUsageContract;
.super Ljava/lang/Object;
.source "DataUsageContract.java"


# static fields
.field public static final BASE_CONTENT_URI:Landroid/net/Uri;

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final PROJECTION_ALL:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 35
    const-string/jumbo v0, "content://org.cyanogenmod.providers.datausage"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcyanogenmod/providers/DataUsageContract;->BASE_CONTENT_URI:Landroid/net/Uri;

    .line 39
    sget-object v0, Lcyanogenmod/providers/DataUsageContract;->BASE_CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v1, "datausage"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 38
    sput-object v0, Lcyanogenmod/providers/DataUsageContract;->CONTENT_URI:Landroid/net/Uri;

    .line 134
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    .line 135
    const-string/jumbo v1, "_id"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 136
    const-string/jumbo v1, "uid"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 137
    const-string/jumbo v1, "enable"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 138
    const-string/jumbo v1, "active"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 139
    const-string/jumbo v1, "label"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 140
    const-string/jumbo v1, "bytes"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 141
    const-string/jumbo v1, "slow_avg"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 142
    const-string/jumbo v1, "slow_samples"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 143
    const-string/jumbo v1, "fast_avg"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 144
    const-string/jumbo v1, "fast_samples"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 145
    const-string/jumbo v1, "extra"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 134
    sput-object v0, Lcyanogenmod/providers/DataUsageContract;->PROJECTION_ALL:[Ljava/lang/String;

    .line 28
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
