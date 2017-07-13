.class public Lcom/android/exsettings/applications/RunningProcessesView;
.super Landroid/widget/FrameLayout;
.source "RunningProcessesView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AbsListView$RecyclerListener;
.implements Lcom/android/exsettings/applications/RunningState$OnRefreshUiListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exsettings/applications/RunningProcessesView$ActiveItem;,
        Lcom/android/exsettings/applications/RunningProcessesView$ViewHolder;,
        Lcom/android/exsettings/applications/RunningProcessesView$TimeTicker;,
        Lcom/android/exsettings/applications/RunningProcessesView$ServiceListAdapter;
    }
.end annotation


# instance fields
.field SECONDARY_SERVER_MEM:J

.field final mActiveItems:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/View;",
            "Lcom/android/exsettings/applications/RunningProcessesView$ActiveItem;",
            ">;"
        }
    .end annotation
.end field

.field mAdapter:Lcom/android/exsettings/applications/RunningProcessesView$ServiceListAdapter;

.field mAm:Landroid/app/ActivityManager;

.field mAppsProcessPrefix:Landroid/widget/TextView;

.field mAppsProcessText:Landroid/widget/TextView;

.field mBackgroundProcessPrefix:Landroid/widget/TextView;

.field mBackgroundProcessText:Landroid/widget/TextView;

.field mBuilder:Ljava/lang/StringBuilder;

.field mColorBar:Lcom/android/exsettings/applications/LinearColorBar;

.field mCurHighRam:J

.field mCurLowRam:J

.field mCurMedRam:J

.field mCurSelected:Lcom/android/exsettings/applications/RunningState$BaseItem;

.field mCurShowCached:Z

.field mCurTotalRam:J

.field mDataAvail:Ljava/lang/Runnable;

.field mForegroundProcessPrefix:Landroid/widget/TextView;

.field mForegroundProcessText:Landroid/widget/TextView;

.field mHeader:Landroid/view/View;

.field mListView:Landroid/widget/ListView;

.field mMemInfoReader:Lcom/android/internal/util/MemInfoReader;

.field final mMyUserId:I

.field mOwner:Landroid/app/Fragment;

.field mState:Lcom/android/exsettings/applications/RunningState;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const-wide/16 v2, -0x1

    .line 430
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 60
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/exsettings/applications/RunningProcessesView;->mActiveItems:Ljava/util/HashMap;

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/android/exsettings/applications/RunningProcessesView;->mBuilder:Ljava/lang/StringBuilder;

    .line 85
    iput-wide v2, p0, Lcom/android/exsettings/applications/RunningProcessesView;->mCurTotalRam:J

    .line 86
    iput-wide v2, p0, Lcom/android/exsettings/applications/RunningProcessesView;->mCurHighRam:J

    .line 87
    iput-wide v2, p0, Lcom/android/exsettings/applications/RunningProcessesView;->mCurMedRam:J

    .line 88
    iput-wide v2, p0, Lcom/android/exsettings/applications/RunningProcessesView;->mCurLowRam:J

    .line 89
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/exsettings/applications/RunningProcessesView;->mCurShowCached:Z

    .line 93
    new-instance v0, Lcom/android/internal/util/MemInfoReader;

    invoke-direct {v0}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    iput-object v0, p0, Lcom/android/exsettings/applications/RunningProcessesView;->mMemInfoReader:Lcom/android/internal/util/MemInfoReader;

    .line 431
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    iput v0, p0, Lcom/android/exsettings/applications/RunningProcessesView;->mMyUserId:I

    .line 429
    return-void
.end method

