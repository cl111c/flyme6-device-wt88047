.class Lcom/android/exsettings/RadioInfo$2;
.super Landroid/os/Handler;
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
    .line 184
    iput-object p1, p0, Lcom/android/exsettings/RadioInfo$2;->this$0:Lcom/android/exsettings/RadioInfo;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x1

    .line 187
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    .line 185
    :cond_0
    :goto_0
    return-void

    .line 189
    :sswitch_0
    iget-object v2, p0, Lcom/android/exsettings/RadioInfo$2;->this$0:Lcom/android/exsettings/RadioInfo;

    invoke-static {v2}, Lcom/android/exsettings/RadioInfo;->-wrap26(Lcom/android/exsettings/RadioInfo;)V

    goto :goto_0

    .line 193
    :sswitch_1
    iget-object v2, p0, Lcom/android/exsettings/RadioInfo$2;->this$0:Lcom/android/exsettings/RadioInfo;

    invoke-static {v2}, Lcom/android/exsettings/RadioInfo;->-wrap30(Lcom/android/exsettings/RadioInfo;)V

    goto :goto_0

    .line 197
    :sswitch_2
    iget-object v2, p0, Lcom/android/exsettings/RadioInfo$2;->this$0:Lcom/android/exsettings/RadioInfo;

    invoke-static {v2}, Lcom/android/exsettings/RadioInfo;->-wrap29(Lcom/android/exsettings/RadioInfo;)V

    .line 198
    iget-object v2, p0, Lcom/android/exsettings/RadioInfo$2;->this$0:Lcom/android/exsettings/RadioInfo;

    invoke-static {v2}, Lcom/android/exsettings/RadioInfo;->-wrap28(Lcom/android/exsettings/RadioInfo;)V

    .line 199
    iget-object v2, p0, Lcom/android/exsettings/RadioInfo$2;->this$0:Lcom/android/exsettings/RadioInfo;

    invoke-static {v2}, Lcom/android/exsettings/RadioInfo;->-wrap19(Lcom/android/exsettings/RadioInfo;)V

    goto :goto_0

    .line 203
    :sswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 204
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_2

    .line 205
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    const/4 v3, 0x0

    aget v1, v2, v3

    .line 206
    .local v1, "type":I
    iget-object v2, p0, Lcom/android/exsettings/RadioInfo$2;->this$0:Lcom/android/exsettings/RadioInfo;

    invoke-static {v2}, Lcom/android/exsettings/RadioInfo;->-get8(Lcom/android/exsettings/RadioInfo;)[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    if-lt v1, v2, :cond_1

    .line 207
    iget-object v2, p0, Lcom/android/exsettings/RadioInfo$2;->this$0:Lcom/android/exsettings/RadioInfo;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "EVENT_QUERY_PREFERRED_TYPE_DONE: unknown type="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/exsettings/RadioInfo;->-wrap6(Lcom/android/exsettings/RadioInfo;Ljava/lang/String;)V

    .line 209
    iget-object v2, p0, Lcom/android/exsettings/RadioInfo$2;->this$0:Lcom/android/exsettings/RadioInfo;

    invoke-static {v2}, Lcom/android/exsettings/RadioInfo;->-get8(Lcom/android/exsettings/RadioInfo;)[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    add-int/lit8 v1, v2, -0x1

    .line 211
    :cond_1
    iget-object v2, p0, Lcom/android/exsettings/RadioInfo$2;->this$0:Lcom/android/exsettings/RadioInfo;

    invoke-static {v2}, Lcom/android/exsettings/RadioInfo;->-get11(Lcom/android/exsettings/RadioInfo;)Landroid/widget/Spinner;

    move-result-object v2

    invoke-virtual {v2, v1, v5}, Landroid/widget/Spinner;->setSelection(IZ)V

    goto :goto_0

    .line 213
    .end local v1    # "type":I
    :cond_2
    iget-object v2, p0, Lcom/android/exsettings/RadioInfo$2;->this$0:Lcom/android/exsettings/RadioInfo;

    invoke-static {v2}, Lcom/android/exsettings/RadioInfo;->-get11(Lcom/android/exsettings/RadioInfo;)Landroid/widget/Spinner;

    move-result-object v2

    iget-object v3, p0, Lcom/android/exsettings/RadioInfo$2;->this$0:Lcom/android/exsettings/RadioInfo;

    invoke-static {v3}, Lcom/android/exsettings/RadioInfo;->-get8(Lcom/android/exsettings/RadioInfo;)[Ljava/lang/String;

    move-result-object v3

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3, v5}, Landroid/widget/Spinner;->setSelection(IZ)V

    goto :goto_0

    .line 217
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 218
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_0

    .line 219
    iget-object v2, p0, Lcom/android/exsettings/RadioInfo$2;->this$0:Lcom/android/exsettings/RadioInfo;

    invoke-static {v2}, Lcom/android/exsettings/RadioInfo;->-get10(Lcom/android/exsettings/RadioInfo;)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    .line 220
    const/16 v3, 0x3e8

    invoke-virtual {p0, v3}, Lcom/android/exsettings/RadioInfo$2;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 219
    invoke-interface {v2, v3}, Lcom/android/internal/telephony/Phone;->getPreferredNetworkType(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 224
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 225
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_3

    .line 226
    iget-object v3, p0, Lcom/android/exsettings/RadioInfo$2;->this$0:Lcom/android/exsettings/RadioInfo;

    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    invoke-static {v3, v2}, Lcom/android/exsettings/RadioInfo;->-wrap23(Lcom/android/exsettings/RadioInfo;Ljava/util/ArrayList;)V

    goto/16 :goto_0

    .line 228
    :cond_3
    iget-object v2, p0, Lcom/android/exsettings/RadioInfo$2;->this$0:Lcom/android/exsettings/RadioInfo;

    invoke-static {v2}, Lcom/android/exsettings/RadioInfo;->-get3(Lcom/android/exsettings/RadioInfo;)Landroid/widget/TextView;

    move-result-object v2

    const-string/jumbo v3, "unknown"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 232
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 233
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_4

    .line 234
    iget-object v2, p0, Lcom/android/exsettings/RadioInfo$2;->this$0:Lcom/android/exsettings/RadioInfo;

    invoke-static {v2}, Lcom/android/exsettings/RadioInfo;->-get12(Lcom/android/exsettings/RadioInfo;)Landroid/widget/EditText;

    move-result-object v2

    const-string/jumbo v3, "refresh error"

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 236
    :cond_4
    iget-object v2, p0, Lcom/android/exsettings/RadioInfo$2;->this$0:Lcom/android/exsettings/RadioInfo;

    invoke-static {v2}, Lcom/android/exsettings/RadioInfo;->-get12(Lcom/android/exsettings/RadioInfo;)Landroid/widget/EditText;

    move-result-object v3

    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 240
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_7
    iget-object v2, p0, Lcom/android/exsettings/RadioInfo$2;->this$0:Lcom/android/exsettings/RadioInfo;

    invoke-static {v2}, Lcom/android/exsettings/RadioInfo;->-get13(Lcom/android/exsettings/RadioInfo;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 241
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 242
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_0

    .line 243
    iget-object v2, p0, Lcom/android/exsettings/RadioInfo$2;->this$0:Lcom/android/exsettings/RadioInfo;

    invoke-static {v2}, Lcom/android/exsettings/RadioInfo;->-get12(Lcom/android/exsettings/RadioInfo;)Landroid/widget/EditText;

    move-result-object v2

    const-string/jumbo v3, "update error"

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 187
    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0xc8 -> :sswitch_1
        0x12c -> :sswitch_2
        0x3e8 -> :sswitch_3
        0x3e9 -> :sswitch_4
        0x3ea -> :sswitch_5
        0x3ed -> :sswitch_6
        0x3ee -> :sswitch_7
    .end sparse-switch
.end method
