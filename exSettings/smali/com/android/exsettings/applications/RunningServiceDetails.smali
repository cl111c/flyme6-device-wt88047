.class public Lcom/android/exsettings/applications/RunningServiceDetails;
.super Lcom/android/exsettings/InstrumentedFragment;
.source "RunningServiceDetails.java"

# interfaces
.implements Lcom/android/exsettings/applications/RunningState$OnRefreshUiListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exsettings/applications/RunningServiceDetails$ActiveDetail;,
        Lcom/android/exsettings/applications/RunningServiceDetails$MyAlertDialogFragment;
    }
.end annotation


# instance fields
.field final mActiveDetails:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/exsettings/applications/RunningServiceDetails$ActiveDetail;",
            ">;"
        }
    .end annotation
.end field

.field mAllDetails:Landroid/view/ViewGroup;

.field mAm:Landroid/app/ActivityManager;

.field mBuilder:Ljava/lang/StringBuilder;

.field mHaveData:Z

.field mInflater:Landroid/view/LayoutInflater;

.field mMergedItem:Lcom/android/exsettings/applications/RunningState$MergedItem;

.field mNumProcesses:I

.field mNumServices:I

.field mProcessName:Ljava/lang/String;

.field mProcessesHeader:Landroid/widget/TextView;

.field mRootView:Landroid/view/View;

.field mServicesHeader:Landroid/widget/TextView;

.field mShowBackground:Z

.field mSnippet:Landroid/view/ViewGroup;

.field mSnippetActiveItem:Lcom/android/exsettings/applications/RunningProcessesView$ActiveItem;

.field mSnippetViewHolder:Lcom/android/exsettings/applications/RunningProcessesView$ViewHolder;

.field mState:Lcom/android/exsettings/applications/RunningState;

.field mUid:I

.field mUserId:I


# direct methods
.method static synthetic -wrap0(Lcom/android/exsettings/applications/RunningServiceDetails;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/exsettings/applications/RunningServiceDetails;->finish()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/exsettings/applications/RunningServiceDetails;Landroid/content/ComponentName;)V
    .locals 0
    .param p1, "comp"    # Landroid/content/ComponentName;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/exsettings/applications/RunningServiceDetails;->showConfirmStopDialog(Landroid/content/ComponentName;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/exsettings/InstrumentedFragment;-><init>()V

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/exsettings/applications/RunningServiceDetails;->mActiveDetails:Ljava/util/ArrayList;

    .line 196
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/android/exsettings/applications/RunningServiceDetails;->mBuilder:Ljava/lang/StringBuilder;

    .line 48
    return-void
.end method

