.class public Lcom/android/exsettings/applications/AppOpsSummary;
.super Lcom/android/exsettings/InstrumentedFragment;
.source "AppOpsSummary.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exsettings/applications/AppOpsSummary$MyPagerAdapter;
    }
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mAdapter:Lcom/android/exsettings/applications/AppOpsSummary$MyPagerAdapter;

.field private mContentContainer:Landroid/view/ViewGroup;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mPreferences:Landroid/content/SharedPreferences;

.field private mRootView:Landroid/view/View;

.field private mViewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method static synthetic -wrap0(Lcom/android/exsettings/applications/AppOpsSummary;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/exsettings/applications/AppOpsSummary;->resetCounters()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-class v0, Lcom/android/exsettings/applications/AppOpsSummary;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/android/exsettings/applications/AppOpsSummary;->-assertionsDisabled:Z

    .line 53
    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/exsettings/InstrumentedFragment;-><init>()V

    return-void
.end method

.method private filterPageData(Ljava/util/List;I)V
    .locals 4
    .param p2, "tab"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/CharSequence;",
            "Lcom/android/exsettings/applications/AppOpsState$OpsTemplate;",
            ">;>;I)V"
        }
    .end annotation

    .prologue
    .line 178
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/CharSequence;Lcom/android/exsettings/applications/AppOpsState$OpsTemplate;>;>;"
    if-ltz p2, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge p2, v2, :cond_1

    .line 179
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 180
    .local v0, "item":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/CharSequence;Lcom/android/exsettings/applications/AppOpsState$OpsTemplate;>;"
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 181
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 177
    .end local v0    # "item":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/CharSequence;Lcom/android/exsettings/applications/AppOpsState$OpsTemplate;>;"
    :cond_0
    return-void

    .line 182
    :cond_1
    invoke-static {}, Lcom/android/exsettings/DevelopmentSettings;->isRootForAppsEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 183
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "item$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 184
    .restart local v0    # "item":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/CharSequence;Lcom/android/exsettings/applications/AppOpsState$OpsTemplate;>;"
    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    sget-object v3, Lcom/android/exsettings/applications/AppOpsState;->SU_TEMPLATE:Lcom/android/exsettings/applications/AppOpsState$OpsTemplate;

    if-ne v2, v3, :cond_2

    .line 185
    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 186
    return-void
.end method

.method private resetAdapter()V
    .locals 3

    .prologue
    .line 120
    iget-object v1, p0, Lcom/android/exsettings/applications/AppOpsSummary;->mAdapter:Lcom/android/exsettings/applications/AppOpsSummary$MyPagerAdapter;

    invoke-virtual {v1}, Lcom/android/exsettings/applications/AppOpsSummary$MyPagerAdapter;->getCurrentPage()I

    move-result v0

    .line 121
    .local v0, "curPos":I
    iget-object v1, p0, Lcom/android/exsettings/applications/AppOpsSummary;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v2, p0, Lcom/android/exsettings/applications/AppOpsSummary;->mAdapter:Lcom/android/exsettings/applications/AppOpsSummary$MyPagerAdapter;

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 122
    iget-object v1, p0, Lcom/android/exsettings/applications/AppOpsSummary;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v2, p0, Lcom/android/exsettings/applications/AppOpsSummary;->mAdapter:Lcom/android/exsettings/applications/AppOpsSummary$MyPagerAdapter;

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 123
    iget-object v1, p0, Lcom/android/exsettings/applications/AppOpsSummary;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, v0}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 118
    return-void
.end method

.method private resetCounters()V
    .locals 3

    .prologue
    .line 225
    iget-object v1, p0, Lcom/android/exsettings/applications/AppOpsSummary;->mActivity:Landroid/app/Activity;

    const-string/jumbo v2, "appops"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    .line 226
    .local v0, "appOps":Landroid/app/AppOpsManager;
    if-nez v0, :cond_0

    .line 227
    return-void

    .line 229
    :cond_0
    invoke-virtual {v0}, Landroid/app/AppOpsManager;->resetCounters()V

    .line 231
    invoke-direct {p0}, Lcom/android/exsettings/applications/AppOpsSummary;->resetAdapter()V

    .line 223
    return-void
