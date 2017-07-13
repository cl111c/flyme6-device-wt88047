.class public Lcom/android/exsettings/dashboard/DashboardSummary;
.super Lcom/android/exsettings/InstrumentedFragment;
.source "DashboardSummary.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exsettings/dashboard/DashboardSummary$HomePackageReceiver;,
        Lcom/android/exsettings/dashboard/DashboardSummary$1;
    }
.end annotation


# instance fields
.field private mDashboard:Landroid/view/ViewGroup;

.field private mHandler:Landroid/os/Handler;

.field private mHomePackageReceiver:Lcom/android/exsettings/dashboard/DashboardSummary$HomePackageReceiver;

.field private mLayoutInflater:Landroid/view/LayoutInflater;


# direct methods
.method static synthetic -wrap0(Lcom/android/exsettings/dashboard/DashboardSummary;Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/exsettings/dashboard/DashboardSummary;->rebuildUI(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/exsettings/InstrumentedFragment;-><init>()V

    .line 58
    new-instance v0, Lcom/android/exsettings/dashboard/DashboardSummary$1;

    invoke-direct {v0, p0}, Lcom/android/exsettings/dashboard/DashboardSummary$1;-><init>(Lcom/android/exsettings/dashboard/DashboardSummary;)V

    iput-object v0, p0, Lcom/android/exsettings/dashboard/DashboardSummary;->mHandler:Landroid/os/Handler;

    .line 76
    new-instance v0, Lcom/android/exsettings/dashboard/DashboardSummary$HomePackageReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/exsettings/dashboard/DashboardSummary$HomePackageReceiver;-><init>(Lcom/android/exsettings/dashboard/DashboardSummary;Lcom/android/exsettings/dashboard/DashboardSummary$HomePackageReceiver;)V

    iput-object v0, p0, Lcom/android/exsettings/dashboard/DashboardSummary;->mHomePackageReceiver:Lcom/android/exsettings/dashboard/DashboardSummary$HomePackageReceiver;

    .line 51
    return-void
.end method

.method private rebuildUI(Landroid/content/Context;)V
    .locals 24
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 135
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/dashboard/DashboardSummary;->isAdded()Z

    move-result v2

    if-nez v2, :cond_0

    .line 136
    const-string/jumbo v2, "DashboardSummary"

    const-string/jumbo v3, "Cannot build the DashboardSummary UI yet as the Fragment is not added"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    return-void

    .line 140
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    .line 141
    .local v20, "start":J
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/dashboard/DashboardSummary;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 143
    .local v4, "res":Landroid/content/res/Resources;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/dashboard/DashboardSummary;->mDashboard:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    move-object/from16 v2, p1

    .line 146
    check-cast v2, Lcom/android/exsettings/SettingsActivity;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/exsettings/SettingsActivity;->getDashboardCategories(Z)Ljava/util/List;

    move-result-object v10

    .line 148
    .local v10, "categories":Ljava/util/List;, "Ljava/util/List<Lcom/android/exsettings/dashboard/DashboardCategory;>;"
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v15

    .line 150
    .local v15, "count":I
    const/16 v19, 0x0

    .local v19, "n":I
    :goto_0
    move/from16 v0, v19

    if-ge v0, v15, :cond_4

    .line 151
    move/from16 v0, v19

    invoke-interface {v10, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/exsettings/dashboard/DashboardCategory;

    .line 153
    .local v11, "category":Lcom/android/exsettings/dashboard/DashboardCategory;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/dashboard/DashboardSummary;->mLayoutInflater:Landroid/view/LayoutInflater;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/exsettings/dashboard/DashboardSummary;->mDashboard:Landroid/view/ViewGroup;

    const v6, 0x7f040042

    .line 154
    const/4 v7, 0x0

    .line 153
    invoke-virtual {v2, v6, v3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v14

    .line 156
    .local v14, "categoryView":Landroid/view/View;
    const v2, 0x7f13008d

    invoke-virtual {v14, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 157
    .local v13, "categoryLabel":Landroid/widget/TextView;
    invoke-virtual {v11, v4}, Lcom/android/exsettings/dashboard/DashboardCategory;->getTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v13, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 160
    const v2, 0x7f13008e

    invoke-virtual {v14, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/view/ViewGroup;

    .line 162
    .local v12, "categoryContent":Landroid/view/ViewGroup;
    invoke-virtual {v11}, Lcom/android/exsettings/dashboard/DashboardCategory;->getTilesCount()I

    move-result v23

    .line 163
    .local v23, "tilesCount":I
    const/16 v18, 0x0

    .local v18, "i":I
    :goto_1
    move/from16 v0, v18

    move/from16 v1, v23

    if-ge v0, v1, :cond_3

    .line 164
    move/from16 v0, v18

    invoke-virtual {v11, v0}, Lcom/android/exsettings/dashboard/DashboardCategory;->getTile(I)Lcom/android/exsettings/dashboard/DashboardTile;

    move-result-object v5

    .line 166
    .local v5, "tile":Lcom/android/exsettings/dashboard/DashboardTile;
    new-instance v22, Lcom/android/exsettings/dashboard/DashboardTileView;

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/android/exsettings/dashboard/DashboardTileView;-><init>(Landroid/content/Context;)V

    .line 167
    .local v22, "tileView":Lcom/android/exsettings/dashboard/DashboardTileView;
    invoke-virtual/range {v22 .. v22}, Lcom/android/exsettings/dashboard/DashboardTileView;->getImageView()Landroid/widget/ImageView;

    move-result-object v6

    .line 168
    invoke-virtual/range {v22 .. v22}, Lcom/android/exsettings/dashboard/DashboardTileView;->getTitleTextView()Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual/range {v22 .. v22}, Lcom/android/exsettings/dashboard/DashboardTileView;->getStatusTextView()Landroid/widget/TextView;

    move-result-object v8

    .line 169
    invoke-virtual/range {v22 .. v22}, Lcom/android/exsettings/dashboard/DashboardTileView;->getSwitchView()Landroid/widget/Switch;

    move-result-object v9

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    .line 167
    invoke-direct/range {v2 .. v9}, Lcom/android/exsettings/dashboard/DashboardSummary;->updateTileView(Landroid/content/Context;Landroid/content/res/Resources;Lcom/android/exsettings/dashboard/DashboardTile;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/Switch;)V

    .line 171
    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Lcom/android/exsettings/dashboard/DashboardTileView;->setTile(Lcom/android/exsettings/dashboard/DashboardTile;)V

    .line 173
    iget-wide v2, v5, Lcom/android/exsettings/dashboard/DashboardTile;->id:J

    const-wide/32 v6, 0x7f1302f5

    cmp-long v2, v2, v6

    if-nez v2, :cond_1

    .line 174
    invoke-static/range {p1 .. p1}, Lcom/android/exsettings/Utils;->isAirplaneModeEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    :goto_2
    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lcom/android/exsettings/dashboard/DashboardTileView;->setEnabledTile(Z)V

    .line 176
    :cond_1
    move-object/from16 v0, v22

    invoke-virtual {v12, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 163
    add-int/lit8 v18, v18, 0x1

    goto :goto_1

    .line 174
    :cond_2
    const/4 v2, 0x1

    goto :goto_2

    .line 180
    .end local v5    # "tile":Lcom/android/exsettings/dashboard/DashboardTile;
    .end local v22    # "tileView":Lcom/android/exsettings/dashboard/DashboardTileView;
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/dashboard/DashboardSummary;->mDashboard:Landroid/view/ViewGroup;

    invoke-virtual {v2, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 150
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_0

    .line 182
    .end local v11    # "category":Lcom/android/exsettings/dashboard/DashboardCategory;
    .end local v12    # "categoryContent":Landroid/view/ViewGroup;
    .end local v13    # "categoryLabel":Landroid/widget/TextView;
    .end local v14    # "categoryView":Landroid/view/View;
    .end local v18    # "i":I
    .end local v23    # "tilesCount":I
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v16, v2, v20

    .line 183
    .local v16, "delta":J
    const-string/jumbo v2, "DashboardSummary"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "rebuildUI took: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v16

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, " ms"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    return-void
.end method

.method private sendRebuildUI()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 236
    iget-object v0, p0, Lcom/android/exsettings/dashboard/DashboardSummary;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/android/exsettings/dashboard/DashboardSummary;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 235
    :cond_0
    return-void
.end method

.method private updateTileView(Landroid/content/Context;Landroid/content/res/Resources;Lcom/android/exsettings/dashboard/DashboardTile;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/Switch;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "tile"    # Lcom/android/exsettings/dashboard/DashboardTile;
    .param p4, "tileIcon"    # Landroid/widget/ImageView;
    .param p5, "tileTextView"    # Landroid/widget/TextView;
    .param p6, "statusTextView"    # Landroid/widget/TextView;
    .param p7, "switchBar"    # Landroid/widget/Switch;

    .prologue
    .line 189
    iget-object v4, p3, Lcom/android/exsettings/dashboard/DashboardTile;->iconPkg:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 191
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 192
    iget-object v5, p3, Lcom/android/exsettings/dashboard/DashboardTile;->iconPkg:Ljava/lang/String;

    .line 191
    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v4

    .line 192
    iget v5, p3, Lcom/android/exsettings/dashboard/DashboardTile;->iconRes:I

    const/4 v6, 0x0

    .line 191
    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 193
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    iget-object v4, p3, Lcom/android/exsettings/dashboard/DashboardTile;->iconPkg:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    if-eqz v0, :cond_1

    .line 195
    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    .line 196
    .local v3, "tintColorValue":Landroid/util/TypedValue;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e003d

    .line 197
    const/4 v6, 0x1

    .line 196
    invoke-virtual {v4, v5, v3, v6}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 199
    iget v4, v3, Landroid/util/TypedValue;->type:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    .line 200
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    iget v5, v3, Landroid/util/TypedValue;->data:I

    .line 201
    const/4 v6, 0x1

    .line 200
    invoke-virtual {v4, v5, v3, v6}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 203
    :cond_0
    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 204
    iget v4, v3, Landroid/util/TypedValue;->data:I

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 206
    .end local v3    # "tintColorValue":Landroid/util/TypedValue;
    :cond_1
    invoke-virtual {p4, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 218
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :goto_0
    invoke-virtual {p3, p2}, Lcom/android/exsettings/dashboard/DashboardTile;->getTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {p5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 220
    invoke-virtual {p3, p2}, Lcom/android/exsettings/dashboard/DashboardTile;->getSummary(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 221
    .local v2, "summary":Ljava/lang/CharSequence;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 222
    const/4 v4, 0x0

    invoke-virtual {p6, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 223
    invoke-virtual {p6, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 228
    :goto_1
    iget-object v4, p3, Lcom/android/exsettings/dashboard/DashboardTile;->switchControl:Ljava/lang/String;

    if-eqz v4, :cond_5

    .line 229
    const/4 v4, 0x0

    invoke-virtual {p7, v4}, Landroid/widget/Switch;->setVisibility(I)V

    .line 187
    :goto_2
    return-void

    .line 207
    .end local v2    # "summary":Ljava/lang/CharSequence;
    :catch_0
    move-exception v1

    .line 208
    .local v1, "e":Ljava/lang/Exception;
    const/4 v4, 0x0

    invoke-virtual {p4, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 209
    const/4 v4, 0x0

    invoke-virtual {p4, v4}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 211
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    iget v4, p3, Lcom/android/exsettings/dashboard/DashboardTile;->iconRes:I

    if-lez v4, :cond_3

    .line 212
    iget v4, p3, Lcom/android/exsettings/dashboard/DashboardTile;->iconRes:I

    invoke-virtual {p4, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 214
    :cond_3
    const/4 v4, 0x0

    invoke-virtual {p4, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 215
    const/4 v4, 0x0

    invoke-virtual {p4, v4}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 225
    .restart local v2    # "summary":Ljava/lang/CharSequence;
    :cond_4
    const/16 v4, 0x8

    invoke-virtual {p6, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 231
    :cond_5
    const/16 v4, 0x8

    invoke-virtual {p7, v4}, Landroid/widget/Switch;->setVisibility(I)V

    goto :goto_2
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 80
    const/16 v0, 0x23

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 85
    invoke-super {p0, p1}, Lcom/android/exsettings/InstrumentedFragment;->onCreate(Landroid/os/Bundle;)V

    .line 87
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/exsettings/dashboard/DashboardSummary;->setHasOptionsMenu(Z)V

    .line 84
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 92
    invoke-super {p0, p1, p2}, Lcom/android/exsettings/InstrumentedFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 93
    invoke-virtual {p0}, Lcom/android/exsettings/dashboard/DashboardSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 94
    invoke-virtual {p0}, Lcom/android/exsettings/dashboard/DashboardSummary;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 93
    const v2, 0x7f0c0dcf

    invoke-static {v0, p1, v2, v1}, Lcom/android/exsettings/HelpUtils;->prepareHelpMenuItem(Landroid/app/Activity;Landroid/view/Menu;ILjava/lang/String;)Z

    .line 91
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 126
    iput-object p1, p0, Lcom/android/exsettings/dashboard/DashboardSummary;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 128
    const v1, 0x7f040041

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 129
    .local v0, "rootView":Landroid/view/View;
    const v1, 0x7f13008b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/exsettings/dashboard/DashboardSummary;->mDashboard:Landroid/view/ViewGroup;

    .line 131
    return-object v0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 117
    invoke-super {p0}, Lcom/android/exsettings/InstrumentedFragment;->onPause()V

    .line 119
    invoke-virtual {p0}, Lcom/android/exsettings/dashboard/DashboardSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/exsettings/dashboard/DashboardSummary;->mHomePackageReceiver:Lcom/android/exsettings/dashboard/DashboardSummary$HomePackageReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 116
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 99
    invoke-super {p0}, Lcom/android/exsettings/InstrumentedFragment;->onResume()V

    .line 101
    invoke-direct {p0}, Lcom/android/exsettings/dashboard/DashboardSummary;->sendRebuildUI()V

    .line 103
    new-instance v1, Landroid/content/IntentFilter;

    const-string/jumbo v2, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 104
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 105
    const-string/jumbo v2, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 106
    const-string/jumbo v2, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 107
    const-string/jumbo v2, "package"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p0}, Lcom/android/exsettings/dashboard/DashboardSummary;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/exsettings/dashboard/DashboardSummary;->mHomePackageReceiver:Lcom/android/exsettings/dashboard/DashboardSummary$HomePackageReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 111
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v2, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 112
    .local v0, "airplaneModeFilter":Landroid/content/IntentFilter;
    invoke-virtual {p0}, Lcom/android/exsettings/dashboard/DashboardSummary;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/exsettings/dashboard/DashboardSummary;->mHomePackageReceiver:Lcom/android/exsettings/dashboard/DashboardSummary$HomePackageReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 98
    return-void
.end method
