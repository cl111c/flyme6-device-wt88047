.class public Lcom/android/exsettings/wifi/WifiConfigController;
.super Ljava/lang/Object;
.source "WifiConfigController.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private final PHASE2_FULL_ADAPTER:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final PHASE2_PEAP_ADAPTER:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

.field private mAccessPointSecurity:I

.field private final mConfigUi:Lcom/android/exsettings/wifi/WifiConfigUiBase;

.field private mContext:Landroid/content/Context;

.field private mDns1View:Landroid/widget/TextView;

.field private mDns2View:Landroid/widget/TextView;

.field private mEapAnonymousView:Landroid/widget/TextView;

.field private mEapCaCertSpinner:Landroid/widget/Spinner;

.field private mEapIdentityView:Landroid/widget/TextView;

.field private mEapMethodSpinner:Landroid/widget/Spinner;

.field private mEapUserCertSpinner:Landroid/widget/Spinner;

.field private mEdit:Z

.field private mGatewayView:Landroid/widget/TextView;

.field private mHttpProxy:Landroid/net/ProxyInfo;

.field private mIpAddressView:Landroid/widget/TextView;

.field private mIpAssignment:Landroid/net/IpConfiguration$IpAssignment;

.field private mIpSettingsSpinner:Landroid/widget/Spinner;

