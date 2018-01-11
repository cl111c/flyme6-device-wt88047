.class public Lcom/android/internal/app/MzResolverActivity;
.super Landroid/app/Activity;
.source "MzResolverActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/MzResolverActivity$1;,
        Lcom/android/internal/app/MzResolverActivity$ActionTitle;,
        Lcom/android/internal/app/MzResolverActivity$DetailListFrag;,
        Lcom/android/internal/app/MzResolverActivity$DisplayResolveInfo;,
        Lcom/android/internal/app/MzResolverActivity$DisplayTargetInfo;,
        Lcom/android/internal/app/MzResolverActivity$GridViewAdapter;,
        Lcom/android/internal/app/MzResolverActivity$LoadIconIntoViewTask;,
        Lcom/android/internal/app/MzResolverActivity$LoadIconTask;,
        Lcom/android/internal/app/MzResolverActivity$NormalGridFrag;,
        Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;,
        Lcom/android/internal/app/MzResolverActivity$ResolverComparator;,
        Lcom/android/internal/app/MzResolverActivity$ViewHolder;,
        Lcom/android/internal/app/MzResolverActivity$ViewPagerAdapter;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final GRID_MAX_COUNT:I = 0x8

.field private static final INVALID_ID:I = -0x1

.field private static final TAG:Ljava/lang/String; = "MzResolverActivity"

.field private static final USAGE_STATS_PERIOD:J = 0x48190800L

.field private static mInternalList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private MORE:Ljava/lang/CharSequence;

.field private isStored:Z

.field private mAdapter:Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;

.field private mAlwaysButton:Landroid/widget/Button;

.field private mAlwaysUseOption:Z

.field private mAppBaseResolveList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mContainer:Landroid/widget/ScrollView;

.field private mDetailListFrag:Landroid/app/Fragment;

.field private mGrid:Landroid/widget/GridView;

.field private mGridViewAdapter:Lcom/android/internal/app/MzResolverActivity$GridViewAdapter;

.field private mHasMore:Z

.field private mIconDpi:I

.field private mIconSize:I

.field private mInitialIntents:[Landroid/content/Intent;

.field private mIsInDetailFrag:Z

.field private mLastSelected:I

.field private mLaunchedFromUid:I

.field private mMaxColumns:I

.field private mNormalGridFrag:Landroid/app/Fragment;

.field private mOnceButton:Landroid/widget/Button;

.field private final mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

.field private mPm:Landroid/content/pm/PackageManager;

.field private mRegistered:Z

.field private mResolvingHome:Z

.field mReturnResult:Z

.field private mSafeForwardingMode:Z

.field private mShowExtended:Z

.field private mStats:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/app/usage/UsageStats;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetIntent:Landroid/content/Intent;

.field private mTitle:Ljava/lang/CharSequence;

.field private mUsm:Landroid/app/usage/UsageStatsManager;


# direct methods
.method static synthetic -get0(Lcom/android/internal/app/MzResolverActivity;)Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/MzResolverActivity;->MORE:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/internal/app/MzResolverActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/app/MzResolverActivity;->isStored:Z

    return v0
.end method

.method static synthetic -get10(Lcom/android/internal/app/MzResolverActivity;)Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/MzResolverActivity;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/internal/app/MzResolverActivity;)Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/MzResolverActivity;->mAdapter:Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/internal/app/MzResolverActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/app/MzResolverActivity;->mAlwaysUseOption:Z

    return v0
.end method

.method static synthetic -get4(Lcom/android/internal/app/MzResolverActivity;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/MzResolverActivity;->mAppBaseResolveList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/internal/app/MzResolverActivity;)I
    .locals 1

    iget v0, p0, Lcom/android/internal/app/MzResolverActivity;->mLaunchedFromUid:I

    return v0
.end method

.method static synthetic -get6(Lcom/android/internal/app/MzResolverActivity;)Lcom/android/internal/content/PackageMonitor;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/MzResolverActivity;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/internal/app/MzResolverActivity;)Landroid/content/pm/PackageManager;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/MzResolverActivity;->mPm:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/internal/app/MzResolverActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/app/MzResolverActivity;->mRegistered:Z

    return v0
.end method