.method private startServiceDetailsActivity(Lcom/android/exsettings/applications/RunningState$MergedItem;)V
    .locals 7
    .param p1, "mi"    # Lcom/android/exsettings/applications/RunningState$MergedItem;

    .prologue
    const/4 v4, 0x0

    .line 409
    iget-object v1, p0, Lcom/android/exsettings/applications/RunningProcessesView;->mOwner:Landroid/app/Fragment;

    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    .line 411
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 412
    .local v2, "args":Landroid/os/Bundle;
    iget-object v1, p1, Lcom/android/exsettings/applications/RunningState$MergedItem;->mProcess:Lcom/android/exsettings/applications/RunningState$ProcessItem;

    if-eqz v1, :cond_0

    .line 413
    const-string/jumbo v1, "uid"

    iget-object v3, p1, Lcom/android/exsettings/applications/RunningState$MergedItem;->mProcess:Lcom/android/exsettings/applications/RunningState$ProcessItem;

    iget v3, v3, Lcom/android/exsettings/applications/RunningState$ProcessItem;->mUid:I

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 414
    const-string/jumbo v1, "process"

    iget-object v3, p1, Lcom/android/exsettings/applications/RunningState$MergedItem;->mProcess:Lcom/android/exsettings/applications/RunningState$ProcessItem;

    iget-object v3, v3, Lcom/android/exsettings/applications/RunningState$ProcessItem;->mProcessName:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    :cond_0
    const-string/jumbo v1, "user_id"

    iget v3, p1, Lcom/android/exsettings/applications/RunningState$MergedItem;->mUserId:I

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 417
    const-string/jumbo v1, "background"

    iget-object v3, p0, Lcom/android/exsettings/applications/RunningProcessesView;->mAdapter:Lcom/android/exsettings/applications/RunningProcessesView$ServiceListAdapter;

    iget-boolean v3, v3, Lcom/android/exsettings/applications/RunningProcessesView$ServiceListAdapter;->mShowBackground:Z

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 419
    iget-object v1, p0, Lcom/android/exsettings/applications/RunningProcessesView;->mOwner:Landroid/app/Fragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/exsettings/SettingsActivity;

    .line 420
    .local v0, "sa":Lcom/android/exsettings/SettingsActivity;
    const-class v1, Lcom/android/exsettings/applications/RunningServiceDetails;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 421
    const v3, 0x7f0c0a2b

    const/4 v6, 0x0

    move-object v5, v4

    .line 420
    invoke-virtual/range {v0 .. v6}, Lcom/android/exsettings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 408
    .end local v0    # "sa":Lcom/android/exsettings/SettingsActivity;
    .end local v2    # "args":Landroid/os/Bundle;
    :cond_1
    return-void
.end method


