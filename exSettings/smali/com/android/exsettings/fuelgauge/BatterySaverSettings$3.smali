.class Lcom/android/exsettings/fuelgauge/BatterySaverSettings$3;
.super Lcom/android/exsettings/notification/SettingPref;
.source "BatterySaverSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exsettings/fuelgauge/BatterySaverSettings;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/fuelgauge/BatterySaverSettings;


# direct methods
.method varargs constructor <init>(Lcom/android/exsettings/fuelgauge/BatterySaverSettings;ILjava/lang/String;Ljava/lang/String;I[I)V
    .locals 6
    .param p1, "this$0"    # Lcom/android/exsettings/fuelgauge/BatterySaverSettings;
    .param p2, "$anonymous0"    # I
    .param p3, "$anonymous1"    # Ljava/lang/String;
    .param p4, "$anonymous2"    # Ljava/lang/String;
    .param p5, "$anonymous3"    # I
    .param p6, "$anonymous4"    # [I

    .prologue
    .line 84
    iput-object p1, p0, Lcom/android/exsettings/fuelgauge/BatterySaverSettings$3;->this$0:Lcom/android/exsettings/fuelgauge/BatterySaverSettings;

    move-object v0, p0

    move v1, p2

    move-object v2, p3

    move-object v3, p4

    move v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/android/exsettings/notification/SettingPref;-><init>(ILjava/lang/String;Ljava/lang/String;I[I)V

    .line 87
    return-void
.end method


# virtual methods
.method protected getCaption(Landroid/content/res/Resources;I)Ljava/lang/String;
    .locals 3
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "value"    # I

    .prologue
    const/4 v2, 0x0

    .line 90
    if-lez p2, :cond_0

    const/16 v0, 0x64

    if-ge p2, v0, :cond_0

    .line 91
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 92
    invoke-static {p2}, Lcom/android/exsettings/Utils;->formatPercentage(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    .line 91
    const v1, 0x7f0c0b98

    invoke-virtual {p1, v1, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 94
    :cond_0
    const v0, 0x7f0c0b97

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
