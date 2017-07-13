.class public final enum Lcom/android/exsettings/profiles/TriggerPagerAdapter$TriggerFragments;
.super Ljava/lang/Enum;
.source "TriggerPagerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/profiles/TriggerPagerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TriggerFragments"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/exsettings/profiles/TriggerPagerAdapter$TriggerFragments;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/exsettings/profiles/TriggerPagerAdapter$TriggerFragments;

.field public static final enum BLUETOOTH:Lcom/android/exsettings/profiles/TriggerPagerAdapter$TriggerFragments;

.field public static final enum NFC:Lcom/android/exsettings/profiles/TriggerPagerAdapter$TriggerFragments;

.field public static final enum WIFI:Lcom/android/exsettings/profiles/TriggerPagerAdapter$TriggerFragments;


# instance fields
.field private mFragmentClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private mNameRes:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 172
    new-instance v0, Lcom/android/exsettings/profiles/TriggerPagerAdapter$TriggerFragments;

    const-string/jumbo v1, "WIFI"

    .line 175
    const-class v2, Lcom/android/exsettings/profiles/triggers/WifiTriggerFragment;

    const v3, 0x7f0c00f0

    .line 172
    invoke-direct {v0, v1, v4, v2, v3}, Lcom/android/exsettings/profiles/TriggerPagerAdapter$TriggerFragments;-><init>(Ljava/lang/String;ILjava/lang/Class;I)V

    .line 175
    sput-object v0, Lcom/android/exsettings/profiles/TriggerPagerAdapter$TriggerFragments;->WIFI:Lcom/android/exsettings/profiles/TriggerPagerAdapter$TriggerFragments;

    .line 176
    new-instance v0, Lcom/android/exsettings/profiles/TriggerPagerAdapter$TriggerFragments;

    const-string/jumbo v1, "BLUETOOTH"

    .line 179
    const-class v2, Lcom/android/exsettings/profiles/triggers/BluetoothTriggerFragment;

    const v3, 0x7f0c00f1

    .line 176
    invoke-direct {v0, v1, v5, v2, v3}, Lcom/android/exsettings/profiles/TriggerPagerAdapter$TriggerFragments;-><init>(Ljava/lang/String;ILjava/lang/Class;I)V

    .line 179
    sput-object v0, Lcom/android/exsettings/profiles/TriggerPagerAdapter$TriggerFragments;->BLUETOOTH:Lcom/android/exsettings/profiles/TriggerPagerAdapter$TriggerFragments;

    .line 180
    new-instance v0, Lcom/android/exsettings/profiles/TriggerPagerAdapter$TriggerFragments;

    const-string/jumbo v1, "NFC"

    .line 183
    const-class v2, Lcom/android/exsettings/profiles/triggers/NfcTriggerFragment;

    const v3, 0x7f0c00f2

    .line 180
    invoke-direct {v0, v1, v6, v2, v3}, Lcom/android/exsettings/profiles/TriggerPagerAdapter$TriggerFragments;-><init>(Ljava/lang/String;ILjava/lang/Class;I)V

    .line 183
    sput-object v0, Lcom/android/exsettings/profiles/TriggerPagerAdapter$TriggerFragments;->NFC:Lcom/android/exsettings/profiles/TriggerPagerAdapter$TriggerFragments;

    .line 171
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/exsettings/profiles/TriggerPagerAdapter$TriggerFragments;

    sget-object v1, Lcom/android/exsettings/profiles/TriggerPagerAdapter$TriggerFragments;->WIFI:Lcom/android/exsettings/profiles/TriggerPagerAdapter$TriggerFragments;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/exsettings/profiles/TriggerPagerAdapter$TriggerFragments;->BLUETOOTH:Lcom/android/exsettings/profiles/TriggerPagerAdapter$TriggerFragments;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/exsettings/profiles/TriggerPagerAdapter$TriggerFragments;->NFC:Lcom/android/exsettings/profiles/TriggerPagerAdapter$TriggerFragments;

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/exsettings/profiles/TriggerPagerAdapter$TriggerFragments;->$VALUES:[Lcom/android/exsettings/profiles/TriggerPagerAdapter$TriggerFragments;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/Class;I)V
    .locals 0
    .param p4, "nameRes"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Fragment;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 193
    .local p3, "fragmentClass":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Fragment;>;"
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 194
    iput-object p3, p0, Lcom/android/exsettings/profiles/TriggerPagerAdapter$TriggerFragments;->mFragmentClass:Ljava/lang/Class;

    .line 195
    iput p4, p0, Lcom/android/exsettings/profiles/TriggerPagerAdapter$TriggerFragments;->mNameRes:I

    .line 193
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/exsettings/profiles/TriggerPagerAdapter$TriggerFragments;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 171
    const-class v0, Lcom/android/exsettings/profiles/TriggerPagerAdapter$TriggerFragments;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/exsettings/profiles/TriggerPagerAdapter$TriggerFragments;

    return-object v0
.end method

.method public static values()[Lcom/android/exsettings/profiles/TriggerPagerAdapter$TriggerFragments;
    .locals 1

    .prologue
    .line 171
    sget-object v0, Lcom/android/exsettings/profiles/TriggerPagerAdapter$TriggerFragments;->$VALUES:[Lcom/android/exsettings/profiles/TriggerPagerAdapter$TriggerFragments;

    return-object v0
.end method


# virtual methods
.method public getFragmentClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Fragment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 204
    iget-object v0, p0, Lcom/android/exsettings/profiles/TriggerPagerAdapter$TriggerFragments;->mFragmentClass:Ljava/lang/Class;

    return-object v0
.end method

.method public getTitleRes()I
    .locals 1

    .prologue
    .line 207
    iget v0, p0, Lcom/android/exsettings/profiles/TriggerPagerAdapter$TriggerFragments;->mNameRes:I

    return v0
.end method
