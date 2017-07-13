.class Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference$3;
.super Landroid/os/Handler;
.source "SimSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;


# direct methods
.method constructor <init>(Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;

    .prologue
    .line 859
    iput-object p1, p0, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference$3;->this$1:Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v6, 0x0

    .line 863
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 861
    :goto_0
    return-void

    .line 865
    :pswitch_0
    iget-object v3, p0, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference$3;->this$1:Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;

    iget-object v3, v3, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;->this$0:Lcom/android/exsettings/sim/SimSettings;

    invoke-static {v3}, Lcom/android/exsettings/sim/SimSettings;->-wrap1(Lcom/android/exsettings/sim/SimSettings;)V

    .line 868
    :pswitch_1
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 869
    .local v2, "result":I
    iget v1, p1, Landroid/os/Message;->arg2:I

    .line 870
    .local v1, "newProvisionedState":I
    iget-object v3, p0, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference$3;->this$1:Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "EVT_SHOW_RESULT_DLG result: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 871
    const-string/jumbo v5, " new provisioned state "

    .line 870
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;->-wrap1(Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;Ljava/lang/String;)V

    .line 872
    iget-object v3, p0, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference$3;->this$1:Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;

    invoke-virtual {v3}, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;->update()V

    .line 873
    if-eqz v2, :cond_1

    .line 874
    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    .line 875
    const v0, 0x7f0c0350

    .line 877
    .local v0, "msgId":I
    :goto_1
    iget-object v3, p0, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference$3;->this$1:Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;

    const/4 v4, 0x2

    invoke-static {v3, v4, v0}, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;->-wrap5(Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;II)V

    .line 881
    .end local v0    # "msgId":I
    :goto_2
    iget-object v3, p0, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference$3;->this$1:Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;

    invoke-static {v3}, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;->-get1(Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    .line 876
    :cond_0
    const v0, 0x7f0c0352

    .restart local v0    # "msgId":I
    goto :goto_1

    .line 879
    .end local v0    # "msgId":I
    :cond_1
    iget-object v3, p0, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference$3;->this$1:Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;

    const/4 v4, 0x3

    invoke-static {v3, v4, v6}, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;->-wrap5(Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;II)V

    goto :goto_2

    .line 885
    .end local v1    # "newProvisionedState":I
    .end local v2    # "result":I
    :pswitch_2
    iget-object v3, p0, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference$3;->this$1:Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;

    const-string/jumbo v4, "EVT_SHOW_PROGRESS_DLG"

    invoke-static {v3, v4}, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;->-wrap1(Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;Ljava/lang/String;)V

    .line 886
    iget-object v3, p0, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference$3;->this$1:Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;

    invoke-static {v3}, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;->-wrap6(Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;)V

    goto :goto_0

    .line 890
    :pswitch_3
    iget-object v3, p0, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference$3;->this$1:Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;

    const-string/jumbo v4, "EVT_PROGRESS_DLG_TIME_OUT"

    invoke-static {v3, v4}, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;->-wrap1(Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;Ljava/lang/String;)V

    .line 891
    iget-object v3, p0, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference$3;->this$1:Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;

    invoke-static {}, Lcom/android/exsettings/sim/SimSettings;->-get6()Landroid/app/ProgressDialog;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;->-wrap0(Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;Landroid/app/Dialog;)V

    .line 893
    iget-object v3, p0, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference$3;->this$1:Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;

    invoke-virtual {v3}, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;->update()V

    goto :goto_0

    .line 863
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