# virtual methods
.method public doCreate()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 435
    invoke-virtual {p0}, Lcom/android/exsettings/applications/RunningProcessesView;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string/jumbo v5, "activity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager;

    iput-object v4, p0, Lcom/android/exsettings/applications/RunningProcessesView;->mAm:Landroid/app/ActivityManager;

    .line 436
    invoke-virtual {p0}, Lcom/android/exsettings/applications/RunningProcessesView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/exsettings/applications/RunningState;->getInstance(Landroid/content/Context;)Lcom/android/exsettings/applications/RunningState;

    move-result-object v4

    iput-object v4, p0, Lcom/android/exsettings/applications/RunningProcessesView;->mState:Lcom/android/exsettings/applications/RunningState;

    .line 437
    invoke-virtual {p0}, Lcom/android/exsettings/applications/RunningProcessesView;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 438
    const-string/jumbo v5, "layout_inflater"

    .line 437
    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 439
    .local v2, "inflater":Landroid/view/LayoutInflater;
    const v4, 0x7f0400f5

    invoke-virtual {v2, v4, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 440
    const v4, 0x102000a

    invoke-virtual {p0, v4}, Lcom/android/exsettings/applications/RunningProcessesView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ListView;

    iput-object v4, p0, Lcom/android/exsettings/applications/RunningProcessesView;->mListView:Landroid/widget/ListView;

    .line 441
    const v4, 0x1020004

    invoke-virtual {p0, v4}, Lcom/android/exsettings/applications/RunningProcessesView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 442
    .local v1, "emptyView":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 443
    iget-object v4, p0, Lcom/android/exsettings/applications/RunningProcessesView;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 445
    :cond_0
    iget-object v4, p0, Lcom/android/exsettings/applications/RunningProcessesView;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 446
    iget-object v4, p0, Lcom/android/exsettings/applications/RunningProcessesView;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4, p0}, Landroid/widget/ListView;->setRecyclerListener(Landroid/widget/AbsListView$RecyclerListener;)V

    .line 447
    new-instance v4, Lcom/android/exsettings/applications/RunningProcessesView$ServiceListAdapter;

    iget-object v5, p0, Lcom/android/exsettings/applications/RunningProcessesView;->mState:Lcom/android/exsettings/applications/RunningState;

    invoke-direct {v4, p0, v5}, Lcom/android/exsettings/applications/RunningProcessesView$ServiceListAdapter;-><init>(Lcom/android/exsettings/applications/RunningProcessesView;Lcom/android/exsettings/applications/RunningState;)V

    iput-object v4, p0, Lcom/android/exsettings/applications/RunningProcessesView;->mAdapter:Lcom/android/exsettings/applications/RunningProcessesView$ServiceListAdapter;

    .line 448
    iget-object v4, p0, Lcom/android/exsettings/applications/RunningProcessesView;->mListView:Landroid/widget/ListView;

    iget-object v5, p0, Lcom/android/exsettings/applications/RunningProcessesView;->mAdapter:Lcom/android/exsettings/applications/RunningProcessesView$ServiceListAdapter;

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 449
    const v4, 0x7f0400f3

    invoke-virtual {v2, v4, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/exsettings/applications/RunningProcessesView;->mHeader:Landroid/view/View;

    .line 450
    iget-object v4, p0, Lcom/android/exsettings/applications/RunningProcessesView;->mListView:Landroid/widget/ListView;

    iget-object v5, p0, Lcom/android/exsettings/applications/RunningProcessesView;->mHeader:Landroid/view/View;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v7, v6}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 451
    iget-object v4, p0, Lcom/android/exsettings/applications/RunningProcessesView;->mHeader:Landroid/view/View;

    const v5, 0x7f1301bb

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/exsettings/applications/LinearColorBar;

    iput-object v4, p0, Lcom/android/exsettings/applications/RunningProcessesView;->mColorBar:Lcom/android/exsettings/applications/LinearColorBar;

    .line 452
    invoke-virtual {p0}, Lcom/android/exsettings/applications/RunningProcessesView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 453
    .local v0, "context":Landroid/content/Context;
    iget-object v4, p0, Lcom/android/exsettings/applications/RunningProcessesView;->mColorBar:Lcom/android/exsettings/applications/LinearColorBar;

    const v5, 0x7f0e007b

    invoke-virtual {v0, v5}, Landroid/content/Context;->getColor(I)I

    move-result v5

    .line 454
    const v6, 0x7f0e007c

    invoke-virtual {v0, v6}, Landroid/content/Context;->getColor(I)I

    move-result v6

    .line 455
    const v7, 0x7f0e007d

    invoke-virtual {v0, v7}, Landroid/content/Context;->getColor(I)I

    move-result v7

    .line 453
    invoke-virtual {v4, v5, v6, v7}, Lcom/android/exsettings/applications/LinearColorBar;->setColors(III)V

    .line 456
    iget-object v4, p0, Lcom/android/exsettings/applications/RunningProcessesView;->mHeader:Landroid/view/View;

    const v5, 0x7f130203

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/exsettings/applications/RunningProcessesView;->mBackgroundProcessPrefix:Landroid/widget/TextView;

    .line 457
    iget-object v4, p0, Lcom/android/exsettings/applications/RunningProcessesView;->mHeader:Landroid/view/View;

    const v5, 0x7f130201

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/exsettings/applications/RunningProcessesView;->mAppsProcessPrefix:Landroid/widget/TextView;

    .line 458
    iget-object v4, p0, Lcom/android/exsettings/applications/RunningProcessesView;->mHeader:Landroid/view/View;

    const v5, 0x7f1301ff

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/exsettings/applications/RunningProcessesView;->mForegroundProcessPrefix:Landroid/widget/TextView;

    .line 459
    iget-object v4, p0, Lcom/android/exsettings/applications/RunningProcessesView;->mHeader:Landroid/view/View;

    const v5, 0x7f130204

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/exsettings/applications/RunningProcessesView;->mBackgroundProcessText:Landroid/widget/TextView;

    .line 460
    iget-object v4, p0, Lcom/android/exsettings/applications/RunningProcessesView;->mHeader:Landroid/view/View;

    const v5, 0x7f130202

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/exsettings/applications/RunningProcessesView;->mAppsProcessText:Landroid/widget/TextView;

    .line 461
    iget-object v4, p0, Lcom/android/exsettings/applications/RunningProcessesView;->mHeader:Landroid/view/View;

    const v5, 0x7f130200

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/exsettings/applications/RunningProcessesView;->mForegroundProcessText:Landroid/widget/TextView;

    .line 463
    new-instance v3, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v3}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 464
    .local v3, "memInfo":Landroid/app/ActivityManager$MemoryInfo;
    iget-object v4, p0, Lcom/android/exsettings/applications/RunningProcessesView;->mAm:Landroid/app/ActivityManager;

    invoke-virtual {v4, v3}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 465
    iget-wide v4, v3, Landroid/app/ActivityManager$MemoryInfo;->secondaryServerThreshold:J

    iput-wide v4, p0, Lcom/android/exsettings/applications/RunningProcessesView;->SECONDARY_SERVER_MEM:J

    .line 434
    return-void
