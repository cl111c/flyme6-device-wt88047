.class Lcom/android/exsettings/nx/dslv/ActionListViewSettings$ActionConfigsAdapter;
.super Landroid/widget/ArrayAdapter;
.source "ActionListViewSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/nx/dslv/ActionListViewSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActionConfigsAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/android/internal/util/nx/ActionConfig;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/nx/dslv/ActionListViewSettings;


# direct methods
.method public constructor <init>(Lcom/android/exsettings/nx/dslv/ActionListViewSettings;Landroid/content/Context;Ljava/util/List;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/exsettings/nx/dslv/ActionListViewSettings;
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/util/nx/ActionConfig;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 580
    .local p3, "clickActionDescriptions":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/util/nx/ActionConfig;>;"
    iput-object p1, p0, Lcom/android/exsettings/nx/dslv/ActionListViewSettings$ActionConfigsAdapter;->this$0:Lcom/android/exsettings/nx/dslv/ActionListViewSettings;

    .line 581
    const v0, 0x7f040004

    .line 582
    const v1, 0x7f130011

    .line 581
    invoke-direct {p0, p2, v0, v1, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    .line 580
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v7, 0x0

    .line 586
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 588
    .local v5, "v":Landroid/view/View;
    if-eq v5, p2, :cond_0

    if-eqz v5, :cond_0

    .line 589
    new-instance v1, Lcom/android/exsettings/nx/dslv/ActionListViewSettings$ViewHolder;

    iget-object v6, p0, Lcom/android/exsettings/nx/dslv/ActionListViewSettings$ActionConfigsAdapter;->this$0:Lcom/android/exsettings/nx/dslv/ActionListViewSettings;

    invoke-direct {v1, v6, v7}, Lcom/android/exsettings/nx/dslv/ActionListViewSettings$ViewHolder;-><init>(Lcom/android/exsettings/nx/dslv/ActionListViewSettings;Lcom/android/exsettings/nx/dslv/ActionListViewSettings$ViewHolder;)V

    .line 592
    .local v1, "holder":Lcom/android/exsettings/nx/dslv/ActionListViewSettings$ViewHolder;
    const v6, 0x7f130012

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 593
    .local v4, "longpressActionDecription":Landroid/widget/TextView;
    const v6, 0x7f130009

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 595
    .local v2, "icon":Landroid/widget/ImageView;
    iget-object v6, p0, Lcom/android/exsettings/nx/dslv/ActionListViewSettings$ActionConfigsAdapter;->this$0:Lcom/android/exsettings/nx/dslv/ActionListViewSettings;

    invoke-static {v6}, Lcom/android/exsettings/nx/dslv/ActionListViewSettings;->-get8(Lcom/android/exsettings/nx/dslv/ActionListViewSettings;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 596
    const/16 v6, 0x8

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 601
    :goto_0
    iput-object v2, v1, Lcom/android/exsettings/nx/dslv/ActionListViewSettings$ViewHolder;->iconView:Landroid/widget/ImageView;

    .line 603
    invoke-virtual {v5, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 606
    .end local v1    # "holder":Lcom/android/exsettings/nx/dslv/ActionListViewSettings$ViewHolder;
    .end local v2    # "icon":Landroid/widget/ImageView;
    .end local v4    # "longpressActionDecription":Landroid/widget/TextView;
    :cond_0
    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/exsettings/nx/dslv/ActionListViewSettings$ViewHolder;

    .line 608
    .restart local v1    # "holder":Lcom/android/exsettings/nx/dslv/ActionListViewSettings$ViewHolder;
    iget-object v6, p0, Lcom/android/exsettings/nx/dslv/ActionListViewSettings$ActionConfigsAdapter;->this$0:Lcom/android/exsettings/nx/dslv/ActionListViewSettings;

    invoke-static {v6}, Lcom/android/exsettings/nx/dslv/ActionListViewSettings;->-get8(Lcom/android/exsettings/nx/dslv/ActionListViewSettings;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 609
    iget-object v7, v1, Lcom/android/exsettings/nx/dslv/ActionListViewSettings$ViewHolder;->longpressActionDescriptionView:Landroid/widget/TextView;

    .line 610
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/android/exsettings/nx/dslv/ActionListViewSettings$ActionConfigsAdapter;->this$0:Lcom/android/exsettings/nx/dslv/ActionListViewSettings;

    invoke-virtual {v8}, Lcom/android/exsettings/nx/dslv/ActionListViewSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0c0414

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 611
    const-string/jumbo v8, " "

    .line 610
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 611
    invoke-virtual {p0, p1}, Lcom/android/exsettings/nx/dslv/ActionListViewSettings$ActionConfigsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/util/nx/ActionConfig;

    invoke-virtual {v6}, Lcom/android/internal/util/nx/ActionConfig;->getLongpressActionDescription()Ljava/lang/String;

    move-result-object v6

    .line 610
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 609
    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 614
    :cond_1
    const/4 v0, 0x0

    .line 615
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0, p1}, Lcom/android/exsettings/nx/dslv/ActionListViewSettings$ActionConfigsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/util/nx/ActionConfig;

    invoke-virtual {v6}, Lcom/android/internal/util/nx/ActionConfig;->getIcon()Ljava/lang/String;

    move-result-object v3

    .line 616
    .local v3, "iconUri":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/exsettings/nx/dslv/ActionListViewSettings$ActionConfigsAdapter;->this$0:Lcom/android/exsettings/nx/dslv/ActionListViewSettings;

    invoke-static {v6}, Lcom/android/exsettings/nx/dslv/ActionListViewSettings;->-get4(Lcom/android/exsettings/nx/dslv/ActionListViewSettings;)I

    move-result v6

    const/4 v7, 0x5

    if-ne v6, v7, :cond_5

    .line 629
    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    :goto_1
    if-eqz v3, :cond_2

    const-string/jumbo v6, "system_shortcut="

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 630
    iget-object v6, p0, Lcom/android/exsettings/nx/dslv/ActionListViewSettings$ActionConfigsAdapter;->this$0:Lcom/android/exsettings/nx/dslv/ActionListViewSettings;

    invoke-virtual {v6}, Lcom/android/exsettings/nx/dslv/ActionListViewSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0e0093

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v0, v6}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 632
    :cond_2
    iget-object v6, v1, Lcom/android/exsettings/nx/dslv/ActionListViewSettings$ViewHolder;->iconView:Landroid/widget/ImageView;

    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 634
    iget-object v6, p0, Lcom/android/exsettings/nx/dslv/ActionListViewSettings$ActionConfigsAdapter;->this$0:Lcom/android/exsettings/nx/dslv/ActionListViewSettings;

    invoke-static {v6}, Lcom/android/exsettings/nx/dslv/ActionListViewSettings;->-get7(Lcom/android/exsettings/nx/dslv/ActionListViewSettings;)Z

    move-result v6

    if-nez v6, :cond_3

    iget-object v6, v1, Lcom/android/exsettings/nx/dslv/ActionListViewSettings$ViewHolder;->iconView:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 635
    iget-object v6, v1, Lcom/android/exsettings/nx/dslv/ActionListViewSettings$ViewHolder;->iconView:Landroid/widget/ImageView;

    new-instance v7, Lcom/android/exsettings/nx/dslv/ActionListViewSettings$ActionConfigsAdapter$1;

    invoke-direct {v7, p0, p1}, Lcom/android/exsettings/nx/dslv/ActionListViewSettings$ActionConfigsAdapter$1;-><init>(Lcom/android/exsettings/nx/dslv/ActionListViewSettings$ActionConfigsAdapter;I)V

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 644
    :cond_3
    return-object v5

    .line 598
    .end local v3    # "iconUri":Ljava/lang/String;
    .restart local v2    # "icon":Landroid/widget/ImageView;
    .restart local v4    # "longpressActionDecription":Landroid/widget/TextView;
    :cond_4
    iput-object v4, v1, Lcom/android/exsettings/nx/dslv/ActionListViewSettings$ViewHolder;->longpressActionDescriptionView:Landroid/widget/TextView;

    goto/16 :goto_0

    .line 624
    .end local v2    # "icon":Landroid/widget/ImageView;
    .end local v4    # "longpressActionDecription":Landroid/widget/TextView;
    .restart local v0    # "d":Landroid/graphics/drawable/Drawable;
    .restart local v3    # "iconUri":Ljava/lang/String;
    :cond_5
    iget-object v6, p0, Lcom/android/exsettings/nx/dslv/ActionListViewSettings$ActionConfigsAdapter;->this$0:Lcom/android/exsettings/nx/dslv/ActionListViewSettings;

    invoke-static {v6}, Lcom/android/exsettings/nx/dslv/ActionListViewSettings;->-get5(Lcom/android/exsettings/nx/dslv/ActionListViewSettings;)Landroid/app/Activity;

    move-result-object v7

    iget-object v6, p0, Lcom/android/exsettings/nx/dslv/ActionListViewSettings$ActionConfigsAdapter;->this$0:Lcom/android/exsettings/nx/dslv/ActionListViewSettings;

    invoke-static {v6}, Lcom/android/exsettings/nx/dslv/ActionListViewSettings;->-get5(Lcom/android/exsettings/nx/dslv/ActionListViewSettings;)Landroid/app/Activity;

    move-result-object v8

    .line 625
    invoke-virtual {p0, p1}, Lcom/android/exsettings/nx/dslv/ActionListViewSettings$ActionConfigsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/util/nx/ActionConfig;

    invoke-virtual {v6}, Lcom/android/internal/util/nx/ActionConfig;->getClickAction()Ljava/lang/String;

    move-result-object v6

    .line 624
    invoke-static {v8, v6, v3}, Lcom/android/internal/util/nx/ActionHelper;->getActionIconImage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 626
    const/16 v8, 0x24

    .line 623
    invoke-static {v7, v6, v8}, Lcom/android/internal/util/nx/ImageHelper;->resize(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .local v0, "d":Landroid/graphics/drawable/Drawable;
    goto :goto_1
.end method
