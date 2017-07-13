.class Lcom/android/exsettings/RadioInfo$1;
.super Landroid/telephony/PhoneStateListener;
.source "RadioInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/RadioInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/RadioInfo;


# direct methods
.method constructor <init>(Lcom/android/exsettings/RadioInfo;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/exsettings/RadioInfo;

    .prologue
    .line 140
    iput-object p1, p0, Lcom/android/exsettings/RadioInfo$1;->this$0:Lcom/android/exsettings/RadioInfo;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallForwardingIndicatorChanged(Z)V
    .locals 1
    .param p1, "cfi"    # Z

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/exsettings/RadioInfo$1;->this$0:Lcom/android/exsettings/RadioInfo;

    invoke-static {v0, p1}, Lcom/android/exsettings/RadioInfo;->-set0(Lcom/android/exsettings/RadioInfo;Z)Z

    .line 168
    iget-object v0, p0, Lcom/android/exsettings/RadioInfo$1;->this$0:Lcom/android/exsettings/RadioInfo;

    invoke-static {v0}, Lcom/android/exsettings/RadioInfo;->-wrap10(Lcom/android/exsettings/RadioInfo;)V

    .line 166
    return-void
.end method

.method public onCellInfoChanged(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/CellInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 173
    .local p1, "arrayCi":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    iget-object v0, p0, Lcom/android/exsettings/RadioInfo$1;->this$0:Lcom/android/exsettings/RadioInfo;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onCellInfoChanged: arrayCi="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/exsettings/RadioInfo;->-wrap6(Lcom/android/exsettings/RadioInfo;Ljava/lang/String;)V

    .line 174
    iget-object v0, p0, Lcom/android/exsettings/RadioInfo$1;->this$0:Lcom/android/exsettings/RadioInfo;

    invoke-static {v0, p1}, Lcom/android/exsettings/RadioInfo;->-wrap12(Lcom/android/exsettings/RadioInfo;Ljava/util/List;)V

    .line 172
    return-void
.end method

.method public onCellLocationChanged(Landroid/telephony/CellLocation;)V
    .locals 1
    .param p1, "location"    # Landroid/telephony/CellLocation;

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/exsettings/RadioInfo$1;->this$0:Lcom/android/exsettings/RadioInfo;

    invoke-static {v0, p1}, Lcom/android/exsettings/RadioInfo;->-wrap20(Lcom/android/exsettings/RadioInfo;Landroid/telephony/CellLocation;)V

    .line 155
    return-void
.end method

.method public onDataActivity(I)V
    .locals 1
    .param p1, "direction"    # I

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/exsettings/RadioInfo$1;->this$0:Lcom/android/exsettings/RadioInfo;

    invoke-static {v0}, Lcom/android/exsettings/RadioInfo;->-wrap14(Lcom/android/exsettings/RadioInfo;)V

    .line 150
    return-void
.end method

.method public onDataConnectionRealTimeInfoChanged(Landroid/telephony/DataConnectionRealTimeInfo;)V
    .locals 3
    .param p1, "dcRtInfo"    # Landroid/telephony/DataConnectionRealTimeInfo;

    .prologue
    .line 179
    iget-object v0, p0, Lcom/android/exsettings/RadioInfo$1;->this$0:Lcom/android/exsettings/RadioInfo;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onDataConnectionRealTimeInfoChanged: dcRtInfo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/exsettings/RadioInfo;->-wrap6(Lcom/android/exsettings/RadioInfo;Ljava/lang/String;)V

    .line 180
    iget-object v0, p0, Lcom/android/exsettings/RadioInfo$1;->this$0:Lcom/android/exsettings/RadioInfo;

    invoke-static {v0, p1}, Lcom/android/exsettings/RadioInfo;->-wrap16(Lcom/android/exsettings/RadioInfo;Landroid/telephony/DataConnectionRealTimeInfo;)V

    .line 178
    return-void
.end method

.method public onDataConnectionStateChanged(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/exsettings/RadioInfo$1;->this$0:Lcom/android/exsettings/RadioInfo;

    invoke-static {v0}, Lcom/android/exsettings/RadioInfo;->-wrap13(Lcom/android/exsettings/RadioInfo;)V

    .line 144
    iget-object v0, p0, Lcom/android/exsettings/RadioInfo$1;->this$0:Lcom/android/exsettings/RadioInfo;

    invoke-static {v0}, Lcom/android/exsettings/RadioInfo;->-wrap15(Lcom/android/exsettings/RadioInfo;)V

    .line 145
    iget-object v0, p0, Lcom/android/exsettings/RadioInfo$1;->this$0:Lcom/android/exsettings/RadioInfo;

    invoke-static {v0}, Lcom/android/exsettings/RadioInfo;->-wrap25(Lcom/android/exsettings/RadioInfo;)V

    .line 146
    iget-object v0, p0, Lcom/android/exsettings/RadioInfo$1;->this$0:Lcom/android/exsettings/RadioInfo;

    invoke-static {v0}, Lcom/android/exsettings/RadioInfo;->-wrap24(Lcom/android/exsettings/RadioInfo;)V

    .line 142
    return-void
.end method

.method public onMessageWaitingIndicatorChanged(Z)V
    .locals 1
    .param p1, "mwi"    # Z

    .prologue
    .line 161
    iget-object v0, p0, Lcom/android/exsettings/RadioInfo$1;->this$0:Lcom/android/exsettings/RadioInfo;

    invoke-static {v0, p1}, Lcom/android/exsettings/RadioInfo;->-set1(Lcom/android/exsettings/RadioInfo;Z)Z

    .line 162
    iget-object v0, p0, Lcom/android/exsettings/RadioInfo$1;->this$0:Lcom/android/exsettings/RadioInfo;

    invoke-static {v0}, Lcom/android/exsettings/RadioInfo;->-wrap22(Lcom/android/exsettings/RadioInfo;)V

    .line 160
    return-void
.end method