.method static synthetic -get9(Lcom/android/internal/app/MzResolverActivity;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/MzResolverActivity;->mStats:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/internal/app/MzResolverActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/app/MzResolverActivity;->isStored:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/internal/app/MzResolverActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/app/MzResolverActivity;->mRegistered:Z

    return p1
.end method

.method static synthetic -set2(Lcom/android/internal/app/MzResolverActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/app/MzResolverActivity;->mShowExtended:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/internal/app/MzResolverActivity;Landroid/content/Intent;)Z
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/app/MzResolverActivity;->ensureDraggable(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/internal/app/MzResolverActivity;Ljava/util/List;Landroid/content/pm/ResolveInfo;)Z
    .locals 1
    .param p1, "list"    # Ljava/util/List;
    .param p2, "resolveInfo"    # Landroid/content/pm/ResolveInfo;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/internal/app/MzResolverActivity;->hasSameItemInInitialIntents(Ljava/util/List;Landroid/content/pm/ResolveInfo;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/android/internal/app/MzResolverActivity;Ljava/util/List;)Ljava/util/List;
    .locals 1
    .param p1, "resolves"    # Ljava/util/List;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/app/MzResolverActivity;->resortResolveInfos(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 150
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/app/MzResolverActivity;->mInternalList:Ljava/util/ArrayList;

    .line 123
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 123
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 140
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/app/MzResolverActivity;->mLastSelected:I

    .line 141
    iput-boolean v1, p0, Lcom/android/internal/app/MzResolverActivity;->mResolvingHome:Z

    .line 149
    iput-boolean v1, p0, Lcom/android/internal/app/MzResolverActivity;->mReturnResult:Z

    .line 154
    iput-boolean v1, p0, Lcom/android/internal/app/MzResolverActivity;->mHasMore:Z

    .line 156
    iput-boolean v1, p0, Lcom/android/internal/app/MzResolverActivity;->mIsInDetailFrag:Z

    .line 157
    iput-object v2, p0, Lcom/android/internal/app/MzResolverActivity;->mInitialIntents:[Landroid/content/Intent;

    .line 158
    iput-object v2, p0, Lcom/android/internal/app/MzResolverActivity;->mTargetIntent:Landroid/content/Intent;

    .line 167
    new-instance v0, Lcom/android/internal/app/MzResolverActivity$1;

    invoke-direct {v0, p0}, Lcom/android/internal/app/MzResolverActivity$1;-><init>(Lcom/android/internal/app/MzResolverActivity;)V

    iput-object v0, p0, Lcom/android/internal/app/MzResolverActivity;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    .line 123
    return-void
.end method

.method private ChangeFragment()V
    .locals 4

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/app/MzResolverActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .local v0, "fm":Landroid/app/FragmentManager;
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .local v1, "ft":Landroid/app/FragmentTransaction;
    const/high16 v2, #android:animator@fade_in#i

    const v3, #android:animator@fade_out#t

    invoke-virtual {v1, v2, v3}, Landroid/app/FragmentTransaction;->setCustomAnimations(II)Landroid/app/FragmentTransaction;

    iget-boolean v2, p0, Lcom/android/internal/app/MzResolverActivity;->mIsInDetailFrag:Z

    if-nez v2, :cond_0

    new-instance v2, Lcom/android/internal/app/MzResolverActivity$DetailListFrag;

    invoke-direct {v2}, Lcom/android/internal/app/MzResolverActivity$DetailListFrag;-><init>()V

    iput-object v2, p0, Lcom/android/internal/app/MzResolverActivity;->mDetailListFrag:Landroid/app/Fragment;

    sget v2, Lcom/flyme/internal/R$id;->contentPanel:I

    iget-object v3, p0, Lcom/android/internal/app/MzResolverActivity;->mDetailListFrag:Landroid/app/Fragment;

    invoke-virtual {v1, v2, v3}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/app/MzResolverActivity;->mIsInDetailFrag:Z

    :goto_0
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void

    :cond_0
    new-instance v2, Lcom/android/internal/app/MzResolverActivity$NormalGridFrag;

    invoke-direct {v2}, Lcom/android/internal/app/MzResolverActivity$NormalGridFrag;-><init>()V

    iput-object v2, p0, Lcom/android/internal/app/MzResolverActivity;->mNormalGridFrag:Landroid/app/Fragment;

    .line 695
    sget v2, Lcom/flyme/internal/R$id;->contentPanel:I

    iget-object v3, p0, Lcom/android/internal/app/MzResolverActivity;->mNormalGridFrag:Landroid/app/Fragment;

    invoke-virtual {v1, v2, v3}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 696
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/internal/app/MzResolverActivity;->mIsInDetailFrag:Z

    goto :goto_0
.end method

.method private ensureDraggable(Landroid/content/Intent;)Z
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x0

    .line 1816
    if-nez p1, :cond_0

    .line 1817
    return v4

    .line 1819
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v1

    .line 1820
    .local v1, "intentType":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1823
    .local v0, "intentAction":Ljava/lang/String;
    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 1824
    .local v2, "solveActions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string/jumbo v3, "android.intent.action.SEND"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1825
    const-string/jumbo v3, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1827
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1828
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    .line 1827
    if-nez v3, :cond_1

    .line 1829
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1833
    const/4 v3, 0x1

    return v3

    .line 1830
    :cond_1
    return v4
.end method

.method private hasManagedProfile()Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 631
    const-string/jumbo v5, "user"

    invoke-virtual {p0, v5}, Lcom/android/internal/app/MzResolverActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UserManager;

    .line 632
    .local v4, "userManager":Landroid/os/UserManager;
    if-nez v4, :cond_0

    .line 633
    return v6

    .line 637
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/app/MzResolverActivity;->getUserId()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v1

    .line 638
    .local v1, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "userInfo$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 639
    .local v2, "userInfo":Landroid/content/pm/UserInfo;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isManagedProfile()Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-eqz v5, :cond_1

    .line 640
    const/4 v5, 0x1

    return v5

    .line 643
    .end local v1    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v2    # "userInfo":Landroid/content/pm/UserInfo;
    .end local v3    # "userInfo$iterator":Ljava/util/Iterator;
    :catch_0
    move-exception v0

    .line 644
    .local v0, "e":Ljava/lang/SecurityException;
    return v6

    .line 646
    .end local v0    # "e":Ljava/lang/SecurityException;
    .restart local v1    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .restart local v3    # "userInfo$iterator":Ljava/util/Iterator;
    :cond_2
    return v6
.end method

.method private hasSameItemInInitialIntents(Ljava/util/List;Landroid/content/pm/ResolveInfo;)Z
    .locals 3
    .param p2, "resolveInfo"    # Landroid/content/pm/ResolveInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/app/MzResolverActivity$DisplayResolveInfo;",
            ">;",
            "Landroid/content/pm/ResolveInfo;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 2744
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/MzResolverActivity$DisplayResolveInfo;>;"
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 2745
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2746
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/MzResolverActivity$DisplayResolveInfo;

    iget-object v1, v1, Lcom/android/internal/app/MzResolverActivity$DisplayResolveInfo;->ri:Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v2, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2747
    const/4 v1, 0x1

    return v1

    .line 2745
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2751
    .end local v0    # "i":I
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private initFragment()V
    .locals 4

    .prologue
    .line 2720
    invoke-virtual {p0}, Lcom/android/internal/app/MzResolverActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 2721
    .local v0, "fm":Landroid/app/FragmentManager;
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 2722
    .local v1, "ft":Landroid/app/FragmentTransaction;
    iget-boolean v2, p0, Lcom/android/internal/app/MzResolverActivity;->mIsInDetailFrag:Z

    if-eqz v2, :cond_1

    .line 2723
    iget-object v2, p0, Lcom/android/internal/app/MzResolverActivity;->mDetailListFrag:Landroid/app/Fragment;

    if-nez v2, :cond_0

    .line 2724
    new-instance v2, Lcom/android/internal/app/MzResolverActivity$DetailListFrag;

    invoke-direct {v2}, Lcom/android/internal/app/MzResolverActivity$DetailListFrag;-><init>()V

    iput-object v2, p0, Lcom/android/internal/app/MzResolverActivity;->mDetailListFrag:Landroid/app/Fragment;

    .line 2726
    :cond_0
    sget v2, Lcom/flyme/internal/R$id;->contentPanel:I

    iget-object v3, p0, Lcom/android/internal/app/MzResolverActivity;->mDetailListFrag:Landroid/app/Fragment;

    invoke-virtual {v1, v2, v3}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 2733
    :goto_0
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    .line 2719
    return-void

    .line 2728
    :cond_1
    iget-object v2, p0, Lcom/android/internal/app/MzResolverActivity;->mNormalGridFrag:Landroid/app/Fragment;

    if-nez v2, :cond_2

    .line 2729
    new-instance v2, Lcom/android/internal/app/MzResolverActivity$NormalGridFrag;

    invoke-direct {v2}, Lcom/android/internal/app/MzResolverActivity$NormalGridFrag;-><init>()V

    iput-object v2, p0, Lcom/android/internal/app/MzResolverActivity;->mNormalGridFrag:Landroid/app/Fragment;

    .line 2731
    :cond_2
    sget v2, Lcom/flyme/internal/R$id;->contentPanel:I

    iget-object v3, p0, Lcom/android/internal/app/MzResolverActivity;->mNormalGridFrag:Landroid/app/Fragment;

    invoke-virtual {v1, v2, v3}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    goto :goto_0
.end method

.method private isInternalFlymeApp(Ljava/lang/String;)Z
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 1849
    if-nez p1, :cond_0

    .line 1850
    return v2

    .line 1853
    :cond_0
    sget-object v0, Lcom/android/internal/app/MzResolverActivity;->mInternalList:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 1854
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/internal/app/MzResolverActivity;->mInternalList:Ljava/util/ArrayList;

    .line 1855
    sget-object v0, Lcom/android/internal/app/MzResolverActivity;->mInternalList:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.meizu.filemanager"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1856
    sget-object v0, Lcom/android/internal/app/MzResolverActivity;->mInternalList:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.android.mms"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1857
    sget-object v0, Lcom/android/internal/app/MzResolverActivity;->mInternalList:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.android.contacts"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1858
    sget-object v0, Lcom/android/internal/app/MzResolverActivity;->mInternalList:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.android.phone"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1861
    :cond_1
    sget-object v0, Lcom/android/internal/app/MzResolverActivity;->mInternalList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1862
    const/4 v0, 0x1

    return v0

    .line 1865
    :cond_2
    return v2
.end method

.method private makeMyIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 217
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/internal/app/MzResolverActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 218
    .local v0, "intent":Landroid/content/Intent;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 224
    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v1

    const v2, -0x800001

    and-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 225
    return-object v0
.end method

.method private resortResolveInfos(Ljava/util/List;)Ljava/util/List;
    .locals 35
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2533
    .local p1, "resolves":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-nez p1, :cond_0

    .line 2534
    const/16 v33, 0x0

    return-object v33

    .line 2537
    :cond_0
    const-string/jumbo v6, "com.android.email"

    .line 2538
    .local v6, "EMAIL":Ljava/lang/String;
    const-string/jumbo v8, "com.android.mms"

    .line 2539
    .local v8, "MMS":Ljava/lang/String;
    const-string/jumbo v5, "com.android.bluetooth"

    .line 2540
    .local v5, "BT_OPP":Ljava/lang/String;
    const-string/jumbo v4, "com.meizu.share"

    .line 2541
    .local v4, "BT":Ljava/lang/String;
    const-string/jumbo v10, "com.meizu.notepaper"

    .line 2543
    .local v10, "NOTEPAPER":Ljava/lang/String;
    const-string/jumbo v13, "com.tencent.mm"

    .line 2544
    .local v13, "WECHAT":Ljava/lang/String;
    const-string/jumbo v14, "com.sina.weibo"

    .line 2545
    .local v14, "WEIBO":Ljava/lang/String;
    const-string/jumbo v11, "com.tencent.mobileqq"

    .line 2547
    .local v11, "QQ":Ljava/lang/String;
    const-string/jumbo v7, "com.meizu.media.gallery"

    .line 2548
    .local v7, "GALLERY":Ljava/lang/String;
    const-string/jumbo v9, "com.meizu.media.music"

    .line 2549
    .local v9, "MUSIC":Ljava/lang/String;
    const-string/jumbo v12, "com.meizu.media.video"

    .line 2550
    .local v12, "VIDEO":Ljava/lang/String;
    const-string/jumbo v3, "com.android.browser"

    .line 2554
    .local v3, "BROWSER":Ljava/lang/String;
    const/16 v19, 0x0

    .line 2555
    .local v19, "email":Landroid/content/pm/ResolveInfo;
    const/16 v21, 0x0

    .line 2556
    .local v21, "mms":Landroid/content/pm/ResolveInfo;
    const/16 v16, 0x0

    .line 2557
    .local v16, "bt":Landroid/content/pm/ResolveInfo;
    const/16 v17, 0x0

    .line 2558
    .local v17, "bt_opp":Landroid/content/pm/ResolveInfo;
    const/16 v23, 0x0

    .line 2559
    .local v23, "notepaper":Landroid/content/pm/ResolveInfo;
    const/16 v20, 0x0

    .line 2560
    .local v20, "gallery":Landroid/content/pm/ResolveInfo;
    const/16 v22, 0x0

    .line 2561
    .local v22, "music":Landroid/content/pm/ResolveInfo;
    const/16 v29, 0x0

    .line 2562
    .local v29, "video":Landroid/content/pm/ResolveInfo;
    const/4 v15, 0x0

    .line 2564
    .local v15, "browser":Landroid/content/pm/ResolveInfo;
    const/16 v31, 0x0

    .line 2565
    .local v31, "weChatMoments":Landroid/content/pm/ResolveInfo;
    const/16 v30, 0x0

    .line 2566
    .local v30, "weChatFriend":Landroid/content/pm/ResolveInfo;
    const/16 v32, 0x0

    .line 2567
    .local v32, "weibo":Landroid/content/pm/ResolveInfo;
    const/16 v26, 0x0

    .line 2568
    .local v26, "qqFriends":Landroid/content/pm/ResolveInfo;
    const/16 v25, 0x0

    .line 2569
    .local v25, "qqFileToPc":Landroid/content/pm/ResolveInfo;
    invoke-interface/range {p1 .. p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v28

    .end local v15    # "browser":Landroid/content/pm/ResolveInfo;
    .end local v16    # "bt":Landroid/content/pm/ResolveInfo;
    .end local v17    # "bt_opp":Landroid/content/pm/ResolveInfo;
    .end local v19    # "email":Landroid/content/pm/ResolveInfo;
    .end local v20    # "gallery":Landroid/content/pm/ResolveInfo;
    .end local v21    # "mms":Landroid/content/pm/ResolveInfo;
    .end local v22    # "music":Landroid/content/pm/ResolveInfo;
    .end local v23    # "notepaper":Landroid/content/pm/ResolveInfo;
    .end local v25    # "qqFileToPc":Landroid/content/pm/ResolveInfo;
    .end local v26    # "qqFriends":Landroid/content/pm/ResolveInfo;
    .end local v29    # "video":Landroid/content/pm/ResolveInfo;
    .end local v30    # "weChatFriend":Landroid/content/pm/ResolveInfo;
    .end local v31    # "weChatMoments":Landroid/content/pm/ResolveInfo;
    .end local v32    # "weibo":Landroid/content/pm/ResolveInfo;
    .local v28, "resolve$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    move-result v33

    if-eqz v33, :cond_10

    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/content/pm/ResolveInfo;

    .line 2570
    .local v27, "resolve":Landroid/content/pm/ResolveInfo;
    move-object/from16 v0, v27

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v33, v0

    if-eqz v33, :cond_2

    move-object/from16 v0, v27

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v18, v0

    .line 2572
    .local v18, "ci":Landroid/content/pm/ComponentInfo;
    :goto_1
    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    move-object/from16 v24, v0

    .line 2573
    .local v24, "pkg":Ljava/lang/String;
    const-string/jumbo v33, "com.android.email"

    move-object/from16 v0, v33

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_3

    .line 2574
    move-object/from16 v19, v27

    .local v19, "email":Landroid/content/pm/ResolveInfo;
    goto :goto_0

    .line 2571
    .end local v18    # "ci":Landroid/content/pm/ComponentInfo;
    .end local v19    # "email":Landroid/content/pm/ResolveInfo;
    .end local v24    # "pkg":Ljava/lang/String;
    :cond_2
    move-object/from16 v0, v27

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v18, v0

    goto :goto_1

    .line 2575
    .restart local v18    # "ci":Landroid/content/pm/ComponentInfo;
    .restart local v24    # "pkg":Ljava/lang/String;
    :cond_3
    const-string/jumbo v33, "com.android.mms"

    move-object/from16 v0, v33

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_4

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    move-object/from16 v33, v0

    const-string/jumbo v34, "com.android.mms.ui.ComposeMessageActivity"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_4

    .line 2576
    move-object/from16 v21, v27

    .local v21, "mms":Landroid/content/pm/ResolveInfo;
    goto :goto_0

    .line 2577
    .end local v21    # "mms":Landroid/content/pm/ResolveInfo;
    :cond_4
    const-string/jumbo v33, "com.android.bluetooth"

    move-object/from16 v0, v33

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_5

    .line 2578
    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    move-object/from16 v33, v0

    const-string/jumbo v34, "com.android.bluetooth.opp.BluetoothOppLauncherActivity"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    .line 2577
    if-eqz v33, :cond_5

    .line 2579
    move-object/from16 v17, v27

    .local v17, "bt_opp":Landroid/content/pm/ResolveInfo;
    goto :goto_0

    .line 2580
    .end local v17    # "bt_opp":Landroid/content/pm/ResolveInfo;
    :cond_5
    const-string/jumbo v33, "com.meizu.share"

    move-object/from16 v0, v33

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_6

    .line 2581
    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    move-object/from16 v33, v0

    .line 2582
    const-string/jumbo v34, "com.meizu.share.BluetoothOppLauncherActivity"

    .line 2581
    invoke-virtual/range {v33 .. v34}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    .line 2580
    if-eqz v33, :cond_6

    .line 2583
    move-object/from16 v16, v27

    .local v16, "bt":Landroid/content/pm/ResolveInfo;
    goto/16 :goto_0

    .line 2590
    .end local v16    # "bt":Landroid/content/pm/ResolveInfo;
    :cond_6
    const-string/jumbo v33, "com.meizu.notepaper"

    move-object/from16 v0, v33

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_7

    .line 2591
    move-object/from16 v23, v27

    .local v23, "notepaper":Landroid/content/pm/ResolveInfo;
    goto/16 :goto_0

    .line 2592
    .end local v23    # "notepaper":Landroid/content/pm/ResolveInfo;
    :cond_7
    const-string/jumbo v33, "com.meizu.media.music"

    move-object/from16 v0, v33

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_8

    .line 2593
    move-object/from16 v22, v27

    .local v22, "music":Landroid/content/pm/ResolveInfo;
    goto/16 :goto_0

    .line 2594
    .end local v22    # "music":Landroid/content/pm/ResolveInfo;
    :cond_8
    const-string/jumbo v33, "com.meizu.media.video"

    move-object/from16 v0, v33

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_9

    .line 2595
    move-object/from16 v29, v27

    .local v29, "video":Landroid/content/pm/ResolveInfo;
    goto/16 :goto_0

    .line 2596
    .end local v29    # "video":Landroid/content/pm/ResolveInfo;
    :cond_9
    const-string/jumbo v33, "com.meizu.media.gallery"

    move-object/from16 v0, v33

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_a

    .line 2597
    move-object/from16 v20, v27

    .local v20, "gallery":Landroid/content/pm/ResolveInfo;
    goto/16 :goto_0

    .line 2598
    .end local v20    # "gallery":Landroid/content/pm/ResolveInfo;
    :cond_a
    const-string/jumbo v33, "com.android.browser"

    move-object/from16 v0, v33

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_b

    .line 2599
    move-object/from16 v15, v27

    .local v15, "browser":Landroid/content/pm/ResolveInfo;
    goto/16 :goto_0

    .line 2600
    .end local v15    # "browser":Landroid/content/pm/ResolveInfo;
    :cond_b
    const-string/jumbo v33, "com.tencent.mm"

    move-object/from16 v0, v33

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_c

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    move-object/from16 v33, v0

    const-string/jumbo v34, "com.tencent.mm.ui.tools.ShareToTimeLineUI"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_c

    .line 2601
    move-object/from16 v31, v27

    .local v31, "weChatMoments":Landroid/content/pm/ResolveInfo;
    goto/16 :goto_0

    .line 2602
    .end local v31    # "weChatMoments":Landroid/content/pm/ResolveInfo;
    :cond_c
    const-string/jumbo v33, "com.tencent.mm"

    move-object/from16 v0, v33

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_d

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    move-object/from16 v33, v0

    const-string/jumbo v34, "com.tencent.mm.ui.tools.ShareImgUI"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_d

    .line 2603
    move-object/from16 v30, v27

    .local v30, "weChatFriend":Landroid/content/pm/ResolveInfo;
    goto/16 :goto_0

    .line 2604
    .end local v30    # "weChatFriend":Landroid/content/pm/ResolveInfo;
    :cond_d
    const-string/jumbo v33, "com.sina.weibo"

    move-object/from16 v0, v33

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_e

    .line 2605
    move-object/from16 v32, v27

    .local v32, "weibo":Landroid/content/pm/ResolveInfo;
    goto/16 :goto_0

    .line 2606
    .end local v32    # "weibo":Landroid/content/pm/ResolveInfo;
    :cond_e
    const-string/jumbo v33, "com.tencent.mobileqq"

    move-object/from16 v0, v33

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_f

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    move-object/from16 v33, v0

    const-string/jumbo v34, "com.tencent.mobileqq.activity.JumpActivity"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_f

    .line 2607
    move-object/from16 v26, v27

    .local v26, "qqFriends":Landroid/content/pm/ResolveInfo;
    goto/16 :goto_0

    .line 2608
    .end local v26    # "qqFriends":Landroid/content/pm/ResolveInfo;
    :cond_f
    const-string/jumbo v33, "com.tencent.mobileqq"

    move-object/from16 v0, v33

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_1

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    move-object/from16 v33, v0

    const-string/jumbo v34, "com.tencent.mobileqq.activity.qfileJumpActivity"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_1

    .line 2609
    move-object/from16 v25, v27

    .local v25, "qqFileToPc":Landroid/content/pm/ResolveInfo;
    goto/16 :goto_0

    .line 2613
    .end local v18    # "ci":Landroid/content/pm/ComponentInfo;
    .end local v24    # "pkg":Ljava/lang/String;
    .end local v25    # "qqFileToPc":Landroid/content/pm/ResolveInfo;
    .end local v27    # "resolve":Landroid/content/pm/ResolveInfo;
    :cond_10
    if-eqz v22, :cond_11

    .line 2614
    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 2615
    const/16 v33, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v33

    move-object/from16 v2, v22

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2618
    :cond_11
    if-eqz v29, :cond_12

    .line 2619
    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 2620
    const/16 v33, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v33

    move-object/from16 v2, v29

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2623
    :cond_12
    if-eqz v20, :cond_13

    .line 2624
    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 2625
    const/16 v33, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v33

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2628
    :cond_13
    if-eqz v15, :cond_14

    .line 2629
    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 2630
    const/16 v33, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v33

    invoke-interface {v0, v1, v15}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2633
    :cond_14
    if-eqz v21, :cond_15

    .line 2634
    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 2635
    const/16 v33, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v33

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2638
    :cond_15
    if-eqz v23, :cond_16

    .line 2639
    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 2640
    const/16 v33, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v33

    move-object/from16 v2, v23

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2649
    :cond_16
    if-eqz v17, :cond_17

    .line 2650
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 2651
    const/16 v33, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v33

    move-object/from16 v2, v17

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2654
    :cond_17
    if-eqz v16, :cond_18

    .line 2655
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 2656
    const/16 v33, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v33

    move-object/from16 v2, v16

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2659
    :cond_18
    if-eqz v19, :cond_19

    .line 2660
    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 2661
    const/16 v33, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v33

    move-object/from16 v2, v19

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2664
    :cond_19
    if-eqz v32, :cond_1a

    .line 2665
    move-object/from16 v0, p1

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 2666
    const/16 v33, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v33

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2669
    :cond_1a
    if-eqz v25, :cond_1b

    .line 2670
    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 2671
    const/16 v33, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v33

    move-object/from16 v2, v25

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2674
    :cond_1b
    if-eqz v26, :cond_1c

    .line 2675
    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 2676
    const/16 v33, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v33

    move-object/from16 v2, v26

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2679
    :cond_1c
    if-eqz v31, :cond_1d

    .line 2680
    move-object/from16 v0, p1

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 2681
    const/16 v33, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v33

    move-object/from16 v2, v31

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2684
    :cond_1d
    if-eqz v30, :cond_1e

    .line 2685
    move-object/from16 v0, p1

    move-object/from16 v1, v30

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 2686
    const/16 v33, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v33

    move-object/from16 v2, v30

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2689
    :cond_1e
    return-object p1
.end method

.method private safelyStartActivityInternal(Landroid/content/Intent;)V
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 883
    iget-boolean v3, p0, Lcom/android/internal/app/MzResolverActivity;->mSafeForwardingMode:Z

    if-nez v3, :cond_0

    .line 884
    invoke-virtual {p0, p1}, Lcom/android/internal/app/MzResolverActivity;->startActivity(Landroid/content/Intent;)V

    .line 885
    return-void

    .line 888
    :cond_0
    const/4 v3, 0x0

    const/4 v4, 0x1

    const/16 v5, -0x2710

    :try_start_0
    invoke-virtual {p0, p1, v3, v4, v5}, Lcom/android/internal/app/MzResolverActivity;->startActivityAsCaller(Landroid/content/Intent;Landroid/os/Bundle;ZI)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 882
    :goto_0
    return-void

    .line 889
    :catch_0
    move-exception v0

    .line 892
    .local v0, "e":Ljava/lang/RuntimeException;
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    .line 893
    invoke-virtual {p0}, Lcom/android/internal/app/MzResolverActivity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v4

    .line 892
    invoke-interface {v3, v4}, Landroid/app/IActivityManager;->getLaunchedFromPackage(Landroid/os/IBinder;)Ljava/lang/String;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .line 897
    .local v2, "launchedFromPackage":Ljava/lang/String;
    :goto_1
    const-string/jumbo v3, "MzResolverActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unable to launch as uid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/app/MzResolverActivity;->mLaunchedFromUid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 898
    const-string/jumbo v5, " package "

    .line 897
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 898
    const-string/jumbo v5, ", while running in "

    .line 897
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 899
    invoke-static {}, Landroid/app/ActivityThread;->currentProcessName()Ljava/lang/String;

    move-result-object v5

    .line 897
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 894
    .end local v2    # "launchedFromPackage":Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 895
    .local v1, "e2":Landroid/os/RemoteException;
    const-string/jumbo v2, "??"

    .restart local v2    # "launchedFromPackage":Ljava/lang/String;
    goto :goto_1
.end method

.method private setAlwaysButtonEnabled(ZIZ)V
    .locals 4
    .param p1, "hasValidSelection"    # Z
    .param p2, "checkedPos"    # I
    .param p3, "filtered"    # Z

    .prologue
    .line 665
    const/4 v0, 0x0

    .line 666
    .local v0, "enabled":Z
    if-eqz p1, :cond_0

    .line 667
    iget-object v2, p0, Lcom/android/internal/app/MzResolverActivity;->mAdapter:Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;

    invoke-virtual {v2, p2, p3}, Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;->resolveInfoForPosition(IZ)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 668
    .local v1, "ri":Landroid/content/pm/ResolveInfo;
    iget v2, v1, Landroid/content/pm/ResolveInfo;->targetUserId:I

    const/4 v3, -0x2

    if-ne v2, v3, :cond_0

    .line 669
    const/4 v0, 0x1

    .line 672
    .end local v1    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_0
    iget-object v2, p0, Lcom/android/internal/app/MzResolverActivity;->mAlwaysButton:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 664
    return-void
.end method

.method private supportsManagedProfiles(Landroid/content/pm/ResolveInfo;)Z
    .locals 6
    .param p1, "resolveInfo"    # Landroid/content/pm/ResolveInfo;

    .prologue
    const/4 v5, 0x0

    .line 651
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/app/MzResolverActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 652
    iget-object v3, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/4 v4, 0x0

    .line 651
    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 653
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget v2, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    invoke-direct {p0, v2}, Lcom/android/internal/app/MzResolverActivity;->versionNumberAtLeastL(I)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 654
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v1

    .line 655
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    return v5
.end method

.method private versionNumberAtLeastL(I)Z
    .locals 1
    .param p1, "versionNumber"    # I

    .prologue
    .line 660
    const/16 v0, 0x15

    if-lt p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .prologue
    .line 506
    invoke-virtual {p0}, Lcom/android/internal/app/MzResolverActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 507
    invoke-virtual {p0}, Lcom/android/internal/app/MzResolverActivity;->finish()V

    .line 505
    :cond_0
    return-void
.end method

.method public finish()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1878
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 1879
    invoke-virtual {p0, v0, v0}, Lcom/android/internal/app/MzResolverActivity;->overridePendingTransition(II)V

    .line 1877
    return-void
.end method

.method public getActivityIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 1873
    iget-object v0, p0, Lcom/android/internal/app/MzResolverActivity;->mTargetIntent:Landroid/content/Intent;

    return-object v0
.end method

.method getIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "resId"    # I

    .prologue
    .line 514
    :try_start_0
    iget v2, p0, Lcom/android/internal/app/MzResolverActivity;->mIconDpi:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 519
    :goto_0
    return-object v1

    .line 515
    :catch_0
    move-exception v0

    .line 516
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    const/4 v1, 0x0

    .local v1, "result":Landroid/graphics/drawable/Drawable;
    goto :goto_0
.end method

.method public getInitalIntents()[Landroid/content/Intent;
    .locals 1

    .prologue
    .line 1869
    iget-object v0, p0, Lcom/android/internal/app/MzResolverActivity;->mInitialIntents:[Landroid/content/Intent;

    return-object v0
.end method

.method public getReplacementIntent(Ljava/lang/String;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "defIntent"    # Landroid/content/Intent;

    .prologue
    .line 729
    return-object p2
.end method

.method protected getTitleForAction(Ljava/lang/String;I)Ljava/lang/CharSequence;
    .locals 6
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "defaultTitleRes"    # I

    .prologue
    const/4 v5, 0x0

    .line 492
    iget-boolean v2, p0, Lcom/android/internal/app/MzResolverActivity;->mResolvingHome:Z

    if-eqz v2, :cond_0

    sget-object v1, Lcom/android/internal/app/MzResolverActivity$ActionTitle;->HOME:Lcom/android/internal/app/MzResolverActivity$ActionTitle;

    .line 493
    .local v1, "title":Lcom/android/internal/app/MzResolverActivity$ActionTitle;
    :goto_0
    iget-object v2, p0, Lcom/android/internal/app/MzResolverActivity;->mAdapter:Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;

    invoke-virtual {v2}, Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;->hasFilteredItem()Z

    move-result v0

    .line 494
    .local v0, "named":Z
    sget-object v2, Lcom/android/internal/app/MzResolverActivity$ActionTitle;->DEFAULT:Lcom/android/internal/app/MzResolverActivity$ActionTitle;

    if-ne v1, v2, :cond_1

    if-eqz p2, :cond_1

    .line 495
    invoke-virtual {p0, p2}, Lcom/android/internal/app/MzResolverActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 492
    .end local v0    # "named":Z
    .end local v1    # "title":Lcom/android/internal/app/MzResolverActivity$ActionTitle;
    :cond_0
    invoke-static {p1}, Lcom/android/internal/app/MzResolverActivity$ActionTitle;->forAction(Ljava/lang/String;)Lcom/android/internal/app/MzResolverActivity$ActionTitle;

    move-result-object v1

    .restart local v1    # "title":Lcom/android/internal/app/MzResolverActivity$ActionTitle;
    goto :goto_0

    .line 497
    .restart local v0    # "named":Z
    :cond_1
    if-eqz v0, :cond_2

    iget v2, v1, Lcom/android/internal/app/MzResolverActivity$ActionTitle;->namedTitleRes:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/internal/app/MzResolverActivity;->mAdapter:Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;

    invoke-virtual {v4}, Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;->getFilteredItem()Lcom/android/internal/app/MzResolverActivity$DisplayResolveInfo;

    move-result-object v4

    iget-object v4, v4, Lcom/android/internal/app/MzResolverActivity$DisplayResolveInfo;->displayLabel:Ljava/lang/CharSequence;

    aput-object v4, v3, v5

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/app/MzResolverActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :goto_1
    return-object v2

    .line 498
    :cond_2
    iget v2, v1, Lcom/android/internal/app/MzResolverActivity$ActionTitle;->titleRes:I

    invoke-virtual {p0, v2}, Lcom/android/internal/app/MzResolverActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method loadIconForResolveInfo(Landroid/content/pm/ResolveInfo;)Landroid/graphics/drawable/Drawable;
    .locals 5
    .param p1, "ri"    # Landroid/content/pm/ResolveInfo;

    .prologue
    .line 528
    iget-object v3, p0, Lcom/android/internal/app/MzResolverActivity;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, v3}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 529
    .local v0, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 530
    return-object v0

    .line 534
    :cond_0
    :try_start_0
    iget-object v3, p1, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    if-eqz v3, :cond_1

    iget v3, p1, Landroid/content/pm/ResolveInfo;->icon:I

    if-eqz v3, :cond_1

    .line 535
    iget-object v3, p0, Lcom/android/internal/app/MzResolverActivity;->mPm:Landroid/content/pm/PackageManager;

    iget-object v4, p1, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v3

    iget v4, p1, Landroid/content/pm/ResolveInfo;->icon:I

    invoke-virtual {p0, v3, v4}, Lcom/android/internal/app/MzResolverActivity;->getIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 536
    if-eqz v0, :cond_1

    .line 537
    return-object v0

    .line 540
    :cond_1
    invoke-virtual {p1}, Landroid/content/pm/ResolveInfo;->getIconResource()I

    move-result v2

    .line 541
    .local v2, "iconRes":I
    if-eqz v2, :cond_2

    .line 542
    iget-object v3, p0, Lcom/android/internal/app/MzResolverActivity;->mPm:Landroid/content/pm/PackageManager;

    iget-object v4, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {p0, v3, v2}, Lcom/android/internal/app/MzResolverActivity;->getIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 543
    if-eqz v0, :cond_2

    .line 544
    return-object v0

    .line 547
    .end local v2    # "iconRes":I
    :catch_0
    move-exception v1

    .line 548
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v3, "MzResolverActivity"

    const-string/jumbo v4, "Couldn\'t find resources for package"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 550
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_2
    iget-object v3, p0, Lcom/android/internal/app/MzResolverActivity;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, v3}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    return-object v3
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 2695
    iget-boolean v0, p0, Lcom/android/internal/app/MzResolverActivity;->mIsInDetailFrag:Z

    if-eqz v0, :cond_0

    .line 2696
    invoke-direct {p0}, Lcom/android/internal/app/MzResolverActivity;->ChangeFragment()V

    .line 2693
    :goto_0
    return-void

    .line 2698
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0
.end method

.method public onButtonClick(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 675
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    const/4 v7, 0x1

    .line 231
    invoke-direct {p0}, Lcom/android/internal/app/MzResolverActivity;->makeMyIntent()Landroid/content/Intent;

    move-result-object v2

    .line 232
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {v2}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v8

    .line 233
    .local v8, "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string/jumbo v0, "android.intent.action.MAIN"

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 234
    if-eqz v8, :cond_0

    .line 235
    invoke-interface {v8}, Ljava/util/Set;->size()I

    move-result v0

    if-ne v0, v7, :cond_0

    .line 236
    const-string/jumbo v0, "android.intent.category.HOME"

    invoke-interface {v8, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 233
    if-eqz v0, :cond_0

    .line 238
    iput-boolean v7, p0, Lcom/android/internal/app/MzResolverActivity;->mResolvingHome:Z

    .line 241
    :cond_0
    invoke-virtual {p0, v7}, Lcom/android/internal/app/MzResolverActivity;->setSafeForwardingMode(Z)V

    .line 243
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v5, v3

    move-object v6, v3

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/app/MzResolverActivity;->onCreate(Landroid/os/Bundle;Landroid/content/Intent;Ljava/lang/CharSequence;I[Landroid/content/Intent;Ljava/util/List;Z)V

    .line 229
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;Landroid/content/Intent;Ljava/lang/CharSequence;I[Landroid/content/Intent;Ljava/util/List;Z)V
    .locals 14
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "title"    # Ljava/lang/CharSequence;
    .param p4, "defaultTitleRes"    # I
    .param p5, "initialIntents"    # [Landroid/content/Intent;
    .param p7, "alwaysUseOption"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Landroid/content/Intent;",
            "Ljava/lang/CharSequence;",
            "I[",
            "Landroid/content/Intent;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .local p6, "rList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    sget v2, Lcom/flyme/internal/R$style;->Theme_Flyme_Resolver:I

    invoke-virtual {p0, v2}, Lcom/android/internal/app/MzResolverActivity;->setTheme(I)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/app/MzResolverActivity;->overridePendingTransition(II)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/app/MzResolverActivity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/app/IActivityManager;->getLaunchedFromUid(Landroid/os/IBinder;)I

    move-result v2

    iput v2, p0, Lcom/android/internal/app/MzResolverActivity;->mLaunchedFromUid:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 279
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/app/MzResolverActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/app/MzResolverActivity;->mPm:Landroid/content/pm/PackageManager;

    .line 282
    move/from16 v0, p7

    iput-boolean v0, p0, Lcom/android/internal/app/MzResolverActivity;->mAlwaysUseOption:Z

    .line 283
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0x48190800

    sub-long v12, v2, v4

    .line 290
    .local v12, "sinceTime":J
    iget-object v2, p0, Lcom/android/internal/app/MzResolverActivity;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {p0}, Lcom/android/internal/app/MzResolverActivity;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, p0, v3, v4}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Z)V

    .line 291
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/app/MzResolverActivity;->mRegistered:Z

    .line 293
    const-string/jumbo v2, "activity"

    invoke-virtual {p0, v2}, Lcom/android/internal/app/MzResolverActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/ActivityManager;

    .line 294
    .local v10, "am":Landroid/app/ActivityManager;
    invoke-virtual {v10}, Landroid/app/ActivityManager;->getLauncherLargeIconDensity()I

    move-result v2

    iput v2, p0, Lcom/android/internal/app/MzResolverActivity;->mIconDpi:I

    .line 295
    invoke-virtual {v10}, Landroid/app/ActivityManager;->getLauncherLargeIconSize()I

    move-result v2

    iput v2, p0, Lcom/android/internal/app/MzResolverActivity;->mIconSize:I

    .line 302
    move-object/from16 v0, p5

    iput-object v0, p0, Lcom/android/internal/app/MzResolverActivity;->mInitialIntents:[Landroid/content/Intent;

    .line 303
    move-object/from16 v0, p2

    iput-object v0, p0, Lcom/android/internal/app/MzResolverActivity;->mTargetIntent:Landroid/content/Intent;

    .line 305
    new-instance v2, Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;

    .line 306
    iget v8, p0, Lcom/android/internal/app/MzResolverActivity;->mLaunchedFromUid:I

    move-object v3, p0

    move-object v4, p0

    move-object/from16 v5, p2

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v9, p7

    .line 305
    invoke-direct/range {v2 .. v9}, Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;-><init>(Lcom/android/internal/app/MzResolverActivity;Landroid/content/Context;Landroid/content/Intent;[Landroid/content/Intent;Ljava/util/List;IZ)V

    iput-object v2, p0, Lcom/android/internal/app/MzResolverActivity;->mAdapter:Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;

    .line 307
    iget-object v2, p0, Lcom/android/internal/app/MzResolverActivity;->mAdapter:Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;

    sget v3, Lcom/flyme/internal/R$layout;->mz_resolve_grid_item:I

    invoke-virtual {v2, v3}, Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;->setItemLayoutId(I)V

    .line 309
    move-object/from16 v0, p6

    iput-object v0, p0, Lcom/android/internal/app/MzResolverActivity;->mAppBaseResolveList:Ljava/util/List;

    .line 329
    move-object/from16 v0, p3

    iput-object v0, p0, Lcom/android/internal/app/MzResolverActivity;->mTitle:Ljava/lang/CharSequence;

    .line 330
    sget v2, Lcom/flyme/internal/R$layout;->mz_resolver_grid2:I

    invoke-virtual {p0, v2}, Lcom/android/internal/app/MzResolverActivity;->setContentView(I)V

    .line 331
    invoke-direct {p0}, Lcom/android/internal/app/MzResolverActivity;->initFragment()V

    .line 258
    return-void

    .line 276
    .end local v10    # "am":Landroid/app/ActivityManager;
    .end local v12    # "sinceTime":J
    :catch_0
    move-exception v11

    .line 277
    .local v11, "e":Landroid/os/RemoteException;
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/internal/app/MzResolverActivity;->mLaunchedFromUid:I

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;Landroid/content/Intent;Ljava/lang/CharSequence;[Landroid/content/Intent;Ljava/util/List;Z)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "title"    # Ljava/lang/CharSequence;
    .param p4, "initialIntents"    # [Landroid/content/Intent;
    .param p6, "alwaysUseOption"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Landroid/content/Intent;",
            "Ljava/lang/CharSequence;",
            "[",
            "Landroid/content/Intent;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 253
    .local p5, "rList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move-object v6, p5

    move v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/app/MzResolverActivity;->onCreate(Landroid/os/Bundle;Landroid/content/Intent;Ljava/lang/CharSequence;I[Landroid/content/Intent;Ljava/util/List;Z)V

    .line 252
    return-void
.end method

.method protected onIntentSelected(Landroid/content/pm/ResolveInfo;Landroid/content/Intent;Z)V
    .locals 28
    .param p1, "ri"    # Landroid/content/pm/ResolveInfo;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "alwaysCheck"    # Z

    .prologue
    .line 733
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/app/MzResolverActivity;->mAlwaysUseOption:Z

    if-nez v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/MzResolverActivity;->mAdapter:Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;

    invoke-virtual {v2}, Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;->hasFilteredItem()Z

    move-result v2

    if-eqz v2, :cond_e

    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/MzResolverActivity;->mAdapter:Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;

    iget-object v2, v2, Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;->mOrigResolveList:Ljava/util/List;

    if-eqz v2, :cond_e

    .line 735
    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    .line 737
    .local v6, "filter":Landroid/content/IntentFilter;
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 738
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 740
    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v15

    .line 741
    .local v15, "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v15, :cond_2

    .line 742
    invoke-interface {v15}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, "cat$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 743
    .local v13, "cat":Ljava/lang/String;
    invoke-virtual {v6, v13}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    goto :goto_0

    .line 746
    .end local v13    # "cat":Ljava/lang/String;
    .end local v14    # "cat$iterator":Ljava/util/Iterator;
    :cond_2
    const-string/jumbo v2, "android.intent.category.DEFAULT"

    invoke-virtual {v6, v2}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 748
    move-object/from16 v0, p1

    iget v2, v0, Landroid/content/pm/ResolveInfo;->match:I

    const/high16 v3, 0xfff0000

    and-int v12, v2, v3

    .line 749
    .local v12, "cat":I
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v16

    .line 750
    .local v16, "data":Landroid/net/Uri;
    const/high16 v2, 0x600000

    if-ne v12, v2, :cond_3

    .line 751
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v19

    .line 752
    .local v19, "mimeType":Ljava/lang/String;
    if-eqz v19, :cond_3

    .line 754
    :try_start_0
    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 761
    .end local v6    # "filter":Landroid/content/IntentFilter;
    .end local v19    # "mimeType":Ljava/lang/String;
    :cond_3
    :goto_1
    if-eqz v16, :cond_4

    invoke-virtual/range {v16 .. v16}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 765
    const/high16 v2, 0x600000

    if-ne v12, v2, :cond_6

    .line 766
    const-string/jumbo v2, "file"

    invoke-virtual/range {v16 .. v16}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 767
    const-string/jumbo v2, "content"

    invoke-virtual/range {v16 .. v16}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 813
    :cond_4
    :goto_2
    if-eqz v6, :cond_e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/MzResolverActivity;->mAdapter:Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;

    iget-object v2, v2, Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;->currentResolveList:Ljava/util/List;

    if-eqz v2, :cond_e

    .line 822
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/MzResolverActivity;->mAdapter:Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;

    iget-object v2, v2, Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;->currentResolveList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v9

    .line 824
    .local v9, "N":I
    new-array v0, v9, [Landroid/content/ComponentName;

    move-object/from16 v26, v0

    .line 825
    .local v26, "set":[Landroid/content/ComponentName;
    const/4 v7, 0x0

    .line 826
    .local v7, "bestMatch":I
    const/16 v18, 0x0

    .local v18, "i":I
    :goto_3
    move/from16 v0, v18

    if-ge v0, v9, :cond_d

    .line 832
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/MzResolverActivity;->mAdapter:Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;

    iget-object v2, v2, Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;->currentResolveList:Ljava/util/List;

    move/from16 v0, v18

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/content/pm/ResolveInfo;

    .line 834
    .local v24, "r":Landroid/content/pm/ResolveInfo;
    new-instance v2, Landroid/content/ComponentName;

    move-object/from16 v0, v24

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 835
    move-object/from16 v0, v24

    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 834
    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v26, v18

    .line 836
    move-object/from16 v0, v24

    iget v2, v0, Landroid/content/pm/ResolveInfo;->match:I

    if-le v2, v7, :cond_5

    move-object/from16 v0, v24

    iget v7, v0, Landroid/content/pm/ResolveInfo;->match:I

    .line 826
    :cond_5
    add-int/lit8 v18, v18, 0x1

    goto :goto_3

    .line 755
    .end local v7    # "bestMatch":I
    .end local v9    # "N":I
    .end local v18    # "i":I
    .end local v24    # "r":Landroid/content/pm/ResolveInfo;
    .end local v26    # "set":[Landroid/content/ComponentName;
    .restart local v6    # "filter":Landroid/content/IntentFilter;
    .restart local v19    # "mimeType":Ljava/lang/String;
    :catch_0
    move-exception v17

    .line 756
    .local v17, "e":Landroid/content/IntentFilter$MalformedMimeTypeException;
    const-string/jumbo v2, "ResolverActivity"

    move-object/from16 v0, v17

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 757
    const/4 v6, 0x0

    .local v6, "filter":Landroid/content/IntentFilter;
    goto :goto_1

    .line 768
    .end local v6    # "filter":Landroid/content/IntentFilter;
    .end local v17    # "e":Landroid/content/IntentFilter$MalformedMimeTypeException;
    .end local v19    # "mimeType":Ljava/lang/String;
    :cond_6
    invoke-virtual/range {v16 .. v16}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 772
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    invoke-virtual {v2}, Landroid/content/IntentFilter;->schemeSpecificPartsIterator()Ljava/util/Iterator;

    move-result-object v21

    .line 773
    .local v21, "pIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/os/PatternMatcher;>;"
    if-eqz v21, :cond_8

    .line 774
    invoke-virtual/range {v16 .. v16}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v27

    .line 775
    .local v27, "ssp":Ljava/lang/String;
    :cond_7
    if-eqz v27, :cond_8

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 776
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/os/PatternMatcher;

    .line 777
    .local v20, "p":Landroid/os/PatternMatcher;
    move-object/from16 v0, v20

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/PatternMatcher;->match(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 778
    invoke-virtual/range {v20 .. v20}, Landroid/os/PatternMatcher;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {v20 .. v20}, Landroid/os/PatternMatcher;->getType()I

    move-result v3

    invoke-virtual {v6, v2, v3}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    .line 783
    .end local v20    # "p":Landroid/os/PatternMatcher;
    .end local v27    # "ssp":Ljava/lang/String;
    :cond_8
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    invoke-virtual {v2}, Landroid/content/IntentFilter;->authoritiesIterator()Ljava/util/Iterator;

    move-result-object v11

    .line 784
    .local v11, "aIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/IntentFilter$AuthorityEntry;>;"
    if-eqz v11, :cond_a

    .line 785
    :cond_9
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 786
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/IntentFilter$AuthorityEntry;

    .line 787
    .local v10, "a":Landroid/content/IntentFilter$AuthorityEntry;
    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Landroid/content/IntentFilter$AuthorityEntry;->match(Landroid/net/Uri;)I

    move-result v2

    if-ltz v2, :cond_9

    .line 788
    invoke-virtual {v10}, Landroid/content/IntentFilter$AuthorityEntry;->getPort()I

    move-result v23

    .line 789
    .local v23, "port":I
    invoke-virtual {v10}, Landroid/content/IntentFilter$AuthorityEntry;->getHost()Ljava/lang/String;

    move-result-object v3

    .line 790
    if-ltz v23, :cond_c

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 789
    :goto_4
    invoke-virtual {v6, v3, v2}, Landroid/content/IntentFilter;->addDataAuthority(Ljava/lang/String;Ljava/lang/String;)V

    .line 795
    .end local v10    # "a":Landroid/content/IntentFilter$AuthorityEntry;
    .end local v23    # "port":I
    :cond_a
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    invoke-virtual {v2}, Landroid/content/IntentFilter;->pathsIterator()Ljava/util/Iterator;

    move-result-object v21

    .line 796
    if-eqz v21, :cond_4

    .line 797
    invoke-virtual/range {v16 .. v16}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v22

    .line 798
    .local v22, "path":Ljava/lang/String;
    :cond_b
    if-eqz v22, :cond_4

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 799
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/os/PatternMatcher;

    .line 800
    .restart local v20    # "p":Landroid/os/PatternMatcher;
    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/PatternMatcher;->match(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 801
    invoke-virtual/range {v20 .. v20}, Landroid/os/PatternMatcher;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {v20 .. v20}, Landroid/os/PatternMatcher;->getType()I

    move-result v3

    invoke-virtual {v6, v2, v3}, Landroid/content/IntentFilter;->addDataPath(Ljava/lang/String;I)V

    goto/16 :goto_2

    .line 790
    .end local v20    # "p":Landroid/os/PatternMatcher;
    .end local v22    # "path":Ljava/lang/String;
    .restart local v10    # "a":Landroid/content/IntentFilter$AuthorityEntry;
    .restart local v23    # "port":I
    :cond_c
    const/4 v2, 0x0

    goto :goto_4

    .line 838
    .end local v10    # "a":Landroid/content/IntentFilter$AuthorityEntry;
    .end local v11    # "aIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/IntentFilter$AuthorityEntry;>;"
    .end local v21    # "pIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/os/PatternMatcher;>;"
    .end local v23    # "port":I
    .restart local v7    # "bestMatch":I
    .restart local v9    # "N":I
    .restart local v18    # "i":I
    .restart local v26    # "set":[Landroid/content/ComponentName;
    :cond_d
    if-eqz p3, :cond_11

    .line 839
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/MzResolverActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 840
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    .line 839
    move-object/from16 v0, v26

    invoke-virtual {v2, v6, v7, v0, v3}, Landroid/content/pm/PackageManager;->addPreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    .line 854
    .end local v7    # "bestMatch":I
    .end local v9    # "N":I
    .end local v12    # "cat":I
    .end local v15    # "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v16    # "data":Landroid/net/Uri;
    .end local v18    # "i":I
    .end local v26    # "set":[Landroid/content/ComponentName;
    :cond_e
    :goto_5
    if-eqz p2, :cond_10

    .line 858
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/app/MzResolverActivity;->mReturnResult:Z

    if-eqz v2, :cond_f

    .line 859
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getFlags()I

    move-result v2

    .line 860
    const v3, -0x2000001

    .line 859
    and-int/2addr v2, v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 867
    :cond_f
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/internal/app/MzResolverActivity;->safelyStartActivity(Landroid/content/Intent;)V

    .line 732
    :cond_10
    return-void

    .line 843
    .restart local v7    # "bestMatch":I
    .restart local v9    # "N":I
    .restart local v12    # "cat":I
    .restart local v15    # "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v16    # "data":Landroid/net/Uri;
    .restart local v18    # "i":I
    .restart local v26    # "set":[Landroid/content/ComponentName;
    :cond_11
    :try_start_1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    .line 844
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/MzResolverActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v4

    .line 846
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    .line 845
    const/high16 v5, 0x10000

    move-object/from16 v3, p2

    .line 843
    invoke-interface/range {v2 .. v8}, Landroid/content/pm/IPackageManager;->setLastChosenActivity(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/IntentFilter;ILandroid/content/ComponentName;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_5

    .line 847
    :catch_1
    move-exception v25

    .line 848
    .local v25, "re":Landroid/os/RemoteException;
    const-string/jumbo v2, "MzResolverActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Error calling setLastChosenActivity\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
.end method

.method protected onRestart()V
    .locals 3

    .prologue
    .line 555
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 556
    iget-boolean v0, p0, Lcom/android/internal/app/MzResolverActivity;->mRegistered:Z

    if-nez v0, :cond_0

    .line 557
    iget-object v0, p0, Lcom/android/internal/app/MzResolverActivity;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {p0}, Lcom/android/internal/app/MzResolverActivity;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Z)V

    .line 558
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/app/MzResolverActivity;->mRegistered:Z

    .line 560
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/MzResolverActivity;->mAdapter:Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;->handlePackagesChanged()V

    .line 554
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 586
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 587
    iget-boolean v0, p0, Lcom/android/internal/app/MzResolverActivity;->mAlwaysUseOption:Z

    if-eqz v0, :cond_0

    .line 585
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 2739
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 2740
    const-string/jumbo v0, "ISDETAIL"

    iget-boolean v1, p0, Lcom/android/internal/app/MzResolverActivity;->mIsInDetailFrag:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2737
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 565
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 566
    iget-boolean v0, p0, Lcom/android/internal/app/MzResolverActivity;->mRegistered:Z

    if-eqz v0, :cond_0

    .line 567
    iget-object v0, p0, Lcom/android/internal/app/MzResolverActivity;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {v0}, Lcom/android/internal/content/PackageMonitor;->unregister()V

    .line 568
    iput-boolean v1, p0, Lcom/android/internal/app/MzResolverActivity;->mRegistered:Z

    .line 570
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/app/MzResolverActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/high16 v1, 0x10000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    .line 578
    invoke-virtual {p0}, Lcom/android/internal/app/MzResolverActivity;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_1

    .line 579
    invoke-virtual {p0}, Lcom/android/internal/app/MzResolverActivity;->finish()V

    .line 564
    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 2705
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v0, v2

    .line 2706
    .local v0, "TouchX":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v1, v2

    .line 2716
    .local v1, "TouchY":I
    invoke-super {p0, p1}, Landroid/app/Activity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    return v2
.end method

.method public safelyStartActivity(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 874
    invoke-static {}, Landroid/os/StrictMode;->disableDeathOnFileUriExposure()V

    .line 876
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/internal/app/MzResolverActivity;->safelyStartActivityInternal(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 878
    invoke-static {}, Landroid/os/StrictMode;->enableDeathOnFileUriExposure()V

    .line 871
    return-void

    .line 877
    :catchall_0
    move-exception v0

    .line 878
    invoke-static {}, Landroid/os/StrictMode;->enableDeathOnFileUriExposure()V

    .line 877
    throw v0
.end method

.method public setSafeForwardingMode(Z)V
    .locals 0
    .param p1, "safeForwarding"    # Z

    .prologue
    .line 488
    iput-boolean p1, p0, Lcom/android/internal/app/MzResolverActivity;->mSafeForwardingMode:Z

    .line 487
    return-void
.end method

.method showAppDetails(Landroid/content/pm/ResolveInfo;)V
    .locals 5
    .param p1, "ri"    # Landroid/content/pm/ResolveInfo;

    .prologue
    .line 904
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 905
    const-string/jumbo v2, "package"

    iget-object v3, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 904
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v1

    .line 906
    const/high16 v2, 0x80000

    .line 904
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 907
    .local v0, "in":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/android/internal/app/MzResolverActivity;->startActivity(Landroid/content/Intent;)V

    .line 903
    return-void
.end method

.method startSelected(IZZ)V
    .locals 5
    .param p1, "which"    # I
    .param p2, "always"    # Z
    .param p3, "filtered"    # Z

    .prologue
    const/16 v3, 0x8

    .line 701
    invoke-virtual {p0}, Lcom/android/internal/app/MzResolverActivity;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 702
    return-void

    .line 704
    :cond_0
    iget-boolean v2, p0, Lcom/android/internal/app/MzResolverActivity;->mHasMore:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/app/MzResolverActivity;->mAdapter:Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;

    invoke-virtual {v2}, Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;->getIsDetail()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 711
    :cond_1
    iget-boolean v2, p0, Lcom/android/internal/app/MzResolverActivity;->mAlwaysUseOption:Z

    if-nez v2, :cond_2

    .line 712
    invoke-virtual {p0}, Lcom/android/internal/app/MzResolverActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 713
    const-string/jumbo v3, "android.intent.extra.requset_result"

    const/4 v4, 0x0

    .line 712
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/internal/app/MzResolverActivity;->mReturnResult:Z

    .line 714
    iget-boolean v2, p0, Lcom/android/internal/app/MzResolverActivity;->mReturnResult:Z

    if-eqz v2, :cond_2

    .line 715
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Lcom/android/internal/app/MzResolverActivity;->setResult(I)V

    .line 719
    :cond_2
    iget-object v2, p0, Lcom/android/internal/app/MzResolverActivity;->mAdapter:Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;

    invoke-virtual {v2, p1, p3}, Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;->resolveInfoForPosition(IZ)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 720
    .local v1, "ri":Landroid/content/pm/ResolveInfo;
    iget-object v2, p0, Lcom/android/internal/app/MzResolverActivity;->mAdapter:Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;

    invoke-virtual {v2, p1, p3}, Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;->intentForPosition(IZ)Landroid/content/Intent;

    move-result-object v0

    .line 721
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v1, v0, p2}, Lcom/android/internal/app/MzResolverActivity;->onIntentSelected(Landroid/content/pm/ResolveInfo;Landroid/content/Intent;Z)V

    .line 722
    invoke-virtual {p0}, Lcom/android/internal/app/MzResolverActivity;->finish()V

    .line 700
    return-void

    .line 704
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_3
    iget-object v2, p0, Lcom/android/internal/app/MzResolverActivity;->mAdapter:Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;

    invoke-virtual {v2}, Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;->getCount()I

    move-result v2

    if-le v2, v3, :cond_1

    if-ne p1, v3, :cond_1

    .line 705
    invoke-direct {p0}, Lcom/android/internal/app/MzResolverActivity;->ChangeFragment()V

    .line 706
    return-void
.end method
