.class Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;
.super Landroid/widget/BaseAdapter;
.source "ManageApplications.java"

# interfaces
.implements Landroid/widget/Filterable;
.implements Lcom/android/exsettingslib/applications/ApplicationsState$Callbacks;
.implements Lcom/android/exsettings/applications/AppStateBaseBridge$Callback;
.implements Landroid/widget/AbsListView$RecyclerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/applications/ManageApplications;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ApplicationsAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter$1;
    }
.end annotation


# instance fields
.field private final mActive:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mBaseEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field mCurFilterPrefix:Ljava/lang/CharSequence;

.field private mEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final mExtraInfoBridge:Lcom/android/exsettings/applications/AppStateBaseBridge;

.field private mFilter:Landroid/widget/Filter;

.field private mFilterMode:I

.field private mHasReceivedBridgeCallback:Z

.field private mHasReceivedLoadEntries:Z

.field private mLastSortMode:I

.field private final mManageApplications:Lcom/android/exsettings/applications/ManageApplications;

.field private mOverrideFilter:Lcom/android/exsettingslib/applications/ApplicationsState$AppFilter;

.field private mPm:Landroid/content/pm/PackageManager;

.field private mResumed:Z

.field private final mSession:Lcom/android/exsettingslib/applications/ApplicationsState$Session;

.field private final mState:Lcom/android/exsettingslib/applications/ApplicationsState;

.field private mWhichSize:I


# direct methods
.method static synthetic -get0(Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->mBaseEntries:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;)Lcom/android/exsettings/applications/AppStateBaseBridge;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->mExtraInfoBridge:Lcom/android/exsettings/applications/AppStateBaseBridge;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->mHasReceivedLoadEntries:Z

    return v0
.end method

