.class public Lcom/android/exsettings/print/PrintServiceSettingsFragment;
.super Lcom/android/exsettings/SettingsPreferenceFragment;
.source "PrintServiceSettingsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Lcom/android/exsettings/widget/SwitchBar$OnSwitchChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exsettings/print/PrintServiceSettingsFragment$SettingsContentObserver;,
        Lcom/android/exsettings/print/PrintServiceSettingsFragment$PrintersAdapter;,
        Lcom/android/exsettings/print/PrintServiceSettingsFragment$PrintersLoader;,
        Lcom/android/exsettings/print/PrintServiceSettingsFragment$1;,
        Lcom/android/exsettings/print/PrintServiceSettingsFragment$2;
    }
.end annotation


# instance fields
.field private mAddPrintersIntent:Landroid/content/Intent;

.field private mAddPrintersTitle:Ljava/lang/CharSequence;

.field private mComponentName:Landroid/content/ComponentName;

.field private final mDataObserver:Landroid/database/DataSetObserver;

.field private mEnableWarningMessage:Ljava/lang/CharSequence;

.field private mEnableWarningTitle:Ljava/lang/CharSequence;

.field private mLastUnfilteredItemCount:I

.field private mOldActivityTitle:Ljava/lang/CharSequence;

.field private mPreferenceKey:Ljava/lang/String;

.field private mPrintersAdapter:Lcom/android/exsettings/print/PrintServiceSettingsFragment$PrintersAdapter;

.field private mSearchView:Landroid/widget/SearchView;

.field private mServiceEnabled:Z

.field private final mSettingsContentObserver:Lcom/android/exsettings/print/PrintServiceSettingsFragment$SettingsContentObserver;

.field private mSettingsIntent:Landroid/content/Intent;

.field private mSettingsTitle:Ljava/lang/CharSequence;

.field private mSwitchBar:Lcom/android/exsettings/widget/SwitchBar;

.field private mToggleSwitch:Lcom/android/exsettings/widget/ToggleSwitch;


# direct methods
.method static synthetic -get0(Lcom/android/exsettings/print/PrintServiceSettingsFragment;)Landroid/content/ComponentName;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/print/PrintServiceSettingsFragment;->mComponentName:Landroid/content/ComponentName;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/exsettings/print/PrintServiceSettingsFragment;)Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/print/PrintServiceSettingsFragment;->mEnableWarningMessage:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/exsettings/print/PrintServiceSettingsFragment;)I
    .locals 1

    iget v0, p0, Lcom/android/exsettings/print/PrintServiceSettingsFragment;->mLastUnfilteredItemCount:I

    return v0
.end method

.method static synthetic -get3(Lcom/android/exsettings/print/PrintServiceSettingsFragment;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/print/PrintServiceSettingsFragment;->mPreferenceKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/exsettings/print/PrintServiceSettingsFragment;)Lcom/android/exsettings/print/PrintServiceSettingsFragment$PrintersAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/print/PrintServiceSettingsFragment;->mPrintersAdapter:Lcom/android/exsettings/print/PrintServiceSettingsFragment$PrintersAdapter;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/exsettings/print/PrintServiceSettingsFragment;)Lcom/android/exsettings/widget/SwitchBar;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/print/PrintServiceSettingsFragment;->mSwitchBar:Lcom/android/exsettings/widget/SwitchBar;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/exsettings/print/PrintServiceSettingsFragment;I)I
    .locals 0

    iput p1, p0, Lcom/android/exsettings/print/PrintServiceSettingsFragment;->mLastUnfilteredItemCount:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/exsettings/print/PrintServiceSettingsFragment;)Landroid/content/pm/PackageManager;
    .locals 1

    invoke-virtual {p0}, Lcom/android/exsettings/print/PrintServiceSettingsFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/exsettings/print/PrintServiceSettingsFragment;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "preferenceKey"    # Ljava/lang/String;
    .param p2, "enabled"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/exsettings/print/PrintServiceSettingsFragment;->onPreferenceToggled(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/exsettings/print/PrintServiceSettingsFragment;I)V
    .locals 0
    .param p1, "dialogId"    # I

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/exsettings/print/PrintServiceSettingsFragment;->showDialog(I)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/exsettings/print/PrintServiceSettingsFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/exsettings/print/PrintServiceSettingsFragment;->updateEmptyView()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/exsettings/print/PrintServiceSettingsFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/exsettings/print/PrintServiceSettingsFragment;->updateUiForServiceState()V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;-><init>()V

    .line 86
    new-instance v0, Lcom/android/exsettings/print/PrintServiceSettingsFragment$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/exsettings/print/PrintServiceSettingsFragment$1;-><init>(Lcom/android/exsettings/print/PrintServiceSettingsFragment;Landroid/os/Handler;)V

    .line 85
    iput-object v0, p0, Lcom/android/exsettings/print/PrintServiceSettingsFragment;->mSettingsContentObserver:Lcom/android/exsettings/print/PrintServiceSettingsFragment$SettingsContentObserver;

    .line 93
    new-instance v0, Lcom/android/exsettings/print/PrintServiceSettingsFragment$2;

    invoke-direct {v0, p0}, Lcom/android/exsettings/print/PrintServiceSettingsFragment$2;-><init>(Lcom/android/exsettings/print/PrintServiceSettingsFragment;)V

    iput-object v0, p0, Lcom/android/exsettings/print/PrintServiceSettingsFragment;->mDataObserver:Landroid/database/DataSetObserver;

    .line 78
    return-void
