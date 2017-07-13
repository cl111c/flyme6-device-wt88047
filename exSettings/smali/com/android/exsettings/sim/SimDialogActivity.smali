.class public Lcom/android/exsettings/sim/SimDialogActivity;
.super Landroid/app/Activity;
.source "SimDialogActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exsettings/sim/SimDialogActivity$SelectAccountListAdapter;
    }
.end annotation


# static fields
.field public static DIALOG_TYPE_KEY:Ljava/lang/String;

.field public static PREFERRED_SIM:Ljava/lang/String;

.field private static TAG:Ljava/lang/String;


# instance fields
.field private mExtTelephony:Lcom/android/internal/telephony/IExtTelephony;

.field private mHideAlwaysAsk:Z


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/exsettings/sim/SimDialogActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/exsettings/sim/SimDialogActivity;)Lcom/android/internal/telephony/IExtTelephony;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/sim/SimDialogActivity;->mExtTelephony:Lcom/android/internal/telephony/IExtTelephony;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/exsettings/sim/SimDialogActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/exsettings/sim/SimDialogActivity;->mHideAlwaysAsk:Z

    return v0
.end method

.method static synthetic -wrap0(Lcom/android/exsettings/sim/SimDialogActivity;I)Landroid/telecom/PhoneAccountHandle;
    .locals 1
    .param p1, "subId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/exsettings/sim/SimDialogActivity;->subscriptionIdToPhoneAccountHandle(I)Landroid/telecom/PhoneAccountHandle;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Landroid/content/Context;I)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subId"    # I

    .prologue
    invoke-static {p0, p1}, Lcom/android/exsettings/sim/SimDialogActivity;->setDefaultDataSubId(Landroid/content/Context;I)V

    return-void
.end method

.method static synthetic -wrap2(Landroid/content/Context;I)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subId"    # I

    .prologue
    invoke-static {p0, p1}, Lcom/android/exsettings/sim/SimDialogActivity;->setDefaultSmsSubId(Landroid/content/Context;I)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/exsettings/sim/SimDialogActivity;Landroid/telecom/PhoneAccountHandle;)V
    .locals 0
    .param p1, "phoneAccount"    # Landroid/telecom/PhoneAccountHandle;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/exsettings/sim/SimDialogActivity;->setUserSelectedOutgoingPhoneAccount(Landroid/telecom/PhoneAccountHandle;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    const-string/jumbo v0, "SimDialogActivity"

    sput-object v0, Lcom/android/exsettings/sim/SimDialogActivity;->TAG:Ljava/lang/String;

    .line 60
    const-string/jumbo v0, "preferred_sim"

    sput-object v0, Lcom/android/exsettings/sim/SimDialogActivity;->PREFERRED_SIM:Ljava/lang/String;

    .line 61
    const-string/jumbo v0, "dialog_type"

    sput-object v0, Lcom/android/exsettings/sim/SimDialogActivity;->DIALOG_TYPE_KEY:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/exsettings/sim/SimDialogActivity;->mHideAlwaysAsk:Z

    .line 71
    const-string/jumbo v0, "extphone"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 70
    invoke-static {v0}, Lcom/android/internal/telephony/IExtTelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IExtTelephony;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/sim/SimDialogActivity;->mExtTelephony:Lcom/android/internal/telephony/IExtTelephony;

    .line 57
    return-void
.end method

