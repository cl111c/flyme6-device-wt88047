.class public Lcom/android/exsettings/sim/SimPreferenceDialog;
.super Landroid/app/Activity;
.source "SimPreferenceDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exsettings/sim/SimPreferenceDialog$SelectColorAdapter;
    }
.end annotation


# instance fields
.field private final SIM_NAME:Ljava/lang/String;

.field private final TINT_POS:Ljava/lang/String;

.field mBuilder:Landroid/app/AlertDialog$Builder;

.field private mColorStrings:[Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field mDialogLayout:Landroid/view/View;

.field private mSlotId:I

.field private mSubInfoRecord:Landroid/telephony/SubscriptionInfo;

.field private mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field private mTintArr:[I

.field private mTintSelectorPos:I


# direct methods
.method static synthetic -get0(Lcom/android/exsettings/sim/SimPreferenceDialog;)Landroid/telephony/SubscriptionInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/sim/SimPreferenceDialog;->mSubInfoRecord:Landroid/telephony/SubscriptionInfo;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/exsettings/sim/SimPreferenceDialog;)Landroid/telephony/SubscriptionManager;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/sim/SimPreferenceDialog;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/exsettings/sim/SimPreferenceDialog;)[I
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/sim/SimPreferenceDialog;->mTintArr:[I

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/exsettings/sim/SimPreferenceDialog;)I
    .locals 1

    iget v0, p0, Lcom/android/exsettings/sim/SimPreferenceDialog;->mTintSelectorPos:I

    return v0
.end method

.method static synthetic -set0(Lcom/android/exsettings/sim/SimPreferenceDialog;I)I
    .locals 0

    iput p1, p0, Lcom/android/exsettings/sim/SimPreferenceDialog;->mTintSelectorPos:I

    return p1
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 55
    const-string/jumbo v0, "sim_name"

    iput-object v0, p0, Lcom/android/exsettings/sim/SimPreferenceDialog;->SIM_NAME:Ljava/lang/String;

    .line 56
    const-string/jumbo v0, "tint_pos"

    iput-object v0, p0, Lcom/android/exsettings/sim/SimPreferenceDialog;->TINT_POS:Ljava/lang/String;

    .line 44
    return-void
.end method

.method private createEditDialog(Landroid/os/Bundle;)V
    .locals 15
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 104
    iget-object v10, p0, Lcom/android/exsettings/sim/SimPreferenceDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 105
    .local v6, "res":Landroid/content/res/Resources;
    iget-object v10, p0, Lcom/android/exsettings/sim/SimPreferenceDialog;->mDialogLayout:Landroid/view/View;

    const v11, 0x7f13014a

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 106
    .local v3, "nameText":Landroid/widget/EditText;
    iget-object v10, p0, Lcom/android/exsettings/sim/SimPreferenceDialog;->mSubInfoRecord:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v10}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v3, v10}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 108
    iget-object v10, p0, Lcom/android/exsettings/sim/SimPreferenceDialog;->mDialogLayout:Landroid/view/View;

    const v11, 0x7f13014b

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Spinner;

    .line 109
    .local v8, "tintSpinner":Landroid/widget/Spinner;
    new-instance v0, Lcom/android/exsettings/sim/SimPreferenceDialog$SelectColorAdapter;

    iget-object v10, p0, Lcom/android/exsettings/sim/SimPreferenceDialog;->mContext:Landroid/content/Context;

    .line 110
    iget-object v11, p0, Lcom/android/exsettings/sim/SimPreferenceDialog;->mColorStrings:[Ljava/lang/String;

    const v12, 0x7f040103

    .line 109
    invoke-direct {v0, p0, v10, v12, v11}, Lcom/android/exsettings/sim/SimPreferenceDialog$SelectColorAdapter;-><init>(Lcom/android/exsettings/sim/SimPreferenceDialog;Landroid/content/Context;I[Ljava/lang/String;)V

    .line 111
    .local v0, "adapter":Lcom/android/exsettings/sim/SimPreferenceDialog$SelectColorAdapter;
    const v10, 0x1090009

    invoke-virtual {v0, v10}, Lcom/android/exsettings/sim/SimPreferenceDialog$SelectColorAdapter;->setDropDownViewResource(I)V

    .line 112
    invoke-virtual {v8, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 114
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v10, p0, Lcom/android/exsettings/sim/SimPreferenceDialog;->mTintArr:[I

    array-length v10, v10

    if-ge v2, v10, :cond_0

    .line 115
    iget-object v10, p0, Lcom/android/exsettings/sim/SimPreferenceDialog;->mTintArr:[I

    aget v10, v10, v2

    iget-object v11, p0, Lcom/android/exsettings/sim/SimPreferenceDialog;->mSubInfoRecord:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v11}, Landroid/telephony/SubscriptionInfo;->getIconTint()I

    move-result v11

    if-ne v10, v11, :cond_1

    .line 116
    invoke-virtual {v8, v2}, Landroid/widget/Spinner;->setSelection(I)V

    .line 117
    iput v2, p0, Lcom/android/exsettings/sim/SimPreferenceDialog;->mTintSelectorPos:I

    .line 122
    :cond_0
    new-instance v10, Lcom/android/exsettings/sim/SimPreferenceDialog$1;

    invoke-direct {v10, p0, v8}, Lcom/android/exsettings/sim/SimPreferenceDialog$1;-><init>(Lcom/android/exsettings/sim/SimPreferenceDialog;Landroid/widget/Spinner;)V

    invoke-virtual {v8, v10}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 135
    iget-object v10, p0, Lcom/android/exsettings/sim/SimPreferenceDialog;->mContext:Landroid/content/Context;

    .line 136
    const-string/jumbo v11, "phone"

    .line 135
    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/telephony/TelephonyManager;

    .line 137
    .local v9, "tm":Landroid/telephony/TelephonyManager;
    iget-object v10, p0, Lcom/android/exsettings/sim/SimPreferenceDialog;->mDialogLayout:Landroid/view/View;

    const v11, 0x7f130035

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 139
    .local v4, "numberView":Landroid/widget/TextView;
    iget-object v10, p0, Lcom/android/exsettings/sim/SimPreferenceDialog;->mSubInfoRecord:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v10}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v10

    .line 138
    invoke-virtual {v9, v10}, Landroid/telephony/TelephonyManager;->getLine1NumberForSubscriber(I)Ljava/lang/String;

    move-result-object v5

    .line 140
    .local v5, "rawNumber":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 141
    const v10, 0x104000e

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    :goto_1
    iget-object v10, p0, Lcom/android/exsettings/sim/SimPreferenceDialog;->mSubInfoRecord:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v10}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/telephony/TelephonyManager;->getSimOperatorNameForSubscription(I)Ljava/lang/String;

    move-result-object v7

    .line 148
    .local v7, "simCarrierName":Ljava/lang/String;
    iget-object v10, p0, Lcom/android/exsettings/sim/SimPreferenceDialog;->mDialogLayout:Landroid/view/View;

    const v11, 0x7f13014c

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 149
    .local v1, "carrierView":Landroid/widget/TextView;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_3

    .end local v7    # "simCarrierName":Ljava/lang/String;
    :goto_2
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 152
    iget-object v10, p0, Lcom/android/exsettings/sim/SimPreferenceDialog;->mBuilder:Landroid/app/AlertDialog$Builder;

    const v11, 0x7f0c0e28

    invoke-virtual {v6, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    .line 153
    iget-object v13, p0, Lcom/android/exsettings/sim/SimPreferenceDialog;->mSubInfoRecord:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v13}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v13

    add-int/lit8 v13, v13, 0x1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/4 v14, 0x0

    aput-object v13, v12, v14

    .line 152
    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 155
    iget-object v10, p0, Lcom/android/exsettings/sim/SimPreferenceDialog;->mBuilder:Landroid/app/AlertDialog$Builder;

    new-instance v11, Lcom/android/exsettings/sim/SimPreferenceDialog$2;

    invoke-direct {v11, p0, v8}, Lcom/android/exsettings/sim/SimPreferenceDialog$2;-><init>(Lcom/android/exsettings/sim/SimPreferenceDialog;Landroid/widget/Spinner;)V

    const v12, 0x7f0c05d7

    invoke-virtual {v10, v12, v11}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 175
    iget-object v10, p0, Lcom/android/exsettings/sim/SimPreferenceDialog;->mBuilder:Landroid/app/AlertDialog$Builder;

    new-instance v11, Lcom/android/exsettings/sim/SimPreferenceDialog$3;

    invoke-direct {v11, p0}, Lcom/android/exsettings/sim/SimPreferenceDialog$3;-><init>(Lcom/android/exsettings/sim/SimPreferenceDialog;)V

    const v12, 0x7f0c05d6

    invoke-virtual {v10, v12, v11}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 182
    iget-object v10, p0, Lcom/android/exsettings/sim/SimPreferenceDialog;->mBuilder:Landroid/app/AlertDialog$Builder;

    new-instance v11, Lcom/android/exsettings/sim/SimPreferenceDialog$4;

    invoke-direct {v11, p0}, Lcom/android/exsettings/sim/SimPreferenceDialog$4;-><init>(Lcom/android/exsettings/sim/SimPreferenceDialog;)V

    invoke-virtual {v10, v11}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    .line 189
    iget-object v10, p0, Lcom/android/exsettings/sim/SimPreferenceDialog;->mBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v10}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/AlertDialog;->show()V

    .line 103
    return-void

    .line 114
    .end local v1    # "carrierView":Landroid/widget/TextView;
    .end local v4    # "numberView":Landroid/widget/TextView;
    .end local v5    # "rawNumber":Ljava/lang/String;
    .end local v9    # "tm":Landroid/telephony/TelephonyManager;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 143
    .restart local v4    # "numberView":Landroid/widget/TextView;
    .restart local v5    # "rawNumber":Ljava/lang/String;
    .restart local v9    # "tm":Landroid/telephony/TelephonyManager;
    :cond_2
    invoke-static {v5}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 150
    .restart local v1    # "carrierView":Landroid/widget/TextView;
    .restart local v7    # "simCarrierName":Ljava/lang/String;
    :cond_3
    iget-object v10, p0, Lcom/android/exsettings/sim/SimPreferenceDialog;->mContext:Landroid/content/Context;

    const v11, 0x104000e

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_2
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 60
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 61
    iput-object p0, p0, Lcom/android/exsettings/sim/SimPreferenceDialog;->mContext:Landroid/content/Context;

    .line 62
    invoke-virtual {p0}, Lcom/android/exsettings/sim/SimPreferenceDialog;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 63
    .local v0, "extras":Landroid/os/Bundle;
    const-string/jumbo v2, "slot_id"

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/exsettings/sim/SimPreferenceDialog;->mSlotId:I

    .line 64
    iget-object v2, p0, Lcom/android/exsettings/sim/SimPreferenceDialog;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/exsettings/sim/SimPreferenceDialog;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 65
    iget-object v2, p0, Lcom/android/exsettings/sim/SimPreferenceDialog;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    iget v3, p0, Lcom/android/exsettings/sim/SimPreferenceDialog;->mSlotId:I

    invoke-virtual {v2, v3}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/android/exsettings/sim/SimPreferenceDialog;->mSubInfoRecord:Landroid/telephony/SubscriptionInfo;

    .line 66
    iget-object v2, p0, Lcom/android/exsettings/sim/SimPreferenceDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x107000a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v2

    iput-object v2, p0, Lcom/android/exsettings/sim/SimPreferenceDialog;->mTintArr:[I

    .line 67
    iget-object v2, p0, Lcom/android/exsettings/sim/SimPreferenceDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a006b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/exsettings/sim/SimPreferenceDialog;->mColorStrings:[Ljava/lang/String;

    .line 68
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/exsettings/sim/SimPreferenceDialog;->mTintSelectorPos:I

    .line 70
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/exsettings/sim/SimPreferenceDialog;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/exsettings/sim/SimPreferenceDialog;->mBuilder:Landroid/app/AlertDialog$Builder;

    .line 71
    iget-object v2, p0, Lcom/android/exsettings/sim/SimPreferenceDialog;->mContext:Landroid/content/Context;

    .line 72
    const-string/jumbo v3, "layout_inflater"

    .line 71
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 73
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f04009b

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/exsettings/sim/SimPreferenceDialog;->mDialogLayout:Landroid/view/View;

    .line 74
    iget-object v2, p0, Lcom/android/exsettings/sim/SimPreferenceDialog;->mBuilder:Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/exsettings/sim/SimPreferenceDialog;->mDialogLayout:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 76
    invoke-direct {p0, p1}, Lcom/android/exsettings/sim/SimPreferenceDialog;->createEditDialog(Landroid/os/Bundle;)V

    .line 59
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 92
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 94
    const-string/jumbo v3, "tint_pos"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 95
    .local v1, "pos":I
    iget-object v3, p0, Lcom/android/exsettings/sim/SimPreferenceDialog;->mDialogLayout:Landroid/view/View;

    const v4, 0x7f13014b

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    .line 96
    .local v2, "tintSpinner":Landroid/widget/Spinner;
    invoke-virtual {v2, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 97
    iput v1, p0, Lcom/android/exsettings/sim/SimPreferenceDialog;->mTintSelectorPos:I

    .line 99
    iget-object v3, p0, Lcom/android/exsettings/sim/SimPreferenceDialog;->mDialogLayout:Landroid/view/View;

    const v4, 0x7f13014a

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 100
    .local v0, "nameText":Landroid/widget/EditText;
    const-string/jumbo v3, "sim_name"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 91
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 81
    const-string/jumbo v1, "tint_pos"

    iget v2, p0, Lcom/android/exsettings/sim/SimPreferenceDialog;->mTintSelectorPos:I

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 83
    iget-object v1, p0, Lcom/android/exsettings/sim/SimPreferenceDialog;->mDialogLayout:Landroid/view/View;

    const v2, 0x7f13014a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 84
    .local v0, "nameText":Landroid/widget/EditText;
    const-string/jumbo v1, "sim_name"

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 80
    return-void
.end method
