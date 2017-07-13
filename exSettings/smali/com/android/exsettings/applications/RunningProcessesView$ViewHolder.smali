.class public Lcom/android/exsettings/applications/RunningProcessesView$ViewHolder;
.super Ljava/lang/Object;
.source "RunningProcessesView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/applications/RunningProcessesView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewHolder"
.end annotation


# instance fields
.field public description:Landroid/widget/TextView;

.field public icon:Landroid/widget/ImageView;

.field public name:Landroid/widget/TextView;

.field public rootView:Landroid/view/View;

.field public size:Landroid/widget/TextView;

.field public uptime:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 163
    iput-object p1, p0, Lcom/android/exsettings/applications/RunningProcessesView$ViewHolder;->rootView:Landroid/view/View;

    .line 164
    const v0, 0x7f130009

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/exsettings/applications/RunningProcessesView$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 165
    const v0, 0x7f130036

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/exsettings/applications/RunningProcessesView$ViewHolder;->name:Landroid/widget/TextView;

    .line 166
    const v0, 0x7f1300c4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/exsettings/applications/RunningProcessesView$ViewHolder;->description:Landroid/widget/TextView;

    .line 167
    const v0, 0x7f130206

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/exsettings/applications/RunningProcessesView$ViewHolder;->size:Landroid/widget/TextView;

    .line 168
    const v0, 0x7f130207

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/exsettings/applications/RunningProcessesView$ViewHolder;->uptime:Landroid/widget/TextView;

    .line 169
    invoke-virtual {p1, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 162
    return-void
.end method


# virtual methods
.method public bind(Lcom/android/exsettings/applications/RunningState;Lcom/android/exsettings/applications/RunningState$BaseItem;Ljava/lang/StringBuilder;)Lcom/android/exsettings/applications/RunningProcessesView$ActiveItem;
    .locals 10
    .param p1, "state"    # Lcom/android/exsettings/applications/RunningState;
    .param p2, "item"    # Lcom/android/exsettings/applications/RunningState$BaseItem;
    .param p3, "builder"    # Ljava/lang/StringBuilder;

    .prologue
    .line 174
    iget-object v6, p1, Lcom/android/exsettings/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 175
    :try_start_0
    iget-object v5, p0, Lcom/android/exsettings/applications/RunningProcessesView$ViewHolder;->rootView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 176
    .local v4, "pm":Landroid/content/pm/PackageManager;
    iget-object v5, p2, Lcom/android/exsettings/applications/RunningState$BaseItem;->mPackageInfo:Landroid/content/pm/PackageItemInfo;

    if-nez v5, :cond_0

    instance-of v5, p2, Lcom/android/exsettings/applications/RunningState$MergedItem;

    if-eqz v5, :cond_0

    .line 179
    move-object v0, p2

    check-cast v0, Lcom/android/exsettings/applications/RunningState$MergedItem;

    move-object v3, v0

    .line 180
    .local v3, "mergedItem":Lcom/android/exsettings/applications/RunningState$MergedItem;
    iget-object v5, v3, Lcom/android/exsettings/applications/RunningState$MergedItem;->mProcess:Lcom/android/exsettings/applications/RunningState$ProcessItem;

    if-eqz v5, :cond_0

    .line 181
    move-object v0, p2

    check-cast v0, Lcom/android/exsettings/applications/RunningState$MergedItem;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/exsettings/applications/RunningState$MergedItem;->mProcess:Lcom/android/exsettings/applications/RunningState$ProcessItem;

    invoke-virtual {v5, v4}, Lcom/android/exsettings/applications/RunningState$ProcessItem;->ensureLabel(Landroid/content/pm/PackageManager;)V

    .line 182
    move-object v0, p2

    check-cast v0, Lcom/android/exsettings/applications/RunningState$MergedItem;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/exsettings/applications/RunningState$MergedItem;->mProcess:Lcom/android/exsettings/applications/RunningState$ProcessItem;

    iget-object v5, v5, Lcom/android/exsettings/applications/RunningState$ProcessItem;->mPackageInfo:Landroid/content/pm/PackageItemInfo;

    iput-object v5, p2, Lcom/android/exsettings/applications/RunningState$BaseItem;->mPackageInfo:Landroid/content/pm/PackageItemInfo;

    .line 183
    move-object v0, p2

    check-cast v0, Lcom/android/exsettings/applications/RunningState$MergedItem;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/exsettings/applications/RunningState$MergedItem;->mProcess:Lcom/android/exsettings/applications/RunningState$ProcessItem;

    iget-object v5, v5, Lcom/android/exsettings/applications/RunningState$ProcessItem;->mDisplayLabel:Ljava/lang/CharSequence;

    iput-object v5, p2, Lcom/android/exsettings/applications/RunningState$BaseItem;->mDisplayLabel:Ljava/lang/CharSequence;

    .line 186
    .end local v3    # "mergedItem":Lcom/android/exsettings/applications/RunningState$MergedItem;
    :cond_0
    iget-object v5, p0, Lcom/android/exsettings/applications/RunningProcessesView$ViewHolder;->name:Landroid/widget/TextView;

    iget-object v7, p2, Lcom/android/exsettings/applications/RunningState$BaseItem;->mDisplayLabel:Ljava/lang/CharSequence;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 187
    new-instance v2, Lcom/android/exsettings/applications/RunningProcessesView$ActiveItem;

    invoke-direct {v2}, Lcom/android/exsettings/applications/RunningProcessesView$ActiveItem;-><init>()V

    .line 188
    .local v2, "ai":Lcom/android/exsettings/applications/RunningProcessesView$ActiveItem;
    iget-object v5, p0, Lcom/android/exsettings/applications/RunningProcessesView$ViewHolder;->rootView:Landroid/view/View;

    iput-object v5, v2, Lcom/android/exsettings/applications/RunningProcessesView$ActiveItem;->mRootView:Landroid/view/View;

    .line 189
    iput-object p2, v2, Lcom/android/exsettings/applications/RunningProcessesView$ActiveItem;->mItem:Lcom/android/exsettings/applications/RunningState$BaseItem;

    .line 190
    iput-object p0, v2, Lcom/android/exsettings/applications/RunningProcessesView$ActiveItem;->mHolder:Lcom/android/exsettings/applications/RunningProcessesView$ViewHolder;

    .line 191
    iget-wide v8, p2, Lcom/android/exsettings/applications/RunningState$BaseItem;->mActiveSince:J

    iput-wide v8, v2, Lcom/android/exsettings/applications/RunningProcessesView$ActiveItem;->mFirstRunTime:J

    .line 192
    iget-boolean v5, p2, Lcom/android/exsettings/applications/RunningState$BaseItem;->mBackground:Z

    if-eqz v5, :cond_1

    .line 193
    iget-object v5, p0, Lcom/android/exsettings/applications/RunningProcessesView$ViewHolder;->description:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/exsettings/applications/RunningProcessesView$ViewHolder;->rootView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f0c0a16

    invoke-virtual {v7, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 197
    :goto_0
    const/4 v5, 0x0

    iput-object v5, p2, Lcom/android/exsettings/applications/RunningState$BaseItem;->mCurSizeStr:Ljava/lang/String;

    .line 198
    iget-object v5, p0, Lcom/android/exsettings/applications/RunningProcessesView$ViewHolder;->icon:Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/android/exsettings/applications/RunningProcessesView$ViewHolder;->rootView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {p2, v7, p1}, Lcom/android/exsettings/applications/RunningState$BaseItem;->loadIcon(Landroid/content/Context;Lcom/android/exsettings/applications/RunningState;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 199
    iget-object v5, p0, Lcom/android/exsettings/applications/RunningProcessesView$ViewHolder;->icon:Landroid/widget/ImageView;

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 200
    iget-object v5, p0, Lcom/android/exsettings/applications/RunningProcessesView$ViewHolder;->rootView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v2, v5, p3}, Lcom/android/exsettings/applications/RunningProcessesView$ActiveItem;->updateTime(Landroid/content/Context;Ljava/lang/StringBuilder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v6

    .line 201
    return-object v2

    .line 195
    :cond_1
    :try_start_1
    iget-object v5, p0, Lcom/android/exsettings/applications/RunningProcessesView$ViewHolder;->description:Landroid/widget/TextView;

    iget-object v7, p2, Lcom/android/exsettings/applications/RunningState$BaseItem;->mDescription:Ljava/lang/String;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 174
    .end local v2    # "ai":Lcom/android/exsettings/applications/RunningProcessesView$ActiveItem;
    .end local v4    # "pm":Landroid/content/pm/PackageManager;
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5
.end method
