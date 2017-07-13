.class public Lcom/android/exsettings/RadioInfo;
.super Landroid/app/Activity;
.source "RadioInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exsettings/RadioInfo$CellInfoListRateHandler;,
        Lcom/android/exsettings/RadioInfo$1;,
        Lcom/android/exsettings/RadioInfo$2;,
        Lcom/android/exsettings/RadioInfo$3;,
        Lcom/android/exsettings/RadioInfo$4;,
        Lcom/android/exsettings/RadioInfo$5;,
        Lcom/android/exsettings/RadioInfo$6;,
        Lcom/android/exsettings/RadioInfo$7;,
        Lcom/android/exsettings/RadioInfo$8;,
        Lcom/android/exsettings/RadioInfo$9;,
        Lcom/android/exsettings/RadioInfo$10;,
        Lcom/android/exsettings/RadioInfo$11;,
        Lcom/android/exsettings/RadioInfo$12;,
        Lcom/android/exsettings/RadioInfo$13;,
        Lcom/android/exsettings/RadioInfo$14;,
        Lcom/android/exsettings/RadioInfo$15;,
        Lcom/android/exsettings/RadioInfo$16;,
        Lcom/android/exsettings/RadioInfo$17;,
        Lcom/android/exsettings/RadioInfo$18;,
        Lcom/android/exsettings/RadioInfo$19;
    }
.end annotation