.method private displayPreferredDialog(I)V
    .locals 7
    .param p1, "slotId"    # I

    .prologue
    .line 96
    invoke-virtual {p0}, Lcom/android/exsettings/sim/SimDialogActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 97
    .local v2, "res":Landroid/content/res/Resources;
    invoke-virtual {p0}, Lcom/android/exsettings/sim/SimDialogActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 98
    .local v1, "context":Landroid/content/Context;
    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v3

    .line 101
    .local v3, "sir":Landroid/telephony/SubscriptionInfo;
    if-eqz v3, :cond_0

    .line 102
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 103
    .local v0, "alertDialogBuilder":Landroid/app/AlertDialog$Builder;
    const v4, 0x7f0c0838

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 104
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    .line 105
    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const v5, 0x7f0c0839

    .line 104
    invoke-virtual {v2, v5, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 107
    new-instance v4, Lcom/android/exsettings/sim/SimDialogActivity$1;

    invoke-direct {v4, p0, v3, v1}, Lcom/android/exsettings/sim/SimDialogActivity$1;-><init>(Lcom/android/exsettings/sim/SimDialogActivity;Landroid/telephony/SubscriptionInfo;Landroid/content/Context;)V

    const v5, 0x7f0c0503

    invoke-virtual {v0, v5, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 120
    new-instance v4, Lcom/android/exsettings/sim/SimDialogActivity$2;

    invoke-direct {v4, p0}, Lcom/android/exsettings/sim/SimDialogActivity$2;-><init>(Lcom/android/exsettings/sim/SimDialogActivity;)V

    const v5, 0x7f0c0504

    invoke-virtual {v0, v5, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 128
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    .line 95
    .end local v0    # "alertDialogBuilder":Landroid/app/AlertDialog$Builder;
    :goto_0
    return-void

    .line 130
    :cond_0
    invoke-virtual {p0}, Lcom/android/exsettings/sim/SimDialogActivity;->finish()V

    goto :goto_0
.end method

.method private static setDefaultDataSubId(Landroid/content/Context;I)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subId"    # I

    .prologue
    .line 135
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    .line 136
    .local v0, "subscriptionManager":Landroid/telephony/SubscriptionManager;
    invoke-virtual {v0, p1}, Landroid/telephony/SubscriptionManager;->setDefaultDataSubId(I)V

    .line 137
    const v1, 0x7f0c0e21

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 134
    return-void
.end method

.method private static setDefaultSmsSubId(Landroid/content/Context;I)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subId"    # I

    .prologue
    .line 141
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    .line 142
    .local v0, "subscriptionManager":Landroid/telephony/SubscriptionManager;
    invoke-virtual {v0, p1}, Landroid/telephony/SubscriptionManager;->setDefaultSmsSubId(I)V

    .line 140
    return-void
.end method

.method private setUserSelectedOutgoingPhoneAccount(Landroid/telecom/PhoneAccountHandle;)V
    .locals 1
    .param p1, "phoneAccount"    # Landroid/telecom/PhoneAccountHandle;

    .prologue
    .line 146
    invoke-static {p0}, Landroid/telecom/TelecomManager;->from(Landroid/content/Context;)Landroid/telecom/TelecomManager;

    move-result-object v0

    .line 147
    .local v0, "telecomManager":Landroid/telecom/TelecomManager;
    invoke-virtual {v0, p1}, Landroid/telecom/TelecomManager;->setUserSelectedOutgoingPhoneAccount(Landroid/telecom/PhoneAccountHandle;)V

    .line 145
    return-void
.end method

.method private subscriptionIdToPhoneAccountHandle(I)Landroid/telecom/PhoneAccountHandle;
    .locals 6
    .param p1, "subId"    # I

    .prologue
    .line 151
    invoke-static {p0}, Landroid/telecom/TelecomManager;->from(Landroid/content/Context;)Landroid/telecom/TelecomManager;

    move-result-object v3

    .line 152
    .local v3, "telecomManager":Landroid/telecom/TelecomManager;
    invoke-static {p0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v4

    .line 154
    .local v4, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v3}, Landroid/telecom/TelecomManager;->getCallCapablePhoneAccounts()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v2

    .line 156
    .local v2, "phoneAccounts":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/telecom/PhoneAccountHandle;>;"
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 157
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/PhoneAccountHandle;

    .line 158
    .local v1, "phoneAccountHandle":Landroid/telecom/PhoneAccountHandle;
    invoke-virtual {v3, v1}, Landroid/telecom/TelecomManager;->getPhoneAccount(Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/PhoneAccount;

    move-result-object v0

    .line 159
    .local v0, "phoneAccount":Landroid/telecom/PhoneAccount;
    invoke-virtual {v4, v0}, Landroid/telephony/TelephonyManager;->getSubIdForPhoneAccount(Landroid/telecom/PhoneAccount;)I

    move-result v5

    if-ne p1, v5, :cond_0

    .line 160
    return-object v1

    .line 164
    .end local v0    # "phoneAccount":Landroid/telecom/PhoneAccount;
    .end local v1    # "phoneAccountHandle":Landroid/telecom/PhoneAccountHandle;
    :cond_1
    const/4 v5, 0x0

    return-object v5
.end method


# virtual methods
.method public createDialog(Landroid/content/Context;I)Landroid/app/Dialog;
    .locals 36
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "id"    # I

    .prologue
    .line 168
    new-instance v28, Ljava/util/ArrayList;

    invoke-direct/range {v28 .. v28}, Ljava/util/ArrayList;-><init>()V

    .line 169
    .local v28, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static/range {p1 .. p1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v6

    .line 170
    .local v6, "subscriptionManager":Landroid/telephony/SubscriptionManager;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 172
    .local v8, "smsSubInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SubscriptionInfo;>;"
    invoke-virtual {v6}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v5

    .line 173
    .local v5, "subInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    if-nez v5, :cond_1

    const/16 v31, 0x0

    .line 176
    .local v31, "selectableSubInfoLength":I
    :goto_0
    new-instance v2, Lcom/android/exsettings/sim/SimDialogActivity$3;

    move-object/from16 v3, p0

    move/from16 v4, p2

    move-object/from16 v7, p1

    invoke-direct/range {v2 .. v8}, Lcom/android/exsettings/sim/SimDialogActivity$3;-><init>(Lcom/android/exsettings/sim/SimDialogActivity;ILjava/util/List;Landroid/telephony/SubscriptionManager;Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 237
    .local v2, "selectionListener":Landroid/content/DialogInterface$OnClickListener;
    new-instance v27, Lcom/android/exsettings/sim/SimDialogActivity$4;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/exsettings/sim/SimDialogActivity$4;-><init>(Lcom/android/exsettings/sim/SimDialogActivity;)V

    .line 248
    .local v27, "keyListener":Landroid/content/DialogInterface$OnKeyListener;
    const/16 v16, 0x0

    .line 249
    .local v16, "currentIndex":I
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 250
    .local v18, "callsSubInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SubscriptionInfo;>;"
    const/4 v3, 0x1

    move/from16 v0, p2

    if-ne v0, v3, :cond_3

    .line 251
    invoke-static/range {p1 .. p1}, Landroid/telecom/TelecomManager;->from(Landroid/content/Context;)Landroid/telecom/TelecomManager;

    move-result-object v34

    .line 252
    .local v34, "telecomManager":Landroid/telecom/TelecomManager;
    invoke-static/range {p1 .. p1}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v35

    .line 254
    .local v35, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual/range {v34 .. v34}, Landroid/telecom/TelecomManager;->getCallCapablePhoneAccounts()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v30

    .line 256
    .local v30, "phoneAccounts":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/telecom/PhoneAccountHandle;>;"
    invoke-virtual/range {v34 .. v34}, Landroid/telecom/TelecomManager;->getUserSelectedOutgoingPhoneAccount()Landroid/telecom/PhoneAccountHandle;

    move-result-object v20

    .line 257
    .local v20, "defaultPhoneAccount":Landroid/telecom/PhoneAccountHandle;
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/sim/SimDialogActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0e3c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 258
    const/4 v3, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 259
    :goto_1
    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 261
    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/PhoneAccountHandle;

    move-object/from16 v0, v34

    invoke-virtual {v0, v3}, Landroid/telecom/TelecomManager;->getPhoneAccount(Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/PhoneAccount;

    move-result-object v29

    .line 262
    .local v29, "phoneAccount":Landroid/telecom/PhoneAccount;
    invoke-virtual/range {v29 .. v29}, Landroid/telecom/PhoneAccount;->getLabel()Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 263
    if-eqz v20, :cond_0

    .line 264
    invoke-virtual/range {v29 .. v29}, Landroid/telecom/PhoneAccount;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v3

    .line 263
    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/telecom/PhoneAccountHandle;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 265
    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v16, v3, -0x1

    .line 267
    :cond_0
    move-object/from16 v0, v35

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getSubIdForPhoneAccount(Landroid/telecom/PhoneAccount;)I

    move-result v33

    .line 268
    .local v33, "subId":I
    const/4 v3, -0x1

    move/from16 v0, v33

    if-eq v0, v3, :cond_2

    .line 269
    invoke-static/range {p1 .. p1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v3

    move/from16 v0, v33

    invoke-virtual {v3, v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v32

    .line 271
    .local v32, "sir":Landroid/telephony/SubscriptionInfo;
    move-object/from16 v0, v18

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 173
    .end local v2    # "selectionListener":Landroid/content/DialogInterface$OnClickListener;
    .end local v16    # "currentIndex":I
    .end local v18    # "callsSubInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SubscriptionInfo;>;"
    .end local v20    # "defaultPhoneAccount":Landroid/telecom/PhoneAccountHandle;
    .end local v27    # "keyListener":Landroid/content/DialogInterface$OnKeyListener;
    .end local v29    # "phoneAccount":Landroid/telecom/PhoneAccount;
    .end local v30    # "phoneAccounts":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/telecom/PhoneAccountHandle;>;"
    .end local v31    # "selectableSubInfoLength":I
    .end local v32    # "sir":Landroid/telephony/SubscriptionInfo;
    .end local v33    # "subId":I
    .end local v34    # "telecomManager":Landroid/telecom/TelecomManager;
    .end local v35    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :cond_1
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v31

    .restart local v31    # "selectableSubInfoLength":I
    goto/16 :goto_0

    .line 273
    .restart local v2    # "selectionListener":Landroid/content/DialogInterface$OnClickListener;
    .restart local v16    # "currentIndex":I
    .restart local v18    # "callsSubInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SubscriptionInfo;>;"
    .restart local v20    # "defaultPhoneAccount":Landroid/telecom/PhoneAccountHandle;
    .restart local v27    # "keyListener":Landroid/content/DialogInterface$OnKeyListener;
    .restart local v29    # "phoneAccount":Landroid/telecom/PhoneAccount;
    .restart local v30    # "phoneAccounts":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/telecom/PhoneAccountHandle;>;"
    .restart local v33    # "subId":I
    .restart local v34    # "telecomManager":Landroid/telecom/TelecomManager;
    .restart local v35    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :cond_2
    const/4 v3, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 276
    .end local v20    # "defaultPhoneAccount":Landroid/telecom/PhoneAccountHandle;
    .end local v29    # "phoneAccount":Landroid/telecom/PhoneAccount;
    .end local v30    # "phoneAccounts":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/telecom/PhoneAccountHandle;>;"
    .end local v33    # "subId":I
    .end local v34    # "telecomManager":Landroid/telecom/TelecomManager;
    .end local v35    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :cond_3
    const/4 v3, 0x2

    move/from16 v0, p2

    if-ne v0, v3, :cond_9

    .line 277
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/sim/SimDialogActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0e3c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 278
    const/4 v3, 0x0

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 280
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSmsSubId()I

    move-result v3

    .line 279
    invoke-virtual {v6, v3}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v21

    .line 281
    .local v21, "defaultSub":Landroid/telephony/SubscriptionInfo;
    const/16 v26, 0x0

    .line 283
    .local v26, "isSMSPrompt":Z
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/exsettings/sim/SimDialogActivity;->mExtTelephony:Lcom/android/internal/telephony/IExtTelephony;

    invoke-interface {v3}, Lcom/android/internal/telephony/IExtTelephony;->isSMSPromptEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v26

    .line 288
    .end local v26    # "isSMSPrompt":Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/exsettings/sim/SimDialogActivity;->mExtTelephony:Lcom/android/internal/telephony/IExtTelephony;

    if-nez v3, :cond_4

    .line 289
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/SmsManager;->isSMSPromptEnabled()Z

    move-result v26

    .line 291
    :cond_4
    const/16 v25, 0x0

    .local v25, "i":I
    :goto_3
    move/from16 v0, v25

    move/from16 v1, v31

    if-ge v0, v1, :cond_7

    .line 292
    move/from16 v0, v25

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Landroid/telephony/SubscriptionInfo;

    .line 293
    .restart local v32    # "sir":Landroid/telephony/SubscriptionInfo;
    move-object/from16 v0, v32

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 294
    invoke-virtual/range {v32 .. v32}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v23

    .line 295
    .local v23, "displayName":Ljava/lang/CharSequence;
    if-nez v23, :cond_5

    .line 296
    const-string/jumbo v23, ""

    .line 298
    :cond_5
    invoke-interface/range {v23 .. v23}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 299
    if-nez v26, :cond_6

    if-eqz v21, :cond_6

    invoke-virtual/range {v32 .. v32}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v3

    .line 300
    invoke-virtual/range {v21 .. v21}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v4

    .line 299
    if-ne v3, v4, :cond_6

    .line 301
    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v16, v3, -0x1

    .line 291
    :cond_6
    add-int/lit8 v25, v25, 0x1

    goto :goto_3

    .line 304
    .end local v23    # "displayName":Ljava/lang/CharSequence;
    .end local v32    # "sir":Landroid/telephony/SubscriptionInfo;
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/exsettings/sim/SimDialogActivity;->mHideAlwaysAsk:Z

    if-eqz v3, :cond_8

    if-nez v16, :cond_8

    .line 306
    const/16 v16, -0x1

    .line 324
    .end local v21    # "defaultSub":Landroid/telephony/SubscriptionInfo;
    .end local v25    # "i":I
    :cond_8
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [Ljava/lang/String;

    .line 326
    .local v14, "arr":[Ljava/lang/String;
    new-instance v17, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 328
    .local v17, "builder":Landroid/app/AlertDialog$Builder;
    packed-switch p2, :pswitch_data_0

    .line 339
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Invalid dialog type "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 340
    const-string/jumbo v7, " in SIM dialog."

    .line 339
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 309
    .end local v14    # "arr":[Ljava/lang/String;
    .end local v17    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_9
    const/16 v16, -0x1

    .line 310
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v19

    .line 311
    .local v19, "defaultDataSubId":I
    const/16 v25, 0x0

    .restart local v25    # "i":I
    :goto_4
    move/from16 v0, v25

    move/from16 v1, v31

    if-ge v0, v1, :cond_8

    .line 312
    move/from16 v0, v25

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Landroid/telephony/SubscriptionInfo;

    .line 313
    .restart local v32    # "sir":Landroid/telephony/SubscriptionInfo;
    invoke-virtual/range {v32 .. v32}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v23

    .line 314
    .restart local v23    # "displayName":Ljava/lang/CharSequence;
    if-nez v23, :cond_a

    .line 315
    const-string/jumbo v23, ""

    .line 317
    :cond_a
    invoke-interface/range {v23 .. v23}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 318
    invoke-virtual/range {v32 .. v32}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v3

    move/from16 v0, v19

    if-ne v0, v3, :cond_b

    .line 319
    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v16, v3, -0x1

    .line 311
    :cond_b
    add-int/lit8 v25, v25, 0x1

    goto :goto_4

    .line 330
    .end local v19    # "defaultDataSubId":I
    .end local v23    # "displayName":Ljava/lang/CharSequence;
    .end local v25    # "i":I
    .end local v32    # "sir":Landroid/telephony/SubscriptionInfo;
    .restart local v14    # "arr":[Ljava/lang/String;
    .restart local v17    # "builder":Landroid/app/AlertDialog$Builder;
    :pswitch_0
    const v3, 0x7f0c0e20

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 343
    :goto_5
    new-instance v9, Lcom/android/exsettings/sim/SimDialogActivity$SelectAccountListAdapter;

    .line 344
    const/4 v3, 0x1

    move/from16 v0, p2

    if-ne v0, v3, :cond_d

    move-object/from16 v11, v18

    .line 346
    :goto_6
    invoke-virtual/range {v17 .. v17}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v12

    .line 347
    const v13, 0x7f040100

    move-object/from16 v10, p0

    move/from16 v15, p2

    .line 343
    invoke-direct/range {v9 .. v16}, Lcom/android/exsettings/sim/SimDialogActivity$SelectAccountListAdapter;-><init>(Lcom/android/exsettings/sim/SimDialogActivity;Ljava/util/List;Landroid/content/Context;I[Ljava/lang/String;II)V

    .line 349
    .local v9, "adapter":Landroid/widget/ListAdapter;
    move-object/from16 v0, v17

    invoke-virtual {v0, v9, v2}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v22

    .line 350
    .local v22, "dialog":Landroid/app/Dialog;
    move-object/from16 v0, v22

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 352
    new-instance v3, Lcom/android/exsettings/sim/SimDialogActivity$5;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/exsettings/sim/SimDialogActivity$5;-><init>(Lcom/android/exsettings/sim/SimDialogActivity;)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 358
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/exsettings/sim/SimDialogActivity;->mHideAlwaysAsk:Z

    if-eqz v3, :cond_c

    .line 361
    const/4 v3, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 364
    :cond_c
    return-object v22

    .line 333
    .end local v9    # "adapter":Landroid/widget/ListAdapter;
    .end local v22    # "dialog":Landroid/app/Dialog;
    :pswitch_1
    const v3, 0x7f0c0e22

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    goto :goto_5

    .line 336
    :pswitch_2
    const v3, 0x7f0c0e2c

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    goto :goto_5

    .line 345
    :cond_d
    const/4 v3, 0x2

    move/from16 v0, p2

    if-ne v0, v3, :cond_e

    move-object v11, v8

    goto :goto_6

    :cond_e
    move-object v11, v5

    goto :goto_6

    .line 284
    .end local v14    # "arr":[Ljava/lang/String;
    .end local v17    # "builder":Landroid/app/AlertDialog$Builder;
    .restart local v21    # "defaultSub":Landroid/telephony/SubscriptionInfo;
    .restart local v26    # "isSMSPrompt":Z
    :catch_0
    move-exception v24

    .local v24, "e":Ljava/lang/Exception;
    goto/16 :goto_2

    .line 328
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 75
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 76
    invoke-virtual {p0}, Lcom/android/exsettings/sim/SimDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 77
    .local v1, "extras":Landroid/os/Bundle;
    sget-object v3, Lcom/android/exsettings/sim/SimDialogActivity;->DIALOG_TYPE_KEY:Ljava/lang/String;

    const/4 v4, -0x1

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 78
    .local v0, "dialogType":I
    invoke-static {p0}, Lcom/android/internal/telephony/SmsApplication;->canSmsAppHandleAlwaysAsk(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    iput-boolean v2, p0, Lcom/android/exsettings/sim/SimDialogActivity;->mHideAlwaysAsk:Z

    .line 80
    packed-switch v0, :pswitch_data_0

    .line 90
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Invalid dialog type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " sent."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 84
    :pswitch_0
    invoke-virtual {p0, p0, v0}, Lcom/android/exsettings/sim/SimDialogActivity;->createDialog(Landroid/content/Context;I)Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 74
    :goto_0
    return-void

    .line 87
    :pswitch_1
    sget-object v2, Lcom/android/exsettings/sim/SimDialogActivity;->PREFERRED_SIM:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/exsettings/sim/SimDialogActivity;->displayPreferredDialog(I)V

    goto :goto_0

    .line 80
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
