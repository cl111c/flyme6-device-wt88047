.class public Lcom/android/exsettings/DataUsageSummary;
.super Lcom/android/exsettings/HighlightingFragment;
.source "DataUsageSummary.java"

# interfaces
.implements Lcom/android/exsettings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exsettings/DataUsageSummary$CycleItem;,
        Lcom/android/exsettings/DataUsageSummary$CycleChangeItem;,
        Lcom/android/exsettings/DataUsageSummary$CycleAdapter;,
        Lcom/android/exsettings/DataUsageSummary$DataUsageAdapter;,
        Lcom/android/exsettings/DataUsageSummary$AppDetailsFragment;,
        Lcom/android/exsettings/DataUsageSummary$ConfirmLimitFragment;,
        Lcom/android/exsettings/DataUsageSummary$CycleEditorFragment;,
        Lcom/android/exsettings/DataUsageSummary$WarningEditorFragment;,
        Lcom/android/exsettings/DataUsageSummary$LimitEditorFragment;,
        Lcom/android/exsettings/DataUsageSummary$ConfirmDataDisableFragment;,
        Lcom/android/exsettings/DataUsageSummary$ConfirmDataResetFragment;,
        Lcom/android/exsettings/DataUsageSummary$ConfirmRestrictFragment;,
        Lcom/android/exsettings/DataUsageSummary$DeniedRestrictFragment;,
        Lcom/android/exsettings/DataUsageSummary$ConfirmAppRestrictCellularFragment;,
        Lcom/android/exsettings/DataUsageSummary$UidDetailTask;,
        Lcom/android/exsettings/DataUsageSummary$1;,
        Lcom/android/exsettings/DataUsageSummary$2;,
        Lcom/android/exsettings/DataUsageSummary$3;,
        Lcom/android/exsettings/DataUsageSummary$4;,
        Lcom/android/exsettings/DataUsageSummary$5;,
        Lcom/android/exsettings/DataUsageSummary$6;,
        Lcom/android/exsettings/DataUsageSummary$7;,
        Lcom/android/exsettings/DataUsageSummary$8;,
        Lcom/android/exsettings/DataUsageSummary$9;,
        Lcom/android/exsettings/DataUsageSummary$10;,
        Lcom/android/exsettings/DataUsageSummary$11;,
        Lcom/android/exsettings/DataUsageSummary$12;,
        Lcom/android/exsettings/DataUsageSummary$13;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/exsettings/search/Indexable$SearchIndexProvider;

.field private static final sBuilder:Ljava/lang/StringBuilder;

.field private static final sFormatter:Ljava/util/Formatter;


# instance fields
.field private mAdapter:Lcom/android/exsettings/DataUsageSummary$DataUsageAdapter;

.field private mAppBackground:Landroid/widget/TextView;

.field private mAppCellularAccess:Landroid/widget/Switch;

.field private mAppCellularAccessView:Landroid/view/View;

.field private mAppDataAlert:Landroid/widget/Switch;

.field private mAppDataAlertListner:Landroid/view/View$OnClickListener;

.field private mAppDataAlertView:Landroid/view/View;

.field private mAppDetail:Landroid/view/View;

.field private mAppForeground:Landroid/widget/TextView;

.field private mAppIcon:Landroid/widget/ImageView;

.field private mAppRestrictCellularListener:Landroid/view/View$OnClickListener;

.field private mAppRestrictListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private mAppRestrictView:Landroid/view/View;

.field private mAppSettings:Landroid/widget/Button;

.field private mAppSettingsIntent:Landroid/content/Intent;

.field private mAppSwitches:Landroid/widget/LinearLayout;

.field private mAppTitles:Landroid/view/ViewGroup;

.field private mAppTotal:Landroid/widget/TextView;

.field private mBinding:Z

.field private mChart:Lcom/android/exsettings/widget/ChartDataUsageView;

.field private mChartData:Lcom/android/exsettingslib/net/ChartData;

.field private final mChartDataCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Lcom/android/exsettingslib/net/ChartData;",
            ">;"
        }
    .end annotation
.end field

.field private mChartListener:Lcom/android/exsettings/widget/ChartDataUsageView$DataUsageChartListener;

.field private mCurrentApp:Lcom/android/exsettingslib/AppItem;

.field private mCurrentTab:Ljava/lang/String;

.field private mCycleAdapter:Lcom/android/exsettings/DataUsageSummary$CycleAdapter;

.field private mCycleListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private mCycleSpinner:Landroid/widget/Spinner;

.field private mCycleSummary:Landroid/widget/TextView;

.field private mCycleView:Landroid/view/View;

.field private mDataAlertsSupported:Z

.field private mDataEnabled:Landroid/widget/Switch;

.field private mDataEnabledListener:Landroid/view/View$OnClickListener;

.field private mDataEnabledSupported:Z

.field private mDataEnabledView:Landroid/view/View;

.field private mDetailedSeries:Lcom/android/exsettings/widget/ChartNetworkSeriesView;

.field private mDisableAtLimit:Landroid/widget/Switch;

.field private mDisableAtLimitListener:Landroid/view/View$OnClickListener;

.field private mDisableAtLimitSupported:Z

.field private mDisableAtLimitView:Landroid/view/View;

.field private mDisclaimer:Landroid/view/View;

.field private mEmpty:Landroid/widget/TextView;

.field private mEmptyTabContent:Landroid/widget/TabHost$TabContentFactory;

.field private mHeader:Landroid/view/ViewGroup;

.field private mInsetSide:I

.field private mIntentTab:Ljava/lang/String;

.field private mListListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mListView:Landroid/widget/ListView;

.field private mMenuCellularNetworks:Landroid/view/MenuItem;

.field private mMenuDataAlerts:Landroid/view/MenuItem;

.field private mMenuResetStats:Landroid/view/MenuItem;

.field private mMenuRestrictBackground:Landroid/view/MenuItem;

.field private mMenuShowEthernet:Landroid/view/MenuItem;

.field private mMenuShowWifi:Landroid/view/MenuItem;

.field private mMenuSimCards:Landroid/view/MenuItem;

.field private final mMobileDataEnabled:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mMobileTagMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mNetworkService:Landroid/os/INetworkManagementService;

.field private mNetworkSwitches:Landroid/widget/LinearLayout;

.field private mNetworkSwitchesContainer:Landroid/view/ViewGroup;

.field private mPolicyEditor:Lcom/android/exsettingslib/NetworkPolicyEditor;

.field private mPolicyManager:Landroid/net/NetworkPolicyManager;

.field private mPrefs:Landroid/content/SharedPreferences;

.field private mRestrictSpinner:Landroid/widget/Spinner;

.field private mSeries:Lcom/android/exsettings/widget/ChartNetworkSeriesView;

.field private mShowAlerts:Z

.field private mShowAppImmediatePkg:Ljava/lang/String;

.field private mShowEthernet:Z

.field private mShowWifi:Z

.field private mStatsService:Landroid/net/INetworkStatsService;

.field private mStatsSession:Landroid/net/INetworkStatsSession;

.field private mStupidPadding:Landroid/view/View;

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

.field private final mSummaryCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Landroid/net/NetworkStats;",
            ">;"
        }
    .end annotation
.end field

.field private mTabHost:Landroid/widget/TabHost;

.field private mTabListener:Landroid/widget/TabHost$OnTabChangeListener;

.field private mTabWidget:Landroid/widget/TabWidget;

.field private mTabsContainer:Landroid/view/ViewGroup;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mTemplate:Landroid/net/NetworkTemplate;

.field private mUidDetailProvider:Lcom/android/exsettingslib/net/UidDetailProvider;


# direct methods
.method static synthetic -get0(Lcom/android/exsettings/DataUsageSummary;)Lcom/android/exsettings/DataUsageSummary$DataUsageAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/DataUsageSummary;->mAdapter:Lcom/android/exsettings/DataUsageSummary$DataUsageAdapter;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/exsettings/DataUsageSummary;)Landroid/widget/Switch;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/DataUsageSummary;->mAppCellularAccess:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic -get10(Lcom/android/exsettings/DataUsageSummary;)Landroid/widget/Switch;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/DataUsageSummary;->mDisableAtLimit:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic -get11(Lcom/android/exsettings/DataUsageSummary;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/DataUsageSummary;->mEmpty:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get12(Lcom/android/exsettings/DataUsageSummary;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/DataUsageSummary;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic -get13(Lcom/android/exsettings/DataUsageSummary;)Lcom/android/exsettingslib/NetworkPolicyEditor;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/DataUsageSummary;->mPolicyEditor:Lcom/android/exsettingslib/NetworkPolicyEditor;

    return-object v0
.end method

.method static synthetic -get14(Lcom/android/exsettings/DataUsageSummary;)Landroid/net/NetworkPolicyManager;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/DataUsageSummary;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    return-object v0
.end method

.method static synthetic -get15(Lcom/android/exsettings/DataUsageSummary;)Landroid/widget/Spinner;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/DataUsageSummary;->mRestrictSpinner:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic -get16(Lcom/android/exsettings/DataUsageSummary;)Landroid/net/INetworkStatsService;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/DataUsageSummary;->mStatsService:Landroid/net/INetworkStatsService;

    return-object v0
.end method

.method static synthetic -get17(Lcom/android/exsettings/DataUsageSummary;)Landroid/net/INetworkStatsSession;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/DataUsageSummary;->mStatsSession:Landroid/net/INetworkStatsSession;

    return-object v0
.end method

.method static synthetic -get18(Lcom/android/exsettings/DataUsageSummary;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/DataUsageSummary;->mStupidPadding:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get19(Lcom/android/exsettings/DataUsageSummary;)Landroid/widget/TabHost;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/exsettings/DataUsageSummary;)Landroid/widget/Switch;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/DataUsageSummary;->mAppDataAlert:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic -get20(Lcom/android/exsettings/DataUsageSummary;)Landroid/net/NetworkTemplate;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    return-object v0
.end method

.method static synthetic -get21(Lcom/android/exsettings/DataUsageSummary;)Lcom/android/exsettingslib/net/UidDetailProvider;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/DataUsageSummary;->mUidDetailProvider:Lcom/android/exsettingslib/net/UidDetailProvider;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/exsettings/DataUsageSummary;)Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/DataUsageSummary;->mAppSettingsIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/exsettings/DataUsageSummary;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/exsettings/DataUsageSummary;->mBinding:Z

    return v0
.end method

.method static synthetic -get5(Lcom/android/exsettings/DataUsageSummary;)Lcom/android/exsettings/widget/ChartDataUsageView;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/DataUsageSummary;->mChart:Lcom/android/exsettings/widget/ChartDataUsageView;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/exsettings/DataUsageSummary;)Lcom/android/exsettingslib/net/ChartData;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/DataUsageSummary;->mChartData:Lcom/android/exsettingslib/net/ChartData;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/exsettings/DataUsageSummary;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/exsettings/DataUsageSummary;)Landroid/widget/Spinner;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/DataUsageSummary;->mCycleSpinner:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/exsettings/DataUsageSummary;)Landroid/widget/Switch;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/DataUsageSummary;->mDataEnabled:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/exsettings/DataUsageSummary;Lcom/android/exsettingslib/net/ChartData;)Lcom/android/exsettingslib/net/ChartData;
    .locals 0

    iput-object p1, p0, Lcom/android/exsettings/DataUsageSummary;->mChartData:Lcom/android/exsettingslib/net/ChartData;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/exsettings/DataUsageSummary;Lcom/android/exsettingslib/AppItem;)Lcom/android/exsettingslib/AppItem;
    .locals 0

    iput-object p1, p0, Lcom/android/exsettings/DataUsageSummary;->mCurrentApp:Lcom/android/exsettingslib/AppItem;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/exsettings/DataUsageSummary;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/exsettings/DataUsageSummary;->isAppDetailMode()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Ljava/lang/String;)Z
    .locals 1
    .param p0, "currentTab"    # Ljava/lang/String;

    .prologue
    invoke-static {p0}, Lcom/android/exsettings/DataUsageSummary;->isMobileTab(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap10(Lcom/android/exsettings/DataUsageSummary;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/exsettings/DataUsageSummary;->updateAppDetail()V

    return-void
.end method

.method static synthetic -wrap11(Lcom/android/exsettings/DataUsageSummary;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/exsettings/DataUsageSummary;->updateBody()V

    return-void
.end method

.method static synthetic -wrap12(Lcom/android/exsettings/DataUsageSummary;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/exsettings/DataUsageSummary;->updateDetailData()V

    return-void
.end method

.method static synthetic -wrap13(Lcom/android/exsettings/DataUsageSummary;Z)V
    .locals 0
    .param p1, "refreshCycle"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/exsettings/DataUsageSummary;->updatePolicy(Z)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/exsettings/DataUsageSummary;Ljava/lang/String;)I
    .locals 1
    .param p1, "currentTab"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/exsettings/DataUsageSummary;->getSubId(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Lcom/android/exsettings/DataUsageSummary;Landroid/net/NetworkTemplate;)V
    .locals 0
    .param p1, "template"    # Landroid/net/NetworkTemplate;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/exsettings/DataUsageSummary;->resetDataStats(Landroid/net/NetworkTemplate;)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/exsettings/DataUsageSummary;Z)V
    .locals 0
    .param p1, "enableDataAlert"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/exsettings/DataUsageSummary;->setAppDataAlert(Z)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/exsettings/DataUsageSummary;I)V
    .locals 0
    .param p1, "newPolicy"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/exsettings/DataUsageSummary;->setAppRestrictBackground(I)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/exsettings/DataUsageSummary;Z)V
    .locals 0
    .param p1, "restrictCellular"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/exsettings/DataUsageSummary;->setAppRestrictCellular(Z)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/exsettings/DataUsageSummary;IZ)V
    .locals 0
    .param p1, "subId"    # I
    .param p2, "enabled"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/exsettings/DataUsageSummary;->setMobileDataEnabled(IZ)V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/exsettings/DataUsageSummary;J)V
    .locals 1
    .param p1, "limitBytes"    # J

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/exsettings/DataUsageSummary;->setPolicyLimitBytes(J)V

    return-void
.end method

