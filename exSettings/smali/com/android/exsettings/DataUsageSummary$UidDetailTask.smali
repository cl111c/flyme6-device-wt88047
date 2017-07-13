.class Lcom/android/exsettings/DataUsageSummary$UidDetailTask;
.super Landroid/os/AsyncTask;
.source "DataUsageSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UidDetailTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/android/exsettingslib/net/UidDetail;",
        ">;"
    }
.end annotation


# instance fields
.field private final mItem:Lcom/android/exsettingslib/AppItem;

.field private final mProvider:Lcom/android/exsettingslib/net/UidDetailProvider;

.field private final mTarget:Landroid/view/View;


# direct methods
.method private constructor <init>(Lcom/android/exsettingslib/net/UidDetailProvider;Lcom/android/exsettingslib/AppItem;Landroid/view/View;)V
    .locals 1
    .param p1, "provider"    # Lcom/android/exsettingslib/net/UidDetailProvider;
    .param p2, "item"    # Lcom/android/exsettingslib/AppItem;
    .param p3, "target"    # Landroid/view/View;

    .prologue
    .line 2638
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 2639
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/exsettingslib/net/UidDetailProvider;

    iput-object v0, p0, Lcom/android/exsettings/DataUsageSummary$UidDetailTask;->mProvider:Lcom/android/exsettingslib/net/UidDetailProvider;

    .line 2640
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/exsettingslib/AppItem;

    iput-object v0, p0, Lcom/android/exsettings/DataUsageSummary$UidDetailTask;->mItem:Lcom/android/exsettingslib/AppItem;

    .line 2641
    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iput-object v0, p0, Lcom/android/exsettings/DataUsageSummary$UidDetailTask;->mTarget:Landroid/view/View;

    .line 2638
    return-void
.end method

.method private static bindView(Lcom/android/exsettingslib/net/UidDetail;Landroid/view/View;)V
    .locals 4
    .param p0, "detail"    # Lcom/android/exsettingslib/net/UidDetail;
    .param p1, "target"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 2661
    const v2, 0x1020006

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 2662
    .local v0, "icon":Landroid/widget/ImageView;
    const v2, 0x1020016

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 2664
    .local v1, "title":Landroid/widget/TextView;
    if-eqz p0, :cond_0

    .line 2665
    iget-object v2, p0, Lcom/android/exsettingslib/net/UidDetail;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2666
    iget-object v2, p0, Lcom/android/exsettingslib/net/UidDetail;->label:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2667
    iget-object v2, p0, Lcom/android/exsettingslib/net/UidDetail;->contentDescription:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 2660
    :goto_0
    return-void

    .line 2669
    :cond_0
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2670
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public static bindView(Lcom/android/exsettingslib/net/UidDetailProvider;Lcom/android/exsettingslib/AppItem;Landroid/view/View;)V
    .locals 5
    .param p0, "provider"    # Lcom/android/exsettingslib/net/UidDetailProvider;
    .param p1, "item"    # Lcom/android/exsettingslib/AppItem;
    .param p2, "target"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 2646
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/exsettings/DataUsageSummary$UidDetailTask;

    .line 2647
    .local v1, "existing":Lcom/android/exsettings/DataUsageSummary$UidDetailTask;
    if-eqz v1, :cond_0

    .line 2648
    invoke-virtual {v1, v4}, Lcom/android/exsettings/DataUsageSummary$UidDetailTask;->cancel(Z)Z

    .line 2651
    :cond_0
    iget v2, p1, Lcom/android/exsettingslib/AppItem;->key:I

    invoke-virtual {p0, v2, v4}, Lcom/android/exsettingslib/net/UidDetailProvider;->getUidDetail(IZ)Lcom/android/exsettingslib/net/UidDetail;

    move-result-object v0

    .line 2652
    .local v0, "cachedDetail":Lcom/android/exsettingslib/net/UidDetail;
    if-eqz v0, :cond_1

    .line 2653
    invoke-static {v0, p2}, Lcom/android/exsettings/DataUsageSummary$UidDetailTask;->bindView(Lcom/android/exsettingslib/net/UidDetail;Landroid/view/View;)V

    .line 2645
    :goto_0
    return-void

    .line 2655
    :cond_1
    new-instance v2, Lcom/android/exsettings/DataUsageSummary$UidDetailTask;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/exsettings/DataUsageSummary$UidDetailTask;-><init>(Lcom/android/exsettingslib/net/UidDetailProvider;Lcom/android/exsettingslib/AppItem;Landroid/view/View;)V

    .line 2656
    sget-object v3, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 2655
    new-array v4, v4, [Ljava/lang/Void;

    invoke-virtual {v2, v3, v4}, Lcom/android/exsettings/DataUsageSummary$UidDetailTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/android/exsettingslib/net/UidDetail;
    .locals 3
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 2681
    iget-object v0, p0, Lcom/android/exsettings/DataUsageSummary$UidDetailTask;->mProvider:Lcom/android/exsettingslib/net/UidDetailProvider;

    iget-object v1, p0, Lcom/android/exsettings/DataUsageSummary$UidDetailTask;->mItem:Lcom/android/exsettingslib/AppItem;

    iget v1, v1, Lcom/android/exsettingslib/AppItem;->key:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/exsettingslib/net/UidDetailProvider;->getUidDetail(IZ)Lcom/android/exsettingslib/net/UidDetail;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 2680
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "params":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/exsettings/DataUsageSummary$UidDetailTask;->doInBackground([Ljava/lang/Void;)Lcom/android/exsettingslib/net/UidDetail;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/android/exsettingslib/net/UidDetail;)V
    .locals 1
    .param p1, "result"    # Lcom/android/exsettingslib/net/UidDetail;

    .prologue
    .line 2686
    iget-object v0, p0, Lcom/android/exsettings/DataUsageSummary$UidDetailTask;->mTarget:Landroid/view/View;

    invoke-static {p1, v0}, Lcom/android/exsettings/DataUsageSummary$UidDetailTask;->bindView(Lcom/android/exsettingslib/net/UidDetail;Landroid/view/View;)V

    .line 2685
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 2685
    check-cast p1, Lcom/android/exsettingslib/net/UidDetail;

    .end local p1    # "result":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/exsettings/DataUsageSummary$UidDetailTask;->onPostExecute(Lcom/android/exsettingslib/net/UidDetail;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 2676
    iget-object v0, p0, Lcom/android/exsettings/DataUsageSummary$UidDetailTask;->mTarget:Landroid/view/View;

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lcom/android/exsettings/DataUsageSummary$UidDetailTask;->bindView(Lcom/android/exsettingslib/net/UidDetail;Landroid/view/View;)V

    .line 2675
    return-void
.end method