.end method

.method private resetCountersConfirm()V
    .locals 3

    .prologue
    .line 235
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/exsettings/applications/AppOpsSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 236
    const v1, 0x1080027

    .line 235
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 237
    const v1, 0x7f0c01d5

    .line 235
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 238
    const v1, 0x7f0c01d6

    .line 235
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 239
    new-instance v1, Lcom/android/exsettings/applications/AppOpsSummary$1;

    invoke-direct {v1, p0}, Lcom/android/exsettings/applications/AppOpsSummary$1;-><init>(Lcom/android/exsettings/applications/AppOpsSummary;)V

    const v2, 0x104000a

    .line 235
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 246
    const/high16 v1, 0x1040000

    const/4 v2, 0x0

    .line 235
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 234
    return-void
.end method

.method private shouldShowSystemApps()Z
    .locals 3

    .prologue
    .line 197
    iget-object v0, p0, Lcom/android/exsettings/applications/AppOpsSummary;->mPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "show_system_apps"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/android/exsettings/applications/AppOpsSummary;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f10001c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 197
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private shouldShowUserApps()Z
    .locals 3

    .prologue
    .line 193
    iget-object v0, p0, Lcom/android/exsettings/applications/AppOpsSummary;->mPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "show_user_apps"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 68
    const/16 v0, 0xf

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 203
    invoke-super {p0, p1}, Lcom/android/exsettings/InstrumentedFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 206
    iget-object v0, p0, Lcom/android/exsettings/applications/AppOpsSummary;->mActivity:Landroid/app/Activity;

    const-string/jumbo v1, "appops_manager"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/applications/AppOpsSummary;->mPreferences:Landroid/content/SharedPreferences;

    .line 208
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/exsettings/applications/AppOpsSummary;->setHasOptionsMenu(Z)V

    .line 202
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const v2, 0x7f13031a

    .line 213
    invoke-super {p0, p1, p2}, Lcom/android/exsettings/InstrumentedFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 214
    const v0, 0x7f140001

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 215
    const v0, 0x7f130319

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/exsettings/applications/AppOpsSummary;->shouldShowUserApps()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 216
    iget-object v0, p0, Lcom/android/exsettings/applications/AppOpsSummary;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f10001c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 217
    invoke-interface {p1, v2}, Landroid/view/Menu;->removeItem(I)V

    .line 212
    :goto_0
    return-void

    .line 219
    :cond_0
    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/exsettings/applications/AppOpsSummary;->shouldShowSystemApps()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 15
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 129
    move-object/from16 v0, p1

    iput-object v0, p0, Lcom/android/exsettings/applications/AppOpsSummary;->mInflater:Landroid/view/LayoutInflater;

    .line 131
    iget-object v12, p0, Lcom/android/exsettings/applications/AppOpsSummary;->mInflater:Landroid/view/LayoutInflater;

    const v13, 0x7f040011

    .line 132
    const/4 v14, 0x0

    .line 131
    move-object/from16 v0, p2

    invoke-virtual {v12, v13, v0, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    .line 133
    .local v6, "rootView":Landroid/view/View;
    move-object/from16 v0, p2

    iput-object v0, p0, Lcom/android/exsettings/applications/AppOpsSummary;->mContentContainer:Landroid/view/ViewGroup;

    .line 134
    iput-object v6, p0, Lcom/android/exsettings/applications/AppOpsSummary;->mRootView:Landroid/view/View;

    .line 136
    invoke-virtual {p0}, Lcom/android/exsettings/applications/AppOpsSummary;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0a0085

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v5

    .line 137
    .local v5, "pageNames":[Ljava/lang/CharSequence;
    sget-object v9, Lcom/android/exsettings/applications/AppOpsState;->ALL_TEMPLATES:[Lcom/android/exsettings/applications/AppOpsState$OpsTemplate;

    .line 138
    .local v9, "templates":[Lcom/android/exsettings/applications/AppOpsState$OpsTemplate;
    sget-boolean v12, Lcom/android/exsettings/applications/AppOpsSummary;->-assertionsDisabled:Z

    if-nez v12, :cond_1

    array-length v12, v5

    array-length v13, v9

    if-ne v12, v13, :cond_0

    const/4 v12, 0x1

    :goto_0
    if-nez v12, :cond_1

    new-instance v12, Ljava/lang/AssertionError;

    invoke-direct {v12}, Ljava/lang/AssertionError;-><init>()V

    throw v12

    :cond_0
    const/4 v12, 0x0

    goto :goto_0

    .line 140
    :cond_1
    const/4 v7, -0x1

    .line 141
    .local v7, "specificTab":I
    invoke-virtual {p0}, Lcom/android/exsettings/applications/AppOpsSummary;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 142
    .local v1, "bundle":Landroid/os/Bundle;
    if-eqz v1, :cond_2

    .line 143
    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v12

    const-string/jumbo v13, "appops_tab"

    const-string/jumbo v14, ""

    invoke-virtual {v1, v13, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v12, v13}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v7

    .line 146
    :cond_2
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 147
    .local v4, "pageData":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/CharSequence;Lcom/android/exsettings/applications/AppOpsState$OpsTemplate;>;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v12, v5

    if-ge v3, v12, :cond_3

    .line 148
    aget-object v12, v5, v3

    aget-object v13, v9, v3

    invoke-static {v12, v13}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v12

    invoke-interface {v4, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 147
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 150
    :cond_3
    invoke-direct {p0, v4, v7}, Lcom/android/exsettings/applications/AppOpsSummary;->filterPageData(Ljava/util/List;I)V

    .line 152
    const v12, 0x7f13002b

    invoke-virtual {v6, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/support/v4/view/ViewPager;

    iput-object v12, p0, Lcom/android/exsettings/applications/AppOpsSummary;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 153
    new-instance v12, Lcom/android/exsettings/applications/AppOpsSummary$MyPagerAdapter;

    invoke-virtual {p0}, Lcom/android/exsettings/applications/AppOpsSummary;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v13

    invoke-direct {v12, v13, v4}, Lcom/android/exsettings/applications/AppOpsSummary$MyPagerAdapter;-><init>(Landroid/app/FragmentManager;Ljava/util/List;)V

    iput-object v12, p0, Lcom/android/exsettings/applications/AppOpsSummary;->mAdapter:Lcom/android/exsettings/applications/AppOpsSummary$MyPagerAdapter;

    .line 154
    iget-object v12, p0, Lcom/android/exsettings/applications/AppOpsSummary;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v13, p0, Lcom/android/exsettings/applications/AppOpsSummary;->mAdapter:Lcom/android/exsettings/applications/AppOpsSummary$MyPagerAdapter;

    invoke-virtual {v12, v13}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 155
    iget-object v12, p0, Lcom/android/exsettings/applications/AppOpsSummary;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v13, p0, Lcom/android/exsettings/applications/AppOpsSummary;->mAdapter:Lcom/android/exsettings/applications/AppOpsSummary$MyPagerAdapter;

    invoke-virtual {v12, v13}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 156
    const v12, 0x7f13002c

    invoke-virtual {v6, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/support/v4/view/PagerTabStrip;

    .line 158
    .local v8, "tabs":Landroid/support/v4/view/PagerTabStrip;
    invoke-virtual {v8}, Landroid/support/v4/view/PagerTabStrip;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v10

    .line 159
    .local v10, "theme":Landroid/content/res/Resources$Theme;
    new-instance v11, Landroid/util/TypedValue;

    invoke-direct {v11}, Landroid/util/TypedValue;-><init>()V

    .line 160
    .local v11, "typedValue":Landroid/util/TypedValue;
    const v12, 0x1010435

    const/4 v13, 0x1

    invoke-virtual {v10, v12, v11, v13}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 161
    iget v12, v11, Landroid/util/TypedValue;->resourceId:I

    if-eqz v12, :cond_5

    .line 162
    invoke-virtual {p0}, Lcom/android/exsettings/applications/AppOpsSummary;->getContext()Landroid/content/Context;

    move-result-object v12

    iget v13, v11, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v12, v13}, Landroid/content/Context;->getColor(I)I

    move-result v2

    .line 164
    .local v2, "colorAccent":I
    :goto_2
    invoke-virtual {v8, v2}, Landroid/support/v4/view/PagerTabStrip;->setTabIndicatorColor(I)V

    .line 168
    move-object/from16 v0, p2

    instance-of v12, v0, Landroid/preference/PreferenceFrameLayout;

    if-eqz v12, :cond_4

    .line 169
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Landroid/preference/PreferenceFrameLayout$LayoutParams;

    const/4 v13, 0x1

    iput-boolean v13, v12, Landroid/preference/PreferenceFrameLayout$LayoutParams;->removeBorders:Z

    .line 172
    :cond_4
    invoke-virtual {p0}, Lcom/android/exsettings/applications/AppOpsSummary;->getActivity()Landroid/app/Activity;

    move-result-object v12

    iput-object v12, p0, Lcom/android/exsettings/applications/AppOpsSummary;->mActivity:Landroid/app/Activity;

    .line 174
    return-object v6

    .line 163
    .end local v2    # "colorAccent":I
    :cond_5
    invoke-virtual {p0}, Lcom/android/exsettings/applications/AppOpsSummary;->getContext()Landroid/content/Context;

    move-result-object v12

    const v13, 0x7f0e0080

    invoke-virtual {v12, v13}, Landroid/content/Context;->getColor(I)I

    move-result v2

    .restart local v2    # "colorAccent":I
    goto :goto_2
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 252
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 273
    invoke-super {p0, p1}, Lcom/android/exsettings/InstrumentedFragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    return v2

    .line 254
    :pswitch_0
    const-string/jumbo v1, "show_user_apps"

    .line 256
    .local v1, "prefNameUserApps":Ljava/lang/String;
    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_0

    :goto_0
    invoke-interface {p1, v2}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 257
    iget-object v2, p0, Lcom/android/exsettings/applications/AppOpsSummary;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string/jumbo v4, "show_user_apps"

    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v5

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 259
    invoke-direct {p0}, Lcom/android/exsettings/applications/AppOpsSummary;->resetAdapter()V

    .line 260
    return v3

    :cond_0
    move v2, v3

    .line 256
    goto :goto_0

    .line 262
    .end local v1    # "prefNameUserApps":Ljava/lang/String;
    :pswitch_1
    const-string/jumbo v0, "show_system_apps"

    .line 264
    .local v0, "prefNameSysApps":Ljava/lang/String;
    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_1

    :goto_1
    invoke-interface {p1, v2}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 265
    iget-object v2, p0, Lcom/android/exsettings/applications/AppOpsSummary;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string/jumbo v4, "show_system_apps"

    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v5

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 267
    invoke-direct {p0}, Lcom/android/exsettings/applications/AppOpsSummary;->resetAdapter()V

    .line 268
    return v3

    :cond_1
    move v2, v3

    .line 264
    goto :goto_1

    .line 270
    .end local v0    # "prefNameSysApps":Ljava/lang/String;
    :pswitch_2
    invoke-direct {p0}, Lcom/android/exsettings/applications/AppOpsSummary;->resetCountersConfirm()V

    .line 271
    return v3

    .line 252
    :pswitch_data_0
    .packed-switch 0x7f130319
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