.method static synthetic -wrap9(Lcom/android/exsettings/DataUsageSummary;J)V
    .locals 1
    .param p1, "warningBytes"    # J

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/exsettings/DataUsageSummary;->setPolicyWarningBytes(J)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 1822
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    sput-object v0, Lcom/android/exsettings/DataUsageSummary;->sBuilder:Ljava/lang/StringBuilder;

    .line 1823
    new-instance v0, Ljava/util/Formatter;

    .line 1824
    sget-object v1, Lcom/android/exsettings/DataUsageSummary;->sBuilder:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    .line 1823
    invoke-direct {v0, v1, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    sput-object v0, Lcom/android/exsettings/DataUsageSummary;->sFormatter:Ljava/util/Formatter;

    .line 2925
    new-instance v0, Lcom/android/exsettings/DataUsageSummary$13;

    invoke-direct {v0}, Lcom/android/exsettings/DataUsageSummary$13;-><init>()V

    .line 2924
    sput-object v0, Lcom/android/exsettings/DataUsageSummary;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/exsettings/search/Indexable$SearchIndexProvider;

    .line 164
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 164
    invoke-direct {p0}, Lcom/android/exsettings/HighlightingFragment;-><init>()V

    .line 230
    iput v0, p0, Lcom/android/exsettings/DataUsageSummary;->mInsetSide:I

    .line 269
    iput-boolean v0, p0, Lcom/android/exsettings/DataUsageSummary;->mShowWifi:Z

    .line 270
    iput-boolean v0, p0, Lcom/android/exsettings/DataUsageSummary;->mShowEthernet:Z

    .line 271
    iput-boolean v0, p0, Lcom/android/exsettings/DataUsageSummary;->mShowAlerts:Z

    .line 272
    iput-boolean v0, p0, Lcom/android/exsettings/DataUsageSummary;->mDataAlertsSupported:Z

    .line 277
    iput-object v1, p0, Lcom/android/exsettings/DataUsageSummary;->mCurrentApp:Lcom/android/exsettingslib/AppItem;

    .line 283
    iput-object v1, p0, Lcom/android/exsettings/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    .line 284
    iput-object v1, p0, Lcom/android/exsettings/DataUsageSummary;->mIntentTab:Ljava/lang/String;

    .line 308
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/exsettings/DataUsageSummary;->mMobileDataEnabled:Ljava/util/Map;

    .line 850
    new-instance v0, Lcom/android/exsettings/DataUsageSummary$1;

    invoke-direct {v0, p0}, Lcom/android/exsettings/DataUsageSummary$1;-><init>(Lcom/android/exsettings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/exsettings/DataUsageSummary;->mEmptyTabContent:Landroid/widget/TabHost$TabContentFactory;

    .line 874
    new-instance v0, Lcom/android/exsettings/DataUsageSummary$2;

    invoke-direct {v0, p0}, Lcom/android/exsettings/DataUsageSummary$2;-><init>(Lcom/android/exsettings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/exsettings/DataUsageSummary;->mTabListener:Landroid/widget/TabHost$OnTabChangeListener;

    .line 1490
    new-instance v0, Lcom/android/exsettings/DataUsageSummary$3;

    invoke-direct {v0, p0}, Lcom/android/exsettings/DataUsageSummary$3;-><init>(Lcom/android/exsettings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/exsettings/DataUsageSummary;->mDataEnabledListener:Landroid/view/View$OnClickListener;

    .line 1512
    new-instance v0, Lcom/android/exsettings/DataUsageSummary$4;

    invoke-direct {v0, p0}, Lcom/android/exsettings/DataUsageSummary$4;-><init>(Lcom/android/exsettings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/exsettings/DataUsageSummary;->mDisableAtLimitListener:Landroid/view/View$OnClickListener;

    .line 1527
    new-instance v0, Lcom/android/exsettings/DataUsageSummary$5;

    invoke-direct {v0, p0}, Lcom/android/exsettings/DataUsageSummary$5;-><init>(Lcom/android/exsettings/DataUsageSummary;)V

    .line 1526
    iput-object v0, p0, Lcom/android/exsettings/DataUsageSummary;->mAppRestrictListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 1549
    new-instance v0, Lcom/android/exsettings/DataUsageSummary$6;

    invoke-direct {v0, p0}, Lcom/android/exsettings/DataUsageSummary$6;-><init>(Lcom/android/exsettings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/exsettings/DataUsageSummary;->mAppRestrictCellularListener:Landroid/view/View$OnClickListener;

    .line 1565
    new-instance v0, Lcom/android/exsettings/DataUsageSummary$7;

    invoke-direct {v0, p0}, Lcom/android/exsettings/DataUsageSummary$7;-><init>(Lcom/android/exsettings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/exsettings/DataUsageSummary;->mAppDataAlertListner:Landroid/view/View$OnClickListener;

    .line 1573
    new-instance v0, Lcom/android/exsettings/DataUsageSummary$8;

    invoke-direct {v0, p0}, Lcom/android/exsettings/DataUsageSummary$8;-><init>(Lcom/android/exsettings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/exsettings/DataUsageSummary;->mListListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 1587
    new-instance v0, Lcom/android/exsettings/DataUsageSummary$9;

    invoke-direct {v0, p0}, Lcom/android/exsettings/DataUsageSummary$9;-><init>(Lcom/android/exsettings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/exsettings/DataUsageSummary;->mCycleListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 1687
    new-instance v0, Lcom/android/exsettings/DataUsageSummary$10;

    invoke-direct {v0, p0}, Lcom/android/exsettings/DataUsageSummary$10;-><init>(Lcom/android/exsettings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/exsettings/DataUsageSummary;->mChartDataCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 1718
    new-instance v0, Lcom/android/exsettings/DataUsageSummary$11;

    invoke-direct {v0, p0}, Lcom/android/exsettings/DataUsageSummary$11;-><init>(Lcom/android/exsettings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/exsettings/DataUsageSummary;->mSummaryCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 1761
    new-instance v0, Lcom/android/exsettings/DataUsageSummary$12;

    invoke-direct {v0, p0}, Lcom/android/exsettings/DataUsageSummary$12;-><init>(Lcom/android/exsettings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/exsettings/DataUsageSummary;->mChartListener:Lcom/android/exsettings/widget/ChartDataUsageView$DataUsageChartListener;

    .line 164
    return-void
.end method

.method private addMobileTab(Landroid/content/Context;Landroid/telephony/SubscriptionInfo;Z)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "subInfo"    # Landroid/telephony/SubscriptionInfo;
    .param p3, "isMultiSim"    # Z

    .prologue
    .line 2964
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/exsettings/DataUsageSummary;->mMobileTagMap:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 2965
    invoke-virtual {p2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v0

    invoke-static {p1, v0}, Lcom/android/exsettings/DataUsageSummary;->hasReadyMobileRadio(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2966
    if-eqz p3, :cond_1

    .line 2967
    iget-object v1, p0, Lcom/android/exsettings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    iget-object v0, p0, Lcom/android/exsettings/DataUsageSummary;->mMobileTagMap:Ljava/util/Map;

    invoke-virtual {p2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2968
    invoke-virtual {p2}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v2

    .line 2967
    invoke-direct {p0, v0, v2}, Lcom/android/exsettings/DataUsageSummary;->buildTabSpec(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 2963
    :cond_0
    :goto_0
    return-void

    .line 2970
    :cond_1
    iget-object v1, p0, Lcom/android/exsettings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    iget-object v0, p0, Lcom/android/exsettings/DataUsageSummary;->mMobileTagMap:Ljava/util/Map;

    invoke-virtual {p2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2971
    const v2, 0x7f0c0d0d

    .line 2970
    invoke-direct {p0, v0, v2}, Lcom/android/exsettings/DataUsageSummary;->buildTabSpec(Ljava/lang/String;I)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    goto :goto_0
.end method

.method private static buildLayoutTransition()Landroid/animation/LayoutTransition;
    .locals 2

    .prologue
    .line 787
    new-instance v0, Landroid/animation/LayoutTransition;

    invoke-direct {v0}, Landroid/animation/LayoutTransition;-><init>()V

    .line 791
    .local v0, "transition":Landroid/animation/LayoutTransition;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->setAnimateParentHierarchy(Z)V

    .line 792
    return-object v0
.end method

.method private buildTabSpec(Ljava/lang/String;I)Landroid/widget/TabHost$TabSpec;
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "titleRes"    # I

    .prologue
    .line 861
    iget-object v0, p0, Lcom/android/exsettings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v0, p1}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    invoke-virtual {p0, p2}, Lcom/android/exsettings/DataUsageSummary;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    .line 862
    iget-object v1, p0, Lcom/android/exsettings/DataUsageSummary;->mEmptyTabContent:Landroid/widget/TabHost$TabContentFactory;

    .line 861
    invoke-virtual {v0, v1}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    return-object v0
.end method

.method private buildTabSpec(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 869
    iget-object v0, p0, Lcom/android/exsettings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v0, p1}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    .line 870
    iget-object v1, p0, Lcom/android/exsettings/DataUsageSummary;->mEmptyTabContent:Landroid/widget/TabHost$TabContentFactory;

    .line 869
    invoke-virtual {v0, v1}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    return-object v0
.end method

.method private static computeTabFromIntent(Landroid/content/Intent;)Ljava/lang/String;
    .locals 5
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x0

    .line 2605
    const-string/jumbo v2, "android.net.NETWORK_TEMPLATE"

    invoke-virtual {p0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkTemplate;

    .line 2606
    .local v1, "template":Landroid/net/NetworkTemplate;
    if-nez v1, :cond_1

    .line 2607
    const-string/jumbo v2, "subscription"

    .line 2608
    const/4 v3, -0x1

    .line 2607
    invoke-virtual {p0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 2609
    .local v0, "subId":I
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2610
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mobile"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 2612
    :cond_0
    return-object v4

    .line 2615
    .end local v0    # "subId":I
    :cond_1
    invoke-virtual {v1}, Landroid/net/NetworkTemplate;->getMatchRule()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 2625
    return-object v4

    .line 2617
    :pswitch_0
    const-string/jumbo v2, "3g"

    return-object v2

    .line 2619
    :pswitch_1
    const-string/jumbo v2, "4g"

    return-object v2

    .line 2621
    :pswitch_2
    const-string/jumbo v2, "mobile"

    return-object v2

    .line 2623
    :pswitch_3
    const-string/jumbo v2, "wifi"

    return-object v2

    .line 2615
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method private ensureLayoutTransitions()V
    .locals 3

    .prologue
    .line 769
    iget-object v1, p0, Lcom/android/exsettings/DataUsageSummary;->mShowAppImmediatePkg:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 771
    return-void

    .line 774
    :cond_0
    iget-object v1, p0, Lcom/android/exsettings/DataUsageSummary;->mChart:Lcom/android/exsettings/widget/ChartDataUsageView;

    invoke-virtual {v1}, Lcom/android/exsettings/widget/ChartDataUsageView;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v1

    if-eqz v1, :cond_1

    return-void

    .line 776
    :cond_1
    iget-object v1, p0, Lcom/android/exsettings/DataUsageSummary;->mTabsContainer:Landroid/view/ViewGroup;

    invoke-static {}, Lcom/android/exsettings/DataUsageSummary;->buildLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 777
    iget-object v1, p0, Lcom/android/exsettings/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    invoke-static {}, Lcom/android/exsettings/DataUsageSummary;->buildLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 778
    iget-object v1, p0, Lcom/android/exsettings/DataUsageSummary;->mNetworkSwitchesContainer:Landroid/view/ViewGroup;

    invoke-static {}, Lcom/android/exsettings/DataUsageSummary;->buildLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 780
    invoke-static {}, Lcom/android/exsettings/DataUsageSummary;->buildLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v0

    .line 781
    .local v0, "chartTransition":Landroid/animation/LayoutTransition;
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    .line 782
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    .line 783
    iget-object v1, p0, Lcom/android/exsettings/DataUsageSummary;->mChart:Lcom/android/exsettings/widget/ChartDataUsageView;

    invoke-virtual {v1, v0}, Lcom/android/exsettings/widget/ChartDataUsageView;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 768
    return-void
.end method

.method public static formatDateRange(Landroid/content/Context;JJ)Ljava/lang/String;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "start"    # J
    .param p3, "end"    # J

    .prologue
    .line 1827
    const v8, 0x10010

    .line 1829
    .local v8, "flags":I
    sget-object v9, Lcom/android/exsettings/DataUsageSummary;->sBuilder:Ljava/lang/StringBuilder;

    monitor-enter v9

    .line 1830
    :try_start_0
    sget-object v0, Lcom/android/exsettings/DataUsageSummary;->sBuilder:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1831
    sget-object v1, Lcom/android/exsettings/DataUsageSummary;->sFormatter:Ljava/util/Formatter;

    const v6, 0x10010

    const/4 v7, 0x0

    move-object v0, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-static/range {v0 .. v7}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJILjava/lang/String;)Ljava/util/Formatter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Formatter;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v9

    return-object v0

    .line 1829
    :catchall_0
    move-exception v0

    monitor-exit v9

    throw v0
.end method

.method private static getActiveSubscriberId(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1747
    invoke-static {p0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v2

    .line 1748
    .local v2, "tele":Landroid/telephony/TelephonyManager;
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    .line 1749
    .local v0, "actualSubscriberId":Ljava/lang/String;
    const-string/jumbo v3, "test.subscriberid"

    invoke-static {v3, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1751
    .local v1, "retVal":Ljava/lang/String;
    return-object v1
.end method

.method private static getActiveSubscriberId(Landroid/content/Context;I)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subId"    # I

    .prologue
    .line 1755
    invoke-static {p0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    .line 1756
    .local v1, "tele":Landroid/telephony/TelephonyManager;
    invoke-virtual {v1, p1}, Landroid/telephony/TelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v0

    .line 1758
    .local v0, "retVal":Ljava/lang/String;
    return-object v0
.end method

.method private getAppDataAlert()Z
    .locals 4

    .prologue
    .line 1340
    iget-object v2, p0, Lcom/android/exsettings/DataUsageSummary;->mCurrentApp:Lcom/android/exsettingslib/AppItem;

    iget v1, v2, Lcom/android/exsettingslib/AppItem;->key:I

    .line 1343
    .local v1, "uid":I
    :try_start_0
    invoke-virtual {p0}, Lcom/android/exsettings/DataUsageSummary;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/android/exsettings/DataUsageUtils;->isAppEnabled(Landroid/content/Context;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 1344
    :catch_0
    move-exception v0

    .line 1346
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "DataUsage"

    const-string/jumbo v3, "Unable to get data alert state"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1347
    const/4 v2, 0x0

    return v2
.end method

.method private getAppRestrictBackground()I
    .locals 4

    .prologue
    .line 1250
    iget-object v2, p0, Lcom/android/exsettings/DataUsageSummary;->mCurrentApp:Lcom/android/exsettingslib/AppItem;

    iget v0, v2, Lcom/android/exsettingslib/AppItem;->key:I

    .line 1251
    .local v0, "uid":I
    iget-object v2, p0, Lcom/android/exsettings/DataUsageSummary;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v2, v0}, Landroid/net/NetworkPolicyManager;->getUidPolicy(I)I

    move-result v1

    .line 1253
    .local v1, "uidPolicy":I
    and-int/lit8 v2, v1, 0x1

    .line 1254
    const/high16 v3, 0x20000

    .line 1253
    and-int/2addr v3, v1

    or-int/2addr v2, v3

    return v2
.end method

.method private getAppRestrictCellular()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 1298
    iget-object v3, p0, Lcom/android/exsettings/DataUsageSummary;->mCurrentApp:Lcom/android/exsettingslib/AppItem;

    iget v0, v3, Lcom/android/exsettingslib/AppItem;->key:I

    .line 1299
    .local v0, "uid":I
    iget-object v3, p0, Lcom/android/exsettings/DataUsageSummary;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v3, v0}, Landroid/net/NetworkPolicyManager;->getUidPolicy(I)I

    move-result v1

    .line 1300
    .local v1, "uidPolicy":I
    const/high16 v3, 0x10000

    and-int/2addr v3, v1

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method private getSubId(Ljava/lang/String;)I
    .locals 6
    .param p1, "currentTab"    # Ljava/lang/String;

    .prologue
    .line 3017
    iget-object v3, p0, Lcom/android/exsettings/DataUsageSummary;->mMobileTagMap:Ljava/util/Map;

    if-eqz v3, :cond_1

    .line 3018
    iget-object v3, p0, Lcom/android/exsettings/DataUsageSummary;->mMobileTagMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 3019
    .local v0, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "subId$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 3020
    .local v1, "subId":Ljava/lang/Integer;
    iget-object v3, p0, Lcom/android/exsettings/DataUsageSummary;->mMobileTagMap:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3021
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    return v3

    .line 3025
    .end local v0    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .end local v1    # "subId":Ljava/lang/Integer;
    .end local v2    # "subId$iterator":Ljava/util/Iterator;
    :cond_1
    const-string/jumbo v3, "DataUsage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "currentTab = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " non mobile tab called this function"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3026
    const/4 v3, -0x1

    return v3
.end method

.method public static hasReadyMobileRadio(Landroid/content/Context;)Z
    .locals 10
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v8, 0x0

    .line 2698
    invoke-static {p0}, Landroid/net/ConnectivityManager;->from(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v0

    .line 2699
    .local v0, "conn":Landroid/net/ConnectivityManager;
    invoke-static {p0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v6

    .line 2702
    .local v6, "tele":Landroid/telephony/TelephonyManager;
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v5

    .line 2704
    .local v5, "subInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    if-nez v5, :cond_0

    .line 2706
    return v8

    .line 2709
    :cond_0
    const/4 v1, 0x1

    .line 2710
    .local v1, "isReady":Z
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .end local v1    # "isReady":Z
    .local v4, "subInfo$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/SubscriptionInfo;

    .line 2711
    .local v3, "subInfo":Landroid/telephony/SubscriptionInfo;
    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v7

    const/4 v9, 0x5

    if-ne v7, v9, :cond_1

    const/4 v7, 0x1

    :goto_1
    and-int/2addr v1, v7

    .local v1, "isReady":Z
    goto :goto_0

    .end local v1    # "isReady":Z
    :cond_1
    move v7, v8

    goto :goto_1

    .line 2714
    .end local v3    # "subInfo":Landroid/telephony/SubscriptionInfo;
    :cond_2
    invoke-virtual {v0, v8}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v7

    if-eqz v7, :cond_3

    move v2, v1

    .line 2721
    :goto_2
    return v2

    .line 2714
    :cond_3
    const/4 v2, 0x0

    .local v2, "retVal":Z
    goto :goto_2
.end method

.method public static hasReadyMobileRadio(Landroid/content/Context;I)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subId"    # I

    .prologue
    .line 2732
    invoke-static {p0}, Landroid/net/ConnectivityManager;->from(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v0

    .line 2733
    .local v0, "conn":Landroid/net/ConnectivityManager;
    invoke-static {p0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v4

    .line 2734
    .local v4, "tele":Landroid/telephony/TelephonyManager;
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSlotId(I)I

    move-result v3

    .line 2735
    .local v3, "slotId":I
    invoke-virtual {v4, v3}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v5

    const/4 v6, 0x5

    if-ne v5, v6, :cond_0

    const/4 v1, 0x1

    .line 2737
    .local v1, "isReady":Z
    :goto_0
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v5

    if-eqz v5, :cond_1

    move v2, v1

    .line 2741
    :goto_1
    return v2

    .line 2735
    .end local v1    # "isReady":Z
    :cond_0
    const/4 v1, 0x0

    .restart local v1    # "isReady":Z
    goto :goto_0

    .line 2737
    :cond_1
    const/4 v2, 0x0

    .local v2, "retVal":Z
    goto :goto_1
.end method

.method public static hasWifiRadio(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 2772
    invoke-static {p0}, Landroid/net/ConnectivityManager;->from(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v0

    .line 2773
    .local v0, "conn":Landroid/net/ConnectivityManager;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v1

    return v1
.end method

.method private static inflatePreference(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;
    .locals 5
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "root"    # Landroid/view/ViewGroup;
    .param p2, "widget"    # Landroid/view/View;

    .prologue
    const/4 v4, -0x2

    .line 2809
    const v2, 0x7f0400aa

    const/4 v3, 0x0

    invoke-virtual {p0, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 2811
    .local v0, "view":Landroid/view/View;
    const v2, 0x1020018

    .line 2810
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 2812
    .local v1, "widgetFrame":Landroid/widget/LinearLayout;
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, p2, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2813
    return-object v0
.end method

.method private static inflatePreferenceWithInvisibleWidget(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;
    .locals 4
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "root"    # Landroid/view/ViewGroup;
    .param p2, "widget"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 2818
    const v2, 0x7f0400aa

    invoke-virtual {p0, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 2819
    .local v1, "view":Landroid/view/ViewGroup;
    invoke-virtual {v1, p2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 2820
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 2821
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 2822
    invoke-virtual {p2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2823
    return-object v1
.end method

.method private initMobileTabTag(Ljava/util/List;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3000
    .local p1, "subInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    const/4 v0, 0x0

    .line 3001
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    .line 3003
    new-instance v0, Ljava/util/HashMap;

    .end local v0    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 3004
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "subInfo$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SubscriptionInfo;

    .line 3005
    .local v2, "subInfo":Landroid/telephony/SubscriptionInfo;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mobile"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3006
    .local v1, "mobileTag":Ljava/lang/String;
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 3009
    .end local v0    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v1    # "mobileTag":Ljava/lang/String;
    .end local v2    # "subInfo":Landroid/telephony/SubscriptionInfo;
    .end local v3    # "subInfo$iterator":Ljava/util/Iterator;
    :cond_0
    return-object v0
.end method

.method private static insetListViewDrawables(Landroid/widget/ListView;I)V
    .locals 4
    .param p0, "view"    # Landroid/widget/ListView;
    .param p1, "insetSide"    # I

    .prologue
    .line 2889
    invoke-virtual {p0}, Landroid/widget/ListView;->getSelector()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 2890
    .local v1, "selector":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Landroid/widget/ListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2894
    .local v0, "divider":Landroid/graphics/drawable/Drawable;
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 2895
    .local v2, "stub":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0, v2}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 2896
    invoke-virtual {p0, v2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 2898
    new-instance v3, Lcom/android/exsettings/drawable/InsetBoundsDrawable;

    invoke-direct {v3, v1, p1}, Lcom/android/exsettings/drawable/InsetBoundsDrawable;-><init>(Landroid/graphics/drawable/Drawable;I)V

    invoke-virtual {p0, v3}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 2899
    new-instance v3, Lcom/android/exsettings/drawable/InsetBoundsDrawable;

    invoke-direct {v3, v0, p1}, Lcom/android/exsettings/drawable/InsetBoundsDrawable;-><init>(Landroid/graphics/drawable/Drawable;I)V

    invoke-virtual {p0, v3}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 2888
    return-void
.end method

.method private isAppDetailMode()Z
    .locals 1

    .prologue
    .line 1015
    iget-object v0, p0, Lcom/android/exsettings/DataUsageSummary;->mCurrentApp:Lcom/android/exsettingslib/AppItem;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isBandwidthControlEnabled()Z
    .locals 4

    .prologue
    .line 1237
    :try_start_0
    iget-object v1, p0, Lcom/android/exsettings/DataUsageSummary;->mNetworkService:Landroid/os/INetworkManagementService;

    invoke-interface {v1}, Landroid/os/INetworkManagementService;->isBandwidthControlEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 1238
    :catch_0
    move-exception v0

    .line 1239
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "DataUsage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "problem talking with INetworkManagementService: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1240
    const/4 v1, 0x0

    return v1
.end method

.method private isMobileDataAvailable(I)Z
    .locals 1
    .param p1, "subId"    # I

    .prologue
    .line 3030
    iget-object v0, p0, Lcom/android/exsettings/DataUsageSummary;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v0, p1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isMobileDataEnabled(I)Z
    .locals 4
    .param p1, "subId"    # I

    .prologue
    const/4 v3, 0x0

    .line 1178
    const/4 v0, 0x0

    .line 1179
    .local v0, "isEnable":Z
    iget-object v1, p0, Lcom/android/exsettings/DataUsageSummary;->mMobileDataEnabled:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1182
    iget-object v1, p0, Lcom/android/exsettings/DataUsageSummary;->mMobileDataEnabled:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 1187
    .local v0, "isEnable":Z
    iget-object v1, p0, Lcom/android/exsettings/DataUsageSummary;->mMobileDataEnabled:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1196
    :goto_0
    return v0

    .line 1190
    .local v0, "isEnable":Z
    :cond_0
    iget-object v1, p0, Lcom/android/exsettings/DataUsageSummary;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1, p1}, Landroid/telephony/TelephonyManager;->getDataEnabled(I)Z

    move-result v0

    .local v0, "isEnable":Z
    goto :goto_0
.end method

.method private static isMobileTab(Ljava/lang/String;)Z
    .locals 1
    .param p0, "currentTab"    # Ljava/lang/String;

    .prologue
    .line 3013
    if-eqz p0, :cond_0

    const-string/jumbo v0, "mobile"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isNetworkPolicyModifiable(Landroid/net/NetworkPolicy;)Z
    .locals 2
    .param p1, "policy"    # Landroid/net/NetworkPolicy;

    .prologue
    const/4 v0, 0x0

    .line 1231
    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/android/exsettings/DataUsageSummary;->isBandwidthControlEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/exsettings/DataUsageSummary;->mDataEnabled:Landroid/widget/Switch;

    invoke-virtual {v1}, Landroid/widget/Switch;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1232
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 1231
    :cond_0
    return v0
.end method

.method private resetDataStats(Landroid/net/NetworkTemplate;)V
    .locals 3
    .param p1, "template"    # Landroid/net/NetworkTemplate;

    .prologue
    .line 1209
    new-instance v0, Lcom/android/exsettings/DataUsageSummary$18;

    invoke-direct {v0, p0}, Lcom/android/exsettings/DataUsageSummary$18;-><init>(Lcom/android/exsettings/DataUsageSummary;)V

    .line 1227
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 1209
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/android/exsettings/DataUsageSummary$18;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1207
    return-void
.end method

.method private setAppDataAlert(Z)V
    .locals 6
    .param p1, "enableDataAlert"    # Z

    .prologue
    .line 1316
    iget-object v4, p0, Lcom/android/exsettings/DataUsageSummary;->mCurrentApp:Lcom/android/exsettingslib/AppItem;

    iget v3, v4, Lcom/android/exsettingslib/AppItem;->key:I

    .line 1321
    .local v3, "uid":I
    iget-object v4, p0, Lcom/android/exsettings/DataUsageSummary;->mUidDetailProvider:Lcom/android/exsettingslib/net/UidDetailProvider;

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Lcom/android/exsettingslib/net/UidDetailProvider;->getUidDetail(IZ)Lcom/android/exsettingslib/net/UidDetail;

    move-result-object v0

    .line 1322
    .local v0, "detail":Lcom/android/exsettingslib/net/UidDetail;
    if-eqz v0, :cond_1

    iget-object v4, v0, Lcom/android/exsettingslib/net/UidDetail;->label:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1325
    .local v2, "label":Ljava/lang/String;
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/android/exsettings/DataUsageSummary;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v3, p1, v2}, Lcom/android/exsettings/DataUsageUtils;->enableApp(Landroid/content/Context;IZLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1331
    iget-object v4, p0, Lcom/android/exsettings/DataUsageSummary;->mAppDataAlert:Landroid/widget/Switch;

    invoke-virtual {v4, p1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 1334
    if-eqz p1, :cond_0

    iget-boolean v4, p0, Lcom/android/exsettings/DataUsageSummary;->mShowAlerts:Z

    if-eqz v4, :cond_2

    .line 1315
    :cond_0
    :goto_1
    return-void

    .line 1322
    .end local v2    # "label":Ljava/lang/String;
    :cond_1
    const-string/jumbo v2, ""

    .restart local v2    # "label":Ljava/lang/String;
    goto :goto_0

    .line 1326
    :catch_0
    move-exception v1

    .line 1328
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "DataUsage"

    const-string/jumbo v5, "Unable to set data alert state"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1329
    return-void

    .line 1335
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/android/exsettings/DataUsageSummary;->updateShowAlertsState(Z)V

    goto :goto_1
.end method

.method private setAppRestrictBackground(I)V
    .locals 7
    .param p1, "newPolicy"    # I

    .prologue
    const/4 v6, 0x1

    const/high16 v5, 0x20000

    .line 1259
    iget-object v3, p0, Lcom/android/exsettings/DataUsageSummary;->mCurrentApp:Lcom/android/exsettingslib/AppItem;

    iget v2, v3, Lcom/android/exsettingslib/AppItem;->key:I

    .line 1260
    .local v2, "uid":I
    iget-object v3, p0, Lcom/android/exsettings/DataUsageSummary;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v3, v2}, Landroid/net/NetworkPolicyManager;->getUidPolicy(I)I

    move-result v0

    .line 1262
    .local v0, "currentPolicy":I
    if-ne p1, v0, :cond_0

    .line 1263
    return-void

    .line 1266
    :cond_0
    and-int/lit8 v3, p1, 0x1

    and-int/lit8 v4, v0, 0x1

    xor-int/2addr v3, v4

    if-eqz v3, :cond_1

    .line 1268
    and-int/lit8 v3, p1, 0x1

    if-eqz v3, :cond_3

    .line 1269
    iget-object v3, p0, Lcom/android/exsettings/DataUsageSummary;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v3, v2, v6}, Landroid/net/NetworkPolicyManager;->addUidPolicy(II)V

    .line 1275
    :cond_1
    :goto_0
    and-int v3, p1, v5

    and-int v4, v0, v5

    xor-int/2addr v3, v4

    if-eqz v3, :cond_2

    .line 1277
    and-int v3, p1, v5

    if-eqz v3, :cond_4

    .line 1278
    iget-object v3, p0, Lcom/android/exsettings/DataUsageSummary;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v3, v2, v5}, Landroid/net/NetworkPolicyManager;->addUidPolicy(II)V

    .line 1285
    :cond_2
    :goto_1
    and-int/lit8 v3, p1, 0x1

    if-eqz v3, :cond_6

    .line 1286
    and-int v3, p1, v5

    if-eqz v3, :cond_5

    .line 1287
    const v1, 0x7f0c039a

    .line 1294
    .local v1, "summaryResId":I
    :goto_2
    iget-object v3, p0, Lcom/android/exsettings/DataUsageSummary;->mAppRestrictView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/android/exsettings/DataUsageSummary;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/exsettings/DataUsageSummary;->setPreferenceSummary(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 1257
    return-void

    .line 1271
    .end local v1    # "summaryResId":I
    :cond_3
    iget-object v3, p0, Lcom/android/exsettings/DataUsageSummary;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v3, v2, v6}, Landroid/net/NetworkPolicyManager;->removeUidPolicy(II)V

    goto :goto_0

    .line 1280
    :cond_4
    iget-object v3, p0, Lcom/android/exsettings/DataUsageSummary;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v3, v2, v5}, Landroid/net/NetworkPolicyManager;->removeUidPolicy(II)V

    goto :goto_1

    .line 1289
    :cond_5
    const v1, 0x7f0c0399

    .restart local v1    # "summaryResId":I
    goto :goto_2

    .line 1292
    .end local v1    # "summaryResId":I
    :cond_6
    const v1, 0x7f0c0398

    .restart local v1    # "summaryResId":I
    goto :goto_2
.end method

.method private setAppRestrictCellular(Z)V
    .locals 3
    .param p1, "restrictCellular"    # Z

    .prologue
    const/high16 v2, 0x10000

    .line 1305
    iget-object v1, p0, Lcom/android/exsettings/DataUsageSummary;->mCurrentApp:Lcom/android/exsettingslib/AppItem;

    iget v0, v1, Lcom/android/exsettingslib/AppItem;->key:I

    .line 1306
    .local v0, "uid":I
    if-eqz p1, :cond_0

    .line 1307
    iget-object v1, p0, Lcom/android/exsettings/DataUsageSummary;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v1, v0, v2}, Landroid/net/NetworkPolicyManager;->addUidPolicy(II)V

    .line 1311
    :goto_0
    iget-object v1, p0, Lcom/android/exsettings/DataUsageSummary;->mAppCellularAccess:Landroid/widget/Switch;

    invoke-virtual {v1, p1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 1303
    return-void

    .line 1309
    :cond_0
    iget-object v1, p0, Lcom/android/exsettings/DataUsageSummary;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v1, v0, v2}, Landroid/net/NetworkPolicyManager;->removeUidPolicy(II)V

    goto :goto_0
.end method

.method private setMobileDataEnabled(IZ)V
    .locals 4
    .param p1, "subId"    # I
    .param p2, "enabled"    # Z

    .prologue
    .line 1201
    iget-object v1, p0, Lcom/android/exsettings/DataUsageSummary;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v0

    .line 1202
    .local v0, "dataSubId":I
    iget-object v1, p0, Lcom/android/exsettings/DataUsageSummary;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1, p1, p2}, Landroid/telephony/TelephonyManager;->setDataEnabled(IZ)V

    .line 1203
    iget-object v1, p0, Lcom/android/exsettings/DataUsageSummary;->mMobileDataEnabled:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1204
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/exsettings/DataUsageSummary;->updatePolicy(Z)V

    .line 1199
    return-void
.end method

.method private setPolicyLimitBytes(J)V
    .locals 3
    .param p1, "limitBytes"    # J

    .prologue
    .line 1172
    iget-object v0, p0, Lcom/android/exsettings/DataUsageSummary;->mPolicyEditor:Lcom/android/exsettingslib/NetworkPolicyEditor;

    iget-object v1, p0, Lcom/android/exsettings/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/exsettingslib/NetworkPolicyEditor;->setPolicyLimitBytes(Landroid/net/NetworkTemplate;J)V

    .line 1173
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/exsettings/DataUsageSummary;->updatePolicy(Z)V

    .line 1170
    return-void
.end method

.method private setPolicyWarningBytes(J)V
    .locals 3
    .param p1, "warningBytes"    # J

    .prologue
    .line 1166
    iget-object v0, p0, Lcom/android/exsettings/DataUsageSummary;->mPolicyEditor:Lcom/android/exsettingslib/NetworkPolicyEditor;

    iget-object v1, p0, Lcom/android/exsettings/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/exsettingslib/NetworkPolicyEditor;->setPolicyWarningBytes(Landroid/net/NetworkTemplate;J)V

    .line 1167
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/exsettings/DataUsageSummary;->updatePolicy(Z)V

    .line 1164
    return-void
.end method

.method private static setPreferenceSummary(Landroid/view/View;Ljava/lang/CharSequence;)V
    .locals 2
    .param p0, "parent"    # Landroid/view/View;
    .param p1, "string"    # Ljava/lang/CharSequence;

    .prologue
    .line 2916
    const v1, 0x1020010

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2917
    .local v0, "summary":Landroid/widget/TextView;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2918
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2915
    return-void
.end method

.method private static setPreferenceTitle(Landroid/view/View;I)V
    .locals 2
    .param p0, "parent"    # Landroid/view/View;
    .param p1, "resId"    # I

    .prologue
    .line 2907
    const v1, 0x1020016

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2908
    .local v0, "title":Landroid/widget/TextView;
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 2906
    return-void
.end method

.method private showRequestedAppIfNeeded(Landroid/view/View;)V
    .locals 10
    .param p1, "rootView"    # Landroid/view/View;

    .prologue
    const/4 v9, 0x1

    .line 527
    iget-object v5, p0, Lcom/android/exsettings/DataUsageSummary;->mShowAppImmediatePkg:Ljava/lang/String;

    if-nez v5, :cond_0

    .line 528
    return-void

    .line 531
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/android/exsettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    iget-object v6, p0, Lcom/android/exsettings/DataUsageSummary;->mShowAppImmediatePkg:Ljava/lang/String;

    .line 532
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    .line 531
    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result v4

    .line 533
    .local v4, "uid":I
    new-instance v0, Lcom/android/exsettingslib/AppItem;

    invoke-direct {v0, v4}, Lcom/android/exsettingslib/AppItem;-><init>(I)V

    .line 534
    .local v0, "app":Lcom/android/exsettingslib/AppItem;
    invoke-virtual {v0, v4}, Lcom/android/exsettingslib/AppItem;->addUid(I)V

    .line 536
    iget-object v5, p0, Lcom/android/exsettings/DataUsageSummary;->mUidDetailProvider:Lcom/android/exsettingslib/net/UidDetailProvider;

    iget v6, v0, Lcom/android/exsettingslib/AppItem;->key:I

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Lcom/android/exsettingslib/net/UidDetailProvider;->getUidDetail(IZ)Lcom/android/exsettingslib/net/UidDetail;

    move-result-object v1

    .line 539
    .local v1, "detail":Lcom/android/exsettingslib/net/UidDetail;
    const v5, 0x7f1300a7

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    .line 540
    .local v3, "pinnedHeader":Landroid/widget/FrameLayout;
    invoke-virtual {p0}, Lcom/android/exsettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v5

    iget-object v6, v1, Lcom/android/exsettingslib/net/UidDetail;->icon:Landroid/graphics/drawable/Drawable;

    iget-object v7, v1, Lcom/android/exsettingslib/net/UidDetail;->label:Ljava/lang/CharSequence;

    const/4 v8, 0x0

    invoke-static {v5, v6, v7, v8, v3}, Lcom/android/exsettings/AppHeader;->createAppHeader(Landroid/app/Activity;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Landroid/content/Intent;Landroid/view/ViewGroup;)V

    .line 541
    iget-object v5, v1, Lcom/android/exsettingslib/net/UidDetail;->label:Ljava/lang/CharSequence;

    const/4 v6, 0x0

    invoke-static {p0, v0, v5, v6}, Lcom/android/exsettings/DataUsageSummary$AppDetailsFragment;->show(Lcom/android/exsettings/DataUsageSummary;Lcom/android/exsettingslib/AppItem;Ljava/lang/CharSequence;Z)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 526
    .end local v0    # "app":Lcom/android/exsettingslib/AppItem;
    .end local v1    # "detail":Lcom/android/exsettingslib/net/UidDetail;
    .end local v3    # "pinnedHeader":Landroid/widget/FrameLayout;
    .end local v4    # "uid":I
    :goto_0
    return-void

    .line 542
    :catch_0
    move-exception v2

    .line 543
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v5, "DataUsage"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Could not find "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/exsettings/DataUsageSummary;->mShowAppImmediatePkg:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 544
    invoke-virtual {p0}, Lcom/android/exsettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const v6, 0x7f0c0f35

    invoke-virtual {p0, v6}, Lcom/android/exsettings/DataUsageSummary;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 546
    invoke-virtual {p0}, Lcom/android/exsettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method private updateAppDetail()V
    .locals 24

    .prologue
    .line 1023
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v6

    .line 1024
    .local v6, "context":Landroid/content/Context;
    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v15

    .line 1025
    .local v15, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v9

    .line 1027
    .local v9, "inflater":Landroid/view/LayoutInflater;
    invoke-direct/range {p0 .. p0}, Lcom/android/exsettings/DataUsageSummary;->isAppDetailMode()Z

    move-result v20

    if-eqz v20, :cond_0

    .line 1028
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/DataUsageSummary;->mAppDetail:Landroid/view/View;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    .line 1029
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/DataUsageSummary;->mCycleAdapter:Lcom/android/exsettings/DataUsageSummary$CycleAdapter;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lcom/android/exsettings/DataUsageSummary$CycleAdapter;->setChangeVisible(Z)V

    .line 1040
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/DataUsageSummary;->mChart:Lcom/android/exsettings/widget/ChartDataUsageView;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lcom/android/exsettings/widget/ChartDataUsageView;->bindNetworkPolicy(Landroid/net/NetworkPolicy;)V

    .line 1043
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/DataUsageSummary;->mCurrentApp:Lcom/android/exsettingslib/AppItem;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/exsettingslib/AppItem;->key:I

    move/from16 v19, v0

    .line 1044
    .local v19, "uid":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/DataUsageSummary;->mUidDetailProvider:Lcom/android/exsettingslib/net/UidDetailProvider;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v19

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/android/exsettingslib/net/UidDetailProvider;->getUidDetail(IZ)Lcom/android/exsettingslib/net/UidDetail;

    move-result-object v7

    .line 1045
    .local v7, "detail":Lcom/android/exsettingslib/net/UidDetail;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/DataUsageSummary;->mAppIcon:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    iget-object v0, v7, Lcom/android/exsettingslib/net/UidDetail;->icon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1047
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/DataUsageSummary;->mAppTitles:Landroid/view/ViewGroup;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 1049
    const/16 v18, 0x0

    .line 1050
    .local v18, "title":Landroid/view/View;
    iget-object v0, v7, Lcom/android/exsettingslib/net/UidDetail;->detailLabels:[Ljava/lang/CharSequence;

    move-object/from16 v20, v0

    if-eqz v20, :cond_1

    .line 1051
    iget-object v0, v7, Lcom/android/exsettingslib/net/UidDetail;->detailLabels:[Ljava/lang/CharSequence;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    array-length v12, v0

    .line 1052
    .local v12, "n":I
    const/4 v8, 0x0

    .end local v18    # "title":Landroid/view/View;
    .local v8, "i":I
    :goto_0
    if-ge v8, v12, :cond_2

    .line 1053
    iget-object v0, v7, Lcom/android/exsettingslib/net/UidDetail;->detailLabels:[Ljava/lang/CharSequence;

    move-object/from16 v20, v0

    aget-object v10, v20, v8

    .line 1054
    .local v10, "label":Ljava/lang/CharSequence;
    iget-object v0, v7, Lcom/android/exsettingslib/net/UidDetail;->detailContentDescriptions:[Ljava/lang/CharSequence;

    move-object/from16 v20, v0

    aget-object v5, v20, v8

    .line 1055
    .local v5, "contentDescription":Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/DataUsageSummary;->mAppTitles:Landroid/view/ViewGroup;

    move-object/from16 v20, v0

    const v21, 0x7f040044

    const/16 v22, 0x0

    move/from16 v0, v21

    move-object/from16 v1, v20

    move/from16 v2, v22

    invoke-virtual {v9, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v18

    .line 1056
    .local v18, "title":Landroid/view/View;
    const v20, 0x7f130091

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 1057
    .local v3, "appTitle":Landroid/widget/TextView;
    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1058
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1059
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/DataUsageSummary;->mAppTitles:Landroid/view/ViewGroup;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1052
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 1031
    .end local v3    # "appTitle":Landroid/widget/TextView;
    .end local v5    # "contentDescription":Ljava/lang/CharSequence;
    .end local v7    # "detail":Lcom/android/exsettingslib/net/UidDetail;
    .end local v8    # "i":I
    .end local v10    # "label":Ljava/lang/CharSequence;
    .end local v12    # "n":I
    .end local v18    # "title":Landroid/view/View;
    .end local v19    # "uid":I
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/DataUsageSummary;->mAppDetail:Landroid/view/View;

    move-object/from16 v20, v0

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    .line 1032
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/DataUsageSummary;->mCycleAdapter:Lcom/android/exsettings/DataUsageSummary$CycleAdapter;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Lcom/android/exsettings/DataUsageSummary$CycleAdapter;->setChangeVisible(Z)V

    .line 1035
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/DataUsageSummary;->mChart:Lcom/android/exsettings/widget/ChartDataUsageView;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lcom/android/exsettings/widget/ChartDataUsageView;->bindDetailNetworkStats(Landroid/net/NetworkStatsHistory;)V

    .line 1036
    return-void

    .line 1062
    .restart local v7    # "detail":Lcom/android/exsettingslib/net/UidDetail;
    .local v18, "title":Landroid/view/View;
    .restart local v19    # "uid":I
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/DataUsageSummary;->mAppTitles:Landroid/view/ViewGroup;

    move-object/from16 v20, v0

    const v21, 0x7f040044

    const/16 v22, 0x0

    move/from16 v0, v21

    move-object/from16 v1, v20

    move/from16 v2, v22

    invoke-virtual {v9, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v18

    .line 1063
    .local v18, "title":Landroid/view/View;
    const v20, 0x7f130091

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 1064
    .restart local v3    # "appTitle":Landroid/widget/TextView;
    iget-object v0, v7, Lcom/android/exsettingslib/net/UidDetail;->label:Ljava/lang/CharSequence;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1065
    iget-object v0, v7, Lcom/android/exsettingslib/net/UidDetail;->contentDescription:Ljava/lang/CharSequence;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1066
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/DataUsageSummary;->mAppTitles:Landroid/view/ViewGroup;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1070
    .end local v3    # "appTitle":Landroid/widget/TextView;
    .end local v18    # "title":Landroid/view/View;
    :cond_2
    if-eqz v18, :cond_5

    .line 1071
    const v20, 0x7f130092

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/DataUsageSummary;->mAppTotal:Landroid/widget/TextView;

    .line 1077
    :goto_1
    move/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v14

    .line 1078
    .local v14, "packageNames":[Ljava/lang/String;
    if-eqz v14, :cond_7

    array-length v0, v14

    move/from16 v20, v0

    if-lez v20, :cond_7

    .line 1079
    new-instance v20, Landroid/content/Intent;

    const-string/jumbo v21, "android.intent.action.MANAGE_NETWORK_USAGE"

    invoke-direct/range {v20 .. v21}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/DataUsageSummary;->mAppSettingsIntent:Landroid/content/Intent;

    .line 1080
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/DataUsageSummary;->mAppSettingsIntent:Landroid/content/Intent;

    move-object/from16 v20, v0

    const-string/jumbo v21, "android.intent.category.DEFAULT"

    invoke-virtual/range {v20 .. v21}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1083
    const/4 v11, 0x0

    .line 1084
    .local v11, "matchFound":Z
    const/16 v20, 0x0

    array-length v0, v14

    move/from16 v21, v0

    :goto_2
    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_3

    aget-object v13, v14, v20

    .line 1085
    .local v13, "packageName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/DataUsageSummary;->mAppSettingsIntent:Landroid/content/Intent;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1086
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/DataUsageSummary;->mAppSettingsIntent:Landroid/content/Intent;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v15, v0, v1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v22

    if-eqz v22, :cond_6

    .line 1087
    const/4 v11, 0x1

    .line 1092
    .end local v13    # "packageName":Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/DataUsageSummary;->mAppSettings:Landroid/widget/Button;

    move-object/from16 v20, v0

    new-instance v21, Lcom/android/exsettings/DataUsageSummary$17;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/exsettings/DataUsageSummary$17;-><init>(Lcom/android/exsettings/DataUsageSummary;I)V

    invoke-virtual/range {v20 .. v21}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1104
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/DataUsageSummary;->mAppSettings:Landroid/widget/Button;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1105
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/DataUsageSummary;->mAppSettings:Landroid/widget/Button;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/Button;->setVisibility(I)V

    .line 1113
    .end local v11    # "matchFound":Z
    :goto_3
    invoke-direct/range {p0 .. p0}, Lcom/android/exsettings/DataUsageSummary;->updateDetailData()V

    .line 1115
    invoke-static/range {v19 .. v19}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v20

    if-eqz v20, :cond_c

    invoke-direct/range {p0 .. p0}, Lcom/android/exsettings/DataUsageSummary;->isBandwidthControlEnabled()Z

    move-result v20

    if-eqz v20, :cond_c

    .line 1116
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/DataUsageSummary;->mAppRestrictView:Landroid/view/View;

    move-object/from16 v20, v0

    const v21, 0x7f0c0397

    invoke-static/range {v20 .. v21}, Lcom/android/exsettings/DataUsageSummary;->setPreferenceTitle(Landroid/view/View;I)V

    .line 1118
    invoke-direct/range {p0 .. p0}, Lcom/android/exsettings/DataUsageSummary;->getAppRestrictBackground()I

    move-result v4

    .line 1120
    .local v4, "backgroundPolicy":I
    and-int/lit8 v20, v4, 0x1

    if-eqz v20, :cond_9

    .line 1121
    const/high16 v20, 0x20000

    and-int v20, v20, v4

    if-eqz v20, :cond_8

    .line 1122
    const v17, 0x7f0c039a

    .line 1123
    .local v17, "summaryResId":I
    const/16 v16, 0x2

    .line 1132
    .local v16, "position":I
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/DataUsageSummary;->mAppRestrictView:Landroid/view/View;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/exsettings/DataUsageSummary;->getString(I)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/android/exsettings/DataUsageSummary;->setPreferenceSummary(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 1133
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/DataUsageSummary;->mRestrictSpinner:Landroid/widget/Spinner;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 1134
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/DataUsageSummary;->mAppRestrictView:Landroid/view/View;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    .line 1136
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/exsettings/DataUsageSummary;->isMobileTab(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_4

    const-string/jumbo v20, "3g"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_4

    .line 1137
    const-string/jumbo v20, "4g"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    .line 1136
    if-eqz v20, :cond_a

    .line 1138
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/DataUsageSummary;->mAppCellularAccessView:Landroid/view/View;

    move-object/from16 v20, v0

    const v21, 0x7f0c03a2

    invoke-static/range {v20 .. v21}, Lcom/android/exsettings/DataUsageSummary;->setPreferenceTitle(Landroid/view/View;I)V

    .line 1139
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/DataUsageSummary;->mAppCellularAccessView:Landroid/view/View;

    move-object/from16 v20, v0

    .line 1140
    const v21, 0x7f0c03a3

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/exsettings/DataUsageSummary;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 1139
    invoke-static/range {v20 .. v21}, Lcom/android/exsettings/DataUsageSummary;->setPreferenceSummary(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 1141
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/DataUsageSummary;->mAppCellularAccessView:Landroid/view/View;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    .line 1142
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/DataUsageSummary;->mAppCellularAccess:Landroid/widget/Switch;

    move-object/from16 v20, v0

    invoke-direct/range {p0 .. p0}, Lcom/android/exsettings/DataUsageSummary;->getAppRestrictCellular()Z

    move-result v21

    invoke-virtual/range {v20 .. v21}, Landroid/widget/Switch;->setChecked(Z)V

    .line 1147
    :goto_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/exsettings/DataUsageSummary;->mDataAlertsSupported:Z

    move/from16 v20, v0

    if-eqz v20, :cond_b

    .line 1148
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/DataUsageSummary;->mAppDataAlertView:Landroid/view/View;

    move-object/from16 v20, v0

    const v21, 0x7f0c039b

    invoke-static/range {v20 .. v21}, Lcom/android/exsettings/DataUsageSummary;->setPreferenceTitle(Landroid/view/View;I)V

    .line 1149
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/DataUsageSummary;->mAppDataAlertView:Landroid/view/View;

    move-object/from16 v20, v0

    .line 1150
    const v21, 0x7f0c039c

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/exsettings/DataUsageSummary;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 1149
    invoke-static/range {v20 .. v21}, Lcom/android/exsettings/DataUsageSummary;->setPreferenceSummary(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 1152
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/DataUsageSummary;->mAppDataAlertView:Landroid/view/View;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    .line 1153
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/DataUsageSummary;->mAppDataAlert:Landroid/widget/Switch;

    move-object/from16 v20, v0

    invoke-direct/range {p0 .. p0}, Lcom/android/exsettings/DataUsageSummary;->getAppDataAlert()Z

    move-result v21

    invoke-virtual/range {v20 .. v21}, Landroid/widget/Switch;->setChecked(Z)V

    .line 1022
    .end local v4    # "backgroundPolicy":I
    .end local v16    # "position":I
    .end local v17    # "summaryResId":I
    :goto_6
    return-void

    .line 1073
    .end local v14    # "packageNames":[Ljava/lang/String;
    :cond_5
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/DataUsageSummary;->mAppTotal:Landroid/widget/TextView;

    goto/16 :goto_1

    .line 1084
    .restart local v11    # "matchFound":Z
    .restart local v13    # "packageName":Ljava/lang/String;
    .restart local v14    # "packageNames":[Ljava/lang/String;
    :cond_6
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_2

    .line 1108
    .end local v11    # "matchFound":Z
    .end local v13    # "packageName":Ljava/lang/String;
    :cond_7
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/DataUsageSummary;->mAppSettingsIntent:Landroid/content/Intent;

    .line 1109
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/DataUsageSummary;->mAppSettings:Landroid/widget/Button;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1110
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/DataUsageSummary;->mAppSettings:Landroid/widget/Button;

    move-object/from16 v20, v0

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_3

    .line 1125
    .restart local v4    # "backgroundPolicy":I
    :cond_8
    const v17, 0x7f0c0399

    .line 1126
    .restart local v17    # "summaryResId":I
    const/16 v16, 0x1

    .restart local v16    # "position":I
    goto/16 :goto_4

    .line 1129
    .end local v16    # "position":I
    .end local v17    # "summaryResId":I
    :cond_9
    const v17, 0x7f0c0398

    .line 1130
    .restart local v17    # "summaryResId":I
    const/16 v16, 0x0

    .restart local v16    # "position":I
    goto/16 :goto_4

    .line 1144
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/DataUsageSummary;->mAppCellularAccessView:Landroid/view/View;

    move-object/from16 v20, v0

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_5

    .line 1155
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/DataUsageSummary;->mAppDataAlertView:Landroid/view/View;

    move-object/from16 v20, v0

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    goto :goto_6

    .line 1158
    .end local v4    # "backgroundPolicy":I
    .end local v16    # "position":I
    .end local v17    # "summaryResId":I
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/DataUsageSummary;->mAppRestrictView:Landroid/view/View;

    move-object/from16 v20, v0

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    .line 1159
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/DataUsageSummary;->mAppDataAlertView:Landroid/view/View;

    move-object/from16 v20, v0

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    .line 1160
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/DataUsageSummary;->mAppCellularAccessView:Landroid/view/View;

    move-object/from16 v20, v0

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    goto :goto_6
.end method

.method private updateBody()V
    .locals 26

    .prologue
    .line 888
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/exsettings/DataUsageSummary;->mBinding:Z

    .line 889
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/DataUsageSummary;->isAdded()Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    .line 891
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v8

    .line 892
    .local v8, "context":Landroid/content/Context;
    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    .line 893
    .local v16, "resources":Landroid/content/res/Resources;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v2}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v9

    .line 894
    .local v9, "currentTab":Ljava/lang/String;
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    if-nez v2, :cond_1

    const/4 v14, 0x1

    .line 896
    .local v14, "isOwner":Z
    :goto_0
    if-nez v9, :cond_2

    .line 897
    const-string/jumbo v2, "DataUsage"

    const-string/jumbo v3, "no tab selected; hiding body"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 898
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/DataUsageSummary;->mListView:Landroid/widget/ListView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setVisibility(I)V

    .line 899
    return-void

    .line 894
    .end local v14    # "isOwner":Z
    :cond_1
    const/4 v14, 0x0

    .restart local v14    # "isOwner":Z
    goto :goto_0

    .line 901
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/DataUsageSummary;->mListView:Landroid/widget/ListView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setVisibility(I)V

    .line 904
    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/android/exsettings/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    .line 908
    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/exsettings/DataUsageSummary;->mDataEnabledSupported:Z

    .line 909
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/exsettings/DataUsageSummary;->mDisableAtLimitSupported:Z

    .line 915
    invoke-static {v9}, Lcom/android/exsettings/DataUsageSummary;->isMobileTab(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 917
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    const v3, 0x7f0c0d12

    invoke-static {v2, v3}, Lcom/android/exsettings/DataUsageSummary;->setPreferenceTitle(Landroid/view/View;I)V

    .line 918
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    const v3, 0x7f0c0d07

    invoke-static {v2, v3}, Lcom/android/exsettings/DataUsageSummary;->setPreferenceTitle(Landroid/view/View;I)V

    .line 919
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/exsettings/DataUsageSummary;->getSubId(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/exsettings/DataUsageSummary;->isMobileDataAvailable(I)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/exsettings/DataUsageSummary;->mDataEnabledSupported:Z

    .line 924
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/exsettings/DataUsageSummary;->getSubId(Ljava/lang/String;)I

    move-result v2

    invoke-static {v8, v2}, Lcom/android/exsettings/DataUsageSummary;->getActiveSubscriberId(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    .line 923
    invoke-static {v2}, Landroid/net/NetworkTemplate;->buildTemplateMobileAll(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/exsettings/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    .line 925
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    .line 926
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/exsettings/DataUsageSummary;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getMergedSubscriberIds()[Ljava/lang/String;

    move-result-object v3

    .line 925
    invoke-static {v2, v3}, Landroid/net/NetworkTemplate;->normalize(Landroid/net/NetworkTemplate;[Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/exsettings/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    .line 961
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/DataUsageSummary;->mPolicyEditor:Lcom/android/exsettingslib/NetworkPolicyEditor;

    invoke-virtual {v2}, Lcom/android/exsettingslib/NetworkPolicyEditor;->read()V

    .line 962
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/DataUsageSummary;->mPolicyEditor:Lcom/android/exsettingslib/NetworkPolicyEditor;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/exsettings/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {v2, v3}, Lcom/android/exsettingslib/NetworkPolicyEditor;->getPolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v15

    .line 963
    .local v15, "policy":Landroid/net/NetworkPolicy;
    if-eqz v15, :cond_3

    .line 964
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 965
    .local v10, "currentTime":J
    invoke-static {v10, v11, v15}, Landroid/net/NetworkPolicyManager;->computeLastCycleBoundary(JLandroid/net/NetworkPolicy;)J

    move-result-wide v4

    .line 966
    .local v4, "start":J
    move-wide v6, v10

    .line 967
    .local v6, "end":J
    const-wide/16 v22, 0x0

    .line 970
    .local v22, "totalBytes":J
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/DataUsageSummary;->mStatsService:Landroid/net/INetworkStatsService;

    iget-object v3, v15, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-interface/range {v2 .. v7}, Landroid/net/INetworkStatsService;->getNetworkTotalBytes(Landroid/net/NetworkTemplate;JJ)J
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v22

    .line 975
    :goto_2
    move-wide/from16 v0, v22

    invoke-virtual {v15, v0, v1}, Landroid/net/NetworkPolicy;->isOverLimit(J)Z

    move-result v2

    if-eqz v2, :cond_a

    iget-wide v2, v15, Landroid/net/NetworkPolicy;->lastLimitSnooze:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_a

    .line 976
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    .line 977
    const v3, 0x7f0c0cfc

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/exsettings/DataUsageSummary;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 976
    invoke-static {v2, v3}, Lcom/android/exsettings/DataUsageSummary;->setPreferenceSummary(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 988
    .end local v4    # "start":J
    .end local v6    # "end":J
    .end local v10    # "currentTime":J
    .end local v22    # "totalBytes":J
    :cond_3
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/DataUsageSummary;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v2

    .line 989
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/exsettings/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/DataUsageSummary;->mCurrentApp:Lcom/android/exsettingslib/AppItem;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-static {v3, v0}, Lcom/android/exsettingslib/net/ChartDataLoader;->buildArgs(Landroid/net/NetworkTemplate;Lcom/android/exsettingslib/AppItem;)Landroid/os/Bundle;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/DataUsageSummary;->mChartDataCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    move-object/from16 v24, v0

    .line 988
    const/16 v25, 0x2

    move/from16 v0, v25

    move-object/from16 v1, v24

    invoke-virtual {v2, v0, v3, v1}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 992
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 994
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/exsettings/DataUsageSummary;->mBinding:Z

    .line 996
    const v2, 0x7f0e0082

    invoke-virtual {v8, v2}, Landroid/content/Context;->getColor(I)I

    move-result v18

    .line 997
    .local v18, "seriesColor":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    const-string/jumbo v3, "mobile"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 998
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    const-string/jumbo v3, "mobile"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    .line 999
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->length()I

    move-result v24

    .line 998
    move/from16 v0, v24

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    .line 1000
    .local v20, "slotId":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/DataUsageSummary;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    move/from16 v0, v20

    invoke-virtual {v2, v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v19

    .line 1003
    .local v19, "sir":Landroid/telephony/SubscriptionInfo;
    if-eqz v19, :cond_4

    .line 1004
    invoke-virtual/range {v19 .. v19}, Landroid/telephony/SubscriptionInfo;->getIconTint()I

    move-result v18

    .line 1008
    .end local v19    # "sir":Landroid/telephony/SubscriptionInfo;
    .end local v20    # "slotId":I
    :cond_4
    invoke-static/range {v18 .. v18}, Landroid/graphics/Color;->red(I)I

    move-result v2

    invoke-static/range {v18 .. v18}, Landroid/graphics/Color;->green(I)I

    move-result v3

    .line 1009
    invoke-static/range {v18 .. v18}, Landroid/graphics/Color;->blue(I)I

    move-result v24

    .line 1008
    const/16 v25, 0x7f

    move/from16 v0, v25

    move/from16 v1, v24

    invoke-static {v0, v2, v3, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v17

    .line 1010
    .local v17, "secondaryColor":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/DataUsageSummary;->mSeries:Lcom/android/exsettings/widget/ChartNetworkSeriesView;

    const/high16 v3, -0x1000000

    move/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v2, v3, v0, v1}, Lcom/android/exsettings/widget/ChartNetworkSeriesView;->setChartColor(III)V

    .line 1011
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/DataUsageSummary;->mDetailedSeries:Lcom/android/exsettings/widget/ChartNetworkSeriesView;

    const/high16 v3, -0x1000000

    move/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v2, v3, v0, v1}, Lcom/android/exsettings/widget/ChartNetworkSeriesView;->setChartColor(III)V

    .line 887
    return-void

    .line 928
    .end local v15    # "policy":Landroid/net/NetworkPolicy;
    .end local v17    # "secondaryColor":I
    .end local v18    # "seriesColor":I
    :cond_5
    const-string/jumbo v2, "3g"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 930
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    const v3, 0x7f0c0d13

    invoke-static {v2, v3}, Lcom/android/exsettings/DataUsageSummary;->setPreferenceTitle(Landroid/view/View;I)V

    .line 931
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    const v3, 0x7f0c0d09

    invoke-static {v2, v3}, Lcom/android/exsettings/DataUsageSummary;->setPreferenceTitle(Landroid/view/View;I)V

    .line 933
    invoke-static {v8}, Lcom/android/exsettings/DataUsageSummary;->getActiveSubscriberId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/NetworkTemplate;->buildTemplateMobile3gLower(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/exsettings/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    goto/16 :goto_1

    .line 935
    :cond_6
    const-string/jumbo v2, "4g"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 937
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    const v3, 0x7f0c0d14

    invoke-static {v2, v3}, Lcom/android/exsettings/DataUsageSummary;->setPreferenceTitle(Landroid/view/View;I)V

    .line 938
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    const v3, 0x7f0c0d08

    invoke-static {v2, v3}, Lcom/android/exsettings/DataUsageSummary;->setPreferenceTitle(Landroid/view/View;I)V

    .line 940
    invoke-static {v8}, Lcom/android/exsettings/DataUsageSummary;->getActiveSubscriberId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/NetworkTemplate;->buildTemplateMobile4g(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/exsettings/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    goto/16 :goto_1

    .line 942
    :cond_7
    const-string/jumbo v2, "wifi"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 945
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/exsettings/DataUsageSummary;->mDataEnabledSupported:Z

    .line 946
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/exsettings/DataUsageSummary;->mDisableAtLimitSupported:Z

    .line 947
    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateWifiWildcard()Landroid/net/NetworkTemplate;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/exsettings/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    goto/16 :goto_1

    .line 949
    :cond_8
    const-string/jumbo v2, "ethernet"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 952
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/exsettings/DataUsageSummary;->mDataEnabledSupported:Z

    .line 953
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/exsettings/DataUsageSummary;->mDisableAtLimitSupported:Z

    .line 954
    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateEthernet()Landroid/net/NetworkTemplate;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/exsettings/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    goto/16 :goto_1

    .line 958
    :cond_9
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "unknown tab: "

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 979
    .restart local v4    # "start":J
    .restart local v6    # "end":J
    .restart local v10    # "currentTime":J
    .restart local v15    # "policy":Landroid/net/NetworkPolicy;
    .restart local v22    # "totalBytes":J
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    .line 980
    const v3, 0x1020010

    .line 979
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/TextView;

    .line 981
    .local v21, "summary":Landroid/widget/TextView;
    const/16 v2, 0x8

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_3

    .line 971
    .end local v21    # "summary":Landroid/widget/TextView;
    :catch_0
    move-exception v13

    .local v13, "e":Ljava/lang/RuntimeException;
    goto/16 :goto_2

    .line 972
    .end local v13    # "e":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v12

    .local v12, "e":Landroid/os/RemoteException;
    goto/16 :goto_2
.end method

.method private updateCycleList(Landroid/net/NetworkPolicy;)V
    .locals 28
    .param p1, "policy"    # Landroid/net/NetworkPolicy;

    .prologue
    .line 1401
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/exsettings/DataUsageSummary;->mCycleSpinner:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/android/exsettings/DataUsageSummary$CycleItem;

    .line 1402
    .local v26, "previousItem":Lcom/android/exsettings/DataUsageSummary$CycleItem;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/exsettings/DataUsageSummary;->mCycleAdapter:Lcom/android/exsettings/DataUsageSummary$CycleAdapter;

    invoke-virtual {v4}, Lcom/android/exsettings/DataUsageSummary$CycleAdapter;->clear()V

    .line 1404
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/exsettings/DataUsageSummary;->mCycleSpinner:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getContext()Landroid/content/Context;

    move-result-object v11

    .line 1405
    .local v11, "context":Landroid/content/Context;
    const/4 v10, 0x0

    .line 1407
    .local v10, "entry":Landroid/net/NetworkStatsHistory$Entry;
    const-wide v22, 0x7fffffffffffffffL

    .line 1408
    .local v22, "historyStart":J
    const-wide/high16 v20, -0x8000000000000000L

    .line 1409
    .local v20, "historyEnd":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/exsettings/DataUsageSummary;->mChartData:Lcom/android/exsettingslib/net/ChartData;

    if-eqz v4, :cond_0

    .line 1410
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/exsettings/DataUsageSummary;->mChartData:Lcom/android/exsettingslib/net/ChartData;

    iget-object v4, v4, Lcom/android/exsettingslib/net/ChartData;->network:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v4}, Landroid/net/NetworkStatsHistory;->getStart()J

    move-result-wide v22

    .line 1411
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/exsettings/DataUsageSummary;->mChartData:Lcom/android/exsettingslib/net/ChartData;

    iget-object v4, v4, Lcom/android/exsettingslib/net/ChartData;->network:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v4}, Landroid/net/NetworkStatsHistory;->getEnd()J

    move-result-wide v20

    .line 1414
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    .line 1415
    .local v24, "now":J
    const-wide v4, 0x7fffffffffffffffL

    cmp-long v4, v22, v4

    if-nez v4, :cond_1

    move-wide/from16 v22, v24

    .line 1416
    :cond_1
    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v4, v20, v4

    if-nez v4, :cond_2

    const-wide/16 v4, 0x1

    add-long v20, v24, v4

    .line 1418
    :cond_2
    const/16 v18, 0x0

    .line 1419
    .local v18, "hasCycles":Z
    if-eqz p1, :cond_7

    .line 1421
    move-wide/from16 v0, v20

    move-object/from16 v2, p1

    invoke-static {v0, v1, v2}, Landroid/net/NetworkPolicyManager;->computeNextCycleBoundary(JLandroid/net/NetworkPolicy;)J

    move-result-wide v8

    .line 1424
    .end local v10    # "entry":Landroid/net/NetworkStatsHistory$Entry;
    .local v8, "cycleEnd":J
    :goto_0
    cmp-long v4, v8, v22

    if-lez v4, :cond_6

    .line 1425
    move-object/from16 v0, p1

    invoke-static {v8, v9, v0}, Landroid/net/NetworkPolicyManager;->computeLastCycleBoundary(JLandroid/net/NetworkPolicy;)J

    move-result-wide v6

    .line 1426
    .local v6, "cycleStart":J
    const-string/jumbo v4, "DataUsage"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "generating cs="

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v12, " to ce="

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v12, " waiting for hs="

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v22

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1430
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/exsettings/DataUsageSummary;->mChartData:Lcom/android/exsettingslib/net/ChartData;

    if-eqz v4, :cond_5

    .line 1431
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/exsettings/DataUsageSummary;->mChartData:Lcom/android/exsettingslib/net/ChartData;

    iget-object v5, v4, Lcom/android/exsettingslib/net/ChartData;->network:Landroid/net/NetworkStatsHistory;

    invoke-virtual/range {v5 .. v10}, Landroid/net/NetworkStatsHistory;->getValues(JJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v10

    .line 1432
    .local v10, "entry":Landroid/net/NetworkStatsHistory$Entry;
    iget-wide v4, v10, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    iget-wide v12, v10, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    add-long/2addr v4, v12

    const-wide/16 v12, 0x0

    cmp-long v4, v4, v12

    if-lez v4, :cond_4

    const/16 v19, 0x1

    .line 1437
    .end local v10    # "entry":Landroid/net/NetworkStatsHistory$Entry;
    .local v19, "includeCycle":Z
    :goto_1
    if-eqz v19, :cond_3

    .line 1438
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/exsettings/DataUsageSummary;->mCycleAdapter:Lcom/android/exsettings/DataUsageSummary$CycleAdapter;

    new-instance v4, Lcom/android/exsettings/DataUsageSummary$CycleItem;

    move-object v5, v11

    invoke-direct/range {v4 .. v9}, Lcom/android/exsettings/DataUsageSummary$CycleItem;-><init>(Landroid/content/Context;JJ)V

    invoke-virtual {v12, v4}, Lcom/android/exsettings/DataUsageSummary$CycleAdapter;->add(Ljava/lang/Object;)V

    .line 1439
    const/16 v18, 0x1

    .line 1441
    :cond_3
    move-wide v8, v6

    goto :goto_0

    .line 1432
    .end local v19    # "includeCycle":Z
    .restart local v10    # "entry":Landroid/net/NetworkStatsHistory$Entry;
    :cond_4
    const/16 v19, 0x0

    .restart local v19    # "includeCycle":Z
    goto :goto_1

    .line 1434
    .end local v10    # "entry":Landroid/net/NetworkStatsHistory$Entry;
    .end local v19    # "includeCycle":Z
    :cond_5
    const/16 v19, 0x1

    .restart local v19    # "includeCycle":Z
    goto :goto_1

    .line 1445
    .end local v6    # "cycleStart":J
    .end local v19    # "includeCycle":Z
    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/exsettings/DataUsageSummary;->mCycleAdapter:Lcom/android/exsettings/DataUsageSummary$CycleAdapter;

    invoke-direct/range {p0 .. p1}, Lcom/android/exsettings/DataUsageSummary;->isNetworkPolicyModifiable(Landroid/net/NetworkPolicy;)Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/exsettings/DataUsageSummary$CycleAdapter;->setChangePossible(Z)V

    .line 1448
    .end local v8    # "cycleEnd":J
    :cond_7
    if-nez v18, :cond_c

    .line 1450
    move-wide/from16 v8, v20

    .line 1451
    .restart local v8    # "cycleEnd":J
    :goto_2
    cmp-long v4, v8, v22

    if-lez v4, :cond_b

    .line 1452
    const-wide v4, 0x90321000L

    sub-long v6, v8, v4

    .line 1455
    .restart local v6    # "cycleStart":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/exsettings/DataUsageSummary;->mChartData:Lcom/android/exsettingslib/net/ChartData;

    if-eqz v4, :cond_a

    .line 1456
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/exsettings/DataUsageSummary;->mChartData:Lcom/android/exsettingslib/net/ChartData;

    iget-object v5, v4, Lcom/android/exsettingslib/net/ChartData;->network:Landroid/net/NetworkStatsHistory;

    invoke-virtual/range {v5 .. v10}, Landroid/net/NetworkStatsHistory;->getValues(JJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v10

    .line 1457
    .restart local v10    # "entry":Landroid/net/NetworkStatsHistory$Entry;
    iget-wide v4, v10, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    iget-wide v12, v10, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    add-long/2addr v4, v12

    const-wide/16 v12, 0x0

    cmp-long v4, v4, v12

    if-lez v4, :cond_9

    const/16 v19, 0x1

    .line 1462
    .end local v10    # "entry":Landroid/net/NetworkStatsHistory$Entry;
    .restart local v19    # "includeCycle":Z
    :goto_3
    if-eqz v19, :cond_8

    .line 1463
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/exsettings/DataUsageSummary;->mCycleAdapter:Lcom/android/exsettings/DataUsageSummary$CycleAdapter;

    new-instance v4, Lcom/android/exsettings/DataUsageSummary$CycleItem;

    move-object v5, v11

    invoke-direct/range {v4 .. v9}, Lcom/android/exsettings/DataUsageSummary$CycleItem;-><init>(Landroid/content/Context;JJ)V

    invoke-virtual {v12, v4}, Lcom/android/exsettings/DataUsageSummary$CycleAdapter;->add(Ljava/lang/Object;)V

    .line 1465
    :cond_8
    move-wide v8, v6

    goto :goto_2

    .line 1457
    .end local v19    # "includeCycle":Z
    .restart local v10    # "entry":Landroid/net/NetworkStatsHistory$Entry;
    :cond_9
    const/16 v19, 0x0

    .restart local v19    # "includeCycle":Z
    goto :goto_3

    .line 1459
    .end local v10    # "entry":Landroid/net/NetworkStatsHistory$Entry;
    .end local v19    # "includeCycle":Z
    :cond_a
    const/16 v19, 0x1

    .restart local v19    # "includeCycle":Z
    goto :goto_3

    .line 1468
    .end local v6    # "cycleStart":J
    .end local v19    # "includeCycle":Z
    :cond_b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/exsettings/DataUsageSummary;->mCycleAdapter:Lcom/android/exsettings/DataUsageSummary$CycleAdapter;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/exsettings/DataUsageSummary$CycleAdapter;->setChangePossible(Z)V

    .line 1472
    .end local v8    # "cycleEnd":J
    :cond_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/exsettings/DataUsageSummary;->mCycleAdapter:Lcom/android/exsettings/DataUsageSummary$CycleAdapter;

    invoke-virtual {v4}, Lcom/android/exsettings/DataUsageSummary$CycleAdapter;->getCount()I

    move-result v4

    if-lez v4, :cond_e

    .line 1473
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/exsettings/DataUsageSummary;->mCycleAdapter:Lcom/android/exsettings/DataUsageSummary$CycleAdapter;

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Lcom/android/exsettings/DataUsageSummary$CycleAdapter;->findNearestPosition(Lcom/android/exsettings/DataUsageSummary$CycleItem;)I

    move-result v15

    .line 1474
    .local v15, "position":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/exsettings/DataUsageSummary;->mCycleSpinner:Landroid/widget/Spinner;

    invoke-virtual {v4, v15}, Landroid/widget/Spinner;->setSelection(I)V

    .line 1478
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/exsettings/DataUsageSummary;->mCycleAdapter:Lcom/android/exsettings/DataUsageSummary$CycleAdapter;

    invoke-virtual {v4, v15}, Lcom/android/exsettings/DataUsageSummary$CycleAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/android/exsettings/DataUsageSummary$CycleItem;

    .line 1479
    .local v27, "selectedItem":Lcom/android/exsettings/DataUsageSummary$CycleItem;
    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_d

    .line 1480
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/exsettings/DataUsageSummary;->mCycleListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/exsettings/DataUsageSummary;->mCycleSpinner:Landroid/widget/Spinner;

    const-wide/16 v16, 0x0

    const/4 v14, 0x0

    invoke-interface/range {v12 .. v17}, Landroid/widget/AdapterView$OnItemSelectedListener;->onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 1399
    .end local v15    # "position":I
    .end local v27    # "selectedItem":Lcom/android/exsettings/DataUsageSummary$CycleItem;
    :goto_4
    return-void

    .line 1483
    .restart local v15    # "position":I
    .restart local v27    # "selectedItem":Lcom/android/exsettings/DataUsageSummary$CycleItem;
    :cond_d
    invoke-direct/range {p0 .. p0}, Lcom/android/exsettings/DataUsageSummary;->updateDetailData()V

    goto :goto_4

    .line 1486
    .end local v15    # "position":I
    .end local v27    # "selectedItem":Lcom/android/exsettings/DataUsageSummary$CycleItem;
    :cond_e
    invoke-direct/range {p0 .. p0}, Lcom/android/exsettings/DataUsageSummary;->updateDetailData()V

    goto :goto_4
.end method

.method private updateDetailData()V
    .locals 26

    .prologue
    .line 1628
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/exsettings/DataUsageSummary;->mChart:Lcom/android/exsettings/widget/ChartDataUsageView;

    invoke-virtual {v3}, Lcom/android/exsettings/widget/ChartDataUsageView;->getInspectStart()J

    move-result-wide v4

    .line 1629
    .local v4, "start":J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/exsettings/DataUsageSummary;->mChart:Lcom/android/exsettings/widget/ChartDataUsageView;

    invoke-virtual {v3}, Lcom/android/exsettings/widget/ChartDataUsageView;->getInspectEnd()J

    move-result-wide v6

    .line 1630
    .local v6, "end":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 1632
    .local v8, "now":J
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 1634
    .local v2, "context":Landroid/content/Context;
    const/4 v10, 0x0

    .line 1635
    .local v10, "entry":Landroid/net/NetworkStatsHistory$Entry;
    invoke-direct/range {p0 .. p0}, Lcom/android/exsettings/DataUsageSummary;->isAppDetailMode()Z

    move-result v3

    if-eqz v3, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/exsettings/DataUsageSummary;->mChartData:Lcom/android/exsettingslib/net/ChartData;

    if-eqz v3, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/exsettings/DataUsageSummary;->mChartData:Lcom/android/exsettingslib/net/ChartData;

    iget-object v3, v3, Lcom/android/exsettingslib/net/ChartData;->detail:Landroid/net/NetworkStatsHistory;

    if-eqz v3, :cond_2

    .line 1637
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/exsettings/DataUsageSummary;->mChartData:Lcom/android/exsettingslib/net/ChartData;

    iget-object v3, v3, Lcom/android/exsettingslib/net/ChartData;->detailDefault:Landroid/net/NetworkStatsHistory;

    invoke-virtual/range {v3 .. v10}, Landroid/net/NetworkStatsHistory;->getValues(JJJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v10

    .line 1638
    .local v10, "entry":Landroid/net/NetworkStatsHistory$Entry;
    iget-wide v12, v10, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    iget-wide v14, v10, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    add-long v20, v12, v14

    .line 1639
    .local v20, "defaultBytes":J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/exsettings/DataUsageSummary;->mChartData:Lcom/android/exsettingslib/net/ChartData;

    iget-object v3, v3, Lcom/android/exsettingslib/net/ChartData;->detailForeground:Landroid/net/NetworkStatsHistory;

    invoke-virtual/range {v3 .. v10}, Landroid/net/NetworkStatsHistory;->getValues(JJJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v10

    .line 1640
    iget-wide v12, v10, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    iget-wide v14, v10, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    add-long v22, v12, v14

    .line 1641
    .local v22, "foregroundBytes":J
    add-long v24, v20, v22

    .line 1643
    .local v24, "totalBytes":J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/exsettings/DataUsageSummary;->mAppTotal:Landroid/widget/TextView;

    if-eqz v3, :cond_0

    .line 1644
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/exsettings/DataUsageSummary;->mAppTotal:Landroid/widget/TextView;

    move-wide/from16 v0, v24

    invoke-static {v2, v0, v1}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1646
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/exsettings/DataUsageSummary;->mAppBackground:Landroid/widget/TextView;

    move-wide/from16 v0, v20

    invoke-static {v2, v0, v1}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1647
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/exsettings/DataUsageSummary;->mAppForeground:Landroid/widget/TextView;

    move-wide/from16 v0, v22

    invoke-static {v2, v0, v1}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1650
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/exsettings/DataUsageSummary;->mChartData:Lcom/android/exsettingslib/net/ChartData;

    iget-object v11, v3, Lcom/android/exsettingslib/net/ChartData;->detail:Landroid/net/NetworkStatsHistory;

    const/16 v18, 0x0

    move-wide v12, v4

    move-wide v14, v6

    move-wide/from16 v16, v8

    invoke-virtual/range {v11 .. v18}, Landroid/net/NetworkStatsHistory;->getValues(JJJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v10

    .line 1652
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/DataUsageSummary;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v3

    const/4 v11, 0x3

    invoke-virtual {v3, v11}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 1654
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/exsettings/DataUsageSummary;->mCycleSummary:Landroid/widget/TextView;

    const/16 v11, 0x8

    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1668
    .end local v10    # "entry":Landroid/net/NetworkStatsHistory$Entry;
    .end local v20    # "defaultBytes":J
    .end local v22    # "foregroundBytes":J
    .end local v24    # "totalBytes":J
    :goto_0
    if-eqz v10, :cond_4

    iget-wide v12, v10, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    iget-wide v14, v10, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    add-long v24, v12, v14

    .line 1669
    .restart local v24    # "totalBytes":J
    :goto_1
    move-wide/from16 v0, v24

    invoke-static {v2, v0, v1}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v19

    .line 1670
    .local v19, "totalPhrase":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/exsettings/DataUsageSummary;->mCycleSummary:Landroid/widget/TextView;

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1672
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/exsettings/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/exsettings/DataUsageSummary;->isMobileTab(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string/jumbo v3, "3g"

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/exsettings/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1673
    const-string/jumbo v3, "4g"

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/exsettings/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 1672
    if-eqz v3, :cond_6

    .line 1674
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/android/exsettings/DataUsageSummary;->isAppDetailMode()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1675
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/exsettings/DataUsageSummary;->mDisclaimer:Landroid/view/View;

    const/16 v11, 0x8

    invoke-virtual {v3, v11}, Landroid/view/View;->setVisibility(I)V

    .line 1684
    :goto_2
    invoke-direct/range {p0 .. p0}, Lcom/android/exsettings/DataUsageSummary;->ensureLayoutTransitions()V

    .line 1625
    return-void

    .line 1657
    .end local v19    # "totalPhrase":Ljava/lang/String;
    .end local v24    # "totalBytes":J
    .local v10, "entry":Landroid/net/NetworkStatsHistory$Entry;
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/exsettings/DataUsageSummary;->mChartData:Lcom/android/exsettingslib/net/ChartData;

    if-eqz v3, :cond_3

    .line 1658
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/exsettings/DataUsageSummary;->mChartData:Lcom/android/exsettingslib/net/ChartData;

    iget-object v11, v3, Lcom/android/exsettingslib/net/ChartData;->network:Landroid/net/NetworkStatsHistory;

    const/16 v18, 0x0

    move-wide v12, v4

    move-wide v14, v6

    move-wide/from16 v16, v8

    invoke-virtual/range {v11 .. v18}, Landroid/net/NetworkStatsHistory;->getValues(JJJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v10

    .line 1661
    .end local v10    # "entry":Landroid/net/NetworkStatsHistory$Entry;
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/exsettings/DataUsageSummary;->mCycleSummary:Landroid/widget/TextView;

    const/4 v11, 0x0

    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1664
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/DataUsageSummary;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v3

    .line 1665
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/exsettings/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    invoke-static {v11, v4, v5, v6, v7}, Lcom/android/exsettingslib/net/SummaryForAllUidLoader;->buildArgs(Landroid/net/NetworkTemplate;JJ)Landroid/os/Bundle;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/exsettings/DataUsageSummary;->mSummaryCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 1664
    const/4 v13, 0x3

    invoke-virtual {v3, v13, v11, v12}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    goto :goto_0

    .line 1668
    :cond_4
    const-wide/16 v24, 0x0

    .restart local v24    # "totalBytes":J
    goto :goto_1

    .line 1677
    .restart local v19    # "totalPhrase":Ljava/lang/String;
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/exsettings/DataUsageSummary;->mDisclaimer:Landroid/view/View;

    const/4 v11, 0x0

    invoke-virtual {v3, v11}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 1680
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/exsettings/DataUsageSummary;->mDisclaimer:Landroid/view/View;

    const/16 v11, 0x8

    invoke-virtual {v3, v11}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2
.end method

.method private updateMenuTitles()V
    .locals 2

    .prologue
    .line 664
    iget-object v0, p0, Lcom/android/exsettings/DataUsageSummary;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v0}, Landroid/net/NetworkPolicyManager;->getRestrictBackground()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 665
    iget-object v0, p0, Lcom/android/exsettings/DataUsageSummary;->mMenuRestrictBackground:Landroid/view/MenuItem;

    const v1, 0x7f0c0cf2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 670
    :goto_0
    iget-boolean v0, p0, Lcom/android/exsettings/DataUsageSummary;->mShowWifi:Z

    if-eqz v0, :cond_1

    .line 671
    iget-object v0, p0, Lcom/android/exsettings/DataUsageSummary;->mMenuShowWifi:Landroid/view/MenuItem;

    const v1, 0x7f0c0cf5

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 676
    :goto_1
    iget-boolean v0, p0, Lcom/android/exsettings/DataUsageSummary;->mShowEthernet:Z

    if-eqz v0, :cond_2

    .line 677
    iget-object v0, p0, Lcom/android/exsettings/DataUsageSummary;->mMenuShowEthernet:Landroid/view/MenuItem;

    const v1, 0x7f0c0cf7

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 681
    :goto_2
    iget-boolean v0, p0, Lcom/android/exsettings/DataUsageSummary;->mShowAlerts:Z

    if-eqz v0, :cond_3

    .line 682
    iget-object v0, p0, Lcom/android/exsettings/DataUsageSummary;->mMenuDataAlerts:Landroid/view/MenuItem;

    const v1, 0x7f0c039e

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 663
    :goto_3
    return-void

    .line 667
    :cond_0
    iget-object v0, p0, Lcom/android/exsettings/DataUsageSummary;->mMenuRestrictBackground:Landroid/view/MenuItem;

    const v1, 0x7f0c0cf1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_0

    .line 673
    :cond_1
    iget-object v0, p0, Lcom/android/exsettings/DataUsageSummary;->mMenuShowWifi:Landroid/view/MenuItem;

    const v1, 0x7f0c0cf4

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_1

    .line 679
    :cond_2
    iget-object v0, p0, Lcom/android/exsettings/DataUsageSummary;->mMenuShowEthernet:Landroid/view/MenuItem;

    const v1, 0x7f0c0cf6

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_2

    .line 684
    :cond_3
    iget-object v0, p0, Lcom/android/exsettings/DataUsageSummary;->mMenuDataAlerts:Landroid/view/MenuItem;

    const v1, 0x7f0c039d

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_3
.end method

.method private updatePolicy(Z)V
    .locals 12
    .param p1, "refreshCycle"    # Z

    .prologue
    const/4 v8, 0x0

    const/16 v5, 0x8

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1356
    iget-boolean v0, p0, Lcom/android/exsettings/DataUsageSummary;->mDataEnabledSupported:Z

    .line 1357
    .local v0, "dataEnabledVisible":Z
    iget-boolean v1, p0, Lcom/android/exsettings/DataUsageSummary;->mDisableAtLimitSupported:Z

    .line 1359
    .local v1, "disableAtLimitVisible":Z
    invoke-direct {p0}, Lcom/android/exsettings/DataUsageSummary;->isAppDetailMode()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1360
    const/4 v0, 0x0

    .line 1361
    .local v0, "dataEnabledVisible":Z
    const/4 v1, 0x0

    .line 1365
    .end local v0    # "dataEnabledVisible":Z
    .end local v1    # "disableAtLimitVisible":Z
    :cond_0
    iget-object v6, p0, Lcom/android/exsettings/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    invoke-static {v6}, Lcom/android/exsettings/DataUsageSummary;->isMobileTab(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1366
    iput-boolean v3, p0, Lcom/android/exsettings/DataUsageSummary;->mBinding:Z

    .line 1367
    iget-object v6, p0, Lcom/android/exsettings/DataUsageSummary;->mDataEnabled:Landroid/widget/Switch;

    iget-object v7, p0, Lcom/android/exsettings/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    invoke-direct {p0, v7}, Lcom/android/exsettings/DataUsageSummary;->getSubId(Ljava/lang/String;)I

    move-result v7

    invoke-direct {p0, v7}, Lcom/android/exsettings/DataUsageSummary;->isMobileDataEnabled(I)Z

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/Switch;->setChecked(Z)V

    .line 1368
    iput-boolean v4, p0, Lcom/android/exsettings/DataUsageSummary;->mBinding:Z

    .line 1371
    :cond_1
    iget-object v6, p0, Lcom/android/exsettings/DataUsageSummary;->mPolicyEditor:Lcom/android/exsettingslib/NetworkPolicyEditor;

    iget-object v7, p0, Lcom/android/exsettings/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {v6, v7}, Lcom/android/exsettingslib/NetworkPolicyEditor;->getPolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v2

    .line 1373
    .local v2, "policy":Landroid/net/NetworkPolicy;
    invoke-direct {p0, v2}, Lcom/android/exsettings/DataUsageSummary;->isNetworkPolicyModifiable(Landroid/net/NetworkPolicy;)Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/android/exsettings/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/android/exsettings/DataUsageSummary;->getSubId(Ljava/lang/String;)I

    move-result v6

    invoke-direct {p0, v6}, Lcom/android/exsettings/DataUsageSummary;->isMobileDataAvailable(I)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1374
    iget-object v6, p0, Lcom/android/exsettings/DataUsageSummary;->mDisableAtLimit:Landroid/widget/Switch;

    if-eqz v2, :cond_4

    iget-wide v8, v2, Landroid/net/NetworkPolicy;->limitBytes:J

    const-wide/16 v10, -0x1

    cmp-long v7, v8, v10

    if-eqz v7, :cond_4

    :goto_0
    invoke-virtual {v6, v3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 1375
    invoke-direct {p0}, Lcom/android/exsettings/DataUsageSummary;->isAppDetailMode()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1376
    iget-object v3, p0, Lcom/android/exsettings/DataUsageSummary;->mChart:Lcom/android/exsettings/widget/ChartDataUsageView;

    invoke-virtual {v3, v2}, Lcom/android/exsettings/widget/ChartDataUsageView;->bindNetworkPolicy(Landroid/net/NetworkPolicy;)V

    .line 1385
    :cond_2
    :goto_1
    iget-object v6, p0, Lcom/android/exsettings/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    if-eqz v0, :cond_6

    move v3, v4

    :goto_2
    invoke-virtual {v6, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1386
    iget-object v3, p0, Lcom/android/exsettings/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    if-eqz v1, :cond_7

    :goto_3
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1388
    if-eqz p1, :cond_3

    .line 1390
    invoke-direct {p0, v2}, Lcom/android/exsettings/DataUsageSummary;->updateCycleList(Landroid/net/NetworkPolicy;)V

    .line 1355
    :cond_3
    return-void

    :cond_4
    move v3, v4

    .line 1374
    goto :goto_0

    .line 1381
    :cond_5
    const/4 v1, 0x0

    .line 1382
    .local v1, "disableAtLimitVisible":Z
    iget-object v3, p0, Lcom/android/exsettings/DataUsageSummary;->mChart:Lcom/android/exsettings/widget/ChartDataUsageView;

    invoke-virtual {v3, v8}, Lcom/android/exsettings/widget/ChartDataUsageView;->bindNetworkPolicy(Landroid/net/NetworkPolicy;)V

    goto :goto_1

    .end local v1    # "disableAtLimitVisible":Z
    :cond_6
    move v3, v5

    .line 1385
    goto :goto_2

    :cond_7
    move v4, v5

    .line 1386
    goto :goto_3
.end method

.method private updateShowAlertsState(Z)V
    .locals 3
    .param p1, "showAlert"    # Z

    .prologue
    .line 758
    iput-boolean p1, p0, Lcom/android/exsettings/DataUsageSummary;->mShowAlerts:Z

    .line 759
    iget-object v0, p0, Lcom/android/exsettings/DataUsageSummary;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "enable_data_usage_notify"

    iget-boolean v2, p0, Lcom/android/exsettings/DataUsageSummary;->mShowAlerts:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 760
    invoke-direct {p0}, Lcom/android/exsettings/DataUsageSummary;->updateMenuTitles()V

    .line 761
    invoke-virtual {p0}, Lcom/android/exsettings/DataUsageSummary;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/exsettings/DataUsageSummary;->mShowAlerts:Z

    invoke-static {v0, v1}, Lcom/android/exsettings/DataUsageUtils;->enableDataUsageService(Landroid/content/Context;Z)V

    .line 757
    return-void
.end method

.method private updateTabs()V
    .locals 15

    .prologue
    const/4 v14, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 801
    invoke-virtual {p0}, Lcom/android/exsettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 802
    .local v0, "context":Landroid/content/Context;
    iget-object v9, p0, Lcom/android/exsettings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v9}, Landroid/widget/TabHost;->clearAllTabs()V

    .line 804
    iget-object v9, p0, Lcom/android/exsettings/DataUsageSummary;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v4

    .line 806
    .local v4, "simCount":I
    iget-object v9, p0, Lcom/android/exsettings/DataUsageSummary;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v9}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v7

    .line 807
    .local v7, "sirs":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    if-eqz v7, :cond_1

    .line 808
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "sir$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/SubscriptionInfo;

    .line 809
    .local v5, "sir":Landroid/telephony/SubscriptionInfo;
    if-le v4, v10, :cond_0

    move v9, v10

    :goto_1
    invoke-direct {p0, v0, v5, v9}, Lcom/android/exsettings/DataUsageSummary;->addMobileTab(Landroid/content/Context;Landroid/telephony/SubscriptionInfo;Z)V

    goto :goto_0

    :cond_0
    move v9, v11

    goto :goto_1

    .line 813
    .end local v5    # "sir":Landroid/telephony/SubscriptionInfo;
    .end local v6    # "sir$iterator":Ljava/util/Iterator;
    :cond_1
    iget-boolean v9, p0, Lcom/android/exsettings/DataUsageSummary;->mShowWifi:Z

    if-eqz v9, :cond_2

    invoke-static {v0}, Lcom/android/exsettings/DataUsageSummary;->hasWifiRadio(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 814
    iget-object v9, p0, Lcom/android/exsettings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    const-string/jumbo v12, "wifi"

    const v13, 0x7f0c0d0b

    invoke-direct {p0, v12, v13}, Lcom/android/exsettings/DataUsageSummary;->buildTabSpec(Ljava/lang/String;I)Landroid/widget/TabHost$TabSpec;

    move-result-object v12

    invoke-virtual {v9, v12}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 817
    :cond_2
    iget-boolean v9, p0, Lcom/android/exsettings/DataUsageSummary;->mShowEthernet:Z

    if-eqz v9, :cond_3

    invoke-virtual {p0, v0}, Lcom/android/exsettings/DataUsageSummary;->hasEthernet(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 818
    iget-object v9, p0, Lcom/android/exsettings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    const-string/jumbo v12, "ethernet"

    const v13, 0x7f0c0d0c

    invoke-direct {p0, v12, v13}, Lcom/android/exsettings/DataUsageSummary;->buildTabSpec(Ljava/lang/String;I)Landroid/widget/TabHost$TabSpec;

    move-result-object v12

    invoke-virtual {v9, v12}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 821
    :cond_3
    invoke-virtual {p0}, Lcom/android/exsettings/DataUsageSummary;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v12, 0x7f100018

    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 822
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget-object v9, p0, Lcom/android/exsettings/DataUsageSummary;->mTabWidget:Landroid/widget/TabWidget;

    invoke-virtual {v9}, Landroid/widget/TabWidget;->getTabCount()I

    move-result v9

    if-ge v1, v9, :cond_4

    .line 823
    iget-object v9, p0, Lcom/android/exsettings/DataUsageSummary;->mTabWidget:Landroid/widget/TabWidget;

    invoke-virtual {v9, v1}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    const v12, 0x1020016

    invoke-virtual {v9, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 824
    .local v8, "tv":Landroid/widget/TextView;
    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 822
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 828
    .end local v1    # "i":I
    .end local v8    # "tv":Landroid/widget/TextView;
    :cond_4
    iget-object v9, p0, Lcom/android/exsettings/DataUsageSummary;->mTabWidget:Landroid/widget/TabWidget;

    invoke-virtual {v9}, Landroid/widget/TabWidget;->getTabCount()I

    move-result v9

    if-nez v9, :cond_6

    const/4 v3, 0x1

    .line 829
    .local v3, "noTabs":Z
    :goto_3
    iget-object v9, p0, Lcom/android/exsettings/DataUsageSummary;->mTabWidget:Landroid/widget/TabWidget;

    invoke-virtual {v9}, Landroid/widget/TabWidget;->getTabCount()I

    move-result v9

    if-le v9, v10, :cond_7

    const/4 v2, 0x1

    .line 830
    .local v2, "multipleTabs":Z
    :goto_4
    iget-object v9, p0, Lcom/android/exsettings/DataUsageSummary;->mTabWidget:Landroid/widget/TabWidget;

    if-eqz v2, :cond_8

    :goto_5
    invoke-virtual {v9, v11}, Landroid/widget/TabWidget;->setVisibility(I)V

    .line 831
    iget-object v9, p0, Lcom/android/exsettings/DataUsageSummary;->mIntentTab:Ljava/lang/String;

    if-eqz v9, :cond_a

    .line 832
    iget-object v9, p0, Lcom/android/exsettings/DataUsageSummary;->mIntentTab:Ljava/lang/String;

    iget-object v10, p0, Lcom/android/exsettings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v10}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 834
    invoke-direct {p0}, Lcom/android/exsettings/DataUsageSummary;->updateBody()V

    .line 838
    :goto_6
    iput-object v14, p0, Lcom/android/exsettings/DataUsageSummary;->mIntentTab:Ljava/lang/String;

    .line 800
    :cond_5
    :goto_7
    return-void

    .line 828
    .end local v2    # "multipleTabs":Z
    .end local v3    # "noTabs":Z
    :cond_6
    const/4 v3, 0x0

    .restart local v3    # "noTabs":Z
    goto :goto_3

    .line 829
    :cond_7
    const/4 v2, 0x0

    .restart local v2    # "multipleTabs":Z
    goto :goto_4

    .line 830
    :cond_8
    const/16 v11, 0x8

    goto :goto_5

    .line 836
    :cond_9
    iget-object v9, p0, Lcom/android/exsettings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    iget-object v10, p0, Lcom/android/exsettings/DataUsageSummary;->mIntentTab:Ljava/lang/String;

    invoke-virtual {v9, v10}, Landroid/widget/TabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    goto :goto_6

    .line 839
    :cond_a
    if-eqz v3, :cond_5

    .line 841
    invoke-direct {p0}, Lcom/android/exsettings/DataUsageSummary;->updateBody()V

    goto :goto_7
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 312
    const/16 v0, 0x25

    return v0
.end method

.method public hasEthernet(Landroid/content/Context;)Z
    .locals 12
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v11, 0x0

    .line 2784
    invoke-static {p1}, Landroid/net/ConnectivityManager;->from(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v6

    .line 2785
    .local v6, "conn":Landroid/net/ConnectivityManager;
    const/16 v0, 0x9

    invoke-virtual {v6, v0}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v10

    .line 2788
    .local v10, "hasEthernet":Z
    iget-object v0, p0, Lcom/android/exsettings/DataUsageSummary;->mStatsSession:Landroid/net/INetworkStatsSession;

    if-eqz v0, :cond_0

    .line 2790
    :try_start_0
    iget-object v0, p0, Lcom/android/exsettings/DataUsageSummary;->mStatsSession:Landroid/net/INetworkStatsSession;

    .line 2791
    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateEthernet()Landroid/net/NetworkTemplate;

    move-result-object v1

    const-wide/high16 v2, -0x8000000000000000L

    const-wide v4, 0x7fffffffffffffffL

    .line 2790
    invoke-interface/range {v0 .. v5}, Landroid/net/INetworkStatsSession;->getSummaryForNetwork(Landroid/net/NetworkTemplate;JJ)Landroid/net/NetworkStats;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkStats;->getTotalBytes()J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v8

    .line 2801
    .local v8, "ethernetBytes":J
    :goto_0
    if-eqz v10, :cond_1

    const-wide/16 v0, 0x0

    cmp-long v0, v8, v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    return v0

    .line 2793
    .end local v8    # "ethernetBytes":J
    :catch_0
    move-exception v7

    .line 2794
    .local v7, "e":Landroid/os/RemoteException;
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 2797
    .end local v7    # "e":Landroid/os/RemoteException;
    :cond_0
    const-wide/16 v8, 0x0

    .restart local v8    # "ethernetBytes":J
    goto :goto_0

    :cond_1
    move v0, v11

    .line 2801
    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 317
    invoke-super {p0, p1}, Lcom/android/exsettings/HighlightingFragment;->onCreate(Landroid/os/Bundle;)V

    .line 318
    invoke-virtual {p0}, Lcom/android/exsettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 321
    .local v1, "context":Landroid/content/Context;
    const-string/jumbo v3, "network_management"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    .line 320
    invoke-static {v3}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v3

    iput-object v3, p0, Lcom/android/exsettings/DataUsageSummary;->mNetworkService:Landroid/os/INetworkManagementService;

    .line 323
    const-string/jumbo v3, "netstats"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    .line 322
    invoke-static {v3}, Landroid/net/INetworkStatsService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkStatsService;

    move-result-object v3

    iput-object v3, p0, Lcom/android/exsettings/DataUsageSummary;->mStatsService:Landroid/net/INetworkStatsService;

    .line 324
    invoke-static {v1}, Landroid/net/NetworkPolicyManager;->from(Landroid/content/Context;)Landroid/net/NetworkPolicyManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/exsettings/DataUsageSummary;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    .line 325
    invoke-static {v1}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/exsettings/DataUsageSummary;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 326
    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/exsettings/DataUsageSummary;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 328
    invoke-virtual {p0}, Lcom/android/exsettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string/jumbo v4, "data_usage"

    invoke-virtual {v3, v4, v6}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    iput-object v3, p0, Lcom/android/exsettings/DataUsageSummary;->mPrefs:Landroid/content/SharedPreferences;

    .line 330
    new-instance v3, Lcom/android/exsettingslib/NetworkPolicyEditor;

    iget-object v4, p0, Lcom/android/exsettings/DataUsageSummary;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-direct {v3, v4}, Lcom/android/exsettingslib/NetworkPolicyEditor;-><init>(Landroid/net/NetworkPolicyManager;)V

    iput-object v3, p0, Lcom/android/exsettings/DataUsageSummary;->mPolicyEditor:Lcom/android/exsettingslib/NetworkPolicyEditor;

    .line 331
    iget-object v3, p0, Lcom/android/exsettings/DataUsageSummary;->mPolicyEditor:Lcom/android/exsettingslib/NetworkPolicyEditor;

    invoke-virtual {v3}, Lcom/android/exsettingslib/NetworkPolicyEditor;->read()V

    .line 333
    iget-object v3, p0, Lcom/android/exsettings/DataUsageSummary;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v3}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/android/exsettings/DataUsageSummary;->mSubInfoList:Ljava/util/List;

    .line 334
    iget-object v3, p0, Lcom/android/exsettings/DataUsageSummary;->mSubInfoList:Ljava/util/List;

    invoke-direct {p0, v3}, Lcom/android/exsettings/DataUsageSummary;->initMobileTabTag(Ljava/util/List;)Ljava/util/Map;

    move-result-object v3

    iput-object v3, p0, Lcom/android/exsettings/DataUsageSummary;->mMobileTagMap:Ljava/util/Map;

    .line 337
    :try_start_0
    iget-object v3, p0, Lcom/android/exsettings/DataUsageSummary;->mNetworkService:Landroid/os/INetworkManagementService;

    invoke-interface {v3}, Landroid/os/INetworkManagementService;->isBandwidthControlEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 338
    const-string/jumbo v3, "DataUsage"

    const-string/jumbo v4, "No bandwidth control; leaving"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    invoke-virtual {p0}, Lcom/android/exsettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->finish()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 347
    :cond_0
    :goto_0
    :try_start_1
    iget-object v3, p0, Lcom/android/exsettings/DataUsageSummary;->mStatsService:Landroid/net/INetworkStatsService;

    invoke-interface {v3}, Landroid/net/INetworkStatsService;->openSession()Landroid/net/INetworkStatsSession;

    move-result-object v3

    iput-object v3, p0, Lcom/android/exsettings/DataUsageSummary;->mStatsSession:Landroid/net/INetworkStatsSession;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 352
    iget-object v3, p0, Lcom/android/exsettings/DataUsageSummary;->mPrefs:Landroid/content/SharedPreferences;

    const-string/jumbo v4, "show_wifi"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/exsettings/DataUsageSummary;->mShowWifi:Z

    .line 353
    iget-object v3, p0, Lcom/android/exsettings/DataUsageSummary;->mPrefs:Landroid/content/SharedPreferences;

    const-string/jumbo v4, "show_ethernet"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/exsettings/DataUsageSummary;->mShowEthernet:Z

    .line 354
    iget-object v3, p0, Lcom/android/exsettings/DataUsageSummary;->mPrefs:Landroid/content/SharedPreferences;

    const-string/jumbo v4, "enable_data_usage_notify"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/exsettings/DataUsageSummary;->mShowAlerts:Z

    .line 357
    invoke-static {v1}, Lcom/android/exsettings/DataUsageSummary;->hasReadyMobileRadio(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 358
    iput-boolean v5, p0, Lcom/android/exsettings/DataUsageSummary;->mShowWifi:Z

    .line 359
    iput-boolean v5, p0, Lcom/android/exsettings/DataUsageSummary;->mShowEthernet:Z

    .line 362
    :cond_1
    new-instance v3, Lcom/android/exsettingslib/net/UidDetailProvider;

    invoke-direct {v3, v1}, Lcom/android/exsettingslib/net/UidDetailProvider;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/exsettings/DataUsageSummary;->mUidDetailProvider:Lcom/android/exsettingslib/net/UidDetailProvider;

    .line 364
    invoke-virtual {p0}, Lcom/android/exsettings/DataUsageSummary;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 365
    .local v0, "arguments":Landroid/os/Bundle;
    if-eqz v0, :cond_2

    .line 366
    const-string/jumbo v3, "showAppImmediatePkg"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/exsettings/DataUsageSummary;->mShowAppImmediatePkg:Ljava/lang/String;

    .line 369
    :cond_2
    invoke-virtual {p0, v5}, Lcom/android/exsettings/DataUsageSummary;->setHasOptionsMenu(Z)V

    .line 316
    return-void

    .line 341
    .end local v0    # "arguments":Landroid/os/Bundle;
    :catch_0
    move-exception v2

    .line 342
    .local v2, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "DataUsage"

    const-string/jumbo v4, "No bandwidth control; leaving"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    invoke-virtual {p0}, Lcom/android/exsettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 348
    .end local v2    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v2

    .line 349
    .restart local v2    # "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 599
    const v0, 0x7f140003

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 598
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 12
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v11, 0x0

    const/high16 v10, 0x7f130000

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 376
    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 377
    .local v0, "context":Landroid/content/Context;
    const v5, 0x7f04004e

    invoke-virtual {p1, v5, p2, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 380
    .local v4, "view":Landroid/view/View;
    const v5, 0x1020012

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TabHost;

    iput-object v5, p0, Lcom/android/exsettings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    .line 381
    const v5, 0x7f1300a6

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    iput-object v5, p0, Lcom/android/exsettings/DataUsageSummary;->mTabsContainer:Landroid/view/ViewGroup;

    .line 382
    const v5, 0x1020013

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TabWidget;

    iput-object v5, p0, Lcom/android/exsettings/DataUsageSummary;->mTabWidget:Landroid/widget/TabWidget;

    .line 383
    const v5, 0x102000a

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ListView;

    iput-object v5, p0, Lcom/android/exsettings/DataUsageSummary;->mListView:Landroid/widget/ListView;

    .line 387
    iget-object v5, p0, Lcom/android/exsettings/DataUsageSummary;->mListView:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getScrollBarStyle()I

    move-result v5

    .line 388
    const/high16 v6, 0x2000000

    .line 387
    if-ne v5, v6, :cond_2

    const/4 v2, 0x1

    .line 389
    .local v2, "shouldInset":Z
    :goto_0
    iput v8, p0, Lcom/android/exsettings/DataUsageSummary;->mInsetSide:I

    .line 392
    iget-object v5, p0, Lcom/android/exsettings/DataUsageSummary;->mListView:Landroid/widget/ListView;

    invoke-static {p2, v4, v5, v8}, Lcom/android/exsettings/Utils;->prepareCustomPreferencesList(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;Z)V

    .line 394
    iget-object v5, p0, Lcom/android/exsettings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v5}, Landroid/widget/TabHost;->setup()V

    .line 395
    iget-object v5, p0, Lcom/android/exsettings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    iget-object v6, p0, Lcom/android/exsettings/DataUsageSummary;->mTabListener:Landroid/widget/TabHost$OnTabChangeListener;

    invoke-virtual {v5, v6}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 397
    iget-object v5, p0, Lcom/android/exsettings/DataUsageSummary;->mListView:Landroid/widget/ListView;

    const v6, 0x7f04004c

    invoke-virtual {p1, v6, v5, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    iput-object v5, p0, Lcom/android/exsettings/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    .line 398
    iget-object v5, p0, Lcom/android/exsettings/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    invoke-virtual {v5, v9}, Landroid/view/ViewGroup;->setClickable(Z)V

    .line 400
    iget-object v5, p0, Lcom/android/exsettings/DataUsageSummary;->mListView:Landroid/widget/ListView;

    new-instance v6, Landroid/view/View;

    invoke-direct {v6, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v6, v11, v9}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 401
    iget-object v5, p0, Lcom/android/exsettings/DataUsageSummary;->mListView:Landroid/widget/ListView;

    iget-object v6, p0, Lcom/android/exsettings/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    invoke-virtual {v5, v6, v11, v9}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 402
    iget-object v5, p0, Lcom/android/exsettings/DataUsageSummary;->mListView:Landroid/widget/ListView;

    invoke-virtual {v5, v9}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 404
    iget v5, p0, Lcom/android/exsettings/DataUsageSummary;->mInsetSide:I

    if-lez v5, :cond_0

    .line 406
    iget-object v5, p0, Lcom/android/exsettings/DataUsageSummary;->mListView:Landroid/widget/ListView;

    iget v6, p0, Lcom/android/exsettings/DataUsageSummary;->mInsetSide:I

    invoke-static {v5, v6}, Lcom/android/exsettings/DataUsageSummary;->insetListViewDrawables(Landroid/widget/ListView;I)V

    .line 407
    iget-object v5, p0, Lcom/android/exsettings/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    iget v6, p0, Lcom/android/exsettings/DataUsageSummary;->mInsetSide:I

    iget v7, p0, Lcom/android/exsettings/DataUsageSummary;->mInsetSide:I

    invoke-virtual {v5, v6, v8, v7, v8}, Landroid/view/ViewGroup;->setPaddingRelative(IIII)V

    .line 412
    :cond_0
    iget-object v5, p0, Lcom/android/exsettings/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    .line 413
    const v6, 0x7f1300a2

    .line 412
    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    iput-object v5, p0, Lcom/android/exsettings/DataUsageSummary;->mNetworkSwitchesContainer:Landroid/view/ViewGroup;

    .line 414
    iget-object v5, p0, Lcom/android/exsettings/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    const v6, 0x7f1300a3

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Lcom/android/exsettings/DataUsageSummary;->mNetworkSwitches:Landroid/widget/LinearLayout;

    .line 416
    new-instance v5, Landroid/widget/Switch;

    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/exsettings/DataUsageSummary;->mDataEnabled:Landroid/widget/Switch;

    .line 417
    iget-object v5, p0, Lcom/android/exsettings/DataUsageSummary;->mDataEnabled:Landroid/widget/Switch;

    invoke-virtual {v5, v8}, Landroid/widget/Switch;->setClickable(Z)V

    .line 418
    iget-object v5, p0, Lcom/android/exsettings/DataUsageSummary;->mDataEnabled:Landroid/widget/Switch;

    invoke-virtual {v5, v8}, Landroid/widget/Switch;->setFocusable(Z)V

    .line 419
    iget-object v5, p0, Lcom/android/exsettings/DataUsageSummary;->mNetworkSwitches:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/android/exsettings/DataUsageSummary;->mDataEnabled:Landroid/widget/Switch;

    invoke-static {p1, v5, v6}, Lcom/android/exsettings/DataUsageSummary;->inflatePreference(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/exsettings/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    .line 420
    iget-object v5, p0, Lcom/android/exsettings/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    .line 421
    const-string/jumbo v6, "data_usage_enable_mobile"

    .line 420
    invoke-virtual {v5, v10, v6}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 422
    iget-object v5, p0, Lcom/android/exsettings/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    invoke-virtual {v5, v9}, Landroid/view/View;->setClickable(Z)V

    .line 423
    iget-object v5, p0, Lcom/android/exsettings/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    invoke-virtual {v5, v9}, Landroid/view/View;->setFocusable(Z)V

    .line 424
    iget-object v5, p0, Lcom/android/exsettings/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    iget-object v6, p0, Lcom/android/exsettings/DataUsageSummary;->mDataEnabledListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 425
    iget-object v5, p0, Lcom/android/exsettings/DataUsageSummary;->mNetworkSwitches:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/android/exsettings/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 427
    new-instance v5, Landroid/widget/Switch;

    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/exsettings/DataUsageSummary;->mDisableAtLimit:Landroid/widget/Switch;

    .line 428
    iget-object v5, p0, Lcom/android/exsettings/DataUsageSummary;->mDisableAtLimit:Landroid/widget/Switch;

    invoke-virtual {v5, v8}, Landroid/widget/Switch;->setClickable(Z)V

    .line 429
    iget-object v5, p0, Lcom/android/exsettings/DataUsageSummary;->mDisableAtLimit:Landroid/widget/Switch;

    invoke-virtual {v5, v8}, Landroid/widget/Switch;->setFocusable(Z)V

    .line 430
    iget-object v5, p0, Lcom/android/exsettings/DataUsageSummary;->mNetworkSwitches:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/android/exsettings/DataUsageSummary;->mDisableAtLimit:Landroid/widget/Switch;

    invoke-static {p1, v5, v6}, Lcom/android/exsettings/DataUsageSummary;->inflatePreference(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/exsettings/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    .line 431
    iget-object v5, p0, Lcom/android/exsettings/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    .line 432
    const-string/jumbo v6, "data_usage_disable_mobile_limit"

    .line 431
    invoke-virtual {v5, v10, v6}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 433
    iget-object v5, p0, Lcom/android/exsettings/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    invoke-virtual {v5, v9}, Landroid/view/View;->setClickable(Z)V

    .line 434
    iget-object v5, p0, Lcom/android/exsettings/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    invoke-virtual {v5, v9}, Landroid/view/View;->setFocusable(Z)V

    .line 435
    iget-object v5, p0, Lcom/android/exsettings/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    iget-object v6, p0, Lcom/android/exsettings/DataUsageSummary;->mDisableAtLimitListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 436
    iget-object v5, p0, Lcom/android/exsettings/DataUsageSummary;->mNetworkSwitches:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/android/exsettings/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 438
    iget-object v5, p0, Lcom/android/exsettings/DataUsageSummary;->mNetworkSwitches:Landroid/widget/LinearLayout;

    const v6, 0x7f04004a

    invoke-virtual {p1, v6, v5, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/exsettings/DataUsageSummary;->mCycleView:Landroid/view/View;

    .line 439
    iget-object v5, p0, Lcom/android/exsettings/DataUsageSummary;->mCycleView:Landroid/view/View;

    const-string/jumbo v6, "data_usage_cycle"

    invoke-virtual {v5, v10, v6}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 440
    iget-object v5, p0, Lcom/android/exsettings/DataUsageSummary;->mCycleView:Landroid/view/View;

    const v6, 0x7f13009b

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Spinner;

    iput-object v5, p0, Lcom/android/exsettings/DataUsageSummary;->mCycleSpinner:Landroid/widget/Spinner;

    .line 441
    new-instance v5, Lcom/android/exsettings/DataUsageSummary$CycleAdapter;

    invoke-direct {v5, v0}, Lcom/android/exsettings/DataUsageSummary$CycleAdapter;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/exsettings/DataUsageSummary;->mCycleAdapter:Lcom/android/exsettings/DataUsageSummary$CycleAdapter;

    .line 442
    iget-object v5, p0, Lcom/android/exsettings/DataUsageSummary;->mCycleSpinner:Landroid/widget/Spinner;

    iget-object v6, p0, Lcom/android/exsettings/DataUsageSummary;->mCycleAdapter:Lcom/android/exsettings/DataUsageSummary$CycleAdapter;

    invoke-virtual {v5, v6}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 443
    iget-object v5, p0, Lcom/android/exsettings/DataUsageSummary;->mCycleSpinner:Landroid/widget/Spinner;

    iget-object v6, p0, Lcom/android/exsettings/DataUsageSummary;->mCycleListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v5, v6}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 444
    iget-object v5, p0, Lcom/android/exsettings/DataUsageSummary;->mCycleView:Landroid/view/View;

    const v6, 0x7f13009c

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/exsettings/DataUsageSummary;->mCycleSummary:Landroid/widget/TextView;

    .line 445
    iget-object v5, p0, Lcom/android/exsettings/DataUsageSummary;->mNetworkSwitches:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/android/exsettings/DataUsageSummary;->mCycleView:Landroid/view/View;

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 446
    const v5, 0x7f130096

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/exsettings/widget/ChartNetworkSeriesView;

    iput-object v5, p0, Lcom/android/exsettings/DataUsageSummary;->mSeries:Lcom/android/exsettings/widget/ChartNetworkSeriesView;

    .line 447
    const v5, 0x7f130097

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/exsettings/widget/ChartNetworkSeriesView;

    iput-object v5, p0, Lcom/android/exsettings/DataUsageSummary;->mDetailedSeries:Lcom/android/exsettings/widget/ChartNetworkSeriesView;

    .line 450
    iget-object v5, p0, Lcom/android/exsettings/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    const v6, 0x7f130094

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/exsettings/widget/ChartDataUsageView;

    iput-object v5, p0, Lcom/android/exsettings/DataUsageSummary;->mChart:Lcom/android/exsettings/widget/ChartDataUsageView;

    .line 451
    iget-object v5, p0, Lcom/android/exsettings/DataUsageSummary;->mChart:Lcom/android/exsettings/widget/ChartDataUsageView;

    iget-object v6, p0, Lcom/android/exsettings/DataUsageSummary;->mChartListener:Lcom/android/exsettings/widget/ChartDataUsageView$DataUsageChartListener;

    invoke-virtual {v5, v6}, Lcom/android/exsettings/widget/ChartDataUsageView;->setListener(Lcom/android/exsettings/widget/ChartDataUsageView$DataUsageChartListener;)V

    .line 452
    iget-object v5, p0, Lcom/android/exsettings/DataUsageSummary;->mChart:Lcom/android/exsettings/widget/ChartDataUsageView;

    invoke-virtual {v5, v11}, Lcom/android/exsettings/widget/ChartDataUsageView;->bindNetworkPolicy(Landroid/net/NetworkPolicy;)V

    .line 456
    iget-object v5, p0, Lcom/android/exsettings/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    const v6, 0x7f13009d

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/exsettings/DataUsageSummary;->mAppDetail:Landroid/view/View;

    .line 457
    iget-object v5, p0, Lcom/android/exsettings/DataUsageSummary;->mAppDetail:Landroid/view/View;

    const v6, 0x7f13001f

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/android/exsettings/DataUsageSummary;->mAppIcon:Landroid/widget/ImageView;

    .line 458
    iget-object v5, p0, Lcom/android/exsettings/DataUsageSummary;->mAppDetail:Landroid/view/View;

    const v6, 0x7f13009e

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    iput-object v5, p0, Lcom/android/exsettings/DataUsageSummary;->mAppTitles:Landroid/view/ViewGroup;

    .line 459
    iget-object v5, p0, Lcom/android/exsettings/DataUsageSummary;->mAppDetail:Landroid/view/View;

    const v6, 0x7f13009f

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/exsettings/DataUsageSummary;->mAppForeground:Landroid/widget/TextView;

    .line 460
    iget-object v5, p0, Lcom/android/exsettings/DataUsageSummary;->mAppDetail:Landroid/view/View;

    const v6, 0x7f1300a0

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/exsettings/DataUsageSummary;->mAppBackground:Landroid/widget/TextView;

    .line 461
    iget-object v5, p0, Lcom/android/exsettings/DataUsageSummary;->mAppDetail:Landroid/view/View;

    const v6, 0x7f1300a1

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Lcom/android/exsettings/DataUsageSummary;->mAppSwitches:Landroid/widget/LinearLayout;

    .line 463
    iget-object v5, p0, Lcom/android/exsettings/DataUsageSummary;->mAppDetail:Landroid/view/View;

    const v6, 0x7f130021

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/android/exsettings/DataUsageSummary;->mAppSettings:Landroid/widget/Button;

    .line 465
    new-instance v1, Landroid/widget/ArrayAdapter;

    .line 466
    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 467
    invoke-virtual {p0}, Lcom/android/exsettings/DataUsageSummary;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a00a6

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    .line 466
    const v7, 0x1090009

    .line 465
    invoke-direct {v1, v5, v7, v6}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 469
    .local v1, "restrictAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    new-instance v5, Landroid/widget/Spinner;

    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/exsettings/DataUsageSummary;->mRestrictSpinner:Landroid/widget/Spinner;

    .line 470
    iget-object v5, p0, Lcom/android/exsettings/DataUsageSummary;->mRestrictSpinner:Landroid/widget/Spinner;

    invoke-virtual {v5, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 471
    iget-object v5, p0, Lcom/android/exsettings/DataUsageSummary;->mRestrictSpinner:Landroid/widget/Spinner;

    iget-object v6, p0, Lcom/android/exsettings/DataUsageSummary;->mAppRestrictListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v5, v6}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 474
    iget-object v5, p0, Lcom/android/exsettings/DataUsageSummary;->mAppSwitches:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/android/exsettings/DataUsageSummary;->mRestrictSpinner:Landroid/widget/Spinner;

    .line 473
    invoke-static {p1, v5, v6}, Lcom/android/exsettings/DataUsageSummary;->inflatePreferenceWithInvisibleWidget(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/exsettings/DataUsageSummary;->mAppRestrictView:Landroid/view/View;

    .line 475
    iget-object v5, p0, Lcom/android/exsettings/DataUsageSummary;->mAppRestrictView:Landroid/view/View;

    invoke-virtual {v5, v9}, Landroid/view/View;->setClickable(Z)V

    .line 476
    iget-object v5, p0, Lcom/android/exsettings/DataUsageSummary;->mAppRestrictView:Landroid/view/View;

    invoke-virtual {v5, v9}, Landroid/view/View;->setFocusable(Z)V

    .line 477
    iget-object v5, p0, Lcom/android/exsettings/DataUsageSummary;->mAppRestrictView:Landroid/view/View;

    new-instance v6, Lcom/android/exsettings/DataUsageSummary$14;

    invoke-direct {v6, p0}, Lcom/android/exsettings/DataUsageSummary$14;-><init>(Lcom/android/exsettings/DataUsageSummary;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 483
    iget-object v5, p0, Lcom/android/exsettings/DataUsageSummary;->mAppSwitches:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/android/exsettings/DataUsageSummary;->mAppRestrictView:Landroid/view/View;

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 486
    new-instance v5, Landroid/widget/Switch;

    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/exsettings/DataUsageSummary;->mAppDataAlert:Landroid/widget/Switch;

    .line 487
    iget-object v5, p0, Lcom/android/exsettings/DataUsageSummary;->mAppDataAlert:Landroid/widget/Switch;

    invoke-virtual {v5, v8}, Landroid/widget/Switch;->setClickable(Z)V

    .line 488
    iget-object v5, p0, Lcom/android/exsettings/DataUsageSummary;->mAppDataAlert:Landroid/widget/Switch;

    invoke-virtual {v5, v8}, Landroid/widget/Switch;->setFocusable(Z)V

    .line 489
    iget-object v5, p0, Lcom/android/exsettings/DataUsageSummary;->mAppSwitches:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/android/exsettings/DataUsageSummary;->mAppDataAlert:Landroid/widget/Switch;

    invoke-static {p1, v5, v6}, Lcom/android/exsettings/DataUsageSummary;->inflatePreference(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/exsettings/DataUsageSummary;->mAppDataAlertView:Landroid/view/View;

    .line 490
    iget-object v5, p0, Lcom/android/exsettings/DataUsageSummary;->mAppDataAlertView:Landroid/view/View;

    invoke-virtual {v5, v9}, Landroid/view/View;->setClickable(Z)V

    .line 491
    iget-object v5, p0, Lcom/android/exsettings/DataUsageSummary;->mAppDataAlertView:Landroid/view/View;

    invoke-virtual {v5, v9}, Landroid/view/View;->setFocusable(Z)V

    .line 492
    iget-object v5, p0, Lcom/android/exsettings/DataUsageSummary;->mAppDataAlertView:Landroid/view/View;

    iget-object v6, p0, Lcom/android/exsettings/DataUsageSummary;->mAppDataAlertListner:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 493
    iget-object v5, p0, Lcom/android/exsettings/DataUsageSummary;->mAppSwitches:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/android/exsettings/DataUsageSummary;->mAppDataAlertView:Landroid/view/View;

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 496
    invoke-static {v0}, Lcom/android/exsettings/DataUsageUtils;->isDbEnabled(Landroid/content/Context;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/exsettings/DataUsageSummary;->mDataAlertsSupported:Z

    .line 497
    iget-boolean v5, p0, Lcom/android/exsettings/DataUsageSummary;->mDataAlertsSupported:Z

    if-nez v5, :cond_1

    .line 498
    iget-object v5, p0, Lcom/android/exsettings/DataUsageSummary;->mAppDataAlertView:Landroid/view/View;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 502
    :cond_1
    new-instance v5, Landroid/widget/Switch;

    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/exsettings/DataUsageSummary;->mAppCellularAccess:Landroid/widget/Switch;

    .line 503
    iget-object v5, p0, Lcom/android/exsettings/DataUsageSummary;->mAppCellularAccess:Landroid/widget/Switch;

    invoke-virtual {v5, v8}, Landroid/widget/Switch;->setClickable(Z)V

    .line 504
    iget-object v5, p0, Lcom/android/exsettings/DataUsageSummary;->mAppCellularAccess:Landroid/widget/Switch;

    invoke-virtual {v5, v8}, Landroid/widget/Switch;->setFocusable(Z)V

    .line 505
    iget-object v5, p0, Lcom/android/exsettings/DataUsageSummary;->mAppSwitches:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/android/exsettings/DataUsageSummary;->mAppCellularAccess:Landroid/widget/Switch;

    invoke-static {p1, v5, v6}, Lcom/android/exsettings/DataUsageSummary;->inflatePreference(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/exsettings/DataUsageSummary;->mAppCellularAccessView:Landroid/view/View;

    .line 506
    iget-object v5, p0, Lcom/android/exsettings/DataUsageSummary;->mAppCellularAccessView:Landroid/view/View;

    invoke-virtual {v5, v9}, Landroid/view/View;->setClickable(Z)V

    .line 507
    iget-object v5, p0, Lcom/android/exsettings/DataUsageSummary;->mAppCellularAccessView:Landroid/view/View;

    invoke-virtual {v5, v9}, Landroid/view/View;->setFocusable(Z)V

    .line 508
    iget-object v5, p0, Lcom/android/exsettings/DataUsageSummary;->mAppCellularAccessView:Landroid/view/View;

    iget-object v6, p0, Lcom/android/exsettings/DataUsageSummary;->mAppRestrictCellularListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 509
    iget-object v5, p0, Lcom/android/exsettings/DataUsageSummary;->mAppSwitches:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/android/exsettings/DataUsageSummary;->mAppCellularAccessView:Landroid/view/View;

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 512
    iget-object v5, p0, Lcom/android/exsettings/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    const v6, 0x7f1300a4

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/exsettings/DataUsageSummary;->mDisclaimer:Landroid/view/View;

    .line 513
    iget-object v5, p0, Lcom/android/exsettings/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    const v6, 0x1020004

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/exsettings/DataUsageSummary;->mEmpty:Landroid/widget/TextView;

    .line 514
    iget-object v5, p0, Lcom/android/exsettings/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    const v6, 0x7f1300a5

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/exsettings/DataUsageSummary;->mStupidPadding:Landroid/view/View;

    .line 516
    const-string/jumbo v5, "user"

    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserManager;

    .line 517
    .local v3, "um":Landroid/os/UserManager;
    new-instance v5, Lcom/android/exsettings/DataUsageSummary$DataUsageAdapter;

    iget-object v6, p0, Lcom/android/exsettings/DataUsageSummary;->mUidDetailProvider:Lcom/android/exsettingslib/net/UidDetailProvider;

    iget v7, p0, Lcom/android/exsettings/DataUsageSummary;->mInsetSide:I

    invoke-direct {v5, v3, v6, v7}, Lcom/android/exsettings/DataUsageSummary$DataUsageAdapter;-><init>(Landroid/os/UserManager;Lcom/android/exsettingslib/net/UidDetailProvider;I)V

    iput-object v5, p0, Lcom/android/exsettings/DataUsageSummary;->mAdapter:Lcom/android/exsettings/DataUsageSummary$DataUsageAdapter;

    .line 518
    iget-object v5, p0, Lcom/android/exsettings/DataUsageSummary;->mListView:Landroid/widget/ListView;

    iget-object v6, p0, Lcom/android/exsettings/DataUsageSummary;->mListListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 519
    iget-object v5, p0, Lcom/android/exsettings/DataUsageSummary;->mListView:Landroid/widget/ListView;

    iget-object v6, p0, Lcom/android/exsettings/DataUsageSummary;->mAdapter:Lcom/android/exsettings/DataUsageSummary$DataUsageAdapter;

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 521
    invoke-direct {p0, v4}, Lcom/android/exsettings/DataUsageSummary;->showRequestedAppIfNeeded(Landroid/view/View;)V

    .line 523
    return-object v4

    .line 387
    .end local v1    # "restrictAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    .end local v2    # "shouldInset":Z
    .end local v3    # "um":Landroid/os/UserManager;
    :cond_2
    const/4 v2, 0x0

    .restart local v2    # "shouldInset":Z
    goto/16 :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 746
    iput-object v1, p0, Lcom/android/exsettings/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    .line 747
    iput-object v1, p0, Lcom/android/exsettings/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    .line 749
    iget-object v0, p0, Lcom/android/exsettings/DataUsageSummary;->mUidDetailProvider:Lcom/android/exsettingslib/net/UidDetailProvider;

    invoke-virtual {v0}, Lcom/android/exsettingslib/net/UidDetailProvider;->clearCache()V

    .line 750
    iput-object v1, p0, Lcom/android/exsettings/DataUsageSummary;->mUidDetailProvider:Lcom/android/exsettingslib/net/UidDetailProvider;

    .line 752
    iget-object v0, p0, Lcom/android/exsettings/DataUsageSummary;->mStatsSession:Landroid/net/INetworkStatsSession;

    invoke-static {v0}, Landroid/net/TrafficStats;->closeQuietly(Landroid/net/INetworkStatsSession;)V

    .line 754
    invoke-super {p0}, Lcom/android/exsettings/HighlightingFragment;->onDestroy()V

    .line 745
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 10
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x0

    const/4 v9, 0x1

    .line 690
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 741
    :pswitch_0
    return v6

    .line 692
    :pswitch_1
    iget-object v1, p0, Lcom/android/exsettings/DataUsageSummary;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v1}, Landroid/net/NetworkPolicyManager;->getRestrictBackground()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v8, 0x0

    .line 693
    .local v8, "restrictBackground":Z
    :goto_0
    if-eqz v8, :cond_1

    .line 694
    invoke-static {p0}, Lcom/android/exsettings/DataUsageSummary$ConfirmRestrictFragment;->show(Lcom/android/exsettings/DataUsageSummary;)V

    .line 699
    :goto_1
    return v9

    .line 692
    .end local v8    # "restrictBackground":Z
    :cond_0
    const/4 v8, 0x1

    .restart local v8    # "restrictBackground":Z
    goto :goto_0

    .line 697
    :cond_1
    invoke-virtual {p0, v6}, Lcom/android/exsettings/DataUsageSummary;->setRestrictBackground(Z)V

    goto :goto_1

    .line 702
    .end local v8    # "restrictBackground":Z
    :pswitch_2
    iget-boolean v1, p0, Lcom/android/exsettings/DataUsageSummary;->mShowWifi:Z

    if-eqz v1, :cond_2

    :goto_2
    iput-boolean v6, p0, Lcom/android/exsettings/DataUsageSummary;->mShowWifi:Z

    .line 703
    iget-object v1, p0, Lcom/android/exsettings/DataUsageSummary;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v2, "show_wifi"

    iget-boolean v3, p0, Lcom/android/exsettings/DataUsageSummary;->mShowWifi:Z

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 704
    invoke-direct {p0}, Lcom/android/exsettings/DataUsageSummary;->updateMenuTitles()V

    .line 705
    invoke-direct {p0}, Lcom/android/exsettings/DataUsageSummary;->updateTabs()V

    .line 706
    return v9

    :cond_2
    move v6, v9

    .line 702
    goto :goto_2

    .line 709
    :pswitch_3
    iget-boolean v1, p0, Lcom/android/exsettings/DataUsageSummary;->mShowEthernet:Z

    if-eqz v1, :cond_3

    :goto_3
    iput-boolean v6, p0, Lcom/android/exsettings/DataUsageSummary;->mShowEthernet:Z

    .line 710
    iget-object v1, p0, Lcom/android/exsettings/DataUsageSummary;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v2, "show_ethernet"

    iget-boolean v3, p0, Lcom/android/exsettings/DataUsageSummary;->mShowEthernet:Z

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 711
    invoke-direct {p0}, Lcom/android/exsettings/DataUsageSummary;->updateMenuTitles()V

    .line 712
    invoke-direct {p0}, Lcom/android/exsettings/DataUsageSummary;->updateTabs()V

    .line 713
    return v9

    :cond_3
    move v6, v9

    .line 709
    goto :goto_3

    .line 717
    :pswitch_4
    return v9

    .line 720
    :pswitch_5
    new-instance v7, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.MAIN"

    invoke-direct {v7, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 721
    .local v7, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string/jumbo v2, "com.android.phone"

    .line 722
    const-string/jumbo v3, "com.android.phone.MobileNetworkSettings"

    .line 721
    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 723
    invoke-virtual {p0, v7}, Lcom/android/exsettings/DataUsageSummary;->startActivity(Landroid/content/Intent;)V

    .line 724
    return v9

    .line 727
    .end local v7    # "intent":Landroid/content/Intent;
    :pswitch_6
    invoke-virtual {p0}, Lcom/android/exsettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/exsettings/SettingsActivity;

    .line 728
    .local v0, "sa":Lcom/android/exsettings/SettingsActivity;
    const-class v1, Lcom/android/exsettings/net/DataUsageMeteredSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    .line 729
    const v3, 0x7f0c0d31

    move-object v4, v2

    move-object v5, p0

    .line 728
    invoke-virtual/range {v0 .. v6}, Lcom/android/exsettings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 730
    return v9

    .line 733
    .end local v0    # "sa":Lcom/android/exsettings/SettingsActivity;
    :pswitch_7
    iget-object v1, p0, Lcom/android/exsettings/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    invoke-static {p0, v1}, Lcom/android/exsettings/DataUsageSummary$ConfirmDataResetFragment;->show(Lcom/android/exsettings/DataUsageSummary;Landroid/net/NetworkTemplate;)V

    .line 734
    return v9

    .line 737
    :pswitch_8
    iget-boolean v1, p0, Lcom/android/exsettings/DataUsageSummary;->mShowAlerts:Z

    if-eqz v1, :cond_4

    :goto_4
    invoke-direct {p0, v6}, Lcom/android/exsettings/DataUsageSummary;->updateShowAlertsState(Z)V

    .line 738
    return v9

    :cond_4
    move v6, v9

    .line 737
    goto :goto_4

    .line 690
    :pswitch_data_0
    .packed-switch 0x7f13031d
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_6
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_8
        :pswitch_7
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 10
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 604
    invoke-virtual {p0}, Lcom/android/exsettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 605
    .local v1, "context":Landroid/content/Context;
    invoke-direct {p0}, Lcom/android/exsettings/DataUsageSummary;->isAppDetailMode()Z

    move-result v0

    .line 606
    .local v0, "appDetailMode":Z
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v6

    if-nez v6, :cond_4

    const/4 v4, 0x1

    .line 608
    .local v4, "isOwner":Z
    :goto_0
    const v6, 0x7f13031e

    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    iput-object v6, p0, Lcom/android/exsettings/DataUsageSummary;->mMenuShowWifi:Landroid/view/MenuItem;

    .line 609
    invoke-static {v1}, Lcom/android/exsettings/DataUsageSummary;->hasWifiRadio(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-static {v1}, Lcom/android/exsettings/DataUsageSummary;->hasReadyMobileRadio(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 610
    iget-object v9, p0, Lcom/android/exsettings/DataUsageSummary;->mMenuShowWifi:Landroid/view/MenuItem;

    if-eqz v0, :cond_5

    move v6, v7

    :goto_1
    invoke-interface {v9, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 615
    :goto_2
    const v6, 0x7f13031f

    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    iput-object v6, p0, Lcom/android/exsettings/DataUsageSummary;->mMenuShowEthernet:Landroid/view/MenuItem;

    .line 616
    invoke-virtual {p0, v1}, Lcom/android/exsettings/DataUsageSummary;->hasEthernet(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-static {v1}, Lcom/android/exsettings/DataUsageSummary;->hasReadyMobileRadio(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 617
    iget-object v9, p0, Lcom/android/exsettings/DataUsageSummary;->mMenuShowEthernet:Landroid/view/MenuItem;

    if-eqz v0, :cond_7

    move v6, v7

    :goto_3
    invoke-interface {v9, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 622
    :goto_4
    const v6, 0x7f13031d

    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    iput-object v6, p0, Lcom/android/exsettings/DataUsageSummary;->mMenuRestrictBackground:Landroid/view/MenuItem;

    .line 623
    iget-object v9, p0, Lcom/android/exsettings/DataUsageSummary;->mMenuRestrictBackground:Landroid/view/MenuItem;

    .line 624
    invoke-static {v1}, Lcom/android/exsettings/DataUsageSummary;->hasReadyMobileRadio(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_0

    if-eqz v4, :cond_0

    if-eqz v0, :cond_9

    :cond_0
    move v6, v7

    .line 623
    :goto_5
    invoke-interface {v9, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 626
    const v6, 0x7f130320

    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    .line 627
    .local v5, "metered":Landroid/view/MenuItem;
    invoke-static {v1}, Lcom/android/exsettings/DataUsageSummary;->hasReadyMobileRadio(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-static {v1}, Lcom/android/exsettings/DataUsageSummary;->hasWifiRadio(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 628
    :cond_1
    if-eqz v0, :cond_a

    move v6, v7

    :goto_6
    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 634
    :goto_7
    const v6, 0x7f130321

    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    iput-object v6, p0, Lcom/android/exsettings/DataUsageSummary;->mMenuSimCards:Landroid/view/MenuItem;

    .line 635
    iget-object v6, p0, Lcom/android/exsettings/DataUsageSummary;->mMenuSimCards:Landroid/view/MenuItem;

    invoke-interface {v6, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 637
    const v6, 0x7f130322

    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    iput-object v6, p0, Lcom/android/exsettings/DataUsageSummary;->mMenuCellularNetworks:Landroid/view/MenuItem;

    .line 638
    iget-object v6, p0, Lcom/android/exsettings/DataUsageSummary;->mMenuCellularNetworks:Landroid/view/MenuItem;

    invoke-static {v1}, Lcom/android/exsettings/DataUsageSummary;->hasReadyMobileRadio(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 639
    if-eqz v0, :cond_3

    :cond_2
    move v4, v7

    .line 638
    .end local v4    # "isOwner":Z
    :cond_3
    invoke-interface {v6, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 641
    const v6, 0x7f130323

    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 643
    .local v2, "help":Landroid/view/MenuItem;
    invoke-virtual {p0}, Lcom/android/exsettings/DataUsageSummary;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v9, 0x7f0c0ddd

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .local v3, "helpUrl":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_c

    .line 644
    invoke-virtual {p0}, Lcom/android/exsettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/exsettings/DataUsageSummary;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v2, v3, v9}, Lcom/android/exsettings/HelpUtils;->prepareHelpMenuItem(Landroid/app/Activity;Landroid/view/MenuItem;Ljava/lang/String;Ljava/lang/String;)Z

    .line 649
    :goto_8
    const v6, 0x7f130324

    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    iput-object v6, p0, Lcom/android/exsettings/DataUsageSummary;->mMenuDataAlerts:Landroid/view/MenuItem;

    .line 651
    iget-boolean v6, p0, Lcom/android/exsettings/DataUsageSummary;->mDataAlertsSupported:Z

    if-eqz v6, :cond_e

    .line 652
    iget-object v9, p0, Lcom/android/exsettings/DataUsageSummary;->mMenuDataAlerts:Landroid/view/MenuItem;

    if-eqz v0, :cond_d

    move v6, v7

    :goto_9
    invoke-interface {v9, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 657
    :goto_a
    const v6, 0x7f130325

    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    iput-object v6, p0, Lcom/android/exsettings/DataUsageSummary;->mMenuResetStats:Landroid/view/MenuItem;

    .line 658
    iget-object v6, p0, Lcom/android/exsettings/DataUsageSummary;->mMenuResetStats:Landroid/view/MenuItem;

    if-eqz v0, :cond_f

    :goto_b
    invoke-interface {v6, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 660
    invoke-direct {p0}, Lcom/android/exsettings/DataUsageSummary;->updateMenuTitles()V

    .line 603
    return-void

    .line 606
    .end local v2    # "help":Landroid/view/MenuItem;
    .end local v3    # "helpUrl":Ljava/lang/String;
    .end local v5    # "metered":Landroid/view/MenuItem;
    :cond_4
    const/4 v4, 0x0

    .restart local v4    # "isOwner":Z
    goto/16 :goto_0

    :cond_5
    move v6, v8

    .line 610
    goto/16 :goto_1

    .line 612
    :cond_6
    iget-object v6, p0, Lcom/android/exsettings/DataUsageSummary;->mMenuShowWifi:Landroid/view/MenuItem;

    invoke-interface {v6, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_2

    :cond_7
    move v6, v8

    .line 617
    goto/16 :goto_3

    .line 619
    :cond_8
    iget-object v6, p0, Lcom/android/exsettings/DataUsageSummary;->mMenuShowEthernet:Landroid/view/MenuItem;

    invoke-interface {v6, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_4

    :cond_9
    move v6, v8

    .line 624
    goto/16 :goto_5

    .restart local v5    # "metered":Landroid/view/MenuItem;
    :cond_a
    move v6, v8

    .line 628
    goto/16 :goto_6

    .line 630
    :cond_b
    invoke-interface {v5, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_7

    .line 646
    .end local v4    # "isOwner":Z
    .restart local v2    # "help":Landroid/view/MenuItem;
    .restart local v3    # "helpUrl":Ljava/lang/String;
    :cond_c
    invoke-interface {v2, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_8

    :cond_d
    move v6, v8

    .line 652
    goto :goto_9

    .line 654
    :cond_e
    iget-object v6, p0, Lcom/android/exsettings/DataUsageSummary;->mMenuDataAlerts:Landroid/view/MenuItem;

    invoke-interface {v6, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_a

    :cond_f
    move v7, v8

    .line 658
    goto :goto_b
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 565
    invoke-super {p0}, Lcom/android/exsettings/HighlightingFragment;->onResume()V

    .line 567
    invoke-virtual {p0}, Lcom/android/exsettings/DataUsageSummary;->getView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/android/exsettings/DataUsageSummary$15;

    invoke-direct {v1, p0}, Lcom/android/exsettings/DataUsageSummary$15;-><init>(Lcom/android/exsettings/DataUsageSummary;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 575
    new-instance v0, Lcom/android/exsettings/DataUsageSummary$16;

    invoke-direct {v0, p0}, Lcom/android/exsettings/DataUsageSummary$16;-><init>(Lcom/android/exsettings/DataUsageSummary;)V

    .line 594
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 575
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/android/exsettings/DataUsageSummary$16;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 564
    return-void
.end method

.method public onViewStateRestored(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 552
    invoke-super {p0, p1}, Lcom/android/exsettings/HighlightingFragment;->onViewStateRestored(Landroid/os/Bundle;)V

    .line 555
    invoke-virtual {p0}, Lcom/android/exsettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 556
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {v0}, Lcom/android/exsettings/DataUsageSummary;->computeTabFromIntent(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/exsettings/DataUsageSummary;->mIntentTab:Ljava/lang/String;

    .line 560
    invoke-direct {p0}, Lcom/android/exsettings/DataUsageSummary;->updateTabs()V

    .line 551
    return-void
.end method

.method public setRestrictBackground(Z)V
    .locals 1
    .param p1, "restrictBackground"    # Z

    .prologue
    .line 1245
    iget-object v0, p0, Lcom/android/exsettings/DataUsageSummary;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v0, p1}, Landroid/net/NetworkPolicyManager;->setRestrictBackground(Z)V

    .line 1246
    invoke-direct {p0}, Lcom/android/exsettings/DataUsageSummary;->updateMenuTitles()V

    .line 1244
    return-void
.end method
