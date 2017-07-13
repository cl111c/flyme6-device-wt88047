.class public Lcom/android/exsettings/nx/dslv/ActionListViewSettings;
.super Landroid/app/ListFragment;
.source "ActionListViewSettings.java"

# interfaces
.implements Lcom/android/exsettings/nx/util/ShortcutPickerHelper$OnPickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exsettings/nx/dslv/ActionListViewSettings$ViewHolder;,
        Lcom/android/exsettings/nx/dslv/ActionListViewSettings$ActionConfigsAdapter;,
        Lcom/android/exsettings/nx/dslv/ActionListViewSettings$MyAlertDialogFragment;,
        Lcom/android/exsettings/nx/dslv/ActionListViewSettings$1;,
        Lcom/android/exsettings/nx/dslv/ActionListViewSettings$2;
    }
.end annotation


# instance fields
.field private mActionConfigs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/util/nx/ActionConfig;",
            ">;"
        }
    .end annotation
.end field

.field private mActionConfigsAdapter:Lcom/android/exsettings/nx/dslv/ActionListViewSettings$ActionConfigsAdapter;

.field private mActionDialogEntries:[Ljava/lang/String;

.field private mActionDialogValues:[Ljava/lang/String;

.field private mActionEntriesKey:Ljava/lang/String;

.field private mActionMode:I

.field private mActionValuesKey:Ljava/lang/String;

.field private mActivity:Landroid/app/Activity;

.field private mAdditionalFragment:Ljava/lang/String;

.field private mAdditionalFragmentAttached:Z

.field private mDisableDeleteLastEntry:Z

.field private mDisableIconPicker:Z

.field private mDisableLongpress:Z

.field private mDisableMessage:Landroid/widget/TextView;

.field private mDivider:Landroid/view/View;

.field private mImageTmp:Ljava/io/File;

.field private mMaxAllowedActions:I

.field private mPendingIndex:I

.field private mPendingLongpress:Z

.field private mPendingNewAction:Z

.field private mPicker:Lcom/android/exsettings/nx/util/ShortcutPickerHelper;

.field private mUseAppPickerOnly:Z

.field private mUseFullAppsOnly:Z

.field private onDrop:Lcom/android/exsettings/nx/dslv/DragSortListView$DropListener;

.field private onRemove:Lcom/android/exsettings/nx/dslv/DragSortListView$RemoveListener;


# direct methods
.method static synthetic -get0(Lcom/android/exsettings/nx/dslv/ActionListViewSettings;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/nx/dslv/ActionListViewSettings;->mActionConfigs:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/exsettings/nx/dslv/ActionListViewSettings;)Lcom/android/exsettings/nx/dslv/ActionListViewSettings$ActionConfigsAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/nx/dslv/ActionListViewSettings;->mActionConfigsAdapter:Lcom/android/exsettings/nx/dslv/ActionListViewSettings$ActionConfigsAdapter;

    return-object v0
.end method

.method static synthetic -get10(Lcom/android/exsettings/nx/dslv/ActionListViewSettings;)I
    .locals 1

    iget v0, p0, Lcom/android/exsettings/nx/dslv/ActionListViewSettings;->mPendingIndex:I

    return v0
.end method

.method static synthetic -get11(Lcom/android/exsettings/nx/dslv/ActionListViewSettings;)Lcom/android/exsettings/nx/util/ShortcutPickerHelper;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/nx/dslv/ActionListViewSettings;->mPicker:Lcom/android/exsettings/nx/util/ShortcutPickerHelper;

    return-object v0
.end method

.method static synthetic -get12(Lcom/android/exsettings/nx/dslv/ActionListViewSettings;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/exsettings/nx/dslv/ActionListViewSettings;->mUseAppPickerOnly:Z

    return v0
.end method

.method static synthetic -get13(Lcom/android/exsettings/nx/dslv/ActionListViewSettings;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/exsettings/nx/dslv/ActionListViewSettings;->mUseFullAppsOnly:Z

    return v0
.end method

.method static synthetic -get2(Lcom/android/exsettings/nx/dslv/ActionListViewSettings;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/nx/dslv/ActionListViewSettings;->mActionDialogEntries:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/exsettings/nx/dslv/ActionListViewSettings;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/nx/dslv/ActionListViewSettings;->mActionDialogValues:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/exsettings/nx/dslv/ActionListViewSettings;)I
    .locals 1

    iget v0, p0, Lcom/android/exsettings/nx/dslv/ActionListViewSettings;->mActionMode:I

    return v0
.end method

.method static synthetic -get5(Lcom/android/exsettings/nx/dslv/ActionListViewSettings;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/nx/dslv/ActionListViewSettings;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/exsettings/nx/dslv/ActionListViewSettings;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/exsettings/nx/dslv/ActionListViewSettings;->mDisableDeleteLastEntry:Z

    return v0
.end method

.method static synthetic -get7(Lcom/android/exsettings/nx/dslv/ActionListViewSettings;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/exsettings/nx/dslv/ActionListViewSettings;->mDisableIconPicker:Z

    return v0
.end method

.method static synthetic -get8(Lcom/android/exsettings/nx/dslv/ActionListViewSettings;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/exsettings/nx/dslv/ActionListViewSettings;->mDisableLongpress:Z

    return v0
.end method

.method static synthetic -get9(Lcom/android/exsettings/nx/dslv/ActionListViewSettings;)Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/nx/dslv/ActionListViewSettings;->mImageTmp:Ljava/io/File;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/exsettings/nx/dslv/ActionListViewSettings;I)I
    .locals 0

    iput p1, p0, Lcom/android/exsettings/nx/dslv/ActionListViewSettings;->mPendingIndex:I

    return p1
.end method

.method static synthetic -set1(Lcom/android/exsettings/nx/dslv/ActionListViewSettings;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/exsettings/nx/dslv/ActionListViewSettings;->mPendingLongpress:Z

    return p1
.end method

.method static synthetic -set2(Lcom/android/exsettings/nx/dslv/ActionListViewSettings;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/exsettings/nx/dslv/ActionListViewSettings;->mPendingNewAction:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/exsettings/nx/dslv/ActionListViewSettings;)Ljava/util/ArrayList;
    .locals 1

    invoke-direct {p0}, Lcom/android/exsettings/nx/dslv/ActionListViewSettings;->getConfig()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/exsettings/nx/dslv/ActionListViewSettings;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "description"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/exsettings/nx/dslv/ActionListViewSettings;->addNewAction(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/exsettings/nx/dslv/ActionListViewSettings;Lcom/android/internal/util/nx/ActionConfig;Z)V
    .locals 0
    .param p1, "action"    # Lcom/android/internal/util/nx/ActionConfig;
    .param p2, "deleteShortCutIcon"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/exsettings/nx/dslv/ActionListViewSettings;->deleteIconFileIfPresent(Lcom/android/internal/util/nx/ActionConfig;Z)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/exsettings/nx/dslv/ActionListViewSettings;Ljava/util/ArrayList;Z)V
    .locals 0
    .param p1, "actionConfigs"    # Ljava/util/ArrayList;
    .param p2, "reset"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/exsettings/nx/dslv/ActionListViewSettings;->setConfig(Ljava/util/ArrayList;Z)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/exsettings/nx/dslv/ActionListViewSettings;IIZZ)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "which"    # I
    .param p3, "longpress"    # Z
    .param p4, "newAction"    # Z

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/exsettings/nx/dslv/ActionListViewSettings;->showDialogInner(IIZZ)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/exsettings/nx/dslv/ActionListViewSettings;Z)V
    .locals 0
    .param p1, "show"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/exsettings/nx/dslv/ActionListViewSettings;->showDisableMessage(Z)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/exsettings/nx/dslv/ActionListViewSettings;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 0
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "description"    # Ljava/lang/String;
    .param p3, "icon"    # Ljava/lang/String;
    .param p4, "which"    # I
    .param p5, "longpress"    # Z

    .prologue
    invoke-direct/range {p0 .. p5}, Lcom/android/exsettings/nx/dslv/ActionListViewSettings;->updateAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 75
    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    .line 119
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/exsettings/nx/dslv/ActionListViewSettings;->mPendingIndex:I

    .line 134
    new-instance v0, Lcom/android/exsettings/nx/dslv/ActionListViewSettings$1;

    invoke-direct {v0, p0}, Lcom/android/exsettings/nx/dslv/ActionListViewSettings$1;-><init>(Lcom/android/exsettings/nx/dslv/ActionListViewSettings;)V

    .line 133
    iput-object v0, p0, Lcom/android/exsettings/nx/dslv/ActionListViewSettings;->onDrop:Lcom/android/exsettings/nx/dslv/DragSortListView$DropListener;

    .line 147
    new-instance v0, Lcom/android/exsettings/nx/dslv/ActionListViewSettings$2;

    invoke-direct {v0, p0}, Lcom/android/exsettings/nx/dslv/ActionListViewSettings$2;-><init>(Lcom/android/exsettings/nx/dslv/ActionListViewSettings;)V

    .line 146
    iput-object v0, p0, Lcom/android/exsettings/nx/dslv/ActionListViewSettings;->onRemove:Lcom/android/exsettings/nx/dslv/DragSortListView$RemoveListener;

    .line 75
    return-void
.end method

.method private addNewAction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "description"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 505
    invoke-direct {p0, p1}, Lcom/android/exsettings/nx/dslv/ActionListViewSettings;->checkForDuplicateMainNavActions(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 506
    return-void

    .line 508
    :cond_0
    new-instance v0, Lcom/android/internal/util/nx/ActionConfig;

    .line 510
    const-string/jumbo v3, "**null**"

    invoke-virtual {p0}, Lcom/android/exsettings/nx/dslv/ActionListViewSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0402

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 511
    const-string/jumbo v5, "empty"

    move-object v1, p1

    move-object v2, p2

    .line 508
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/util/nx/ActionConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    .local v0, "actionConfig":Lcom/android/internal/util/nx/ActionConfig;
    iget-object v1, p0, Lcom/android/exsettings/nx/dslv/ActionListViewSettings;->mActionConfigsAdapter:Lcom/android/exsettings/nx/dslv/ActionListViewSettings$ActionConfigsAdapter;

    invoke-virtual {v1, v0}, Lcom/android/exsettings/nx/dslv/ActionListViewSettings$ActionConfigsAdapter;->add(Ljava/lang/Object;)V

    .line 514
    invoke-direct {p0, v6}, Lcom/android/exsettings/nx/dslv/ActionListViewSettings;->showDisableMessage(Z)V

    .line 515
    iget-object v1, p0, Lcom/android/exsettings/nx/dslv/ActionListViewSettings;->mActionConfigs:Ljava/util/ArrayList;

    invoke-direct {p0, v1, v6}, Lcom/android/exsettings/nx/dslv/ActionListViewSettings;->setConfig(Ljava/util/ArrayList;Z)V

    .line 504
    return-void
.end method

.method private checkForDuplicateMainNavActions(Ljava/lang/String;)Z
    .locals 6
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    .line 420
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/exsettings/nx/dslv/ActionListViewSettings;->mActionConfigs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 421
    iget-object v2, p0, Lcom/android/exsettings/nx/dslv/ActionListViewSettings;->mActionConfigsAdapter:Lcom/android/exsettings/nx/dslv/ActionListViewSettings$ActionConfigsAdapter;

    invoke-virtual {v2, v1}, Lcom/android/exsettings/nx/dslv/ActionListViewSettings$ActionConfigsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/nx/ActionConfig;

    .line 422
    .local v0, "actionConfig":Lcom/android/internal/util/nx/ActionConfig;
    invoke-virtual {v0}, Lcom/android/internal/util/nx/ActionConfig;->getClickAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 423
    iget-object v2, p0, Lcom/android/exsettings/nx/dslv/ActionListViewSettings;->mActivity:Landroid/app/Activity;

    .line 424
    invoke-virtual {p0}, Lcom/android/exsettings/nx/dslv/ActionListViewSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0420

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 423
    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 426
    return v5

    .line 420
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 429
    .end local v0    # "actionConfig":Lcom/android/internal/util/nx/ActionConfig;
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method private deleteIconFileIfPresent(Lcom/android/internal/util/nx/ActionConfig;Z)V
    .locals 4
    .param p1, "action"    # Lcom/android/internal/util/nx/ActionConfig;
    .param p2, "deleteShortCutIcon"    # Z

    .prologue
    .line 433
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Lcom/android/internal/util/nx/ActionConfig;->getIcon()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 434
    .local v0, "oldImage":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 435
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 437
    :cond_0
    new-instance v0, Ljava/io/File;

    .end local v0    # "oldImage":Ljava/io/File;
    invoke-virtual {p1}, Lcom/android/internal/util/nx/ActionConfig;->getClickAction()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, ".*?hasExtraIcon="

    const-string/jumbo v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 438
    .restart local v0    # "oldImage":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p2, :cond_1

    .line 439
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 432
    :cond_1
    return-void
.end method

.method private getConfig()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/util/nx/ActionConfig;",
            ">;"
        }
    .end annotation

    .prologue
    .line 519
    iget v0, p0, Lcom/android/exsettings/nx/dslv/ActionListViewSettings;->mActionMode:I

    packed-switch v0, :pswitch_data_0

    .line 542
    const/4 v0, 0x0

    return-object v0

    .line 521
    :pswitch_0
    iget-object v0, p0, Lcom/android/exsettings/nx/dslv/ActionListViewSettings;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/android/internal/util/nx/ActionHelper;->getLockscreenShortcutConfig(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0

    .line 519
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method private loadAdditionalFragment()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 302
    iget-object v3, p0, Lcom/android/exsettings/nx/dslv/ActionListViewSettings;->mAdditionalFragment:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/exsettings/nx/dslv/ActionListViewSettings;->mAdditionalFragment:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 301
    :cond_0
    :goto_0
    return-void

    .line 304
    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/android/exsettings/nx/dslv/ActionListViewSettings;->mAdditionalFragment:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 305
    .local v0, "classAdditionalFragment":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Fragment;

    .line 306
    .local v2, "fragment":Landroid/app/Fragment;
    invoke-virtual {p0}, Lcom/android/exsettings/nx/dslv/ActionListViewSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v3

    .line 307
    const v4, 0x7f130013

    .line 306
    invoke-virtual {v3, v4, v2}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentTransaction;->commit()I

    .line 308
    iget-object v3, p0, Lcom/android/exsettings/nx/dslv/ActionListViewSettings;->mDivider:Landroid/view/View;

    if-eqz v3, :cond_2

    .line 309
    iget-object v3, p0, Lcom/android/exsettings/nx/dslv/ActionListViewSettings;->mDivider:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 311
    :cond_2
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/exsettings/nx/dslv/ActionListViewSettings;->mAdditionalFragmentAttached:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 312
    .end local v0    # "classAdditionalFragment":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "fragment":Landroid/app/Fragment;
    :catch_0
    move-exception v1

    .line 313
    .local v1, "e":Ljava/lang/Exception;
    iput-boolean v5, p0, Lcom/android/exsettings/nx/dslv/ActionListViewSettings;->mAdditionalFragmentAttached:Z

    .line 314
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private setConfig(Ljava/util/ArrayList;Z)V
    .locals 1
    .param p2, "reset"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/util/nx/ActionConfig;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 546
    .local p1, "actionConfigs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/util/nx/ActionConfig;>;"
    iget v0, p0, Lcom/android/exsettings/nx/dslv/ActionListViewSettings;->mActionMode:I

    packed-switch v0, :pswitch_data_0

    .line 545
    :goto_0
    return-void

    .line 548
    :pswitch_0
    iget-object v0, p0, Lcom/android/exsettings/nx/dslv/ActionListViewSettings;->mActivity:Landroid/app/Activity;

    invoke-static {v0, p1, p2}, Lcom/android/internal/util/nx/ActionHelper;->setLockscreenShortcutConfig(Landroid/content/Context;Ljava/util/ArrayList;Z)V

    goto :goto_0

    .line 546
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method private showDialogInner(IIZZ)V
    .locals 4
    .param p1, "id"    # I
    .param p2, "which"    # I
    .param p3, "longpress"    # Z
    .param p4, "newAction"    # Z

    .prologue
    .line 650
    invoke-static {p1, p2, p3, p4}, Lcom/android/exsettings/nx/dslv/ActionListViewSettings$MyAlertDialogFragment;->newInstance(IIZZ)Lcom/android/exsettings/nx/dslv/ActionListViewSettings$MyAlertDialogFragment;

    move-result-object v0

    .line 651
    .local v0, "newFragment":Landroid/app/DialogFragment;
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/app/DialogFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 652
    invoke-virtual {p0}, Lcom/android/exsettings/nx/dslv/ActionListViewSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "dialog "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 648
    return-void
.end method

.method private showDisableMessage(Z)V
    .locals 2
    .param p1, "show"    # Z

    .prologue
    .line 444
    iget-object v0, p0, Lcom/android/exsettings/nx/dslv/ActionListViewSettings;->mDisableMessage:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/exsettings/nx/dslv/ActionListViewSettings;->mDisableDeleteLastEntry:Z

    if-eqz v0, :cond_1

    .line 445
    :cond_0
    return-void

    .line 447
    :cond_1
    if-eqz p1, :cond_2

    .line 448
    iget-object v0, p0, Lcom/android/exsettings/nx/dslv/ActionListViewSettings;->mDisableMessage:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 443
    :goto_0
    return-void

    .line 450
    :cond_2
    iget-object v0, p0, Lcom/android/exsettings/nx/dslv/ActionListViewSettings;->mDisableMessage:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 3
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "description"    # Ljava/lang/String;
    .param p3, "icon"    # Ljava/lang/String;
    .param p4, "which"    # I
    .param p5, "longpress"    # Z

    .prologue
    const/4 v2, 0x0

    .line 388
    if-nez p5, :cond_0

    invoke-direct {p0, p1}, Lcom/android/exsettings/nx/dslv/ActionListViewSettings;->checkForDuplicateMainNavActions(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 389
    return-void

    .line 392
    :cond_0
    iget-object v1, p0, Lcom/android/exsettings/nx/dslv/ActionListViewSettings;->mActionConfigsAdapter:Lcom/android/exsettings/nx/dslv/ActionListViewSettings$ActionConfigsAdapter;

    invoke-virtual {v1, p4}, Lcom/android/exsettings/nx/dslv/ActionListViewSettings$ActionConfigsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/nx/ActionConfig;

    .line 393
    .local v0, "actionConfig":Lcom/android/internal/util/nx/ActionConfig;
    iget-object v1, p0, Lcom/android/exsettings/nx/dslv/ActionListViewSettings;->mActionConfigsAdapter:Lcom/android/exsettings/nx/dslv/ActionListViewSettings$ActionConfigsAdapter;

    invoke-virtual {v1, v0}, Lcom/android/exsettings/nx/dslv/ActionListViewSettings$ActionConfigsAdapter;->remove(Ljava/lang/Object;)V

    .line 395
    if-nez p5, :cond_1

    .line 396
    invoke-direct {p0, v0, v2}, Lcom/android/exsettings/nx/dslv/ActionListViewSettings;->deleteIconFileIfPresent(Lcom/android/internal/util/nx/ActionConfig;Z)V

    .line 399
    :cond_1
    if-eqz p3, :cond_2

    .line 400
    invoke-virtual {v0, p3}, Lcom/android/internal/util/nx/ActionConfig;->setIcon(Ljava/lang/String;)V

    .line 413
    :goto_0
    iget-object v1, p0, Lcom/android/exsettings/nx/dslv/ActionListViewSettings;->mActionConfigsAdapter:Lcom/android/exsettings/nx/dslv/ActionListViewSettings$ActionConfigsAdapter;

    invoke-virtual {v1, v0, p4}, Lcom/android/exsettings/nx/dslv/ActionListViewSettings$ActionConfigsAdapter;->insert(Ljava/lang/Object;I)V

    .line 414
    invoke-direct {p0, v2}, Lcom/android/exsettings/nx/dslv/ActionListViewSettings;->showDisableMessage(Z)V

    .line 415
    iget-object v1, p0, Lcom/android/exsettings/nx/dslv/ActionListViewSettings;->mActionConfigs:Ljava/util/ArrayList;

    invoke-direct {p0, v1, v2}, Lcom/android/exsettings/nx/dslv/ActionListViewSettings;->setConfig(Ljava/util/ArrayList;Z)V

    .line 386
    return-void

    .line 402
    :cond_2
    if-eqz p5, :cond_3

    .line 403
    invoke-virtual {v0, p1}, Lcom/android/internal/util/nx/ActionConfig;->setLongpressAction(Ljava/lang/String;)V

    .line 404
    invoke-virtual {v0, p2}, Lcom/android/internal/util/nx/ActionConfig;->setLongpressActionDescription(Ljava/lang/String;)V

    goto :goto_0

    .line 406
    :cond_3
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/exsettings/nx/dslv/ActionListViewSettings;->deleteIconFileIfPresent(Lcom/android/internal/util/nx/ActionConfig;Z)V

    .line 407
    invoke-virtual {v0, p1}, Lcom/android/internal/util/nx/ActionConfig;->setClickAction(Ljava/lang/String;)V

    .line 408
    invoke-virtual {v0, p2}, Lcom/android/internal/util/nx/ActionConfig;->setClickActionDescription(Ljava/lang/String;)V

    .line 409
    const-string/jumbo v1, "empty"

    invoke-virtual {v0, v1}, Lcom/android/internal/util/nx/ActionConfig;->setIcon(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 12
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v7, -0x1

    .line 352
    if-ne p2, v7, :cond_4

    .line 353
    const/16 v0, 0x64

    if-eq p1, v0, :cond_0

    .line 354
    const/16 v0, 0x65

    if-ne p1, v0, :cond_2

    .line 356
    :cond_0
    iget-object v0, p0, Lcom/android/exsettings/nx/dslv/ActionListViewSettings;->mPicker:Lcom/android/exsettings/nx/util/ShortcutPickerHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/exsettings/nx/util/ShortcutPickerHelper;->onActivityResult(IILandroid/content/Intent;)V

    .line 382
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/ListFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 351
    return-void

    .line 355
    :cond_2
    const/16 v0, 0x66

    if-eq p1, v0, :cond_0

    .line 358
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_1

    iget v0, p0, Lcom/android/exsettings/nx/dslv/ActionListViewSettings;->mPendingIndex:I

    if-eq v0, v7, :cond_1

    .line 359
    iget-object v0, p0, Lcom/android/exsettings/nx/dslv/ActionListViewSettings;->mImageTmp:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v0, v8, v10

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/exsettings/nx/dslv/ActionListViewSettings;->mImageTmp:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 366
    new-instance v6, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/exsettings/nx/dslv/ActionListViewSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 367
    const-string/jumbo v2, "shortcut_"

    .line 366
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 367
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 366
    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 367
    const-string/jumbo v2, ".png"

    .line 366
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 368
    .local v6, "image":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 369
    .local v3, "path":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/exsettings/nx/dslv/ActionListViewSettings;->mImageTmp:Ljava/io/File;

    invoke-virtual {v0, v6}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 370
    invoke-virtual {v6, v4, v5}, Ljava/io/File;->setReadable(ZZ)Z

    .line 371
    iget v4, p0, Lcom/android/exsettings/nx/dslv/ActionListViewSettings;->mPendingIndex:I

    move-object v0, p0

    move-object v2, v1

    invoke-direct/range {v0 .. v5}, Lcom/android/exsettings/nx/dslv/ActionListViewSettings;->updateAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 372
    iput v7, p0, Lcom/android/exsettings/nx/dslv/ActionListViewSettings;->mPendingIndex:I

    goto :goto_0

    .line 360
    .end local v3    # "path":Ljava/lang/String;
    .end local v6    # "image":Ljava/io/File;
    :cond_3
    iput v7, p0, Lcom/android/exsettings/nx/dslv/ActionListViewSettings;->mPendingIndex:I

    .line 361
    iget-object v0, p0, Lcom/android/exsettings/nx/dslv/ActionListViewSettings;->mActivity:Landroid/app/Activity;

    .line 362
    invoke-virtual {p0}, Lcom/android/exsettings/nx/dslv/ActionListViewSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c041f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 361
    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 364
    return-void

    .line 375
    :cond_4
    iget-object v0, p0, Lcom/android/exsettings/nx/dslv/ActionListViewSettings;->mImageTmp:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 376
    iget-object v0, p0, Lcom/android/exsettings/nx/dslv/ActionListViewSettings;->mImageTmp:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 378
    :cond_5
    iput-boolean v5, p0, Lcom/android/exsettings/nx/dslv/ActionListViewSettings;->mPendingLongpress:Z

    .line 379
    iput-boolean v5, p0, Lcom/android/exsettings/nx/dslv/ActionListViewSettings;->mPendingNewAction:Z

    .line 380
    iput v7, p0, Lcom/android/exsettings/nx/dslv/ActionListViewSettings;->mPendingIndex:I

    goto/16 :goto_0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 174
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onAttach(Landroid/app/Activity;)V

    .line 175
    iput-object p1, p0, Lcom/android/exsettings/nx/dslv/ActionListViewSettings;->mActivity:Landroid/app/Activity;

    .line 173
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 494
    const/4 v0, 0x1

    const v1, 0x7f0c03fb

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 496
    const/4 v0, 0x3

    const v1, 0x7f0c0418

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 498
    const v0, 0x7f0c0419

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 499
    const v1, 0x7f020087

    .line 498
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 493
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 169
    const v0, 0x7f040005

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroyView()V
    .locals 3

    .prologue
    .line 291
    invoke-super {p0}, Landroid/app/ListFragment;->onDestroyView()V

    .line 292
    iget-boolean v2, p0, Lcom/android/exsettings/nx/dslv/ActionListViewSettings;->mAdditionalFragmentAttached:Z

    if-eqz v2, :cond_0

    .line 293
    invoke-virtual {p0}, Lcom/android/exsettings/nx/dslv/ActionListViewSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 294
    .local v1, "fragmentManager":Landroid/app/FragmentManager;
    const v2, 0x7f130013

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    .line 295
    .local v0, "fragment":Landroid/app/Fragment;
    if-eqz v0, :cond_0

    invoke-virtual {v1}, Landroid/app/FragmentManager;->isDestroyed()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 290
    .end local v0    # "fragment":Landroid/app/Fragment;
    .end local v1    # "fragmentManager":Landroid/app/FragmentManager;
    :cond_0
    :goto_0
    return-void

    .line 296
    .restart local v0    # "fragment":Landroid/app/Fragment;
    .restart local v1    # "fragmentManager":Landroid/app/FragmentManager;
    :cond_1
    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commit()I

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 456
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 489
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 458
    :pswitch_0
    iget-object v0, p0, Lcom/android/exsettings/nx/dslv/ActionListViewSettings;->mActionConfigs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lcom/android/exsettings/nx/dslv/ActionListViewSettings;->mMaxAllowedActions:I

    if-ne v0, v1, :cond_1

    .line 459
    iget-object v0, p0, Lcom/android/exsettings/nx/dslv/ActionListViewSettings;->mActivity:Landroid/app/Activity;

    .line 460
    invoke-virtual {p0}, Lcom/android/exsettings/nx/dslv/ActionListViewSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c041b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 459
    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 464
    :cond_1
    iget-boolean v0, p0, Lcom/android/exsettings/nx/dslv/ActionListViewSettings;->mUseFullAppsOnly:Z

    if-eqz v0, :cond_2

    .line 465
    iget-object v0, p0, Lcom/android/exsettings/nx/dslv/ActionListViewSettings;->mPicker:Lcom/android/exsettings/nx/util/ShortcutPickerHelper;

    if-eqz v0, :cond_0

    .line 466
    iput v2, p0, Lcom/android/exsettings/nx/dslv/ActionListViewSettings;->mPendingIndex:I

    .line 467
    iput-boolean v2, p0, Lcom/android/exsettings/nx/dslv/ActionListViewSettings;->mPendingLongpress:Z

    .line 468
    iput-boolean v3, p0, Lcom/android/exsettings/nx/dslv/ActionListViewSettings;->mPendingNewAction:Z

    .line 469
    iget-object v0, p0, Lcom/android/exsettings/nx/dslv/ActionListViewSettings;->mPicker:Lcom/android/exsettings/nx/util/ShortcutPickerHelper;

    invoke-virtual {p0}, Lcom/android/exsettings/nx/dslv/ActionListViewSettings;->getId()I

    move-result v1

    invoke-virtual {v0, v1, v3}, Lcom/android/exsettings/nx/util/ShortcutPickerHelper;->pickShortcut(IZ)V

    goto :goto_0

    .line 471
    :cond_2
    iget-boolean v0, p0, Lcom/android/exsettings/nx/dslv/ActionListViewSettings;->mUseAppPickerOnly:Z

    if-nez v0, :cond_3

    .line 472
    invoke-direct {p0, v2, v2, v2, v3}, Lcom/android/exsettings/nx/dslv/ActionListViewSettings;->showDialogInner(IIZZ)V

    goto :goto_0

    .line 474
    :cond_3
    iget-object v0, p0, Lcom/android/exsettings/nx/dslv/ActionListViewSettings;->mPicker:Lcom/android/exsettings/nx/util/ShortcutPickerHelper;

    if-eqz v0, :cond_0

    .line 475
    iput v2, p0, Lcom/android/exsettings/nx/dslv/ActionListViewSettings;->mPendingIndex:I

    .line 476
    iput-boolean v2, p0, Lcom/android/exsettings/nx/dslv/ActionListViewSettings;->mPendingLongpress:Z

    .line 477
    iput-boolean v3, p0, Lcom/android/exsettings/nx/dslv/ActionListViewSettings;->mPendingNewAction:Z

    .line 478
    iget-object v0, p0, Lcom/android/exsettings/nx/dslv/ActionListViewSettings;->mPicker:Lcom/android/exsettings/nx/util/ShortcutPickerHelper;

    invoke-virtual {p0}, Lcom/android/exsettings/nx/dslv/ActionListViewSettings;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/exsettings/nx/util/ShortcutPickerHelper;->pickShortcut(I)V

    goto :goto_0

    .line 483
    :pswitch_1
    const/4 v0, 0x4

    invoke-direct {p0, v0, v2, v2, v3}, Lcom/android/exsettings/nx/dslv/ActionListViewSettings;->showDialogInner(IIZZ)V

    goto :goto_0

    .line 486
    :pswitch_2
    const/4 v0, 0x3

    invoke-direct {p0, v0, v2, v2, v3}, Lcom/android/exsettings/nx/dslv/ActionListViewSettings;->showDialogInner(IIZZ)V

    goto :goto_0

    .line 456
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 11
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v9, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 180
    invoke-super {p0, p1, p2}, Landroid/app/ListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 181
    invoke-virtual {p0}, Lcom/android/exsettings/nx/dslv/ActionListViewSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 183
    .local v3, "res":Landroid/content/res/Resources;
    invoke-virtual {p0}, Lcom/android/exsettings/nx/dslv/ActionListViewSettings;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v7, "actionMode"

    invoke-virtual {v4, v7, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/exsettings/nx/dslv/ActionListViewSettings;->mActionMode:I

    .line 184
    invoke-virtual {p0}, Lcom/android/exsettings/nx/dslv/ActionListViewSettings;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v7, "maxAllowedActions"

    const/4 v8, 0x5

    invoke-virtual {v4, v7, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/exsettings/nx/dslv/ActionListViewSettings;->mMaxAllowedActions:I

    .line 185
    invoke-virtual {p0}, Lcom/android/exsettings/nx/dslv/ActionListViewSettings;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v7, "fragment"

    invoke-virtual {v4, v7, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/exsettings/nx/dslv/ActionListViewSettings;->mAdditionalFragment:Ljava/lang/String;

    .line 186
    invoke-virtual {p0}, Lcom/android/exsettings/nx/dslv/ActionListViewSettings;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v7, "actionValues"

    const-string/jumbo v8, "shortcut_action_values"

    invoke-virtual {v4, v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/exsettings/nx/dslv/ActionListViewSettings;->mActionValuesKey:Ljava/lang/String;

    .line 187
    invoke-virtual {p0}, Lcom/android/exsettings/nx/dslv/ActionListViewSettings;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v7, "actionEntries"

    const-string/jumbo v8, "shortcut_action_entries"

    invoke-virtual {v4, v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/exsettings/nx/dslv/ActionListViewSettings;->mActionEntriesKey:Ljava/lang/String;

    .line 188
    invoke-virtual {p0}, Lcom/android/exsettings/nx/dslv/ActionListViewSettings;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v7, "disableLongpress"

    invoke-virtual {v4, v7, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/exsettings/nx/dslv/ActionListViewSettings;->mDisableLongpress:Z

    .line 189
    invoke-virtual {p0}, Lcom/android/exsettings/nx/dslv/ActionListViewSettings;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v7, "useAppPickerOnly"

    invoke-virtual {v4, v7, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/exsettings/nx/dslv/ActionListViewSettings;->mUseAppPickerOnly:Z

    .line 190
    invoke-virtual {p0}, Lcom/android/exsettings/nx/dslv/ActionListViewSettings;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v7, "useOnlyFullAppPicker"

    invoke-virtual {v4, v7, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/exsettings/nx/dslv/ActionListViewSettings;->mUseFullAppsOnly:Z

    .line 191
    invoke-virtual {p0}, Lcom/android/exsettings/nx/dslv/ActionListViewSettings;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v7, "disableIconPicker"

    invoke-virtual {v4, v7, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/exsettings/nx/dslv/ActionListViewSettings;->mDisableIconPicker:Z

    .line 192
    invoke-virtual {p0}, Lcom/android/exsettings/nx/dslv/ActionListViewSettings;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v7, "disableDeleteLastEntry"

    invoke-virtual {v4, v7, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/exsettings/nx/dslv/ActionListViewSettings;->mDisableDeleteLastEntry:Z

    .line 194
    const v4, 0x7f130015

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/exsettings/nx/dslv/ActionListViewSettings;->mDisableMessage:Landroid/widget/TextView;

    .line 196
    new-instance v0, Lcom/android/internal/util/nx/DeviceUtils$FilteredDeviceFeaturesArray;

    invoke-direct {v0}, Lcom/android/internal/util/nx/DeviceUtils$FilteredDeviceFeaturesArray;-><init>()V

    .line 197
    .local v0, "finalActionDialogArray":Lcom/android/internal/util/nx/DeviceUtils$FilteredDeviceFeaturesArray;
    iget-object v4, p0, Lcom/android/exsettings/nx/dslv/ActionListViewSettings;->mActivity:Landroid/app/Activity;

    .line 199
    iget-object v7, p0, Lcom/android/exsettings/nx/dslv/ActionListViewSettings;->mActionValuesKey:Ljava/lang/String;

    const-string/jumbo v8, "array"

    const-string/jumbo v9, "com.android.settings"

    .line 198
    invoke-virtual {v3, v7, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    .line 201
    iget-object v8, p0, Lcom/android/exsettings/nx/dslv/ActionListViewSettings;->mActionEntriesKey:Ljava/lang/String;

    const-string/jumbo v9, "array"

    const-string/jumbo v10, "com.android.settings"

    .line 200
    invoke-virtual {v3, v8, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v8

    .line 197
    invoke-static {v4, v7, v8}, Lcom/android/internal/util/nx/DeviceUtils;->filterUnsupportedDeviceFeatures(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;)Lcom/android/internal/util/nx/DeviceUtils$FilteredDeviceFeaturesArray;

    move-result-object v0

    .line 202
    iget-object v4, v0, Lcom/android/internal/util/nx/DeviceUtils$FilteredDeviceFeaturesArray;->values:[Ljava/lang/String;

    iput-object v4, p0, Lcom/android/exsettings/nx/dslv/ActionListViewSettings;->mActionDialogValues:[Ljava/lang/String;

    .line 203
    iget-object v4, v0, Lcom/android/internal/util/nx/DeviceUtils$FilteredDeviceFeaturesArray;->entries:[Ljava/lang/String;

    iput-object v4, p0, Lcom/android/exsettings/nx/dslv/ActionListViewSettings;->mActionDialogEntries:[Ljava/lang/String;

    .line 205
    new-instance v4, Lcom/android/exsettings/nx/util/ShortcutPickerHelper;

    iget-object v7, p0, Lcom/android/exsettings/nx/dslv/ActionListViewSettings;->mActivity:Landroid/app/Activity;

    invoke-direct {v4, v7, p0}, Lcom/android/exsettings/nx/util/ShortcutPickerHelper;-><init>(Landroid/app/Activity;Lcom/android/exsettings/nx/util/ShortcutPickerHelper$OnPickListener;)V

    iput-object v4, p0, Lcom/android/exsettings/nx/dslv/ActionListViewSettings;->mPicker:Lcom/android/exsettings/nx/util/ShortcutPickerHelper;

    .line 207
    new-instance v4, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/android/exsettings/nx/dslv/ActionListViewSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v8}, Landroid/app/Activity;->getCacheDir()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 208
    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    .line 207
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 208
    const-string/jumbo v8, "shortcut.tmp"

    .line 207
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/android/exsettings/nx/dslv/ActionListViewSettings;->mImageTmp:Ljava/io/File;

    .line 210
    invoke-virtual {p0}, Lcom/android/exsettings/nx/dslv/ActionListViewSettings;->getListView()Landroid/widget/ListView;

    move-result-object v1

    check-cast v1, Lcom/android/exsettings/nx/dslv/DragSortListView;

    .line 212
    .local v1, "listView":Lcom/android/exsettings/nx/dslv/DragSortListView;
    iget-object v4, p0, Lcom/android/exsettings/nx/dslv/ActionListViewSettings;->onDrop:Lcom/android/exsettings/nx/dslv/DragSortListView$DropListener;

    invoke-virtual {v1, v4}, Lcom/android/exsettings/nx/dslv/DragSortListView;->setDropListener(Lcom/android/exsettings/nx/dslv/DragSortListView$DropListener;)V

    .line 213
    iget-object v4, p0, Lcom/android/exsettings/nx/dslv/ActionListViewSettings;->onRemove:Lcom/android/exsettings/nx/dslv/DragSortListView$RemoveListener;

    invoke-virtual {v1, v4}, Lcom/android/exsettings/nx/dslv/DragSortListView;->setRemoveListener(Lcom/android/exsettings/nx/dslv/DragSortListView$RemoveListener;)V

    .line 215
    new-instance v4, Lcom/android/exsettings/nx/dslv/ActionListViewSettings$3;

    invoke-direct {v4, p0}, Lcom/android/exsettings/nx/dslv/ActionListViewSettings$3;-><init>(Lcom/android/exsettings/nx/dslv/ActionListViewSettings;)V

    invoke-virtual {v1, v4}, Lcom/android/exsettings/nx/dslv/DragSortListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 239
    iget-boolean v4, p0, Lcom/android/exsettings/nx/dslv/ActionListViewSettings;->mDisableLongpress:Z

    if-nez v4, :cond_0

    .line 240
    new-instance v4, Lcom/android/exsettings/nx/dslv/ActionListViewSettings$4;

    invoke-direct {v4, p0}, Lcom/android/exsettings/nx/dslv/ActionListViewSettings$4;-><init>(Lcom/android/exsettings/nx/dslv/ActionListViewSettings;)V

    invoke-virtual {v1, v4}, Lcom/android/exsettings/nx/dslv/DragSortListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 266
    :cond_0
    invoke-direct {p0}, Lcom/android/exsettings/nx/dslv/ActionListViewSettings;->getConfig()Ljava/util/ArrayList;

    move-result-object v4

    iput-object v4, p0, Lcom/android/exsettings/nx/dslv/ActionListViewSettings;->mActionConfigs:Ljava/util/ArrayList;

    .line 268
    iget-object v4, p0, Lcom/android/exsettings/nx/dslv/ActionListViewSettings;->mActionConfigs:Ljava/util/ArrayList;

    if-eqz v4, :cond_1

    .line 269
    new-instance v4, Lcom/android/exsettings/nx/dslv/ActionListViewSettings$ActionConfigsAdapter;

    iget-object v7, p0, Lcom/android/exsettings/nx/dslv/ActionListViewSettings;->mActivity:Landroid/app/Activity;

    iget-object v8, p0, Lcom/android/exsettings/nx/dslv/ActionListViewSettings;->mActionConfigs:Ljava/util/ArrayList;

    invoke-direct {v4, p0, v7, v8}, Lcom/android/exsettings/nx/dslv/ActionListViewSettings$ActionConfigsAdapter;-><init>(Lcom/android/exsettings/nx/dslv/ActionListViewSettings;Landroid/content/Context;Ljava/util/List;)V

    iput-object v4, p0, Lcom/android/exsettings/nx/dslv/ActionListViewSettings;->mActionConfigsAdapter:Lcom/android/exsettings/nx/dslv/ActionListViewSettings$ActionConfigsAdapter;

    .line 270
    iget-object v4, p0, Lcom/android/exsettings/nx/dslv/ActionListViewSettings;->mActionConfigsAdapter:Lcom/android/exsettings/nx/dslv/ActionListViewSettings$ActionConfigsAdapter;

    invoke-virtual {p0, v4}, Lcom/android/exsettings/nx/dslv/ActionListViewSettings;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 271
    iget-object v4, p0, Lcom/android/exsettings/nx/dslv/ActionListViewSettings;->mActionConfigs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_3

    move v4, v5

    :goto_0
    invoke-direct {p0, v4}, Lcom/android/exsettings/nx/dslv/ActionListViewSettings;->showDisableMessage(Z)V

    .line 274
    :cond_1
    const v4, 0x7f130014

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/exsettings/nx/dslv/ActionListViewSettings;->mDivider:Landroid/view/View;

    .line 275
    invoke-direct {p0}, Lcom/android/exsettings/nx/dslv/ActionListViewSettings;->loadAdditionalFragment()V

    .line 279
    iget-object v4, p0, Lcom/android/exsettings/nx/dslv/ActionListViewSettings;->mActivity:Landroid/app/Activity;

    const-string/jumbo v7, "dslv_settings"

    invoke-virtual {v4, v7, v6}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 280
    .local v2, "preferences":Landroid/content/SharedPreferences;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "first_help_shown_mode_"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v7, p0, Lcom/android/exsettings/nx/dslv/ActionListViewSettings;->mActionMode:I

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_2

    .line 281
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 282
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "first_help_shown_mode_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/exsettings/nx/dslv/ActionListViewSettings;->mActionMode:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 281
    invoke-interface {v4, v7, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 283
    const/4 v4, 0x3

    invoke-direct {p0, v4, v6, v6, v6}, Lcom/android/exsettings/nx/dslv/ActionListViewSettings;->showDialogInner(IIZZ)V

    .line 286
    :cond_2
    invoke-virtual {p0, v5}, Lcom/android/exsettings/nx/dslv/ActionListViewSettings;->setHasOptionsMenu(Z)V

    .line 179
    return-void

    .end local v2    # "preferences":Landroid/content/SharedPreferences;
    :cond_3
    move v4, v6

    .line 271
    goto :goto_0
.end method

.method public shortcutPicked(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Z)V
    .locals 10
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "description"    # Ljava/lang/String;
    .param p3, "bmp"    # Landroid/graphics/Bitmap;
    .param p4, "isApplication"    # Z

    .prologue
    .line 322
    iget v0, p0, Lcom/android/exsettings/nx/dslv/ActionListViewSettings;->mPendingIndex:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 323
    return-void

    .line 325
    :cond_0
    if-eqz p3, :cond_1

    iget-boolean v0, p0, Lcom/android/exsettings/nx/dslv/ActionListViewSettings;->mPendingLongpress:Z

    if-eqz v0, :cond_2

    .line 341
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/android/exsettings/nx/dslv/ActionListViewSettings;->mPendingNewAction:Z

    if-eqz v0, :cond_3

    .line 342
    invoke-direct {p0, p1, p2}, Lcom/android/exsettings/nx/dslv/ActionListViewSettings;->addNewAction(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    :goto_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/exsettings/nx/dslv/ActionListViewSettings;->mPendingLongpress:Z

    .line 347
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/exsettings/nx/dslv/ActionListViewSettings;->mPendingNewAction:Z

    .line 348
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/exsettings/nx/dslv/ActionListViewSettings;->mPendingIndex:I

    .line 321
    return-void

    .line 327
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/exsettings/nx/dslv/ActionListViewSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 328
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    .line 327
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 328
    const-string/jumbo v1, "shortcut_"

    .line 327
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 328
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 327
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 328
    const-string/jumbo v1, ".png"

    .line 327
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 330
    .local v7, "fileName":Ljava/lang/String;
    :try_start_0
    new-instance v9, Ljava/io/FileOutputStream;

    invoke-direct {v9, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 331
    .local v9, "out":Ljava/io/FileOutputStream;
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v1, 0x64

    invoke-virtual {p3, v0, v1, v9}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 332
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 336
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "?hasExtraIcon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 337
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 338
    .local v8, "image":Ljava/io/File;
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {v8, v0, v1}, Ljava/io/File;->setReadable(ZZ)Z

    goto :goto_0

    .line 333
    .end local v8    # "image":Ljava/io/File;
    .end local v9    # "out":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v6

    .line 334
    .local v6, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 336
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "?hasExtraIcon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 337
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 338
    .restart local v8    # "image":Ljava/io/File;
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {v8, v0, v1}, Ljava/io/File;->setReadable(ZZ)Z

    goto/16 :goto_0

    .line 335
    .end local v6    # "e":Ljava/lang/Exception;
    .end local v8    # "image":Ljava/io/File;
    :catchall_0
    move-exception v0

    .line 336
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "?hasExtraIcon="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 337
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 338
    .restart local v8    # "image":Ljava/io/File;
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v8, v1, v2}, Ljava/io/File;->setReadable(ZZ)Z

    .line 335
    throw v0

    .line 344
    .end local v7    # "fileName":Ljava/lang/String;
    .end local v8    # "image":Ljava/io/File;
    :cond_3
    iget v4, p0, Lcom/android/exsettings/nx/dslv/ActionListViewSettings;->mPendingIndex:I

    iget-boolean v5, p0, Lcom/android/exsettings/nx/dslv/ActionListViewSettings;->mPendingLongpress:Z

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/exsettings/nx/dslv/ActionListViewSettings;->updateAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    goto/16 :goto_1
.end method
