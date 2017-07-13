.class public final enum Lcom/android/exsettings/profiles/actions/ItemListAdapter$RowType;
.super Ljava/lang/Enum;
.source "ItemListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/profiles/actions/ItemListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RowType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/exsettings/profiles/actions/ItemListAdapter$RowType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/exsettings/profiles/actions/ItemListAdapter$RowType;

.field public static final enum AIRPLANEMODE_ITEM:Lcom/android/exsettings/profiles/actions/ItemListAdapter$RowType;

.field public static final enum APP_GROUP_ITEM:Lcom/android/exsettings/profiles/actions/ItemListAdapter$RowType;

.field public static final enum BRIGHTNESS_ITEM:Lcom/android/exsettings/profiles/actions/ItemListAdapter$RowType;

.field public static final enum CONNECTION_ITEM:Lcom/android/exsettings/profiles/actions/ItemListAdapter$RowType;

.field public static final enum DISABLED_ITEM:Lcom/android/exsettings/profiles/actions/ItemListAdapter$RowType;

.field public static final enum DOZEMODE_ITEM:Lcom/android/exsettings/profiles/actions/ItemListAdapter$RowType;

.field public static final enum HEADER_ITEM:Lcom/android/exsettings/profiles/actions/ItemListAdapter$RowType;

.field public static final enum LOCKSCREENMODE_ITEM:Lcom/android/exsettings/profiles/actions/ItemListAdapter$RowType;

.field public static final enum NAME_ITEM:Lcom/android/exsettings/profiles/actions/ItemListAdapter$RowType;

.field public static final enum NOTIFICATIONLIGHTMODE_ITEM:Lcom/android/exsettings/profiles/actions/ItemListAdapter$RowType;

.field public static final enum RINGMODE_ITEM:Lcom/android/exsettings/profiles/actions/ItemListAdapter$RowType;

.field public static final enum TRIGGER_ITEM:Lcom/android/exsettings/profiles/actions/ItemListAdapter$RowType;

