.class Lcom/android/exsettings/sim/SimDialogActivity$3;
.super Ljava/lang/Object;
.source "SimDialogActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exsettings/sim/SimDialogActivity;->createDialog(Landroid/content/Context;I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/sim/SimDialogActivity;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$id:I

.field final synthetic val$smsSubInfoList:Ljava/util/ArrayList;

.field final synthetic val$subInfoList:Ljava/util/List;

.field final synthetic val$subscriptionManager:Landroid/telephony/SubscriptionManager;


# direct methods
.method constructor <init>(Lcom/android/exsettings/sim/SimDialogActivity;ILjava/util/List;Landroid/telephony/SubscriptionManager;Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/exsettings/sim/SimDialogActivity;
    .param p2, "val$id"    # I
    .param p4, "val$subscriptionManager"    # Landroid/telephony/SubscriptionManager;
    .param p5, "val$context"    # Landroid/content/Context;

    .prologue
    .line 176
    .local p3, "val$subInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    .local p6, "val$smsSubInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SubscriptionInfo;>;"
    iput-object p1, p0, Lcom/android/exsettings/sim/SimDialogActivity$3;->this$0:Lcom/android/exsettings/sim/SimDialogActivity;

    iput p2, p0, Lcom/android/exsettings/sim/SimDialogActivity$3;->val$id:I

    iput-object p3, p0, Lcom/android/exsettings/sim/SimDialogActivity$3;->val$subInfoList:Ljava/util/List;

    iput-object p4, p0, Lcom/android/exsettings/sim/SimDialogActivity$3;->val$subscriptionManager:Landroid/telephony/SubscriptionManager;

    iput-object p5, p0, Lcom/android/exsettings/sim/SimDialogActivity$3;->val$context:Landroid/content/Context;

    iput-object p6, p0, Lcom/android/exsettings/sim/SimDialogActivity$3;->val$smsSubInfoList:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 10
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "value"    # I

    .prologue
    const/4 v9, 0x1

    const/4 v7, 0x0

    .line 182
    iget v8, p0, Lcom/android/exsettings/sim/SimDialogActivity$3;->val$id:I

    packed-switch v8, :pswitch_data_0

    .line 229
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Invalid dialog type "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 230
    iget v9, p0, Lcom/android/exsettings/sim/SimDialogActivity$3;->val$id:I

    .line 229
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 230
    const-string/jumbo v9, " in SIM dialog."

    .line 229
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 184
    :pswitch_0
    iget-object v7, p0, Lcom/android/exsettings/sim/SimDialogActivity$3;->val$subInfoList:Ljava/util/List;

    invoke-interface {v7, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/SubscriptionInfo;

    .line 185
    .local v5, "sir":Landroid/telephony/SubscriptionInfo;
    iget-object v7, p0, Lcom/android/exsettings/sim/SimDialogActivity$3;->val$subscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v7}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionInfo()Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    .line 187
    .local v0, "defaultSub":Landroid/telephony/SubscriptionInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v7

    .line 188
    invoke-virtual {v5}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v8

    .line 187
    if-eq v7, v8, :cond_1

    .line 189
    :cond_0
    iget-object v7, p0, Lcom/android/exsettings/sim/SimDialogActivity$3;->val$context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v8

    invoke-static {v7, v8}, Lcom/android/exsettings/sim/SimDialogActivity;->-wrap1(Landroid/content/Context;I)V

    .line 233
    .end local v0    # "defaultSub":Landroid/telephony/SubscriptionInfo;
    .end local v5    # "sir":Landroid/telephony/SubscriptionInfo;
    :cond_1
    :goto_0
    iget-object v7, p0, Lcom/android/exsettings/sim/SimDialogActivity$3;->this$0:Lcom/android/exsettings/sim/SimDialogActivity;

    invoke-virtual {v7}, Lcom/android/exsettings/sim/SimDialogActivity;->finish()V

    .line 178
    return-void

    .line 194
    :pswitch_1
    iget-object v8, p0, Lcom/android/exsettings/sim/SimDialogActivity$3;->val$context:Landroid/content/Context;

    invoke-static {v8}, Landroid/telecom/TelecomManager;->from(Landroid/content/Context;)Landroid/telecom/TelecomManager;

    move-result-object v6

    .line 196
    .local v6, "telecomManager":Landroid/telecom/TelecomManager;
    invoke-virtual {v6}, Landroid/telecom/TelecomManager;->getCallCapablePhoneAccounts()Ljava/util/List;

    move-result-object v4

    .line 197
    .local v4, "phoneAccountsList":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/PhoneAccountHandle;>;"
    iget-object v8, p0, Lcom/android/exsettings/sim/SimDialogActivity$3;->this$0:Lcom/android/exsettings/sim/SimDialogActivity;

    .line 198
    if-ge p2, v9, :cond_2

    .line 197
    :goto_1
    invoke-static {v8, v7}, Lcom/android/exsettings/sim/SimDialogActivity;->-wrap3(Lcom/android/exsettings/sim/SimDialogActivity;Landroid/telecom/PhoneAccountHandle;)V

    goto :goto_0

    .line 198
    :cond_2
    add-int/lit8 v7, p2, -0x1

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telecom/PhoneAccountHandle;

    goto :goto_1

    .line 201
    .end local v4    # "phoneAccountsList":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/PhoneAccountHandle;>;"
    .end local v6    # "telecomManager":Landroid/telecom/TelecomManager;
    :pswitch_2
    const/4 v3, 0x0

    .line 202
    .local v3, "isSmsPrompt":Z
    if-ge p2, v9, :cond_3

    .line 203
    const/4 v3, 0x0

    .line 204
    iget-object v7, p0, Lcom/android/exsettings/sim/SimDialogActivity$3;->val$context:Landroid/content/Context;

    const/4 v8, -0x1

    invoke-static {v7, v8}, Lcom/android/exsettings/sim/SimDialogActivity;->-wrap2(Landroid/content/Context;I)V

    .line 214
    :goto_2
    invoke-static {}, Lcom/android/exsettings/sim/SimDialogActivity;->-get0()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "isSmsPrompt: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    :try_start_0
    iget-object v7, p0, Lcom/android/exsettings/sim/SimDialogActivity$3;->this$0:Lcom/android/exsettings/sim/SimDialogActivity;

    invoke-static {v7}, Lcom/android/exsettings/sim/SimDialogActivity;->-get1(Lcom/android/exsettings/sim/SimDialogActivity;)Lcom/android/internal/telephony/IExtTelephony;

    move-result-object v7

    invoke-interface {v7, v3}, Lcom/android/internal/telephony/IExtTelephony;->setSMSPromptEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 224
    :goto_3
    iget-object v7, p0, Lcom/android/exsettings/sim/SimDialogActivity$3;->this$0:Lcom/android/exsettings/sim/SimDialogActivity;

    invoke-static {v7}, Lcom/android/exsettings/sim/SimDialogActivity;->-get1(Lcom/android/exsettings/sim/SimDialogActivity;)Lcom/android/internal/telephony/IExtTelephony;

    move-result-object v7

    if-nez v7, :cond_1

    .line 225
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/telephony/SmsManager;->setSMSPromptEnabled(Z)V

    goto :goto_0

    .line 206
    :cond_3
    iget-object v7, p0, Lcom/android/exsettings/sim/SimDialogActivity$3;->val$smsSubInfoList:Ljava/util/ArrayList;

    invoke-virtual {v7, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/SubscriptionInfo;

    .line 207
    .restart local v5    # "sir":Landroid/telephony/SubscriptionInfo;
    if-eqz v5, :cond_4

    .line 208
    iget-object v7, p0, Lcom/android/exsettings/sim/SimDialogActivity$3;->val$context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v8

    invoke-static {v7, v8}, Lcom/android/exsettings/sim/SimDialogActivity;->-wrap2(Landroid/content/Context;I)V

    .line 212
    :goto_4
    invoke-static {}, Lcom/android/exsettings/sim/SimDialogActivity;->-get0()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "SubscriptionInfo:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 210
    :cond_4
    const/4 v3, 0x1

    goto :goto_4

    .line 219
    .end local v5    # "sir":Landroid/telephony/SubscriptionInfo;
    :catch_0
    move-exception v2

    .line 220
    .local v2, "ex":Ljava/lang/NullPointerException;
    invoke-static {}, Lcom/android/exsettings/sim/SimDialogActivity;->-get0()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "NullPointerException @setSMSPromptEnabled"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 217
    .end local v2    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v1

    .line 218
    .local v1, "ex":Landroid/os/RemoteException;
    invoke-static {}, Lcom/android/exsettings/sim/SimDialogActivity;->-get0()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "RemoteException @setSMSPromptEnabled"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 182
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