.method private finish()V
    .locals 2

    .prologue
    .line 486
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/exsettings/applications/RunningServiceDetails$1;

    invoke-direct {v1, p0}, Lcom/android/exsettings/applications/RunningServiceDetails$1;-><init>(Lcom/android/exsettings/applications/RunningServiceDetails;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 485
    return-void
.end method

.method private showConfirmStopDialog(Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "comp"    # Landroid/content/ComponentName;

    .prologue
    .line 561
    const/4 v1, 0x1

    .line 560
    invoke-static {v1, p1}, Lcom/android/exsettings/applications/RunningServiceDetails$MyAlertDialogFragment;->newConfirmStop(ILandroid/content/ComponentName;)Lcom/android/exsettings/applications/RunningServiceDetails$MyAlertDialogFragment;

    move-result-object v0

    .line 562
    .local v0, "newFragment":Landroid/app/DialogFragment;
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/app/DialogFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 563
    invoke-virtual {p0}, Lcom/android/exsettings/applications/RunningServiceDetails;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v2, "confirmstop"

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 559
    return-void
.end method


# virtual methods
.method activeDetailForService(Landroid/content/ComponentName;)Lcom/android/exsettings/applications/RunningServiceDetails$ActiveDetail;
    .locals 4
    .param p1, "comp"    # Landroid/content/ComponentName;

    .prologue
    const/4 v3, 0x0

    .line 549
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/exsettings/applications/RunningServiceDetails;->mActiveDetails:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 550
    iget-object v2, p0, Lcom/android/exsettings/applications/RunningServiceDetails;->mActiveDetails:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/exsettings/applications/RunningServiceDetails$ActiveDetail;

    .line 551
    .local v0, "ad":Lcom/android/exsettings/applications/RunningServiceDetails$ActiveDetail;
    iget-object v2, v0, Lcom/android/exsettings/applications/RunningServiceDetails$ActiveDetail;->mServiceItem:Lcom/android/exsettings/applications/RunningState$ServiceItem;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/android/exsettings/applications/RunningServiceDetails$ActiveDetail;->mServiceItem:Lcom/android/exsettings/applications/RunningState$ServiceItem;

    iget-object v2, v2, Lcom/android/exsettings/applications/RunningState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    if-eqz v2, :cond_0

    .line 552
    iget-object v2, v0, Lcom/android/exsettings/applications/RunningServiceDetails$ActiveDetail;->mServiceItem:Lcom/android/exsettings/applications/RunningState$ServiceItem;

    iget-object v2, v2, Lcom/android/exsettings/applications/RunningState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {p1, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 551
    if-eqz v2, :cond_0

    .line 553
    return-object v0

    .line 549
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 556
    .end local v0    # "ad":Lcom/android/exsettings/applications/RunningServiceDetails$ActiveDetail;
    :cond_1
    return-object v3
.end method

.method addDetailViews()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 425
    iget-object v2, p0, Lcom/android/exsettings/applications/RunningServiceDetails;->mActiveDetails:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 426
    iget-object v3, p0, Lcom/android/exsettings/applications/RunningServiceDetails;->mAllDetails:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/exsettings/applications/RunningServiceDetails;->mActiveDetails:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/exsettings/applications/RunningServiceDetails$ActiveDetail;

    iget-object v2, v2, Lcom/android/exsettings/applications/RunningServiceDetails$ActiveDetail;->mRootView:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 425
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 428
    :cond_0
    iget-object v2, p0, Lcom/android/exsettings/applications/RunningServiceDetails;->mActiveDetails:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 430
    iget-object v2, p0, Lcom/android/exsettings/applications/RunningServiceDetails;->mServicesHeader:Landroid/widget/TextView;

    if-eqz v2, :cond_1

    .line 431
    iget-object v2, p0, Lcom/android/exsettings/applications/RunningServiceDetails;->mAllDetails:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/exsettings/applications/RunningServiceDetails;->mServicesHeader:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 432
    iput-object v4, p0, Lcom/android/exsettings/applications/RunningServiceDetails;->mServicesHeader:Landroid/widget/TextView;

    .line 435
    :cond_1
    iget-object v2, p0, Lcom/android/exsettings/applications/RunningServiceDetails;->mProcessesHeader:Landroid/widget/TextView;

    if-eqz v2, :cond_2

    .line 436
    iget-object v2, p0, Lcom/android/exsettings/applications/RunningServiceDetails;->mAllDetails:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/exsettings/applications/RunningServiceDetails;->mProcessesHeader:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 437
    iput-object v4, p0, Lcom/android/exsettings/applications/RunningServiceDetails;->mProcessesHeader:Landroid/widget/TextView;

    .line 440
    :cond_2
    iput v5, p0, Lcom/android/exsettings/applications/RunningServiceDetails;->mNumProcesses:I

    iput v5, p0, Lcom/android/exsettings/applications/RunningServiceDetails;->mNumServices:I

    .line 442
    iget-object v2, p0, Lcom/android/exsettings/applications/RunningServiceDetails;->mMergedItem:Lcom/android/exsettings/applications/RunningState$MergedItem;

    if-eqz v2, :cond_6

    .line 443
    iget-object v2, p0, Lcom/android/exsettings/applications/RunningServiceDetails;->mMergedItem:Lcom/android/exsettings/applications/RunningState$MergedItem;

    iget-object v2, v2, Lcom/android/exsettings/applications/RunningState$MergedItem;->mUser:Lcom/android/exsettings/applications/RunningState$UserState;

    if-eqz v2, :cond_5

    .line 445
    iget-boolean v2, p0, Lcom/android/exsettings/applications/RunningServiceDetails;->mShowBackground:Z

    if-eqz v2, :cond_3

    .line 446
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/exsettings/applications/RunningServiceDetails;->mMergedItem:Lcom/android/exsettings/applications/RunningState$MergedItem;

    iget-object v2, v2, Lcom/android/exsettings/applications/RunningState$MergedItem;->mChildren:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 447
    .local v1, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/exsettings/applications/RunningState$MergedItem;>;"
    iget-object v2, p0, Lcom/android/exsettings/applications/RunningServiceDetails;->mState:Lcom/android/exsettings/applications/RunningState;

    iget-object v2, v2, Lcom/android/exsettings/applications/RunningState;->mBackgroundComparator:Ljava/util/Comparator;

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 451
    :goto_1
    const/4 v0, 0x0

    :goto_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_4

    .line 452
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/exsettings/applications/RunningState$MergedItem;

    invoke-virtual {p0, v2, v6, v5}, Lcom/android/exsettings/applications/RunningServiceDetails;->addDetailsViews(Lcom/android/exsettings/applications/RunningState$MergedItem;ZZ)V

    .line 451
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 449
    .end local v1    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/exsettings/applications/RunningState$MergedItem;>;"
    :cond_3
    iget-object v2, p0, Lcom/android/exsettings/applications/RunningServiceDetails;->mMergedItem:Lcom/android/exsettings/applications/RunningState$MergedItem;

    iget-object v1, v2, Lcom/android/exsettings/applications/RunningState$MergedItem;->mChildren:Ljava/util/ArrayList;

    .restart local v1    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/exsettings/applications/RunningState$MergedItem;>;"
    goto :goto_1

    .line 454
    :cond_4
    const/4 v0, 0x0

    :goto_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_6

    .line 455
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/exsettings/applications/RunningState$MergedItem;

    invoke-virtual {p0, v2, v5, v6}, Lcom/android/exsettings/applications/RunningServiceDetails;->addDetailsViews(Lcom/android/exsettings/applications/RunningState$MergedItem;ZZ)V

    .line 454
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 458
    .end local v1    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/exsettings/applications/RunningState$MergedItem;>;"
    :cond_5
    iget-object v2, p0, Lcom/android/exsettings/applications/RunningServiceDetails;->mMergedItem:Lcom/android/exsettings/applications/RunningState$MergedItem;

    invoke-virtual {p0, v2, v6, v6}, Lcom/android/exsettings/applications/RunningServiceDetails;->addDetailsViews(Lcom/android/exsettings/applications/RunningState$MergedItem;ZZ)V

    .line 424
    :cond_6
    return-void
.end method

.method addDetailsViews(Lcom/android/exsettings/applications/RunningState$MergedItem;ZZ)V
    .locals 7
    .param p1, "item"    # Lcom/android/exsettings/applications/RunningState$MergedItem;
    .param p2, "inclServices"    # Z
    .param p3, "inclProcesses"    # Z

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 394
    if-eqz p1, :cond_1

    .line 395
    if-eqz p2, :cond_0

    .line 396
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p1, Lcom/android/exsettings/applications/RunningState$MergedItem;->mServices:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 397
    iget-object v2, p1, Lcom/android/exsettings/applications/RunningState$MergedItem;->mServices:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/exsettings/applications/RunningState$ServiceItem;

    invoke-virtual {p0, v2, p1, v3, v3}, Lcom/android/exsettings/applications/RunningServiceDetails;->addServiceDetailsView(Lcom/android/exsettings/applications/RunningState$ServiceItem;Lcom/android/exsettings/applications/RunningState$MergedItem;ZZ)V

    .line 396
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 401
    .end local v0    # "i":I
    :cond_0
    if-eqz p3, :cond_1

    .line 402
    iget-object v2, p1, Lcom/android/exsettings/applications/RunningState$MergedItem;->mServices:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_3

    .line 406
    iget v2, p1, Lcom/android/exsettings/applications/RunningState$MergedItem;->mUserId:I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    if-eq v2, v5, :cond_2

    move v2, v3

    :goto_1
    invoke-virtual {p0, v6, p1, v4, v2}, Lcom/android/exsettings/applications/RunningServiceDetails;->addServiceDetailsView(Lcom/android/exsettings/applications/RunningState$ServiceItem;Lcom/android/exsettings/applications/RunningState$MergedItem;ZZ)V

    .line 393
    :cond_1
    return-void

    :cond_2
    move v2, v4

    .line 406
    goto :goto_1

    .line 410
    :cond_3
    const/4 v0, -0x1

    .restart local v0    # "i":I
    :goto_2
    iget-object v2, p1, Lcom/android/exsettings/applications/RunningState$MergedItem;->mOtherProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 411
    if-gez v0, :cond_4

    iget-object v1, p1, Lcom/android/exsettings/applications/RunningState$MergedItem;->mProcess:Lcom/android/exsettings/applications/RunningState$ProcessItem;

    .line 413
    .local v1, "pi":Lcom/android/exsettings/applications/RunningState$ProcessItem;
    :goto_3
    if-eqz v1, :cond_5

    iget v2, v1, Lcom/android/exsettings/applications/RunningState$ProcessItem;->mPid:I

    if-gtz v2, :cond_5

    .line 410
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 412
    .end local v1    # "pi":Lcom/android/exsettings/applications/RunningState$ProcessItem;
    :cond_4
    iget-object v2, p1, Lcom/android/exsettings/applications/RunningState$MergedItem;->mOtherProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/exsettings/applications/RunningState$ProcessItem;

    .restart local v1    # "pi":Lcom/android/exsettings/applications/RunningState$ProcessItem;
    goto :goto_3

    .line 417
    :cond_5
    if-gez v0, :cond_6

    move v2, v3

    :goto_5
    invoke-virtual {p0, v1, v2}, Lcom/android/exsettings/applications/RunningServiceDetails;->addProcessDetailsView(Lcom/android/exsettings/applications/RunningState$ProcessItem;Z)V

    goto :goto_4

    :cond_6
    move v2, v4

    goto :goto_5
.end method

.method addProcessDetailsView(Lcom/android/exsettings/applications/RunningState$ProcessItem;Z)V
    .locals 14
    .param p1, "pi"    # Lcom/android/exsettings/applications/RunningState$ProcessItem;
    .param p2, "isMain"    # Z

    .prologue
    .line 334
    invoke-virtual {p0}, Lcom/android/exsettings/applications/RunningServiceDetails;->addProcessesHeader()V

    .line 336
    new-instance v2, Lcom/android/exsettings/applications/RunningServiceDetails$ActiveDetail;

    invoke-direct {v2, p0}, Lcom/android/exsettings/applications/RunningServiceDetails$ActiveDetail;-><init>(Lcom/android/exsettings/applications/RunningServiceDetails;)V

    .line 337
    .local v2, "detail":Lcom/android/exsettings/applications/RunningServiceDetails$ActiveDetail;
    iget-object v10, p0, Lcom/android/exsettings/applications/RunningServiceDetails;->mInflater:Landroid/view/LayoutInflater;

    .line 338
    iget-object v11, p0, Lcom/android/exsettings/applications/RunningServiceDetails;->mAllDetails:Landroid/view/ViewGroup;

    .line 337
    const v12, 0x7f0400f7

    .line 338
    const/4 v13, 0x0

    .line 337
    invoke-virtual {v10, v12, v11, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    .line 339
    .local v6, "root":Landroid/view/View;
    iget-object v10, p0, Lcom/android/exsettings/applications/RunningServiceDetails;->mAllDetails:Landroid/view/ViewGroup;

    invoke-virtual {v10, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 340
    iput-object v6, v2, Lcom/android/exsettings/applications/RunningServiceDetails$ActiveDetail;->mRootView:Landroid/view/View;

    .line 341
    new-instance v10, Lcom/android/exsettings/applications/RunningProcessesView$ViewHolder;

    invoke-direct {v10, v6}, Lcom/android/exsettings/applications/RunningProcessesView$ViewHolder;-><init>(Landroid/view/View;)V

    iput-object v10, v2, Lcom/android/exsettings/applications/RunningServiceDetails$ActiveDetail;->mViewHolder:Lcom/android/exsettings/applications/RunningProcessesView$ViewHolder;

    .line 342
    iget-object v10, v2, Lcom/android/exsettings/applications/RunningServiceDetails$ActiveDetail;->mViewHolder:Lcom/android/exsettings/applications/RunningProcessesView$ViewHolder;

    iget-object v11, p0, Lcom/android/exsettings/applications/RunningServiceDetails;->mState:Lcom/android/exsettings/applications/RunningState;

    iget-object v12, p0, Lcom/android/exsettings/applications/RunningServiceDetails;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11, p1, v12}, Lcom/android/exsettings/applications/RunningProcessesView$ViewHolder;->bind(Lcom/android/exsettings/applications/RunningState;Lcom/android/exsettings/applications/RunningState$BaseItem;Ljava/lang/StringBuilder;)Lcom/android/exsettings/applications/RunningProcessesView$ActiveItem;

    move-result-object v10

    iput-object v10, v2, Lcom/android/exsettings/applications/RunningServiceDetails$ActiveDetail;->mActiveItem:Lcom/android/exsettings/applications/RunningProcessesView$ActiveItem;

    .line 344
    const v10, 0x7f13020a

    invoke-virtual {v6, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 345
    .local v1, "description":Landroid/widget/TextView;
    iget v10, p1, Lcom/android/exsettings/applications/RunningState$ProcessItem;->mUserId:I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v11

    if-eq v10, v11, :cond_1

    .line 348
    const/16 v10, 0x8

    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 389
    :cond_0
    :goto_0
    iget-object v10, p0, Lcom/android/exsettings/applications/RunningServiceDetails;->mActiveDetails:Ljava/util/ArrayList;

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 333
    return-void

    .line 349
    :cond_1
    if-eqz p2, :cond_2

    .line 350
    const v10, 0x7f0c0a35

    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 352
    :cond_2
    const/4 v9, 0x0

    .line 353
    .local v9, "textid":I
    const/4 v4, 0x0

    .line 354
    .local v4, "label":Ljava/lang/CharSequence;
    iget-object v7, p1, Lcom/android/exsettings/applications/RunningState$ProcessItem;->mRunningProcessInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 355
    .local v7, "rpi":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget-object v0, v7, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonComponent:Landroid/content/ComponentName;

    .line 358
    .local v0, "comp":Landroid/content/ComponentName;
    iget v10, v7, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonCode:I

    packed-switch v10, :pswitch_data_0

    .line 384
    .end local v4    # "label":Ljava/lang/CharSequence;
    :cond_3
    :goto_1
    if-eqz v9, :cond_0

    if-eqz v4, :cond_0

    .line 385
    invoke-virtual {p0}, Lcom/android/exsettings/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v10

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v4, v11, v12

    invoke-virtual {v10, v9, v11}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 360
    .restart local v4    # "label":Ljava/lang/CharSequence;
    :pswitch_0
    const v9, 0x7f0c0a37

    .line 361
    iget-object v10, v7, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonComponent:Landroid/content/ComponentName;

    if-eqz v10, :cond_3

    .line 363
    :try_start_0
    invoke-virtual {p0}, Lcom/android/exsettings/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    .line 364
    iget-object v11, v7, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonComponent:Landroid/content/ComponentName;

    const/4 v12, 0x0

    .line 363
    invoke-virtual {v10, v11, v12}, Landroid/content/pm/PackageManager;->getProviderInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ProviderInfo;

    move-result-object v5

    .line 365
    .local v5, "prov":Landroid/content/pm/ProviderInfo;
    invoke-virtual {p0}, Lcom/android/exsettings/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    .line 366
    iget-object v11, v5, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    .line 365
    invoke-static {v10, v11, v5}, Lcom/android/exsettings/applications/RunningState;->makeLabel(Landroid/content/pm/PackageManager;Ljava/lang/String;Landroid/content/pm/PackageItemInfo;)Ljava/lang/CharSequence;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    .local v4, "label":Ljava/lang/CharSequence;
    goto :goto_1

    .line 372
    .end local v5    # "prov":Landroid/content/pm/ProviderInfo;
    .local v4, "label":Ljava/lang/CharSequence;
    :pswitch_1
    const v9, 0x7f0c0a36

    .line 373
    iget-object v10, v7, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonComponent:Landroid/content/ComponentName;

    if-eqz v10, :cond_3

    .line 375
    :try_start_1
    invoke-virtual {p0}, Lcom/android/exsettings/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    .line 376
    iget-object v11, v7, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonComponent:Landroid/content/ComponentName;

    const/4 v12, 0x0

    .line 375
    invoke-virtual {v10, v11, v12}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v8

    .line 377
    .local v8, "serv":Landroid/content/pm/ServiceInfo;
    invoke-virtual {p0}, Lcom/android/exsettings/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    .line 378
    iget-object v11, v8, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 377
    invoke-static {v10, v11, v8}, Lcom/android/exsettings/applications/RunningState;->makeLabel(Landroid/content/pm/PackageManager;Ljava/lang/String;Landroid/content/pm/PackageItemInfo;)Ljava/lang/CharSequence;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v4

    .local v4, "label":Ljava/lang/CharSequence;
    goto :goto_1

    .line 379
    .end local v8    # "serv":Landroid/content/pm/ServiceInfo;
    .local v4, "label":Ljava/lang/CharSequence;
    :catch_0
    move-exception v3

    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_1

    .line 367
    .end local v3    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v3

    .restart local v3    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_1

    .line 358
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method addProcessesHeader()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 237
    iget v0, p0, Lcom/android/exsettings/applications/RunningServiceDetails;->mNumProcesses:I

    if-nez v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/android/exsettings/applications/RunningServiceDetails;->mInflater:Landroid/view/LayoutInflater;

    .line 239
    iget-object v1, p0, Lcom/android/exsettings/applications/RunningServiceDetails;->mAllDetails:Landroid/view/ViewGroup;

    .line 238
    const v2, 0x7f040101

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/exsettings/applications/RunningServiceDetails;->mProcessesHeader:Landroid/widget/TextView;

    .line 240
    iget-object v0, p0, Lcom/android/exsettings/applications/RunningServiceDetails;->mProcessesHeader:Landroid/widget/TextView;

    const v1, 0x7f0c0a2e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 241
    iget-object v0, p0, Lcom/android/exsettings/applications/RunningServiceDetails;->mAllDetails:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/exsettings/applications/RunningServiceDetails;->mProcessesHeader:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 243
    :cond_0
    iget v0, p0, Lcom/android/exsettings/applications/RunningServiceDetails;->mNumProcesses:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/exsettings/applications/RunningServiceDetails;->mNumProcesses:I

    .line 236
    return-void
.end method

.method addServiceDetailsView(Lcom/android/exsettings/applications/RunningState$ServiceItem;Lcom/android/exsettings/applications/RunningState$MergedItem;ZZ)V
    .locals 12
    .param p1, "si"    # Lcom/android/exsettings/applications/RunningState$ServiceItem;
    .param p2, "mi"    # Lcom/android/exsettings/applications/RunningState$MergedItem;
    .param p3, "isService"    # Z
    .param p4, "inclDetails"    # Z

    .prologue
    .line 248
    if-eqz p3, :cond_3

    .line 249
    invoke-virtual {p0}, Lcom/android/exsettings/applications/RunningServiceDetails;->addServicesHeader()V

    .line 258
    :cond_0
    :goto_0
    if-eqz p1, :cond_4

    move-object v0, p1

    .line 260
    .local v0, "bi":Lcom/android/exsettings/applications/RunningState$BaseItem;
    :goto_1
    new-instance v3, Lcom/android/exsettings/applications/RunningServiceDetails$ActiveDetail;

    invoke-direct {v3, p0}, Lcom/android/exsettings/applications/RunningServiceDetails$ActiveDetail;-><init>(Lcom/android/exsettings/applications/RunningServiceDetails;)V

    .line 261
    .local v3, "detail":Lcom/android/exsettings/applications/RunningServiceDetails$ActiveDetail;
    iget-object v8, p0, Lcom/android/exsettings/applications/RunningServiceDetails;->mInflater:Landroid/view/LayoutInflater;

    .line 262
    iget-object v9, p0, Lcom/android/exsettings/applications/RunningServiceDetails;->mAllDetails:Landroid/view/ViewGroup;

    .line 261
    const v10, 0x7f0400f8

    .line 262
    const/4 v11, 0x0

    .line 261
    invoke-virtual {v8, v10, v9, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    .line 263
    .local v7, "root":Landroid/view/View;
    iget-object v8, p0, Lcom/android/exsettings/applications/RunningServiceDetails;->mAllDetails:Landroid/view/ViewGroup;

    invoke-virtual {v8, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 264
    iput-object v7, v3, Lcom/android/exsettings/applications/RunningServiceDetails$ActiveDetail;->mRootView:Landroid/view/View;

    .line 265
    iput-object p1, v3, Lcom/android/exsettings/applications/RunningServiceDetails$ActiveDetail;->mServiceItem:Lcom/android/exsettings/applications/RunningState$ServiceItem;

    .line 266
    new-instance v8, Lcom/android/exsettings/applications/RunningProcessesView$ViewHolder;

    invoke-direct {v8, v7}, Lcom/android/exsettings/applications/RunningProcessesView$ViewHolder;-><init>(Landroid/view/View;)V

    iput-object v8, v3, Lcom/android/exsettings/applications/RunningServiceDetails$ActiveDetail;->mViewHolder:Lcom/android/exsettings/applications/RunningProcessesView$ViewHolder;

    .line 267
    iget-object v8, v3, Lcom/android/exsettings/applications/RunningServiceDetails$ActiveDetail;->mViewHolder:Lcom/android/exsettings/applications/RunningProcessesView$ViewHolder;

    iget-object v9, p0, Lcom/android/exsettings/applications/RunningServiceDetails;->mState:Lcom/android/exsettings/applications/RunningState;

    iget-object v10, p0, Lcom/android/exsettings/applications/RunningServiceDetails;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9, v0, v10}, Lcom/android/exsettings/applications/RunningProcessesView$ViewHolder;->bind(Lcom/android/exsettings/applications/RunningState;Lcom/android/exsettings/applications/RunningState$BaseItem;Ljava/lang/StringBuilder;)Lcom/android/exsettings/applications/RunningProcessesView$ActiveItem;

    move-result-object v8

    iput-object v8, v3, Lcom/android/exsettings/applications/RunningServiceDetails$ActiveDetail;->mActiveItem:Lcom/android/exsettings/applications/RunningProcessesView$ActiveItem;

    .line 269
    if-nez p4, :cond_1

    .line 270
    const v8, 0x7f130209

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 273
    :cond_1
    if-eqz p1, :cond_2

    iget-object v8, p1, Lcom/android/exsettings/applications/RunningState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    iget v8, v8, Landroid/app/ActivityManager$RunningServiceInfo;->clientLabel:I

    if-eqz v8, :cond_2

    .line 274
    iget-object v8, p0, Lcom/android/exsettings/applications/RunningServiceDetails;->mAm:Landroid/app/ActivityManager;

    .line 275
    iget-object v9, p1, Lcom/android/exsettings/applications/RunningState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    iget-object v9, v9, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    .line 274
    invoke-virtual {v8, v9}, Landroid/app/ActivityManager;->getRunningServiceControlPanel(Landroid/content/ComponentName;)Landroid/app/PendingIntent;

    move-result-object v8

    iput-object v8, v3, Lcom/android/exsettings/applications/RunningServiceDetails$ActiveDetail;->mManageIntent:Landroid/app/PendingIntent;

    .line 278
    :cond_2
    const v8, 0x7f13020a

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 279
    .local v2, "description":Landroid/widget/TextView;
    const v8, 0x7f13025f

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    iput-object v8, v3, Lcom/android/exsettings/applications/RunningServiceDetails$ActiveDetail;->mStopButton:Landroid/widget/Button;

    .line 280
    const v8, 0x7f130261

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    iput-object v8, v3, Lcom/android/exsettings/applications/RunningServiceDetails$ActiveDetail;->mReportButton:Landroid/widget/Button;

    .line 282
    if-eqz p3, :cond_5

    iget v8, p2, Lcom/android/exsettings/applications/RunningState$MergedItem;->mUserId:I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v9

    if-eq v8, v9, :cond_5

    .line 286
    const/16 v8, 0x8

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 287
    const v8, 0x7f13012e

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 330
    :goto_2
    iget-object v8, p0, Lcom/android/exsettings/applications/RunningServiceDetails;->mActiveDetails:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 247
    return-void

    .line 250
    .end local v0    # "bi":Lcom/android/exsettings/applications/RunningState$BaseItem;
    .end local v2    # "description":Landroid/widget/TextView;
    .end local v3    # "detail":Lcom/android/exsettings/applications/RunningServiceDetails$ActiveDetail;
    .end local v7    # "root":Landroid/view/View;
    :cond_3
    iget v8, p2, Lcom/android/exsettings/applications/RunningState$MergedItem;->mUserId:I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v9

    if-eq v8, v9, :cond_0

    .line 255
    invoke-virtual {p0}, Lcom/android/exsettings/applications/RunningServiceDetails;->addProcessesHeader()V

    goto/16 :goto_0

    .line 258
    :cond_4
    move-object v0, p2

    .restart local v0    # "bi":Lcom/android/exsettings/applications/RunningState$BaseItem;
    goto/16 :goto_1

    .line 289
    .restart local v2    # "description":Landroid/widget/TextView;
    .restart local v3    # "detail":Lcom/android/exsettings/applications/RunningServiceDetails$ActiveDetail;
    .restart local v7    # "root":Landroid/view/View;
    :cond_5
    if-eqz p1, :cond_6

    iget-object v8, p1, Lcom/android/exsettings/applications/RunningState$ServiceItem;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    iget v8, v8, Landroid/content/pm/ServiceInfo;->descriptionRes:I

    if-eqz v8, :cond_6

    .line 290
    invoke-virtual {p0}, Lcom/android/exsettings/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 291
    iget-object v9, p1, Lcom/android/exsettings/applications/RunningState$ServiceItem;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v9, v9, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v10, p1, Lcom/android/exsettings/applications/RunningState$ServiceItem;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    iget v10, v10, Landroid/content/pm/ServiceInfo;->descriptionRes:I

    .line 292
    iget-object v11, p1, Lcom/android/exsettings/applications/RunningState$ServiceItem;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v11, v11, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 290
    invoke-virtual {v8, v9, v10, v11}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 312
    :goto_3
    iget-object v8, v3, Lcom/android/exsettings/applications/RunningServiceDetails$ActiveDetail;->mStopButton:Landroid/widget/Button;

    invoke-virtual {v8, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 313
    iget-object v9, v3, Lcom/android/exsettings/applications/RunningServiceDetails$ActiveDetail;->mStopButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/exsettings/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v10

    iget-object v8, v3, Lcom/android/exsettings/applications/RunningServiceDetails$ActiveDetail;->mManageIntent:Landroid/app/PendingIntent;

    if-eqz v8, :cond_a

    .line 314
    const v8, 0x7f0c0a30

    .line 313
    :goto_4
    invoke-virtual {v10, v8}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v9, v8}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 315
    iget-object v8, v3, Lcom/android/exsettings/applications/RunningServiceDetails$ActiveDetail;->mReportButton:Landroid/widget/Button;

    invoke-virtual {v8, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 316
    iget-object v8, v3, Lcom/android/exsettings/applications/RunningServiceDetails$ActiveDetail;->mReportButton:Landroid/widget/Button;

    const v9, 0x10403e7

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setText(I)V

    .line 318
    invoke-virtual {p0}, Lcom/android/exsettings/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    .line 319
    const-string/jumbo v9, "send_action_app_error"

    const/4 v10, 0x0

    .line 318
    invoke-static {v8, v9, v10}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 320
    .local v5, "enabled":I
    if-eqz v5, :cond_c

    if-eqz p1, :cond_c

    .line 322
    invoke-virtual {p0}, Lcom/android/exsettings/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v8

    iget-object v9, p1, Lcom/android/exsettings/applications/RunningState$ServiceItem;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v9, v9, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 323
    iget-object v10, p1, Lcom/android/exsettings/applications/RunningState$ServiceItem;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v10, v10, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v10, v10, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 321
    invoke-static {v8, v9, v10}, Landroid/app/ApplicationErrorReport;->getErrorReportReceiver(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/ComponentName;

    move-result-object v8

    iput-object v8, v3, Lcom/android/exsettings/applications/RunningServiceDetails$ActiveDetail;->mInstaller:Landroid/content/ComponentName;

    .line 324
    iget-object v9, v3, Lcom/android/exsettings/applications/RunningServiceDetails$ActiveDetail;->mReportButton:Landroid/widget/Button;

    iget-object v8, v3, Lcom/android/exsettings/applications/RunningServiceDetails$ActiveDetail;->mInstaller:Landroid/content/ComponentName;

    if-eqz v8, :cond_b

    const/4 v8, 0x1

    :goto_5
    invoke-virtual {v9, v8}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_2

    .line 294
    .end local v5    # "enabled":I
    :cond_6
    iget-boolean v8, p2, Lcom/android/exsettings/applications/RunningState$MergedItem;->mBackground:Z

    if-eqz v8, :cond_7

    .line 295
    const v8, 0x7f0c0a33

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(I)V

    goto :goto_3

    .line 296
    :cond_7
    iget-object v8, v3, Lcom/android/exsettings/applications/RunningServiceDetails$ActiveDetail;->mManageIntent:Landroid/app/PendingIntent;

    if-eqz v8, :cond_8

    .line 298
    :try_start_0
    invoke-virtual {p0}, Lcom/android/exsettings/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 299
    iget-object v9, p1, Lcom/android/exsettings/applications/RunningState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    iget-object v9, v9, Landroid/app/ActivityManager$RunningServiceInfo;->clientPackage:Ljava/lang/String;

    .line 298
    invoke-virtual {v8, v9}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v1

    .line 300
    .local v1, "clientr":Landroid/content/res/Resources;
    iget-object v8, p1, Lcom/android/exsettings/applications/RunningState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    iget v8, v8, Landroid/app/ActivityManager$RunningServiceInfo;->clientLabel:I

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 301
    .local v6, "label":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/exsettings/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    .line 302
    const/4 v10, 0x0

    aput-object v6, v9, v10

    .line 301
    const v10, 0x7f0c0a34

    invoke-virtual {v8, v10, v9}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_3

    .line 303
    .end local v1    # "clientr":Landroid/content/res/Resources;
    .end local v6    # "label":Ljava/lang/String;
    :catch_0
    move-exception v4

    .local v4, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto/16 :goto_3

    .line 306
    .end local v4    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_8
    invoke-virtual {p0}, Lcom/android/exsettings/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v9

    if-eqz p1, :cond_9

    .line 307
    const v8, 0x7f0c0a31

    .line 306
    :goto_6
    invoke-virtual {v9, v8}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 308
    :cond_9
    const v8, 0x7f0c0a32

    goto :goto_6

    .line 314
    :cond_a
    const v8, 0x7f0c0a2f

    goto/16 :goto_4

    .line 324
    .restart local v5    # "enabled":I
    :cond_b
    const/4 v8, 0x0

    goto :goto_5

    .line 326
    :cond_c
    iget-object v8, v3, Lcom/android/exsettings/applications/RunningServiceDetails$ActiveDetail;->mReportButton:Landroid/widget/Button;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_2
.end method

.method addServicesHeader()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 227
    iget v0, p0, Lcom/android/exsettings/applications/RunningServiceDetails;->mNumServices:I

    if-nez v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/android/exsettings/applications/RunningServiceDetails;->mInflater:Landroid/view/LayoutInflater;

    .line 229
    iget-object v1, p0, Lcom/android/exsettings/applications/RunningServiceDetails;->mAllDetails:Landroid/view/ViewGroup;

    .line 228
    const v2, 0x7f040101

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/exsettings/applications/RunningServiceDetails;->mServicesHeader:Landroid/widget/TextView;

    .line 230
    iget-object v0, p0, Lcom/android/exsettings/applications/RunningServiceDetails;->mServicesHeader:Landroid/widget/TextView;

    const v1, 0x7f0c0a2d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 231
    iget-object v0, p0, Lcom/android/exsettings/applications/RunningServiceDetails;->mAllDetails:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/exsettings/applications/RunningServiceDetails;->mServicesHeader:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 233
    :cond_0
    iget v0, p0, Lcom/android/exsettings/applications/RunningServiceDetails;->mNumServices:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/exsettings/applications/RunningServiceDetails;->mNumServices:I

    .line 226
    return-void
.end method

.method ensureData()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 612
    iget-boolean v0, p0, Lcom/android/exsettings/applications/RunningServiceDetails;->mHaveData:Z

    if-nez v0, :cond_0

    .line 613
    iput-boolean v1, p0, Lcom/android/exsettings/applications/RunningServiceDetails;->mHaveData:Z

    .line 614
    iget-object v0, p0, Lcom/android/exsettings/applications/RunningServiceDetails;->mState:Lcom/android/exsettings/applications/RunningState;

    invoke-virtual {v0, p0}, Lcom/android/exsettings/applications/RunningState;->resume(Lcom/android/exsettings/applications/RunningState$OnRefreshUiListener;)V

    .line 619
    iget-object v0, p0, Lcom/android/exsettings/applications/RunningServiceDetails;->mState:Lcom/android/exsettings/applications/RunningState;

    invoke-virtual {v0}, Lcom/android/exsettings/applications/RunningState;->waitForData()V

    .line 623
    invoke-virtual {p0, v1}, Lcom/android/exsettings/applications/RunningServiceDetails;->refreshUi(Z)V

    .line 611
    :cond_0
    return-void
.end method

.method findMergedItem()Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 199
    const/4 v1, 0x0

    .line 200
    .local v1, "item":Lcom/android/exsettings/applications/RunningState$MergedItem;
    iget-boolean v4, p0, Lcom/android/exsettings/applications/RunningServiceDetails;->mShowBackground:Z

    if-eqz v4, :cond_1

    .line 201
    iget-object v4, p0, Lcom/android/exsettings/applications/RunningServiceDetails;->mState:Lcom/android/exsettings/applications/RunningState;

    invoke-virtual {v4}, Lcom/android/exsettings/applications/RunningState;->getCurrentBackgroundItems()Ljava/util/ArrayList;

    move-result-object v3

    .line 202
    .local v3, "newItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/exsettings/applications/RunningState$MergedItem;>;"
    :goto_0
    if-eqz v3, :cond_5

    .line 203
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_5

    .line 204
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/exsettings/applications/RunningState$MergedItem;

    .line 205
    .local v2, "mi":Lcom/android/exsettings/applications/RunningState$MergedItem;
    iget v4, v2, Lcom/android/exsettings/applications/RunningState$MergedItem;->mUserId:I

    iget v5, p0, Lcom/android/exsettings/applications/RunningServiceDetails;->mUserId:I

    if-eq v4, v5, :cond_2

    .line 203
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 201
    .end local v0    # "i":I
    .end local v2    # "mi":Lcom/android/exsettings/applications/RunningState$MergedItem;
    .end local v3    # "newItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/exsettings/applications/RunningState$MergedItem;>;"
    :cond_1
    iget-object v4, p0, Lcom/android/exsettings/applications/RunningServiceDetails;->mState:Lcom/android/exsettings/applications/RunningState;

    invoke-virtual {v4}, Lcom/android/exsettings/applications/RunningState;->getCurrentMergedItems()Ljava/util/ArrayList;

    move-result-object v3

    .restart local v3    # "newItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/exsettings/applications/RunningState$MergedItem;>;"
    goto :goto_0

    .line 208
    .restart local v0    # "i":I
    .restart local v2    # "mi":Lcom/android/exsettings/applications/RunningState$MergedItem;
    :cond_2
    iget v4, p0, Lcom/android/exsettings/applications/RunningServiceDetails;->mUid:I

    if-ltz v4, :cond_3

    iget-object v4, v2, Lcom/android/exsettings/applications/RunningState$MergedItem;->mProcess:Lcom/android/exsettings/applications/RunningState$ProcessItem;

    if-eqz v4, :cond_3

    iget-object v4, v2, Lcom/android/exsettings/applications/RunningState$MergedItem;->mProcess:Lcom/android/exsettings/applications/RunningState$ProcessItem;

    iget v4, v4, Lcom/android/exsettings/applications/RunningState$ProcessItem;->mUid:I

    iget v5, p0, Lcom/android/exsettings/applications/RunningServiceDetails;->mUid:I

    if-ne v4, v5, :cond_0

    .line 211
    :cond_3
    iget-object v4, p0, Lcom/android/exsettings/applications/RunningServiceDetails;->mProcessName:Ljava/lang/String;

    if-eqz v4, :cond_4

    iget-object v4, v2, Lcom/android/exsettings/applications/RunningState$MergedItem;->mProcess:Lcom/android/exsettings/applications/RunningState$ProcessItem;

    if-eqz v4, :cond_0

    .line 212
    iget-object v4, p0, Lcom/android/exsettings/applications/RunningServiceDetails;->mProcessName:Ljava/lang/String;

    iget-object v5, v2, Lcom/android/exsettings/applications/RunningState$MergedItem;->mProcess:Lcom/android/exsettings/applications/RunningState$ProcessItem;

    iget-object v5, v5, Lcom/android/exsettings/applications/RunningState$ProcessItem;->mProcessName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 211
    if-eqz v4, :cond_0

    .line 213
    :cond_4
    move-object v1, v2

    .line 219
    .end local v0    # "i":I
    .end local v1    # "item":Lcom/android/exsettings/applications/RunningState$MergedItem;
    .end local v2    # "mi":Lcom/android/exsettings/applications/RunningState$MergedItem;
    :cond_5
    iget-object v4, p0, Lcom/android/exsettings/applications/RunningServiceDetails;->mMergedItem:Lcom/android/exsettings/applications/RunningState$MergedItem;

    if-eq v4, v1, :cond_6

    .line 220
    iput-object v1, p0, Lcom/android/exsettings/applications/RunningServiceDetails;->mMergedItem:Lcom/android/exsettings/applications/RunningState$MergedItem;

    .line 221
    const/4 v4, 0x1

    return v4

    .line 223
    :cond_6
    return v6
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 539
    const/16 v0, 0x55

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 499
    invoke-super {p0, p1}, Lcom/android/exsettings/InstrumentedFragment;->onCreate(Landroid/os/Bundle;)V

    .line 501
    invoke-virtual {p0}, Lcom/android/exsettings/applications/RunningServiceDetails;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "uid"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/exsettings/applications/RunningServiceDetails;->mUid:I

    .line 502
    invoke-virtual {p0}, Lcom/android/exsettings/applications/RunningServiceDetails;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "user_id"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/exsettings/applications/RunningServiceDetails;->mUserId:I

    .line 503
    invoke-virtual {p0}, Lcom/android/exsettings/applications/RunningServiceDetails;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "process"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/applications/RunningServiceDetails;->mProcessName:Ljava/lang/String;

    .line 504
    invoke-virtual {p0}, Lcom/android/exsettings/applications/RunningServiceDetails;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "background"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/exsettings/applications/RunningServiceDetails;->mShowBackground:Z

    .line 506
    invoke-virtual {p0}, Lcom/android/exsettings/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "activity"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/android/exsettings/applications/RunningServiceDetails;->mAm:Landroid/app/ActivityManager;

    .line 507
    invoke-virtual {p0}, Lcom/android/exsettings/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/exsettings/applications/RunningServiceDetails;->mInflater:Landroid/view/LayoutInflater;

    .line 509
    invoke-virtual {p0}, Lcom/android/exsettings/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/exsettings/applications/RunningState;->getInstance(Landroid/content/Context;)Lcom/android/exsettings/applications/RunningState;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/applications/RunningServiceDetails;->mState:Lcom/android/exsettings/applications/RunningState;

    .line 498
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 515
    const v1, 0x7f0400f6

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 516
    .local v0, "view":Landroid/view/View;
    invoke-static {p2, v0, v0, v2}, Lcom/android/exsettings/Utils;->prepareCustomPreferencesList(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;Z)V

    .line 518
    iput-object v0, p0, Lcom/android/exsettings/applications/RunningServiceDetails;->mRootView:Landroid/view/View;

    .line 519
    const v1, 0x7f13001a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/exsettings/applications/RunningServiceDetails;->mAllDetails:Landroid/view/ViewGroup;

    .line 520
    const v1, 0x7f130208

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/exsettings/applications/RunningServiceDetails;->mSnippet:Landroid/view/ViewGroup;

    .line 521
    new-instance v1, Lcom/android/exsettings/applications/RunningProcessesView$ViewHolder;

    iget-object v2, p0, Lcom/android/exsettings/applications/RunningServiceDetails;->mSnippet:Landroid/view/ViewGroup;

    invoke-direct {v1, v2}, Lcom/android/exsettings/applications/RunningProcessesView$ViewHolder;-><init>(Landroid/view/View;)V

    iput-object v1, p0, Lcom/android/exsettings/applications/RunningServiceDetails;->mSnippetViewHolder:Lcom/android/exsettings/applications/RunningProcessesView$ViewHolder;

    .line 525
    invoke-virtual {p0}, Lcom/android/exsettings/applications/RunningServiceDetails;->ensureData()V

    .line 527
    return-object v0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 532
    invoke-super {p0}, Lcom/android/exsettings/InstrumentedFragment;->onPause()V

    .line 533
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/exsettings/applications/RunningServiceDetails;->mHaveData:Z

    .line 534
    iget-object v0, p0, Lcom/android/exsettings/applications/RunningServiceDetails;->mState:Lcom/android/exsettings/applications/RunningState;

    invoke-virtual {v0}, Lcom/android/exsettings/applications/RunningState;->pause()V

    .line 531
    return-void
.end method

.method public onRefreshUi(I)V
    .locals 1
    .param p1, "what"    # I

    .prologue
    .line 638
    invoke-virtual {p0}, Lcom/android/exsettings/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 639
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 637
    :goto_0
    return-void

    .line 641
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/exsettings/applications/RunningServiceDetails;->updateTimes()V

    goto :goto_0

    .line 644
    :pswitch_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/exsettings/applications/RunningServiceDetails;->refreshUi(Z)V

    .line 645
    invoke-virtual {p0}, Lcom/android/exsettings/applications/RunningServiceDetails;->updateTimes()V

    goto :goto_0

    .line 648
    :pswitch_2
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/exsettings/applications/RunningServiceDetails;->refreshUi(Z)V

    .line 649
    invoke-virtual {p0}, Lcom/android/exsettings/applications/RunningServiceDetails;->updateTimes()V

    goto :goto_0

    .line 639
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 544
    invoke-super {p0}, Lcom/android/exsettings/InstrumentedFragment;->onResume()V

    .line 545
    invoke-virtual {p0}, Lcom/android/exsettings/applications/RunningServiceDetails;->ensureData()V

    .line 543
    return-void
.end method

.method refreshUi(Z)V
    .locals 4
    .param p1, "dataChanged"    # Z

    .prologue
    .line 464
    invoke-virtual {p0}, Lcom/android/exsettings/applications/RunningServiceDetails;->findMergedItem()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 465
    const/4 p1, 0x1

    .line 467
    .end local p1    # "dataChanged":Z
    :cond_0
    if-eqz p1, :cond_1

    .line 468
    iget-object v0, p0, Lcom/android/exsettings/applications/RunningServiceDetails;->mMergedItem:Lcom/android/exsettings/applications/RunningState$MergedItem;

    if-eqz v0, :cond_2

    .line 469
    iget-object v0, p0, Lcom/android/exsettings/applications/RunningServiceDetails;->mSnippetViewHolder:Lcom/android/exsettings/applications/RunningProcessesView$ViewHolder;

    iget-object v1, p0, Lcom/android/exsettings/applications/RunningServiceDetails;->mState:Lcom/android/exsettings/applications/RunningState;

    .line 470
    iget-object v2, p0, Lcom/android/exsettings/applications/RunningServiceDetails;->mMergedItem:Lcom/android/exsettings/applications/RunningState$MergedItem;

    iget-object v3, p0, Lcom/android/exsettings/applications/RunningServiceDetails;->mBuilder:Ljava/lang/StringBuilder;

    .line 469
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/exsettings/applications/RunningProcessesView$ViewHolder;->bind(Lcom/android/exsettings/applications/RunningState;Lcom/android/exsettings/applications/RunningState$BaseItem;Ljava/lang/StringBuilder;)Lcom/android/exsettings/applications/RunningProcessesView$ActiveItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/applications/RunningServiceDetails;->mSnippetActiveItem:Lcom/android/exsettings/applications/RunningProcessesView$ActiveItem;

    .line 481
    :goto_0
    invoke-virtual {p0}, Lcom/android/exsettings/applications/RunningServiceDetails;->addDetailViews()V

    .line 463
    :cond_1
    return-void

    .line 471
    :cond_2
    iget-object v0, p0, Lcom/android/exsettings/applications/RunningServiceDetails;->mSnippetActiveItem:Lcom/android/exsettings/applications/RunningProcessesView$ActiveItem;

    if-eqz v0, :cond_3

    .line 473
    iget-object v0, p0, Lcom/android/exsettings/applications/RunningServiceDetails;->mSnippetActiveItem:Lcom/android/exsettings/applications/RunningProcessesView$ActiveItem;

    iget-object v0, v0, Lcom/android/exsettings/applications/RunningProcessesView$ActiveItem;->mHolder:Lcom/android/exsettings/applications/RunningProcessesView$ViewHolder;

    iget-object v0, v0, Lcom/android/exsettings/applications/RunningProcessesView$ViewHolder;->size:Landroid/widget/TextView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 474
    iget-object v0, p0, Lcom/android/exsettings/applications/RunningServiceDetails;->mSnippetActiveItem:Lcom/android/exsettings/applications/RunningProcessesView$ActiveItem;

    iget-object v0, v0, Lcom/android/exsettings/applications/RunningProcessesView$ActiveItem;->mHolder:Lcom/android/exsettings/applications/RunningProcessesView$ViewHolder;

    iget-object v0, v0, Lcom/android/exsettings/applications/RunningProcessesView$ViewHolder;->uptime:Landroid/widget/TextView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 475
    iget-object v0, p0, Lcom/android/exsettings/applications/RunningServiceDetails;->mSnippetActiveItem:Lcom/android/exsettings/applications/RunningProcessesView$ActiveItem;

    iget-object v0, v0, Lcom/android/exsettings/applications/RunningProcessesView$ActiveItem;->mHolder:Lcom/android/exsettings/applications/RunningProcessesView$ViewHolder;

    iget-object v0, v0, Lcom/android/exsettings/applications/RunningProcessesView$ViewHolder;->description:Landroid/widget/TextView;

    const v1, 0x7f0c0a2c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 478
    :cond_3
    invoke-direct {p0}, Lcom/android/exsettings/applications/RunningServiceDetails;->finish()V

    .line 479
    return-void
.end method

.method updateTimes()V
    .locals 4

    .prologue
    .line 628
    iget-object v1, p0, Lcom/android/exsettings/applications/RunningServiceDetails;->mSnippetActiveItem:Lcom/android/exsettings/applications/RunningProcessesView$ActiveItem;

    if-eqz v1, :cond_0

    .line 629
    iget-object v1, p0, Lcom/android/exsettings/applications/RunningServiceDetails;->mSnippetActiveItem:Lcom/android/exsettings/applications/RunningProcessesView$ActiveItem;

    invoke-virtual {p0}, Lcom/android/exsettings/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/exsettings/applications/RunningServiceDetails;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2, v3}, Lcom/android/exsettings/applications/RunningProcessesView$ActiveItem;->updateTime(Landroid/content/Context;Ljava/lang/StringBuilder;)V

    .line 631
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/exsettings/applications/RunningServiceDetails;->mActiveDetails:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 632
    iget-object v1, p0, Lcom/android/exsettings/applications/RunningServiceDetails;->mActiveDetails:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/exsettings/applications/RunningServiceDetails$ActiveDetail;

    iget-object v1, v1, Lcom/android/exsettings/applications/RunningServiceDetails$ActiveDetail;->mActiveItem:Lcom/android/exsettings/applications/RunningProcessesView$ActiveItem;

    invoke-virtual {p0}, Lcom/android/exsettings/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/exsettings/applications/RunningServiceDetails;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2, v3}, Lcom/android/exsettings/applications/RunningProcessesView$ActiveItem;->updateTime(Landroid/content/Context;Ljava/lang/StringBuilder;)V

    .line 631
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 627
    :cond_1
    return-void
.end method