.field private mLevels:[Ljava/lang/String;

.field private mModify:Z

.field private mNetworkPrefixLengthView:Landroid/widget/TextView;

.field private mPasswordView:Landroid/widget/TextView;

.field private mPhase2Adapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPhase2Spinner:Landroid/widget/Spinner;

.field private mProxyExclusionListView:Landroid/widget/TextView;

.field private mProxyHostView:Landroid/widget/TextView;

.field private mProxyPacView:Landroid/widget/TextView;

.field private mProxyPortView:Landroid/widget/TextView;

.field private mProxySettings:Landroid/net/IpConfiguration$ProxySettings;

.field private mProxySettingsSpinner:Landroid/widget/Spinner;

.field private mSecuritySpinner:Landroid/widget/Spinner;

.field private mSimCardSpinner:Landroid/widget/Spinner;

.field private mSimDisplayNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSsidView:Landroid/widget/TextView;

.field private mStaticIpConfiguration:Landroid/net/StaticIpConfiguration;

.field private mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private final mTextViewChangedHandler:Landroid/os/Handler;

.field private final mView:Landroid/view/View;

.field private selectedSimCardNumber:I

.field private unspecifiedCert:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/exsettings/wifi/WifiConfigUiBase;Landroid/view/View;Lcom/android/exsettingslib/wifi/AccessPoint;ZZ)V
    .locals 21
    .param p1, "parent"    # Lcom/android/exsettings/wifi/WifiConfigUiBase;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "accessPoint"    # Lcom/android/exsettingslib/wifi/AccessPoint;
    .param p4, "edit"    # Z
    .param p5, "modify"    # Z

    .prologue
    .line 163
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 119
    const-string/jumbo v17, "unspecified"

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/wifi/WifiConfigController;->unspecifiedCert:Ljava/lang/String;

    .line 147
    sget-object v17, Landroid/net/IpConfiguration$IpAssignment;->UNASSIGNED:Landroid/net/IpConfiguration$IpAssignment;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/wifi/WifiConfigController;->mIpAssignment:Landroid/net/IpConfiguration$IpAssignment;

    .line 148
    sget-object v17, Landroid/net/IpConfiguration$ProxySettings;->UNASSIGNED:Landroid/net/IpConfiguration$ProxySettings;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/wifi/WifiConfigController;->mProxySettings:Landroid/net/IpConfiguration$ProxySettings;

    .line 149
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/wifi/WifiConfigController;->mHttpProxy:Landroid/net/ProxyInfo;

    .line 150
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/wifi/WifiConfigController;->mStaticIpConfiguration:Landroid/net/StaticIpConfiguration;

    .line 159
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/wifi/WifiConfigController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 166
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/wifi/WifiConfigController;->mConfigUi:Lcom/android/exsettings/wifi/WifiConfigUiBase;

    .line 168
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    .line 169
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    .line 170
    if-nez p3, :cond_2

    const/16 v17, 0x0

    :goto_0
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/exsettings/wifi/WifiConfigController;->mAccessPointSecurity:I

    .line 172
    move/from16 v0, p4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/exsettings/wifi/WifiConfigController;->mEdit:Z

    .line 173
    move/from16 v0, p5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/exsettings/wifi/WifiConfigController;->mModify:Z

    .line 175
    new-instance v17, Landroid/os/Handler;

    invoke-direct/range {v17 .. v17}, Landroid/os/Handler;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/wifi/WifiConfigController;->mTextViewChangedHandler:Landroid/os/Handler;

    .line 176
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/WifiConfigController;->mConfigUi:Lcom/android/exsettings/wifi/WifiConfigUiBase;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/android/exsettings/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    .line 177
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    .line 179
    .local v11, "res":Landroid/content/res/Resources;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const-string/jumbo v18, "phone"

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/telephony/TelephonyManager;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/wifi/WifiConfigController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 180
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/wifi/WifiConfigController;->mSimDisplayNames:Ljava/util/ArrayList;

    .line 181
    const v17, 0x7f0a001b

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/wifi/WifiConfigController;->mLevels:[Ljava/lang/String;

    .line 182
    new-instance v17, Landroid/widget/ArrayAdapter;

    .line 183
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    .line 184
    const v19, 0x7f0a0024

    move/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v19

    .line 183
    const v20, 0x1090008

    .line 182
    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move/from16 v2, v20

    move-object/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/wifi/WifiConfigController;->PHASE2_PEAP_ADAPTER:Landroid/widget/ArrayAdapter;

    .line 185
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/WifiConfigController;->PHASE2_PEAP_ADAPTER:Landroid/widget/ArrayAdapter;

    move-object/from16 v17, v0

    const v18, 0x1090009

    invoke-virtual/range {v17 .. v18}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 187
    new-instance v17, Landroid/widget/ArrayAdapter;

    .line 188
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    .line 189
    const v19, 0x7f0a0025

    move/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v19

    .line 188
    const v20, 0x1090008

    .line 187
    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move/from16 v2, v20

    move-object/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/wifi/WifiConfigController;->PHASE2_FULL_ADAPTER:Landroid/widget/ArrayAdapter;

    .line 190
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/WifiConfigController;->PHASE2_FULL_ADAPTER:Landroid/widget/ArrayAdapter;

    move-object/from16 v17, v0

    const v18, 0x1090009

    invoke-virtual/range {v17 .. v18}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 192
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const v18, 0x7f0c075b

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/wifi/WifiConfigController;->unspecifiedCert:Ljava/lang/String;

    .line 193
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v17, v0

    const v18, 0x7f1302be

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/Spinner;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    .line 194
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 195
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v17, v0

    const v18, 0x7f1302b5

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/Spinner;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    .line 196
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 198
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    move-object/from16 v17, v0

    if-nez v17, :cond_3

    .line 199
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/WifiConfigController;->mConfigUi:Lcom/android/exsettings/wifi/WifiConfigUiBase;

    move-object/from16 v17, v0

    const v18, 0x7f0c0723

    invoke-interface/range {v17 .. v18}, Lcom/android/exsettings/wifi/WifiConfigUiBase;->setTitle(I)V

    .line 201
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v17, v0

    const v18, 0x7f130298

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/wifi/WifiConfigController;->mSsidView:Landroid/widget/TextView;

    .line 202
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/WifiConfigController;->mSsidView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 203
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v17, v0

    const v18, 0x7f130299

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/Spinner;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/wifi/WifiConfigController;->mSecuritySpinner:Landroid/widget/Spinner;

    .line 204
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/WifiConfigController;->mSecuritySpinner:Landroid/widget/Spinner;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 205
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v17, v0

    const v18, 0x7f130149

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setVisibility(I)V

    .line 207
    invoke-direct/range {p0 .. p0}, Lcom/android/exsettings/wifi/WifiConfigController;->showIpConfigFields()V

    .line 208
    invoke-direct/range {p0 .. p0}, Lcom/android/exsettings/wifi/WifiConfigController;->showProxyFields()V

    .line 209
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v17, v0

    const v18, 0x7f1302b0

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setVisibility(I)V

    .line 210
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v17, v0

    const v18, 0x7f1302b1

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/CheckBox;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 214
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/WifiConfigController;->mConfigUi:Lcom/android/exsettings/wifi/WifiConfigUiBase;

    move-object/from16 v17, v0

    const v18, 0x7f0c076c

    move/from16 v0, v18

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-interface/range {v17 .. v18}, Lcom/android/exsettings/wifi/WifiConfigUiBase;->setSubmitButton(Ljava/lang/CharSequence;)V

    .line 324
    :cond_0
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/WifiConfigController;->mConfigUi:Lcom/android/exsettings/wifi/WifiConfigUiBase;

    move-object/from16 v17, v0

    const v18, 0x7f0c076e

    move/from16 v0, v18

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-interface/range {v17 .. v18}, Lcom/android/exsettings/wifi/WifiConfigUiBase;->setCancelButton(Ljava/lang/CharSequence;)V

    .line 325
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/WifiConfigController;->mConfigUi:Lcom/android/exsettings/wifi/WifiConfigUiBase;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/android/exsettings/wifi/WifiConfigUiBase;->getSubmitButton()Landroid/widget/Button;

    move-result-object v17

    if-eqz v17, :cond_1

    .line 326
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/wifi/WifiConfigController;->enableSubmitIfAppropriate()V

    .line 165
    :cond_1
    return-void

    .line 171
    .end local v11    # "res":Landroid/content/res/Resources;
    :cond_2
    invoke-virtual/range {p3 .. p3}, Lcom/android/exsettingslib/wifi/AccessPoint;->getSecurity()I

    move-result v17

    goto/16 :goto_0

    .line 216
    .restart local v11    # "res":Landroid/content/res/Resources;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/WifiConfigController;->mConfigUi:Lcom/android/exsettings/wifi/WifiConfigUiBase;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/exsettingslib/wifi/AccessPoint;->getSsid()Ljava/lang/CharSequence;

    move-result-object v18

    invoke-interface/range {v17 .. v18}, Lcom/android/exsettings/wifi/WifiConfigUiBase;->setTitle(Ljava/lang/CharSequence;)V

    .line 218
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v17, v0

    const v18, 0x7f130297

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    .line 220
    .local v7, "group":Landroid/view/ViewGroup;
    const/4 v12, 0x0

    .line 221
    .local v12, "showAdvancedFields":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/exsettingslib/wifi/AccessPoint;->isSaved()Z

    move-result v17

    if-eqz v17, :cond_5

    .line 222
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/exsettingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v5

    .line 223
    .local v5, "config":Landroid/net/wifi/WifiConfiguration;
    invoke-virtual {v5}, Landroid/net/wifi/WifiConfiguration;->getIpAssignment()Landroid/net/IpConfiguration$IpAssignment;

    move-result-object v17

    sget-object v18, Landroid/net/IpConfiguration$IpAssignment;->STATIC:Landroid/net/IpConfiguration$IpAssignment;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_9

    .line 224
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Landroid/widget/Spinner;->setSelection(I)V

    .line 225
    const/4 v12, 0x1

    .line 227
    invoke-virtual {v5}, Landroid/net/wifi/WifiConfiguration;->getStaticIpConfiguration()Landroid/net/StaticIpConfiguration;

    move-result-object v15

    .line 228
    .local v15, "staticConfig":Landroid/net/StaticIpConfiguration;
    if-eqz v15, :cond_4

    iget-object v0, v15, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    move-object/from16 v17, v0

    if-eqz v17, :cond_4

    .line 230
    iget-object v0, v15, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v17

    .line 229
    const v18, 0x7f0c074a

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v17

    invoke-direct {v0, v7, v1, v2}, Lcom/android/exsettings/wifi/WifiConfigController;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 237
    .end local v15    # "staticConfig":Landroid/net/StaticIpConfiguration;
    :cond_4
    :goto_2
    invoke-virtual {v5}, Landroid/net/wifi/WifiConfiguration;->getProxySettings()Landroid/net/IpConfiguration$ProxySettings;

    move-result-object v17

    sget-object v18, Landroid/net/IpConfiguration$ProxySettings;->STATIC:Landroid/net/IpConfiguration$ProxySettings;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_a

    .line 238
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Landroid/widget/Spinner;->setSelection(I)V

    .line 239
    const/4 v12, 0x1

    .line 246
    :goto_3
    if-eqz v5, :cond_5

    invoke-virtual {v5}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result v17

    if-eqz v17, :cond_5

    .line 248
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const v18, 0x7f0c074d

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 247
    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    .line 248
    iget-object v0, v5, Landroid/net/wifi/WifiConfiguration;->providerFriendlyName:Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput-object v19, v18, v20

    .line 247
    invoke-static/range {v17 .. v18}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    const v18, 0x7f0c074c

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v17

    invoke-direct {v0, v7, v1, v2}, Lcom/android/exsettings/wifi/WifiConfigController;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 252
    .end local v5    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/exsettingslib/wifi/AccessPoint;->isSaved()Z

    move-result v17

    if-nez v17, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/exsettingslib/wifi/AccessPoint;->isActive()Z

    move-result v17

    if-eqz v17, :cond_7

    .line 253
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/exsettings/wifi/WifiConfigController;->mEdit:Z

    move/from16 v17, v0

    .line 252
    if-eqz v17, :cond_8

    .line 254
    :cond_7
    invoke-direct/range {p0 .. p0}, Lcom/android/exsettings/wifi/WifiConfigController;->showSecurityFields()V

    .line 255
    invoke-direct/range {p0 .. p0}, Lcom/android/exsettings/wifi/WifiConfigController;->showIpConfigFields()V

    .line 256
    invoke-direct/range {p0 .. p0}, Lcom/android/exsettings/wifi/WifiConfigController;->showProxyFields()V

    .line 257
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v17, v0

    const v18, 0x7f1302b0

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setVisibility(I)V

    .line 258
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v17, v0

    const v18, 0x7f1302b1

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/CheckBox;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 260
    if-eqz v12, :cond_8

    .line 261
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v17, v0

    const v18, 0x7f1302b1

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/CheckBox;

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 262
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v17, v0

    const v18, 0x7f1302b2

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setVisibility(I)V

    .line 266
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/exsettings/wifi/WifiConfigController;->mModify:Z

    move/from16 v17, v0

    if-eqz v17, :cond_c

    .line 267
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/WifiConfigController;->mConfigUi:Lcom/android/exsettings/wifi/WifiConfigUiBase;

    move-object/from16 v17, v0

    const v18, 0x7f0c076c

    move/from16 v0, v18

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-interface/range {v17 .. v18}, Lcom/android/exsettings/wifi/WifiConfigUiBase;->setSubmitButton(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 233
    .restart local v5    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/Spinner;->setSelection(I)V

    goto/16 :goto_2

    .line 240
    :cond_a
    invoke-virtual {v5}, Landroid/net/wifi/WifiConfiguration;->getProxySettings()Landroid/net/IpConfiguration$ProxySettings;

    move-result-object v17

    sget-object v18, Landroid/net/IpConfiguration$ProxySettings;->PAC:Landroid/net/IpConfiguration$ProxySettings;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_b

    .line 241
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    move-object/from16 v17, v0

    const/16 v18, 0x2

    invoke-virtual/range {v17 .. v18}, Landroid/widget/Spinner;->setSelection(I)V

    .line 242
    const/4 v12, 0x1

    goto/16 :goto_3

    .line 244
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/Spinner;->setSelection(I)V

    goto/16 :goto_3

    .line 269
    .end local v5    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/exsettingslib/wifi/AccessPoint;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v14

    .line 270
    .local v14, "state":Landroid/net/NetworkInfo$DetailedState;
    invoke-direct/range {p0 .. p0}, Lcom/android/exsettings/wifi/WifiConfigController;->getSignalString()Ljava/lang/String;

    move-result-object v13

    .line 272
    .local v13, "signalLevel":Ljava/lang/String;
    if-nez v14, :cond_e

    if-eqz v13, :cond_e

    .line 273
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/WifiConfigController;->mConfigUi:Lcom/android/exsettings/wifi/WifiConfigUiBase;

    move-object/from16 v17, v0

    const v18, 0x7f0c0768

    move/from16 v0, v18

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-interface/range {v17 .. v18}, Lcom/android/exsettings/wifi/WifiConfigUiBase;->setSubmitButton(Ljava/lang/CharSequence;)V

    .line 318
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/exsettingslib/wifi/AccessPoint;->isSaved()Z

    move-result v17

    if-nez v17, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/exsettingslib/wifi/AccessPoint;->isActive()Z

    move-result v17

    if-eqz v17, :cond_0

    .line 319
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/WifiConfigController;->mConfigUi:Lcom/android/exsettings/wifi/WifiConfigUiBase;

    move-object/from16 v17, v0

    const v18, 0x7f0c076a

    move/from16 v0, v18

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-interface/range {v17 .. v18}, Lcom/android/exsettings/wifi/WifiConfigUiBase;->setForgetButton(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 275
    :cond_e
    if-eqz v14, :cond_10

    .line 276
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/exsettingslib/wifi/AccessPoint;->isEphemeral()Z

    move-result v9

    .line 277
    .local v9, "isEphemeral":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/exsettingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v5

    .line 278
    .restart local v5    # "config":Landroid/net/wifi/WifiConfiguration;
    const/4 v10, 0x0

    .line 279
    .local v10, "providerFriendlyName":Ljava/lang/String;
    if-eqz v5, :cond_f

    invoke-virtual {v5}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result v17

    if-eqz v17, :cond_f

    .line 280
    iget-object v10, v5, Landroid/net/wifi/WifiConfiguration;->providerFriendlyName:Ljava/lang/String;

    .line 283
    .end local v10    # "providerFriendlyName":Ljava/lang/String;
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/WifiConfigController;->mConfigUi:Lcom/android/exsettings/wifi/WifiConfigUiBase;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/android/exsettings/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v17

    .line 282
    move-object/from16 v0, v17

    invoke-static {v0, v14, v9, v10}, Lcom/android/exsettingslib/wifi/AccessPoint;->getSummary(Landroid/content/Context;Landroid/net/NetworkInfo$DetailedState;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 284
    .local v16, "summary":Ljava/lang/String;
    const v17, 0x7f0c0747

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v16

    invoke-direct {v0, v7, v1, v2}, Lcom/android/exsettings/wifi/WifiConfigController;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 287
    .end local v5    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v9    # "isEphemeral":Z
    .end local v16    # "summary":Ljava/lang/String;
    :cond_10
    if-eqz v13, :cond_11

    .line 288
    const v17, 0x7f0c0746

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v7, v1, v13}, Lcom/android/exsettings/wifi/WifiConfigController;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 291
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/exsettingslib/wifi/AccessPoint;->getInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v8

    .line 292
    .local v8, "info":Landroid/net/wifi/WifiInfo;
    if-eqz v8, :cond_12

    invoke-virtual {v8}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result v17

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_12

    .line 294
    const v17, 0x7f0c06f7

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 293
    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    .line 294
    invoke-virtual {v8}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    const/16 v20, 0x0

    aput-object v19, v18, v20

    .line 293
    invoke-static/range {v17 .. v18}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    const v18, 0x7f0c0748

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v17

    invoke-direct {v0, v7, v1, v2}, Lcom/android/exsettings/wifi/WifiConfigController;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 297
    :cond_12
    if-eqz v8, :cond_13

    invoke-virtual {v8}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v17

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_13

    .line 298
    invoke-virtual {v8}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v6

    .line 299
    .local v6, "frequency":I
    const/4 v4, 0x0

    .line 301
    .local v4, "band":Ljava/lang/String;
    const/16 v17, 0x960

    move/from16 v0, v17

    if-lt v6, v0, :cond_14

    .line 302
    const/16 v17, 0x9c4

    move/from16 v0, v17

    if-ge v6, v0, :cond_14

    .line 303
    const v17, 0x7f0c06f5

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 310
    .end local v4    # "band":Ljava/lang/String;
    :goto_5
    if-eqz v4, :cond_13

    .line 311
    const v17, 0x7f0c0749

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v7, v1, v4}, Lcom/android/exsettings/wifi/WifiConfigController;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 315
    .end local v6    # "frequency":I
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lcom/android/exsettingslib/wifi/AccessPoint;->getSecurityString(Z)Ljava/lang/String;

    move-result-object v17

    const v18, 0x7f0c0745

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v17

    invoke-direct {v0, v7, v1, v2}, Lcom/android/exsettings/wifi/WifiConfigController;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 316
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v17, v0

    const v18, 0x7f1302bd

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_4

    .line 304
    .restart local v4    # "band":Ljava/lang/String;
    .restart local v6    # "frequency":I
    :cond_14
    const/16 v17, 0x1324

    move/from16 v0, v17

    if-lt v6, v0, :cond_15

    .line 305
    const/16 v17, 0x170c

    move/from16 v0, v17

    if-ge v6, v0, :cond_15

    .line 306
    const v17, 0x7f0c06f6

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .local v4, "band":Ljava/lang/String;
    goto :goto_5

    .line 308
    .local v4, "band":Ljava/lang/String;
    :cond_15
    const-string/jumbo v17, "WifiConfigController"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "Unexpected frequency "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
.end method

.method private addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V
    .locals 4
    .param p1, "group"    # Landroid/view/ViewGroup;
    .param p2, "name"    # I
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 331
    iget-object v1, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mConfigUi:Lcom/android/exsettings/wifi/WifiConfigUiBase;

    invoke-interface {v1}, Lcom/android/exsettings/wifi/WifiConfigUiBase;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040154

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 332
    .local v0, "row":Landroid/view/View;
    const v1, 0x7f130036

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 333
    const v1, 0x7f13004b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 334
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 330
    return-void
.end method

.method private getIPv4Address(Ljava/lang/String;)Ljava/net/Inet4Address;
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 567
    :try_start_0
    invoke-static {p1}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    check-cast v1, Ljava/net/Inet4Address;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 568
    :catch_0
    move-exception v0

    .line 569
    .local v0, "e":Ljava/lang/RuntimeException;
    const/4 v1, 0x0

    return-object v1
.end method

.method private getSIMInfo()V
    .locals 7

    .prologue
    .line 1092
    iget-object v3, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 1093
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 1094
    iget-object v3, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v3, v1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v2

    .line 1096
    .local v2, "sir":Landroid/telephony/SubscriptionInfo;
    if-eqz v2, :cond_0

    .line 1097
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1101
    .local v0, "displayname":Ljava/lang/String;
    :goto_1
    iget-object v3, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mSimDisplayNames:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1093
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1099
    .end local v0    # "displayname":Ljava/lang/String;
    :cond_0
    iget-object v3, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    add-int/lit8 v5, v1, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const v5, 0x7f0c0e28

    invoke-virtual {v3, v5, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "displayname":Ljava/lang/String;
    goto :goto_1

    .line 1089
    .end local v0    # "displayname":Ljava/lang/String;
    .end local v2    # "sir":Landroid/telephony/SubscriptionInfo;
    :cond_1
    return-void
.end method

.method private getSignalString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 338
    iget-object v1, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/exsettingslib/wifi/AccessPoint;->getLevel()I

    move-result v0

    .line 340
    .local v0, "level":I
    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mLevels:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mLevels:[Ljava/lang/String;

    aget-object v1, v1, v0

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private ipAndProxyFieldsAreValid()Z
    .locals 14

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    const/4 v11, 0x0

    .line 517
    iget-object v9, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    if-eqz v9, :cond_0

    .line 518
    iget-object v9, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v9}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v9

    if-ne v9, v13, :cond_0

    .line 519
    sget-object v9, Landroid/net/IpConfiguration$IpAssignment;->STATIC:Landroid/net/IpConfiguration$IpAssignment;

    .line 517
    :goto_0
    iput-object v9, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mIpAssignment:Landroid/net/IpConfiguration$IpAssignment;

    .line 521
    iget-object v9, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mIpAssignment:Landroid/net/IpConfiguration$IpAssignment;

    sget-object v10, Landroid/net/IpConfiguration$IpAssignment;->STATIC:Landroid/net/IpConfiguration$IpAssignment;

    if-ne v9, v10, :cond_1

    .line 522
    new-instance v9, Landroid/net/StaticIpConfiguration;

    invoke-direct {v9}, Landroid/net/StaticIpConfiguration;-><init>()V

    iput-object v9, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mStaticIpConfiguration:Landroid/net/StaticIpConfiguration;

    .line 523
    iget-object v9, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mStaticIpConfiguration:Landroid/net/StaticIpConfiguration;

    invoke-direct {p0, v9}, Lcom/android/exsettings/wifi/WifiConfigController;->validateIpConfigFields(Landroid/net/StaticIpConfiguration;)I

    move-result v5

    .line 524
    .local v5, "result":I
    if-eqz v5, :cond_1

    .line 525
    return v11

    .line 519
    .end local v5    # "result":I
    :cond_0
    sget-object v9, Landroid/net/IpConfiguration$IpAssignment;->DHCP:Landroid/net/IpConfiguration$IpAssignment;

    goto :goto_0

    .line 529
    :cond_1
    iget-object v9, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v9}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v6

    .line 530
    .local v6, "selectedPosition":I
    sget-object v9, Landroid/net/IpConfiguration$ProxySettings;->NONE:Landroid/net/IpConfiguration$ProxySettings;

    iput-object v9, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mProxySettings:Landroid/net/IpConfiguration$ProxySettings;

    .line 531
    iput-object v12, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mHttpProxy:Landroid/net/ProxyInfo;

    .line 532
    if-ne v6, v13, :cond_4

    iget-object v9, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mProxyHostView:Landroid/widget/TextView;

    if-eqz v9, :cond_4

    .line 533
    sget-object v9, Landroid/net/IpConfiguration$ProxySettings;->STATIC:Landroid/net/IpConfiguration$ProxySettings;

    iput-object v9, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mProxySettings:Landroid/net/IpConfiguration$ProxySettings;

    .line 534
    iget-object v9, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mProxyHostView:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 535
    .local v2, "host":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mProxyPortView:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 536
    .local v4, "portStr":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mProxyExclusionListView:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 537
    .local v1, "exclusionList":Ljava/lang/String;
    const/4 v3, 0x0

    .line 538
    .local v3, "port":I
    const/4 v5, 0x0

    .line 540
    .restart local v5    # "result":I
    :try_start_0
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 541
    invoke-static {v2, v4, v1}, Lcom/android/exsettings/ProxySelector;->validate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 545
    :goto_1
    if-nez v5, :cond_3

    .line 546
    new-instance v9, Landroid/net/ProxyInfo;

    invoke-direct {v9, v2, v3, v1}, Landroid/net/ProxyInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    iput-object v9, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mHttpProxy:Landroid/net/ProxyInfo;

    .line 562
    .end local v1    # "exclusionList":Ljava/lang/String;
    .end local v2    # "host":Ljava/lang/String;
    .end local v3    # "port":I
    .end local v4    # "portStr":Ljava/lang/String;
    .end local v5    # "result":I
    :cond_2
    :goto_2
    return v13

    .line 542
    .restart local v1    # "exclusionList":Ljava/lang/String;
    .restart local v2    # "host":Ljava/lang/String;
    .restart local v3    # "port":I
    .restart local v4    # "portStr":Ljava/lang/String;
    .restart local v5    # "result":I
    :catch_0
    move-exception v0

    .line 543
    .local v0, "e":Ljava/lang/NumberFormatException;
    const v5, 0x7f0c0597

    goto :goto_1

    .line 548
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_3
    return v11

    .line 550
    .end local v1    # "exclusionList":Ljava/lang/String;
    .end local v2    # "host":Ljava/lang/String;
    .end local v3    # "port":I
    .end local v4    # "portStr":Ljava/lang/String;
    .end local v5    # "result":I
    :cond_4
    const/4 v9, 0x2

    if-ne v6, v9, :cond_2

    iget-object v9, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mProxyPacView:Landroid/widget/TextView;

    if-eqz v9, :cond_2

    .line 551
    sget-object v9, Landroid/net/IpConfiguration$ProxySettings;->PAC:Landroid/net/IpConfiguration$ProxySettings;

    iput-object v9, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mProxySettings:Landroid/net/IpConfiguration$ProxySettings;

    .line 552
    iget-object v9, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mProxyPacView:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    .line 553
    .local v8, "uriSequence":Ljava/lang/CharSequence;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 554
    return v11

    .line 556
    :cond_5
    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 557
    .local v7, "uri":Landroid/net/Uri;
    if-nez v7, :cond_6

    .line 558
    return v11

    .line 560
    :cond_6
    new-instance v9, Landroid/net/ProxyInfo;

    invoke-direct {v9, v7}, Landroid/net/ProxyInfo;-><init>(Landroid/net/Uri;)V

    iput-object v9, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mHttpProxy:Landroid/net/ProxyInfo;

    goto :goto_2
.end method

.method private loadCertificates(Landroid/widget/Spinner;Ljava/lang/String;)V
    .locals 8
    .param p1, "spinner"    # Landroid/widget/Spinner;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 979
    iget-object v4, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mConfigUi:Lcom/android/exsettings/wifi/WifiConfigUiBase;

    invoke-interface {v4}, Lcom/android/exsettings/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 981
    .local v3, "context":Landroid/content/Context;
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v4

    const/16 v5, 0x3f2

    invoke-virtual {v4, p2, v5}, Landroid/security/KeyStore;->list(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    .line 982
    .local v2, "certs":[Ljava/lang/String;
    if-eqz v2, :cond_0

    array-length v4, v2

    if-nez v4, :cond_1

    .line 983
    :cond_0
    new-array v2, v7, [Ljava/lang/String;

    .end local v2    # "certs":[Ljava/lang/String;
    iget-object v4, p0, Lcom/android/exsettings/wifi/WifiConfigController;->unspecifiedCert:Ljava/lang/String;

    aput-object v4, v2, v6

    .line 991
    .restart local v2    # "certs":[Ljava/lang/String;
    :goto_0
    new-instance v0, Landroid/widget/ArrayAdapter;

    .line 992
    const v4, 0x1090008

    .line 991
    invoke-direct {v0, v3, v4, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 993
    .local v0, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v4, 0x1090009

    invoke-virtual {v0, v4}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 994
    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 978
    return-void

    .line 985
    .end local v0    # "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    :cond_1
    array-length v4, v2

    add-int/lit8 v4, v4, 0x1

    new-array v1, v4, [Ljava/lang/String;

    .line 986
    .local v1, "array":[Ljava/lang/String;
    iget-object v4, p0, Lcom/android/exsettings/wifi/WifiConfigController;->unspecifiedCert:Ljava/lang/String;

    aput-object v4, v1, v6

    .line 987
    array-length v4, v2

    invoke-static {v2, v6, v1, v7, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 988
    move-object v2, v1

    goto :goto_0
.end method

.method private setAnonymousIdentInvisible()V
    .locals 2

    .prologue
    .line 858
    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f1302ac

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 859
    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mEapAnonymousView:Landroid/widget/TextView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 857
    return-void
.end method

.method private setCaCertInvisible()V
    .locals 2

    .prologue
    .line 848
    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f1302a6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 849
    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mEapCaCertSpinner:Landroid/widget/Spinner;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 847
    return-void
.end method

.method private setIdentityInvisible()V
    .locals 2

    .prologue
    .line 838
    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f1302aa

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 839
    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 837
    return-void
.end method

.method private setPasswordInvisible()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 863
    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 864
    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f1302ae

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 865
    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f1302af

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 862
    return-void
.end method

.method private setPhase2Invisible()V
    .locals 2

    .prologue
    .line 843
    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f1302a4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 844
    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 842
    return-void
.end method

.method private setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V
    .locals 3
    .param p1, "spinner"    # Landroid/widget/Spinner;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 998
    if-eqz p2, :cond_0

    .line 1000
    invoke-virtual {p1}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/ArrayAdapter;

    .line 1001
    .local v0, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 1002
    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1003
    invoke-virtual {p1, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 997
    .end local v0    # "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    .end local v1    # "i":I
    :cond_0
    return-void

    .line 1001
    .restart local v0    # "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    .restart local v1    # "i":I
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method private setSimCardInvisible()V
    .locals 2

    .prologue
    .line 834
    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f1302a2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 833
    return-void
.end method

.method private setUserCertInvisible()V
    .locals 2

    .prologue
    .line 853
    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f1302a8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 854
    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mEapUserCertSpinner:Landroid/widget/Spinner;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 852
    return-void
.end method

.method private setVisibility(II)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "visibility"    # I

    .prologue
    .line 972
    iget-object v1, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 973
    .local v0, "v":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 974
    invoke-virtual {v0, p2}, Landroid/view/View;->setVisibility(I)V

    .line 971
    :cond_0
    return-void
.end method

.method private showEapFieldsByMethod(I)V
    .locals 8
    .param p1, "eapMethod"    # I

    .prologue
    const v7, 0x7f1302ac

    const v5, 0x7f1302a4

    const/4 v6, 0x0

    .line 758
    iget-object v3, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f1302a0

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 759
    iget-object v3, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f1302aa

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 763
    iget-object v3, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f1302a6

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 764
    iget-object v3, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f1302ae

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 765
    iget-object v3, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f1302af

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 767
    iget-object v3, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mConfigUi:Lcom/android/exsettings/wifi/WifiConfigUiBase;

    invoke-interface {v3}, Lcom/android/exsettings/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 768
    .local v1, "context":Landroid/content/Context;
    packed-switch p1, :pswitch_data_0

    .line 756
    :goto_0
    return-void

    .line 770
    :pswitch_0
    invoke-direct {p0}, Lcom/android/exsettings/wifi/WifiConfigController;->setPhase2Invisible()V

    .line 771
    invoke-direct {p0}, Lcom/android/exsettings/wifi/WifiConfigController;->setCaCertInvisible()V

    .line 772
    invoke-direct {p0}, Lcom/android/exsettings/wifi/WifiConfigController;->setAnonymousIdentInvisible()V

    .line 773
    invoke-direct {p0}, Lcom/android/exsettings/wifi/WifiConfigController;->setUserCertInvisible()V

    .line 774
    invoke-direct {p0}, Lcom/android/exsettings/wifi/WifiConfigController;->setSimCardInvisible()V

    goto :goto_0

    .line 777
    :pswitch_1
    iget-object v3, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f1302a8

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 778
    invoke-direct {p0}, Lcom/android/exsettings/wifi/WifiConfigController;->setPhase2Invisible()V

    .line 779
    invoke-direct {p0}, Lcom/android/exsettings/wifi/WifiConfigController;->setAnonymousIdentInvisible()V

    .line 780
    invoke-direct {p0}, Lcom/android/exsettings/wifi/WifiConfigController;->setPasswordInvisible()V

    .line 781
    invoke-direct {p0}, Lcom/android/exsettings/wifi/WifiConfigController;->setSimCardInvisible()V

    goto :goto_0

    .line 785
    :pswitch_2
    iget-object v3, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mPhase2Adapter:Landroid/widget/ArrayAdapter;

    iget-object v4, p0, Lcom/android/exsettings/wifi/WifiConfigController;->PHASE2_PEAP_ADAPTER:Landroid/widget/ArrayAdapter;

    if-eq v3, v4, :cond_0

    .line 786
    iget-object v3, p0, Lcom/android/exsettings/wifi/WifiConfigController;->PHASE2_PEAP_ADAPTER:Landroid/widget/ArrayAdapter;

    iput-object v3, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mPhase2Adapter:Landroid/widget/ArrayAdapter;

    .line 787
    iget-object v3, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    iget-object v4, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mPhase2Adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v3, v4}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 789
    :cond_0
    iget-object v3, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 790
    iget-object v3, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 791
    invoke-direct {p0}, Lcom/android/exsettings/wifi/WifiConfigController;->setUserCertInvisible()V

    .line 792
    invoke-direct {p0}, Lcom/android/exsettings/wifi/WifiConfigController;->setSimCardInvisible()V

    goto :goto_0

    .line 796
    :pswitch_3
    iget-object v3, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mPhase2Adapter:Landroid/widget/ArrayAdapter;

    iget-object v4, p0, Lcom/android/exsettings/wifi/WifiConfigController;->PHASE2_FULL_ADAPTER:Landroid/widget/ArrayAdapter;

    if-eq v3, v4, :cond_1

    .line 797
    iget-object v3, p0, Lcom/android/exsettings/wifi/WifiConfigController;->PHASE2_FULL_ADAPTER:Landroid/widget/ArrayAdapter;

    iput-object v3, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mPhase2Adapter:Landroid/widget/ArrayAdapter;

    .line 798
    iget-object v3, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    iget-object v4, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mPhase2Adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v3, v4}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 800
    :cond_1
    iget-object v3, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 801
    iget-object v3, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 802
    invoke-direct {p0}, Lcom/android/exsettings/wifi/WifiConfigController;->setUserCertInvisible()V

    .line 803
    invoke-direct {p0}, Lcom/android/exsettings/wifi/WifiConfigController;->setSimCardInvisible()V

    goto :goto_0

    .line 808
    :pswitch_4
    const/4 v0, 0x0

    .line 809
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    iget-object v3, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    if-eqz v3, :cond_2

    .line 810
    iget-object v3, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    invoke-virtual {v3}, Lcom/android/exsettingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 812
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_2
    new-instance v2, Landroid/widget/ArrayAdapter;

    .line 813
    iget-object v4, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    .line 814
    iget-object v3, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mSimDisplayNames:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mSimDisplayNames:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    .line 813
    const v5, 0x1090008

    .line 812
    invoke-direct {v2, v4, v5, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 817
    .local v2, "eapSimAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v3, 0x1090009

    .line 816
    invoke-virtual {v2, v3}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 818
    iget-object v3, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mSimCardSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 819
    iget-object v3, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f1302a2

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 820
    if-eqz v0, :cond_3

    .line 821
    iget-object v3, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mSimCardSpinner:Landroid/widget/Spinner;

    iget v4, v0, Landroid/net/wifi/WifiConfiguration;->SIMNum:I

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Landroid/widget/Spinner;->setSelection(I)V

    .line 823
    :cond_3
    invoke-direct {p0}, Lcom/android/exsettings/wifi/WifiConfigController;->setPhase2Invisible()V

    .line 824
    invoke-direct {p0}, Lcom/android/exsettings/wifi/WifiConfigController;->setAnonymousIdentInvisible()V

    .line 825
    invoke-direct {p0}, Lcom/android/exsettings/wifi/WifiConfigController;->setCaCertInvisible()V

    .line 826
    invoke-direct {p0}, Lcom/android/exsettings/wifi/WifiConfigController;->setUserCertInvisible()V

    .line 827
    invoke-direct {p0}, Lcom/android/exsettings/wifi/WifiConfigController;->setPasswordInvisible()V

    .line 828
    invoke-direct {p0}, Lcom/android/exsettings/wifi/WifiConfigController;->setIdentityInvisible()V

    goto/16 :goto_0

    .line 768
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method private showIpConfigFields()V
    .locals 7

    .prologue
    const v6, 0x7f1302bf

    const/4 v5, 0x0

    .line 869
    const/4 v0, 0x0

    .line 871
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    iget-object v3, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f1302bd

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 873
    iget-object v3, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    invoke-virtual {v3}, Lcom/android/exsettingslib/wifi/AccessPoint;->isSaved()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 874
    iget-object v3, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    invoke-virtual {v3}, Lcom/android/exsettingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 877
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_0
    iget-object v3, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_6

    .line 878
    iget-object v3, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 879
    iget-object v3, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/TextView;

    if-nez v3, :cond_1

    .line 880
    iget-object v3, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f1302c0

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/TextView;

    .line 881
    iget-object v3, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 882
    iget-object v3, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f1302c1

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mGatewayView:Landroid/widget/TextView;

    .line 883
    iget-object v3, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mGatewayView:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 884
    iget-object v3, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    .line 885
    const v4, 0x7f1302c2

    .line 884
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    .line 886
    iget-object v3, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 887
    iget-object v3, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f1302c3

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mDns1View:Landroid/widget/TextView;

    .line 888
    iget-object v3, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mDns1View:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 889
    iget-object v3, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f1302c4

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mDns2View:Landroid/widget/TextView;

    .line 890
    iget-object v3, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mDns2View:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 892
    :cond_1
    if-eqz v0, :cond_5

    .line 893
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getStaticIpConfiguration()Landroid/net/StaticIpConfiguration;

    move-result-object v2

    .line 894
    .local v2, "staticConfig":Landroid/net/StaticIpConfiguration;
    if-eqz v2, :cond_5

    .line 895
    iget-object v3, v2, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    if-eqz v3, :cond_2

    .line 896
    iget-object v3, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/TextView;

    .line 897
    iget-object v4, v2, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    invoke-virtual {v4}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    .line 896
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 898
    iget-object v3, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    iget-object v4, v2, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    invoke-virtual {v4}, Landroid/net/LinkAddress;->getNetworkPrefixLength()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 902
    :cond_2
    iget-object v3, v2, Landroid/net/StaticIpConfiguration;->gateway:Ljava/net/InetAddress;

    if-eqz v3, :cond_3

    .line 903
    iget-object v3, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mGatewayView:Landroid/widget/TextView;

    iget-object v4, v2, Landroid/net/StaticIpConfiguration;->gateway:Ljava/net/InetAddress;

    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 906
    :cond_3
    iget-object v3, v2, Landroid/net/StaticIpConfiguration;->dnsServers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 907
    .local v1, "dnsIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/net/InetAddress;>;"
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 908
    iget-object v4, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mDns1View:Landroid/widget/TextView;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InetAddress;

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 910
    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 911
    iget-object v4, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mDns2View:Landroid/widget/TextView;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InetAddress;

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 868
    .end local v1    # "dnsIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/net/InetAddress;>;"
    .end local v2    # "staticConfig":Landroid/net/StaticIpConfiguration;
    :cond_5
    :goto_0
    return-void

    .line 916
    :cond_6
    iget-object v3, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private showProxyFields()V
    .locals 9

    .prologue
    const v8, 0x7f1302b7

    const v7, 0x7f1302b6

    const/4 v6, 0x0

    const/16 v5, 0x8

    .line 921
    const/4 v0, 0x0

    .line 923
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    iget-object v3, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f1302b3

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 925
    iget-object v3, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    invoke-virtual {v3}, Lcom/android/exsettingslib/wifi/AccessPoint;->isSaved()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 926
    iget-object v3, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    invoke-virtual {v3}, Lcom/android/exsettingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 929
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_0
    iget-object v3, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    .line 930
    invoke-direct {p0, v7, v6}, Lcom/android/exsettings/wifi/WifiConfigController;->setVisibility(II)V

    .line 931
    const v3, 0x7f1302b9

    invoke-direct {p0, v3, v6}, Lcom/android/exsettings/wifi/WifiConfigController;->setVisibility(II)V

    .line 932
    invoke-direct {p0, v8, v5}, Lcom/android/exsettings/wifi/WifiConfigController;->setVisibility(II)V

    .line 933
    iget-object v3, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mProxyHostView:Landroid/widget/TextView;

    if-nez v3, :cond_1

    .line 934
    iget-object v3, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f1302ba

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mProxyHostView:Landroid/widget/TextView;

    .line 935
    iget-object v3, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mProxyHostView:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 936
    iget-object v3, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f1302bb

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mProxyPortView:Landroid/widget/TextView;

    .line 937
    iget-object v3, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mProxyPortView:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 938
    iget-object v3, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f1302bc

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mProxyExclusionListView:Landroid/widget/TextView;

    .line 939
    iget-object v3, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mProxyExclusionListView:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 941
    :cond_1
    if-eqz v0, :cond_2

    .line 942
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v2

    .line 943
    .local v2, "proxyProperties":Landroid/net/ProxyInfo;
    if-eqz v2, :cond_2

    .line 944
    iget-object v3, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mProxyHostView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/net/ProxyInfo;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 945
    iget-object v3, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mProxyPortView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/net/ProxyInfo;->getPort()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 946
    iget-object v3, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mProxyExclusionListView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/net/ProxyInfo;->getExclusionListAsString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 920
    .end local v2    # "proxyProperties":Landroid/net/ProxyInfo;
    :cond_2
    :goto_0
    return-void

    .line 949
    :cond_3
    iget-object v3, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_5

    .line 950
    invoke-direct {p0, v7, v5}, Lcom/android/exsettings/wifi/WifiConfigController;->setVisibility(II)V

    .line 951
    const v3, 0x7f1302b9

    invoke-direct {p0, v3, v5}, Lcom/android/exsettings/wifi/WifiConfigController;->setVisibility(II)V

    .line 952
    invoke-direct {p0, v8, v6}, Lcom/android/exsettings/wifi/WifiConfigController;->setVisibility(II)V

    .line 954
    iget-object v3, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mProxyPacView:Landroid/widget/TextView;

    if-nez v3, :cond_4

    .line 955
    iget-object v3, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f1302b8

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mProxyPacView:Landroid/widget/TextView;

    .line 956
    iget-object v3, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mProxyPacView:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 958
    :cond_4
    if-eqz v0, :cond_2

    .line 959
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v1

    .line 960
    .local v1, "proxyInfo":Landroid/net/ProxyInfo;
    if-eqz v1, :cond_2

    .line 961
    iget-object v3, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mProxyPacView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/net/ProxyInfo;->getPacFileUrl()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 965
    .end local v1    # "proxyInfo":Landroid/net/ProxyInfo;
    :cond_5
    invoke-direct {p0, v7, v5}, Lcom/android/exsettings/wifi/WifiConfigController;->setVisibility(II)V

    .line 966
    const v3, 0x7f1302b9

    invoke-direct {p0, v3, v5}, Lcom/android/exsettings/wifi/WifiConfigController;->setVisibility(II)V

    .line 967
    invoke-direct {p0, v8, v5}, Lcom/android/exsettings/wifi/WifiConfigController;->setVisibility(II)V

    goto :goto_0
.end method

.method private showSecurityFields()V
    .locals 11

    .prologue
    const v10, 0x7f13029f

    const v7, 0x7f13029e

    const/16 v9, 0x8

    const/4 v8, 0x0

    .line 642
    iget v6, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mAccessPointSecurity:I

    if-nez v6, :cond_0

    .line 643
    iget-object v6, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    .line 644
    return-void

    .line 646
    :cond_0
    iget-object v6, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    .line 648
    iget-object v6, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    if-nez v6, :cond_1

    .line 649
    iget-object v6, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v7, 0x7f1301c4

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    .line 650
    iget-object v6, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v6, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 651
    iget-object v6, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v7, 0x7f13029b

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/CheckBox;

    invoke-virtual {v6, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 654
    iget-object v6, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    invoke-virtual {v6}, Lcom/android/exsettingslib/wifi/AccessPoint;->isSaved()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 655
    iget-object v6, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    const v7, 0x7f0c075a

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setHint(I)V

    .line 659
    :cond_1
    iget v6, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mAccessPointSecurity:I

    const/4 v7, 0x3

    if-eq v6, v7, :cond_2

    .line 660
    iget-object v6, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v6, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    .line 661
    return-void

    .line 663
    :cond_2
    iget-object v6, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v6, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    .line 665
    iget-object v6, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    if-nez v6, :cond_5

    .line 666
    invoke-direct {p0}, Lcom/android/exsettings/wifi/WifiConfigController;->getSIMInfo()V

    .line 667
    iget-object v6, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v7, 0x7f1302a1

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Spinner;

    iput-object v6, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    .line 668
    iget-object v6, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v6, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 669
    iget-object v6, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/exsettings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_3

    iget-object v6, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 670
    const v7, 0x11200b5

    .line 669
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 679
    :goto_0
    iget-object v6, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v7, 0x7f1302a5

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Spinner;

    iput-object v6, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    .line 680
    iget-object v6, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v7, 0x7f1302a7

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Spinner;

    iput-object v6, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mEapCaCertSpinner:Landroid/widget/Spinner;

    .line 681
    iget-object v6, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v7, 0x7f1302a9

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Spinner;

    iput-object v6, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mEapUserCertSpinner:Landroid/widget/Spinner;

    .line 682
    iget-object v6, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v7, 0x7f1302a3

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Spinner;

    iput-object v6, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mSimCardSpinner:Landroid/widget/Spinner;

    .line 683
    iget-object v6, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v7, 0x7f1302ab

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mEapIdentityView:Landroid/widget/TextView;

    .line 684
    iget-object v6, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v7, 0x7f1302ad

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mEapAnonymousView:Landroid/widget/TextView;

    .line 686
    iget-object v6, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mEapCaCertSpinner:Landroid/widget/Spinner;

    const-string/jumbo v7, "CACERT_"

    invoke-direct {p0, v6, v7}, Lcom/android/exsettings/wifi/WifiConfigController;->loadCertificates(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 687
    iget-object v6, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mEapUserCertSpinner:Landroid/widget/Spinner;

    const-string/jumbo v7, "USRPKEY_"

    invoke-direct {p0, v6, v7}, Lcom/android/exsettings/wifi/WifiConfigController;->loadCertificates(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 690
    iget-object v6, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    invoke-virtual {v6}, Lcom/android/exsettingslib/wifi/AccessPoint;->isSaved()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 691
    iget-object v6, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    invoke-virtual {v6}, Lcom/android/exsettingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v6

    iget-object v3, v6, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 692
    .local v3, "enterpriseConfig":Landroid/net/wifi/WifiEnterpriseConfig;
    invoke-virtual {v3}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v1

    .line 693
    .local v1, "eapMethod":I
    invoke-virtual {v3}, Landroid/net/wifi/WifiEnterpriseConfig;->getPhase2Method()I

    move-result v4

    .line 694
    .local v4, "phase2Method":I
    iget-object v6, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v6, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 695
    invoke-direct {p0, v1}, Lcom/android/exsettings/wifi/WifiConfigController;->showEapFieldsByMethod(I)V

    .line 696
    packed-switch v1, :pswitch_data_0

    .line 720
    :pswitch_0
    iget-object v6, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    invoke-virtual {v6, v4}, Landroid/widget/Spinner;->setSelection(I)V

    .line 723
    :goto_1
    iget-object v6, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mEapCaCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaCertificateAlias()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v6, v7}, Lcom/android/exsettings/wifi/WifiConfigController;->setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 724
    iget-object v6, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mEapUserCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/net/wifi/WifiEnterpriseConfig;->getClientCertificateAlias()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v6, v7}, Lcom/android/exsettings/wifi/WifiConfigController;->setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 725
    iget-object v6, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mEapIdentityView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/net/wifi/WifiEnterpriseConfig;->getIdentity()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 726
    iget-object v6, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mEapAnonymousView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/net/wifi/WifiEnterpriseConfig;->getAnonymousIdentity()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 641
    .end local v1    # "eapMethod":I
    .end local v3    # "enterpriseConfig":Landroid/net/wifi/WifiEnterpriseConfig;
    .end local v4    # "phase2Method":I
    :goto_2
    return-void

    .line 671
    :cond_3
    iget-object v6, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 672
    const v7, 0x7f0a0015

    .line 671
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 673
    .local v2, "eapMethods":[Ljava/lang/String;
    new-instance v5, Landroid/widget/ArrayAdapter;

    iget-object v6, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    .line 674
    const v7, 0x1090008

    .line 673
    invoke-direct {v5, v6, v7, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 676
    .local v5, "spinnerAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v6, 0x1090009

    .line 675
    invoke-virtual {v5, v6}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 677
    iget-object v6, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v6, v5}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    goto/16 :goto_0

    .line 698
    .end local v2    # "eapMethods":[Ljava/lang/String;
    .end local v5    # "spinnerAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    .restart local v1    # "eapMethod":I
    .restart local v3    # "enterpriseConfig":Landroid/net/wifi/WifiEnterpriseConfig;
    .restart local v4    # "phase2Method":I
    :pswitch_1
    packed-switch v4, :pswitch_data_1

    .line 709
    :pswitch_2
    const-string/jumbo v6, "WifiConfigController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Invalid phase 2 method "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 700
    :pswitch_3
    iget-object v6, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    invoke-virtual {v6, v8}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_1

    .line 703
    :pswitch_4
    iget-object v6, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_1

    .line 706
    :pswitch_5
    iget-object v6, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_1

    .line 716
    :pswitch_6
    iget-object v6, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    invoke-virtual {v6}, Lcom/android/exsettingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 717
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    iget-object v6, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mSimCardSpinner:Landroid/widget/Spinner;

    iget v7, v0, Landroid/net/wifi/WifiConfiguration;->SIMNum:I

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v6, v7}, Landroid/widget/Spinner;->setSelection(I)V

    goto/16 :goto_1

    .line 728
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v1    # "eapMethod":I
    .end local v3    # "enterpriseConfig":Landroid/net/wifi/WifiEnterpriseConfig;
    .end local v4    # "phase2Method":I
    :cond_4
    iget-object v6, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v6}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v6

    invoke-direct {p0, v6}, Lcom/android/exsettings/wifi/WifiConfigController;->showEapFieldsByMethod(I)V

    goto :goto_2

    .line 731
    :cond_5
    iget-object v6, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v6}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v6

    invoke-direct {p0, v6}, Lcom/android/exsettings/wifi/WifiConfigController;->showEapFieldsByMethod(I)V

    goto :goto_2

    .line 696
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_6
        :pswitch_6
    .end packed-switch

    .line 698
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private validateIpConfigFields(Landroid/net/StaticIpConfiguration;)I
    .locals 16
    .param p1, "staticIpConfiguration"    # Landroid/net/StaticIpConfiguration;

    .prologue
    .line 574
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/exsettings/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/TextView;

    if-nez v13, :cond_0

    const/4 v13, 0x0

    return v13

    .line 576
    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/exsettings/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/TextView;

    invoke-virtual {v13}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v13

    invoke-interface {v13}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    .line 577
    .local v9, "ipAddr":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_1

    const v13, 0x7f0c077f

    return v13

    .line 579
    :cond_1
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/exsettings/wifi/WifiConfigController;->getIPv4Address(Ljava/lang/String;)Ljava/net/Inet4Address;

    move-result-object v8

    .line 580
    .local v8, "inetAddr":Ljava/net/Inet4Address;
    if-nez v8, :cond_2

    .line 581
    const v13, 0x7f0c077f

    return v13

    .line 584
    :cond_2
    const/4 v11, -0x1

    .line 586
    .local v11, "networkPrefixLength":I
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/exsettings/wifi/WifiConfigController;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    invoke-virtual {v13}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v13

    invoke-interface {v13}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 587
    if-ltz v11, :cond_3

    const/16 v13, 0x20

    if-le v11, v13, :cond_4

    .line 588
    :cond_3
    const v13, 0x7f0c0782

    return v13

    .line 590
    :cond_4
    new-instance v13, Landroid/net/LinkAddress;

    invoke-direct {v13, v8, v11}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    move-object/from16 v0, p1

    iput-object v13, v0, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 597
    :goto_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/exsettings/wifi/WifiConfigController;->mGatewayView:Landroid/widget/TextView;

    invoke-virtual {v13}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v13

    invoke-interface {v13}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    .line 598
    .local v6, "gateway":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 601
    :try_start_1
    invoke-static {v8, v11}, Landroid/net/NetworkUtils;->getNetworkPart(Ljava/net/InetAddress;I)Ljava/net/InetAddress;

    move-result-object v10

    .line 602
    .local v10, "netPart":Ljava/net/InetAddress;
    invoke-virtual {v10}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v1

    .line 603
    .local v1, "addr":[B
    array-length v13, v1

    add-int/lit8 v13, v13, -0x1

    const/4 v14, 0x1

    aput-byte v14, v1, v13

    .line 604
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/exsettings/wifi/WifiConfigController;->mGatewayView:Landroid/widget/TextView;

    invoke-static {v1}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v14

    invoke-virtual {v14}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_2

    .line 616
    .end local v1    # "addr":[B
    .end local v10    # "netPart":Ljava/net/InetAddress;
    :goto_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/exsettings/wifi/WifiConfigController;->mDns1View:Landroid/widget/TextView;

    invoke-virtual {v13}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v13

    invoke-interface {v13}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 617
    .local v2, "dns":Ljava/lang/String;
    const/4 v3, 0x0

    .line 619
    .local v3, "dnsAddr":Ljava/net/InetAddress;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 621
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/exsettings/wifi/WifiConfigController;->mDns1View:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/exsettings/wifi/WifiConfigController;->mConfigUi:Lcom/android/exsettings/wifi/WifiConfigUiBase;

    invoke-interface {v14}, Lcom/android/exsettings/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v14

    const v15, 0x7f0c0784

    invoke-virtual {v14, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 630
    .end local v3    # "dnsAddr":Ljava/net/InetAddress;
    :goto_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/exsettings/wifi/WifiConfigController;->mDns2View:Landroid/widget/TextView;

    invoke-virtual {v13}, Landroid/widget/TextView;->length()I

    move-result v13

    if-lez v13, :cond_a

    .line 631
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/exsettings/wifi/WifiConfigController;->mDns2View:Landroid/widget/TextView;

    invoke-virtual {v13}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v13

    invoke-interface {v13}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 632
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/exsettings/wifi/WifiConfigController;->getIPv4Address(Ljava/lang/String;)Ljava/net/Inet4Address;

    move-result-object v3

    .line 633
    .local v3, "dnsAddr":Ljava/net/InetAddress;
    if-nez v3, :cond_9

    .line 634
    const v13, 0x7f0c0781

    return v13

    .line 591
    .end local v2    # "dns":Ljava/lang/String;
    .end local v3    # "dnsAddr":Ljava/net/InetAddress;
    .end local v6    # "gateway":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 593
    .local v4, "e":Ljava/lang/NumberFormatException;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/exsettings/wifi/WifiConfigController;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/exsettings/wifi/WifiConfigController;->mConfigUi:Lcom/android/exsettings/wifi/WifiConfigUiBase;

    invoke-interface {v14}, Lcom/android/exsettings/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v14

    .line 594
    const v15, 0x7f0c078a

    .line 593
    invoke-virtual {v14, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 609
    .end local v4    # "e":Ljava/lang/NumberFormatException;
    .restart local v6    # "gateway":Ljava/lang/String;
    :cond_5
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/exsettings/wifi/WifiConfigController;->getIPv4Address(Ljava/lang/String;)Ljava/net/Inet4Address;

    move-result-object v7

    .line 610
    .local v7, "gatewayAddr":Ljava/net/InetAddress;
    if-nez v7, :cond_6

    .line 611
    const v13, 0x7f0c0780

    return v13

    .line 613
    :cond_6
    move-object/from16 v0, p1

    iput-object v7, v0, Landroid/net/StaticIpConfiguration;->gateway:Ljava/net/InetAddress;

    goto :goto_1

    .line 623
    .end local v7    # "gatewayAddr":Ljava/net/InetAddress;
    .restart local v2    # "dns":Ljava/lang/String;
    .local v3, "dnsAddr":Ljava/net/InetAddress;
    :cond_7
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/exsettings/wifi/WifiConfigController;->getIPv4Address(Ljava/lang/String;)Ljava/net/Inet4Address;

    move-result-object v3

    .line 624
    .local v3, "dnsAddr":Ljava/net/InetAddress;
    if-nez v3, :cond_8

    .line 625
    const v13, 0x7f0c0781

    return v13

    .line 627
    :cond_8
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/net/StaticIpConfiguration;->dnsServers:Ljava/util/ArrayList;

    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 636
    :cond_9
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/net/StaticIpConfiguration;->dnsServers:Ljava/util/ArrayList;

    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 638
    .end local v3    # "dnsAddr":Ljava/net/InetAddress;
    :cond_a
    const/4 v13, 0x0

    return v13

    .line 605
    .end local v2    # "dns":Ljava/lang/String;
    :catch_1
    move-exception v5

    .local v5, "ee":Ljava/lang/RuntimeException;
    goto/16 :goto_1

    .line 606
    .end local v5    # "ee":Ljava/lang/RuntimeException;
    :catch_2
    move-exception v12

    .local v12, "u":Ljava/net/UnknownHostException;
    goto/16 :goto_1
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 1020
    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mTextViewChangedHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/exsettings/wifi/WifiConfigController$1;

    invoke-direct {v1, p0}, Lcom/android/exsettings/wifi/WifiConfigController$1;-><init>(Lcom/android/exsettings/wifi/WifiConfigController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1019
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 1028
    return-void
.end method

.method enableSubmitIfAppropriate()V
    .locals 5

    .prologue
    .line 359
    iget-object v3, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mConfigUi:Lcom/android/exsettings/wifi/WifiConfigUiBase;

    invoke-interface {v3}, Lcom/android/exsettings/wifi/WifiConfigUiBase;->getSubmitButton()Landroid/widget/Button;

    move-result-object v2

    .line 360
    .local v2, "submit":Landroid/widget/Button;
    if-nez v2, :cond_0

    return-void

    .line 362
    :cond_0
    const/4 v0, 0x0

    .line 363
    .local v0, "enabled":Z
    const/4 v1, 0x0

    .line 365
    .local v1, "passwordInvalid":Z
    iget-object v3, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    if-eqz v3, :cond_1

    .line 366
    iget v3, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mAccessPointSecurity:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->length()I

    move-result v3

    if-nez v3, :cond_2

    .line 368
    :goto_0
    const/4 v1, 0x1

    .line 371
    :cond_1
    iget-object v3, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mSsidView:Landroid/widget/TextView;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mSsidView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->length()I

    move-result v3

    if-nez v3, :cond_3

    .line 374
    :goto_1
    const/4 v0, 0x0

    .line 382
    :goto_2
    invoke-virtual {v2, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 358
    return-void

    .line 367
    :cond_2
    iget v3, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mAccessPointSecurity:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    iget-object v3, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->length()I

    move-result v3

    const/16 v4, 0x8

    if-ge v3, v4, :cond_1

    goto :goto_0

    .line 372
    :cond_3
    iget-object v3, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    invoke-virtual {v3}, Lcom/android/exsettingslib/wifi/AccessPoint;->isSaved()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 376
    :cond_4
    invoke-direct {p0}, Lcom/android/exsettings/wifi/WifiConfigController;->ipAndProxyFieldsAreValid()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 377
    const/4 v0, 0x1

    goto :goto_2

    .line 371
    :cond_5
    if-eqz v1, :cond_4

    goto :goto_1

    .line 379
    :cond_6
    const/4 v0, 0x0

    goto :goto_2
.end method

.method getConfig()Landroid/net/wifi/WifiConfiguration;
    .locals 13

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x3

    const/4 v8, 0x1

    const/16 v10, 0x22

    const/4 v9, 0x0

    .line 386
    iget-boolean v7, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mEdit:Z

    if-nez v7, :cond_0

    .line 387
    return-object v12

    .line 390
    :cond_0
    new-instance v2, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v2}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 392
    .local v2, "config":Landroid/net/wifi/WifiConfiguration;
    iget-object v7, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    if-nez v7, :cond_1

    .line 394
    iget-object v7, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mSsidView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    .line 393
    invoke-static {v7}, Lcom/android/exsettingslib/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 396
    iput-boolean v8, v2, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 404
    :goto_0
    iget v7, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mAccessPointSecurity:I

    packed-switch v7, :pswitch_data_0

    .line 506
    return-object v12

    .line 397
    :cond_1
    iget-object v7, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    invoke-virtual {v7}, Lcom/android/exsettingslib/wifi/AccessPoint;->isSaved()Z

    move-result v7

    if-nez v7, :cond_2

    .line 399
    iget-object v7, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    invoke-virtual {v7}, Lcom/android/exsettingslib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v7

    .line 398
    invoke-static {v7}, Lcom/android/exsettingslib/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    goto :goto_0

    .line 401
    :cond_2
    iget-object v7, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    invoke-virtual {v7}, Lcom/android/exsettingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v7

    iget v7, v7, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iput v7, v2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    goto :goto_0

    .line 406
    :pswitch_0
    iget-object v7, v2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v7, v9}, Ljava/util/BitSet;->set(I)V

    .line 510
    :cond_3
    :goto_1
    new-instance v7, Landroid/net/IpConfiguration;

    iget-object v8, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mIpAssignment:Landroid/net/IpConfiguration$IpAssignment;

    iget-object v9, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mProxySettings:Landroid/net/IpConfiguration$ProxySettings;

    .line 511
    iget-object v10, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mStaticIpConfiguration:Landroid/net/StaticIpConfiguration;

    iget-object v11, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mHttpProxy:Landroid/net/ProxyInfo;

    .line 510
    invoke-direct {v7, v8, v9, v10, v11}, Landroid/net/IpConfiguration;-><init>(Landroid/net/IpConfiguration$IpAssignment;Landroid/net/IpConfiguration$ProxySettings;Landroid/net/StaticIpConfiguration;Landroid/net/ProxyInfo;)V

    .line 509
    invoke-virtual {v2, v7}, Landroid/net/wifi/WifiConfiguration;->setIpConfiguration(Landroid/net/IpConfiguration;)V

    .line 513
    return-object v2

    .line 410
    :pswitch_1
    iget-object v7, v2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v7, v9}, Ljava/util/BitSet;->set(I)V

    .line 411
    iget-object v7, v2, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v7, v9}, Ljava/util/BitSet;->set(I)V

    .line 412
    iget-object v7, v2, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v7, v8}, Ljava/util/BitSet;->set(I)V

    .line 413
    iget-object v7, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->length()I

    move-result v7

    if-eqz v7, :cond_3

    .line 414
    iget-object v7, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->length()I

    move-result v4

    .line 415
    .local v4, "length":I
    iget-object v7, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    .line 417
    .local v5, "password":Ljava/lang/String;
    const/16 v7, 0xa

    if-eq v4, v7, :cond_4

    const/16 v7, 0x1a

    if-ne v4, v7, :cond_5

    .line 418
    :cond_4
    const-string/jumbo v7, "[0-9A-Fa-f]*"

    invoke-virtual {v5, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v7

    .line 417
    if-eqz v7, :cond_6

    .line 419
    iget-object v7, v2, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aput-object v5, v7, v9

    goto :goto_1

    .line 417
    :cond_5
    const/16 v7, 0x3a

    if-eq v4, v7, :cond_4

    .line 421
    :cond_6
    iget-object v7, v2, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v9

    goto :goto_1

    .line 427
    .end local v4    # "length":I
    .end local v5    # "password":Ljava/lang/String;
    :pswitch_2
    iget-object v7, v2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v7, v8}, Ljava/util/BitSet;->set(I)V

    .line 428
    iget-object v7, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->length()I

    move-result v7

    if-eqz v7, :cond_3

    .line 429
    iget-object v7, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    .line 430
    .restart local v5    # "password":Ljava/lang/String;
    const-string/jumbo v7, "[0-9A-Fa-f]{64}"

    invoke-virtual {v5, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 431
    iput-object v5, v2, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto/16 :goto_1

    .line 433
    :cond_7
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v2, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto/16 :goto_1

    .line 439
    .end local v5    # "password":Ljava/lang/String;
    :pswitch_3
    iget-object v7, v2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Ljava/util/BitSet;->set(I)V

    .line 440
    iget-object v7, v2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v7, v11}, Ljava/util/BitSet;->set(I)V

    .line 441
    new-instance v7, Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-direct {v7}, Landroid/net/wifi/WifiEnterpriseConfig;-><init>()V

    iput-object v7, v2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 442
    iget-object v7, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v7}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v3

    .line 443
    .local v3, "eapMethod":I
    iget-object v7, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    invoke-virtual {v7}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v6

    .line 444
    .local v6, "phase2Method":I
    iget-object v7, v2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v7, v3}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    .line 445
    packed-switch v3, :pswitch_data_1

    .line 473
    :pswitch_4
    iget-object v7, v2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v7, v6}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    .line 476
    :goto_2
    iget-object v7, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mEapCaCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v7}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 477
    .local v0, "caCert":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/exsettings/wifi/WifiConfigController;->unspecifiedCert:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    const-string/jumbo v0, ""

    .line 478
    :cond_8
    iget-object v7, v2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v7, v0}, Landroid/net/wifi/WifiEnterpriseConfig;->setCaCertificateAlias(Ljava/lang/String;)V

    .line 479
    iget-object v7, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mEapUserCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v7}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 480
    .local v1, "clientCert":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/exsettings/wifi/WifiConfigController;->unspecifiedCert:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    const-string/jumbo v1, ""

    .line 481
    :cond_9
    iget-object v7, v2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v7, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->setClientCertificateAlias(Ljava/lang/String;)V

    .line 482
    const/4 v7, 0x4

    if-eq v3, v7, :cond_a

    const/4 v7, 0x5

    if-ne v3, v7, :cond_b

    .line 483
    :cond_a
    iget-object v7, v2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const-string/jumbo v8, ""

    invoke-virtual {v7, v8}, Landroid/net/wifi/WifiEnterpriseConfig;->setIdentity(Ljava/lang/String;)V

    .line 484
    iget-object v7, v2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const-string/jumbo v8, ""

    invoke-virtual {v7, v8}, Landroid/net/wifi/WifiEnterpriseConfig;->setAnonymousIdentity(Ljava/lang/String;)V

    .line 494
    :goto_3
    iget-object v7, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->isShown()Z

    move-result v7

    if-eqz v7, :cond_d

    .line 497
    iget-object v7, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->length()I

    move-result v7

    if-lez v7, :cond_3

    .line 498
    iget-object v7, v2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    iget-object v8, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/net/wifi/WifiEnterpriseConfig;->setPassword(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 450
    .end local v0    # "caCert":Ljava/lang/String;
    .end local v1    # "clientCert":Ljava/lang/String;
    :pswitch_5
    packed-switch v6, :pswitch_data_2

    .line 461
    const-string/jumbo v7, "WifiConfigController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Unknown phase2 method"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 452
    :pswitch_6
    iget-object v7, v2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v7, v9}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    goto/16 :goto_2

    .line 455
    :pswitch_7
    iget-object v7, v2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v7, v11}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    goto/16 :goto_2

    .line 458
    :pswitch_8
    iget-object v7, v2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    goto/16 :goto_2

    .line 468
    :pswitch_9
    iget-object v7, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mSimCardSpinner:Landroid/widget/Spinner;

    invoke-virtual {v7}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/android/exsettings/wifi/WifiConfigController;->selectedSimCardNumber:I

    .line 469
    iget v7, p0, Lcom/android/exsettings/wifi/WifiConfigController;->selectedSimCardNumber:I

    iput v7, v2, Landroid/net/wifi/WifiConfiguration;->SIMNum:I

    goto/16 :goto_2

    .line 482
    .restart local v0    # "caCert":Ljava/lang/String;
    .restart local v1    # "clientCert":Ljava/lang/String;
    :cond_b
    const/4 v7, 0x6

    if-eq v3, v7, :cond_a

    .line 485
    if-ne v3, v11, :cond_c

    .line 486
    iget-object v7, v2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    iget-object v8, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mEapIdentityView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/net/wifi/WifiEnterpriseConfig;->setIdentity(Ljava/lang/String;)V

    .line 487
    iget-object v7, v2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const-string/jumbo v8, ""

    invoke-virtual {v7, v8}, Landroid/net/wifi/WifiEnterpriseConfig;->setAnonymousIdentity(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 489
    :cond_c
    iget-object v7, v2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    iget-object v8, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mEapIdentityView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/net/wifi/WifiEnterpriseConfig;->setIdentity(Ljava/lang/String;)V

    .line 490
    iget-object v7, v2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 491
    iget-object v8, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mEapAnonymousView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    .line 490
    invoke-virtual {v7, v8}, Landroid/net/wifi/WifiEnterpriseConfig;->setAnonymousIdentity(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 502
    :cond_d
    iget-object v7, v2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    iget-object v8, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/net/wifi/WifiEnterpriseConfig;->setPassword(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 404
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 445
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_9
        :pswitch_9
        :pswitch_9
    .end packed-switch

    .line 450
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method hideForgetButton()V
    .locals 2

    .prologue
    .line 344
    iget-object v1, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mConfigUi:Lcom/android/exsettings/wifi/WifiConfigUiBase;

    invoke-interface {v1}, Lcom/android/exsettings/wifi/WifiConfigUiBase;->getForgetButton()Landroid/widget/Button;

    move-result-object v0

    .line 345
    .local v0, "forget":Landroid/widget/Button;
    if-nez v0, :cond_0

    return-void

    .line 347
    :cond_0
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 343
    return-void
.end method

.method hideSubmitButton()V
    .locals 2

    .prologue
    .line 351
    iget-object v1, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mConfigUi:Lcom/android/exsettings/wifi/WifiConfigUiBase;

    invoke-interface {v1}, Lcom/android/exsettings/wifi/WifiConfigUiBase;->getSubmitButton()Landroid/widget/Button;

    move-result-object v0

    .line 352
    .local v0, "submit":Landroid/widget/Button;
    if-nez v0, :cond_0

    return-void

    .line 354
    :cond_0
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 350
    return-void
.end method

.method public isModify()Z
    .locals 1

    .prologue
    .line 1015
    iget-boolean v0, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mModify:Z

    return v0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 5
    .param p1, "view"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    const v4, 0x7f1302b2

    const/4 v3, 0x0

    .line 1039
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v1

    const v2, 0x7f13029b

    if-ne v1, v2, :cond_2

    .line 1040
    iget-object v1, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    .line 1041
    .local v0, "pos":I
    iget-object v2, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    .line 1042
    if-eqz p2, :cond_1

    .line 1043
    const/16 v1, 0x90

    .line 1042
    :goto_0
    or-int/lit8 v1, v1, 0x1

    .line 1041
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setInputType(I)V

    .line 1045
    if-ltz v0, :cond_0

    .line 1046
    iget-object v1, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    check-cast v1, Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 1038
    .end local v0    # "pos":I
    :cond_0
    :goto_1
    return-void

    .line 1044
    .restart local v0    # "pos":I
    :cond_1
    const/16 v1, 0x80

    goto :goto_0

    .line 1048
    .end local v0    # "pos":I
    :cond_2
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v1

    const v2, 0x7f1302b1

    if-ne v1, v2, :cond_0

    .line 1049
    if-eqz p2, :cond_3

    .line 1050
    iget-object v1, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 1052
    :cond_3
    iget-object v1, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 1059
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mSecuritySpinner:Landroid/widget/Spinner;

    if-ne p1, v0, :cond_0

    .line 1060
    iput p3, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mAccessPointSecurity:I

    .line 1061
    invoke-direct {p0}, Lcom/android/exsettings/wifi/WifiConfigController;->showSecurityFields()V

    .line 1069
    :goto_0
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/WifiConfigController;->enableSubmitIfAppropriate()V

    .line 1058
    return-void

    .line 1062
    :cond_0
    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    if-ne p1, v0, :cond_1

    .line 1063
    invoke-direct {p0}, Lcom/android/exsettings/wifi/WifiConfigController;->showSecurityFields()V

    goto :goto_0

    .line 1064
    :cond_1
    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    if-ne p1, v0, :cond_2

    .line 1065
    invoke-direct {p0}, Lcom/android/exsettings/wifi/WifiConfigController;->showProxyFields()V

    goto :goto_0

    .line 1067
    :cond_2
    invoke-direct {p0}, Lcom/android/exsettings/wifi/WifiConfigController;->showIpConfigFields()V

    goto :goto_0
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 1073
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 1033
    return-void
.end method

.method public updatePassword()V
    .locals 3

    .prologue
    .line 1081
    iget-object v1, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v2, 0x7f1301c4

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1084
    .local v0, "passwdView":Landroid/widget/TextView;
    iget-object v1, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v2, 0x7f13029b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1085
    const/16 v1, 0x90

    .line 1083
    :goto_0
    or-int/lit8 v1, v1, 0x1

    .line 1082
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setInputType(I)V

    .line 1080
    return-void

    .line 1086
    :cond_0
    const/16 v1, 0x80

    goto :goto_0
.end method
