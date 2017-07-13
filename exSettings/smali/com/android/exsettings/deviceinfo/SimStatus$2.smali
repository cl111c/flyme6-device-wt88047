.class Lcom/android/exsettings/deviceinfo/SimStatus$2;
.super Landroid/telephony/PhoneStateListener;
.source "SimStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exsettings/deviceinfo/SimStatus;->updatePhoneInfos()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/deviceinfo/SimStatus;


# direct methods
.method constructor <init>(Lcom/android/exsettings/deviceinfo/SimStatus;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/exsettings/deviceinfo/SimStatus;
    .param p2, "$anonymous0"    # I

    .prologue
    .line 386
    iput-object p1, p0, Lcom/android/exsettings/deviceinfo/SimStatus$2;->this$0:Lcom/android/exsettings/deviceinfo/SimStatus;

    invoke-direct {p0, p2}, Landroid/telephony/PhoneStateListener;-><init>(I)V

    return-void
.end method


# virtual methods
.method public onDataConnectionStateChanged(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 389
    iget-object v0, p0, Lcom/android/exsettings/deviceinfo/SimStatus$2;->this$0:Lcom/android/exsettings/deviceinfo/SimStatus;

    invoke-static {v0}, Lcom/android/exsettings/deviceinfo/SimStatus;->-wrap1(Lcom/android/exsettings/deviceinfo/SimStatus;)V

    .line 390
    iget-object v0, p0, Lcom/android/exsettings/deviceinfo/SimStatus$2;->this$0:Lcom/android/exsettings/deviceinfo/SimStatus;

    invoke-static {v0}, Lcom/android/exsettings/deviceinfo/SimStatus;->-wrap2(Lcom/android/exsettings/deviceinfo/SimStatus;)V

    .line 388
    return-void
.end method

.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 1
    .param p1, "serviceState"    # Landroid/telephony/ServiceState;

    .prologue
    .line 400
    iget-object v0, p0, Lcom/android/exsettings/deviceinfo/SimStatus$2;->this$0:Lcom/android/exsettings/deviceinfo/SimStatus;

    invoke-static {v0, p1}, Lcom/android/exsettings/deviceinfo/SimStatus;->-wrap3(Lcom/android/exsettings/deviceinfo/SimStatus;Landroid/telephony/ServiceState;)V

    .line 399
    return-void
.end method

.method public onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 1
    .param p1, "signalStrength"    # Landroid/telephony/SignalStrength;

    .prologue
    .line 395
    iget-object v0, p0, Lcom/android/exsettings/deviceinfo/SimStatus$2;->this$0:Lcom/android/exsettings/deviceinfo/SimStatus;

    invoke-virtual {v0, p1}, Lcom/android/exsettings/deviceinfo/SimStatus;->updateSignalStrength(Landroid/telephony/SignalStrength;)V

    .line 394
    return-void
.end method
