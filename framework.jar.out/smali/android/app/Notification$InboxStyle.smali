.class public Landroid/app/Notification$InboxStyle;
.super Landroid/app/Notification$Style;
.source "Notification.java"


# annotations

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/Notification$InboxStyle$FlymeInjector;
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Notification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InboxStyle"
.end annotation


# instance fields

.field mFlymeSimSlots:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mTexts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 4237
    invoke-direct {p0}, Landroid/app/Notification$Style;-><init>()V

    .line 4235
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/app/Notification$InboxStyle;->mTexts:Ljava/util/ArrayList;

    invoke-static/range {p0 .. p0}, Landroid/app/Notification$InboxStyle$FlymeInjector;->initFlymeExtFields(Landroid/app/Notification$InboxStyle;)V

    .line 4237
    return-void
.end method

.method public constructor <init>(Landroid/app/Notification$Builder;)V
    .locals 2
    .param p1, "builder"    # Landroid/app/Notification$Builder;

    .prologue
    .line 4240
    invoke-direct {p0}, Landroid/app/Notification$Style;-><init>()V

    .line 4235
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/app/Notification$InboxStyle;->mTexts:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Landroid/app/Notification$InboxStyle;->setBuilder(Landroid/app/Notification$Builder;)V

    invoke-static/range {p0 .. p0}, Landroid/app/Notification$InboxStyle$FlymeInjector;->initFlymeExtFields(Landroid/app/Notification$InboxStyle;)V

    return-void
.end method