.end method

.method private initComponents()V
    .locals 4

    .prologue
    .line 308
    new-instance v1, Lcom/android/exsettings/print/PrintServiceSettingsFragment$PrintersAdapter;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/exsettings/print/PrintServiceSettingsFragment$PrintersAdapter;-><init>(Lcom/android/exsettings/print/PrintServiceSettingsFragment;Lcom/android/exsettings/print/PrintServiceSettingsFragment$PrintersAdapter;)V

    iput-object v1, p0, Lcom/android/exsettings/print/PrintServiceSettingsFragment;->mPrintersAdapter:Lcom/android/exsettings/print/PrintServiceSettingsFragment$PrintersAdapter;

    .line 309
    iget-object v1, p0, Lcom/android/exsettings/print/PrintServiceSettingsFragment;->mPrintersAdapter:Lcom/android/exsettings/print/PrintServiceSettingsFragment$PrintersAdapter;

    iget-object v2, p0, Lcom/android/exsettings/print/PrintServiceSettingsFragment;->mDataObserver:Landroid/database/DataSetObserver;

    invoke-virtual {v1, v2}, Lcom/android/exsettings/print/PrintServiceSettingsFragment$PrintersAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 311
    invoke-virtual {p0}, Lcom/android/exsettings/print/PrintServiceSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/exsettings/SettingsActivity;

    .line 313
    .local v0, "activity":Lcom/android/exsettings/SettingsActivity;
    invoke-virtual {v0}, Lcom/android/exsettings/SettingsActivity;->getSwitchBar()Lcom/android/exsettings/widget/SwitchBar;

    move-result-object v1

    iput-object v1, p0, Lcom/android/exsettings/print/PrintServiceSettingsFragment;->mSwitchBar:Lcom/android/exsettings/widget/SwitchBar;

    .line 314
    iget-object v1, p0, Lcom/android/exsettings/print/PrintServiceSettingsFragment;->mSwitchBar:Lcom/android/exsettings/widget/SwitchBar;

    invoke-virtual {v1, p0}, Lcom/android/exsettings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/exsettings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 315
    iget-object v1, p0, Lcom/android/exsettings/print/PrintServiceSettingsFragment;->mSwitchBar:Lcom/android/exsettings/widget/SwitchBar;

    invoke-virtual {v1}, Lcom/android/exsettings/widget/SwitchBar;->show()V

    .line 317
    iget-object v1, p0, Lcom/android/exsettings/print/PrintServiceSettingsFragment;->mSwitchBar:Lcom/android/exsettings/widget/SwitchBar;

    invoke-virtual {v1}, Lcom/android/exsettings/widget/SwitchBar;->getSwitch()Lcom/android/exsettings/widget/ToggleSwitch;

    move-result-object v1

    iput-object v1, p0, Lcom/android/exsettings/print/PrintServiceSettingsFragment;->mToggleSwitch:Lcom/android/exsettings/widget/ToggleSwitch;

    .line 318
    iget-object v1, p0, Lcom/android/exsettings/print/PrintServiceSettingsFragment;->mToggleSwitch:Lcom/android/exsettings/widget/ToggleSwitch;

    new-instance v2, Lcom/android/exsettings/print/PrintServiceSettingsFragment$3;

    invoke-direct {v2, p0}, Lcom/android/exsettings/print/PrintServiceSettingsFragment$3;-><init>(Lcom/android/exsettings/print/PrintServiceSettingsFragment;)V

    invoke-virtual {v1, v2}, Lcom/android/exsettings/widget/ToggleSwitch;->setOnBeforeCheckedChangeListener(Lcom/android/exsettings/widget/ToggleSwitch$OnBeforeCheckedChangeListener;)V

    .line 336
    invoke-virtual {p0}, Lcom/android/exsettings/print/PrintServiceSettingsFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 337
    invoke-virtual {p0}, Lcom/android/exsettings/print/PrintServiceSettingsFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/exsettings/print/PrintServiceSettingsFragment;->mPrintersAdapter:Lcom/android/exsettings/print/PrintServiceSettingsFragment$PrintersAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 307
    return-void
