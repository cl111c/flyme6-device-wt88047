.class public Lcom/android/exsettings/sim/SimSettings;
.super Lcom/android/exsettings/RestrictedSettingsFragment;
.source "SimSettings.java"

# interfaces
.implements Lcom/android/exsettings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exsettings/sim/SimSettings$SimPreference;,
        Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;,
        Lcom/android/exsettings/sim/SimSettings$1;,
        Lcom/android/exsettings/sim/SimSettings$2;,
        Lcom/android/exsettings/sim/SimSettings$3;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/exsettings/search/Indexable$SearchIndexProvider;

.field private static sAlertDialog:Landroid/app/AlertDialog;

.field private static sProgressDialog:Landroid/app/ProgressDialog;


# instance fields
.field private mAvailableSubInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mCallState:[I

.field private mContext:Landroid/content/Context;

.field private mExtTelephony:Lcom/android/internal/telephony/IExtTelephony;

.field private mMobileNetwork:Landroid/preference/PreferenceCategory;

.field private mNumSlots:I

.field private final mOnSubscriptionsChangeListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

.field private mPhoneCount:I

.field private mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

.field private mPrimarySubSelect:Landroid/preference/Preference;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSelectableSubInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSimCards:Landroid/preference/PreferenceCategory;

.field private mSubInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field private mUiccProvisionStatus:[I

.field private needUpdate:Z


# direct methods
.method static synthetic -get0(Lcom/android/exsettings/sim/SimSettings;)[I
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/sim/SimSettings;->mCallState:[I

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/exsettings/sim/SimSettings;)I
    .locals 1

    iget v0, p0, Lcom/android/exsettings/sim/SimSettings;->mPhoneCount:I

    return v0
.end method

.method static synthetic -get2(Lcom/android/exsettings/sim/SimSettings;)Landroid/telephony/SubscriptionManager;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/sim/SimSettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/exsettings/sim/SimSettings;)[I
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/sim/SimSettings;->mUiccProvisionStatus:[I

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/exsettings/sim/SimSettings;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/exsettings/sim/SimSettings;->needUpdate:Z

    return v0
.end method

.method static synthetic -get5()Landroid/app/AlertDialog;
    .locals 1

    sget-object v0, Lcom/android/exsettings/sim/SimSettings;->sAlertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic -get6()Landroid/app/ProgressDialog;
    .locals 1

    sget-object v0, Lcom/android/exsettings/sim/SimSettings;->sProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/exsettings/sim/SimSettings;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/exsettings/sim/SimSettings;->needUpdate:Z

    return p1
.end method

.method static synthetic -set1(Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    sput-object p0, Lcom/android/exsettings/sim/SimSettings;->sAlertDialog:Landroid/app/AlertDialog;

    return-object p0
.end method

.method static synthetic -set2(Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0

    sput-object p0, Lcom/android/exsettings/sim/SimSettings;->sProgressDialog:Landroid/app/ProgressDialog;

    return-object p0
.end method

.method static synthetic -wrap0(Lcom/android/exsettings/sim/SimSettings;Landroid/telephony/SubscriptionInfo;)Ljava/lang/String;
    .locals 1
    .param p1, "info"    # Landroid/telephony/SubscriptionInfo;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/exsettings/sim/SimSettings;->getPhoneNumber(Landroid/telephony/SubscriptionInfo;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/exsettings/sim/SimSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/exsettings/sim/SimSettings;->simEnablerUpdate()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/exsettings/sim/SimSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/exsettings/sim/SimSettings;->updateAllOptions()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/exsettings/sim/SimSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/exsettings/sim/SimSettings;->updateCellularDataValues()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/exsettings/sim/SimSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/exsettings/sim/SimSettings;->updateSubscriptions()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 111
    sput-object v0, Lcom/android/exsettings/sim/SimSettings;->sAlertDialog:Landroid/app/AlertDialog;

    .line 112
    sput-object v0, Lcom/android/exsettings/sim/SimSettings;->sProgressDialog:Landroid/app/ProgressDialog;

    .line 927
    new-instance v0, Lcom/android/exsettings/sim/SimSettings$2;

    invoke-direct {v0}, Lcom/android/exsettings/sim/SimSettings$2;-><init>()V

    .line 926
    sput-object v0, Lcom/android/exsettings/sim/SimSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/exsettings/search/Indexable$SearchIndexProvider;

    .line 72
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 131
    const-string/jumbo v0, "no_config_sim"

    invoke-direct {p0, v0}, Lcom/android/exsettings/RestrictedSettingsFragment;-><init>(Ljava/lang/String;)V

    .line 94
    const-string/jumbo v0, "extphone"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 93
    invoke-static {v0}, Lcom/android/internal/telephony/IExtTelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IExtTelephony;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/sim/SimSettings;->mExtTelephony:Lcom/android/internal/telephony/IExtTelephony;

    .line 102
    iput-object v1, p0, Lcom/android/exsettings/sim/SimSettings;->mAvailableSubInfos:Ljava/util/List;

    .line 103
    iput-object v1, p0, Lcom/android/exsettings/sim/SimSettings;->mSubInfoList:Ljava/util/List;

    .line 104
    iput-object v1, p0, Lcom/android/exsettings/sim/SimSettings;->mSelectableSubInfos:Ljava/util/List;

    .line 105
    iput-object v1, p0, Lcom/android/exsettings/sim/SimSettings;->mSimCards:Landroid/preference/PreferenceCategory;

    .line 113
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/exsettings/sim/SimSettings;->needUpdate:Z

    .line 114
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    iput v0, p0, Lcom/android/exsettings/sim/SimSettings;->mPhoneCount:I

    .line 115
    iget v0, p0, Lcom/android/exsettings/sim/SimSettings;->mPhoneCount:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/exsettings/sim/SimSettings;->mUiccProvisionStatus:[I

    .line 116
    iput-object v1, p0, Lcom/android/exsettings/sim/SimSettings;->mPrimarySubSelect:Landroid/preference/Preference;

    .line 117
    iget v0, p0, Lcom/android/exsettings/sim/SimSettings;->mPhoneCount:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/exsettings/sim/SimSettings;->mCallState:[I

    .line 118
    iget v0, p0, Lcom/android/exsettings/sim/SimSettings;->mPhoneCount:I

    new-array v0, v0, [Landroid/telephony/PhoneStateListener;

    iput-object v0, p0, Lcom/android/exsettings/sim/SimSettings;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    .line 169
    new-instance v0, Lcom/android/exsettings/sim/SimSettings$1;

    invoke-direct {v0, p0}, Lcom/android/exsettings/sim/SimSettings$1;-><init>(Lcom/android/exsettings/sim/SimSettings;)V

    .line 168
    iput-object v0, p0, Lcom/android/exsettings/sim/SimSettings;->mOnSubscriptionsChangeListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    .line 953
    new-instance v0, Lcom/android/exsettings/sim/SimSettings$3;

    invoke-direct {v0, p0}, Lcom/android/exsettings/sim/SimSettings$3;-><init>(Lcom/android/exsettings/sim/SimSettings;)V

    iput-object v0, p0, Lcom/android/exsettings/sim/SimSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 130
    return-void
.end method

.method private disableDds()Z
    .locals 4

    .prologue
    .line 1006
    iget-object v1, p0, Lcom/android/exsettings/sim/SimSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1007
    const-string/jumbo v2, "config_disable_dds_preference"

    const/4 v3, 0x0

    .line 1006
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 1007
    const/4 v2, 0x1

    .line 1006
    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 1009
    .local v0, "disableDds":Z
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " config disable dds =  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/exsettings/sim/SimSettings;->log(Ljava/lang/String;)V

    .line 1010
    return v0

    .line 1006
    .end local v0    # "disableDds":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "disableDds":Z
    goto :goto_0
.end method

.method private getPhoneNumber(Landroid/telephony/SubscriptionInfo;)Ljava/lang/String;
    .locals 3
    .param p1, "info"    # Landroid/telephony/SubscriptionInfo;

    .prologue
    .line 915
    iget-object v1, p0, Lcom/android/exsettings/sim/SimSettings;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 916
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getLine1NumberForSubscriber(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getPhoneStateListener(II)Landroid/telephony/PhoneStateListener;
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "subId"    # I

    .prologue
    .line 1042
    move v0, p1

    .line 1043
    .local v0, "i":I
    iget-object v1, p0, Lcom/android/exsettings/sim/SimSettings;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    new-instance v2, Lcom/android/exsettings/sim/SimSettings$4;

    invoke-direct {v2, p0, p2, v0}, Lcom/android/exsettings/sim/SimSettings$4;-><init>(Lcom/android/exsettings/sim/SimSettings;II)V

    aput-object v2, v1, p1

    .line 1051
    iget-object v1, p0, Lcom/android/exsettings/sim/SimSettings;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    aget-object v1, v1, p1

    return-object v1
.end method

.method private initLTEPreference()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 974
    const-string/jumbo v7, "persist.radio.primarycard"

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 975
    .local v2, "isPrimarySubFeatureEnable":Z
    iget-object v7, p0, Lcom/android/exsettings/sim/SimSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 976
    const-string/jumbo v8, "config_primary_sub_setable"

    .line 975
    invoke-static {v7, v8, v9}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v10, :cond_0

    const/4 v4, 0x1

    .line 978
    .local v4, "primarySetable":Z
    :goto_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "isPrimarySubFeatureEnable :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 979
    const-string/jumbo v8, " primarySetable :"

    .line 978
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/exsettings/sim/SimSettings;->log(Ljava/lang/String;)V

    .line 981
    if-eqz v2, :cond_1

    if-eqz v4, :cond_1

    .line 987
    iget-object v7, p0, Lcom/android/exsettings/sim/SimSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 988
    const-string/jumbo v8, "config_current_primary_sub"

    const/4 v9, -0x1

    .line 987
    invoke-static {v7, v8, v9}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 989
    .local v0, "currentPrimarySlot":I
    iget-object v7, p0, Lcom/android/exsettings/sim/SimSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 990
    const-string/jumbo v8, "config_lte_sub_select_mode"

    .line 989
    invoke-static {v7, v8, v10}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-nez v7, :cond_2

    const/4 v1, 0x1

    .line 992
    .local v1, "isManualMode":Z
    :goto_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "init LTE primary slot : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " isManualMode :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/exsettings/sim/SimSettings;->log(Ljava/lang/String;)V

    .line 994
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSlotId(I)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 995
    iget-object v7, p0, Lcom/android/exsettings/sim/SimSettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v7, v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v6

    .line 997
    .local v6, "subInfo":Landroid/telephony/SubscriptionInfo;
    if-nez v6, :cond_3

    const/4 v3, 0x0

    .line 998
    :goto_2
    iget-object v7, p0, Lcom/android/exsettings/sim/SimSettings;->mPrimarySubSelect:Landroid/preference/Preference;

    invoke-virtual {v7, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1002
    .end local v6    # "subInfo":Landroid/telephony/SubscriptionInfo;
    :goto_3
    iget-object v7, p0, Lcom/android/exsettings/sim/SimSettings;->mPrimarySubSelect:Landroid/preference/Preference;

    invoke-virtual {v7, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 972
    return-void

    .line 975
    .end local v0    # "currentPrimarySlot":I
    .end local v1    # "isManualMode":Z
    .end local v4    # "primarySetable":Z
    :cond_0
    const/4 v4, 0x0

    .restart local v4    # "primarySetable":Z
    goto/16 :goto_0

    .line 983
    :cond_1
    const-string/jumbo v7, "sim_activities"

    invoke-virtual {p0, v7}, Lcom/android/exsettings/sim/SimSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceCategory;

    .line 984
    .local v5, "simActivities":Landroid/preference/PreferenceCategory;
    iget-object v7, p0, Lcom/android/exsettings/sim/SimSettings;->mPrimarySubSelect:Landroid/preference/Preference;

    invoke-virtual {v5, v7}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 985
    return-void

    .line 989
    .end local v5    # "simActivities":Landroid/preference/PreferenceCategory;
    .restart local v0    # "currentPrimarySlot":I
    :cond_2
    const/4 v1, 0x0

    .restart local v1    # "isManualMode":Z
    goto :goto_1

    .line 997
    .restart local v6    # "subInfo":Landroid/telephony/SubscriptionInfo;
    :cond_3
    invoke-virtual {v6}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v3

    .local v3, "lteSummary":Ljava/lang/CharSequence;
    goto :goto_2

    .line 1000
    .end local v3    # "lteSummary":Ljava/lang/CharSequence;
    .end local v6    # "subInfo":Landroid/telephony/SubscriptionInfo;
    :cond_4
    iget-object v7, p0, Lcom/android/exsettings/sim/SimSettings;->mPrimarySubSelect:Landroid/preference/Preference;

    const-string/jumbo v8, ""

    invoke-virtual {v7, v8}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_3
.end method

.method private isCallStateIdle()Z
    .locals 5

    .prologue
    .line 1055
    const/4 v0, 0x1

    .line 1056
    .local v0, "callStateIdle":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/exsettings/sim/SimSettings;->mCallState:[I

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 1057
    iget-object v2, p0, Lcom/android/exsettings/sim/SimSettings;->mCallState:[I

    aget v2, v2, v1

    if-eqz v2, :cond_0

    .line 1058
    const/4 v0, 0x0

    .line 1056
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1061
    :cond_1
    const-string/jumbo v2, "SimSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isCallStateIdle "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1062
    return v0
.end method

.method private isSubProvisioned(I)Z
    .locals 3
    .param p1, "slotId"    # I

    .prologue
    .line 947
    const/4 v0, 0x0

    .line 949
    .local v0, "retVal":Z
    iget-object v1, p0, Lcom/android/exsettings/sim/SimSettings;->mUiccProvisionStatus:[I

    aget v1, v1, p1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 950
    :cond_0
    return v0
.end method

.method private listen()V
    .locals 5

    .prologue
    .line 1015
    invoke-virtual {p0}, Lcom/android/exsettings/sim/SimSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string/jumbo v4, "phone"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 1016
    .local v2, "tm":Landroid/telephony/TelephonyManager;
    iget-object v3, p0, Lcom/android/exsettings/sim/SimSettings;->mSelectableSubInfos:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_0

    .line 1017
    const-string/jumbo v3, "SimSettings"

    const-string/jumbo v4, "Register for call state change"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1018
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v3, p0, Lcom/android/exsettings/sim/SimSettings;->mPhoneCount:I

    if-ge v0, v3, :cond_0

    .line 1019
    iget-object v3, p0, Lcom/android/exsettings/sim/SimSettings;->mSelectableSubInfos:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    .line 1020
    .local v1, "subId":I
    invoke-direct {p0, v0, v1}, Lcom/android/exsettings/sim/SimSettings;->getPhoneStateListener(II)Landroid/telephony/PhoneStateListener;

    move-result-object v3

    .line 1021
    const/16 v4, 0x20

    .line 1020
    invoke-virtual {v2, v3, v4}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 1018
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1013
    .end local v0    # "i":I
    .end local v1    # "subId":I
    :cond_0
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 920
    const-string/jumbo v0, "SimSettings"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 919
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 355
    return-void
.end method

.method private simEnablerUpdate()V
    .locals 1

    .prologue
    .line 360
    invoke-virtual {p0}, Lcom/android/exsettings/sim/SimSettings;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 361
    invoke-direct {p0}, Lcom/android/exsettings/sim/SimSettings;->updateAllOptions()V

    .line 359
    :goto_0
    return-void

    .line 363
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/exsettings/sim/SimSettings;->needUpdate:Z

    goto :goto_0
.end method

.method private unRegisterPhoneStateListener()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1028
    invoke-virtual {p0}, Lcom/android/exsettings/sim/SimSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string/jumbo v3, "phone"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 1029
    .local v1, "tm":Landroid/telephony/TelephonyManager;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lcom/android/exsettings/sim/SimSettings;->mPhoneCount:I

    if-ge v0, v2, :cond_1

    .line 1030
    iget-object v2, p0, Lcom/android/exsettings/sim/SimSettings;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    aget-object v2, v2, v0

    if-eqz v2, :cond_0

    .line 1031
    iget-object v2, p0, Lcom/android/exsettings/sim/SimSettings;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    aget-object v2, v2, v0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 1032
    iget-object v2, p0, Lcom/android/exsettings/sim/SimSettings;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    aput-object v4, v2, v0

    .line 1029
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1026
    :cond_1
    return-void
.end method

.method private updateActivitesCategory()V
    .locals 0

    .prologue
    .line 236
    invoke-direct {p0}, Lcom/android/exsettings/sim/SimSettings;->updateCellularDataValues()V

    .line 237
    invoke-direct {p0}, Lcom/android/exsettings/sim/SimSettings;->updateCallValues()V

    .line 238
    invoke-direct {p0}, Lcom/android/exsettings/sim/SimSettings;->updateSmsValues()V

    .line 235
    return-void
.end method

.method private updateAllOptions()V
    .locals 0

    .prologue
    .line 221
    invoke-direct {p0}, Lcom/android/exsettings/sim/SimSettings;->updateSimSlotValues()V

    .line 222
    invoke-direct {p0}, Lcom/android/exsettings/sim/SimSettings;->updateActivitesCategory()V

    .line 220
    return-void
.end method

.method private updateCallValues()V
    .locals 7

    .prologue
    const/4 v5, 0x1

    .line 289
    const-string/jumbo v4, "sim_calls"

    invoke-virtual {p0, v4}, Lcom/android/exsettings/sim/SimSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 290
    .local v2, "simPref":Landroid/preference/Preference;
    iget-object v4, p0, Lcom/android/exsettings/sim/SimSettings;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/telecom/TelecomManager;->from(Landroid/content/Context;)Landroid/telecom/TelecomManager;

    move-result-object v3

    .line 292
    .local v3, "telecomManager":Landroid/telecom/TelecomManager;
    invoke-virtual {v3}, Landroid/telecom/TelecomManager;->getUserSelectedOutgoingPhoneAccount()Landroid/telecom/PhoneAccountHandle;

    move-result-object v1

    .line 294
    .local v1, "phoneAccount":Landroid/telecom/PhoneAccountHandle;
    invoke-virtual {v3}, Landroid/telecom/TelecomManager;->getCallCapablePhoneAccounts()Ljava/util/List;

    move-result-object v0

    .line 296
    .local v0, "allPhoneAccounts":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/PhoneAccountHandle;>;"
    const v4, 0x7f0c05e3

    invoke-virtual {v2, v4}, Landroid/preference/Preference;->setTitle(I)V

    .line 297
    if-nez v1, :cond_0

    .line 298
    iget-object v4, p0, Lcom/android/exsettings/sim/SimSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f0c0e3c

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 297
    :goto_0
    invoke-virtual {v2, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 300
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, v5, :cond_1

    move v4, v5

    :goto_1
    invoke-virtual {v2, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 288
    return-void

    .line 299
    :cond_0
    invoke-virtual {v3, v1}, Landroid/telecom/TelecomManager;->getPhoneAccount(Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/PhoneAccount;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telecom/PhoneAccount;->getLabel()Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    goto :goto_0

    .line 300
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private updateCellularDataValues()V
    .locals 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 269
    const-string/jumbo v6, "sim_cellular_data"

    invoke-virtual {p0, v6}, Lcom/android/exsettings/sim/SimSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 270
    .local v2, "simPref":Landroid/preference/Preference;
    iget-object v6, p0, Lcom/android/exsettings/sim/SimSettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v6}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionInfo()Landroid/telephony/SubscriptionInfo;

    move-result-object v3

    .line 271
    .local v3, "sir":Landroid/telephony/SubscriptionInfo;
    const v6, 0x7f0c05e2

    invoke-virtual {v2, v6}, Landroid/preference/Preference;->setTitle(I)V

    .line 274
    if-eqz v3, :cond_2

    .line 275
    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 280
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/exsettings/sim/SimSettings;->isCallStateIdle()Z

    move-result v0

    .line 282
    .local v0, "callStateIdle":Z
    const-string/jumbo v6, "ril.cdma.inecmmode"

    .line 281
    invoke-static {v6, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 284
    .local v1, "ecbMode":Z
    iget-object v6, p0, Lcom/android/exsettings/sim/SimSettings;->mSelectableSubInfos:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-le v6, v5, :cond_1

    invoke-direct {p0}, Lcom/android/exsettings/sim/SimSettings;->disableDds()Z

    move-result v6

    if-eqz v6, :cond_3

    :cond_1
    :goto_1
    invoke-virtual {v2, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 268
    return-void

    .line 276
    .end local v0    # "callStateIdle":Z
    .end local v1    # "ecbMode":Z
    :cond_2
    if-nez v3, :cond_0

    .line 277
    const v6, 0x7f0c0e3d

    invoke-virtual {v2, v6}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 284
    .restart local v0    # "callStateIdle":Z
    .restart local v1    # "ecbMode":Z
    :cond_3
    if-eqz v0, :cond_1

    .line 285
    if-nez v1, :cond_1

    move v4, v5

    goto :goto_1
.end method

.method private updateSimSlotValues()V
    .locals 4

    .prologue
    .line 226
    iget-object v3, p0, Lcom/android/exsettings/sim/SimSettings;->mSimCards:Landroid/preference/PreferenceCategory;

    invoke-virtual {v3}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v2

    .line 227
    .local v2, "prefSize":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 228
    iget-object v3, p0, Lcom/android/exsettings/sim/SimSettings;->mSimCards:Landroid/preference/PreferenceCategory;

    invoke-virtual {v3, v0}, Landroid/preference/PreferenceCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v1

    .line 229
    .local v1, "pref":Landroid/preference/Preference;
    instance-of v3, v1, Lcom/android/exsettings/sim/SimSettings$SimPreference;

    if-eqz v3, :cond_0

    .line 230
    check-cast v1, Lcom/android/exsettings/sim/SimSettings$SimPreference;

    .end local v1    # "pref":Landroid/preference/Preference;
    invoke-virtual {v1}, Lcom/android/exsettings/sim/SimSettings$SimPreference;->update()V

    .line 227
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 225
    :cond_1
    return-void
.end method

.method private updateSmsValues()V
    .locals 8

    .prologue
    const/4 v5, 0x1

    .line 242
    const-string/jumbo v6, "sim_sms"

    invoke-virtual {p0, v6}, Lcom/android/exsettings/sim/SimSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    .line 243
    .local v3, "simPref":Landroid/preference/Preference;
    const v6, 0x7f0c05e4

    invoke-virtual {v3, v6}, Landroid/preference/Preference;->setTitle(I)V

    .line 244
    const/4 v2, 0x0

    .line 245
    .local v2, "isSMSPrompt":Z
    iget-object v6, p0, Lcom/android/exsettings/sim/SimSettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 246
    iget-object v7, p0, Lcom/android/exsettings/sim/SimSettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSmsSubId()I

    move-result v7

    .line 245
    invoke-virtual {v6, v7}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v4

    .line 248
    .local v4, "sir":Landroid/telephony/SubscriptionInfo;
    :try_start_0
    iget-object v6, p0, Lcom/android/exsettings/sim/SimSettings;->mExtTelephony:Lcom/android/internal/telephony/IExtTelephony;

    invoke-interface {v6}, Lcom/android/internal/telephony/IExtTelephony;->isSMSPromptEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 255
    .end local v2    # "isSMSPrompt":Z
    :goto_0
    iget-object v6, p0, Lcom/android/exsettings/sim/SimSettings;->mExtTelephony:Lcom/android/internal/telephony/IExtTelephony;

    if-nez v6, :cond_0

    .line 256
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/SmsManager;->isSMSPromptEnabled()Z

    move-result v2

    .line 258
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "[updateSmsValues] isSMSPrompt: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/exsettings/sim/SimSettings;->log(Ljava/lang/String;)V

    .line 259
    if-nez v2, :cond_1

    if-nez v4, :cond_2

    .line 260
    :cond_1
    iget-object v6, p0, Lcom/android/exsettings/sim/SimSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 261
    const v7, 0x7f0c0e3c

    .line 260
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 265
    :goto_1
    iget-object v6, p0, Lcom/android/exsettings/sim/SimSettings;->mSelectableSubInfos:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-le v6, v5, :cond_3

    :goto_2
    invoke-virtual {v3, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 241
    return-void

    .line 251
    .restart local v2    # "isSMSPrompt":Z
    :catch_0
    move-exception v1

    .line 252
    .local v1, "ex":Ljava/lang/NullPointerException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "NullPointerException @isSMSPromptEnabled"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/exsettings/sim/SimSettings;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 249
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 250
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "RemoteException @isSMSPromptEnabled"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/exsettings/sim/SimSettings;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 263
    .end local v0    # "ex":Landroid/os/RemoteException;
    .end local v2    # "isSMSPrompt":Z
    :cond_2
    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 265
    :cond_3
    const/4 v5, 0x0

    goto :goto_2
.end method

.method private updateSubscriptions()V
    .locals 12

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 181
    iget-object v7, p0, Lcom/android/exsettings/sim/SimSettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v7}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v7

    iput-object v7, p0, Lcom/android/exsettings/sim/SimSettings;->mSubInfoList:Ljava/util/List;

    .line 182
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v7, p0, Lcom/android/exsettings/sim/SimSettings;->mNumSlots:I

    if-ge v0, v7, :cond_1

    .line 183
    iget-object v7, p0, Lcom/android/exsettings/sim/SimSettings;->mSimCards:Landroid/preference/PreferenceCategory;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "sim"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    .line 184
    .local v3, "pref":Landroid/preference/Preference;
    instance-of v7, v3, Lcom/android/exsettings/sim/SimSettings$SimPreference;

    if-eqz v7, :cond_0

    .line 185
    iget-object v7, p0, Lcom/android/exsettings/sim/SimSettings;->mSimCards:Landroid/preference/PreferenceCategory;

    invoke-virtual {v7, v3}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 182
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 188
    .end local v3    # "pref":Landroid/preference/Preference;
    :cond_1
    iget-object v7, p0, Lcom/android/exsettings/sim/SimSettings;->mMobileNetwork:Landroid/preference/PreferenceCategory;

    invoke-virtual {v7}, Landroid/preference/PreferenceCategory;->removeAll()V

    .line 189
    iget-object v7, p0, Lcom/android/exsettings/sim/SimSettings;->mAvailableSubInfos:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->clear()V

    .line 190
    iget-object v7, p0, Lcom/android/exsettings/sim/SimSettings;->mSelectableSubInfos:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->clear()V

    .line 192
    const/4 v0, 0x0

    :goto_1
    iget v7, p0, Lcom/android/exsettings/sim/SimSettings;->mNumSlots:I

    if-ge v0, v7, :cond_5

    .line 193
    iget-object v7, p0, Lcom/android/exsettings/sim/SimSettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v7, v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v5

    .line 195
    .local v5, "sir":Landroid/telephony/SubscriptionInfo;
    if-eqz v5, :cond_3

    .line 196
    invoke-virtual {v5}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v6

    .line 198
    .local v6, "subscriptionId":I
    :goto_2
    new-instance v4, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;

    iget-object v7, p0, Lcom/android/exsettings/sim/SimSettings;->mContext:Landroid/content/Context;

    invoke-direct {v4, p0, v7, v5, v0}, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;-><init>(Lcom/android/exsettings/sim/SimSettings;Landroid/content/Context;Landroid/telephony/SubscriptionInfo;I)V

    .line 199
    .local v4, "simPreference":Lcom/android/exsettings/sim/SimSettings$SimPreference;
    iget v7, p0, Lcom/android/exsettings/sim/SimSettings;->mNumSlots:I

    sub-int v7, v0, v7

    invoke-virtual {v4, v7}, Lcom/android/exsettings/sim/SimSettings$SimPreference;->setOrder(I)V

    .line 200
    iget-object v7, p0, Lcom/android/exsettings/sim/SimSettings;->mSimCards:Landroid/preference/PreferenceCategory;

    invoke-virtual {v7, v4}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 201
    iget-object v7, p0, Lcom/android/exsettings/sim/SimSettings;->mAvailableSubInfos:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 202
    if-eqz v5, :cond_2

    invoke-direct {p0, v0}, Lcom/android/exsettings/sim/SimSettings;->isSubProvisioned(I)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 203
    iget-object v7, p0, Lcom/android/exsettings/sim/SimSettings;->mSelectableSubInfos:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 205
    :cond_2
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 206
    .local v1, "mobileNetworkIntent":Landroid/content/Intent;
    new-instance v7, Landroid/content/ComponentName;

    .line 207
    const-string/jumbo v10, "com.android.phone"

    const-string/jumbo v11, "com.android.phone.MobileNetworkSettings"

    .line 206
    invoke-direct {v7, v10, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 208
    invoke-static {v1, v0, v6}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;II)V

    .line 209
    new-instance v2, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/exsettings/sim/SimSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v2, v7}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 211
    .local v2, "mobileNetworkPref":Landroid/preference/Preference;
    new-array v7, v8, [Ljava/lang/Object;

    add-int/lit8 v10, v0, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v7, v9

    const v10, 0x7f0c0359

    invoke-virtual {p0, v10, v7}, Lcom/android/exsettings/sim/SimSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 210
    invoke-virtual {v2, v7}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 212
    invoke-virtual {v2, v1}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 214
    const/4 v7, -0x1

    if-eq v6, v7, :cond_4

    move v7, v8

    .line 213
    :goto_3
    invoke-virtual {v2, v7}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 215
    iget-object v7, p0, Lcom/android/exsettings/sim/SimSettings;->mMobileNetwork:Landroid/preference/PreferenceCategory;

    invoke-virtual {v7, v2}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 192
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 197
    .end local v1    # "mobileNetworkIntent":Landroid/content/Intent;
    .end local v2    # "mobileNetworkPref":Landroid/preference/Preference;
    .end local v4    # "simPreference":Lcom/android/exsettings/sim/SimSettings$SimPreference;
    .end local v6    # "subscriptionId":I
    :cond_3
    const/4 v6, -0x1

    .restart local v6    # "subscriptionId":I
    goto :goto_2

    .restart local v1    # "mobileNetworkIntent":Landroid/content/Intent;
    .restart local v2    # "mobileNetworkPref":Landroid/preference/Preference;
    .restart local v4    # "simPreference":Lcom/android/exsettings/sim/SimSettings$SimPreference;
    :cond_4
    move v7, v9

    .line 214
    goto :goto_3

    .line 217
    .end local v1    # "mobileNetworkIntent":Landroid/content/Intent;
    .end local v2    # "mobileNetworkPref":Landroid/preference/Preference;
    .end local v4    # "simPreference":Lcom/android/exsettings/sim/SimSettings$SimPreference;
    .end local v5    # "sir":Landroid/telephony/SubscriptionInfo;
    .end local v6    # "subscriptionId":I
    :cond_5
    invoke-direct {p0}, Lcom/android/exsettings/sim/SimSettings;->updateAllOptions()V

    .line 180
    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 136
    const/16 v0, 0x58

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 141
    invoke-super {p0, p1}, Lcom/android/exsettings/RestrictedSettingsFragment;->onCreate(Landroid/os/Bundle;)V

    .line 142
    invoke-virtual {p0}, Lcom/android/exsettings/sim/SimSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iput-object v2, p0, Lcom/android/exsettings/sim/SimSettings;->mContext:Landroid/content/Context;

    .line 144
    invoke-virtual {p0}, Lcom/android/exsettings/sim/SimSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/exsettings/sim/SimSettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 146
    invoke-virtual {p0}, Lcom/android/exsettings/sim/SimSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string/jumbo v3, "phone"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 147
    .local v1, "tm":Landroid/telephony/TelephonyManager;
    const v2, 0x7f08005b

    invoke-virtual {p0, v2}, Lcom/android/exsettings/sim/SimSettings;->addPreferencesFromResource(I)V

    .line 149
    const-string/jumbo v2, "select_primary_sub"

    invoke-virtual {p0, v2}, Lcom/android/exsettings/sim/SimSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/exsettings/sim/SimSettings;->mPrimarySubSelect:Landroid/preference/Preference;

    .line 150
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v2

    iput v2, p0, Lcom/android/exsettings/sim/SimSettings;->mNumSlots:I

    .line 151
    const-string/jumbo v2, "sim_cards"

    invoke-virtual {p0, v2}, Lcom/android/exsettings/sim/SimSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceCategory;

    iput-object v2, p0, Lcom/android/exsettings/sim/SimSettings;->mSimCards:Landroid/preference/PreferenceCategory;

    .line 152
    const-string/jumbo v2, "mobile_network"

    invoke-virtual {p0, v2}, Lcom/android/exsettings/sim/SimSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceCategory;

    iput-object v2, p0, Lcom/android/exsettings/sim/SimSettings;->mMobileNetwork:Landroid/preference/PreferenceCategory;

    .line 153
    new-instance v2, Ljava/util/ArrayList;

    iget v3, p0, Lcom/android/exsettings/sim/SimSettings;->mNumSlots:I

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lcom/android/exsettings/sim/SimSettings;->mAvailableSubInfos:Ljava/util/List;

    .line 154
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/exsettings/sim/SimSettings;->mSelectableSubInfos:Ljava/util/List;

    .line 155
    invoke-virtual {p0}, Lcom/android/exsettings/sim/SimSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/exsettings/sim/SimSelectNotification;->cancelNotification(Landroid/content/Context;)V

    .line 157
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v2, "org.codeaurora.intent.action.ACTION_UICC_MANUAL_PROVISION_STATUS_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 158
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    iget-object v2, p0, Lcom/android/exsettings/sim/SimSettings;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/exsettings/sim/SimSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 140
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/exsettings/sim/SimSettings;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/exsettings/sim/SimSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 164
    const-string/jumbo v0, "SimSettings"

    const-string/jumbo v1, "on onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    invoke-super {p0}, Lcom/android/exsettings/RestrictedSettingsFragment;->onDestroy()V

    .line 162
    return-void
.end method

.method public onPause()V
    .locals 4

    .prologue
    .line 314
    invoke-super {p0}, Lcom/android/exsettings/RestrictedSettingsFragment;->onPause()V

    .line 315
    iget-object v2, p0, Lcom/android/exsettings/sim/SimSettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    iget-object v3, p0, Lcom/android/exsettings/sim/SimSettings;->mOnSubscriptionsChangeListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    invoke-virtual {v2, v3}, Landroid/telephony/SubscriptionManager;->removeOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 316
    invoke-direct {p0}, Lcom/android/exsettings/sim/SimSettings;->unRegisterPhoneStateListener()V

    .line 318
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/exsettings/sim/SimSettings;->mSimCards:Landroid/preference/PreferenceCategory;

    invoke-virtual {v2}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 319
    iget-object v2, p0, Lcom/android/exsettings/sim/SimSettings;->mSimCards:Landroid/preference/PreferenceCategory;

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v1

    .line 320
    .local v1, "pref":Landroid/preference/Preference;
    instance-of v2, v1, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;

    if-eqz v2, :cond_0

    .line 322
    check-cast v1, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;

    .end local v1    # "pref":Landroid/preference/Preference;
    invoke-virtual {v1}, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;->cleanUpPendingDialogs()V

    .line 318
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 313
    :cond_1
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 6
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 330
    iget-object v0, p0, Lcom/android/exsettings/sim/SimSettings;->mContext:Landroid/content/Context;

    .line 331
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/android/exsettings/sim/SimDialogActivity;

    invoke-direct {v1, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 332
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v3, 0x10000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 334
    instance-of v3, p2, Lcom/android/exsettings/sim/SimSettings$SimPreference;

    if-eqz v3, :cond_0

    .line 335
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/android/exsettings/sim/SimPreferenceDialog;

    invoke-direct {v2, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 336
    .local v2, "newIntent":Landroid/content/Intent;
    const-string/jumbo v3, "slot_id"

    check-cast p2, Lcom/android/exsettings/sim/SimSettings$SimPreference;

    .end local p2    # "preference":Landroid/preference/Preference;
    invoke-static {p2}, Lcom/android/exsettings/sim/SimSettings$SimPreference;->-wrap0(Lcom/android/exsettings/sim/SimSettings$SimPreference;)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 337
    invoke-virtual {p0, v2}, Lcom/android/exsettings/sim/SimSettings;->startActivity(Landroid/content/Intent;)V

    .line 338
    return v5

    .line 339
    .end local v2    # "newIntent":Landroid/content/Intent;
    .restart local p2    # "preference":Landroid/preference/Preference;
    :cond_0
    const-string/jumbo v3, "sim_cellular_data"

    invoke-virtual {p0, v3}, Lcom/android/exsettings/sim/SimSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    if-ne v3, p2, :cond_1

    .line 340
    sget-object v3, Lcom/android/exsettings/sim/SimDialogActivity;->DIALOG_TYPE_KEY:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 341
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 342
    return v5

    .line 343
    :cond_1
    const-string/jumbo v3, "sim_calls"

    invoke-virtual {p0, v3}, Lcom/android/exsettings/sim/SimSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    if-ne v3, p2, :cond_2

    .line 344
    sget-object v3, Lcom/android/exsettings/sim/SimDialogActivity;->DIALOG_TYPE_KEY:Ljava/lang/String;

    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 345
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 346
    return v5

    .line 347
    :cond_2
    const-string/jumbo v3, "sim_sms"

    invoke-virtual {p0, v3}, Lcom/android/exsettings/sim/SimSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    if-ne v3, p2, :cond_3

    .line 348
    sget-object v3, Lcom/android/exsettings/sim/SimDialogActivity;->DIALOG_TYPE_KEY:Ljava/lang/String;

    const/4 v4, 0x2

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 349
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 350
    return v5

    .line 353
    :cond_3
    return v4
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 305
    invoke-super {p0}, Lcom/android/exsettings/RestrictedSettingsFragment;->onResume()V

    .line 306
    iget-object v0, p0, Lcom/android/exsettings/sim/SimSettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    iget-object v1, p0, Lcom/android/exsettings/sim/SimSettings;->mOnSubscriptionsChangeListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 307
    invoke-direct {p0}, Lcom/android/exsettings/sim/SimSettings;->initLTEPreference()V

    .line 308
    invoke-direct {p0}, Lcom/android/exsettings/sim/SimSettings;->updateSubscriptions()V

    .line 309
    invoke-direct {p0}, Lcom/android/exsettings/sim/SimSettings;->listen()V

    .line 304
    return-void
.end method
