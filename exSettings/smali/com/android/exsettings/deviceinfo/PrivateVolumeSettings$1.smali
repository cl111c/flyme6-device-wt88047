.class Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings$1;
.super Ljava/lang/Object;
.source "PrivateVolumeSettings.java"

# interfaces
.implements Lcom/android/exsettingslib/deviceinfo/StorageMeasurement$MeasurementReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;


# direct methods
.method constructor <init>(Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;

    .prologue
    .line 465
    iput-object p1, p0, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings$1;->this$0:Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDetailsChanged(Lcom/android/exsettingslib/deviceinfo/StorageMeasurement$MeasurementDetails;)V
    .locals 1
    .param p1, "details"    # Lcom/android/exsettingslib/deviceinfo/StorageMeasurement$MeasurementDetails;

    .prologue
    .line 468
    iget-object v0, p0, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings$1;->this$0:Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;

    invoke-static {v0, p1}, Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;->-wrap0(Lcom/android/exsettings/deviceinfo/PrivateVolumeSettings;Lcom/android/exsettingslib/deviceinfo/StorageMeasurement$MeasurementDetails;)V

    .line 467
    return-void
.end method
