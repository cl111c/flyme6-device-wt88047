.class public abstract Lcom/android/exsettings/SettingsPreferenceFragment;
.super Lcom/android/exsettings/InstrumentedPreferenceFragment;
.source "SettingsPreferenceFragment.java"

# interfaces
.implements Lcom/android/exsettings/DialogCreatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exsettings/SettingsPreferenceFragment$SettingsDialogFragment;,
        Lcom/android/exsettings/SettingsPreferenceFragment$1;
    }
.end annotation


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;

.field private mCurrentRootAdapter:Landroid/widget/ListAdapter;

.field private mDataSetObserver:Landroid/database/DataSetObserver;

.field private mDialogFragment:Lcom/android/exsettings/SettingsPreferenceFragment$SettingsDialogFragment;

.field private mFloatingActionButton:Lcom/android/exsettings/widget/FloatingActionButton;

.field private mHelpUri:Ljava/lang/String;

.field private mHighlightDrawable:Landroid/graphics/drawable/Drawable;

.field private mIsDataSetObserverRegistered:Z

.field private mPinnedHeaderFrameLayout:Landroid/view/ViewGroup;

.field private mPreferenceHighlighted:Z

.field private mPreferenceKey:Ljava/lang/String;


# direct methods
.method static synthetic -get0(Lcom/android/exsettings/SettingsPreferenceFragment;)Lcom/android/exsettings/SettingsPreferenceFragment$SettingsDialogFragment;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/exsettings/SettingsPreferenceFragment$SettingsDialogFragment;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/exsettings/SettingsPreferenceFragment;Lcom/android/exsettings/SettingsPreferenceFragment$SettingsDialogFragment;)Lcom/android/exsettings/SettingsPreferenceFragment$SettingsDialogFragment;
    .locals 0

    iput-object p1, p0, Lcom/android/exsettings/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/exsettings/SettingsPreferenceFragment$SettingsDialogFragment;

    return-object p1
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 50
    invoke-direct {p0}, Lcom/android/exsettings/InstrumentedPreferenceFragment;-><init>()V

    .line 67
    iput-boolean v0, p0, Lcom/android/exsettings/SettingsPreferenceFragment;->mPreferenceHighlighted:Z

    .line 71
    iput-boolean v0, p0, Lcom/android/exsettings/SettingsPreferenceFragment;->mIsDataSetObserverRegistered:Z

    .line 72
    new-instance v0, Lcom/android/exsettings/SettingsPreferenceFragment$1;

    invoke-direct {v0, p0}, Lcom/android/exsettings/SettingsPreferenceFragment$1;-><init>(Lcom/android/exsettings/SettingsPreferenceFragment;)V

    iput-object v0, p0, Lcom/android/exsettings/SettingsPreferenceFragment;->mDataSetObserver:Landroid/database/DataSetObserver;

    .line 50
    return-void
.end method