.end method

.method private onPreferenceToggled(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "preferenceKey"    # Ljava/lang/String;
    .param p2, "enabled"    # Z

    .prologue
    .line 193
    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 194
    .local v0, "service":Landroid/content/ComponentName;
    invoke-virtual {p0}, Lcom/android/exsettings/print/PrintServiceSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/exsettings/print/PrintSettingsUtils;->readEnabledPrintServices(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    .line 195
    .local v1, "services":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    if-eqz p2, :cond_0

    .line 196
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 200
    :goto_0
    invoke-virtual {p0}, Lcom/android/exsettings/print/PrintServiceSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/android/exsettings/print/PrintSettingsUtils;->writeEnabledPrintServices(Landroid/content/Context;Ljava/util/List;)V

    .line 192
    return-void

    .line 198
    :cond_0
    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private updateEmptyView()V
    .locals 11

    .prologue
    const v10, 0x7f0c0b27

    const v9, 0x7f0c0b1e

    const v8, 0x7f040068

    const/4 v7, 0x0

    .line 246
    invoke-virtual {p0}, Lcom/android/exsettings/print/PrintServiceSettingsFragment;->getListView()Landroid/widget/ListView;

    move-result-object v3

    .line 247
    .local v3, "listView":Landroid/widget/ListView;
    invoke-virtual {v3}, Landroid/widget/ListView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 248
    .local v0, "contentRoot":Landroid/view/ViewGroup;
    invoke-virtual {v3}, Landroid/widget/ListView;->getEmptyView()Landroid/view/View;

    move-result-object v1

    .line 249
    .local v1, "emptyView":Landroid/view/View;
    iget-object v5, p0, Lcom/android/exsettings/print/PrintServiceSettingsFragment;->mToggleSwitch:Lcom/android/exsettings/widget/ToggleSwitch;

    invoke-virtual {v5}, Lcom/android/exsettings/widget/ToggleSwitch;->isChecked()Z

    move-result v5

    if-nez v5, :cond_2

    .line 250
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v5

    const v6, 0x7f130101

    if-eq v5, v6, :cond_0

    .line 251
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 252
    const/4 v1, 0x0

    .line 254
    .end local v1    # "emptyView":Landroid/view/View;
    :cond_0
    if-nez v1, :cond_1

    .line 255
    invoke-virtual {p0}, Lcom/android/exsettings/print/PrintServiceSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    invoke-virtual {v5, v8, v0, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 257
    .restart local v1    # "emptyView":Landroid/view/View;
    const v5, 0x7f130009

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 258
    .local v2, "iconView":Landroid/widget/ImageView;
    invoke-virtual {p0, v10}, Lcom/android/exsettings/print/PrintServiceSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 259
    const v5, 0x7f130039

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 260
    .local v4, "textView":Landroid/widget/TextView;
    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setText(I)V

    .line 261
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 262
    invoke-virtual {v3, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 245
    .end local v1    # "emptyView":Landroid/view/View;
    .end local v2    # "iconView":Landroid/widget/ImageView;
    .end local v4    # "textView":Landroid/widget/TextView;
    :cond_1
    :goto_0
    return-void

    .line 264
    .restart local v1    # "emptyView":Landroid/view/View;
    :cond_2
    iget-object v5, p0, Lcom/android/exsettings/print/PrintServiceSettingsFragment;->mPrintersAdapter:Lcom/android/exsettings/print/PrintServiceSettingsFragment$PrintersAdapter;

    invoke-virtual {v5}, Lcom/android/exsettings/print/PrintServiceSettingsFragment$PrintersAdapter;->getUnfilteredCount()I

    move-result v5

    if-gtz v5, :cond_4

    .line 265
    if-eqz v1, :cond_3

    .line 266
    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v5

    const v6, 0x7f130103

    if-eq v5, v6, :cond_3

    .line 267
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 268
    const/4 v1, 0x0

    .line 270
    .end local v1    # "emptyView":Landroid/view/View;
    :cond_3
    if-nez v1, :cond_1

    .line 271
    invoke-virtual {p0}, Lcom/android/exsettings/print/PrintServiceSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    .line 272
    const v6, 0x7f040069

    .line 271
    invoke-virtual {v5, v6, v0, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 273
    .restart local v1    # "emptyView":Landroid/view/View;
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 274
    invoke-virtual {v3, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    goto :goto_0

    .line 276
    :cond_4
    iget-object v5, p0, Lcom/android/exsettings/print/PrintServiceSettingsFragment;->mPrintersAdapter:Lcom/android/exsettings/print/PrintServiceSettingsFragment$PrintersAdapter;

    invoke-virtual {v5}, Lcom/android/exsettings/print/PrintServiceSettingsFragment$PrintersAdapter;->getCount()I

    move-result v5

    if-gtz v5, :cond_1

    .line 277
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v5

    const v6, 0x7f130101

    if-eq v5, v6, :cond_5

    .line 278
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 279
    const/4 v1, 0x0

    .line 281
    .end local v1    # "emptyView":Landroid/view/View;
    :cond_5
    if-nez v1, :cond_1

    .line 282
    invoke-virtual {p0}, Lcom/android/exsettings/print/PrintServiceSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    invoke-virtual {v5, v8, v0, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 284
    .restart local v1    # "emptyView":Landroid/view/View;
    const v5, 0x7f130009

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 285
    .restart local v2    # "iconView":Landroid/widget/ImageView;
    invoke-virtual {p0, v9}, Lcom/android/exsettings/print/PrintServiceSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 286
    const v5, 0x7f130039

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 287
    .restart local v4    # "textView":Landroid/widget/TextView;
    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setText(I)V

    .line 288
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 289
    invoke-virtual {v3, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    goto :goto_0
.end method

.method private updateUiForArguments()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 347
    invoke-virtual {p0}, Lcom/android/exsettings/print/PrintServiceSettingsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    .line 350
    .local v3, "arguments":Landroid/os/Bundle;
    const-string/jumbo v9, "EXTRA_PREFERENCE_KEY"

    invoke-virtual {v3, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/exsettings/print/PrintServiceSettingsFragment;->mPreferenceKey:Ljava/lang/String;

    .line 353
    const-string/jumbo v9, "EXTRA_CHECKED"

    invoke-virtual {v3, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    .line 354
    .local v4, "enabled":Z
    iget-object v9, p0, Lcom/android/exsettings/print/PrintServiceSettingsFragment;->mSwitchBar:Lcom/android/exsettings/widget/SwitchBar;

    invoke-virtual {v9, v4}, Lcom/android/exsettings/widget/SwitchBar;->setCheckedInternal(Z)V

    .line 357
    const-string/jumbo v9, "EXTRA_SETTINGS_TITLE"

    invoke-virtual {v3, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 359
    .local v8, "settingsTitle":Ljava/lang/String;
    const-string/jumbo v9, "EXTRA_SETTINGS_COMPONENT_NAME"

    .line 358
    invoke-virtual {v3, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 360
    .local v6, "settingsComponentName":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 376
    :cond_0
    :goto_0
    const-string/jumbo v9, "EXTRA_ADD_PRINTERS_TITLE"

    .line 375
    invoke-virtual {v3, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 378
    .local v1, "addPrintersTitle":Ljava/lang/String;
    const-string/jumbo v9, "EXTRA_ADD_PRINTERS_COMPONENT_NAME"

    invoke-virtual {v3, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 379
    .local v0, "addPrintersComponentName":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 380
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 396
    :cond_1
    :goto_1
    const-string/jumbo v9, "EXTRA_ENABLE_WARNING_TITLE"

    .line 395
    invoke-virtual {v3, v9}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v9

    iput-object v9, p0, Lcom/android/exsettings/print/PrintServiceSettingsFragment;->mEnableWarningTitle:Ljava/lang/CharSequence;

    .line 400
    const-string/jumbo v9, "EXTRA_ENABLE_WARNING_MESSAGE"

    .line 399
    invoke-virtual {v3, v9}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v9

    iput-object v9, p0, Lcom/android/exsettings/print/PrintServiceSettingsFragment;->mEnableWarningMessage:Ljava/lang/CharSequence;

    .line 404
    const-string/jumbo v9, "EXTRA_SERVICE_COMPONENT_NAME"

    .line 403
    invoke-virtual {v3, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v9

    iput-object v9, p0, Lcom/android/exsettings/print/PrintServiceSettingsFragment;->mComponentName:Landroid/content/ComponentName;

    .line 406
    const/4 v9, 0x1

    invoke-virtual {p0, v9}, Lcom/android/exsettings/print/PrintServiceSettingsFragment;->setHasOptionsMenu(Z)V

    .line 346
    return-void

    .line 361
    .end local v0    # "addPrintersComponentName":Ljava/lang/String;
    .end local v1    # "addPrintersTitle":Ljava/lang/String;
    :cond_2
    new-instance v9, Landroid/content/Intent;

    const-string/jumbo v10, "android.intent.action.MAIN"

    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 362
    invoke-virtual {v6}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v10

    .line 361
    invoke-virtual {v9, v10}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v7

    .line 363
    .local v7, "settingsIntent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/exsettings/print/PrintServiceSettingsFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    invoke-virtual {v9, v7, v11}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    .line 365
    .local v5, "resolvedActivities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_0

    .line 367
    invoke-interface {v5, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ResolveInfo;

    iget-object v9, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-boolean v9, v9, Landroid/content/pm/ActivityInfo;->exported:Z

    if-eqz v9, :cond_0

    .line 368
    iput-object v8, p0, Lcom/android/exsettings/print/PrintServiceSettingsFragment;->mSettingsTitle:Ljava/lang/CharSequence;

    .line 369
    iput-object v7, p0, Lcom/android/exsettings/print/PrintServiceSettingsFragment;->mSettingsIntent:Landroid/content/Intent;

    goto :goto_0

    .line 381
    .end local v5    # "resolvedActivities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v7    # "settingsIntent":Landroid/content/Intent;
    .restart local v0    # "addPrintersComponentName":Ljava/lang/String;
    .restart local v1    # "addPrintersTitle":Ljava/lang/String;
    :cond_3
    new-instance v9, Landroid/content/Intent;

    const-string/jumbo v10, "android.intent.action.MAIN"

    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 382
    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v10

    .line 381
    invoke-virtual {v9, v10}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v2

    .line 383
    .local v2, "addPritnersIntent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/exsettings/print/PrintServiceSettingsFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    invoke-virtual {v9, v2, v11}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    .line 385
    .restart local v5    # "resolvedActivities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_1

    .line 387
    invoke-interface {v5, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ResolveInfo;

    iget-object v9, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-boolean v9, v9, Landroid/content/pm/ActivityInfo;->exported:Z

    if-eqz v9, :cond_1

    .line 388
    iput-object v1, p0, Lcom/android/exsettings/print/PrintServiceSettingsFragment;->mAddPrintersTitle:Ljava/lang/CharSequence;

    .line 389
    iput-object v2, p0, Lcom/android/exsettings/print/PrintServiceSettingsFragment;->mAddPrintersIntent:Landroid/content/Intent;

    goto/16 :goto_1
.end method

.method private updateUiForServiceState()V
    .locals 3

    .prologue
    .line 295
    invoke-virtual {p0}, Lcom/android/exsettings/print/PrintServiceSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/exsettings/print/PrintSettingsUtils;->readEnabledPrintServices(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 296
    .local v0, "services":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    iget-object v1, p0, Lcom/android/exsettings/print/PrintServiceSettingsFragment;->mComponentName:Landroid/content/ComponentName;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/exsettings/print/PrintServiceSettingsFragment;->mServiceEnabled:Z

    .line 297
    iget-boolean v1, p0, Lcom/android/exsettings/print/PrintServiceSettingsFragment;->mServiceEnabled:Z

    if-eqz v1, :cond_0

    .line 298
    iget-object v1, p0, Lcom/android/exsettings/print/PrintServiceSettingsFragment;->mSwitchBar:Lcom/android/exsettings/widget/SwitchBar;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/exsettings/widget/SwitchBar;->setCheckedInternal(Z)V

    .line 299
    iget-object v1, p0, Lcom/android/exsettings/print/PrintServiceSettingsFragment;->mPrintersAdapter:Lcom/android/exsettings/print/PrintServiceSettingsFragment$PrintersAdapter;

    invoke-virtual {v1}, Lcom/android/exsettings/print/PrintServiceSettingsFragment$PrintersAdapter;->enable()V

    .line 304
    :goto_0
    invoke-virtual {p0}, Lcom/android/exsettings/print/PrintServiceSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 294
    return-void

    .line 301
    :cond_0
    iget-object v1, p0, Lcom/android/exsettings/print/PrintServiceSettingsFragment;->mSwitchBar:Lcom/android/exsettings/widget/SwitchBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/exsettings/widget/SwitchBar;->setCheckedInternal(Z)V

    .line 302
    iget-object v1, p0, Lcom/android/exsettings/print/PrintServiceSettingsFragment;->mPrintersAdapter:Lcom/android/exsettings/print/PrintServiceSettingsFragment$PrintersAdapter;

    invoke-virtual {v1}, Lcom/android/exsettings/print/PrintServiceSettingsFragment$PrintersAdapter;->disable()V

    goto :goto_0
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 145
    const/16 v0, 0x4f

    return v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 227
    packed-switch p2, :pswitch_data_0

    .line 241
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 229
    :pswitch_0
    const/4 v0, 0x1

    .line 230
    .local v0, "checked":Z
    iget-object v1, p0, Lcom/android/exsettings/print/PrintServiceSettingsFragment;->mSwitchBar:Lcom/android/exsettings/widget/SwitchBar;

    invoke-virtual {v1, v0}, Lcom/android/exsettings/widget/SwitchBar;->setCheckedInternal(Z)V

    .line 231
    invoke-virtual {p0}, Lcom/android/exsettings/print/PrintServiceSettingsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "EXTRA_CHECKED"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 232
    iget-object v1, p0, Lcom/android/exsettings/print/PrintServiceSettingsFragment;->mPreferenceKey:Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Lcom/android/exsettings/print/PrintServiceSettingsFragment;->onPreferenceToggled(Ljava/lang/String;Z)V

    .line 225
    :goto_0
    return-void

    .line 235
    .end local v0    # "checked":Z
    :pswitch_1
    const/4 v0, 0x0

    .line 236
    .restart local v0    # "checked":Z
    iget-object v1, p0, Lcom/android/exsettings/print/PrintServiceSettingsFragment;->mSwitchBar:Lcom/android/exsettings/widget/SwitchBar;

    invoke-virtual {v1, v0}, Lcom/android/exsettings/widget/SwitchBar;->setCheckedInternal(Z)V

    .line 237
    invoke-virtual {p0}, Lcom/android/exsettings/print/PrintServiceSettingsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "EXTRA_CHECKED"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 238
    iget-object v1, p0, Lcom/android/exsettings/print/PrintServiceSettingsFragment;->mPreferenceKey:Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Lcom/android/exsettings/print/PrintServiceSettingsFragment;->onPreferenceToggled(Ljava/lang/String;Z)V

    goto :goto_0

    .line 227
    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 150
    invoke-super {p0, p1}, Lcom/android/exsettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 152
    invoke-virtual {p0}, Lcom/android/exsettings/print/PrintServiceSettingsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "EXTRA_TITLE"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 153
    .local v0, "title":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 154
    invoke-virtual {p0}, Lcom/android/exsettings/print/PrintServiceSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 149
    :cond_0
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 4
    .param p1, "dialogId"    # I

    .prologue
    .line 205
    const/4 v1, 0x0

    .line 206
    .local v1, "title":Ljava/lang/CharSequence;
    const/4 v0, 0x0

    .line 207
    .local v0, "message":Ljava/lang/CharSequence;
    packed-switch p1, :pswitch_data_0

    .line 213
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 209
    :pswitch_0
    iget-object v1, p0, Lcom/android/exsettings/print/PrintServiceSettingsFragment;->mEnableWarningTitle:Ljava/lang/CharSequence;

    .line 210
    .local v1, "title":Ljava/lang/CharSequence;
    iget-object v0, p0, Lcom/android/exsettings/print/PrintServiceSettingsFragment;->mEnableWarningMessage:Ljava/lang/CharSequence;

    .line 215
    .local v0, "message":Ljava/lang/CharSequence;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/exsettings/print/PrintServiceSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 218
    const/4 v3, 0x1

    .line 215
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 219
    const v3, 0x104000a

    .line 215
    invoke-virtual {v2, v3, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 220
    const/high16 v3, 0x1040000

    .line 215
    invoke-virtual {v2, v3, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    return-object v2

    .line 207
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 7
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const v6, 0x7f130334

    const v5, 0x7f130333

    const v4, 0x7f130332

    .line 411
    invoke-super {p0, p1, p2}, Lcom/android/exsettings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 412
    const v3, 0x7f140008

    invoke-virtual {p2, v3, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 414
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 415
    .local v0, "addPrinters":Landroid/view/MenuItem;
    iget-boolean v3, p0, Lcom/android/exsettings/print/PrintServiceSettingsFragment;->mServiceEnabled:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/exsettings/print/PrintServiceSettingsFragment;->mAddPrintersTitle:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 419
    :cond_0
    invoke-interface {p1, v5}, Landroid/view/Menu;->removeItem(I)V

    .line 422
    :goto_0
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 423
    .local v2, "settings":Landroid/view/MenuItem;
    iget-boolean v3, p0, Lcom/android/exsettings/print/PrintServiceSettingsFragment;->mServiceEnabled:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/exsettings/print/PrintServiceSettingsFragment;->mSettingsTitle:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 427
    :cond_1
    invoke-interface {p1, v6}, Landroid/view/Menu;->removeItem(I)V

    .line 430
    :goto_1
    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 431
    .local v1, "searchItem":Landroid/view/MenuItem;
    iget-boolean v3, p0, Lcom/android/exsettings/print/PrintServiceSettingsFragment;->mServiceEnabled:Z

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/exsettings/print/PrintServiceSettingsFragment;->mPrintersAdapter:Lcom/android/exsettings/print/PrintServiceSettingsFragment$PrintersAdapter;

    invoke-virtual {v3}, Lcom/android/exsettings/print/PrintServiceSettingsFragment$PrintersAdapter;->getUnfilteredCount()I

    move-result v3

    if-lez v3, :cond_4

    .line 432
    invoke-interface {v1}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/SearchView;

    iput-object v3, p0, Lcom/android/exsettings/print/PrintServiceSettingsFragment;->mSearchView:Landroid/widget/SearchView;

    .line 433
    iget-object v3, p0, Lcom/android/exsettings/print/PrintServiceSettingsFragment;->mSearchView:Landroid/widget/SearchView;

    new-instance v4, Lcom/android/exsettings/print/PrintServiceSettingsFragment$4;

    invoke-direct {v4, p0}, Lcom/android/exsettings/print/PrintServiceSettingsFragment$4;-><init>(Lcom/android/exsettings/print/PrintServiceSettingsFragment;)V

    invoke-virtual {v3, v4}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 445
    iget-object v3, p0, Lcom/android/exsettings/print/PrintServiceSettingsFragment;->mSearchView:Landroid/widget/SearchView;

    new-instance v4, Lcom/android/exsettings/print/PrintServiceSettingsFragment$5;

    invoke-direct {v4, p0}, Lcom/android/exsettings/print/PrintServiceSettingsFragment$5;-><init>(Lcom/android/exsettings/print/PrintServiceSettingsFragment;)V

    invoke-virtual {v3, v4}, Landroid/widget/SearchView;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 410
    :goto_2
    return-void

    .line 416
    .end local v1    # "searchItem":Landroid/view/MenuItem;
    .end local v2    # "settings":Landroid/view/MenuItem;
    :cond_2
    iget-object v3, p0, Lcom/android/exsettings/print/PrintServiceSettingsFragment;->mAddPrintersIntent:Landroid/content/Intent;

    if-eqz v3, :cond_0

    .line 417
    iget-object v3, p0, Lcom/android/exsettings/print/PrintServiceSettingsFragment;->mAddPrintersIntent:Landroid/content/Intent;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    goto :goto_0

    .line 424
    .restart local v2    # "settings":Landroid/view/MenuItem;
    :cond_3
    iget-object v3, p0, Lcom/android/exsettings/print/PrintServiceSettingsFragment;->mSettingsIntent:Landroid/content/Intent;

    if-eqz v3, :cond_1

    .line 425
    iget-object v3, p0, Lcom/android/exsettings/print/PrintServiceSettingsFragment;->mSettingsIntent:Landroid/content/Intent;

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    goto :goto_1

    .line 464
    .restart local v1    # "searchItem":Landroid/view/MenuItem;
    :cond_4
    invoke-interface {p1, v4}, Landroid/view/Menu;->removeItem(I)V

    goto :goto_2
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 184
    iget-object v0, p0, Lcom/android/exsettings/print/PrintServiceSettingsFragment;->mOldActivityTitle:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 185
    invoke-virtual {p0}, Lcom/android/exsettings/print/PrintServiceSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iget-object v1, p0, Lcom/android/exsettings/print/PrintServiceSettingsFragment;->mOldActivityTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 187
    :cond_0
    invoke-super {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;->onDestroyView()V

    .line 188
    iget-object v0, p0, Lcom/android/exsettings/print/PrintServiceSettingsFragment;->mSwitchBar:Lcom/android/exsettings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/exsettings/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/exsettings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 189
    iget-object v0, p0, Lcom/android/exsettings/print/PrintServiceSettingsFragment;->mSwitchBar:Lcom/android/exsettings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/exsettings/widget/SwitchBar;->hide()V

    .line 183
    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 168
    iget-object v0, p0, Lcom/android/exsettings/print/PrintServiceSettingsFragment;->mSettingsContentObserver:Lcom/android/exsettings/print/PrintServiceSettingsFragment$SettingsContentObserver;

    invoke-virtual {p0}, Lcom/android/exsettings/print/PrintServiceSettingsFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/exsettings/print/PrintServiceSettingsFragment$SettingsContentObserver;->unregister(Landroid/content/ContentResolver;)V

    .line 169
    iget-object v0, p0, Lcom/android/exsettings/print/PrintServiceSettingsFragment;->mSearchView:Landroid/widget/SearchView;

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/android/exsettings/print/PrintServiceSettingsFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0, v2}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 172
    :cond_0
    invoke-super {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;->onPause()V

    .line 167
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 160
    invoke-super {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;->onResume()V

    .line 161
    iget-object v0, p0, Lcom/android/exsettings/print/PrintServiceSettingsFragment;->mSettingsContentObserver:Lcom/android/exsettings/print/PrintServiceSettingsFragment$SettingsContentObserver;

    invoke-virtual {p0}, Lcom/android/exsettings/print/PrintServiceSettingsFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/exsettings/print/PrintServiceSettingsFragment$SettingsContentObserver;->register(Landroid/content/ContentResolver;)V

    .line 162
    invoke-direct {p0}, Lcom/android/exsettings/print/PrintServiceSettingsFragment;->updateEmptyView()V

    .line 163
    invoke-direct {p0}, Lcom/android/exsettings/print/PrintServiceSettingsFragment;->updateUiForServiceState()V

    .line 159
    return-void
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 0
    .param p1, "switchView"    # Landroid/widget/Switch;
    .param p2, "isChecked"    # Z

    .prologue
    .line 343
    invoke-direct {p0}, Lcom/android/exsettings/print/PrintServiceSettingsFragment;->updateEmptyView()V

    .line 342
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 177
    invoke-super {p0, p1, p2}, Lcom/android/exsettings/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 178
    invoke-direct {p0}, Lcom/android/exsettings/print/PrintServiceSettingsFragment;->initComponents()V

    .line 179
    invoke-direct {p0}, Lcom/android/exsettings/print/PrintServiceSettingsFragment;->updateUiForArguments()V

    .line 176
    return-void
.end method