.end method

.method public doPause()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 469
    iget-object v0, p0, Lcom/android/exsettings/applications/RunningProcessesView;->mState:Lcom/android/exsettings/applications/RunningState;

    invoke-virtual {v0}, Lcom/android/exsettings/applications/RunningState;->pause()V

    .line 470
    iput-object v1, p0, Lcom/android/exsettings/applications/RunningProcessesView;->mDataAvail:Ljava/lang/Runnable;

    .line 471
    iput-object v1, p0, Lcom/android/exsettings/applications/RunningProcessesView;->mOwner:Landroid/app/Fragment;

    .line 468
    return-void
.end method

.method public doResume(Landroid/app/Fragment;Ljava/lang/Runnable;)Z
    .locals 2
    .param p1, "owner"    # Landroid/app/Fragment;
    .param p2, "dataAvail"    # Ljava/lang/Runnable;

    .prologue
    const/4 v1, 0x1

    .line 475
    iput-object p1, p0, Lcom/android/exsettings/applications/RunningProcessesView;->mOwner:Landroid/app/Fragment;

    .line 476
    iget-object v0, p0, Lcom/android/exsettings/applications/RunningProcessesView;->mState:Lcom/android/exsettings/applications/RunningState;

    invoke-virtual {v0, p0}, Lcom/android/exsettings/applications/RunningState;->resume(Lcom/android/exsettings/applications/RunningState$OnRefreshUiListener;)V

    .line 477
    iget-object v0, p0, Lcom/android/exsettings/applications/RunningProcessesView;->mState:Lcom/android/exsettings/applications/RunningState;

    invoke-virtual {v0}, Lcom/android/exsettings/applications/RunningState;->hasData()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 480
    invoke-virtual {p0, v1}, Lcom/android/exsettings/applications/RunningProcessesView;->refreshUi(Z)V

    .line 481
    return v1

    .line 483
    :cond_0
    iput-object p2, p0, Lcom/android/exsettings/applications/RunningProcessesView;->mDataAvail:Ljava/lang/Runnable;

    .line 484
    const/4 v0, 0x0

    return v0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .param p2, "v"    # Landroid/view/View;
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
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    move-object v0, p1

    .line 401
    check-cast v0, Landroid/widget/ListView;

    .line 402
    .local v0, "l":Landroid/widget/ListView;
    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    invoke-interface {v2, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/exsettings/applications/RunningState$MergedItem;

    .line 403
    .local v1, "mi":Lcom/android/exsettings/applications/RunningState$MergedItem;
    iput-object v1, p0, Lcom/android/exsettings/applications/RunningProcessesView;->mCurSelected:Lcom/android/exsettings/applications/RunningState$BaseItem;

    .line 404
    invoke-direct {p0, v1}, Lcom/android/exsettings/applications/RunningProcessesView;->startServiceDetailsActivity(Lcom/android/exsettings/applications/RunningState$MergedItem;)V

    .line 400
    return-void
.end method

.method public onMovedToScrapHeap(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 426
    iget-object v0, p0, Lcom/android/exsettings/applications/RunningProcessesView;->mActiveItems:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 425
    return-void
.end method

.method public onRefreshUi(I)V
    .locals 1
    .param p1, "what"    # I

    .prologue
    .line 502
    packed-switch p1, :pswitch_data_0

    .line 501
    :goto_0
    return-void

    .line 504
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/exsettings/applications/RunningProcessesView;->updateTimes()V

    goto :goto_0

    .line 507
    :pswitch_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/exsettings/applications/RunningProcessesView;->refreshUi(Z)V

    .line 508
    invoke-virtual {p0}, Lcom/android/exsettings/applications/RunningProcessesView;->updateTimes()V

    goto :goto_0

    .line 511
    :pswitch_2
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/exsettings/applications/RunningProcessesView;->refreshUi(Z)V

    .line 512
    invoke-virtual {p0}, Lcom/android/exsettings/applications/RunningProcessesView;->updateTimes()V

    goto :goto_0

    .line 502
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method refreshUi(Z)V
    .locals 20
    .param p1, "dataChanged"    # Z

    .prologue
    .line 321
    if-eqz p1, :cond_0

    .line 322
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/applications/RunningProcessesView;->mAdapter:Lcom/android/exsettings/applications/RunningProcessesView$ServiceListAdapter;

    .line 323
    .local v2, "adapter":Lcom/android/exsettings/applications/RunningProcessesView$ServiceListAdapter;
    invoke-virtual {v2}, Lcom/android/exsettings/applications/RunningProcessesView$ServiceListAdapter;->refreshItems()V

    .line 324
    invoke-virtual {v2}, Lcom/android/exsettings/applications/RunningProcessesView$ServiceListAdapter;->notifyDataSetChanged()V

    .line 327
    .end local v2    # "adapter":Lcom/android/exsettings/applications/RunningProcessesView$ServiceListAdapter;
    :cond_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/exsettings/applications/RunningProcessesView;->mDataAvail:Ljava/lang/Runnable;

    if-eqz v11, :cond_1

    .line 328
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/exsettings/applications/RunningProcessesView;->mDataAvail:Ljava/lang/Runnable;

    invoke-interface {v11}, Ljava/lang/Runnable;->run()V

    .line 329
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/exsettings/applications/RunningProcessesView;->mDataAvail:Ljava/lang/Runnable;

    .line 332
    :cond_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/exsettings/applications/RunningProcessesView;->mMemInfoReader:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v11}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    .line 344
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/exsettings/applications/RunningProcessesView;->mState:Lcom/android/exsettings/applications/RunningState;

    iget-object v14, v11, Lcom/android/exsettings/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v14

    .line 345
    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/exsettings/applications/RunningProcessesView;->mCurShowCached:Z

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/exsettings/applications/RunningProcessesView;->mAdapter:Lcom/android/exsettings/applications/RunningProcessesView$ServiceListAdapter;

    iget-boolean v15, v15, Lcom/android/exsettings/applications/RunningProcessesView$ServiceListAdapter;->mShowBackground:Z

    if-eq v11, v15, :cond_2

    .line 346
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/exsettings/applications/RunningProcessesView;->mAdapter:Lcom/android/exsettings/applications/RunningProcessesView$ServiceListAdapter;

    iget-boolean v11, v11, Lcom/android/exsettings/applications/RunningProcessesView$ServiceListAdapter;->mShowBackground:Z

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/android/exsettings/applications/RunningProcessesView;->mCurShowCached:Z

    .line 347
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/exsettings/applications/RunningProcessesView;->mCurShowCached:Z

    if-eqz v11, :cond_5

    .line 348
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/exsettings/applications/RunningProcessesView;->mForegroundProcessPrefix:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/applications/RunningProcessesView;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    .line 349
    const v16, 0x7f0c0a28

    .line 348
    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v15

    invoke-virtual {v11, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 350
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/exsettings/applications/RunningProcessesView;->mAppsProcessPrefix:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/applications/RunningProcessesView;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    .line 351
    const v16, 0x7f0c0a29

    .line 350
    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v15

    invoke-virtual {v11, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 360
    :cond_2
    :goto_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/exsettings/applications/RunningProcessesView;->mMemInfoReader:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v11}, Lcom/android/internal/util/MemInfoReader;->getTotalSize()J

    move-result-wide v12

    .line 363
    .local v12, "totalRam":J
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/exsettings/applications/RunningProcessesView;->mCurShowCached:Z

    if-eqz v11, :cond_6

    .line 364
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/exsettings/applications/RunningProcessesView;->mMemInfoReader:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v11}, Lcom/android/internal/util/MemInfoReader;->getFreeSize()J

    move-result-wide v16

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/exsettings/applications/RunningProcessesView;->mMemInfoReader:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v11}, Lcom/android/internal/util/MemInfoReader;->getCachedSize()J

    move-result-wide v18

    add-long v6, v16, v18

    .line 365
    .local v6, "lowRam":J
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/exsettings/applications/RunningProcessesView;->mState:Lcom/android/exsettings/applications/RunningState;

    iget-wide v8, v11, Lcom/android/exsettings/applications/RunningState;->mBackgroundProcessMemory:J

    .line 372
    .local v8, "medRam":J
    :goto_1
    sub-long v16, v12, v8

    sub-long v4, v16, v6

    .line 374
    .local v4, "highRam":J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/exsettings/applications/RunningProcessesView;->mCurTotalRam:J

    move-wide/from16 v16, v0

    cmp-long v11, v16, v12

    if-nez v11, :cond_3

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/exsettings/applications/RunningProcessesView;->mCurHighRam:J

    move-wide/from16 v16, v0

    cmp-long v11, v16, v4

    if-eqz v11, :cond_7

    .line 376
    :cond_3
    :goto_2
    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/android/exsettings/applications/RunningProcessesView;->mCurTotalRam:J

    .line 377
    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/android/exsettings/applications/RunningProcessesView;->mCurHighRam:J

    .line 378
    move-object/from16 v0, p0

    iput-wide v8, v0, Lcom/android/exsettings/applications/RunningProcessesView;->mCurMedRam:J

    .line 379
    move-object/from16 v0, p0

    iput-wide v6, v0, Lcom/android/exsettings/applications/RunningProcessesView;->mCurLowRam:J

    .line 380
    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object v3

    .line 382
    .local v3, "bidiFormatter":Landroid/text/BidiFormatter;
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/applications/RunningProcessesView;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11, v6, v7}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v11

    .line 381
    invoke-virtual {v3, v11}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 383
    .local v10, "sizeStr":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/exsettings/applications/RunningProcessesView;->mBackgroundProcessText:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/applications/RunningProcessesView;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    .line 384
    const/16 v17, 0x0

    aput-object v10, v16, v17

    const v17, 0x7f0c0a2a

    .line 383
    move/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v15, v0, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 386
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/applications/RunningProcessesView;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11, v8, v9}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v11

    .line 385
    invoke-virtual {v3, v11}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 387
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/exsettings/applications/RunningProcessesView;->mAppsProcessText:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/applications/RunningProcessesView;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    .line 388
    const/16 v17, 0x0

    aput-object v10, v16, v17

    const v17, 0x7f0c0a2a

    .line 387
    move/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v15, v0, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 390
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/applications/RunningProcessesView;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11, v4, v5}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v11

    .line 389
    invoke-virtual {v3, v11}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 391
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/exsettings/applications/RunningProcessesView;->mForegroundProcessText:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/applications/RunningProcessesView;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    .line 392
    const/16 v17, 0x0

    aput-object v10, v16, v17

    const v17, 0x7f0c0a2a

    .line 391
    move/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v15, v0, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 393
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/exsettings/applications/RunningProcessesView;->mColorBar:Lcom/android/exsettings/applications/LinearColorBar;

    long-to-float v15, v4

    long-to-float v0, v12

    move/from16 v16, v0

    div-float v15, v15, v16

    .line 394
    long-to-float v0, v8

    move/from16 v16, v0

    long-to-float v0, v12

    move/from16 v17, v0

    div-float v16, v16, v17

    .line 395
    long-to-float v0, v6

    move/from16 v17, v0

    long-to-float v0, v12

    move/from16 v18, v0

    div-float v17, v17, v18

    .line 393
    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v11, v15, v0, v1}, Lcom/android/exsettings/applications/LinearColorBar;->setRatios(FFF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v3    # "bidiFormatter":Landroid/text/BidiFormatter;
    .end local v10    # "sizeStr":Ljava/lang/String;
    :cond_4
    monitor-exit v14

    .line 320
    return-void

    .line 353
    .end local v4    # "highRam":J
    .end local v6    # "lowRam":J
    .end local v8    # "medRam":J
    .end local v12    # "totalRam":J
    :cond_5
    :try_start_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/exsettings/applications/RunningProcessesView;->mForegroundProcessPrefix:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/applications/RunningProcessesView;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    .line 354
    const v16, 0x7f0c0a25

    .line 353
    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v15

    invoke-virtual {v11, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 355
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/exsettings/applications/RunningProcessesView;->mAppsProcessPrefix:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/applications/RunningProcessesView;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    .line 356
    const v16, 0x7f0c0a26

    .line 355
    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v15

    invoke-virtual {v11, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 344
    :catchall_0
    move-exception v11

    monitor-exit v14

    throw v11

    .line 367
    .restart local v12    # "totalRam":J
    :cond_6
    :try_start_2
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/exsettings/applications/RunningProcessesView;->mMemInfoReader:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v11}, Lcom/android/internal/util/MemInfoReader;->getFreeSize()J

    move-result-wide v16

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/exsettings/applications/RunningProcessesView;->mMemInfoReader:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v11}, Lcom/android/internal/util/MemInfoReader;->getCachedSize()J

    move-result-wide v18

    add-long v16, v16, v18

    .line 368
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/exsettings/applications/RunningProcessesView;->mState:Lcom/android/exsettings/applications/RunningState;

    iget-wide v0, v11, Lcom/android/exsettings/applications/RunningState;->mBackgroundProcessMemory:J

    move-wide/from16 v18, v0

    .line 367
    add-long v6, v16, v18

    .line 369
    .restart local v6    # "lowRam":J
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/exsettings/applications/RunningProcessesView;->mState:Lcom/android/exsettings/applications/RunningState;

    iget-wide v8, v11, Lcom/android/exsettings/applications/RunningState;->mServiceProcessMemory:J

    .restart local v8    # "medRam":J
    goto/16 :goto_1

    .line 374
    .restart local v4    # "highRam":J
    :cond_7
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/exsettings/applications/RunningProcessesView;->mCurMedRam:J

    move-wide/from16 v16, v0

    cmp-long v11, v16, v8

    if-nez v11, :cond_3

    .line 375
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/exsettings/applications/RunningProcessesView;->mCurLowRam:J

    move-wide/from16 v16, v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    cmp-long v11, v16, v6

    if-eqz v11, :cond_4

    goto/16 :goto_2
.end method

.method updateTimes()V
    .locals 4

    .prologue
    .line 488
    iget-object v2, p0, Lcom/android/exsettings/applications/RunningProcessesView;->mActiveItems:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 489
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/exsettings/applications/RunningProcessesView$ActiveItem;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 490
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/exsettings/applications/RunningProcessesView$ActiveItem;

    .line 491
    .local v0, "ai":Lcom/android/exsettings/applications/RunningProcessesView$ActiveItem;
    iget-object v2, v0, Lcom/android/exsettings/applications/RunningProcessesView$ActiveItem;->mRootView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    if-nez v2, :cond_0

    .line 493
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 496
    :cond_0
    invoke-virtual {p0}, Lcom/android/exsettings/applications/RunningProcessesView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/exsettings/applications/RunningProcessesView;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Lcom/android/exsettings/applications/RunningProcessesView$ActiveItem;->updateTime(Landroid/content/Context;Ljava/lang/StringBuilder;)V

    goto :goto_0

    .line 487
    .end local v0    # "ai":Lcom/android/exsettings/applications/RunningProcessesView$ActiveItem;
    :cond_1
    return-void
.end method