# static fields
.field private static synthetic -com_android_internal_telephony_PhoneConstants$StateSwitchesValues:[I


# instance fields
.field private final TAG:Ljava/lang/String;

.field private attempts:Landroid/widget/TextView;

.field private callState:Landroid/widget/TextView;

.field private cellInfoListRateButton:Landroid/widget/Button;

.field private dBm:Landroid/widget/TextView;

.field private disconnects:Landroid/widget/TextView;

.field private dnsCheckState:Landroid/widget/TextView;

.field private dnsCheckToggleButton:Landroid/widget/Button;

.field private gprsState:Landroid/widget/TextView;

.field private gsmState:Landroid/widget/TextView;

.field private imsRegRequiredButton:Landroid/widget/Button;

.field private imsVoLteProvisionedButton:Landroid/widget/Button;

.field private lteRamDumpButton:Landroid/widget/Button;

.field private mCellInfo:Landroid/widget/TextView;

.field mCellInfoListRateHandler:Lcom/android/exsettings/RadioInfo$CellInfoListRateHandler;

.field private mCellInfoValue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/telephony/CellInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mCfi:Landroid/widget/TextView;

.field private mCfiValue:Z

.field private mDcRtInfoTv:Landroid/widget/TextView;

.field private mDeviceId:Landroid/widget/TextView;

.field mDnsCheckButtonHandler:Landroid/view/View$OnClickListener;

.field private mGetPdpList:Landroid/view/MenuItem$OnMenuItemClickListener;

.field private mHandler:Landroid/os/Handler;

.field private mHttpClientTest:Landroid/widget/TextView;

.field private mHttpClientTestResult:Ljava/lang/String;

.field mImsRegRequiredHandler:Landroid/view/View$OnClickListener;

.field mImsVoLteProvisionedHandler:Landroid/view/View$OnClickListener;

.field private mLocation:Landroid/widget/TextView;

.field mLteRamDumpHandler:Landroid/view/View$OnClickListener;

.field private mMwi:Landroid/widget/TextView;

.field private mMwiValue:Z

.field private mNeighboringCids:Landroid/widget/TextView;

.field mOemInfoButtonHandler:Landroid/view/View$OnClickListener;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

.field mPingButtonHandler:Landroid/view/View$OnClickListener;

.field private mPingHostname:Landroid/widget/TextView;

.field private mPingHostnameResult:Ljava/lang/String;

.field private mPingIpAddr:Landroid/widget/TextView;

.field private mPingIpAddrResult:Ljava/lang/String;

.field mPowerButtonHandler:Landroid/view/View$OnClickListener;

.field mPreferredNetworkHandler:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private mPreferredNetworkLabels:[Ljava/lang/String;

.field mRefreshSmscButtonHandler:Landroid/view/View$OnClickListener;

.field private mSelectBandCallback:Landroid/view/MenuItem$OnMenuItemClickListener;

.field mSmsOverImsHandler:Landroid/view/View$OnClickListener;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mToggleData:Landroid/view/MenuItem$OnMenuItemClickListener;

.field mUpdateSmscButtonHandler:Landroid/view/View$OnClickListener;

.field private mViewADNCallback:Landroid/view/MenuItem$OnMenuItemClickListener;

.field private mViewFDNCallback:Landroid/view/MenuItem$OnMenuItemClickListener;

.field private mViewSDNCallback:Landroid/view/MenuItem$OnMenuItemClickListener;

.field private network:Landroid/widget/TextView;

.field private number:Landroid/widget/TextView;

.field private oemInfoButton:Landroid/widget/Button;

.field private operatorName:Landroid/widget/TextView;

.field private phone:Lcom/android/internal/telephony/Phone;

.field private pingTestButton:Landroid/widget/Button;

.field private preferredNetworkType:Landroid/widget/Spinner;

.field private radioPowerButton:Landroid/widget/Button;

.field private received:Landroid/widget/TextView;

.field private refreshSmscButton:Landroid/widget/Button;

.field private resets:Landroid/widget/TextView;

.field private roamingState:Landroid/widget/TextView;

.field private sent:Landroid/widget/TextView;

.field private sentSinceReceived:Landroid/widget/TextView;

.field private smsOverImsButton:Landroid/widget/Button;

.field private smsc:Landroid/widget/EditText;

.field private successes:Landroid/widget/TextView;

.field private updateSmscButton:Landroid/widget/Button;


# direct methods
.method static synthetic -get0(Lcom/android/exsettings/RadioInfo;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/RadioInfo;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/exsettings/RadioInfo;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/RadioInfo;->mHttpClientTest:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get10(Lcom/android/exsettings/RadioInfo;)Lcom/android/internal/telephony/Phone;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/RadioInfo;->phone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic -get11(Lcom/android/exsettings/RadioInfo;)Landroid/widget/Spinner;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/RadioInfo;->preferredNetworkType:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic -get12(Lcom/android/exsettings/RadioInfo;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/RadioInfo;->smsc:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic -get13(Lcom/android/exsettings/RadioInfo;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/RadioInfo;->updateSmscButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/exsettings/RadioInfo;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/RadioInfo;->mHttpClientTestResult:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/exsettings/RadioInfo;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/RadioInfo;->mNeighboringCids:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/exsettings/RadioInfo;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/RadioInfo;->mPingHostname:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/exsettings/RadioInfo;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/RadioInfo;->mPingHostnameResult:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/exsettings/RadioInfo;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/RadioInfo;->mPingIpAddr:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/exsettings/RadioInfo;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/RadioInfo;->mPingIpAddrResult:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/exsettings/RadioInfo;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/RadioInfo;->mPreferredNetworkLabels:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/exsettings/RadioInfo;)Landroid/telephony/TelephonyManager;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/RadioInfo;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method private static synthetic -getcom_android_internal_telephony_PhoneConstants$StateSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/android/exsettings/RadioInfo;->-com_android_internal_telephony_PhoneConstants$StateSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/exsettings/RadioInfo;->-com_android_internal_telephony_PhoneConstants$StateSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneConstants$State;->values()[Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneConstants$State;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    :try_start_1
    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneConstants$State;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneConstants$State;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    sput-object v0, Lcom/android/exsettings/RadioInfo;->-com_android_internal_telephony_PhoneConstants$StateSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_1

    :catch_2
    move-exception v1

    goto :goto_0
.end method

.method static synthetic -set0(Lcom/android/exsettings/RadioInfo;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/exsettings/RadioInfo;->mCfiValue:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/exsettings/RadioInfo;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/exsettings/RadioInfo;->mMwiValue:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/exsettings/RadioInfo;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/exsettings/RadioInfo;->isImsRegRequired()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/exsettings/RadioInfo;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/exsettings/RadioInfo;->isImsVoLteProvisioned()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap10(Lcom/android/exsettings/RadioInfo;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/exsettings/RadioInfo;->updateCallRedirect()V

    return-void
.end method

.method static synthetic -wrap11(Lcom/android/exsettings/RadioInfo;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/exsettings/RadioInfo;->updateCellInfoListRate()V

    return-void
.end method

.method static synthetic -wrap12(Lcom/android/exsettings/RadioInfo;Ljava/util/List;)V
    .locals 0
    .param p1, "arrayCi"    # Ljava/util/List;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/exsettings/RadioInfo;->updateCellInfoTv(Ljava/util/List;)V

    return-void
.end method

.method static synthetic -wrap13(Lcom/android/exsettings/RadioInfo;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/exsettings/RadioInfo;->updateDataState()V

    return-void
.end method

.method static synthetic -wrap14(Lcom/android/exsettings/RadioInfo;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/exsettings/RadioInfo;->updateDataStats2()V

    return-void
.end method

.method static synthetic -wrap15(Lcom/android/exsettings/RadioInfo;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/exsettings/RadioInfo;->updateDataStats()V

    return-void
.end method

.method static synthetic -wrap16(Lcom/android/exsettings/RadioInfo;Landroid/telephony/DataConnectionRealTimeInfo;)V
    .locals 0
    .param p1, "dcRtInfo"    # Landroid/telephony/DataConnectionRealTimeInfo;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/exsettings/RadioInfo;->updateDcRtInfoTv(Landroid/telephony/DataConnectionRealTimeInfo;)V

    return-void
.end method

.method static synthetic -wrap17(Lcom/android/exsettings/RadioInfo;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/exsettings/RadioInfo;->updateDnsCheckState()V

    return-void
.end method

.method static synthetic -wrap18(Lcom/android/exsettings/RadioInfo;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/exsettings/RadioInfo;->updateImsRegRequiredState()V

    return-void
.end method

.method static synthetic -wrap19(Lcom/android/exsettings/RadioInfo;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/exsettings/RadioInfo;->updateImsVoLteProvisionedState()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/exsettings/RadioInfo;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/exsettings/RadioInfo;->isLteRamDumpEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap20(Lcom/android/exsettings/RadioInfo;Landroid/telephony/CellLocation;)V
    .locals 0
    .param p1, "location"    # Landroid/telephony/CellLocation;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/exsettings/RadioInfo;->updateLocation(Landroid/telephony/CellLocation;)V

    return-void
.end method

.method static synthetic -wrap21(Lcom/android/exsettings/RadioInfo;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/exsettings/RadioInfo;->updateLteRamDumpState()V

    return-void
.end method

.method static synthetic -wrap22(Lcom/android/exsettings/RadioInfo;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/exsettings/RadioInfo;->updateMessageWaiting()V

    return-void
.end method

.method static synthetic -wrap23(Lcom/android/exsettings/RadioInfo;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "cids"    # Ljava/util/ArrayList;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/exsettings/RadioInfo;->updateNeighboringCids(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic -wrap24(Lcom/android/exsettings/RadioInfo;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/exsettings/RadioInfo;->updateNetworkType()V

    return-void
.end method

.method static synthetic -wrap25(Lcom/android/exsettings/RadioInfo;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/exsettings/RadioInfo;->updatePdpList()V

    return-void
.end method

.method static synthetic -wrap26(Lcom/android/exsettings/RadioInfo;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/exsettings/RadioInfo;->updatePhoneState()V

    return-void
.end method

.method static synthetic -wrap27(Lcom/android/exsettings/RadioInfo;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/exsettings/RadioInfo;->updatePingState()V

    return-void
.end method

.method static synthetic -wrap28(Lcom/android/exsettings/RadioInfo;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/exsettings/RadioInfo;->updatePowerState()V

    return-void
.end method

.method static synthetic -wrap29(Lcom/android/exsettings/RadioInfo;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/exsettings/RadioInfo;->updateServiceState()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/exsettings/RadioInfo;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/exsettings/RadioInfo;->isRadioOn()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap30(Lcom/android/exsettings/RadioInfo;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/exsettings/RadioInfo;->updateSignalStrength()V

    return-void
.end method

.method static synthetic -wrap31(Lcom/android/exsettings/RadioInfo;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/exsettings/RadioInfo;->updateSmsOverImsState()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/exsettings/RadioInfo;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/exsettings/RadioInfo;->isSmsOverImsEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap5(Lcom/android/exsettings/RadioInfo;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/exsettings/RadioInfo;->httpClientTest()V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/exsettings/RadioInfo;Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/exsettings/RadioInfo;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/exsettings/RadioInfo;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/exsettings/RadioInfo;->pingHostname()V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/exsettings/RadioInfo;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/exsettings/RadioInfo;->pingIpAddr()V

    return-void
.end method

.method static synthetic -wrap9(Lcom/android/exsettings/RadioInfo;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/exsettings/RadioInfo;->refreshSmsc()V

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 69
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 70
    const-string/jumbo v0, "phone"

    iput-object v0, p0, Lcom/android/exsettings/RadioInfo;->TAG:Ljava/lang/String;

    .line 130
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/exsettings/RadioInfo;->phone:Lcom/android/internal/telephony/Phone;

    .line 136
    iput-boolean v2, p0, Lcom/android/exsettings/RadioInfo;->mMwiValue:Z

    .line 137
    iput-boolean v2, p0, Lcom/android/exsettings/RadioInfo;->mCfiValue:Z

    .line 140
    new-instance v0, Lcom/android/exsettings/RadioInfo$1;

    invoke-direct {v0, p0}, Lcom/android/exsettings/RadioInfo$1;-><init>(Lcom/android/exsettings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/exsettings/RadioInfo;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 184
    new-instance v0, Lcom/android/exsettings/RadioInfo$2;

    invoke-direct {v0, p0}, Lcom/android/exsettings/RadioInfo$2;-><init>(Lcom/android/exsettings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/exsettings/RadioInfo;->mHandler:Landroid/os/Handler;

    .line 865
    new-instance v0, Lcom/android/exsettings/RadioInfo$3;

    invoke-direct {v0, p0}, Lcom/android/exsettings/RadioInfo$3;-><init>(Lcom/android/exsettings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/exsettings/RadioInfo;->mViewADNCallback:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 880
    new-instance v0, Lcom/android/exsettings/RadioInfo$4;

    invoke-direct {v0, p0}, Lcom/android/exsettings/RadioInfo$4;-><init>(Lcom/android/exsettings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/exsettings/RadioInfo;->mViewFDNCallback:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 895
    new-instance v0, Lcom/android/exsettings/RadioInfo$5;

    invoke-direct {v0, p0}, Lcom/android/exsettings/RadioInfo$5;-><init>(Lcom/android/exsettings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/exsettings/RadioInfo;->mViewSDNCallback:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 911
    new-instance v0, Lcom/android/exsettings/RadioInfo$6;

    invoke-direct {v0, p0}, Lcom/android/exsettings/RadioInfo$6;-><init>(Lcom/android/exsettings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/exsettings/RadioInfo;->mGetPdpList:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 918
    new-instance v0, Lcom/android/exsettings/RadioInfo$7;

    invoke-direct {v0, p0}, Lcom/android/exsettings/RadioInfo$7;-><init>(Lcom/android/exsettings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/exsettings/RadioInfo;->mSelectBandCallback:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 927
    new-instance v0, Lcom/android/exsettings/RadioInfo$8;

    invoke-direct {v0, p0}, Lcom/android/exsettings/RadioInfo$8;-><init>(Lcom/android/exsettings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/exsettings/RadioInfo;->mToggleData:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 945
    new-instance v0, Lcom/android/exsettings/RadioInfo$9;

    invoke-direct {v0, p0}, Lcom/android/exsettings/RadioInfo$9;-><init>(Lcom/android/exsettings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/exsettings/RadioInfo;->mPowerButtonHandler:Landroid/view/View$OnClickListener;

    .line 970
    new-instance v0, Lcom/android/exsettings/RadioInfo$CellInfoListRateHandler;

    invoke-direct {v0, p0}, Lcom/android/exsettings/RadioInfo$CellInfoListRateHandler;-><init>(Lcom/android/exsettings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/exsettings/RadioInfo;->mCellInfoListRateHandler:Lcom/android/exsettings/RadioInfo$CellInfoListRateHandler;

    .line 974
    new-instance v0, Lcom/android/exsettings/RadioInfo$10;

    invoke-direct {v0, p0}, Lcom/android/exsettings/RadioInfo$10;-><init>(Lcom/android/exsettings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/exsettings/RadioInfo;->mImsRegRequiredHandler:Landroid/view/View$OnClickListener;

    .line 1000
    new-instance v0, Lcom/android/exsettings/RadioInfo$11;

    invoke-direct {v0, p0}, Lcom/android/exsettings/RadioInfo$11;-><init>(Lcom/android/exsettings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/exsettings/RadioInfo;->mSmsOverImsHandler:Landroid/view/View$OnClickListener;

    .line 1016
    new-instance v0, Lcom/android/exsettings/RadioInfo$12;

    invoke-direct {v0, p0}, Lcom/android/exsettings/RadioInfo$12;-><init>(Lcom/android/exsettings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/exsettings/RadioInfo;->mImsVoLteProvisionedHandler:Landroid/view/View$OnClickListener;

    .line 1068
    new-instance v0, Lcom/android/exsettings/RadioInfo$13;

    invoke-direct {v0, p0}, Lcom/android/exsettings/RadioInfo$13;-><init>(Lcom/android/exsettings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/exsettings/RadioInfo;->mLteRamDumpHandler:Landroid/view/View$OnClickListener;

    .line 1091
    new-instance v0, Lcom/android/exsettings/RadioInfo$14;

    invoke-direct {v0, p0}, Lcom/android/exsettings/RadioInfo$14;-><init>(Lcom/android/exsettings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/exsettings/RadioInfo;->mDnsCheckButtonHandler:Landroid/view/View$OnClickListener;

    .line 1098
    new-instance v0, Lcom/android/exsettings/RadioInfo$15;

    invoke-direct {v0, p0}, Lcom/android/exsettings/RadioInfo$15;-><init>(Lcom/android/exsettings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/exsettings/RadioInfo;->mOemInfoButtonHandler:Landroid/view/View$OnClickListener;

    .line 1111
    new-instance v0, Lcom/android/exsettings/RadioInfo$16;

    invoke-direct {v0, p0}, Lcom/android/exsettings/RadioInfo$16;-><init>(Lcom/android/exsettings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/exsettings/RadioInfo;->mPingButtonHandler:Landroid/view/View$OnClickListener;

    .line 1117
    new-instance v0, Lcom/android/exsettings/RadioInfo$17;

    invoke-direct {v0, p0}, Lcom/android/exsettings/RadioInfo$17;-><init>(Lcom/android/exsettings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/exsettings/RadioInfo;->mUpdateSmscButtonHandler:Landroid/view/View$OnClickListener;

    .line 1125
    new-instance v0, Lcom/android/exsettings/RadioInfo$18;

    invoke-direct {v0, p0}, Lcom/android/exsettings/RadioInfo$18;-><init>(Lcom/android/exsettings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/exsettings/RadioInfo;->mRefreshSmscButtonHandler:Landroid/view/View$OnClickListener;

    .line 1132
    new-instance v0, Lcom/android/exsettings/RadioInfo$19;

    invoke-direct {v0, p0}, Lcom/android/exsettings/RadioInfo$19;-><init>(Lcom/android/exsettings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/exsettings/RadioInfo;->mPreferredNetworkHandler:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 1144
    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    .line 1145
    const-string/jumbo v1, "WCDMA preferred"

    aput-object v1, v0, v2

    .line 1146
    const-string/jumbo v1, "GSM only"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 1147
    const-string/jumbo v1, "WCDMA only"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 1148
    const-string/jumbo v1, "GSM auto (PRL)"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 1149
    const-string/jumbo v1, "CDMA auto (PRL)"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 1150
    const-string/jumbo v1, "CDMA only"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 1151
    const-string/jumbo v1, "EvDo only"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 1152
    const-string/jumbo v1, "GSM/CDMA auto (PRL)"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 1153
    const-string/jumbo v1, "LTE/CDMA auto (PRL)"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 1154
    const-string/jumbo v1, "LTE/GSM auto (PRL)"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 1155
    const-string/jumbo v1, "LTE/GSM/CDMA auto (PRL)"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 1156
    const-string/jumbo v1, "LTE only"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 1157
    const-string/jumbo v1, "Unknown"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    .line 1144
    iput-object v0, p0, Lcom/android/exsettings/RadioInfo;->mPreferredNetworkLabels:[Ljava/lang/String;

    .line 69
    return-void
.end method

.method private httpClientTest()V
    .locals 6

    .prologue
    .line 754
    const/4 v3, 0x0

    .line 757
    .local v3, "urlConnection":Ljava/net/HttpURLConnection;
    :try_start_0
    new-instance v2, Ljava/net/URL;

    const-string/jumbo v4, "https://www.google.com"

    invoke-direct {v2, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 758
    .local v2, "url":Ljava/net/URL;
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v3, v0

    .line 759
    .local v3, "urlConnection":Ljava/net/HttpURLConnection;
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    const/16 v5, 0xc8

    if-ne v4, v5, :cond_1

    .line 760
    const-string/jumbo v4, "Pass"

    iput-object v4, p0, Lcom/android/exsettings/RadioInfo;->mHttpClientTestResult:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 767
    :goto_0
    if-eqz v3, :cond_0

    .line 768
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 753
    .end local v2    # "url":Ljava/net/URL;
    .end local v3    # "urlConnection":Ljava/net/HttpURLConnection;
    :cond_0
    :goto_1
    return-void

    .line 762
    .restart local v2    # "url":Ljava/net/URL;
    .restart local v3    # "urlConnection":Ljava/net/HttpURLConnection;
    :cond_1
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Fail: Code: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/exsettings/RadioInfo;->mHttpClientTestResult:Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 764
    .end local v2    # "url":Ljava/net/URL;
    .end local v3    # "urlConnection":Ljava/net/HttpURLConnection;
    :catch_0
    move-exception v1

    .line 765
    .local v1, "e":Ljava/io/IOException;
    :try_start_2
    const-string/jumbo v4, "Fail: IOException"

    iput-object v4, p0, Lcom/android/exsettings/RadioInfo;->mHttpClientTestResult:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 767
    if-eqz v3, :cond_0

    .line 768
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_1

    .line 766
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    .line 767
    if-eqz v3, :cond_2

    .line 768
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 766
    :cond_2
    throw v4
.end method

.method private isImsRegRequired()Z
    .locals 2

    .prologue
    .line 987
    const-string/jumbo v0, "persist.radio.imsregrequired"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private isImsVoLteProvisioned()Z
    .locals 3

    .prologue
    .line 1043
    iget-object v1, p0, Lcom/android/exsettings/RadioInfo;->phone:Lcom/android/internal/telephony/Phone;

    if-eqz v1, :cond_0

    .line 1044
    iget-object v1, p0, Lcom/android/exsettings/RadioInfo;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/exsettings/RadioInfo;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object v0

    .line 1045
    .local v0, "imsManager":Lcom/android/ims/ImsManager;
    iget-object v1, p0, Lcom/android/exsettings/RadioInfo;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/ims/ImsManager;->isVolteProvisionedOnDevice(Landroid/content/Context;)Z

    move-result v1

    return v1

    .line 1047
    .end local v0    # "imsManager":Lcom/android/ims/ImsManager;
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private isLteRamDumpEnabled()Z
    .locals 2

    .prologue
    .line 1080
    const-string/jumbo v0, "persist.radio.ramdump"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private isRadioOn()Z
    .locals 2

    .prologue
    .line 439
    iget-object v0, p0, Lcom/android/exsettings/RadioInfo;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSmsOverImsEnabled()Z
    .locals 2

    .prologue
    .line 1012
    const-string/jumbo v0, "persist.radio.imsallowmtsms"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 1160
    const-string/jumbo v0, "phone"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[RadioInfo] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1159
    return-void
.end method

.method private final pingHostname()V
    .locals 7

    .prologue
    .line 734
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v5

    const-string/jumbo v6, "ping -c 1 www.google.com"

    invoke-virtual {v5, v6}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v3

    .line 735
    .local v3, "p":Ljava/lang/Process;
    invoke-virtual {v3}, Ljava/lang/Process;->waitFor()I

    move-result v4

    .line 736
    .local v4, "status":I
    if-nez v4, :cond_0

    .line 737
    const-string/jumbo v5, "Pass"

    iput-object v5, p0, Lcom/android/exsettings/RadioInfo;->mPingHostnameResult:Ljava/lang/String;

    .line 732
    .end local v3    # "p":Ljava/lang/Process;
    .end local v4    # "status":I
    :goto_0
    return-void

    .line 739
    .restart local v3    # "p":Ljava/lang/Process;
    .restart local v4    # "status":I
    :cond_0
    const-string/jumbo v5, "Fail: Host unreachable"

    iput-object v5, p0, Lcom/android/exsettings/RadioInfo;->mPingHostnameResult:Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 741
    .end local v3    # "p":Ljava/lang/Process;
    .end local v4    # "status":I
    :catch_0
    move-exception v2

    .line 742
    .local v2, "e":Ljava/net/UnknownHostException;
    const-string/jumbo v5, "Fail: Unknown Host"

    iput-object v5, p0, Lcom/android/exsettings/RadioInfo;->mPingHostnameResult:Ljava/lang/String;

    goto :goto_0

    .line 745
    .end local v2    # "e":Ljava/net/UnknownHostException;
    :catch_1
    move-exception v1

    .line 746
    .local v1, "e":Ljava/lang/InterruptedException;
    const-string/jumbo v5, "Fail: InterruptedException"

    iput-object v5, p0, Lcom/android/exsettings/RadioInfo;->mPingHostnameResult:Ljava/lang/String;

    goto :goto_0

    .line 743
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :catch_2
    move-exception v0

    .line 744
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v5, "Fail: IOException"

    iput-object v5, p0, Lcom/android/exsettings/RadioInfo;->mPingHostnameResult:Ljava/lang/String;

    goto :goto_0
.end method

.method private final pingIpAddr()V
    .locals 8

    .prologue
    .line 714
    :try_start_0
    const-string/jumbo v2, "74.125.47.104"

    .line 715
    .local v2, "ipAddress":Ljava/lang/String;
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "ping -c 1 "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v3

    .line 716
    .local v3, "p":Ljava/lang/Process;
    invoke-virtual {v3}, Ljava/lang/Process;->waitFor()I

    move-result v4

    .line 717
    .local v4, "status":I
    if-nez v4, :cond_0

    .line 718
    const-string/jumbo v5, "Pass"

    iput-object v5, p0, Lcom/android/exsettings/RadioInfo;->mPingIpAddrResult:Ljava/lang/String;

    .line 710
    .end local v2    # "ipAddress":Ljava/lang/String;
    .end local v3    # "p":Ljava/lang/Process;
    .end local v4    # "status":I
    :goto_0
    return-void

    .line 720
    .restart local v2    # "ipAddress":Ljava/lang/String;
    .restart local v3    # "p":Ljava/lang/Process;
    .restart local v4    # "status":I
    :cond_0
    const-string/jumbo v5, "Fail: IP addr not reachable"

    iput-object v5, p0, Lcom/android/exsettings/RadioInfo;->mPingIpAddrResult:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 722
    .end local v2    # "ipAddress":Ljava/lang/String;
    .end local v3    # "p":Ljava/lang/Process;
    .end local v4    # "status":I
    :catch_0
    move-exception v0

    .line 723
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v5, "Fail: IOException"

    iput-object v5, p0, Lcom/android/exsettings/RadioInfo;->mPingIpAddrResult:Ljava/lang/String;

    goto :goto_0

    .line 724
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 725
    .local v1, "e":Ljava/lang/InterruptedException;
    const-string/jumbo v5, "Fail: InterruptedException"

    iput-object v5, p0, Lcom/android/exsettings/RadioInfo;->mPingIpAddrResult:Ljava/lang/String;

    goto :goto_0
.end method

.method private refreshSmsc()V
    .locals 3

    .prologue
    .line 774
    iget-object v0, p0, Lcom/android/exsettings/RadioInfo;->phone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/exsettings/RadioInfo;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x3ed

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->getSmscAddress(Landroid/os/Message;)V

    .line 773
    return-void
.end method

.method private final updateCallRedirect()V
    .locals 2

    .prologue
    .line 570
    iget-object v0, p0, Lcom/android/exsettings/RadioInfo;->mCfi:Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/android/exsettings/RadioInfo;->mCfiValue:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 569
    return-void
.end method

.method private updateCellInfoListRate()V
    .locals 3

    .prologue
    .line 450
    iget-object v0, p0, Lcom/android/exsettings/RadioInfo;->cellInfoListRateButton:Landroid/widget/Button;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "CellInfoListRate "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/exsettings/RadioInfo;->mCellInfoListRateHandler:Lcom/android/exsettings/RadioInfo$CellInfoListRateHandler;

    invoke-virtual {v2}, Lcom/android/exsettings/RadioInfo$CellInfoListRateHandler;->getRate()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 451
    iget-object v0, p0, Lcom/android/exsettings/RadioInfo;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getAllCellInfo()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/exsettings/RadioInfo;->updateCellInfoTv(Ljava/util/List;)V

    .line 449
    return-void
.end method

.method private final updateCellInfoTv(Ljava/util/List;)V
    .locals 6
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
    .line 542
    .local p1, "arrayCi":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    iput-object p1, p0, Lcom/android/exsettings/RadioInfo;->mCellInfoValue:Ljava/util/List;

    .line 543
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 544
    .local v3, "value":Ljava/lang/StringBuilder;
    iget-object v4, p0, Lcom/android/exsettings/RadioInfo;->mCellInfoValue:Ljava/util/List;

    if-eqz v4, :cond_1

    .line 545
    const/4 v2, 0x0

    .line 546
    .local v2, "index":I
    iget-object v4, p0, Lcom/android/exsettings/RadioInfo;->mCellInfoValue:Ljava/util/List;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "ci$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CellInfo;

    .line 547
    .local v0, "ci":Landroid/telephony/CellInfo;
    const/16 v4, 0x5b

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 548
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 549
    const-string/jumbo v4, "]="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 550
    invoke-virtual {v0}, Landroid/telephony/CellInfo;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 551
    add-int/lit8 v2, v2, 0x1

    iget-object v4, p0, Lcom/android/exsettings/RadioInfo;->mCellInfoValue:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 552
    const-string/jumbo v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 556
    .end local v0    # "ci":Landroid/telephony/CellInfo;
    .end local v1    # "ci$iterator":Ljava/util/Iterator;
    .end local v2    # "index":I
    :cond_1
    iget-object v4, p0, Lcom/android/exsettings/RadioInfo;->mCellInfo:Landroid/widget/TextView;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 541
    return-void
.end method

.method private final updateDataState()V
    .locals 4

    .prologue
    .line 628
    iget-object v3, p0, Lcom/android/exsettings/RadioInfo;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result v2

    .line 629
    .local v2, "state":I
    invoke-virtual {p0}, Lcom/android/exsettings/RadioInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 630
    .local v1, "r":Landroid/content/res/Resources;
    const v3, 0x7f0c052e

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 632
    .local v0, "display":Ljava/lang/String;
    packed-switch v2, :pswitch_data_0

    .line 647
    :goto_0
    iget-object v3, p0, Lcom/android/exsettings/RadioInfo;->gprsState:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 627
    return-void

    .line 634
    :pswitch_0
    const v3, 0x7f0c052c

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 637
    :pswitch_1
    const v3, 0x7f0c052b

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 640
    :pswitch_2
    const v3, 0x7f0c052a

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 643
    :pswitch_3
    const v3, 0x7f0c052d

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 632
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private final updateDataStats()V
    .locals 3

    .prologue
    .line 676
    const-string/jumbo v1, "net.gsm.radio-reset"

    const-string/jumbo v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 677
    .local v0, "s":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/exsettings/RadioInfo;->resets:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 679
    const-string/jumbo v1, "net.gsm.attempt-gprs"

    const-string/jumbo v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 680
    iget-object v1, p0, Lcom/android/exsettings/RadioInfo;->attempts:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 682
    const-string/jumbo v1, "net.gsm.succeed-gprs"

    const-string/jumbo v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 683
    iget-object v1, p0, Lcom/android/exsettings/RadioInfo;->successes:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 688
    const-string/jumbo v1, "net.ppp.reset-by-timeout"

    const-string/jumbo v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 689
    iget-object v1, p0, Lcom/android/exsettings/RadioInfo;->sentSinceReceived:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 673
    return-void
.end method

.method private final updateDataStats2()V
    .locals 14

    .prologue
    .line 693
    invoke-virtual {p0}, Lcom/android/exsettings/RadioInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 695
    .local v2, "r":Landroid/content/res/Resources;
    invoke-static {}, Landroid/net/TrafficStats;->getMobileTxPackets()J

    move-result-wide v10

    .line 696
    .local v10, "txPackets":J
    invoke-static {}, Landroid/net/TrafficStats;->getMobileRxPackets()J

    move-result-wide v6

    .line 697
    .local v6, "rxPackets":J
    invoke-static {}, Landroid/net/TrafficStats;->getMobileTxBytes()J

    move-result-wide v8

    .line 698
    .local v8, "txBytes":J
    invoke-static {}, Landroid/net/TrafficStats;->getMobileRxBytes()J

    move-result-wide v4

    .line 700
    .local v4, "rxBytes":J
    const v3, 0x7f0c052f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 701
    .local v1, "packets":Ljava/lang/String;
    const v3, 0x7f0c0530

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 703
    .local v0, "bytes":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/exsettings/RadioInfo;->sent:Landroid/widget/TextView;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ", "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 704
    iget-object v3, p0, Lcom/android/exsettings/RadioInfo;->received:Landroid/widget/TextView;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ", "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 692
    return-void
.end method

.method private final updateDcRtInfoTv(Landroid/telephony/DataConnectionRealTimeInfo;)V
    .locals 2
    .param p1, "dcRtInfo"    # Landroid/telephony/DataConnectionRealTimeInfo;

    .prologue
    .line 560
    iget-object v0, p0, Lcom/android/exsettings/RadioInfo;->mDcRtInfoTv:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/telephony/DataConnectionRealTimeInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 559
    return-void
.end method

.method private updateDnsCheckState()V
    .locals 2

    .prologue
    .line 455
    iget-object v1, p0, Lcom/android/exsettings/RadioInfo;->dnsCheckState:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/exsettings/RadioInfo;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->isDnsCheckDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 456
    const-string/jumbo v0, "0.0.0.0 allowed"

    .line 455
    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 454
    return-void

    .line 456
    :cond_0
    const-string/jumbo v0, "0.0.0.0 not allowed"

    goto :goto_0
.end method

.method private updateImsRegRequiredState()V
    .locals 3

    .prologue
    .line 991
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateImsRegRequiredState isImsRegRequired()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/exsettings/RadioInfo;->isImsRegRequired()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/exsettings/RadioInfo;->log(Ljava/lang/String;)V

    .line 992
    invoke-direct {p0}, Lcom/android/exsettings/RadioInfo;->isImsRegRequired()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 993
    const v1, 0x7f0c0518

    invoke-virtual {p0, v1}, Lcom/android/exsettings/RadioInfo;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 995
    .local v0, "buttonText":Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/android/exsettings/RadioInfo;->imsRegRequiredButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 990
    return-void

    .line 994
    .end local v0    # "buttonText":Ljava/lang/String;
    :cond_0
    const v1, 0x7f0c0517

    invoke-virtual {p0, v1}, Lcom/android/exsettings/RadioInfo;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "buttonText":Ljava/lang/String;
    goto :goto_0
.end method

.method private updateImsVoLteProvisionedState()V
    .locals 3

    .prologue
    .line 1051
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateImsVoLteProvisionedState isImsVoLteProvisioned()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/exsettings/RadioInfo;->isImsVoLteProvisioned()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/exsettings/RadioInfo;->log(Ljava/lang/String;)V

    .line 1052
    invoke-direct {p0}, Lcom/android/exsettings/RadioInfo;->isImsVoLteProvisioned()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1053
    const v1, 0x7f0c051a

    invoke-virtual {p0, v1}, Lcom/android/exsettings/RadioInfo;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1055
    .local v0, "buttonText":Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/android/exsettings/RadioInfo;->imsVoLteProvisionedButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1050
    return-void

    .line 1054
    .end local v0    # "buttonText":Ljava/lang/String;
    :cond_0
    const v1, 0x7f0c0519

    invoke-virtual {p0, v1}, Lcom/android/exsettings/RadioInfo;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "buttonText":Ljava/lang/String;
    goto :goto_0
.end method

.method private final updateLocation(Landroid/telephony/CellLocation;)V
    .locals 14
    .param p1, "location"    # Landroid/telephony/CellLocation;

    .prologue
    const/4 v13, -0x1

    .line 486
    invoke-virtual {p0}, Lcom/android/exsettings/RadioInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 487
    .local v8, "r":Landroid/content/res/Resources;
    instance-of v10, p1, Landroid/telephony/gsm/GsmCellLocation;

    if-eqz v10, :cond_2

    move-object v5, p1

    .line 488
    check-cast v5, Landroid/telephony/gsm/GsmCellLocation;

    .line 489
    .local v5, "loc":Landroid/telephony/gsm/GsmCellLocation;
    invoke-virtual {v5}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v2

    .line 490
    .local v2, "lac":I
    invoke-virtual {v5}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v1

    .line 491
    .local v1, "cid":I
    iget-object v11, p0, Lcom/android/exsettings/RadioInfo;->mLocation:Landroid/widget/TextView;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const v12, 0x7f0c0533

    invoke-virtual {v8, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v12, " = "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 492
    if-ne v2, v13, :cond_0

    const-string/jumbo v10, "unknown"

    .line 491
    :goto_0
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 493
    const-string/jumbo v12, "   "

    .line 491
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 494
    const v12, 0x7f0c0534

    invoke-virtual {v8, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 491
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 494
    const-string/jumbo v12, " = "

    .line 491
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 495
    if-ne v1, v13, :cond_1

    const-string/jumbo v10, "unknown"

    .line 491
    :goto_1
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 485
    .end local v1    # "cid":I
    .end local v2    # "lac":I
    .end local v5    # "loc":Landroid/telephony/gsm/GsmCellLocation;
    :goto_2
    return-void

    .line 492
    .restart local v1    # "cid":I
    .restart local v2    # "lac":I
    .restart local v5    # "loc":Landroid/telephony/gsm/GsmCellLocation;
    :cond_0
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    goto :goto_0

    .line 495
    :cond_1
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    goto :goto_1

    .line 496
    .end local v1    # "cid":I
    .end local v2    # "lac":I
    .end local v5    # "loc":Landroid/telephony/gsm/GsmCellLocation;
    :cond_2
    instance-of v10, p1, Landroid/telephony/cdma/CdmaCellLocation;

    if-eqz v10, :cond_8

    move-object v4, p1

    .line 497
    check-cast v4, Landroid/telephony/cdma/CdmaCellLocation;

    .line 498
    .local v4, "loc":Landroid/telephony/cdma/CdmaCellLocation;
    invoke-virtual {v4}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationId()I

    move-result v0

    .line 499
    .local v0, "bid":I
    invoke-virtual {v4}, Landroid/telephony/cdma/CdmaCellLocation;->getSystemId()I

    move-result v9

    .line 500
    .local v9, "sid":I
    invoke-virtual {v4}, Landroid/telephony/cdma/CdmaCellLocation;->getNetworkId()I

    move-result v7

    .line 501
    .local v7, "nid":I
    invoke-virtual {v4}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationLatitude()I

    move-result v3

    .line 502
    .local v3, "lat":I
    invoke-virtual {v4}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationLongitude()I

    move-result v6

    .line 503
    .local v6, "lon":I
    iget-object v11, p0, Lcom/android/exsettings/RadioInfo;->mLocation:Landroid/widget/TextView;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "BID = "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 504
    if-ne v0, v13, :cond_3

    const-string/jumbo v10, "unknown"

    .line 503
    :goto_3
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 505
    const-string/jumbo v12, "   "

    .line 503
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 506
    const-string/jumbo v12, "SID = "

    .line 503
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 507
    if-ne v9, v13, :cond_4

    const-string/jumbo v10, "unknown"

    .line 503
    :goto_4
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 508
    const-string/jumbo v12, "   "

    .line 503
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 509
    const-string/jumbo v12, "NID = "

    .line 503
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 510
    if-ne v7, v13, :cond_5

    const-string/jumbo v10, "unknown"

    .line 503
    :goto_5
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 511
    const-string/jumbo v12, "\n"

    .line 503
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 512
    const-string/jumbo v12, "LAT = "

    .line 503
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 513
    if-ne v3, v13, :cond_6

    const-string/jumbo v10, "unknown"

    .line 503
    :goto_6
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 514
    const-string/jumbo v12, "   "

    .line 503
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 515
    const-string/jumbo v12, "LONG = "

    .line 503
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 516
    if-ne v6, v13, :cond_7

    const-string/jumbo v10, "unknown"

    .line 503
    :goto_7
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 504
    :cond_3
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    goto :goto_3

    .line 507
    :cond_4
    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    goto :goto_4

    .line 510
    :cond_5
    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    goto :goto_5

    .line 513
    :cond_6
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    goto :goto_6

    .line 516
    :cond_7
    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    goto :goto_7

    .line 518
    .end local v0    # "bid":I
    .end local v3    # "lat":I
    .end local v4    # "loc":Landroid/telephony/cdma/CdmaCellLocation;
    .end local v6    # "lon":I
    .end local v7    # "nid":I
    .end local v9    # "sid":I
    :cond_8
    iget-object v10, p0, Lcom/android/exsettings/RadioInfo;->mLocation:Landroid/widget/TextView;

    const-string/jumbo v11, "unknown"

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2
.end method

.method private updateLteRamDumpState()V
    .locals 3

    .prologue
    .line 1084
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateLteRamDumpState isLteRamDumpEnabled()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/exsettings/RadioInfo;->isLteRamDumpEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/exsettings/RadioInfo;->log(Ljava/lang/String;)V

    .line 1085
    invoke-direct {p0}, Lcom/android/exsettings/RadioInfo;->isLteRamDumpEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1086
    const v1, 0x7f0c051c

    invoke-virtual {p0, v1}, Lcom/android/exsettings/RadioInfo;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1088
    .local v0, "buttonText":Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/android/exsettings/RadioInfo;->lteRamDumpButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1083
    return-void

    .line 1087
    .end local v0    # "buttonText":Ljava/lang/String;
    :cond_0
    const v1, 0x7f0c051b

    invoke-virtual {p0, v1}, Lcom/android/exsettings/RadioInfo;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "buttonText":Ljava/lang/String;
    goto :goto_0
.end method

.method private final updateMessageWaiting()V
    .locals 2

    .prologue
    .line 565
    iget-object v0, p0, Lcom/android/exsettings/RadioInfo;->mMwi:Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/android/exsettings/RadioInfo;->mMwiValue:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 564
    return-void
.end method

.method private final updateNeighboringCids(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/telephony/NeighboringCellInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 525
    .local p1, "cids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/NeighboringCellInfo;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 527
    .local v2, "sb":Ljava/lang/StringBuilder;
    if-eqz p1, :cond_2

    .line 528
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 529
    const-string/jumbo v3, "no neighboring cells"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 538
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/exsettings/RadioInfo;->mNeighboringCids:Landroid/widget/TextView;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 524
    return-void

    .line 531
    :cond_1
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "cell$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/NeighboringCellInfo;

    .line 532
    .local v0, "cell":Landroid/telephony/NeighboringCellInfo;
    invoke-virtual {v0}, Landroid/telephony/NeighboringCellInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 536
    .end local v0    # "cell":Landroid/telephony/NeighboringCellInfo;
    .end local v1    # "cell$iterator":Ljava/util/Iterator;
    :cond_2
    const-string/jumbo v3, "unknown"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private final updateNetworkType()V
    .locals 4

    .prologue
    .line 651
    invoke-virtual {p0}, Lcom/android/exsettings/RadioInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 652
    .local v1, "r":Landroid/content/res/Resources;
    const-string/jumbo v2, "gsm.network.type"

    .line 653
    const v3, 0x7f0c052e

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 652
    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 655
    .local v0, "display":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/exsettings/RadioInfo;->network:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 650
    return-void
.end method

.method private final updatePdpList()V
    .locals 3

    .prologue
    .line 824
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "========DATA=======\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 862
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/android/exsettings/RadioInfo;->disconnects:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 823
    return-void
.end method

.method private final updatePhoneState()V
    .locals 5

    .prologue
    .line 607
    iget-object v3, p0, Lcom/android/exsettings/RadioInfo;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->getPhoneState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v2

    .line 608
    .local v2, "state":Lcom/android/internal/telephony/PhoneConstants$State;
    invoke-virtual {p0}, Lcom/android/exsettings/RadioInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 609
    .local v1, "r":Landroid/content/res/Resources;
    const v3, 0x7f0c052e

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 611
    .local v0, "display":Ljava/lang/String;
    invoke-static {}, Lcom/android/exsettings/RadioInfo;->-getcom_android_internal_telephony_PhoneConstants$StateSwitchesValues()[I

    move-result-object v3

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneConstants$State;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 623
    :goto_0
    iget-object v3, p0, Lcom/android/exsettings/RadioInfo;->callState:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 606
    return-void

    .line 613
    :pswitch_0
    const v3, 0x7f0c0527

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 616
    :pswitch_1
    const v3, 0x7f0c0528

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 619
    :pswitch_2
    const v3, 0x7f0c0529

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 611
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private final updatePingState()V
    .locals 7

    .prologue
    const v6, 0x7f0c052e

    .line 778
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 780
    .local v0, "handler":Landroid/os/Handler;
    invoke-virtual {p0}, Lcom/android/exsettings/RadioInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/exsettings/RadioInfo;->mPingIpAddrResult:Ljava/lang/String;

    .line 781
    invoke-virtual {p0}, Lcom/android/exsettings/RadioInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/exsettings/RadioInfo;->mPingHostnameResult:Ljava/lang/String;

    .line 782
    invoke-virtual {p0}, Lcom/android/exsettings/RadioInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/exsettings/RadioInfo;->mHttpClientTestResult:Ljava/lang/String;

    .line 784
    iget-object v5, p0, Lcom/android/exsettings/RadioInfo;->mPingIpAddr:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/exsettings/RadioInfo;->mPingIpAddrResult:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 785
    iget-object v5, p0, Lcom/android/exsettings/RadioInfo;->mPingHostname:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/exsettings/RadioInfo;->mPingHostnameResult:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 786
    iget-object v5, p0, Lcom/android/exsettings/RadioInfo;->mHttpClientTest:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/exsettings/RadioInfo;->mHttpClientTestResult:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 788
    new-instance v4, Lcom/android/exsettings/RadioInfo$20;

    invoke-direct {v4, p0}, Lcom/android/exsettings/RadioInfo$20;-><init>(Lcom/android/exsettings/RadioInfo;)V

    .line 795
    .local v4, "updatePingResults":Ljava/lang/Runnable;
    new-instance v3, Lcom/android/exsettings/RadioInfo$21;

    invoke-direct {v3, p0, v0, v4}, Lcom/android/exsettings/RadioInfo$21;-><init>(Lcom/android/exsettings/RadioInfo;Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 802
    .local v3, "ipAddr":Ljava/lang/Thread;
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 804
    new-instance v1, Lcom/android/exsettings/RadioInfo$22;

    invoke-direct {v1, p0, v0, v4}, Lcom/android/exsettings/RadioInfo$22;-><init>(Lcom/android/exsettings/RadioInfo;Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 811
    .local v1, "hostname":Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 813
    new-instance v2, Lcom/android/exsettings/RadioInfo$23;

    invoke-direct {v2, p0, v0, v4}, Lcom/android/exsettings/RadioInfo$23;-><init>(Lcom/android/exsettings/RadioInfo;Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 820
    .local v2, "httpClient":Ljava/lang/Thread;
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 777
    return-void
.end method

.method private updatePowerState()V
    .locals 2

    .prologue
    .line 443
    invoke-direct {p0}, Lcom/android/exsettings/RadioInfo;->isRadioOn()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 444
    const v1, 0x7f0c0514

    invoke-virtual {p0, v1}, Lcom/android/exsettings/RadioInfo;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 446
    .local v0, "buttonText":Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/android/exsettings/RadioInfo;->radioPowerButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 442
    return-void

    .line 445
    .end local v0    # "buttonText":Ljava/lang/String;
    :cond_0
    const v1, 0x7f0c0513

    invoke-virtual {p0, v1}, Lcom/android/exsettings/RadioInfo;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "buttonText":Ljava/lang/String;
    goto :goto_0
.end method

.method private final updateProperties()V
    .locals 4

    .prologue
    const v3, 0x7f0c052e

    .line 661
    invoke-virtual {p0}, Lcom/android/exsettings/RadioInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 663
    .local v0, "r":Landroid/content/res/Resources;
    iget-object v2, p0, Lcom/android/exsettings/RadioInfo;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    .line 664
    .local v1, "s":Ljava/lang/String;
    if-nez v1, :cond_0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 665
    :cond_0
    iget-object v2, p0, Lcom/android/exsettings/RadioInfo;->mDeviceId:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 668
    iget-object v2, p0, Lcom/android/exsettings/RadioInfo;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getLine1Number()Ljava/lang/String;

    move-result-object v1

    .line 669
    if-nez v1, :cond_1

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 670
    :cond_1
    iget-object v2, p0, Lcom/android/exsettings/RadioInfo;->number:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 659
    return-void
.end method

.method private final updateServiceState()V
    .locals 6

    .prologue
    .line 576
    iget-object v4, p0, Lcom/android/exsettings/RadioInfo;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    .line 577
    .local v2, "serviceState":Landroid/telephony/ServiceState;
    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getState()I

    move-result v3

    .line 578
    .local v3, "state":I
    invoke-virtual {p0}, Lcom/android/exsettings/RadioInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 579
    .local v1, "r":Landroid/content/res/Resources;
    const v4, 0x7f0c052e

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 581
    .local v0, "display":Ljava/lang/String;
    packed-switch v3, :pswitch_data_0

    .line 594
    :goto_0
    iget-object v4, p0, Lcom/android/exsettings/RadioInfo;->gsmState:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 596
    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 597
    iget-object v4, p0, Lcom/android/exsettings/RadioInfo;->roamingState:Landroid/widget/TextView;

    const v5, 0x7f0c0525

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 602
    :goto_1
    iget-object v4, p0, Lcom/android/exsettings/RadioInfo;->operatorName:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 575
    return-void

    .line 583
    :pswitch_0
    const v4, 0x7f0c0521

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 587
    :pswitch_1
    const v4, 0x7f0c0523

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 590
    :pswitch_2
    const v4, 0x7f0c0524

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 599
    :cond_0
    iget-object v4, p0, Lcom/android/exsettings/RadioInfo;->roamingState:Landroid/widget/TextView;

    const v5, 0x7f0c0526

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 581
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private final updateSignalStrength()V
    .locals 7

    .prologue
    const/4 v6, -0x1

    .line 463
    iget-object v4, p0, Lcom/android/exsettings/RadioInfo;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getState()I

    move-result v3

    .line 464
    .local v3, "state":I
    invoke-virtual {p0}, Lcom/android/exsettings/RadioInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 466
    .local v0, "r":Landroid/content/res/Resources;
    const/4 v4, 0x1

    if-eq v4, v3, :cond_0

    .line 467
    const/4 v4, 0x3

    if-ne v4, v3, :cond_1

    .line 468
    :cond_0
    iget-object v4, p0, Lcom/android/exsettings/RadioInfo;->dBm:Landroid/widget/TextView;

    const-string/jumbo v5, "0"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 471
    :cond_1
    iget-object v4, p0, Lcom/android/exsettings/RadioInfo;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->getSignalStrengthDbm()I

    move-result v2

    .line 473
    .local v2, "signalDbm":I
    if-ne v6, v2, :cond_2

    const/4 v2, 0x0

    .line 475
    :cond_2
    iget-object v4, p0, Lcom/android/exsettings/RadioInfo;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->getSignalStrengthLevelAsu()I

    move-result v1

    .line 477
    .local v1, "signalAsu":I
    if-ne v6, v1, :cond_3

    const/4 v1, 0x0

    .line 479
    :cond_3
    iget-object v4, p0, Lcom/android/exsettings/RadioInfo;->dBm:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 480
    const v6, 0x7f0c0531

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 479
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 480
    const-string/jumbo v6, "   "

    .line 479
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 481
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    .line 479
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 481
    const-string/jumbo v6, " "

    .line 479
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 482
    const v6, 0x7f0c0532

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 479
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 460
    return-void
.end method

.method private updateSmsOverImsState()V
    .locals 3

    .prologue
    .line 1059
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateSmsOverImsState isSmsOverImsEnabled()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/exsettings/RadioInfo;->isSmsOverImsEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/exsettings/RadioInfo;->log(Ljava/lang/String;)V

    .line 1060
    invoke-direct {p0}, Lcom/android/exsettings/RadioInfo;->isSmsOverImsEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1061
    const v1, 0x7f0c0516

    invoke-virtual {p0, v1}, Lcom/android/exsettings/RadioInfo;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1063
    .local v0, "buttonText":Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/android/exsettings/RadioInfo;->smsOverImsButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1058
    return-void

    .line 1062
    .end local v0    # "buttonText":Ljava/lang/String;
    :cond_0
    const v1, 0x7f0c0515

    invoke-virtual {p0, v1}, Lcom/android/exsettings/RadioInfo;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "buttonText":Ljava/lang/String;
    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    .line 255
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 257
    const v4, 0x7f0400eb

    invoke-virtual {p0, v4}, Lcom/android/exsettings/RadioInfo;->setContentView(I)V

    .line 259
    const-string/jumbo v4, "phone"

    invoke-virtual {p0, v4}, Lcom/android/exsettings/RadioInfo;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    iput-object v4, p0, Lcom/android/exsettings/RadioInfo;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 260
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    iput-object v4, p0, Lcom/android/exsettings/RadioInfo;->phone:Lcom/android/internal/telephony/Phone;

    .line 262
    const v4, 0x7f1301cd

    invoke-virtual {p0, v4}, Lcom/android/exsettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/exsettings/RadioInfo;->mDeviceId:Landroid/widget/TextView;

    .line 263
    const v4, 0x7f130035

    invoke-virtual {p0, v4}, Lcom/android/exsettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/exsettings/RadioInfo;->number:Landroid/widget/TextView;

    .line 264
    const v4, 0x7f1301de

    invoke-virtual {p0, v4}, Lcom/android/exsettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/exsettings/RadioInfo;->callState:Landroid/widget/TextView;

    .line 265
    const v4, 0x7f1301ce

    invoke-virtual {p0, v4}, Lcom/android/exsettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/exsettings/RadioInfo;->operatorName:Landroid/widget/TextView;

    .line 266
    const v4, 0x7f1301d8

    invoke-virtual {p0, v4}, Lcom/android/exsettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/exsettings/RadioInfo;->roamingState:Landroid/widget/TextView;

    .line 267
    const v4, 0x7f1301d9

    invoke-virtual {p0, v4}, Lcom/android/exsettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/exsettings/RadioInfo;->gsmState:Landroid/widget/TextView;

    .line 268
    const v4, 0x7f1301da

    invoke-virtual {p0, v4}, Lcom/android/exsettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/exsettings/RadioInfo;->gprsState:Landroid/widget/TextView;

    .line 269
    const v4, 0x7f1301db

    invoke-virtual {p0, v4}, Lcom/android/exsettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/exsettings/RadioInfo;->network:Landroid/widget/TextView;

    .line 270
    const v4, 0x7f1301d3

    invoke-virtual {p0, v4}, Lcom/android/exsettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/exsettings/RadioInfo;->dBm:Landroid/widget/TextView;

    .line 271
    const v4, 0x7f1301dc

    invoke-virtual {p0, v4}, Lcom/android/exsettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/exsettings/RadioInfo;->mMwi:Landroid/widget/TextView;

    .line 272
    const v4, 0x7f1301dd

    invoke-virtual {p0, v4}, Lcom/android/exsettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/exsettings/RadioInfo;->mCfi:Landroid/widget/TextView;

    .line 273
    const v4, 0x7f1301d4

    invoke-virtual {p0, v4}, Lcom/android/exsettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/exsettings/RadioInfo;->mLocation:Landroid/widget/TextView;

    .line 274
    const v4, 0x7f1301d5

    invoke-virtual {p0, v4}, Lcom/android/exsettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/exsettings/RadioInfo;->mNeighboringCids:Landroid/widget/TextView;

    .line 275
    const v4, 0x7f1301d6

    invoke-virtual {p0, v4}, Lcom/android/exsettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/exsettings/RadioInfo;->mCellInfo:Landroid/widget/TextView;

    .line 276
    const v4, 0x7f1301d7

    invoke-virtual {p0, v4}, Lcom/android/exsettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/exsettings/RadioInfo;->mDcRtInfoTv:Landroid/widget/TextView;

    .line 278
    const v4, 0x7f1301df

    invoke-virtual {p0, v4}, Lcom/android/exsettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/exsettings/RadioInfo;->resets:Landroid/widget/TextView;

    .line 279
    const v4, 0x7f1301e0

    invoke-virtual {p0, v4}, Lcom/android/exsettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/exsettings/RadioInfo;->attempts:Landroid/widget/TextView;

    .line 280
    const v4, 0x7f1301e1

    invoke-virtual {p0, v4}, Lcom/android/exsettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/exsettings/RadioInfo;->successes:Landroid/widget/TextView;

    .line 281
    const v4, 0x7f1301e2

    invoke-virtual {p0, v4}, Lcom/android/exsettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/exsettings/RadioInfo;->disconnects:Landroid/widget/TextView;

    .line 282
    const v4, 0x7f1301e5

    invoke-virtual {p0, v4}, Lcom/android/exsettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/exsettings/RadioInfo;->sentSinceReceived:Landroid/widget/TextView;

    .line 283
    const v4, 0x7f1301e3

    invoke-virtual {p0, v4}, Lcom/android/exsettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/exsettings/RadioInfo;->sent:Landroid/widget/TextView;

    .line 284
    const v4, 0x7f1301e4

    invoke-virtual {p0, v4}, Lcom/android/exsettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/exsettings/RadioInfo;->received:Landroid/widget/TextView;

    .line 285
    const v4, 0x7f1301f0

    invoke-virtual {p0, v4}, Lcom/android/exsettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/android/exsettings/RadioInfo;->smsc:Landroid/widget/EditText;

    .line 286
    const v4, 0x7f1301f2

    invoke-virtual {p0, v4}, Lcom/android/exsettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/exsettings/RadioInfo;->dnsCheckState:Landroid/widget/TextView;

    .line 288
    const v4, 0x7f1301d0

    invoke-virtual {p0, v4}, Lcom/android/exsettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/exsettings/RadioInfo;->mPingIpAddr:Landroid/widget/TextView;

    .line 289
    const v4, 0x7f1301d1

    invoke-virtual {p0, v4}, Lcom/android/exsettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/exsettings/RadioInfo;->mPingHostname:Landroid/widget/TextView;

    .line 290
    const v4, 0x7f1301d2

    invoke-virtual {p0, v4}, Lcom/android/exsettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/exsettings/RadioInfo;->mHttpClientTest:Landroid/widget/TextView;

    .line 292
    const v4, 0x7f1301e6

    invoke-virtual {p0, v4}, Lcom/android/exsettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Spinner;

    iput-object v4, p0, Lcom/android/exsettings/RadioInfo;->preferredNetworkType:Landroid/widget/Spinner;

    .line 293
    new-instance v0, Landroid/widget/ArrayAdapter;

    .line 294
    iget-object v4, p0, Lcom/android/exsettings/RadioInfo;->mPreferredNetworkLabels:[Ljava/lang/String;

    const v5, 0x1090008

    .line 293
    invoke-direct {v0, p0, v5, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 295
    .local v0, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v4, 0x1090009

    invoke-virtual {v0, v4}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 296
    iget-object v4, p0, Lcom/android/exsettings/RadioInfo;->preferredNetworkType:Landroid/widget/Spinner;

    invoke-virtual {v4, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 297
    iget-object v4, p0, Lcom/android/exsettings/RadioInfo;->preferredNetworkType:Landroid/widget/Spinner;

    iget-object v5, p0, Lcom/android/exsettings/RadioInfo;->mPreferredNetworkHandler:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v4, v5}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 299
    const v4, 0x7f1301e7

    invoke-virtual {p0, v4}, Lcom/android/exsettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/exsettings/RadioInfo;->radioPowerButton:Landroid/widget/Button;

    .line 300
    iget-object v4, p0, Lcom/android/exsettings/RadioInfo;->radioPowerButton:Landroid/widget/Button;

    iget-object v5, p0, Lcom/android/exsettings/RadioInfo;->mPowerButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 302
    const v4, 0x7f1301e8

    invoke-virtual {p0, v4}, Lcom/android/exsettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/exsettings/RadioInfo;->cellInfoListRateButton:Landroid/widget/Button;

    .line 303
    iget-object v4, p0, Lcom/android/exsettings/RadioInfo;->cellInfoListRateButton:Landroid/widget/Button;

    iget-object v5, p0, Lcom/android/exsettings/RadioInfo;->mCellInfoListRateHandler:Lcom/android/exsettings/RadioInfo$CellInfoListRateHandler;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 305
    const v4, 0x7f1301e9

    invoke-virtual {p0, v4}, Lcom/android/exsettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/exsettings/RadioInfo;->imsRegRequiredButton:Landroid/widget/Button;

    .line 306
    iget-object v4, p0, Lcom/android/exsettings/RadioInfo;->imsRegRequiredButton:Landroid/widget/Button;

    iget-object v5, p0, Lcom/android/exsettings/RadioInfo;->mImsRegRequiredHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 308
    const v4, 0x7f1301ea

    invoke-virtual {p0, v4}, Lcom/android/exsettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/exsettings/RadioInfo;->imsVoLteProvisionedButton:Landroid/widget/Button;

    .line 309
    iget-object v4, p0, Lcom/android/exsettings/RadioInfo;->imsVoLteProvisionedButton:Landroid/widget/Button;

    iget-object v5, p0, Lcom/android/exsettings/RadioInfo;->mImsVoLteProvisionedHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 311
    const v4, 0x7f1301eb

    invoke-virtual {p0, v4}, Lcom/android/exsettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/exsettings/RadioInfo;->smsOverImsButton:Landroid/widget/Button;

    .line 312
    iget-object v4, p0, Lcom/android/exsettings/RadioInfo;->smsOverImsButton:Landroid/widget/Button;

    iget-object v5, p0, Lcom/android/exsettings/RadioInfo;->mSmsOverImsHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 314
    const v4, 0x7f1301ec

    invoke-virtual {p0, v4}, Lcom/android/exsettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/exsettings/RadioInfo;->lteRamDumpButton:Landroid/widget/Button;

    .line 315
    iget-object v4, p0, Lcom/android/exsettings/RadioInfo;->lteRamDumpButton:Landroid/widget/Button;

    iget-object v5, p0, Lcom/android/exsettings/RadioInfo;->mLteRamDumpHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 317
    const v4, 0x7f1301cf

    invoke-virtual {p0, v4}, Lcom/android/exsettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/exsettings/RadioInfo;->pingTestButton:Landroid/widget/Button;

    .line 318
    iget-object v4, p0, Lcom/android/exsettings/RadioInfo;->pingTestButton:Landroid/widget/Button;

    iget-object v5, p0, Lcom/android/exsettings/RadioInfo;->mPingButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 319
    const v4, 0x7f1301ee

    invoke-virtual {p0, v4}, Lcom/android/exsettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/exsettings/RadioInfo;->updateSmscButton:Landroid/widget/Button;

    .line 320
    iget-object v4, p0, Lcom/android/exsettings/RadioInfo;->updateSmscButton:Landroid/widget/Button;

    iget-object v5, p0, Lcom/android/exsettings/RadioInfo;->mUpdateSmscButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 321
    const v4, 0x7f1301ef

    invoke-virtual {p0, v4}, Lcom/android/exsettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/exsettings/RadioInfo;->refreshSmscButton:Landroid/widget/Button;

    .line 322
    iget-object v4, p0, Lcom/android/exsettings/RadioInfo;->refreshSmscButton:Landroid/widget/Button;

    iget-object v5, p0, Lcom/android/exsettings/RadioInfo;->mRefreshSmscButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 323
    const v4, 0x7f1301f1

    invoke-virtual {p0, v4}, Lcom/android/exsettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/exsettings/RadioInfo;->dnsCheckToggleButton:Landroid/widget/Button;

    .line 324
    iget-object v4, p0, Lcom/android/exsettings/RadioInfo;->dnsCheckToggleButton:Landroid/widget/Button;

    iget-object v5, p0, Lcom/android/exsettings/RadioInfo;->mDnsCheckButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 326
    const v4, 0x7f1301f3

    invoke-virtual {p0, v4}, Lcom/android/exsettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/exsettings/RadioInfo;->oemInfoButton:Landroid/widget/Button;

    .line 327
    iget-object v4, p0, Lcom/android/exsettings/RadioInfo;->oemInfoButton:Landroid/widget/Button;

    iget-object v5, p0, Lcom/android/exsettings/RadioInfo;->mOemInfoButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 328
    invoke-virtual {p0}, Lcom/android/exsettings/RadioInfo;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 329
    .local v3, "pm":Landroid/content/pm/PackageManager;
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v4, "com.android.settings.OEM_RADIO_INFO"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 330
    .local v1, "oemInfoIntent":Landroid/content/Intent;
    invoke-virtual {v3, v1, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 331
    .local v2, "oemInfoIntentList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_0

    .line 332
    iget-object v4, p0, Lcom/android/exsettings/RadioInfo;->oemInfoButton:Landroid/widget/Button;

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 335
    :cond_0
    new-instance v4, Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    iget-object v5, p0, Lcom/android/exsettings/RadioInfo;->mHandler:Landroid/os/Handler;

    invoke-direct {v4, p0, v5}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v4, p0, Lcom/android/exsettings/RadioInfo;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    .line 336
    iget-object v4, p0, Lcom/android/exsettings/RadioInfo;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    const/16 v5, 0xc8

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->notifySignalStrength(I)V

    .line 337
    iget-object v4, p0, Lcom/android/exsettings/RadioInfo;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    const/16 v5, 0x12c

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->notifyServiceState(I)V

    .line 338
    iget-object v4, p0, Lcom/android/exsettings/RadioInfo;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    const/16 v5, 0x64

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->notifyPhoneCallState(I)V

    .line 340
    iget-object v4, p0, Lcom/android/exsettings/RadioInfo;->phone:Lcom/android/internal/telephony/Phone;

    .line 341
    iget-object v5, p0, Lcom/android/exsettings/RadioInfo;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x3e8

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    .line 340
    invoke-interface {v4, v5}, Lcom/android/internal/telephony/Phone;->getPreferredNetworkType(Landroid/os/Message;)V

    .line 342
    iget-object v4, p0, Lcom/android/exsettings/RadioInfo;->phone:Lcom/android/internal/telephony/Phone;

    .line 343
    iget-object v5, p0, Lcom/android/exsettings/RadioInfo;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x3ea

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    .line 342
    invoke-interface {v4, v5}, Lcom/android/internal/telephony/Phone;->getNeighboringCids(Landroid/os/Message;)V

    .line 345
    invoke-static {}, Landroid/telephony/CellLocation;->requestLocationUpdate()V

    .line 348
    iget-object v4, p0, Lcom/android/exsettings/RadioInfo;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getAllCellInfo()Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/android/exsettings/RadioInfo;->mCellInfoValue:Ljava/util/List;

    .line 349
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onCreate: mCellInfoValue="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/exsettings/RadioInfo;->mCellInfoValue:Ljava/util/List;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/exsettings/RadioInfo;->log(Ljava/lang/String;)V

    .line 254
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 399
    const v0, 0x7f0c05b0

    invoke-interface {p1, v2, v2, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 400
    iget-object v1, p0, Lcom/android/exsettings/RadioInfo;->mSelectBandCallback:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 399
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object v0

    .line 401
    const/16 v1, 0x62

    .line 399
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 403
    const v0, 0x7f0c051d

    .line 402
    invoke-interface {p1, v3, v3, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 403
    iget-object v1, p0, Lcom/android/exsettings/RadioInfo;->mViewADNCallback:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 402
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 404
    const/4 v0, 0x2

    .line 405
    const v1, 0x7f0c051e

    .line 404
    invoke-interface {p1, v3, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 405
    iget-object v1, p0, Lcom/android/exsettings/RadioInfo;->mViewFDNCallback:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 404
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 406
    const/4 v0, 0x3

    .line 407
    const v1, 0x7f0c051f

    .line 406
    invoke-interface {p1, v3, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 407
    iget-object v1, p0, Lcom/android/exsettings/RadioInfo;->mViewSDNCallback:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 406
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 408
    const/4 v0, 0x4

    .line 409
    const v1, 0x7f0c0520

    .line 408
    invoke-interface {p1, v3, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 409
    iget-object v1, p0, Lcom/android/exsettings/RadioInfo;->mGetPdpList:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 408
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 411
    const-string/jumbo v0, "Disable data connection"

    .line 410
    const/4 v1, 0x5

    invoke-interface {p1, v3, v1, v2, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    .line 411
    iget-object v1, p0, Lcom/android/exsettings/RadioInfo;->mToggleData:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 410
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 412
    return v3
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 389
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 391
    const-string/jumbo v0, "onPause: unregister phone & data intents"

    invoke-direct {p0, v0}, Lcom/android/exsettings/RadioInfo;->log(Ljava/lang/String;)V

    .line 393
    iget-object v0, p0, Lcom/android/exsettings/RadioInfo;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->unregisterIntent()V

    .line 394
    iget-object v0, p0, Lcom/android/exsettings/RadioInfo;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/exsettings/RadioInfo;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 388
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 418
    const/4 v3, 0x5

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 419
    .local v0, "item":Landroid/view/MenuItem;
    iget-object v3, p0, Lcom/android/exsettings/RadioInfo;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result v1

    .line 420
    .local v1, "state":I
    const/4 v2, 0x1

    .line 422
    .local v2, "visible":Z
    packed-switch v1, :pswitch_data_0

    .line 431
    :pswitch_0
    const/4 v2, 0x0

    .line 434
    :goto_0
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 435
    const/4 v3, 0x1

    return v3

    .line 425
    :pswitch_1
    const-string/jumbo v3, "Disable data connection"

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    goto :goto_0

    .line 428
    :pswitch_2
    const-string/jumbo v3, "Enable data connection"

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    goto :goto_0

    .line 422
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 354
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 356
    invoke-direct {p0}, Lcom/android/exsettings/RadioInfo;->updatePhoneState()V

    .line 357
    invoke-direct {p0}, Lcom/android/exsettings/RadioInfo;->updateSignalStrength()V

    .line 358
    invoke-direct {p0}, Lcom/android/exsettings/RadioInfo;->updateMessageWaiting()V

    .line 359
    invoke-direct {p0}, Lcom/android/exsettings/RadioInfo;->updateCallRedirect()V

    .line 360
    invoke-direct {p0}, Lcom/android/exsettings/RadioInfo;->updateServiceState()V

    .line 361
    iget-object v0, p0, Lcom/android/exsettings/RadioInfo;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/exsettings/RadioInfo;->updateLocation(Landroid/telephony/CellLocation;)V

    .line 362
    invoke-direct {p0}, Lcom/android/exsettings/RadioInfo;->updateDataState()V

    .line 363
    invoke-direct {p0}, Lcom/android/exsettings/RadioInfo;->updateDataStats()V

    .line 364
    invoke-direct {p0}, Lcom/android/exsettings/RadioInfo;->updateDataStats2()V

    .line 365
    invoke-direct {p0}, Lcom/android/exsettings/RadioInfo;->updatePowerState()V

    .line 366
    invoke-direct {p0}, Lcom/android/exsettings/RadioInfo;->updateCellInfoListRate()V

    .line 367
    invoke-direct {p0}, Lcom/android/exsettings/RadioInfo;->updateImsRegRequiredState()V

    .line 368
    invoke-direct {p0}, Lcom/android/exsettings/RadioInfo;->updateImsVoLteProvisionedState()V

    .line 369
    invoke-direct {p0}, Lcom/android/exsettings/RadioInfo;->updateSmsOverImsState()V

    .line 370
    invoke-direct {p0}, Lcom/android/exsettings/RadioInfo;->updateLteRamDumpState()V

    .line 371
    invoke-direct {p0}, Lcom/android/exsettings/RadioInfo;->updateProperties()V

    .line 372
    invoke-direct {p0}, Lcom/android/exsettings/RadioInfo;->updateDnsCheckState()V

    .line 374
    const-string/jumbo v0, "onResume: register phone & data intents"

    invoke-direct {p0, v0}, Lcom/android/exsettings/RadioInfo;->log(Ljava/lang/String;)V

    .line 376
    iget-object v0, p0, Lcom/android/exsettings/RadioInfo;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->registerIntent()V

    .line 377
    iget-object v0, p0, Lcom/android/exsettings/RadioInfo;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/exsettings/RadioInfo;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 378
    const/16 v2, 0x24dc

    .line 377
    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 353
    return-void
.end method
