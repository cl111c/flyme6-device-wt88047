.class public Lcom/android/exsettings/applications/RunningProcessesView$ActiveItem;
.super Ljava/lang/Object;
.source "RunningProcessesView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/applications/RunningProcessesView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ActiveItem"
.end annotation


# instance fields
.field mFirstRunTime:J

.field mHolder:Lcom/android/exsettings/applications/RunningProcessesView$ViewHolder;

.field mItem:Lcom/android/exsettings/applications/RunningState$BaseItem;

.field mRootView:Landroid/view/View;

.field mSetBackground:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method updateTime(Landroid/content/Context;Ljava/lang/StringBuilder;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "builder"    # Ljava/lang/StringBuilder;

    .prologue
    const/4 v5, 0x0

    .line 104
    const/4 v2, 0x0

    .line 106
    .local v2, "uptimeView":Landroid/widget/TextView;
    iget-object v3, p0, Lcom/android/exsettings/applications/RunningProcessesView$ActiveItem;->mItem:Lcom/android/exsettings/applications/RunningState$BaseItem;

    instance-of v3, v3, Lcom/android/exsettings/applications/RunningState$ServiceItem;

    if-eqz v3, :cond_2

    .line 109
    iget-object v3, p0, Lcom/android/exsettings/applications/RunningProcessesView$ActiveItem;->mHolder:Lcom/android/exsettings/applications/RunningProcessesView$ViewHolder;

    iget-object v2, v3, Lcom/android/exsettings/applications/RunningProcessesView$ViewHolder;->size:Landroid/widget/TextView;

    .line 131
    .end local v2    # "uptimeView":Landroid/widget/TextView;
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    .line 132
    iput-boolean v5, p0, Lcom/android/exsettings/applications/RunningProcessesView$ActiveItem;->mSetBackground:Z

    .line 133
    iget-wide v4, p0, Lcom/android/exsettings/applications/RunningProcessesView$ActiveItem;->mFirstRunTime:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-ltz v3, :cond_6

    .line 137
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/exsettings/applications/RunningProcessesView$ActiveItem;->mFirstRunTime:J

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    .line 136
    invoke-static {p2, v4, v5}, Landroid/text/format/DateUtils;->formatElapsedTime(Ljava/lang/StringBuilder;J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    :cond_1
    :goto_1
    return-void

    .line 112
    .restart local v2    # "uptimeView":Landroid/widget/TextView;
    :cond_2
    iget-object v3, p0, Lcom/android/exsettings/applications/RunningProcessesView$ActiveItem;->mItem:Lcom/android/exsettings/applications/RunningState$BaseItem;

    iget-object v3, v3, Lcom/android/exsettings/applications/RunningState$BaseItem;->mSizeStr:Ljava/lang/String;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/exsettings/applications/RunningProcessesView$ActiveItem;->mItem:Lcom/android/exsettings/applications/RunningState$BaseItem;

    iget-object v1, v3, Lcom/android/exsettings/applications/RunningState$BaseItem;->mSizeStr:Ljava/lang/String;

    .line 113
    .local v1, "size":Ljava/lang/String;
    :goto_2
    iget-object v3, p0, Lcom/android/exsettings/applications/RunningProcessesView$ActiveItem;->mItem:Lcom/android/exsettings/applications/RunningState$BaseItem;

    iget-object v3, v3, Lcom/android/exsettings/applications/RunningState$BaseItem;->mCurSizeStr:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 114
    iget-object v3, p0, Lcom/android/exsettings/applications/RunningProcessesView$ActiveItem;->mItem:Lcom/android/exsettings/applications/RunningState$BaseItem;

    iput-object v1, v3, Lcom/android/exsettings/applications/RunningState$BaseItem;->mCurSizeStr:Ljava/lang/String;

    .line 115
    iget-object v3, p0, Lcom/android/exsettings/applications/RunningProcessesView$ActiveItem;->mHolder:Lcom/android/exsettings/applications/RunningProcessesView$ViewHolder;

    iget-object v3, v3, Lcom/android/exsettings/applications/RunningProcessesView$ViewHolder;->size:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    :cond_3
    iget-object v3, p0, Lcom/android/exsettings/applications/RunningProcessesView$ActiveItem;->mItem:Lcom/android/exsettings/applications/RunningState$BaseItem;

    iget-boolean v3, v3, Lcom/android/exsettings/applications/RunningState$BaseItem;->mBackground:Z

    if-eqz v3, :cond_5

    .line 120
    iget-boolean v3, p0, Lcom/android/exsettings/applications/RunningProcessesView$ActiveItem;->mSetBackground:Z

    if-nez v3, :cond_0

    .line 121
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/exsettings/applications/RunningProcessesView$ActiveItem;->mSetBackground:Z

    .line 122
    iget-object v3, p0, Lcom/android/exsettings/applications/RunningProcessesView$ActiveItem;->mHolder:Lcom/android/exsettings/applications/RunningProcessesView$ViewHolder;

    iget-object v3, v3, Lcom/android/exsettings/applications/RunningProcessesView$ViewHolder;->uptime:Landroid/widget/TextView;

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 112
    .end local v1    # "size":Ljava/lang/String;
    :cond_4
    const-string/jumbo v1, ""

    .restart local v1    # "size":Ljava/lang/String;
    goto :goto_2

    .line 124
    :cond_5
    iget-object v3, p0, Lcom/android/exsettings/applications/RunningProcessesView$ActiveItem;->mItem:Lcom/android/exsettings/applications/RunningState$BaseItem;

    instance-of v3, v3, Lcom/android/exsettings/applications/RunningState$MergedItem;

    if-eqz v3, :cond_0

    .line 127
    iget-object v3, p0, Lcom/android/exsettings/applications/RunningProcessesView$ActiveItem;->mHolder:Lcom/android/exsettings/applications/RunningProcessesView$ViewHolder;

    iget-object v2, v3, Lcom/android/exsettings/applications/RunningProcessesView$ViewHolder;->uptime:Landroid/widget/TextView;

    .local v2, "uptimeView":Landroid/widget/TextView;
    goto :goto_0

    .line 139
    .end local v1    # "size":Ljava/lang/String;
    .end local v2    # "uptimeView":Landroid/widget/TextView;
    :cond_6
    const/4 v0, 0x0

    .line 140
    .local v0, "isService":Z
    iget-object v3, p0, Lcom/android/exsettings/applications/RunningProcessesView$ActiveItem;->mItem:Lcom/android/exsettings/applications/RunningState$BaseItem;

    instance-of v3, v3, Lcom/android/exsettings/applications/RunningState$MergedItem;

    if-eqz v3, :cond_7

    .line 141
    iget-object v3, p0, Lcom/android/exsettings/applications/RunningProcessesView$ActiveItem;->mItem:Lcom/android/exsettings/applications/RunningState$BaseItem;

    check-cast v3, Lcom/android/exsettings/applications/RunningState$MergedItem;

    iget-object v3, v3, Lcom/android/exsettings/applications/RunningState$MergedItem;->mServices:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_8

    const/4 v0, 0x1

    .line 143
    :cond_7
    :goto_3
    if-eqz v0, :cond_9

    .line 144
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 145
    const v4, 0x7f0c0a15

    .line 144
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 141
    :cond_8
    const/4 v0, 0x0

    goto :goto_3

    .line 147
    :cond_9
    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method
