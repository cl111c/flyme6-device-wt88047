.class Lcom/android/exsettings/applications/AppOpsSummary$MyPagerAdapter;
.super Landroid/support/v13/app/FragmentPagerAdapter;
.source "AppOpsSummary.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/applications/AppOpsSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MyPagerAdapter"
.end annotation


# instance fields
.field private mCurPos:I

.field private mPageData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/CharSequence;",
            "Lcom/android/exsettings/applications/AppOpsState$OpsTemplate;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/FragmentManager;Ljava/util/List;)V
    .locals 0
    .param p1, "fm"    # Landroid/app/FragmentManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/FragmentManager;",
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/CharSequence;",
            "Lcom/android/exsettings/applications/AppOpsState$OpsTemplate;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 78
    .local p2, "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/CharSequence;Lcom/android/exsettings/applications/AppOpsState$OpsTemplate;>;>;"
    invoke-direct {p0, p1}, Landroid/support/v13/app/FragmentPagerAdapter;-><init>(Landroid/app/FragmentManager;)V

    .line 79
    iput-object p2, p0, Lcom/android/exsettings/applications/AppOpsSummary$MyPagerAdapter;->mPageData:Ljava/util/List;

    .line 77
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/exsettings/applications/AppOpsSummary$MyPagerAdapter;->mPageData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getCurrentPage()I
    .locals 1

    .prologue
    .line 107
    iget v0, p0, Lcom/android/exsettings/applications/AppOpsSummary$MyPagerAdapter;->mCurPos:I

    return v0
.end method

.method public getItem(I)Landroid/app/Fragment;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 84
    new-instance v1, Lcom/android/exsettings/applications/AppOpsCategory;

    iget-object v0, p0, Lcom/android/exsettings/applications/AppOpsSummary$MyPagerAdapter;->mPageData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/android/exsettings/applications/AppOpsState$OpsTemplate;

    invoke-direct {v1, v0}, Lcom/android/exsettings/applications/AppOpsCategory;-><init>(Lcom/android/exsettings/applications/AppOpsState$OpsTemplate;)V

    return-object v1
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/exsettings/applications/AppOpsSummary$MyPagerAdapter;->mPageData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    return-object v0
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 112
    if-nez p1, :cond_0

    .line 111
    :cond_0
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 98
    return-void
.end method

.method public onPageSelected(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 103
    iput p1, p0, Lcom/android/exsettings/applications/AppOpsSummary$MyPagerAdapter;->mCurPos:I

    .line 102
    return-void
.end method
