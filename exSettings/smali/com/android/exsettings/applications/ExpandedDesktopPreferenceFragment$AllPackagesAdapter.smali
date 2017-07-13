.class Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment$AllPackagesAdapter;
.super Landroid/widget/BaseAdapter;
.source "ExpandedDesktopPreferenceFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;
.implements Landroid/widget/SectionIndexer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AllPackagesAdapter"
.end annotation


# instance fields
.field private entries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final inflater:Landroid/view/LayoutInflater;

.field private final mModesAdapter:Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment$ModeAdapter;

.field private mPositions:[I

.field private mSections:[Ljava/lang/String;

.field final synthetic this$0:Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment;


# direct methods
.method static synthetic -get0(Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment$AllPackagesAdapter;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment$AllPackagesAdapter;->entries:Ljava/util/List;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment$AllPackagesAdapter;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .param p1, "entries"    # Ljava/util/List;
    .param p2, "sections"    # Ljava/util/List;
    .param p3, "positions"    # Ljava/util/List;

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment$AllPackagesAdapter;->setEntries(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment;Landroid/content/Context;)V
    .locals 3
    .param p1, "this$0"    # Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 379
    iput-object p1, p0, Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment$AllPackagesAdapter;->this$0:Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 374
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment$AllPackagesAdapter;->entries:Ljava/util/List;

    .line 380
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment$AllPackagesAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 381
    new-instance v0, Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment$ModeAdapter;

    invoke-direct {v0, p2, v2}, Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment$ModeAdapter;-><init>(Landroid/content/Context;Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment$ModeAdapter;)V

    iput-object v0, p0, Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment$AllPackagesAdapter;->mModesAdapter:Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment$ModeAdapter;

    .line 382
    new-instance v0, Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment$ActivityFilter;

    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-direct {v0, p1, v1, v2}, Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment$ActivityFilter;-><init>(Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment;Landroid/content/pm/PackageManager;Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment$ActivityFilter;)V

    invoke-static {p1, v0}, Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment;->-set0(Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment;Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment$ActivityFilter;)Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment$ActivityFilter;

    .line 379
    return-void
.end method

.method private setEntries(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 434
    .local p1, "entries":Ljava/util/List;, "Ljava/util/List<Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;>;"
    .local p2, "sections":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p3, "positions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iput-object p1, p0, Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment$AllPackagesAdapter;->entries:Ljava/util/List;

    .line 435
    iget-object v1, p0, Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment$AllPackagesAdapter;->this$0:Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment;

    invoke-static {v1}, Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment;->-get3(Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment;)Landroid/widget/ListView;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment$AllPackagesAdapter;->this$0:Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment;

    invoke-static {v1}, Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment;->-get3(Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getEmptyView()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment$AllPackagesAdapter;->this$0:Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment;

    invoke-static {v2}, Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment;->-get2(Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment;)Landroid/view/View;

    move-result-object v2

    if-eq v1, v2, :cond_0

    .line 436
    iget-object v1, p0, Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment$AllPackagesAdapter;->this$0:Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment;

    invoke-static {v1}, Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment;->-get3(Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment;)Landroid/widget/ListView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment$AllPackagesAdapter;->this$0:Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment;

    invoke-static {v2}, Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment;->-get2(Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 439
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {p2, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment$AllPackagesAdapter;->mSections:[Ljava/lang/String;

    .line 440
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment$AllPackagesAdapter;->mPositions:[I

    .line 441
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 442
    iget-object v2, p0, Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment$AllPackagesAdapter;->mPositions:[I

    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aput v1, v2, v0

    .line 441
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 444
    :cond_1
    invoke-virtual {p0}, Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment$AllPackagesAdapter;->notifyDataSetChanged()V

    .line 433
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 387
    iget-object v0, p0, Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment$AllPackagesAdapter;->entries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 392
    iget-object v0, p0, Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment$AllPackagesAdapter;->entries:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 402
    iget-object v0, p0, Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment$AllPackagesAdapter;->entries:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;

    iget-wide v0, v0, Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;->id:J

    return-wide v0
.end method

.method public getPositionForSection(I)I
    .locals 1
    .param p1, "section"    # I

    .prologue
    .line 475
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment$AllPackagesAdapter;->mSections:[Ljava/lang/String;

    array-length v0, v0

    if-lt p1, v0, :cond_1

    .line 476
    :cond_0
    const/4 v0, -0x1

    return v0

    .line 479
    :cond_1
    iget-object v0, p0, Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment$AllPackagesAdapter;->mPositions:[I

    aget v0, v0, p1

    return v0
.end method

.method public getSectionForPosition(I)I
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 484
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment$AllPackagesAdapter;->getCount()I

    move-result v1

    if-lt p1, v1, :cond_1

    .line 485
    :cond_0
    const/4 v1, -0x1

    return v1

    .line 488
    :cond_1
    iget-object v1, p0, Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment$AllPackagesAdapter;->mPositions:[I

    invoke-static {v1, p1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v0

    .line 498
    .local v0, "index":I
    if-ltz v0, :cond_2

    .end local v0    # "index":I
    :goto_0
    return v0

    .restart local v0    # "index":I
    :cond_2
    neg-int v1, v0

    add-int/lit8 v0, v1, -0x2

    goto :goto_0
.end method

.method public getSections()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 503
    iget-object v0, p0, Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment$AllPackagesAdapter;->mSections:[Ljava/lang/String;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 408
    if-nez p2, :cond_0

    .line 409
    new-instance v1, Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment$ViewHolder;

    iget-object v2, p0, Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment$AllPackagesAdapter;->inflater:Landroid/view/LayoutInflater;

    const v3, 0x7f04006f

    invoke-virtual {v2, v3, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    invoke-direct {v1, v2, v4}, Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment$ViewHolder;-><init>(Landroid/view/View;Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment$ViewHolder;)V

    .line 410
    .local v1, "holder":Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment$ViewHolder;
    invoke-static {v1}, Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment$ViewHolder;->-get1(Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment$ViewHolder;)Landroid/widget/Spinner;

    move-result-object v2

    iget-object v3, p0, Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment$AllPackagesAdapter;->mModesAdapter:Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment$ModeAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 411
    invoke-static {v1}, Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment$ViewHolder;->-get1(Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment$ViewHolder;)Landroid/widget/Spinner;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 416
    :goto_0
    iget-object v2, p0, Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment$AllPackagesAdapter;->entries:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;

    .line 418
    .local v0, "entry":Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;
    if-nez v0, :cond_1

    .line 419
    invoke-static {v1}, Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment$ViewHolder;->-get2(Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment$ViewHolder;)Landroid/view/View;

    move-result-object v2

    return-object v2

    .line 413
    .end local v0    # "entry":Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;
    .end local v1    # "holder":Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment$ViewHolder;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment$ViewHolder;

    .restart local v1    # "holder":Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment$ViewHolder;
    goto :goto_0

    .line 422
    .restart local v0    # "entry":Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;
    :cond_1
    invoke-static {v1}, Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment$ViewHolder;->-get4(Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment$ViewHolder;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, v0, Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;->label:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 423
    iget-object v2, p0, Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment$AllPackagesAdapter;->this$0:Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment;

    invoke-static {v2}, Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment;->-get1(Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment;)Lcom/android/exsettingslib/applications/ApplicationsState;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/exsettingslib/applications/ApplicationsState;->ensureIcon(Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;)V

    .line 424
    invoke-static {v1}, Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment$ViewHolder;->-get0(Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v2

    iget-object v3, v0, Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 425
    invoke-static {v1}, Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment$ViewHolder;->-get1(Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment$ViewHolder;)Landroid/widget/Spinner;

    move-result-object v2

    iget-object v3, v0, Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment;->-wrap0(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3, v5}, Landroid/widget/Spinner;->setSelection(IZ)V

    .line 426
    invoke-static {v1}, Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment$ViewHolder;->-get1(Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment$ViewHolder;)Landroid/widget/Spinner;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/Spinner;->setTag(Ljava/lang/Object;)V

    .line 427
    invoke-static {v1}, Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment$ViewHolder;->-get3(Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v2

    iget-object v3, p0, Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment$AllPackagesAdapter;->this$0:Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment;

    .line 428
    iget-object v4, v0, Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment;->-wrap0(Ljava/lang/String;)I

    move-result v4

    .line 427
    invoke-virtual {v3, v4}, Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment;->getStateDrawable(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 429
    invoke-static {v1}, Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment$ViewHolder;->-get2(Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment$ViewHolder;)Landroid/view/View;

    move-result-object v2

    return-object v2
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 397
    const/4 v0, 0x1

    return v0
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
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
    .line 450
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;

    .line 452
    .local v0, "entry":Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;
    iget-object v1, v0, Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v1}, Landroid/view/WindowManagerPolicyControl;->removeFromWhiteLists(Ljava/lang/String;)V

    .line 453
    packed-switch p3, :pswitch_data_0

    .line 465
    :goto_0
    iget-object v1, p0, Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment$AllPackagesAdapter;->this$0:Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment;

    invoke-static {v1}, Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment;->-wrap1(Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment;)V

    .line 466
    invoke-virtual {p0}, Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment$AllPackagesAdapter;->notifyDataSetChanged()V

    .line 449
    return-void

    .line 455
    :pswitch_0
    iget-object v1, v0, Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v1}, Landroid/view/WindowManagerPolicyControl;->addToStatusWhiteList(Ljava/lang/String;)V

    goto :goto_0

    .line 458
    :pswitch_1
    iget-object v1, v0, Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v1}, Landroid/view/WindowManagerPolicyControl;->addToNavigationWhiteList(Ljava/lang/String;)V

    goto :goto_0

    .line 461
    :pswitch_2
    iget-object v1, v0, Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v1}, Landroid/view/WindowManagerPolicyControl;->addToStatusWhiteList(Ljava/lang/String;)V

    .line 462
    iget-object v1, v0, Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v1}, Landroid/view/WindowManagerPolicyControl;->addToNavigationWhiteList(Ljava/lang/String;)V

    goto :goto_0

    .line 453
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
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
    .line 470
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method
