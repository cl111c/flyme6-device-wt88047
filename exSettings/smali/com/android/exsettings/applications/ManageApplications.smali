.class public Lcom/android/exsettings/applications/ManageApplications;
.super Lcom/android/exsettings/InstrumentedFragment;
.source "ManageApplications.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;
.implements Lcom/android/exsettings/applications/ResetAppsHelper$ResetCompletedCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exsettings/applications/ManageApplications$FilterSpinnerAdapter;,
        Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;
    }
.end annotation


# static fields
.field static final DEBUG:Z

.field public static final FILTERS:[Lcom/android/exsettingslib/applications/ApplicationsState$AppFilter;

.field public static final FILTER_LABELS:[I


# instance fields
.field public mApplications:Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;

.field private mApplicationsState:Lcom/android/exsettingslib/applications/ApplicationsState;

.field private mCurrentPkgName:Ljava/lang/String;

.field private mCurrentUid:I

.field public mFilter:I

.field private mFilterAdapter:Lcom/android/exsettings/applications/ManageApplications$FilterSpinnerAdapter;

.field private mFilterSpinner:Landroid/widget/Spinner;

.field private mFinishAfterDialog:Z

.field private mInflater:Landroid/view/LayoutInflater;

.field mInvalidSizeStr:Ljava/lang/CharSequence;

.field private mListContainer:Landroid/view/View;

.field public mListType:I

.field private mListView:Landroid/widget/ListView;

.field private mLoadingContainer:Landroid/view/View;

.field private mNotifBackend:Lcom/android/exsettings/notification/NotificationBackend;

.field private mOptionsMenu:Landroid/view/Menu;

.field private mResetAppsHelper:Lcom/android/exsettings/applications/ResetAppsHelper;

.field private mRootView:Landroid/view/View;

.field private mShowSystem:Z

.field private mSortOrder:I

.field private mSpinnerHeader:Landroid/view/View;

.field private mVolumeName:Ljava/lang/String;

.field private mVolumeUuid:Ljava/lang/String;


# direct methods
.method static synthetic -get0(Lcom/android/exsettings/applications/ManageApplications;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/applications/ManageApplications;->mCurrentPkgName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/exsettings/applications/ManageApplications;)Landroid/widget/Spinner;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/applications/ManageApplications;->mFilterSpinner:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/exsettings/applications/ManageApplications;)Landroid/view/LayoutInflater;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/applications/ManageApplications;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/exsettings/applications/ManageApplications;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/applications/ManageApplications;->mListContainer:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/exsettings/applications/ManageApplications;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/applications/ManageApplications;->mLoadingContainer:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/exsettings/applications/ManageApplications;)Lcom/android/exsettings/notification/NotificationBackend;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/applications/ManageApplications;->mNotifBackend:Lcom/android/exsettings/notification/NotificationBackend;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/exsettings/applications/ManageApplications;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/exsettings/applications/ManageApplications;->mShowSystem:Z

    return v0
.end method