.method private canUseListViewForHighLighting(Ljava/lang/String;)I
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v3, -0x1

    .line 217
    invoke-virtual {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;->hasListView()Z

    move-result v2

    if-nez v2, :cond_0

    .line 218
    return v3

    .line 221
    :cond_0
    invoke-virtual {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    .line 222
    .local v1, "listView":Landroid/widget/ListView;
    invoke-virtual {v1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 224
    .local v0, "adapter":Landroid/widget/ListAdapter;
    if-eqz v0, :cond_1

    instance-of v2, v0, Landroid/preference/PreferenceGroupAdapter;

    if-eqz v2, :cond_1

    .line 225
    invoke-direct {p0, v0, p1}, Lcom/android/exsettings/SettingsPreferenceFragment;->findListPositionFromKey(Landroid/widget/ListAdapter;Ljava/lang/String;)I

    move-result v2

    return v2

    .line 228
    :cond_1
    return v3
.end method

.method private findListPositionFromKey(Landroid/widget/ListAdapter;Ljava/lang/String;)I
    .locals 6
    .param p1, "adapter"    # Landroid/widget/ListAdapter;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 268
    invoke-interface {p1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    .line 269
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "n":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 270
    invoke-interface {p1, v2}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    .line 271
    .local v1, "item":Ljava/lang/Object;
    instance-of v5, v1, Landroid/preference/Preference;

    if-eqz v5, :cond_0

    move-object v3, v1

    .line 272
    check-cast v3, Landroid/preference/Preference;

    .line 273
    .local v3, "preference":Landroid/preference/Preference;
    invoke-virtual {v3}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    .line 274
    .local v4, "preferenceKey":Ljava/lang/String;
    if-eqz v4, :cond_0

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 275
    return v2

    .line 269
    .end local v3    # "preference":Landroid/preference/Preference;
    .end local v4    # "preferenceKey":Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 279
    .end local v1    # "item":Ljava/lang/Object;
    :cond_1
    const/4 v5, -0x1

    return v5
.end method

.method private getHighlightDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 207
    iget-object v0, p0, Lcom/android/exsettings/SettingsPreferenceFragment;->mHighlightDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 208
    invoke-virtual {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f020132

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/SettingsPreferenceFragment;->mHighlightDrawable:Landroid/graphics/drawable/Drawable;

    .line 210
    :cond_0
    iget-object v0, p0, Lcom/android/exsettings/SettingsPreferenceFragment;->mHighlightDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private highlightPreference(Ljava/lang/String;)V
    .locals 5
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 232
    invoke-direct {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;->getHighlightDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 234
    .local v1, "highlight":Landroid/graphics/drawable/Drawable;
    invoke-direct {p0, p1}, Lcom/android/exsettings/SettingsPreferenceFragment;->canUseListViewForHighLighting(Ljava/lang/String;)I

    move-result v3

    .line 235
    .local v3, "position":I
    if-ltz v3, :cond_0

    .line 236
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/exsettings/SettingsPreferenceFragment;->mPreferenceHighlighted:Z

    .line 238
    invoke-virtual {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v2

    .line 239
    .local v2, "listView":Landroid/widget/ListView;
    invoke-virtual {v2}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .local v0, "adapter":Landroid/widget/ListAdapter;
    move-object v4, v0

    .line 241
    check-cast v4, Landroid/preference/PreferenceGroupAdapter;

    invoke-virtual {v4, v1}, Landroid/preference/PreferenceGroupAdapter;->setHighlightedDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 242
    check-cast v0, Landroid/preference/PreferenceGroupAdapter;

    .end local v0    # "adapter":Landroid/widget/ListAdapter;
    invoke-virtual {v0, v3}, Landroid/preference/PreferenceGroupAdapter;->setHighlighted(I)V

    .line 244
    new-instance v4, Lcom/android/exsettings/SettingsPreferenceFragment$2;

    invoke-direct {v4, p0, v2, v3, v1}, Lcom/android/exsettings/SettingsPreferenceFragment$2;-><init>(Lcom/android/exsettings/SettingsPreferenceFragment;Landroid/widget/ListView;ILandroid/graphics/drawable/Drawable;)V

    invoke-virtual {v2, v4}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    .line 231
    .end local v2    # "listView":Landroid/widget/ListView;
    :cond_0
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 1

    .prologue
    .line 511
    invoke-virtual {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 512
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 513
    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 510
    :cond_0
    return-void
.end method

.method public final finishFragment()V
    .locals 1

    .prologue
    .line 309
    invoke-virtual {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 308
    return-void
.end method

.method protected getContentResolver()Landroid/content/ContentResolver;
    .locals 2

    .prologue
    .line 318
    invoke-virtual {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 319
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 320
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/exsettings/SettingsPreferenceFragment;->mContentResolver:Landroid/content/ContentResolver;

    .line 322
    :cond_0
    iget-object v1, p0, Lcom/android/exsettings/SettingsPreferenceFragment;->mContentResolver:Landroid/content/ContentResolver;

    return-object v1
.end method

.method protected getHelpResource()I
    .locals 1

    .prologue
    .line 294
    const v0, 0x7f0c0dce

    return v0
.end method

.method protected getNextButton()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 507
    invoke-virtual {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/exsettings/ButtonBarHandler;

    invoke-interface {v0}, Lcom/android/exsettings/ButtonBarHandler;->getNextButton()Landroid/widget/Button;

    move-result-object v0

    return-object v0
.end method

.method protected getPackageManager()Landroid/content/pm/PackageManager;
    .locals 1

    .prologue
    .line 336
    invoke-virtual {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    return-object v0
.end method

.method protected getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 329
    invoke-virtual {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected hasNextButton()Z
    .locals 1

    .prologue
    .line 503
    invoke-virtual {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/exsettings/ButtonBarHandler;

    invoke-interface {v0}, Lcom/android/exsettings/ButtonBarHandler;->hasNextButton()Z

    move-result v0

    return v0
.end method

.method public highlightPreferenceIfNeeded(Z)V
    .locals 1
    .param p1, "forceHighlight"    # Z

    .prologue
    .line 200
    invoke-virtual {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/exsettings/SettingsPreferenceFragment;->mPreferenceHighlighted:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    .line 201
    :cond_0
    iget-object v0, p0, Lcom/android/exsettings/SettingsPreferenceFragment;->mPreferenceKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 199
    :cond_1
    :goto_0
    return-void

    .line 202
    :cond_2
    iget-object v0, p0, Lcom/android/exsettings/SettingsPreferenceFragment;->mPreferenceKey:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/exsettings/SettingsPreferenceFragment;->highlightPreference(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 139
    invoke-super {p0, p1}, Lcom/android/exsettings/InstrumentedPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 140
    iget-object v0, p0, Lcom/android/exsettings/SettingsPreferenceFragment;->mHelpUri:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 141
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/exsettings/SettingsPreferenceFragment;->setHasOptionsMenu(Z)V

    .line 138
    :cond_0
    return-void
.end method

.method protected onBindPreferences()V
    .locals 0

    .prologue
    .line 158
    invoke-virtual {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;->registerObserverIfNeeded()V

    .line 157
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 89
    invoke-super {p0, p1}, Lcom/android/exsettings/InstrumentedPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 91
    if-eqz p1, :cond_0

    .line 92
    const-string/jumbo v1, "android:preference_highlighted"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/exsettings/SettingsPreferenceFragment;->mPreferenceHighlighted:Z

    .line 96
    :cond_0
    invoke-virtual {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;->getHelpResource()I

    move-result v0

    .line 97
    .local v0, "helpResource":I
    if-eqz v0, :cond_1

    .line 98
    invoke-virtual {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/exsettings/SettingsPreferenceFragment;->mHelpUri:Ljava/lang/String;

    .line 88
    :cond_1
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 1
    .param p1, "dialogId"    # I

    .prologue
    .line 361
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 299
    iget-object v0, p0, Lcom/android/exsettings/SettingsPreferenceFragment;->mHelpUri:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 300
    invoke-virtual {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/exsettings/SettingsPreferenceFragment;->mHelpUri:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, p1, v1, v2}, Lcom/android/exsettings/HelpUtils;->prepareHelpMenuItem(Landroid/app/Activity;Landroid/view/Menu;Ljava/lang/String;Ljava/lang/String;)Z

    .line 298
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 105
    invoke-super {p0, p1, p2, p3}, Lcom/android/exsettings/InstrumentedPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 106
    .local v0, "root":Landroid/view/View;
    const v1, 0x7f1300a7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/exsettings/SettingsPreferenceFragment;->mPinnedHeaderFrameLayout:Landroid/view/ViewGroup;

    .line 107
    const v1, 0x7f13019a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/exsettings/widget/FloatingActionButton;

    iput-object v1, p0, Lcom/android/exsettings/SettingsPreferenceFragment;->mFloatingActionButton:Lcom/android/exsettings/widget/FloatingActionButton;

    .line 108
    return-object v0
.end method

.method public onDetach()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 341
    invoke-virtual {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;->isRemoving()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 342
    iget-object v0, p0, Lcom/android/exsettings/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/exsettings/SettingsPreferenceFragment$SettingsDialogFragment;

    if-eqz v0, :cond_0

    .line 343
    iget-object v0, p0, Lcom/android/exsettings/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/exsettings/SettingsPreferenceFragment$SettingsDialogFragment;

    invoke-virtual {v0}, Lcom/android/exsettings/SettingsPreferenceFragment$SettingsDialogFragment;->dismiss()V

    .line 344
    iput-object v1, p0, Lcom/android/exsettings/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/exsettings/SettingsPreferenceFragment$SettingsDialogFragment;

    .line 347
    :cond_0
    invoke-super {p0}, Lcom/android/exsettings/InstrumentedPreferenceFragment;->onDetach()V

    .line 340
    return-void
.end method

.method public onDialogShowing()V
    .locals 0

    .prologue
    .line 396
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 147
    invoke-super {p0}, Lcom/android/exsettings/InstrumentedPreferenceFragment;->onResume()V

    .line 149
    invoke-virtual {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 150
    .local v0, "args":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 151
    const-string/jumbo v1, ":settings:fragment_args_key"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/exsettings/SettingsPreferenceFragment;->mPreferenceKey:Ljava/lang/String;

    .line 152
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/exsettings/SettingsPreferenceFragment;->highlightPreferenceIfNeeded(Z)V

    .line 146
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 132
    invoke-super {p0, p1}, Lcom/android/exsettings/InstrumentedPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 134
    const-string/jumbo v0, "android:preference_highlighted"

    iget-boolean v1, p0, Lcom/android/exsettings/SettingsPreferenceFragment;->mPreferenceHighlighted:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 131
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 168
    invoke-super {p0}, Lcom/android/exsettings/InstrumentedPreferenceFragment;->onStop()V

    .line 170
    invoke-virtual {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;->unregisterObserverIfNeeded()V

    .line 167
    return-void
.end method

.method protected onUnbindPreferences()V
    .locals 0

    .prologue
    .line 163
    invoke-virtual {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;->unregisterObserverIfNeeded()V

    .line 162
    return-void
.end method

.method public registerObserverIfNeeded()V
    .locals 2

    .prologue
    .line 179
    iget-boolean v0, p0, Lcom/android/exsettings/SettingsPreferenceFragment;->mIsDataSetObserverRegistered:Z

    if-nez v0, :cond_1

    .line 180
    iget-object v0, p0, Lcom/android/exsettings/SettingsPreferenceFragment;->mCurrentRootAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/android/exsettings/SettingsPreferenceFragment;->mCurrentRootAdapter:Landroid/widget/ListAdapter;

    iget-object v1, p0, Lcom/android/exsettings/SettingsPreferenceFragment;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 183
    :cond_0
    invoke-virtual {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getRootAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/SettingsPreferenceFragment;->mCurrentRootAdapter:Landroid/widget/ListAdapter;

    .line 184
    iget-object v0, p0, Lcom/android/exsettings/SettingsPreferenceFragment;->mCurrentRootAdapter:Landroid/widget/ListAdapter;

    iget-object v1, p0, Lcom/android/exsettings/SettingsPreferenceFragment;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 185
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/exsettings/SettingsPreferenceFragment;->mIsDataSetObserverRegistered:Z

    .line 178
    :cond_1
    return-void
.end method

.method protected removeDialog(I)V
    .locals 2
    .param p1, "dialogId"    # I

    .prologue
    const/4 v1, 0x0

    .line 368
    iget-object v0, p0, Lcom/android/exsettings/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/exsettings/SettingsPreferenceFragment$SettingsDialogFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/exsettings/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/exsettings/SettingsPreferenceFragment$SettingsDialogFragment;

    invoke-virtual {v0}, Lcom/android/exsettings/SettingsPreferenceFragment$SettingsDialogFragment;->getDialogId()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 369
    iget-object v0, p0, Lcom/android/exsettings/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/exsettings/SettingsPreferenceFragment$SettingsDialogFragment;

    invoke-virtual {v0}, Lcom/android/exsettings/SettingsPreferenceFragment$SettingsDialogFragment;->dismiss()V

    .line 371
    :cond_0
    iput-object v1, p0, Lcom/android/exsettings/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/exsettings/SettingsPreferenceFragment$SettingsDialogFragment;

    .line 364
    return-void
.end method

.method protected removePreference(Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 283
    invoke-virtual {p0, p1}, Lcom/android/exsettings/SettingsPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 284
    .local v0, "pref":Landroid/preference/Preference;
    if-eqz v0, :cond_0

    .line 285
    invoke-virtual {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 282
    :cond_0
    return-void
.end method

.method protected setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/content/DialogInterface$OnDismissListener;

    .prologue
    .line 391
    iget-object v0, p0, Lcom/android/exsettings/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/exsettings/SettingsPreferenceFragment$SettingsDialogFragment;

    if-eqz v0, :cond_0

    .line 392
    iget-object v0, p0, Lcom/android/exsettings/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/exsettings/SettingsPreferenceFragment$SettingsDialogFragment;

    invoke-static {v0, p1}, Lcom/android/exsettings/SettingsPreferenceFragment$SettingsDialogFragment;->-set0(Lcom/android/exsettings/SettingsPreferenceFragment$SettingsDialogFragment;Landroid/content/DialogInterface$OnDismissListener;)Landroid/content/DialogInterface$OnDismissListener;

    .line 390
    :cond_0
    return-void
.end method

.method public setPinnedHeaderView(I)Landroid/view/View;
    .locals 4
    .param p1, "layoutResId"    # I

    .prologue
    .line 116
    invoke-virtual {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 118
    .local v0, "inflater":Landroid/view/LayoutInflater;
    iget-object v2, p0, Lcom/android/exsettings/SettingsPreferenceFragment;->mPinnedHeaderFrameLayout:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v0, p1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 119
    .local v1, "pinnedHeader":Landroid/view/View;
    invoke-virtual {p0, v1}, Lcom/android/exsettings/SettingsPreferenceFragment;->setPinnedHeaderView(Landroid/view/View;)V

    .line 120
    return-object v1
.end method

.method public setPinnedHeaderView(Landroid/view/View;)V
    .locals 2
    .param p1, "pinnedHeader"    # Landroid/view/View;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/exsettings/SettingsPreferenceFragment;->mPinnedHeaderFrameLayout:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/android/exsettings/SettingsPreferenceFragment;->mPinnedHeaderFrameLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 126
    iget-object v0, p0, Lcom/android/exsettings/SettingsPreferenceFragment;->mPinnedHeaderFrameLayout:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 123
    :cond_0
    return-void
.end method

.method protected showDialog(I)V
    .locals 3
    .param p1, "dialogId"    # I

    .prologue
    .line 353
    iget-object v0, p0, Lcom/android/exsettings/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/exsettings/SettingsPreferenceFragment$SettingsDialogFragment;

    if-eqz v0, :cond_0

    .line 354
    const-string/jumbo v0, "SettingsPreferenceFragment"

    const-string/jumbo v1, "Old dialog fragment not null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    :cond_0
    new-instance v0, Lcom/android/exsettings/SettingsPreferenceFragment$SettingsDialogFragment;

    invoke-direct {v0, p0, p1}, Lcom/android/exsettings/SettingsPreferenceFragment$SettingsDialogFragment;-><init>(Lcom/android/exsettings/DialogCreatable;I)V

    iput-object v0, p0, Lcom/android/exsettings/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/exsettings/SettingsPreferenceFragment$SettingsDialogFragment;

    .line 357
    iget-object v0, p0, Lcom/android/exsettings/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/exsettings/SettingsPreferenceFragment$SettingsDialogFragment;

    invoke-virtual {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/exsettings/SettingsPreferenceFragment$SettingsDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 352
    return-void
.end method

.method public startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z
    .locals 9
    .param p1, "caller"    # Landroid/app/Fragment;
    .param p2, "fragmentClass"    # Ljava/lang/String;
    .param p3, "titleRes"    # I
    .param p4, "requestCode"    # I
    .param p5, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 519
    invoke-virtual {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    .line 520
    .local v8, "activity":Landroid/app/Activity;
    instance-of v2, v8, Lcom/android/exsettings/SettingsActivity;

    if-eqz v2, :cond_0

    move-object v0, v8

    .line 521
    check-cast v0, Lcom/android/exsettings/SettingsActivity;

    .line 522
    .local v0, "sa":Lcom/android/exsettings/SettingsActivity;
    const/4 v4, 0x0

    move-object v1, p2

    move-object v2, p5

    move v3, p3

    move-object v5, p1

    move v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/android/exsettings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 523
    const/4 v2, 0x1

    return v2

    .line 524
    .end local v0    # "sa":Lcom/android/exsettings/SettingsActivity;
    :cond_0
    instance-of v2, v8, Landroid/preference/PreferenceActivity;

    if-eqz v2, :cond_1

    move-object v1, v8

    .line 525
    check-cast v1, Landroid/preference/PreferenceActivity;

    .line 526
    .local v1, "sa":Landroid/preference/PreferenceActivity;
    const/4 v5, 0x0

    move-object v2, p2

    move-object v3, p5

    move v4, p3

    move-object v6, p1

    move v7, p4

    invoke-virtual/range {v1 .. v7}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 527
    const/4 v2, 0x1

    return v2

    .line 529
    .end local v1    # "sa":Landroid/preference/PreferenceActivity;
    :cond_1
    const-string/jumbo v2, "SettingsPreferenceFragment"

    .line 530
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Parent isn\'t SettingsActivity nor PreferenceActivity, thus there\'s no way to launch the given Fragment (name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 532
    const-string/jumbo v4, ", requestCode: "

    .line 530
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 532
    const-string/jumbo v4, ")"

    .line 530
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 529
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    const/4 v2, 0x0

    return v2
.end method

.method public unregisterObserverIfNeeded()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 190
    iget-boolean v0, p0, Lcom/android/exsettings/SettingsPreferenceFragment;->mIsDataSetObserverRegistered:Z

    if-eqz v0, :cond_1

    .line 191
    iget-object v0, p0, Lcom/android/exsettings/SettingsPreferenceFragment;->mCurrentRootAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/android/exsettings/SettingsPreferenceFragment;->mCurrentRootAdapter:Landroid/widget/ListAdapter;

    iget-object v1, p0, Lcom/android/exsettings/SettingsPreferenceFragment;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 193
    iput-object v2, p0, Lcom/android/exsettings/SettingsPreferenceFragment;->mCurrentRootAdapter:Landroid/widget/ListAdapter;

    .line 195
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/exsettings/SettingsPreferenceFragment;->mIsDataSetObserverRegistered:Z

    .line 189
    :cond_1
    return-void
.end method
