.class Lcom/android/exsettings/sim/SimPreferenceDialog$2;
.super Ljava/lang/Object;
.source "SimPreferenceDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exsettings/sim/SimPreferenceDialog;->createEditDialog(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/sim/SimPreferenceDialog;

.field final synthetic val$tintSpinner:Landroid/widget/Spinner;


# direct methods
.method constructor <init>(Lcom/android/exsettings/sim/SimPreferenceDialog;Landroid/widget/Spinner;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/exsettings/sim/SimPreferenceDialog;
    .param p2, "val$tintSpinner"    # Landroid/widget/Spinner;

    .prologue
    .line 155
    iput-object p1, p0, Lcom/android/exsettings/sim/SimPreferenceDialog$2;->this$0:Lcom/android/exsettings/sim/SimPreferenceDialog;

    iput-object p2, p0, Lcom/android/exsettings/sim/SimPreferenceDialog$2;->val$tintSpinner:Landroid/widget/Spinner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 10
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 158
    iget-object v6, p0, Lcom/android/exsettings/sim/SimPreferenceDialog$2;->this$0:Lcom/android/exsettings/sim/SimPreferenceDialog;

    iget-object v6, v6, Lcom/android/exsettings/sim/SimPreferenceDialog;->mDialogLayout:Landroid/view/View;

    const v7, 0x7f13014a

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 160
    .local v1, "nameText":Landroid/widget/EditText;
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-interface {v6}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 161
    .local v0, "displayName":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/exsettings/sim/SimPreferenceDialog$2;->this$0:Lcom/android/exsettings/sim/SimPreferenceDialog;

    invoke-static {v6}, Lcom/android/exsettings/sim/SimPreferenceDialog;->-get0(Lcom/android/exsettings/sim/SimPreferenceDialog;)Landroid/telephony/SubscriptionInfo;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v2

    .line 162
    .local v2, "subId":I
    iget-object v6, p0, Lcom/android/exsettings/sim/SimPreferenceDialog$2;->this$0:Lcom/android/exsettings/sim/SimPreferenceDialog;

    invoke-static {v6}, Lcom/android/exsettings/sim/SimPreferenceDialog;->-get0(Lcom/android/exsettings/sim/SimPreferenceDialog;)Landroid/telephony/SubscriptionInfo;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/telephony/SubscriptionInfo;->setDisplayName(Ljava/lang/CharSequence;)V

    .line 163
    iget-object v6, p0, Lcom/android/exsettings/sim/SimPreferenceDialog$2;->this$0:Lcom/android/exsettings/sim/SimPreferenceDialog;

    invoke-static {v6}, Lcom/android/exsettings/sim/SimPreferenceDialog;->-get1(Lcom/android/exsettings/sim/SimPreferenceDialog;)Landroid/telephony/SubscriptionManager;

    move-result-object v6

    .line 164
    const-wide/16 v8, 0x2

    .line 163
    invoke-virtual {v6, v0, v2, v8, v9}, Landroid/telephony/SubscriptionManager;->setDisplayName(Ljava/lang/String;IJ)I

    .line 166
    iget-object v6, p0, Lcom/android/exsettings/sim/SimPreferenceDialog$2;->val$tintSpinner:Landroid/widget/Spinner;

    invoke-virtual {v6}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v5

    .line 167
    .local v5, "tintSelected":I
    iget-object v6, p0, Lcom/android/exsettings/sim/SimPreferenceDialog$2;->this$0:Lcom/android/exsettings/sim/SimPreferenceDialog;

    invoke-static {v6}, Lcom/android/exsettings/sim/SimPreferenceDialog;->-get0(Lcom/android/exsettings/sim/SimPreferenceDialog;)Landroid/telephony/SubscriptionInfo;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v3

    .line 168
    .local v3, "subscriptionId":I
    iget-object v6, p0, Lcom/android/exsettings/sim/SimPreferenceDialog$2;->this$0:Lcom/android/exsettings/sim/SimPreferenceDialog;

    invoke-static {v6}, Lcom/android/exsettings/sim/SimPreferenceDialog;->-get2(Lcom/android/exsettings/sim/SimPreferenceDialog;)[I

    move-result-object v6

    aget v4, v6, v5

    .line 169
    .local v4, "tint":I
    iget-object v6, p0, Lcom/android/exsettings/sim/SimPreferenceDialog$2;->this$0:Lcom/android/exsettings/sim/SimPreferenceDialog;

    invoke-static {v6}, Lcom/android/exsettings/sim/SimPreferenceDialog;->-get0(Lcom/android/exsettings/sim/SimPreferenceDialog;)Landroid/telephony/SubscriptionInfo;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/telephony/SubscriptionInfo;->setIconTint(I)V

    .line 170
    iget-object v6, p0, Lcom/android/exsettings/sim/SimPreferenceDialog$2;->this$0:Lcom/android/exsettings/sim/SimPreferenceDialog;

    invoke-static {v6}, Lcom/android/exsettings/sim/SimPreferenceDialog;->-get1(Lcom/android/exsettings/sim/SimPreferenceDialog;)Landroid/telephony/SubscriptionManager;

    move-result-object v6

    invoke-virtual {v6, v4, v3}, Landroid/telephony/SubscriptionManager;->setIconTint(II)I

    .line 171
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 157
    return-void
.end method
