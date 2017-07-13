.class public Lcom/android/exsettings/DreamSettings;
.super Lcom/android/exsettings/SettingsPreferenceFragment;
.source "DreamSettings.java"

# interfaces
.implements Lcom/android/exsettings/widget/SwitchBar$OnSwitchChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exsettings/DreamSettings$DreamInfoAdapter;,
        Lcom/android/exsettings/DreamSettings$PackageReceiver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAdapter:Lcom/android/exsettings/DreamSettings$DreamInfoAdapter;

.field private mBackend:Lcom/android/exsettings/DreamBackend;

.field private mContext:Landroid/content/Context;

.field private mMenuItemsWhenEnabled:[Landroid/view/MenuItem;

.field private final mPackageReceiver:Lcom/android/exsettings/DreamSettings$PackageReceiver;

.field private mRefreshing:Z

.field private mSwitchBar:Lcom/android/exsettings/widget/SwitchBar;


# direct methods
.method static synthetic -get0(Lcom/android/exsettings/DreamSettings;)Lcom/android/exsettings/DreamBackend;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/DreamSettings;->mBackend:Lcom/android/exsettings/DreamBackend;

    return-object v0
.end method

.method static synthetic -wrap0(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    invoke-static {p0, p1}, Lcom/android/exsettings/DreamSettings;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/exsettings/DreamSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/exsettings/DreamSettings;->refreshFromBackend()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const-class v0, Lcom/android/exsettings/DreamSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/exsettings/DreamSettings;->TAG:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;-><init>()V

    .line 59
    new-instance v0, Lcom/android/exsettings/DreamSettings$PackageReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/exsettings/DreamSettings$PackageReceiver;-><init>(Lcom/android/exsettings/DreamSettings;Lcom/android/exsettings/DreamSettings$PackageReceiver;)V

    iput-object v0, p0, Lcom/android/exsettings/DreamSettings;->mPackageReceiver:Lcom/android/exsettings/DreamSettings$PackageReceiver;

    .line 52
    return-void
.end method

.method private createMenuItem(Landroid/view/Menu;IIZLjava/lang/Runnable;)Landroid/view/MenuItem;
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "titleRes"    # I
    .param p3, "actionEnum"    # I
    .param p4, "isEnabled"    # Z
    .param p5, "onClick"    # Ljava/lang/Runnable;

    .prologue
    .line 173
    invoke-interface {p1, p2}, Landroid/view/Menu;->add(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 174
    .local v0, "item":Landroid/view/MenuItem;
    invoke-interface {v0, p3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 175
    invoke-interface {v0, p4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 176
    new-instance v1, Lcom/android/exsettings/DreamSettings$3;

    invoke-direct {v1, p0, p5}, Lcom/android/exsettings/DreamSettings$3;-><init>(Lcom/android/exsettings/DreamSettings;Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 183
    return-object v0
.end method

.method private createWhenToDreamDialog()Landroid/app/Dialog;
    .locals 4

    .prologue
    .line 195
    const/4 v2, 0x3

    new-array v1, v2, [Ljava/lang/CharSequence;

    .line 196
    iget-object v2, p0, Lcom/android/exsettings/DreamSettings;->mContext:Landroid/content/Context;

    const v3, 0x7f0c0812

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 197
    iget-object v2, p0, Lcom/android/exsettings/DreamSettings;->mContext:Landroid/content/Context;

    const v3, 0x7f0c0811

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 198
    iget-object v2, p0, Lcom/android/exsettings/DreamSettings;->mContext:Landroid/content/Context;

    const v3, 0x7f0c0810

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    .line 201
    .local v1, "items":[Ljava/lang/CharSequence;
    iget-object v2, p0, Lcom/android/exsettings/DreamSettings;->mBackend:Lcom/android/exsettings/DreamBackend;

    invoke-virtual {v2}, Lcom/android/exsettings/DreamBackend;->isActivatedOnDock()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/exsettings/DreamSettings;->mBackend:Lcom/android/exsettings/DreamBackend;

    invoke-virtual {v2}, Lcom/android/exsettings/DreamBackend;->isActivatedOnSleep()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x2

    .line 206
    .local v0, "initialSelection":I
    :goto_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/exsettings/DreamSettings;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 207
    const v3, 0x7f0c0815

    .line 206
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 208
    new-instance v3, Lcom/android/exsettings/DreamSettings$4;

    invoke-direct {v3, p0}, Lcom/android/exsettings/DreamSettings$4;-><init>(Lcom/android/exsettings/DreamSettings;)V

    .line 206
    invoke-virtual {v2, v1, v0, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    return-object v2

    .line 202
    .end local v0    # "initialSelection":I
    :cond_0
    iget-object v2, p0, Lcom/android/exsettings/DreamSettings;->mBackend:Lcom/android/exsettings/DreamBackend;

    invoke-virtual {v2}, Lcom/android/exsettings/DreamBackend;->isActivatedOnDock()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x0

    .restart local v0    # "initialSelection":I
    goto :goto_0

    .line 203
    .end local v0    # "initialSelection":I
    :cond_1
    iget-object v2, p0, Lcom/android/exsettings/DreamSettings;->mBackend:Lcom/android/exsettings/DreamBackend;

    invoke-virtual {v2}, Lcom/android/exsettings/DreamBackend;->isActivatedOnSleep()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x1

    .restart local v0    # "initialSelection":I
    goto :goto_0

    .line 204
    .end local v0    # "initialSelection":I
    :cond_2
    const/4 v0, -0x1

    .restart local v0    # "initialSelection":I
    goto :goto_0
.end method

.method public static getSummaryTextWithDreamName(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 256
    new-instance v0, Lcom/android/exsettings/DreamBackend;

    invoke-direct {v0, p0}, Lcom/android/exsettings/DreamBackend;-><init>(Landroid/content/Context;)V

    .line 257
    .local v0, "backend":Lcom/android/exsettings/DreamBackend;
    invoke-virtual {v0}, Lcom/android/exsettings/DreamBackend;->isEnabled()Z

    move-result v1

    .line 258
    .local v1, "isEnabled":Z
    if-nez v1, :cond_0

    .line 259
    const v2, 0x7f0c0813

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 261
    :cond_0
    invoke-virtual {v0}, Lcom/android/exsettings/DreamBackend;->getActiveDreamName()Ljava/lang/CharSequence;

    move-result-object v2

    return-object v2
.end method

.method private static varargs logd(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 283
    return-void
.end method

.method private refreshFromBackend()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 266
    const-string/jumbo v3, "refreshFromBackend()"

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {v3, v5}, Lcom/android/exsettings/DreamSettings;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 267
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/exsettings/DreamSettings;->mRefreshing:Z

    .line 268
    iget-object v3, p0, Lcom/android/exsettings/DreamSettings;->mBackend:Lcom/android/exsettings/DreamBackend;

    invoke-virtual {v3}, Lcom/android/exsettings/DreamBackend;->isEnabled()Z

    move-result v1

    .line 269
    .local v1, "dreamsEnabled":Z
    iget-object v3, p0, Lcom/android/exsettings/DreamSettings;->mSwitchBar:Lcom/android/exsettings/widget/SwitchBar;

    invoke-virtual {v3}, Lcom/android/exsettings/widget/SwitchBar;->isChecked()Z

    move-result v3

    if-eq v3, v1, :cond_0

    .line 270
    iget-object v3, p0, Lcom/android/exsettings/DreamSettings;->mSwitchBar:Lcom/android/exsettings/widget/SwitchBar;

    invoke-virtual {v3, v1}, Lcom/android/exsettings/widget/SwitchBar;->setChecked(Z)V

    .line 272
    :cond_0
    iget-object v3, p0, Lcom/android/exsettings/DreamSettings;->mAdapter:Lcom/android/exsettings/DreamSettings$DreamInfoAdapter;

    invoke-virtual {v3}, Lcom/android/exsettings/DreamSettings$DreamInfoAdapter;->clear()V

    .line 273
    if-eqz v1, :cond_1

    .line 274
    iget-object v3, p0, Lcom/android/exsettings/DreamSettings;->mBackend:Lcom/android/exsettings/DreamBackend;

    invoke-virtual {v3}, Lcom/android/exsettings/DreamBackend;->getDreamInfos()Ljava/util/List;

    move-result-object v0

    .line 275
    .local v0, "dreamInfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/exsettings/DreamBackend$DreamInfo;>;"
    iget-object v3, p0, Lcom/android/exsettings/DreamSettings;->mAdapter:Lcom/android/exsettings/DreamSettings$DreamInfoAdapter;

    invoke-virtual {v3, v0}, Lcom/android/exsettings/DreamSettings$DreamInfoAdapter;->addAll(Ljava/util/Collection;)V

    .line 277
    .end local v0    # "dreamInfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/exsettings/DreamBackend$DreamInfo;>;"
    :cond_1
    iget-object v3, p0, Lcom/android/exsettings/DreamSettings;->mMenuItemsWhenEnabled:[Landroid/view/MenuItem;

    if-eqz v3, :cond_2

    .line 278
    iget-object v5, p0, Lcom/android/exsettings/DreamSettings;->mMenuItemsWhenEnabled:[Landroid/view/MenuItem;

    array-length v6, v5

    move v3, v4

    :goto_0
    if-ge v3, v6, :cond_2

    aget-object v2, v5, v3

    .line 279
    .local v2, "menuItem":Landroid/view/MenuItem;
    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 278
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 280
    .end local v2    # "menuItem":Landroid/view/MenuItem;
    :cond_2
    iput-boolean v4, p0, Lcom/android/exsettings/DreamSettings;->mRefreshing:Z

    .line 265
    return-void
.end method


# virtual methods
.method public getHelpResource()I
    .locals 1

    .prologue
    .line 70
    const v0, 0x7f0c0de6

    return v0
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 82
    const/16 v0, 0x2f

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x1

    .line 120
    const-string/jumbo v3, "onActivityCreated(%s)"

    new-array v4, v6, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-static {v3, v4}, Lcom/android/exsettings/DreamSettings;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 121
    invoke-super {p0, p1}, Lcom/android/exsettings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 123
    invoke-virtual {p0}, Lcom/android/exsettings/DreamSettings;->getListView()Landroid/widget/ListView;

    move-result-object v1

    .line 124
    .local v1, "listView":Landroid/widget/ListView;
    invoke-virtual {v1, v6}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 126
    invoke-virtual {p0}, Lcom/android/exsettings/DreamSettings;->getView()Landroid/view/View;

    move-result-object v3

    const v4, 0x1020004

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 127
    .local v0, "emptyView":Landroid/widget/TextView;
    const v3, 0x7f0c0814

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 128
    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 130
    new-instance v3, Lcom/android/exsettings/DreamSettings$DreamInfoAdapter;

    iget-object v4, p0, Lcom/android/exsettings/DreamSettings;->mContext:Landroid/content/Context;

    invoke-direct {v3, p0, v4}, Lcom/android/exsettings/DreamSettings$DreamInfoAdapter;-><init>(Lcom/android/exsettings/DreamSettings;Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/exsettings/DreamSettings;->mAdapter:Lcom/android/exsettings/DreamSettings$DreamInfoAdapter;

    .line 131
    iget-object v3, p0, Lcom/android/exsettings/DreamSettings;->mAdapter:Lcom/android/exsettings/DreamSettings$DreamInfoAdapter;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 133
    invoke-virtual {p0}, Lcom/android/exsettings/DreamSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/android/exsettings/SettingsActivity;

    .line 134
    .local v2, "sa":Lcom/android/exsettings/SettingsActivity;
    invoke-virtual {v2}, Lcom/android/exsettings/SettingsActivity;->getSwitchBar()Lcom/android/exsettings/widget/SwitchBar;

    move-result-object v3

    iput-object v3, p0, Lcom/android/exsettings/DreamSettings;->mSwitchBar:Lcom/android/exsettings/widget/SwitchBar;

    .line 135
    iget-object v3, p0, Lcom/android/exsettings/DreamSettings;->mSwitchBar:Lcom/android/exsettings/widget/SwitchBar;

    invoke-virtual {v3, p0}, Lcom/android/exsettings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/exsettings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 136
    iget-object v3, p0, Lcom/android/exsettings/DreamSettings;->mSwitchBar:Lcom/android/exsettings/widget/SwitchBar;

    invoke-virtual {v3}, Lcom/android/exsettings/widget/SwitchBar;->show()V

    .line 119
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 75
    const-string/jumbo v0, "onAttach(%s)"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/app/Activity;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/android/exsettings/DreamSettings;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 76
    invoke-super {p0, p1}, Lcom/android/exsettings/SettingsPreferenceFragment;->onAttach(Landroid/app/Activity;)V

    .line 77
    iput-object p1, p0, Lcom/android/exsettings/DreamSettings;->mContext:Landroid/content/Context;

    .line 74
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x1

    .line 87
    const-string/jumbo v0, "onCreate(%s)"

    new-array v1, v3, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/android/exsettings/DreamSettings;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 88
    invoke-super {p0, p1}, Lcom/android/exsettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 90
    new-instance v0, Lcom/android/exsettings/DreamBackend;

    invoke-virtual {p0}, Lcom/android/exsettings/DreamSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/exsettings/DreamBackend;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/exsettings/DreamSettings;->mBackend:Lcom/android/exsettings/DreamBackend;

    .line 92
    invoke-virtual {p0, v3}, Lcom/android/exsettings/DreamSettings;->setHasOptionsMenu(Z)V

    .line 86
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 5
    .param p1, "dialogId"    # I

    .prologue
    const/4 v4, 0x1

    .line 188
    const-string/jumbo v0, "onCreateDialog(%s)"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/android/exsettings/DreamSettings;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 189
    if-ne p1, v4, :cond_0

    .line 190
    invoke-direct {p0}, Lcom/android/exsettings/DreamSettings;->createWhenToDreamDialog()Landroid/app/Dialog;

    move-result-object v0

    return-object v0

    .line 191
    :cond_0
    invoke-super {p0, p1}, Lcom/android/exsettings/SettingsPreferenceFragment;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 8
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v3, 0x0

    .line 141
    const-string/jumbo v0, "onCreateOptionsMenu()"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/exsettings/DreamSettings;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 143
    iget-object v0, p0, Lcom/android/exsettings/DreamSettings;->mBackend:Lcom/android/exsettings/DreamBackend;

    invoke-virtual {v0}, Lcom/android/exsettings/DreamBackend;->isEnabled()Z

    move-result v4

    .line 148
    .local v4, "isEnabled":Z
    new-instance v5, Lcom/android/exsettings/DreamSettings$1;

    invoke-direct {v5, p0}, Lcom/android/exsettings/DreamSettings$1;-><init>(Lcom/android/exsettings/DreamSettings;)V

    .line 146
    const v2, 0x7f0c0816

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/exsettings/DreamSettings;->createMenuItem(Landroid/view/Menu;IIZLjava/lang/Runnable;)Landroid/view/MenuItem;

    move-result-object v6

    .line 159
    .local v6, "start":Landroid/view/MenuItem;
    new-instance v5, Lcom/android/exsettings/DreamSettings$2;

    invoke-direct {v5, p0}, Lcom/android/exsettings/DreamSettings$2;-><init>(Lcom/android/exsettings/DreamSettings;)V

    .line 156
    const v2, 0x7f0c0815

    move-object v0, p0

    move-object v1, p1

    .line 155
    invoke-direct/range {v0 .. v5}, Lcom/android/exsettings/DreamSettings;->createMenuItem(Landroid/view/Menu;IIZLjava/lang/Runnable;)Landroid/view/MenuItem;

    move-result-object v7

    .line 166
    .local v7, "whenToDream":Landroid/view/MenuItem;
    invoke-super {p0, p1, p2}, Lcom/android/exsettings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 168
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/view/MenuItem;

    aput-object v6, v0, v3

    const/4 v1, 0x1

    aput-object v7, v0, v1

    iput-object v0, p0, Lcom/android/exsettings/DreamSettings;->mMenuItemsWhenEnabled:[Landroid/view/MenuItem;

    .line 140
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 111
    const-string/jumbo v0, "onDestroyView()"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/exsettings/DreamSettings;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 112
    invoke-super {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;->onDestroyView()V

    .line 114
    iget-object v0, p0, Lcom/android/exsettings/DreamSettings;->mSwitchBar:Lcom/android/exsettings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/exsettings/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/exsettings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 115
    iget-object v0, p0, Lcom/android/exsettings/DreamSettings;->mSwitchBar:Lcom/android/exsettings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/exsettings/widget/SwitchBar;->hide()V

    .line 110
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 220
    const-string/jumbo v0, "onPause()"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/exsettings/DreamSettings;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 221
    invoke-super {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;->onPause()V

    .line 223
    iget-object v0, p0, Lcom/android/exsettings/DreamSettings;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/exsettings/DreamSettings;->mPackageReceiver:Lcom/android/exsettings/DreamSettings$PackageReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 219
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 228
    const-string/jumbo v1, "onResume()"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/android/exsettings/DreamSettings;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 229
    invoke-super {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;->onResume()V

    .line 230
    invoke-direct {p0}, Lcom/android/exsettings/DreamSettings;->refreshFromBackend()V

    .line 233
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 234
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 235
    const-string/jumbo v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 236
    const-string/jumbo v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 237
    const-string/jumbo v1, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 238
    const-string/jumbo v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 239
    iget-object v1, p0, Lcom/android/exsettings/DreamSettings;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/exsettings/DreamSettings;->mPackageReceiver:Lcom/android/exsettings/DreamSettings$PackageReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 227
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 105
    const-string/jumbo v0, "onStart()"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/exsettings/DreamSettings;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 106
    invoke-super {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;->onStart()V

    .line 104
    return-void
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 1
    .param p1, "switchView"    # Landroid/widget/Switch;
    .param p2, "isChecked"    # Z

    .prologue
    .line 97
    iget-boolean v0, p0, Lcom/android/exsettings/DreamSettings;->mRefreshing:Z

    if-nez v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/android/exsettings/DreamSettings;->mBackend:Lcom/android/exsettings/DreamBackend;

    invoke-virtual {v0, p2}, Lcom/android/exsettings/DreamBackend;->setEnabled(Z)V

    .line 99
    invoke-direct {p0}, Lcom/android/exsettings/DreamSettings;->refreshFromBackend()V

    .line 96
    :cond_0
    return-void
.end method