.method static synthetic -get7(Lcom/android/exsettings/applications/ManageApplications;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/applications/ManageApplications;->mSpinnerHeader:Landroid/view/View;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/16 v1, 0xf

    const/4 v4, 0x3

    .line 94
    const-string/jumbo v0, "ManageApplications"

    invoke-static {v0, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/exsettings/applications/ManageApplications;->DEBUG:Z

    .line 136
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/exsettings/applications/ManageApplications;->FILTER_LABELS:[I

    .line 155
    new-array v0, v1, [Lcom/android/exsettingslib/applications/ApplicationsState$AppFilter;

    .line 156
    new-instance v1, Lcom/android/exsettingslib/applications/ApplicationsState$CompoundFilter;

    sget-object v2, Lcom/android/exsettings/applications/AppStatePowerBridge;->FILTER_POWER_WHITELISTED:Lcom/android/exsettingslib/applications/ApplicationsState$AppFilter;

    .line 157
    sget-object v3, Lcom/android/exsettingslib/applications/ApplicationsState;->FILTER_ALL_ENABLED:Lcom/android/exsettingslib/applications/ApplicationsState$AppFilter;

    .line 156
    invoke-direct {v1, v2, v3}, Lcom/android/exsettingslib/applications/ApplicationsState$CompoundFilter;-><init>(Lcom/android/exsettingslib/applications/ApplicationsState$AppFilter;Lcom/android/exsettingslib/applications/ApplicationsState$AppFilter;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 158
    new-instance v1, Lcom/android/exsettingslib/applications/ApplicationsState$CompoundFilter;

    sget-object v2, Lcom/android/exsettingslib/applications/ApplicationsState;->FILTER_PERSONAL_WITHOUT_DISABLED_UNTIL_USED:Lcom/android/exsettingslib/applications/ApplicationsState$AppFilter;

    .line 159
    sget-object v3, Lcom/android/exsettingslib/applications/ApplicationsState;->FILTER_ALL_ENABLED:Lcom/android/exsettingslib/applications/ApplicationsState$AppFilter;

    .line 158
    invoke-direct {v1, v2, v3}, Lcom/android/exsettingslib/applications/ApplicationsState$CompoundFilter;-><init>(Lcom/android/exsettingslib/applications/ApplicationsState$AppFilter;Lcom/android/exsettingslib/applications/ApplicationsState$AppFilter;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 160
    sget-object v1, Lcom/android/exsettingslib/applications/ApplicationsState;->FILTER_EVERYTHING:Lcom/android/exsettingslib/applications/ApplicationsState$AppFilter;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 161
    sget-object v1, Lcom/android/exsettingslib/applications/ApplicationsState;->FILTER_ALL_ENABLED:Lcom/android/exsettingslib/applications/ApplicationsState$AppFilter;

    aput-object v1, v0, v4

    .line 162
    sget-object v1, Lcom/android/exsettingslib/applications/ApplicationsState;->FILTER_DISABLED:Lcom/android/exsettingslib/applications/ApplicationsState$AppFilter;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 163
    sget-object v1, Lcom/android/exsettings/applications/AppStateNotificationBridge;->FILTER_APP_NOTIFICATION_BLOCKED:Lcom/android/exsettingslib/applications/ApplicationsState$AppFilter;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 164
    sget-object v1, Lcom/android/exsettings/applications/AppStateNotificationBridge;->FILTER_APP_NOTIFICATION_PRIORITY:Lcom/android/exsettingslib/applications/ApplicationsState$AppFilter;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 165
    sget-object v1, Lcom/android/exsettings/applications/AppStateNotificationBridge;->FILTER_APP_NOTIFICATION_NO_PEEK:Lcom/android/exsettingslib/applications/ApplicationsState$AppFilter;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 166
    sget-object v1, Lcom/android/exsettings/applications/AppStateNotificationBridge;->FILTER_APP_NOTIFICATION_SENSITIVE:Lcom/android/exsettingslib/applications/ApplicationsState$AppFilter;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 167
    sget-object v1, Lcom/android/exsettingslib/applications/ApplicationsState;->FILTER_PERSONAL:Lcom/android/exsettingslib/applications/ApplicationsState$AppFilter;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 168
    sget-object v1, Lcom/android/exsettingslib/applications/ApplicationsState;->FILTER_WORK:Lcom/android/exsettingslib/applications/ApplicationsState$AppFilter;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 169
    sget-object v1, Lcom/android/exsettingslib/applications/ApplicationsState;->FILTER_WITH_DOMAIN_URLS:Lcom/android/exsettingslib/applications/ApplicationsState$AppFilter;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 170
    sget-object v1, Lcom/android/exsettings/applications/AppStateUsageBridge;->FILTER_APP_USAGE:Lcom/android/exsettingslib/applications/ApplicationsState$AppFilter;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    .line 171
    sget-object v1, Lcom/android/exsettings/applications/AppStateOverlayBridge;->FILTER_SYSTEM_ALERT_WINDOW:Lcom/android/exsettingslib/applications/ApplicationsState$AppFilter;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    .line 172
    sget-object v1, Lcom/android/exsettings/applications/AppStateWriteSettingsBridge;->FILTER_WRITE_SETTINGS:Lcom/android/exsettingslib/applications/ApplicationsState$AppFilter;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    .line 155
    sput-object v0, Lcom/android/exsettings/applications/ManageApplications;->FILTERS:[Lcom/android/exsettingslib/applications/ApplicationsState$AppFilter;

    .line 89
    return-void

    .line 136
    nop

    :array_0
    .array-data 4
        0x7f0c0f63
        0x7f0c0f29
        0x7f0c0f29
        0x7f0c0f2a
        0x7f0c09d5
        0x7f0c0f2d
        0x7f0c0f2e
        0x7f0c0f30
        0x7f0c0f2f
        0x7f0c0f2b
        0x7f0c0f2c
        0x7f0c0f31
        0x7f0c0f29
        0x7f0c0fa9
        0x7f0c0faf
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/android/exsettings/InstrumentedFragment;-><init>()V

    .line 176
    const v0, 0x7f13032c

    iput v0, p0, Lcom/android/exsettings/applications/ManageApplications;->mSortOrder:I

    .line 89
    return-void
.end method

.method private createHeader()V
    .locals 7

    .prologue
    const/4 v6, 0x5

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 322
    invoke-virtual {p0}, Lcom/android/exsettings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 323
    .local v0, "activity":Landroid/app/Activity;
    iget-object v2, p0, Lcom/android/exsettings/applications/ManageApplications;->mRootView:Landroid/view/View;

    const v3, 0x7f1300a7

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 324
    .local v1, "pinnedHeader":Landroid/widget/FrameLayout;
    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    .line 325
    const v3, 0x7f040014

    .line 324
    invoke-virtual {v2, v3, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/android/exsettings/applications/ManageApplications;->mSpinnerHeader:Landroid/view/View;

    .line 326
    iget-object v2, p0, Lcom/android/exsettings/applications/ManageApplications;->mSpinnerHeader:Landroid/view/View;

    const v3, 0x7f130032

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    iput-object v2, p0, Lcom/android/exsettings/applications/ManageApplications;->mFilterSpinner:Landroid/widget/Spinner;

    .line 327
    new-instance v2, Lcom/android/exsettings/applications/ManageApplications$FilterSpinnerAdapter;

    invoke-direct {v2, p0}, Lcom/android/exsettings/applications/ManageApplications$FilterSpinnerAdapter;-><init>(Lcom/android/exsettings/applications/ManageApplications;)V

    iput-object v2, p0, Lcom/android/exsettings/applications/ManageApplications;->mFilterAdapter:Lcom/android/exsettings/applications/ManageApplications$FilterSpinnerAdapter;

    .line 328
    iget-object v2, p0, Lcom/android/exsettings/applications/ManageApplications;->mFilterSpinner:Landroid/widget/Spinner;

    iget-object v3, p0, Lcom/android/exsettings/applications/ManageApplications;->mFilterAdapter:Lcom/android/exsettings/applications/ManageApplications$FilterSpinnerAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 329
    iget-object v2, p0, Lcom/android/exsettings/applications/ManageApplications;->mFilterSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 330
    iget-object v2, p0, Lcom/android/exsettings/applications/ManageApplications;->mSpinnerHeader:Landroid/view/View;

    invoke-virtual {v1, v2, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    .line 332
    iget-object v2, p0, Lcom/android/exsettings/applications/ManageApplications;->mFilterAdapter:Lcom/android/exsettings/applications/ManageApplications$FilterSpinnerAdapter;

    invoke-direct {p0}, Lcom/android/exsettings/applications/ManageApplications;->getDefaultFilter()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/exsettings/applications/ManageApplications$FilterSpinnerAdapter;->enableFilter(I)V

    .line 333
    iget v2, p0, Lcom/android/exsettings/applications/ManageApplications;->mListType:I

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/android/exsettings/applications/ManageApplications;->mListType:I

    if-ne v2, v4, :cond_1

    .line 334
    :cond_0
    invoke-virtual {p0}, Lcom/android/exsettings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v4, :cond_1

    .line 335
    iget-object v2, p0, Lcom/android/exsettings/applications/ManageApplications;->mFilterAdapter:Lcom/android/exsettings/applications/ManageApplications$FilterSpinnerAdapter;

    const/16 v3, 0x9

    invoke-virtual {v2, v3}, Lcom/android/exsettings/applications/ManageApplications$FilterSpinnerAdapter;->enableFilter(I)V

    .line 336
    iget-object v2, p0, Lcom/android/exsettings/applications/ManageApplications;->mFilterAdapter:Lcom/android/exsettings/applications/ManageApplications$FilterSpinnerAdapter;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Lcom/android/exsettings/applications/ManageApplications$FilterSpinnerAdapter;->enableFilter(I)V

    .line 339
    :cond_1
    iget v2, p0, Lcom/android/exsettings/applications/ManageApplications;->mListType:I

    if-ne v2, v4, :cond_2

    .line 340
    iget-object v2, p0, Lcom/android/exsettings/applications/ManageApplications;->mFilterAdapter:Lcom/android/exsettings/applications/ManageApplications$FilterSpinnerAdapter;

    invoke-virtual {v2, v6}, Lcom/android/exsettings/applications/ManageApplications$FilterSpinnerAdapter;->enableFilter(I)V

    .line 341
    iget-object v2, p0, Lcom/android/exsettings/applications/ManageApplications;->mFilterAdapter:Lcom/android/exsettings/applications/ManageApplications$FilterSpinnerAdapter;

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Lcom/android/exsettings/applications/ManageApplications$FilterSpinnerAdapter;->enableFilter(I)V

    .line 342
    iget-object v2, p0, Lcom/android/exsettings/applications/ManageApplications;->mFilterAdapter:Lcom/android/exsettings/applications/ManageApplications$FilterSpinnerAdapter;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/android/exsettings/applications/ManageApplications$FilterSpinnerAdapter;->enableFilter(I)V

    .line 343
    iget-object v2, p0, Lcom/android/exsettings/applications/ManageApplications;->mFilterAdapter:Lcom/android/exsettings/applications/ManageApplications$FilterSpinnerAdapter;

    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Lcom/android/exsettings/applications/ManageApplications$FilterSpinnerAdapter;->enableFilter(I)V

    .line 345
    :cond_2
    iget v2, p0, Lcom/android/exsettings/applications/ManageApplications;->mListType:I

    if-ne v2, v6, :cond_3

    .line 346
    iget-object v2, p0, Lcom/android/exsettings/applications/ManageApplications;->mFilterAdapter:Lcom/android/exsettings/applications/ManageApplications$FilterSpinnerAdapter;

    invoke-virtual {v2, v4}, Lcom/android/exsettings/applications/ManageApplications$FilterSpinnerAdapter;->enableFilter(I)V

    .line 348
    :cond_3
    iget v2, p0, Lcom/android/exsettings/applications/ManageApplications;->mListType:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_4

    .line 349
    iget-object v2, p0, Lcom/android/exsettings/applications/ManageApplications;->mApplications:Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;

    new-instance v3, Lcom/android/exsettingslib/applications/ApplicationsState$VolumeFilter;

    iget-object v4, p0, Lcom/android/exsettings/applications/ManageApplications;->mVolumeUuid:Ljava/lang/String;

    invoke-direct {v3, v4}, Lcom/android/exsettingslib/applications/ApplicationsState$VolumeFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->setOverrideFilter(Lcom/android/exsettingslib/applications/ApplicationsState$AppFilter;)V

    .line 321
    :cond_4
    return-void
.end method

.method private getDefaultFilter()I
    .locals 1

    .prologue
    .line 371
    iget v0, p0, Lcom/android/exsettings/applications/ManageApplications;->mListType:I

    packed-switch v0, :pswitch_data_0

    .line 383
    :pswitch_0
    const/4 v0, 0x2

    return v0

    .line 373
    :pswitch_1
    const/16 v0, 0xb

    return v0

    .line 375
    :pswitch_2
    const/16 v0, 0xc

    return v0

    .line 377
    :pswitch_3
    const/4 v0, 0x0

    return v0

    .line 379
    :pswitch_4
    const/16 v0, 0xd

    return v0

    .line 381
    :pswitch_5
    const/16 v0, 0xe

    return v0

    .line 371
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private startAppInfoFragment(Ljava/lang/Class;I)V
    .locals 6
    .param p2, "titleRes"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;I)V"
        }
    .end annotation

    .prologue
    .line 509
    .local p1, "fragment":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v2, p0, Lcom/android/exsettings/applications/ManageApplications;->mCurrentPkgName:Ljava/lang/String;

    iget v3, p0, Lcom/android/exsettings/applications/ManageApplications;->mCurrentUid:I

    .line 510
    const/4 v5, 0x1

    move-object v0, p1

    move v1, p2

    move-object v4, p0

    .line 509
    invoke-static/range {v0 .. v5}, Lcom/android/exsettings/applications/AppInfoBase;->startAppInfoFragment(Ljava/lang/Class;ILjava/lang/String;ILandroid/app/Fragment;I)V

    .line 508
    return-void
.end method

.method private startApplicationDetailsActivity()V
    .locals 3

    .prologue
    .line 475
    iget v0, p0, Lcom/android/exsettings/applications/ManageApplications;->mListType:I

    packed-switch v0, :pswitch_data_0

    .line 503
    const-class v0, Lcom/android/exsettings/applications/InstalledAppDetails;

    const v1, 0x7f0c09aa

    invoke-direct {p0, v0, v1}, Lcom/android/exsettings/applications/ManageApplications;->startAppInfoFragment(Ljava/lang/Class;I)V

    .line 474
    :goto_0
    return-void

    .line 477
    :pswitch_0
    const-class v0, Lcom/android/exsettings/notification/AppNotificationSettings;

    .line 478
    const v1, 0x7f0c0e8b

    .line 477
    invoke-direct {p0, v0, v1}, Lcom/android/exsettings/applications/ManageApplications;->startAppInfoFragment(Ljava/lang/Class;I)V

    goto :goto_0

    .line 481
    :pswitch_1
    const-class v0, Lcom/android/exsettings/applications/AppLaunchSettings;

    const v1, 0x7f0c09ac

    invoke-direct {p0, v0, v1}, Lcom/android/exsettings/applications/ManageApplications;->startAppInfoFragment(Ljava/lang/Class;I)V

    goto :goto_0

    .line 484
    :pswitch_2
    const-class v0, Lcom/android/exsettings/applications/UsageAccessDetails;

    const v1, 0x7f0c0f53

    invoke-direct {p0, v0, v1}, Lcom/android/exsettings/applications/ManageApplications;->startAppInfoFragment(Ljava/lang/Class;I)V

    goto :goto_0

    .line 487
    :pswitch_3
    const-class v0, Lcom/android/exsettings/applications/AppStorageSettings;

    const v1, 0x7f0c084b

    invoke-direct {p0, v0, v1}, Lcom/android/exsettings/applications/ManageApplications;->startAppInfoFragment(Ljava/lang/Class;I)V

    goto :goto_0

    .line 490
    :pswitch_4
    iget-object v0, p0, Lcom/android/exsettings/applications/ManageApplications;->mCurrentPkgName:Ljava/lang/String;

    .line 491
    iget-boolean v1, p0, Lcom/android/exsettings/applications/ManageApplications;->mFinishAfterDialog:Z

    .line 490
    const/4 v2, 0x1

    invoke-static {p0, v0, v2, v1}, Lcom/android/exsettings/fuelgauge/HighPowerDetail;->show(Landroid/app/Fragment;Ljava/lang/String;IZ)V

    goto :goto_0

    .line 494
    :pswitch_5
    const-class v0, Lcom/android/exsettings/applications/DrawOverlayDetails;

    const v1, 0x7f0c0fa7

    invoke-direct {p0, v0, v1}, Lcom/android/exsettings/applications/ManageApplications;->startAppInfoFragment(Ljava/lang/Class;I)V

    goto :goto_0

    .line 497
    :pswitch_6
    const-class v0, Lcom/android/exsettings/applications/WriteSettingsDetails;

    const v1, 0x7f0c0fb1

    invoke-direct {p0, v0, v1}, Lcom/android/exsettings/applications/ManageApplications;->startAppInfoFragment(Ljava/lang/Class;I)V

    goto :goto_0

    .line 475
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 2

    .prologue
    const/16 v1, 0xdd

    .line 389
    iget v0, p0, Lcom/android/exsettings/applications/ManageApplications;->mListType:I

    packed-switch v0, :pswitch_data_0

    .line 407
    const/4 v0, 0x0

    return v0

    .line 391
    :pswitch_0
    const/16 v0, 0x41

    return v0

    .line 393
    :pswitch_1
    const/16 v0, 0x85

    return v0

    .line 395
    :pswitch_2
    const/16 v0, 0x8f

    return v0

    .line 397
    :pswitch_3
    const/16 v0, 0xb6

    return v0

    .line 399
    :pswitch_4
    const/16 v0, 0x5f

    return v0

    .line 401
    :pswitch_5
    const/16 v0, 0xb8

    return v0

    .line 403
    :pswitch_6
    return v1

    .line 405
    :pswitch_7
    return v1

    .line 389
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x1

    .line 457
    if-ne p1, v1, :cond_0

    iget-object v0, p0, Lcom/android/exsettings/applications/ManageApplications;->mCurrentPkgName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 458
    iget v0, p0, Lcom/android/exsettings/applications/ManageApplications;->mListType:I

    if-ne v0, v1, :cond_1

    .line 459
    iget-object v0, p0, Lcom/android/exsettings/applications/ManageApplications;->mApplications:Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;

    invoke-static {v0}, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->-get1(Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;)Lcom/android/exsettings/applications/AppStateBaseBridge;

    move-result-object v0

    iget-object v1, p0, Lcom/android/exsettings/applications/ManageApplications;->mCurrentPkgName:Ljava/lang/String;

    iget v2, p0, Lcom/android/exsettings/applications/ManageApplications;->mCurrentUid:I

    invoke-virtual {v0, v1, v2}, Lcom/android/exsettings/applications/AppStateBaseBridge;->forceUpdate(Ljava/lang/String;I)V

    .line 456
    :cond_0
    :goto_0
    return-void

    .line 460
    :cond_1
    iget v0, p0, Lcom/android/exsettings/applications/ManageApplications;->mListType:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/android/exsettings/applications/ManageApplications;->mListType:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_3

    .line 462
    :cond_2
    iget-boolean v0, p0, Lcom/android/exsettings/applications/ManageApplications;->mFinishAfterDialog:Z

    if-eqz v0, :cond_4

    .line 463
    invoke-virtual {p0}, Lcom/android/exsettings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0

    .line 461
    :cond_3
    iget v0, p0, Lcom/android/exsettings/applications/ManageApplications;->mListType:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_2

    .line 468
    iget-object v0, p0, Lcom/android/exsettings/applications/ManageApplications;->mApplicationsState:Lcom/android/exsettingslib/applications/ApplicationsState;

    iget-object v1, p0, Lcom/android/exsettings/applications/ManageApplications;->mCurrentPkgName:Ljava/lang/String;

    iget v2, p0, Lcom/android/exsettings/applications/ManageApplications;->mCurrentUid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/exsettingslib/applications/ApplicationsState;->requestSize(Ljava/lang/String;I)V

    goto :goto_0

    .line 465
    :cond_4
    iget-object v0, p0, Lcom/android/exsettings/applications/ManageApplications;->mApplications:Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;

    invoke-static {v0}, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->-get1(Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;)Lcom/android/exsettings/applications/AppStateBaseBridge;

    move-result-object v0

    iget-object v1, p0, Lcom/android/exsettings/applications/ManageApplications;->mCurrentPkgName:Ljava/lang/String;

    iget v2, p0, Lcom/android/exsettings/applications/ManageApplications;->mCurrentUid:I

    invoke-virtual {v0, v1, v2}, Lcom/android/exsettings/applications/AppStateBaseBridge;->forceUpdate(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 228
    invoke-super {p0, p1}, Lcom/android/exsettings/InstrumentedFragment;->onCreate(Landroid/os/Bundle;)V

    .line 229
    invoke-virtual {p0, v4}, Lcom/android/exsettings/applications/ManageApplications;->setHasOptionsMenu(Z)V

    .line 230
    invoke-virtual {p0}, Lcom/android/exsettings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v3

    invoke-static {v3}, Lcom/android/exsettingslib/applications/ApplicationsState;->getInstance(Landroid/app/Application;)Lcom/android/exsettingslib/applications/ApplicationsState;

    move-result-object v3

    iput-object v3, p0, Lcom/android/exsettings/applications/ManageApplications;->mApplicationsState:Lcom/android/exsettingslib/applications/ApplicationsState;

    .line 232
    invoke-virtual {p0}, Lcom/android/exsettings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 233
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/exsettings/applications/ManageApplications;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 234
    .local v0, "args":Landroid/os/Bundle;
    if-eqz v0, :cond_2

    const-string/jumbo v3, "classname"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 235
    :goto_0
    if-nez v1, :cond_0

    .line 236
    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 238
    :cond_0
    const-class v3, Lcom/android/exsettings/Settings$AllApplicationsActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 239
    iput-boolean v4, p0, Lcom/android/exsettings/applications/ManageApplications;->mShowSystem:Z

    .line 271
    :goto_1
    invoke-direct {p0}, Lcom/android/exsettings/applications/ManageApplications;->getDefaultFilter()I

    move-result v3

    iput v3, p0, Lcom/android/exsettings/applications/ManageApplications;->mFilter:I

    .line 273
    if-eqz p1, :cond_1

    .line 274
    const-string/jumbo v3, "sortOrder"

    iget v4, p0, Lcom/android/exsettings/applications/ManageApplications;->mSortOrder:I

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/exsettings/applications/ManageApplications;->mSortOrder:I

    .line 275
    const-string/jumbo v3, "showSystem"

    iget-boolean v4, p0, Lcom/android/exsettings/applications/ManageApplications;->mShowSystem:Z

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/exsettings/applications/ManageApplications;->mShowSystem:Z

    .line 278
    :cond_1
    invoke-virtual {p0}, Lcom/android/exsettings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f0c09f4

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p0, Lcom/android/exsettings/applications/ManageApplications;->mInvalidSizeStr:Ljava/lang/CharSequence;

    .line 280
    new-instance v3, Lcom/android/exsettings/applications/ResetAppsHelper;

    invoke-virtual {p0}, Lcom/android/exsettings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4, p0}, Lcom/android/exsettings/applications/ResetAppsHelper;-><init>(Landroid/content/Context;Lcom/android/exsettings/applications/ResetAppsHelper$ResetCompletedCallback;)V

    iput-object v3, p0, Lcom/android/exsettings/applications/ManageApplications;->mResetAppsHelper:Lcom/android/exsettings/applications/ResetAppsHelper;

    .line 227
    return-void

    .line 234
    :cond_2
    const/4 v1, 0x0

    .local v1, "className":Ljava/lang/String;
    goto :goto_0

    .line 240
    .end local v1    # "className":Ljava/lang/String;
    :cond_3
    const-class v3, Lcom/android/exsettings/Settings$NotificationAppListActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 241
    iput v4, p0, Lcom/android/exsettings/applications/ManageApplications;->mListType:I

    .line 242
    new-instance v3, Lcom/android/exsettings/notification/NotificationBackend;

    invoke-direct {v3}, Lcom/android/exsettings/notification/NotificationBackend;-><init>()V

    iput-object v3, p0, Lcom/android/exsettings/applications/ManageApplications;->mNotifBackend:Lcom/android/exsettings/notification/NotificationBackend;

    goto :goto_1

    .line 243
    :cond_4
    const-class v3, Lcom/android/exsettings/Settings$DomainsURLsAppListActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 244
    const/4 v3, 0x2

    iput v3, p0, Lcom/android/exsettings/applications/ManageApplications;->mListType:I

    goto :goto_1

    .line 245
    :cond_5
    const-class v3, Lcom/android/exsettings/Settings$StorageUseActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 246
    if-eqz v0, :cond_6

    const-string/jumbo v3, "volumeUuid"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 247
    const-string/jumbo v3, "volumeUuid"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/exsettings/applications/ManageApplications;->mVolumeUuid:Ljava/lang/String;

    .line 248
    const-string/jumbo v3, "volumeName"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/exsettings/applications/ManageApplications;->mVolumeName:Ljava/lang/String;

    .line 249
    const/4 v3, 0x3

    iput v3, p0, Lcom/android/exsettings/applications/ManageApplications;->mListType:I

    .line 254
    :goto_2
    const v3, 0x7f13032d

    iput v3, p0, Lcom/android/exsettings/applications/ManageApplications;->mSortOrder:I

    goto/16 :goto_1

    .line 252
    :cond_6
    iput v5, p0, Lcom/android/exsettings/applications/ManageApplications;->mListType:I

    goto :goto_2

    .line 255
    :cond_7
    const-class v3, Lcom/android/exsettings/Settings$UsageAccessSettingsActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 256
    const/4 v3, 0x4

    iput v3, p0, Lcom/android/exsettings/applications/ManageApplications;->mListType:I

    .line 257
    invoke-virtual {p0}, Lcom/android/exsettings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    const v4, 0x7f0c0c26

    invoke-virtual {v3, v4}, Landroid/app/ActionBar;->setTitle(I)V

    goto/16 :goto_1

    .line 258
    :cond_8
    const-class v3, Lcom/android/exsettings/Settings$HighPowerApplicationsActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 259
    const/4 v3, 0x5

    iput v3, p0, Lcom/android/exsettings/applications/ManageApplications;->mListType:I

    .line 261
    iput-boolean v4, p0, Lcom/android/exsettings/applications/ManageApplications;->mShowSystem:Z

    goto/16 :goto_1

    .line 262
    :cond_9
    const-class v3, Lcom/android/exsettings/Settings$OverlaySettingsActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 263
    const/4 v3, 0x6

    iput v3, p0, Lcom/android/exsettings/applications/ManageApplications;->mListType:I

    .line 264
    invoke-virtual {p0}, Lcom/android/exsettings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    const v4, 0x7f0c0fa2

    invoke-virtual {v3, v4}, Landroid/app/ActionBar;->setTitle(I)V

    goto/16 :goto_1

    .line 265
    :cond_a
    const-class v3, Lcom/android/exsettings/Settings$WriteSettingsActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 266
    const/4 v3, 0x7

    iput v3, p0, Lcom/android/exsettings/applications/ManageApplications;->mListType:I

    .line 267
    invoke-virtual {p0}, Lcom/android/exsettings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    const v4, 0x7f0c0fb0

    invoke-virtual {v3, v4}, Landroid/app/ActionBar;->setTitle(I)V

    goto/16 :goto_1

    .line 269
    :cond_b
    iput v5, p0, Lcom/android/exsettings/applications/ManageApplications;->mListType:I

    goto/16 :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 515
    iget v0, p0, Lcom/android/exsettings/applications/ManageApplications;->mListType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 516
    return-void

    .line 518
    :cond_0
    invoke-virtual {p0}, Lcom/android/exsettings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget v0, p0, Lcom/android/exsettings/applications/ManageApplications;->mListType:I

    if-nez v0, :cond_1

    .line 519
    const v0, 0x7f0c0dd6

    :goto_0
    invoke-virtual {p0}, Lcom/android/exsettings/applications/ManageApplications;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 518
    invoke-static {v1, p1, v0, v2}, Lcom/android/exsettings/HelpUtils;->prepareHelpMenuItem(Landroid/app/Activity;Landroid/view/Menu;ILjava/lang/String;)Z

    .line 520
    iput-object p1, p0, Lcom/android/exsettings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    .line 521
    const v0, 0x7f140005

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 522
    invoke-virtual {p0}, Lcom/android/exsettings/applications/ManageApplications;->updateOptionsMenu()V

    .line 514
    return-void

    .line 519
    :cond_1
    const v0, 0x7f0c0dd5

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 288
    iput-object p1, p0, Lcom/android/exsettings/applications/ManageApplications;->mInflater:Landroid/view/LayoutInflater;

    .line 290
    const v2, 0x7f040093

    invoke-virtual {p1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/exsettings/applications/ManageApplications;->mRootView:Landroid/view/View;

    .line 291
    iget-object v2, p0, Lcom/android/exsettings/applications/ManageApplications;->mRootView:Landroid/view/View;

    const v3, 0x7f130138

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/exsettings/applications/ManageApplications;->mLoadingContainer:Landroid/view/View;

    .line 292
    iget-object v2, p0, Lcom/android/exsettings/applications/ManageApplications;->mLoadingContainer:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 293
    iget-object v2, p0, Lcom/android/exsettings/applications/ManageApplications;->mRootView:Landroid/view/View;

    const v3, 0x7f13013a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/exsettings/applications/ManageApplications;->mListContainer:Landroid/view/View;

    .line 294
    iget-object v2, p0, Lcom/android/exsettings/applications/ManageApplications;->mListContainer:Landroid/view/View;

    if-eqz v2, :cond_1

    .line 296
    iget-object v2, p0, Lcom/android/exsettings/applications/ManageApplications;->mListContainer:Landroid/view/View;

    const v3, 0x1020004

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 297
    .local v0, "emptyView":Landroid/view/View;
    iget-object v2, p0, Lcom/android/exsettings/applications/ManageApplications;->mListContainer:Landroid/view/View;

    const v3, 0x102000a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    .line 298
    .local v1, "lv":Landroid/widget/ListView;
    if-eqz v0, :cond_0

    .line 299
    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 301
    :cond_0
    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 302
    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setSaveEnabled(Z)V

    .line 303
    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 304
    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setTextFilterEnabled(Z)V

    .line 305
    iput-object v1, p0, Lcom/android/exsettings/applications/ManageApplications;->mListView:Landroid/widget/ListView;

    .line 307
    iget-object v2, p0, Lcom/android/exsettings/applications/ManageApplications;->mRootView:Landroid/view/View;

    iget-object v3, p0, Lcom/android/exsettings/applications/ManageApplications;->mListView:Landroid/widget/ListView;

    invoke-static {p2, v2, v3, v5}, Lcom/android/exsettings/Utils;->prepareCustomPreferencesList(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;Z)V

    .line 312
    .end local v0    # "emptyView":Landroid/view/View;
    .end local v1    # "lv":Landroid/widget/ListView;
    :cond_1
    instance-of v2, p2, Landroid/preference/PreferenceFrameLayout;

    if-eqz v2, :cond_2

    .line 313
    iget-object v2, p0, Lcom/android/exsettings/applications/ManageApplications;->mRootView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceFrameLayout$LayoutParams;

    iput-boolean v4, v2, Landroid/preference/PreferenceFrameLayout$LayoutParams;->removeBorders:Z

    .line 316
    :cond_2
    iget-object v2, p0, Lcom/android/exsettings/applications/ManageApplications;->mResetAppsHelper:Lcom/android/exsettings/applications/ResetAppsHelper;

    invoke-virtual {v2, p3}, Lcom/android/exsettings/applications/ResetAppsHelper;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 318
    iget-object v2, p0, Lcom/android/exsettings/applications/ManageApplications;->mRootView:Landroid/view/View;

    return-object v2
.end method

.method public onDestroyOptionsMenu()V
    .locals 1

    .prologue
    .line 532
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/exsettings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    .line 531
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 447
    invoke-super {p0}, Lcom/android/exsettings/InstrumentedFragment;->onDestroyView()V

    .line 449
    iget-object v0, p0, Lcom/android/exsettings/applications/ManageApplications;->mApplications:Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;

    if-eqz v0, :cond_0

    .line 450
    iget-object v0, p0, Lcom/android/exsettings/applications/ManageApplications;->mApplications:Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v0}, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->release()V

    .line 452
    :cond_0
    iput-object v1, p0, Lcom/android/exsettings/applications/ManageApplications;->mRootView:Landroid/view/View;

    .line 446
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
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
    .line 588
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/android/exsettings/applications/ManageApplications;->mApplications:Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/exsettings/applications/ManageApplications;->mApplications:Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v1}, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->getCount()I

    move-result v1

    if-le v1, p3, :cond_0

    .line 589
    iget-object v1, p0, Lcom/android/exsettings/applications/ManageApplications;->mApplications:Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v1, p3}, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->getAppEntry(I)Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;

    move-result-object v0

    .line 590
    .local v0, "entry":Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;
    iget-object v1, v0, Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/exsettings/applications/ManageApplications;->mCurrentPkgName:Ljava/lang/String;

    .line 591
    iget-object v1, v0, Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v1, p0, Lcom/android/exsettings/applications/ManageApplications;->mCurrentUid:I

    .line 592
    invoke-direct {p0}, Lcom/android/exsettings/applications/ManageApplications;->startApplicationDetailsActivity()V

    .line 587
    .end local v0    # "entry":Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;
    :cond_0
    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
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
    .line 598
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/android/exsettings/applications/ManageApplications;->mFilterAdapter:Lcom/android/exsettings/applications/ManageApplications$FilterSpinnerAdapter;

    invoke-virtual {v0, p3}, Lcom/android/exsettings/applications/ManageApplications$FilterSpinnerAdapter;->getFilter(I)I

    move-result v0

    iput v0, p0, Lcom/android/exsettings/applications/ManageApplications;->mFilter:I

    .line 599
    iget-object v0, p0, Lcom/android/exsettings/applications/ManageApplications;->mApplications:Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;

    iget v1, p0, Lcom/android/exsettings/applications/ManageApplications;->mFilter:I

    invoke-virtual {v0, v1}, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->setFilter(I)V

    .line 600
    sget-boolean v0, Lcom/android/exsettings/applications/ManageApplications;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "ManageApplications"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Selecting filter "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/exsettings/applications/ManageApplications;->mFilter:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    :cond_0
    return-void
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
    .line 604
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 9
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v8, 0x1

    .line 556
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v7

    .line 557
    .local v7, "menuId":I
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 580
    return v1

    .line 560
    :pswitch_0
    iput v7, p0, Lcom/android/exsettings/applications/ManageApplications;->mSortOrder:I

    .line 561
    iget-object v0, p0, Lcom/android/exsettings/applications/ManageApplications;->mApplications:Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;

    if-eqz v0, :cond_0

    .line 562
    iget-object v0, p0, Lcom/android/exsettings/applications/ManageApplications;->mApplications:Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;

    iget v1, p0, Lcom/android/exsettings/applications/ManageApplications;->mSortOrder:I

    invoke-virtual {v0, v1}, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->rebuild(I)V

    .line 582
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/exsettings/applications/ManageApplications;->updateOptionsMenu()V

    .line 583
    return v8

    .line 567
    :pswitch_1
    iget-boolean v0, p0, Lcom/android/exsettings/applications/ManageApplications;->mShowSystem:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/android/exsettings/applications/ManageApplications;->mShowSystem:Z

    .line 568
    iget-object v0, p0, Lcom/android/exsettings/applications/ManageApplications;->mApplications:Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v0, v1}, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->rebuild(Z)V

    goto :goto_0

    :cond_1
    move v0, v8

    .line 567
    goto :goto_1

    .line 571
    :pswitch_2
    iget-object v0, p0, Lcom/android/exsettings/applications/ManageApplications;->mResetAppsHelper:Lcom/android/exsettings/applications/ResetAppsHelper;

    invoke-virtual {v0}, Lcom/android/exsettings/applications/ResetAppsHelper;->buildResetDialog()V

    .line 572
    return v8

    .line 574
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/exsettings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/exsettings/SettingsActivity;

    .line 575
    const-class v1, Lcom/android/exsettings/applications/AdvancedAppSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0c0f34

    .line 576
    const/4 v6, 0x2

    move-object v4, v2

    move-object v5, p0

    .line 574
    invoke-virtual/range {v0 .. v6}, Lcom/android/exsettings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 577
    return v8

    .line 557
    nop

    :pswitch_data_0
    .packed-switch 0x7f130329
        :pswitch_3
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 433
    invoke-super {p0}, Lcom/android/exsettings/InstrumentedFragment;->onPause()V

    .line 434
    iget-object v0, p0, Lcom/android/exsettings/applications/ManageApplications;->mApplications:Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;

    if-eqz v0, :cond_0

    .line 435
    iget-object v0, p0, Lcom/android/exsettings/applications/ManageApplications;->mApplications:Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v0}, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->pause()V

    .line 432
    :cond_0
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 0
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 527
    invoke-virtual {p0}, Lcom/android/exsettings/applications/ManageApplications;->updateOptionsMenu()V

    .line 526
    return-void
.end method

.method public onResetCompleted()V
    .locals 1

    .prologue
    .line 627
    iget-object v0, p0, Lcom/android/exsettings/applications/ManageApplications;->mApplications:Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;

    invoke-static {v0}, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->-get1(Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;)Lcom/android/exsettings/applications/AppStateBaseBridge;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 628
    iget-object v0, p0, Lcom/android/exsettings/applications/ManageApplications;->mApplications:Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;

    invoke-static {v0}, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->-get1(Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;)Lcom/android/exsettings/applications/AppStateBaseBridge;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/exsettings/applications/AppStateBaseBridge;->onPackageListChanged()V

    .line 624
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 413
    invoke-super {p0}, Lcom/android/exsettings/InstrumentedFragment;->onResume()V

    .line 414
    invoke-virtual {p0}, Lcom/android/exsettings/applications/ManageApplications;->updateView()V

    .line 415
    invoke-virtual {p0}, Lcom/android/exsettings/applications/ManageApplications;->updateOptionsMenu()V

    .line 416
    iget-object v0, p0, Lcom/android/exsettings/applications/ManageApplications;->mApplications:Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;

    if-eqz v0, :cond_0

    .line 417
    iget-object v0, p0, Lcom/android/exsettings/applications/ManageApplications;->mApplications:Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;

    iget v1, p0, Lcom/android/exsettings/applications/ManageApplications;->mSortOrder:I

    invoke-virtual {v0, v1}, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->resume(I)V

    .line 418
    iget-object v0, p0, Lcom/android/exsettings/applications/ManageApplications;->mApplications:Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;

    invoke-static {v0}, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->-wrap0(Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;)V

    .line 412
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 424
    invoke-super {p0, p1}, Lcom/android/exsettings/InstrumentedFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 425
    iget-object v0, p0, Lcom/android/exsettings/applications/ManageApplications;->mResetAppsHelper:Lcom/android/exsettings/applications/ResetAppsHelper;

    invoke-virtual {v0, p1}, Lcom/android/exsettings/applications/ResetAppsHelper;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 426
    const-string/jumbo v0, "sortOrder"

    iget v1, p0, Lcom/android/exsettings/applications/ManageApplications;->mSortOrder:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 427
    const-string/jumbo v0, "showSystem"

    iget-boolean v1, p0, Lcom/android/exsettings/applications/ManageApplications;->mShowSystem:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 428
    const-string/jumbo v0, "hasEntries"

    iget-object v1, p0, Lcom/android/exsettings/applications/ManageApplications;->mApplications:Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;

    invoke-static {v1}, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->-get2(Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;)Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 423
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 441
    invoke-super {p0}, Lcom/android/exsettings/InstrumentedFragment;->onStop()V

    .line 442
    iget-object v0, p0, Lcom/android/exsettings/applications/ManageApplications;->mResetAppsHelper:Lcom/android/exsettings/applications/ResetAppsHelper;

    invoke-virtual {v0}, Lcom/android/exsettings/applications/ResetAppsHelper;->stop()V

    .line 440
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 355
    invoke-super {p0, p1, p2}, Lcom/android/exsettings/InstrumentedFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 356
    iget v1, p0, Lcom/android/exsettings/applications/ManageApplications;->mListType:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 357
    iget-object v1, p0, Lcom/android/exsettings/applications/ManageApplications;->mRootView:Landroid/view/View;

    const v2, 0x7f1300a7

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 358
    .local v0, "pinnedHeader":Landroid/widget/FrameLayout;
    invoke-virtual {p0}, Lcom/android/exsettings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/exsettings/applications/ManageApplications;->mVolumeName:Ljava/lang/String;

    invoke-static {v1, v3, v2, v3, v0}, Lcom/android/exsettings/AppHeader;->createAppHeader(Landroid/app/Activity;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Landroid/content/Intent;Landroid/view/ViewGroup;)V

    .line 360
    .end local v0    # "pinnedHeader":Landroid/widget/FrameLayout;
    :cond_0
    new-instance v1, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;

    iget-object v2, p0, Lcom/android/exsettings/applications/ManageApplications;->mApplicationsState:Lcom/android/exsettingslib/applications/ApplicationsState;

    iget v3, p0, Lcom/android/exsettings/applications/ManageApplications;->mFilter:I

    invoke-direct {v1, v2, p0, v3}, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;-><init>(Lcom/android/exsettingslib/applications/ApplicationsState;Lcom/android/exsettings/applications/ManageApplications;I)V

    iput-object v1, p0, Lcom/android/exsettings/applications/ManageApplications;->mApplications:Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;

    .line 361
    if-eqz p2, :cond_1

    .line 362
    iget-object v1, p0, Lcom/android/exsettings/applications/ManageApplications;->mApplications:Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;

    .line 363
    const-string/jumbo v2, "hasEntries"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 362
    invoke-static {v1, v2}, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->-set1(Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;Z)Z

    .line 365
    :cond_1
    iget-object v1, p0, Lcom/android/exsettings/applications/ManageApplications;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/exsettings/applications/ManageApplications;->mApplications:Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 366
    iget-object v1, p0, Lcom/android/exsettings/applications/ManageApplications;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/exsettings/applications/ManageApplications;->mApplications:Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setRecyclerListener(Landroid/widget/AbsListView$RecyclerListener;)V

    .line 367
    invoke-direct {p0}, Lcom/android/exsettings/applications/ManageApplications;->createHeader()V

    .line 354
    return-void
.end method

.method public setHasDisabled(Z)V
    .locals 2
    .param p1, "hasDisabledApps"    # Z

    .prologue
    .line 616
    iget v0, p0, Lcom/android/exsettings/applications/ManageApplications;->mListType:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 617
    return-void

    .line 619
    :cond_0
    iget-object v0, p0, Lcom/android/exsettings/applications/ManageApplications;->mFilterAdapter:Lcom/android/exsettings/applications/ManageApplications$FilterSpinnerAdapter;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Lcom/android/exsettings/applications/ManageApplications$FilterSpinnerAdapter;->setFilterEnabled(IZ)V

    .line 620
    iget-object v0, p0, Lcom/android/exsettings/applications/ManageApplications;->mFilterAdapter:Lcom/android/exsettings/applications/ManageApplications$FilterSpinnerAdapter;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Lcom/android/exsettings/applications/ManageApplications$FilterSpinnerAdapter;->setFilterEnabled(IZ)V

    .line 615
    return-void
.end method

.method updateOptionsMenu()V
    .locals 7

    .prologue
    const v6, 0x7f13032c

    const/4 v5, 0x5

    const/4 v4, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 536
    iget-object v0, p0, Lcom/android/exsettings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    if-nez v0, :cond_0

    .line 537
    return-void

    .line 539
    :cond_0
    iget-object v0, p0, Lcom/android/exsettings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    const v3, 0x7f130329

    invoke-interface {v0, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    iget v0, p0, Lcom/android/exsettings/applications/ManageApplications;->mListType:I

    if-nez v0, :cond_4

    move v0, v1

    :goto_0
    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 541
    iget-object v0, p0, Lcom/android/exsettings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v0, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 542
    iget v0, p0, Lcom/android/exsettings/applications/ManageApplications;->mListType:I

    if-eq v0, v4, :cond_1

    iget v0, p0, Lcom/android/exsettings/applications/ManageApplications;->mListType:I

    if-nez v0, :cond_6

    .line 543
    :cond_1
    iget v0, p0, Lcom/android/exsettings/applications/ManageApplications;->mSortOrder:I

    if-eq v0, v6, :cond_5

    move v0, v1

    .line 541
    :goto_1
    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 544
    iget-object v0, p0, Lcom/android/exsettings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    const v3, 0x7f13032d

    invoke-interface {v0, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 545
    iget v0, p0, Lcom/android/exsettings/applications/ManageApplications;->mListType:I

    if-eq v0, v4, :cond_2

    iget v0, p0, Lcom/android/exsettings/applications/ManageApplications;->mListType:I

    if-nez v0, :cond_8

    .line 546
    :cond_2
    iget v0, p0, Lcom/android/exsettings/applications/ManageApplications;->mSortOrder:I

    const v4, 0x7f13032d

    if-eq v0, v4, :cond_7

    move v0, v1

    .line 544
    :goto_2
    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 548
    iget-object v0, p0, Lcom/android/exsettings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    const v3, 0x7f13032a

    invoke-interface {v0, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    iget-boolean v0, p0, Lcom/android/exsettings/applications/ManageApplications;->mShowSystem:Z

    if-nez v0, :cond_a

    .line 549
    iget v0, p0, Lcom/android/exsettings/applications/ManageApplications;->mListType:I

    if-eq v0, v5, :cond_9

    move v0, v1

    .line 548
    :goto_3
    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 550
    iget-object v0, p0, Lcom/android/exsettings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    const v3, 0x7f13032b

    invoke-interface {v0, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-boolean v3, p0, Lcom/android/exsettings/applications/ManageApplications;->mShowSystem:Z

    if-eqz v3, :cond_3

    .line 551
    iget v3, p0, Lcom/android/exsettings/applications/ManageApplications;->mListType:I

    if-eq v3, v5, :cond_3

    move v2, v1

    .line 550
    :cond_3
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 535
    return-void

    :cond_4
    move v0, v2

    .line 539
    goto :goto_0

    :cond_5
    move v0, v2

    .line 543
    goto :goto_1

    :cond_6
    move v0, v2

    .line 542
    goto :goto_1

    :cond_7
    move v0, v2

    .line 546
    goto :goto_2

    :cond_8
    move v0, v2

    .line 545
    goto :goto_2

    :cond_9
    move v0, v2

    .line 549
    goto :goto_3

    :cond_a
    move v0, v2

    .line 548
    goto :goto_3
.end method

.method public updateView()V
    .locals 1

    .prologue
    .line 608
    invoke-virtual {p0}, Lcom/android/exsettings/applications/ManageApplications;->updateOptionsMenu()V

    .line 609
    invoke-virtual {p0}, Lcom/android/exsettings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 610
    .local v0, "host":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 611
    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 607
    :cond_0
    return-void
.end method