.method private makeBigContentView()Landroid/widget/RemoteViews;
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/16 v10, 0x8

    const/4 v9, 0x0

    .line 4296
    iget-object v8, p0, Landroid/app/Notification$InboxStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v8}, Landroid/app/Notification$Builder;->-get1(Landroid/app/Notification$Builder;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 4297
    .local v3, "oldBuilderContentText":Ljava/lang/CharSequence;
    iget-object v8, p0, Landroid/app/Notification$InboxStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v8, v11}, Landroid/app/Notification$Builder;->-set0(Landroid/app/Notification$Builder;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 4299
    iget-object v8, p0, Landroid/app/Notification$InboxStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v8}, Landroid/app/Notification$Builder;->-wrap6(Landroid/app/Notification$Builder;)I

    move-result v8

    invoke-virtual {p0, v8}, Landroid/app/Notification$InboxStyle;->getStandardView(I)Landroid/widget/RemoteViews;

    move-result-object v0

    .local v0, "contentView":Landroid/widget/RemoteViews;
    iget-object v8, p0, Landroid/app/Notification$InboxStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v8, v3}, Landroid/app/Notification$Builder;->-set0(Landroid/app/Notification$Builder;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    const v8, #android:id@text2#t

    invoke-virtual {v0, v8, v10}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const/4 v8, 0x7

    new-array v5, v8, [I

    .local v5, "rowIds":[I
    fill-array-data v5, :array_0

    .line 4309
    array-length v11, v5

    move v8, v9

    :goto_0
    if-ge v8, v11, :cond_0

    aget v4, v5, v8

    .line 4310
    .local v4, "rowId":I
    invoke-virtual {v0, v4, v10}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 4309
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 4314
    .end local v4    # "rowId":I
    :cond_0
    iget-object v8, p0, Landroid/app/Notification$InboxStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v8}, Landroid/app/Notification$Builder;->-get3(Landroid/app/Notification$Builder;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget v8, v8, Landroid/content/res/Configuration;->fontScale:F

    const/high16 v11, 0x3f800000    # 1.0f

    cmpl-float v8, v8, v11

    if-lez v8, :cond_2

    const/4 v2, 0x1

    .line 4315
    .local v2, "largeText":Z
    :goto_1
    iget-object v8, p0, Landroid/app/Notification$InboxStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v8}, Landroid/app/Notification$Builder;->-get3(Landroid/app/Notification$Builder;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v11, #android:dimen@notification_subtext_size#t

    invoke-virtual {v8, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    int-to-float v7, v8

    .local v7, "subTextSize":F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget-object v8, p0, Landroid/app/Notification$InboxStyle;->mTexts:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v1, v8, :cond_4

    array-length v8, v5

    if-ge v1, v8, :cond_4

    .line 4319
    iget-object v8, p0, Landroid/app/Notification$InboxStyle;->mTexts:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    .line 4320
    .local v6, "str":Ljava/lang/CharSequence;
    if-eqz v6, :cond_1

    const-string/jumbo v8, ""

    invoke-virtual {v6, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 4328
    :cond_1
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 4314
    .end local v1    # "i":I
    .end local v2    # "largeText":Z
    .end local v6    # "str":Ljava/lang/CharSequence;
    .end local v7    # "subTextSize":F
    :cond_2
    const/4 v2, 0x0

    .restart local v2    # "largeText":Z
    goto :goto_1

    .line 4321
    .restart local v1    # "i":I
    .restart local v6    # "str":Ljava/lang/CharSequence;
    .restart local v7    # "subTextSize":F
    :cond_3
    aget v8, v5, v1

    invoke-virtual {v0, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 4322
    aget v8, v5, v1

    iget-object v11, p0, Landroid/app/Notification$InboxStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v11, v6}, Landroid/app/Notification$Builder;->-wrap7(Landroid/app/Notification$Builder;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v0, v8, v11}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 4323
    if-eqz v2, :cond_1

    .line 4324
    aget v8, v5, v1

    invoke-virtual {v0, v8, v9, v7}, Landroid/widget/RemoteViews;->setTextViewTextSize(IIF)V

    goto :goto_3

    .line 4332
    .end local v6    # "str":Ljava/lang/CharSequence;
    :cond_4
    iget-object v8, p0, Landroid/app/Notification$InboxStyle;->mTexts:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_5

    move v8, v9

    :goto_4
    const v11, #android:id@inbox_end_pad#t

    invoke-virtual {v0, v11, v8}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    iget-object v8, p0, Landroid/app/Notification$InboxStyle;->mTexts:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    array-length v11, v5

    if-le v8, v11, :cond_6

    :goto_5
    const v8, #android:id@inbox_more#t

    invoke-virtual {v0, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    invoke-virtual {p0, v0}, Landroid/app/Notification$InboxStyle;->applyTopPadding(Landroid/widget/RemoteViews;)V

    iget-object v8, p0, Landroid/app/Notification$InboxStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v8, v0}, Landroid/app/Notification$Builder;->-wrap10(Landroid/app/Notification$Builder;Landroid/widget/RemoteViews;)V

    iget-object v8, p0, Landroid/app/Notification$InboxStyle;->mBuilder:Landroid/app/Notification$Builder;

    const v9, #android:id@profile_badge_large_template#t

    invoke-static {v8, v0, v9}, Landroid/app/Notification$Builder;->-wrap2(Landroid/app/Notification$Builder;Landroid/widget/RemoteViews;I)Z

    invoke-virtual {p0, v0}, Landroid/app/Notification$InboxStyle;->makeBigContentViewFlyme(Landroid/widget/RemoteViews;)V

    return-object v0

    :cond_5
    move v8, v10

    goto :goto_4

    :cond_6
    move v9, v10

    goto :goto_5

    :array_0
    .array-data 4
        #android:id@inbox_text0#t
        #android:id@inbox_text1#t
        #android:id@inbox_text2#t
        #android:id@inbox_text3#t
        #android:id@inbox_text4#t
        #android:id@inbox_text5#t
        #android:id@inbox_text6#t
    .end array-data
.end method


# virtual methods
.method public addExtras(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 4273
    invoke-super {p0, p1}, Landroid/app/Notification$Style;->addExtras(Landroid/os/Bundle;)V

    .line 4275
    iget-object v1, p0, Landroid/app/Notification$InboxStyle;->mTexts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v0, v1, [Ljava/lang/CharSequence;

    .line 4276
    .local v0, "a":[Ljava/lang/CharSequence;
    const-string/jumbo v2, "android.textLines"

    iget-object v1, p0, Landroid/app/Notification$InboxStyle;->mTexts:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/CharSequence;

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putCharSequenceArray(Ljava/lang/String;[Ljava/lang/CharSequence;)V

    invoke-static/range {p0 .. p1}, Landroid/app/Notification$InboxStyle$FlymeInjector;->addFlymeExtras(Landroid/app/Notification$InboxStyle;Landroid/os/Bundle;)V

    .line 4272
    return-void
.end method

.method public addLine(Ljava/lang/CharSequence;)Landroid/app/Notification$InboxStyle;
    .locals 2
    .param p1, "cs"    # Ljava/lang/CharSequence;

    .prologue
    .line 4265
    iget-object v0, p0, Landroid/app/Notification$InboxStyle;->mTexts:Ljava/util/ArrayList;

    invoke-static {p1}, Landroid/app/Notification;->safeCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static/range {p0 .. p0}, Landroid/app/Notification$InboxStyle$FlymeInjector;->addFlymeLine(Landroid/app/Notification$InboxStyle;)V

    return-object p0
.end method

.method public populateBigContentView(Landroid/app/Notification;)V
    .locals 2
    .param p1, "wip"    # Landroid/app/Notification;

    .prologue
    iget-object v0, p0, Landroid/app/Notification$InboxStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-direct {p0}, Landroid/app/Notification$InboxStyle;->makeBigContentView()Landroid/widget/RemoteViews;

    move-result-object v1

    invoke-static {v0, p1, v1}, Landroid/app/Notification$Builder;->-wrap8(Landroid/app/Notification$Builder;Landroid/app/Notification;Landroid/widget/RemoteViews;)V

    return-void
.end method

.method protected restoreFromExtras(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    invoke-super {p0, p1}, Landroid/app/Notification$Style;->restoreFromExtras(Landroid/os/Bundle;)V

    iget-object v0, p0, Landroid/app/Notification$InboxStyle;->mTexts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const-string v0, "android.textLines"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/Notification$InboxStyle;->mTexts:Ljava/util/ArrayList;

    const-string v1, "android.textLines"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getCharSequenceArray(Ljava/lang/String;)[Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public setBigContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$InboxStyle;
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    invoke-static {p1}, Landroid/app/Notification;->safeCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Notification$InboxStyle;->internalSetBigContentTitle(Ljava/lang/CharSequence;)V

    return-object p0
.end method

.method public setSummaryText(Ljava/lang/CharSequence;)Landroid/app/Notification$InboxStyle;
    .locals 1
    .param p1, "cs"    # Ljava/lang/CharSequence;

    .prologue
    invoke-static {p1}, Landroid/app/Notification;->safeCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Notification$InboxStyle;->internalSetSummaryText(Ljava/lang/CharSequence;)V

    return-object p0
.end method

.method public addLine(Ljava/lang/CharSequence;I)Landroid/app/Notification$InboxStyle;
    .locals 2
    .param p1, "cs"    # Ljava/lang/CharSequence;
    .param p2, "slotId"    # I

    .prologue
    iget-object v0, p0, Landroid/app/Notification$InboxStyle;->mTexts:Ljava/util/ArrayList;

    invoke-static {p1}, Landroid/app/Notification;->safeCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroid/app/Notification$InboxStyle;->mFlymeSimSlots:Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4266
    return-object p0
.end method

.method public makeBigContentViewFlyme(Landroid/widget/RemoteViews;)V
    .locals 14
    .param p1, "contentView"    # Landroid/widget/RemoteViews;

    .prologue
    const/16 v13, 0x8

    const/4 v2, 0x0

    sget v0, Lcom/flyme/internal/R$id;->text2:I

    invoke-virtual {p1, v0, v13}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const/4 v0, 0x7

    new-array v9, v0, [I

    sget v0, Lcom/flyme/internal/R$id;->inbox_text0:I

    aput v0, v9, v2

    sget v0, Lcom/flyme/internal/R$id;->inbox_text1:I

    const/4 v1, 0x1

    aput v0, v9, v1

    sget v0, Lcom/flyme/internal/R$id;->inbox_text2:I

    const/4 v1, 0x2

    aput v0, v9, v1

    sget v0, Lcom/flyme/internal/R$id;->inbox_text3:I

    const/4 v1, 0x3

    aput v0, v9, v1

    sget v0, Lcom/flyme/internal/R$id;->inbox_text4:I

    const/4 v1, 0x4

    aput v0, v9, v1

    sget v0, Lcom/flyme/internal/R$id;->inbox_text5:I

    const/4 v1, 0x5

    aput v0, v9, v1

    sget v0, Lcom/flyme/internal/R$id;->inbox_text6:I

    const/4 v1, 0x6

    aput v0, v9, v1

    .local v9, "rowIds":[I
    array-length v1, v9

    move v0, v2

    :goto_0
    if-ge v0, v1, :cond_0

    aget v8, v9, v0

    .local v8, "rowId":I
    invoke-virtual {p1, v8, v13}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v8    # "rowId":I
    :cond_0
    iget-object v0, p0, Landroid/app/Notification$InboxStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->flymeGetFieldContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->fontScale:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    const/4 v7, 0x1

    .local v7, "largeText":Z
    :goto_1
    iget-object v0, p0, Landroid/app/Notification$InboxStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->flymeGetFieldContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, #android:dimen@notification_subtext_size#t

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v12, v0

    .local v12, "subTextSize":F
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_2
    iget-object v0, p0, Landroid/app/Notification$InboxStyle;->mTexts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v6, v0, :cond_9

    array-length v0, v9

    if-ge v6, v0, :cond_9

    iget-object v0, p0, Landroid/app/Notification$InboxStyle;->mTexts:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/CharSequence;

    .local v11, "str":Ljava/lang/CharSequence;
    iget-object v0, p0, Landroid/app/Notification$InboxStyle;->mFlymeSimSlots:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    .local v10, "simSlot":Ljava/lang/Integer;
    if-eqz v11, :cond_1

    const-string v0, ""

    invoke-virtual {v11, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .end local v6    # "i":I
    .end local v7    # "largeText":Z
    .end local v10    # "simSlot":Ljava/lang/Integer;
    .end local v11    # "str":Ljava/lang/CharSequence;
    .end local v12    # "subTextSize":F
    :cond_2
    const/4 v7, 0x0

    .restart local v7    # "largeText":Z
    goto :goto_1

    .restart local v6    # "i":I
    .restart local v10    # "simSlot":Ljava/lang/Integer;
    .restart local v11    # "str":Ljava/lang/CharSequence;
    .restart local v12    # "subTextSize":F
    :cond_3
    aget v0, v9, v6

    invoke-virtual {p1, v0, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    aget v0, v9, v6

    iget-object v1, p0, Landroid/app/Notification$InboxStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v1, v11}, Landroid/app/Notification$Builder;->flymeInvokeMethodProcessLegacyText(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    if-eqz v7, :cond_4

    aget v0, v9, v6

    invoke-virtual {p1, v0, v2, v12}, Landroid/widget/RemoteViews;->setTextViewTextSize(IIF)V

    :cond_4
    if-eqz v10, :cond_1

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget v1, Landroid/app/NotificationBuilderExt;->SIM_SLOT_0:I

    if-ne v0, v1, :cond_5

    aget v1, v9, v6

    sget v4, Lcom/flyme/internal/R$drawable;->sim1_notice_m:I

    move-object v0, p1

    move v3, v2

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/RemoteViews;->setTextViewCompoundDrawables(IIIII)V

    goto :goto_3

    :cond_5
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget v1, Landroid/app/NotificationBuilderExt;->SIM_SLOT_1:I

    if-ne v0, v1, :cond_6

    aget v1, v9, v6

    sget v4, Lcom/flyme/internal/R$drawable;->sim2_notice_m:I

    move-object v0, p1

    move v3, v2

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/RemoteViews;->setTextViewCompoundDrawables(IIIII)V

    goto :goto_3

    :cond_6
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget v1, Landroid/app/NotificationBuilderExt;->SIM_SLOT_UNKNOWN:I

    if-ne v0, v1, :cond_7

    aget v1, v9, v6

    sget v4, Lcom/flyme/internal/R$drawable;->nosim_notice_m:I

    move-object v0, p1

    move v3, v2

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/RemoteViews;->setTextViewCompoundDrawables(IIIII)V

    goto :goto_3

    :cond_7
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget v1, Landroid/app/NotificationBuilderExt;->SIM_SLOT_CLOUD:I

    if-ne v0, v1, :cond_8

    aget v1, v9, v6

    sget v4, Lcom/flyme/internal/R$drawable;->cloud_notice_m:I

    move-object v0, p1

    move v3, v2

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/RemoteViews;->setTextViewCompoundDrawables(IIIII)V

    goto :goto_3

    :cond_8
    aget v1, v9, v6

    move-object v0, p1

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/RemoteViews;->setTextViewCompoundDrawables(IIIII)V

    goto :goto_3

    .end local v10    # "simSlot":Ljava/lang/Integer;
    .end local v11    # "str":Ljava/lang/CharSequence;
    :cond_9
    sget v1, Lcom/flyme/internal/R$id;->inbox_end_pad:I

    iget-object v0, p0, Landroid/app/Notification$InboxStyle;->mTexts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_a

    move v0, v2

    :goto_4
    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    sget v0, Lcom/flyme/internal/R$id;->inbox_more:I

    iget-object v1, p0, Landroid/app/Notification$InboxStyle;->mTexts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    array-length v3, v9

    if-le v1, v3, :cond_b

    :goto_5
    invoke-virtual {p1, v0, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 4350
    return-void

    :cond_a
    move v0, v13

    goto :goto_4

    :cond_b
    move v2, v13

    goto :goto_5
.end method