.field public static final enum VOLUME_STREAM_ITEM:Lcom/android/exsettings/profiles/actions/ItemListAdapter$RowType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 32
    new-instance v0, Lcom/android/exsettings/profiles/actions/ItemListAdapter$RowType;

    const-string/jumbo v1, "HEADER_ITEM"

    invoke-direct {v0, v1, v3}, Lcom/android/exsettings/profiles/actions/ItemListAdapter$RowType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/exsettings/profiles/actions/ItemListAdapter$RowType;->HEADER_ITEM:Lcom/android/exsettings/profiles/actions/ItemListAdapter$RowType;

    .line 33
    new-instance v0, Lcom/android/exsettings/profiles/actions/ItemListAdapter$RowType;

    const-string/jumbo v1, "DISABLED_ITEM"

    invoke-direct {v0, v1, v4}, Lcom/android/exsettings/profiles/actions/ItemListAdapter$RowType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/exsettings/profiles/actions/ItemListAdapter$RowType;->DISABLED_ITEM:Lcom/android/exsettings/profiles/actions/ItemListAdapter$RowType;

    .line 34
    new-instance v0, Lcom/android/exsettings/profiles/actions/ItemListAdapter$RowType;

    const-string/jumbo v1, "CONNECTION_ITEM"

    invoke-direct {v0, v1, v5}, Lcom/android/exsettings/profiles/actions/ItemListAdapter$RowType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/exsettings/profiles/actions/ItemListAdapter$RowType;->CONNECTION_ITEM:Lcom/android/exsettings/profiles/actions/ItemListAdapter$RowType;

    .line 35
    new-instance v0, Lcom/android/exsettings/profiles/actions/ItemListAdapter$RowType;

    const-string/jumbo v1, "VOLUME_STREAM_ITEM"

    invoke-direct {v0, v1, v6}, Lcom/android/exsettings/profiles/actions/ItemListAdapter$RowType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/exsettings/profiles/actions/ItemListAdapter$RowType;->VOLUME_STREAM_ITEM:Lcom/android/exsettings/profiles/actions/ItemListAdapter$RowType;

    .line 36
    new-instance v0, Lcom/android/exsettings/profiles/actions/ItemListAdapter$RowType;

    const-string/jumbo v1, "NAME_ITEM"

    invoke-direct {v0, v1, v7}, Lcom/android/exsettings/profiles/actions/ItemListAdapter$RowType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/exsettings/profiles/actions/ItemListAdapter$RowType;->NAME_ITEM:Lcom/android/exsettings/profiles/actions/ItemListAdapter$RowType;

    .line 37
    new-instance v0, Lcom/android/exsettings/profiles/actions/ItemListAdapter$RowType;

    const-string/jumbo v1, "RINGMODE_ITEM"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/exsettings/profiles/actions/ItemListAdapter$RowType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/exsettings/profiles/actions/ItemListAdapter$RowType;->RINGMODE_ITEM:Lcom/android/exsettings/profiles/actions/ItemListAdapter$RowType;

    .line 38
    new-instance v0, Lcom/android/exsettings/profiles/actions/ItemListAdapter$RowType;

    const-string/jumbo v1, "AIRPLANEMODE_ITEM"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/android/exsettings/profiles/actions/ItemListAdapter$RowType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/exsettings/profiles/actions/ItemListAdapter$RowType;->AIRPLANEMODE_ITEM:Lcom/android/exsettings/profiles/actions/ItemListAdapter$RowType;

    .line 39
    new-instance v0, Lcom/android/exsettings/profiles/actions/ItemListAdapter$RowType;

    const-string/jumbo v1, "LOCKSCREENMODE_ITEM"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/android/exsettings/profiles/actions/ItemListAdapter$RowType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/exsettings/profiles/actions/ItemListAdapter$RowType;->LOCKSCREENMODE_ITEM:Lcom/android/exsettings/profiles/actions/ItemListAdapter$RowType;

    .line 40
    new-instance v0, Lcom/android/exsettings/profiles/actions/ItemListAdapter$RowType;

    const-string/jumbo v1, "TRIGGER_ITEM"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/android/exsettings/profiles/actions/ItemListAdapter$RowType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/exsettings/profiles/actions/ItemListAdapter$RowType;->TRIGGER_ITEM:Lcom/android/exsettings/profiles/actions/ItemListAdapter$RowType;

    .line 41
    new-instance v0, Lcom/android/exsettings/profiles/actions/ItemListAdapter$RowType;

    const-string/jumbo v1, "APP_GROUP_ITEM"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/android/exsettings/profiles/actions/ItemListAdapter$RowType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/exsettings/profiles/actions/ItemListAdapter$RowType;->APP_GROUP_ITEM:Lcom/android/exsettings/profiles/actions/ItemListAdapter$RowType;

    .line 42
    new-instance v0, Lcom/android/exsettings/profiles/actions/ItemListAdapter$RowType;

    const-string/jumbo v1, "BRIGHTNESS_ITEM"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/android/exsettings/profiles/actions/ItemListAdapter$RowType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/exsettings/profiles/actions/ItemListAdapter$RowType;->BRIGHTNESS_ITEM:Lcom/android/exsettings/profiles/actions/ItemListAdapter$RowType;

    .line 43
    new-instance v0, Lcom/android/exsettings/profiles/actions/ItemListAdapter$RowType;

    const-string/jumbo v1, "DOZEMODE_ITEM"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/android/exsettings/profiles/actions/ItemListAdapter$RowType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/exsettings/profiles/actions/ItemListAdapter$RowType;->DOZEMODE_ITEM:Lcom/android/exsettings/profiles/actions/ItemListAdapter$RowType;

    .line 44
    new-instance v0, Lcom/android/exsettings/profiles/actions/ItemListAdapter$RowType;

    const-string/jumbo v1, "NOTIFICATIONLIGHTMODE_ITEM"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/android/exsettings/profiles/actions/ItemListAdapter$RowType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/exsettings/profiles/actions/ItemListAdapter$RowType;->NOTIFICATIONLIGHTMODE_ITEM:Lcom/android/exsettings/profiles/actions/ItemListAdapter$RowType;

    .line 31
    const/16 v0, 0xd

    new-array v0, v0, [Lcom/android/exsettings/profiles/actions/ItemListAdapter$RowType;

    sget-object v1, Lcom/android/exsettings/profiles/actions/ItemListAdapter$RowType;->HEADER_ITEM:Lcom/android/exsettings/profiles/actions/ItemListAdapter$RowType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/exsettings/profiles/actions/ItemListAdapter$RowType;->DISABLED_ITEM:Lcom/android/exsettings/profiles/actions/ItemListAdapter$RowType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/exsettings/profiles/actions/ItemListAdapter$RowType;->CONNECTION_ITEM:Lcom/android/exsettings/profiles/actions/ItemListAdapter$RowType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/exsettings/profiles/actions/ItemListAdapter$RowType;->VOLUME_STREAM_ITEM:Lcom/android/exsettings/profiles/actions/ItemListAdapter$RowType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/exsettings/profiles/actions/ItemListAdapter$RowType;->NAME_ITEM:Lcom/android/exsettings/profiles/actions/ItemListAdapter$RowType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/android/exsettings/profiles/actions/ItemListAdapter$RowType;->RINGMODE_ITEM:Lcom/android/exsettings/profiles/actions/ItemListAdapter$RowType;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/exsettings/profiles/actions/ItemListAdapter$RowType;->AIRPLANEMODE_ITEM:Lcom/android/exsettings/profiles/actions/ItemListAdapter$RowType;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/exsettings/profiles/actions/ItemListAdapter$RowType;->LOCKSCREENMODE_ITEM:Lcom/android/exsettings/profiles/actions/ItemListAdapter$RowType;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/exsettings/profiles/actions/ItemListAdapter$RowType;->TRIGGER_ITEM:Lcom/android/exsettings/profiles/actions/ItemListAdapter$RowType;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/exsettings/profiles/actions/ItemListAdapter$RowType;->APP_GROUP_ITEM:Lcom/android/exsettings/profiles/actions/ItemListAdapter$RowType;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/exsettings/profiles/actions/ItemListAdapter$RowType;->BRIGHTNESS_ITEM:Lcom/android/exsettings/profiles/actions/ItemListAdapter$RowType;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/exsettings/profiles/actions/ItemListAdapter$RowType;->DOZEMODE_ITEM:Lcom/android/exsettings/profiles/actions/ItemListAdapter$RowType;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/exsettings/profiles/actions/ItemListAdapter$RowType;->NOTIFICATIONLIGHTMODE_ITEM:Lcom/android/exsettings/profiles/actions/ItemListAdapter$RowType;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/exsettings/profiles/actions/ItemListAdapter$RowType;->$VALUES:[Lcom/android/exsettings/profiles/actions/ItemListAdapter$RowType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/exsettings/profiles/actions/ItemListAdapter$RowType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 31
    const-class v0, Lcom/android/exsettings/profiles/actions/ItemListAdapter$RowType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/exsettings/profiles/actions/ItemListAdapter$RowType;

    return-object v0
.end method

.method public static values()[Lcom/android/exsettings/profiles/actions/ItemListAdapter$RowType;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/android/exsettings/profiles/actions/ItemListAdapter$RowType;->$VALUES:[Lcom/android/exsettings/profiles/actions/ItemListAdapter$RowType;

    return-object v0
.end method
