.class Lcom/android/exsettings/ColorModePreference$ColorTransformDescription;
.super Ljava/lang/Object;
.source "ColorModePreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/ColorModePreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ColorTransformDescription"
.end annotation


# instance fields
.field private colorTransform:I

.field private summary:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private transform:Landroid/view/Display$ColorTransform;


# direct methods
.method static synthetic -get0(Lcom/android/exsettings/ColorModePreference$ColorTransformDescription;)I
    .locals 1

    iget v0, p0, Lcom/android/exsettings/ColorModePreference$ColorTransformDescription;->colorTransform:I

    return v0
.end method

.method static synthetic -get1(Lcom/android/exsettings/ColorModePreference$ColorTransformDescription;)Landroid/view/Display$ColorTransform;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/ColorModePreference$ColorTransformDescription;->transform:Landroid/view/Display$ColorTransform;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/exsettings/ColorModePreference$ColorTransformDescription;I)I
    .locals 0

    iput p1, p0, Lcom/android/exsettings/ColorModePreference$ColorTransformDescription;->colorTransform:I

    return p1
.end method

.method static synthetic -set1(Lcom/android/exsettings/ColorModePreference$ColorTransformDescription;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/exsettings/ColorModePreference$ColorTransformDescription;->summary:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set2(Lcom/android/exsettings/ColorModePreference$ColorTransformDescription;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/exsettings/ColorModePreference$ColorTransformDescription;->title:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set3(Lcom/android/exsettings/ColorModePreference$ColorTransformDescription;Landroid/view/Display$ColorTransform;)Landroid/view/Display$ColorTransform;
    .locals 0

    iput-object p1, p0, Lcom/android/exsettings/ColorModePreference$ColorTransformDescription;->transform:Landroid/view/Display$ColorTransform;

    return-object p1
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/exsettings/ColorModePreference$ColorTransformDescription;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/android/exsettings/ColorModePreference$ColorTransformDescription;-><init>()V

    return-void
.end method