.method static synthetic -set0(Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    iput-object p1, p0, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->mHasReceivedLoadEntries:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->updateLoading()V

    return-void
.end method

.method public constructor <init>(Lcom/android/exsettingslib/applications/ApplicationsState;Lcom/android/exsettings/applications/ManageApplications;I)V
    .locals 4
    .param p1, "state"    # Lcom/android/exsettingslib/applications/ApplicationsState;
    .param p2, "manageApplications"    # Lcom/android/exsettings/applications/ManageApplications;
    .param p3, "filterMode"    # I

    .prologue
    .line 756
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 722
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->mActive:Ljava/util/ArrayList;

    .line 728
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->mLastSortMode:I

    .line 729
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->mWhichSize:I

    .line 736
    new-instance v0, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter$1;

    invoke-direct {v0, p0}, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter$1;-><init>(Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;)V

    iput-object v0, p0, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->mFilter:Landroid/widget/Filter;

    .line 758
    iput-object p1, p0, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->mState:Lcom/android/exsettingslib/applications/ApplicationsState;

    .line 759
    invoke-virtual {p1, p0}, Lcom/android/exsettingslib/applications/ApplicationsState;->newSession(Lcom/android/exsettingslib/applications/ApplicationsState$Callbacks;)Lcom/android/exsettingslib/applications/ApplicationsState$Session;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->mSession:Lcom/android/exsettingslib/applications/ApplicationsState$Session;

    .line 760
    iput-object p2, p0, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/exsettings/applications/ManageApplications;

    .line 761
    invoke-virtual {p2}, Lcom/android/exsettings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->mContext:Landroid/content/Context;

    .line 762
    iget-object v0, p0, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->mPm:Landroid/content/pm/PackageManager;

    .line 763
    iput p3, p0, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->mFilterMode:I

    .line 764
    iget-object v0, p0, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/exsettings/applications/ManageApplications;

    iget v0, v0, Lcom/android/exsettings/applications/ManageApplications;->mListType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 765
    new-instance v0, Lcom/android/exsettings/applications/AppStateNotificationBridge;

    iget-object v1, p0, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 766
    iget-object v2, p0, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->mState:Lcom/android/exsettingslib/applications/ApplicationsState;

    invoke-static {p2}, Lcom/android/exsettings/applications/ManageApplications;->-get5(Lcom/android/exsettings/applications/ManageApplications;)Lcom/android/exsettings/notification/NotificationBackend;

    move-result-object v3

    .line 765
    invoke-direct {v0, v1, v2, p0, v3}, Lcom/android/exsettings/applications/AppStateNotificationBridge;-><init>(Landroid/content/pm/PackageManager;Lcom/android/exsettingslib/applications/ApplicationsState;Lcom/android/exsettings/applications/AppStateBaseBridge$Callback;Lcom/android/exsettings/notification/NotificationBackend;)V

    iput-object v0, p0, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->mExtraInfoBridge:Lcom/android/exsettings/applications/AppStateBaseBridge;

    .line 757
    :goto_0
    return-void

    .line 767
    :cond_0
    iget-object v0, p0, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/exsettings/applications/ManageApplications;

    iget v0, v0, Lcom/android/exsettings/applications/ManageApplications;->mListType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 768
    new-instance v0, Lcom/android/exsettings/applications/AppStateUsageBridge;

    iget-object v1, p0, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->mState:Lcom/android/exsettingslib/applications/ApplicationsState;

    invoke-direct {v0, v1, v2, p0}, Lcom/android/exsettings/applications/AppStateUsageBridge;-><init>(Landroid/content/Context;Lcom/android/exsettingslib/applications/ApplicationsState;Lcom/android/exsettings/applications/AppStateBaseBridge$Callback;)V

    iput-object v0, p0, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->mExtraInfoBridge:Lcom/android/exsettings/applications/AppStateBaseBridge;

    goto :goto_0

    .line 769
    :cond_1
    iget-object v0, p0, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/exsettings/applications/ManageApplications;

    iget v0, v0, Lcom/android/exsettings/applications/ManageApplications;->mListType:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    .line 770
    new-instance v0, Lcom/android/exsettings/applications/AppStatePowerBridge;

    iget-object v1, p0, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->mState:Lcom/android/exsettingslib/applications/ApplicationsState;

    invoke-direct {v0, v1, p0}, Lcom/android/exsettings/applications/AppStatePowerBridge;-><init>(Lcom/android/exsettingslib/applications/ApplicationsState;Lcom/android/exsettings/applications/AppStateBaseBridge$Callback;)V

    iput-object v0, p0, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->mExtraInfoBridge:Lcom/android/exsettings/applications/AppStateBaseBridge;

    goto :goto_0

    .line 771
    :cond_2
    iget-object v0, p0, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/exsettings/applications/ManageApplications;

    iget v0, v0, Lcom/android/exsettings/applications/ManageApplications;->mListType:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_3

    .line 772
    new-instance v0, Lcom/android/exsettings/applications/AppStateOverlayBridge;

    iget-object v1, p0, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->mState:Lcom/android/exsettingslib/applications/ApplicationsState;

    invoke-direct {v0, v1, v2, p0}, Lcom/android/exsettings/applications/AppStateOverlayBridge;-><init>(Landroid/content/Context;Lcom/android/exsettingslib/applications/ApplicationsState;Lcom/android/exsettings/applications/AppStateBaseBridge$Callback;)V

    iput-object v0, p0, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->mExtraInfoBridge:Lcom/android/exsettings/applications/AppStateBaseBridge;

    goto :goto_0

    .line 773
    :cond_3
    iget-object v0, p0, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/exsettings/applications/ManageApplications;

    iget v0, v0, Lcom/android/exsettings/applications/ManageApplications;->mListType:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_4

    .line 774
    new-instance v0, Lcom/android/exsettings/applications/AppStateWriteSettingsBridge;

    iget-object v1, p0, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->mState:Lcom/android/exsettingslib/applications/ApplicationsState;

    invoke-direct {v0, v1, v2, p0}, Lcom/android/exsettings/applications/AppStateWriteSettingsBridge;-><init>(Landroid/content/Context;Lcom/android/exsettingslib/applications/ApplicationsState;Lcom/android/exsettings/applications/AppStateBaseBridge$Callback;)V

    iput-object v0, p0, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->mExtraInfoBridge:Lcom/android/exsettings/applications/AppStateBaseBridge;

    goto :goto_0

    .line 776
    :cond_4
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->mExtraInfoBridge:Lcom/android/exsettings/applications/AppStateBaseBridge;

    goto :goto_0
.end method

.method private getDomainsSummary(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const v6, 0x7f0c0f3d

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1124
    iget-object v2, p0, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->mPm:Landroid/content/pm/PackageManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getIntentVerificationStatus(Ljava/lang/String;I)I

    move-result v0

    .line 1125
    .local v0, "domainStatus":I
    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    .line 1126
    iget-object v2, p0, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 1130
    :cond_0
    iget-object v2, p0, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->mPm:Landroid/content/pm/PackageManager;

    invoke-static {v2, p1}, Lcom/android/exsettings/Utils;->getHandledDomains(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v1

    .line 1131
    .local v1, "result":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 1132
    iget-object v2, p0, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 1133
    :cond_1
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-ne v2, v4, :cond_2

    .line 1134
    iget-object v2, p0, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->mContext:Landroid/content/Context;

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v5}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v3, v5

    const v4, 0x7f0c0f3e

    invoke-virtual {v2, v4, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 1136
    :cond_2
    iget-object v2, p0, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->mContext:Landroid/content/Context;

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v5}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v3, v5

    const v4, 0x7f0c0f3f

    invoke-virtual {v2, v4, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private updateLoading()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 900
    iget-object v0, p0, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/exsettings/applications/ManageApplications;

    invoke-static {v0}, Lcom/android/exsettings/applications/ManageApplications;->-get4(Lcom/android/exsettings/applications/ManageApplications;)Landroid/view/View;

    move-result-object v2

    .line 901
    iget-object v0, p0, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/exsettings/applications/ManageApplications;

    invoke-static {v0}, Lcom/android/exsettings/applications/ManageApplications;->-get3(Lcom/android/exsettings/applications/ManageApplications;)Landroid/view/View;

    move-result-object v3

    .line 902
    iget-boolean v0, p0, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->mHasReceivedLoadEntries:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->mSession:Lcom/android/exsettingslib/applications/ApplicationsState$Session;

    invoke-virtual {v0}, Lcom/android/exsettingslib/applications/ApplicationsState$Session;->getAllApps()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 900
    :goto_0
    invoke-static {v2, v3, v0, v1}, Lcom/android/exsettings/Utils;->handleLoadingContainer(Landroid/view/View;Landroid/view/View;ZZ)V

    .line 899
    return-void

    :cond_0
    move v0, v1

    .line 902
    goto :goto_0
.end method

.method private updateSummary(Lcom/android/exsettings/applications/AppViewHolder;)V
    .locals 3
    .param p1, "holder"    # Lcom/android/exsettings/applications/AppViewHolder;

    .prologue
    const/4 v1, 0x0

    .line 1068
    iget-object v0, p0, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/exsettings/applications/ManageApplications;

    iget v0, v0, Lcom/android/exsettings/applications/ManageApplications;->mListType:I

    packed-switch v0, :pswitch_data_0

    .line 1106
    :pswitch_0
    iget-object v0, p0, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/exsettings/applications/ManageApplications;

    iget-object v0, v0, Lcom/android/exsettings/applications/ManageApplications;->mInvalidSizeStr:Ljava/lang/CharSequence;

    iget v1, p0, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->mWhichSize:I

    invoke-virtual {p1, v0, v1}, Lcom/android/exsettings/applications/AppViewHolder;->updateSizeText(Ljava/lang/CharSequence;I)V

    .line 1067
    :goto_0
    return-void

    .line 1070
    :pswitch_1
    iget-object v0, p1, Lcom/android/exsettings/applications/AppViewHolder;->entry:Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 1071
    iget-object v1, p1, Lcom/android/exsettings/applications/AppViewHolder;->summary:Landroid/widget/TextView;

    .line 1072
    iget-object v0, p1, Lcom/android/exsettings/applications/AppViewHolder;->entry:Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    check-cast v0, Lcom/android/exsettings/notification/NotificationBackend$AppRow;

    iget-object v2, p0, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->mContext:Landroid/content/Context;

    .line 1071
    invoke-static {v0, v2}, Lcom/android/exsettings/applications/InstalledAppDetails;->getNotificationSummary(Lcom/android/exsettings/notification/NotificationBackend$AppRow;Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1074
    :cond_0
    iget-object v0, p1, Lcom/android/exsettings/applications/AppViewHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1079
    :pswitch_2
    iget-object v0, p1, Lcom/android/exsettings/applications/AppViewHolder;->summary:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/android/exsettings/applications/AppViewHolder;->entry:Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->getDomainsSummary(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1083
    :pswitch_3
    iget-object v0, p1, Lcom/android/exsettings/applications/AppViewHolder;->entry:Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    if-eqz v0, :cond_2

    .line 1084
    iget-object v1, p1, Lcom/android/exsettings/applications/AppViewHolder;->summary:Landroid/widget/TextView;

    new-instance v2, Lcom/android/exsettings/applications/AppStateUsageBridge$UsageState;

    iget-object v0, p1, Lcom/android/exsettings/applications/AppViewHolder;->entry:Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    check-cast v0, Lcom/android/exsettings/applications/AppStateAppOpsBridge$PermissionState;

    invoke-direct {v2, v0}, Lcom/android/exsettings/applications/AppStateUsageBridge$UsageState;-><init>(Lcom/android/exsettings/applications/AppStateAppOpsBridge$PermissionState;)V

    invoke-virtual {v2}, Lcom/android/exsettings/applications/AppStateUsageBridge$UsageState;->isPermissible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1085
    const v0, 0x7f0c0ee8

    .line 1084
    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 1086
    :cond_1
    const v0, 0x7f0c0ee9

    goto :goto_1

    .line 1088
    :cond_2
    iget-object v0, p1, Lcom/android/exsettings/applications/AppViewHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1093
    :pswitch_4
    iget-object v0, p1, Lcom/android/exsettings/applications/AppViewHolder;->summary:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p1, Lcom/android/exsettings/applications/AppViewHolder;->entry:Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;

    invoke-static {v1, v2}, Lcom/android/exsettings/fuelgauge/HighPowerDetail;->getSummary(Landroid/content/Context;Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1097
    :pswitch_5
    iget-object v0, p1, Lcom/android/exsettings/applications/AppViewHolder;->summary:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p1, Lcom/android/exsettings/applications/AppViewHolder;->entry:Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;

    invoke-static {v1, v2}, Lcom/android/exsettings/applications/DrawOverlayDetails;->getSummary(Landroid/content/Context;Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1101
    :pswitch_6
    iget-object v0, p1, Lcom/android/exsettings/applications/AppViewHolder;->summary:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->mContext:Landroid/content/Context;

    .line 1102
    iget-object v2, p1, Lcom/android/exsettings/applications/AppViewHolder;->entry:Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;

    .line 1101
    invoke-static {v1, v2}, Lcom/android/exsettings/applications/WriteSettingsDetails;->getSummary(Landroid/content/Context;Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1068
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method


# virtual methods
.method applyPrefixFilter(Ljava/lang/CharSequence;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 8
    .param p1, "prefix"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 907
    .local p2, "origEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-nez v6, :cond_1

    .line 908
    :cond_0
    return-object p2

    .line 910
    :cond_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/exsettingslib/applications/ApplicationsState;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 911
    .local v4, "prefixStr":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 913
    .local v5, "spacePrefixStr":Ljava/lang/String;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 914
    .local v2, "newEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v1, v6, :cond_4

    .line 915
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;

    .line 916
    .local v0, "entry":Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;
    invoke-virtual {v0}, Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;->getNormalizedLabel()Ljava/lang/String;

    move-result-object v3

    .line 917
    .local v3, "nlabel":Ljava/lang/String;
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_3

    .line 918
    :cond_2
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 914
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 921
    .end local v0    # "entry":Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;
    .end local v3    # "nlabel":Ljava/lang/String;
    :cond_4
    return-object v2
.end method

.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 1020
    const/4 v0, 0x0

    return v0
.end method

.method public getAppEntry(I)Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 1011
    iget-object v0, p0, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 1003
    iget-object v0, p0, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 1

    .prologue
    .line 1113
    iget-object v0, p0, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->mFilter:Landroid/widget/Filter;

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 1007
    iget-object v0, p0, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 1015
    iget-object v0, p0, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;

    iget-wide v0, v0, Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;->id:J

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 1035
    iget-object v2, p0, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/exsettings/applications/ManageApplications;

    invoke-static {v2}, Lcom/android/exsettings/applications/ManageApplications;->-get2(Lcom/android/exsettings/applications/ManageApplications;)Landroid/view/LayoutInflater;

    move-result-object v2

    invoke-static {v2, p2}, Lcom/android/exsettings/applications/AppViewHolder;->createOrRecycle(Landroid/view/LayoutInflater;Landroid/view/View;)Lcom/android/exsettings/applications/AppViewHolder;

    move-result-object v1

    .line 1037
    .local v1, "holder":Lcom/android/exsettings/applications/AppViewHolder;
    iget-object p2, v1, Lcom/android/exsettings/applications/AppViewHolder;->rootView:Landroid/view/View;

    .line 1040
    iget-object v2, p0, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;

    .line 1041
    .local v0, "entry":Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;
    monitor-enter v0

    .line 1042
    :try_start_0
    iput-object v0, v1, Lcom/android/exsettings/applications/AppViewHolder;->entry:Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;

    .line 1043
    iget-object v2, v0, Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;->label:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1044
    iget-object v2, v1, Lcom/android/exsettings/applications/AppViewHolder;->appName:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;->label:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1046
    :cond_0
    iget-object v2, p0, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->mState:Lcom/android/exsettingslib/applications/ApplicationsState;

    invoke-virtual {v2, v0}, Lcom/android/exsettingslib/applications/ApplicationsState;->ensureIcon(Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;)V

    .line 1047
    iget-object v2, v0, Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    .line 1048
    iget-object v2, v1, Lcom/android/exsettings/applications/AppViewHolder;->appIcon:Landroid/widget/ImageView;

    iget-object v3, v0, Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1050
    :cond_1
    invoke-direct {p0, v1}, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->updateSummary(Lcom/android/exsettings/applications/AppViewHolder;)V

    .line 1051
    iget-object v2, v0, Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v3, 0x800000

    and-int/2addr v2, v3

    if-nez v2, :cond_2

    .line 1052
    iget-object v2, v1, Lcom/android/exsettings/applications/AppViewHolder;->disabled:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1053
    iget-object v2, v1, Lcom/android/exsettings/applications/AppViewHolder;->disabled:Landroid/widget/TextView;

    const v3, 0x7f0c09da

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v0

    .line 1061
    iget-object v2, p0, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1062
    iget-object v2, p0, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1063
    invoke-virtual {p0, p1}, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->isEnabled(I)Z

    move-result v2

    invoke-virtual {p2, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 1064
    return-object p2

    .line 1054
    :cond_2
    :try_start_1
    iget-object v2, v0, Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-boolean v2, v2, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v2, :cond_3

    .line 1055
    iget-object v2, v1, Lcom/android/exsettings/applications/AppViewHolder;->disabled:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1056
    iget-object v2, v1, Lcom/android/exsettings/applications/AppViewHolder;->disabled:Landroid/widget/TextView;

    const v3, 0x7f0c09d9

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1041
    :catchall_0
    move-exception v2

    monitor-exit v0

    throw v2

    .line 1058
    :cond_3
    :try_start_2
    iget-object v2, v1, Lcom/android/exsettings/applications/AppViewHolder;->disabled:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public isEnabled(I)Z
    .locals 4
    .param p1, "position"    # I

    .prologue
    const/4 v1, 0x1

    .line 1025
    iget-object v2, p0, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/exsettings/applications/ManageApplications;

    iget v2, v2, Lcom/android/exsettings/applications/ManageApplications;->mListType:I

    const/4 v3, 0x5

    if-eq v2, v3, :cond_0

    .line 1026
    return v1

    .line 1028
    :cond_0
    iget-object v2, p0, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;

    .line 1029
    .local v0, "entry":Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;
    invoke-static {}, Lcom/android/exsettings/fuelgauge/PowerWhitelistBackend;->getInstance()Lcom/android/exsettings/fuelgauge/PowerWhitelistBackend;

    move-result-object v2

    iget-object v3, v0, Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/exsettings/fuelgauge/PowerWhitelistBackend;->isSysWhitelisted(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x0

    :cond_1
    return v1
.end method

.method public onAllSizesComputed()V
    .locals 2

    .prologue
    .line 997
    iget v0, p0, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->mLastSortMode:I

    const v1, 0x7f13032d

    if-ne v0, v1, :cond_0

    .line 998
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->rebuild(Z)V

    .line 996
    :cond_0
    return-void
.end method

.method public onExtraInfoUpdated()V
    .locals 1

    .prologue
    .line 927
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->mHasReceivedBridgeCallback:Z

    .line 928
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->rebuild(Z)V

    .line 926
    return-void
.end method

.method public onLauncherInfoChanged()V
    .locals 1

    .prologue
    .line 990
    iget-object v0, p0, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/exsettings/applications/ManageApplications;

    invoke-static {v0}, Lcom/android/exsettings/applications/ManageApplications;->-get6(Lcom/android/exsettings/applications/ManageApplications;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 991
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->rebuild(Z)V

    .line 989
    :cond_0
    return-void
.end method

.method public onLoadEntriesCompleted()V
    .locals 1

    .prologue
    .line 964
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->mHasReceivedLoadEntries:Z

    .line 963
    return-void
.end method

.method public onMovedToScrapHeap(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1118
    iget-object v0, p0, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1117
    return-void
.end method

.method public onPackageIconChanged()V
    .locals 0

    .prologue
    .line 957
    return-void
.end method

.method public onPackageListChanged()V
    .locals 1

    .prologue
    .line 953
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->rebuild(Z)V

    .line 952
    return-void
.end method

.method public onPackageSizeChanged(Ljava/lang/String;)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 969
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 970
    iget-object v2, p0, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/exsettings/applications/AppViewHolder;

    .line 971
    .local v0, "holder":Lcom/android/exsettings/applications/AppViewHolder;
    iget-object v2, v0, Lcom/android/exsettings/applications/AppViewHolder;->entry:Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 972
    iget-object v2, v0, Lcom/android/exsettings/applications/AppViewHolder;->entry:Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;

    monitor-enter v2

    .line 973
    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->updateSummary(Lcom/android/exsettings/applications/AppViewHolder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 975
    iget-object v2, v0, Lcom/android/exsettings/applications/AppViewHolder;->entry:Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/exsettings/applications/ManageApplications;

    invoke-static {v3}, Lcom/android/exsettings/applications/ManageApplications;->-get0(Lcom/android/exsettings/applications/ManageApplications;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 976
    iget v2, p0, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->mLastSortMode:I

    const v3, 0x7f13032d

    if-ne v2, v3, :cond_0

    .line 981
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->rebuild(Z)V

    .line 983
    :cond_0
    return-void

    .line 972
    :catchall_0
    move-exception v3

    monitor-exit v2

    throw v3

    .line 969
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 968
    .end local v0    # "holder":Lcom/android/exsettings/applications/AppViewHolder;
    :cond_2
    return-void
.end method

.method public onRebuildComplete(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "apps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;>;"
    const/4 v3, 0x0

    .line 938
    iget-object v0, p0, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/exsettings/applications/ManageApplications;

    invoke-static {v0}, Lcom/android/exsettings/applications/ManageApplications;->-get4(Lcom/android/exsettings/applications/ManageApplications;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 939
    iget-object v0, p0, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/exsettings/applications/ManageApplications;

    invoke-static {v0}, Lcom/android/exsettings/applications/ManageApplications;->-get4(Lcom/android/exsettings/applications/ManageApplications;)Landroid/view/View;

    move-result-object v0

    .line 940
    iget-object v1, p0, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->mContext:Landroid/content/Context;

    const v2, 0x10a0001

    .line 939
    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 941
    iget-object v0, p0, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/exsettings/applications/ManageApplications;

    invoke-static {v0}, Lcom/android/exsettings/applications/ManageApplications;->-get3(Lcom/android/exsettings/applications/ManageApplications;)Landroid/view/View;

    move-result-object v0

    .line 942
    iget-object v1, p0, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->mContext:Landroid/content/Context;

    const/high16 v2, 0x10a0000

    .line 941
    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 944
    :cond_0
    iget-object v0, p0, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/exsettings/applications/ManageApplications;

    invoke-static {v0}, Lcom/android/exsettings/applications/ManageApplications;->-get3(Lcom/android/exsettings/applications/ManageApplications;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 945
    iget-object v0, p0, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/exsettings/applications/ManageApplications;

    invoke-static {v0}, Lcom/android/exsettings/applications/ManageApplications;->-get4(Lcom/android/exsettings/applications/ManageApplications;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 946
    iput-object p1, p0, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->mBaseEntries:Ljava/util/ArrayList;

    .line 947
    iget-object v0, p0, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->mCurFilterPrefix:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->mBaseEntries:Ljava/util/ArrayList;

    invoke-virtual {p0, v0, v1}, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->applyPrefixFilter(Ljava/lang/CharSequence;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    .line 948
    invoke-virtual {p0}, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->notifyDataSetChanged()V

    .line 937
    return-void
.end method

.method public onRunningStateChanged(Z)V
    .locals 1
    .param p1, "running"    # Z

    .prologue
    .line 933
    iget-object v0, p0, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/exsettings/applications/ManageApplications;

    invoke-virtual {v0}, Lcom/android/exsettings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setProgressBarIndeterminateVisibility(Z)V

    .line 932
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 806
    iget-boolean v0, p0, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->mResumed:Z

    if-eqz v0, :cond_0

    .line 807
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->mResumed:Z

    .line 808
    iget-object v0, p0, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->mSession:Lcom/android/exsettingslib/applications/ApplicationsState$Session;

    invoke-virtual {v0}, Lcom/android/exsettingslib/applications/ApplicationsState$Session;->pause()V

    .line 809
    iget-object v0, p0, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->mExtraInfoBridge:Lcom/android/exsettings/applications/AppStateBaseBridge;

    if-eqz v0, :cond_0

    .line 810
    iget-object v0, p0, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->mExtraInfoBridge:Lcom/android/exsettings/applications/AppStateBaseBridge;

    invoke-virtual {v0}, Lcom/android/exsettings/applications/AppStateBaseBridge;->pause()V

    .line 805
    :cond_0
    return-void
.end method

.method public rebuild(I)V
    .locals 1
    .param p1, "sort"    # I

    .prologue
    .line 823
    iget v0, p0, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->mLastSortMode:I

    if-ne p1, v0, :cond_0

    .line 824
    return-void

    .line 826
    :cond_0
    iput p1, p0, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->mLastSortMode:I

    .line 827
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->rebuild(Z)V

    .line 822
    return-void
.end method

.method public rebuild(Z)V
    .locals 10
    .param p1, "eraseold"    # Z

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 831
    iget-boolean v5, p0, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->mHasReceivedLoadEntries:Z

    if-nez v5, :cond_1

    .line 832
    iget-object v5, p0, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->mExtraInfoBridge:Lcom/android/exsettings/applications/AppStateBaseBridge;

    if-eqz v5, :cond_0

    iget-boolean v5, p0, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->mHasReceivedBridgeCallback:Z

    .line 831
    if-eqz v5, :cond_1

    .line 834
    :cond_0
    return-void

    .line 836
    :cond_1
    sget-boolean v5, Lcom/android/exsettings/applications/ManageApplications;->DEBUG:Z

    if-eqz v5, :cond_2

    const-string/jumbo v5, "ManageApplications"

    const-string/jumbo v6, "Rebuilding app list..."

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 839
    :cond_2
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v1

    .line 840
    .local v1, "emulated":Z
    if-eqz v1, :cond_8

    .line 841
    iput v8, p0, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->mWhichSize:I

    .line 845
    :goto_0
    sget-object v5, Lcom/android/exsettings/applications/ManageApplications;->FILTERS:[Lcom/android/exsettingslib/applications/ApplicationsState$AppFilter;

    iget v6, p0, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->mFilterMode:I

    aget-object v3, v5, v6

    .line 846
    .local v3, "filterObj":Lcom/android/exsettingslib/applications/ApplicationsState$AppFilter;
    iget-object v5, p0, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->mOverrideFilter:Lcom/android/exsettingslib/applications/ApplicationsState$AppFilter;

    if-eqz v5, :cond_3

    .line 847
    iget-object v3, p0, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->mOverrideFilter:Lcom/android/exsettingslib/applications/ApplicationsState$AppFilter;

    .line 849
    :cond_3
    iget-object v5, p0, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/exsettings/applications/ManageApplications;

    invoke-static {v5}, Lcom/android/exsettings/applications/ManageApplications;->-get6(Lcom/android/exsettings/applications/ManageApplications;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 850
    new-instance v4, Lcom/android/exsettingslib/applications/ApplicationsState$CompoundFilter;

    .line 851
    sget-object v5, Lcom/android/exsettingslib/applications/ApplicationsState;->FILTER_DOWNLOADED_AND_LAUNCHER:Lcom/android/exsettingslib/applications/ApplicationsState$AppFilter;

    .line 850
    invoke-direct {v4, v3, v5}, Lcom/android/exsettingslib/applications/ApplicationsState$CompoundFilter;-><init>(Lcom/android/exsettingslib/applications/ApplicationsState$AppFilter;Lcom/android/exsettingslib/applications/ApplicationsState$AppFilter;)V

    .end local v3    # "filterObj":Lcom/android/exsettingslib/applications/ApplicationsState$AppFilter;
    .local v4, "filterObj":Lcom/android/exsettingslib/applications/ApplicationsState$AppFilter;
    move-object v3, v4

    .line 853
    .end local v4    # "filterObj":Lcom/android/exsettingslib/applications/ApplicationsState$AppFilter;
    .restart local v3    # "filterObj":Lcom/android/exsettingslib/applications/ApplicationsState$AppFilter;
    :cond_4
    iget v5, p0, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->mLastSortMode:I

    packed-switch v5, :pswitch_data_0

    .line 868
    sget-object v0, Lcom/android/exsettingslib/applications/ApplicationsState;->ALPHA_COMPARATOR:Ljava/util/Comparator;

    .line 872
    .local v0, "comparatorObj":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;>;"
    :goto_1
    iget-object v5, p0, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->mSession:Lcom/android/exsettingslib/applications/ApplicationsState$Session;

    invoke-virtual {v5, v3, v0}, Lcom/android/exsettingslib/applications/ApplicationsState$Session;->rebuild(Lcom/android/exsettingslib/applications/ApplicationsState$AppFilter;Ljava/util/Comparator;)Ljava/util/ArrayList;

    move-result-object v2

    .line 873
    .local v2, "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;>;"
    if-nez v2, :cond_5

    if-eqz p1, :cond_9

    .line 877
    :cond_5
    iput-object v2, p0, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->mBaseEntries:Ljava/util/ArrayList;

    .line 878
    iget-object v5, p0, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->mBaseEntries:Ljava/util/ArrayList;

    if-eqz v5, :cond_a

    .line 879
    iget-object v5, p0, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->mCurFilterPrefix:Ljava/lang/CharSequence;

    iget-object v6, p0, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->mBaseEntries:Ljava/util/ArrayList;

    invoke-virtual {p0, v5, v6}, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->applyPrefixFilter(Ljava/lang/CharSequence;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v5

    iput-object v5, p0, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    .line 883
    :goto_2
    invoke-virtual {p0}, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->notifyDataSetChanged()V

    .line 885
    iget-object v5, p0, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->mSession:Lcom/android/exsettingslib/applications/ApplicationsState$Session;

    invoke-virtual {v5}, Lcom/android/exsettingslib/applications/ApplicationsState$Session;->getAllApps()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-eqz v5, :cond_6

    .line 886
    iget-object v5, p0, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/exsettings/applications/ManageApplications;

    invoke-static {v5}, Lcom/android/exsettings/applications/ManageApplications;->-get3(Lcom/android/exsettings/applications/ManageApplications;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-eqz v5, :cond_6

    .line 887
    iget-object v5, p0, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/exsettings/applications/ManageApplications;

    invoke-static {v5}, Lcom/android/exsettings/applications/ManageApplications;->-get4(Lcom/android/exsettings/applications/ManageApplications;)Landroid/view/View;

    move-result-object v5

    .line 888
    iget-object v6, p0, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/exsettings/applications/ManageApplications;

    invoke-static {v6}, Lcom/android/exsettings/applications/ManageApplications;->-get3(Lcom/android/exsettings/applications/ManageApplications;)Landroid/view/View;

    move-result-object v6

    .line 887
    invoke-static {v5, v6, v9, v9}, Lcom/android/exsettings/Utils;->handleLoadingContainer(Landroid/view/View;Landroid/view/View;ZZ)V

    .line 890
    :cond_6
    iget-object v5, p0, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/exsettings/applications/ManageApplications;

    iget v5, v5, Lcom/android/exsettings/applications/ManageApplications;->mListType:I

    const/4 v6, 0x4

    if-eq v5, v6, :cond_7

    .line 891
    iget-object v5, p0, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/exsettings/applications/ManageApplications;

    iget v5, v5, Lcom/android/exsettings/applications/ManageApplications;->mListType:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_b

    .line 893
    :cond_7
    return-void

    .line 843
    .end local v0    # "comparatorObj":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;>;"
    .end local v2    # "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;>;"
    .end local v3    # "filterObj":Lcom/android/exsettingslib/applications/ApplicationsState$AppFilter;
    :cond_8
    iput v9, p0, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->mWhichSize:I

    goto :goto_0

    .line 855
    .restart local v3    # "filterObj":Lcom/android/exsettingslib/applications/ApplicationsState$AppFilter;
    :pswitch_0
    iget v5, p0, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->mWhichSize:I

    packed-switch v5, :pswitch_data_1

    .line 863
    sget-object v0, Lcom/android/exsettingslib/applications/ApplicationsState;->SIZE_COMPARATOR:Ljava/util/Comparator;

    .restart local v0    # "comparatorObj":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;>;"
    goto :goto_1

    .line 857
    .end local v0    # "comparatorObj":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;>;"
    :pswitch_1
    sget-object v0, Lcom/android/exsettingslib/applications/ApplicationsState;->INTERNAL_SIZE_COMPARATOR:Ljava/util/Comparator;

    .restart local v0    # "comparatorObj":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;>;"
    goto :goto_1

    .line 860
    .end local v0    # "comparatorObj":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;>;"
    :pswitch_2
    sget-object v0, Lcom/android/exsettingslib/applications/ApplicationsState;->EXTERNAL_SIZE_COMPARATOR:Ljava/util/Comparator;

    .restart local v0    # "comparatorObj":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;>;"
    goto :goto_1

    .line 875
    .restart local v2    # "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;>;"
    :cond_9
    return-void

    .line 881
    :cond_a
    iput-object v7, p0, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    goto :goto_2

    .line 896
    :cond_b
    iget-object v5, p0, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/exsettings/applications/ManageApplications;

    iget-object v6, p0, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->mState:Lcom/android/exsettingslib/applications/ApplicationsState;

    invoke-virtual {v6}, Lcom/android/exsettingslib/applications/ApplicationsState;->haveDisabledApps()Z

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/exsettings/applications/ManageApplications;->setHasDisabled(Z)V

    .line 830
    return-void

    .line 853
    :pswitch_data_0
    .packed-switch 0x7f13032d
        :pswitch_0
    .end packed-switch

    .line 855
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public release()V
    .locals 1

    .prologue
    .line 816
    iget-object v0, p0, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->mSession:Lcom/android/exsettingslib/applications/ApplicationsState$Session;

    invoke-virtual {v0}, Lcom/android/exsettingslib/applications/ApplicationsState$Session;->release()V

    .line 817
    iget-object v0, p0, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->mExtraInfoBridge:Lcom/android/exsettings/applications/AppStateBaseBridge;

    if-eqz v0, :cond_0

    .line 818
    iget-object v0, p0, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->mExtraInfoBridge:Lcom/android/exsettings/applications/AppStateBaseBridge;

    invoke-virtual {v0}, Lcom/android/exsettings/applications/AppStateBaseBridge;->release()V

    .line 815
    :cond_0
    return-void
.end method

.method public resume(I)V
    .locals 4
    .param p1, "sort"    # I

    .prologue
    const/4 v3, 0x1

    .line 791
    sget-boolean v0, Lcom/android/exsettings/applications/ManageApplications;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "ManageApplications"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Resume!  mResumed="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->mResumed:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 792
    :cond_0
    iget-boolean v0, p0, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->mResumed:Z

    if-nez v0, :cond_2

    .line 793
    iput-boolean v3, p0, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->mResumed:Z

    .line 794
    iget-object v0, p0, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->mSession:Lcom/android/exsettingslib/applications/ApplicationsState$Session;

    invoke-virtual {v0}, Lcom/android/exsettingslib/applications/ApplicationsState$Session;->resume()V

    .line 795
    iput p1, p0, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->mLastSortMode:I

    .line 796
    iget-object v0, p0, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->mExtraInfoBridge:Lcom/android/exsettings/applications/AppStateBaseBridge;

    if-eqz v0, :cond_1

    .line 797
    iget-object v0, p0, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->mExtraInfoBridge:Lcom/android/exsettings/applications/AppStateBaseBridge;

    invoke-virtual {v0}, Lcom/android/exsettings/applications/AppStateBaseBridge;->resume()V

    .line 799
    :cond_1
    invoke-virtual {p0, v3}, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->rebuild(Z)V

    .line 790
    :goto_0
    return-void

    .line 801
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->rebuild(I)V

    goto :goto_0
.end method

.method public setFilter(I)V
    .locals 1
    .param p1, "filter"    # I

    .prologue
    .line 786
    iput p1, p0, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->mFilterMode:I

    .line 787
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->rebuild(Z)V

    .line 785
    return-void
.end method

.method public setOverrideFilter(Lcom/android/exsettingslib/applications/ApplicationsState$AppFilter;)V
    .locals 1
    .param p1, "overrideFilter"    # Lcom/android/exsettingslib/applications/ApplicationsState$AppFilter;

    .prologue
    .line 781
    iput-object p1, p0, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->mOverrideFilter:Lcom/android/exsettingslib/applications/ApplicationsState$AppFilter;

    .line 782
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->rebuild(Z)V

    .line 780
    return-void
.end method
