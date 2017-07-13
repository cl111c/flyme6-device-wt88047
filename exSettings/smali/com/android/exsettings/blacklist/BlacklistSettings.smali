.class public Lcom/android/exsettings/blacklist/BlacklistSettings;
.super Landroid/app/ListFragment;
.source "BlacklistSettings.java"

# interfaces
.implements Lcom/android/exsettings/cyanogenmod/BaseSystemSettingSwitchBar$SwitchBarChangeCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exsettings/blacklist/BlacklistSettings$BlacklistAdapter;
    }
.end annotation


# static fields
.field private static final BLACKLIST_PROJECTION:[Ljava/lang/String;


# instance fields
.field private mAdapter:Lcom/android/exsettings/blacklist/BlacklistSettings$BlacklistAdapter;

.field private mContext:Landroid/content/Context;

.field private mCursor:Landroid/database/Cursor;

.field private mEmptyView:Landroid/widget/TextView;

.field private mEnabledSwitch:Lcom/android/exsettings/cyanogenmod/BaseSystemSettingSwitchBar;

.field private mFab:Landroid/view/View;

.field private mLastEnabledState:Z


# direct methods
.method static synthetic -wrap0(Lcom/android/exsettings/blacklist/BlacklistSettings;J)V
    .locals 1
    .param p1, "id"    # J

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/exsettings/blacklist/BlacklistSettings;->showEntryEditDialog(J)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 65
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    .line 66
    const-string/jumbo v1, "_id"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 67
    const-string/jumbo v1, "number"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 68
    const-string/jumbo v1, "phone"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 69
    const-string/jumbo v1, "message"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 65
    sput-object v0, Lcom/android/exsettings/blacklist/BlacklistSettings;->BLACKLIST_PROJECTION:[Ljava/lang/String;

    .line 62
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    return-void
.end method

.method private showEntryEditDialog(J)V
    .locals 3
    .param p1, "id"    # J

    .prologue
    .line 199
    invoke-static {p1, p2}, Lcom/android/exsettings/blacklist/EntryEditDialogFragment;->newInstance(J)Lcom/android/exsettings/blacklist/EntryEditDialogFragment;

    move-result-object v0

    .line 200
    .local v0, "fragment":Lcom/android/exsettings/blacklist/EntryEditDialogFragment;
    invoke-virtual {p0}, Lcom/android/exsettings/blacklist/BlacklistSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v2, "blacklist_edit"

    invoke-virtual {v0, v1, v2}, Lcom/android/exsettings/blacklist/EntryEditDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 198
    return-void
.end method

.method private updateEnabledState()V
    .locals 2

    .prologue
    .line 204
    iget-object v1, p0, Lcom/android/exsettings/blacklist/BlacklistSettings;->mFab:Landroid/view/View;

    iget-boolean v0, p0, Lcom/android/exsettings/blacklist/BlacklistSettings;->mLastEnabledState:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 205
    invoke-virtual {p0}, Lcom/android/exsettings/blacklist/BlacklistSettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/exsettings/blacklist/BlacklistSettings;->mLastEnabledState:Z

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEnabled(Z)V

    .line 206
    invoke-virtual {p0}, Lcom/android/exsettings/blacklist/BlacklistSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 208
    iget-object v1, p0, Lcom/android/exsettings/blacklist/BlacklistSettings;->mEmptyView:Landroid/widget/TextView;

    iget-boolean v0, p0, Lcom/android/exsettings/blacklist/BlacklistSettings;->mLastEnabledState:Z

    if-eqz v0, :cond_1

    .line 209
    const v0, 0x7f0c02f9

    .line 208
    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 211
    iget-object v1, p0, Lcom/android/exsettings/blacklist/BlacklistSettings;->mAdapter:Lcom/android/exsettings/blacklist/BlacklistSettings$BlacklistAdapter;

    iget-boolean v0, p0, Lcom/android/exsettings/blacklist/BlacklistSettings;->mLastEnabledState:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/exsettings/blacklist/BlacklistSettings;->mCursor:Landroid/database/Cursor;

    :goto_2
    invoke-virtual {v1, v0}, Lcom/android/exsettings/blacklist/BlacklistSettings$BlacklistAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 203
    return-void

    .line 204
    :cond_0
    const/16 v0, 0x8

    goto :goto_0

    .line 210
    :cond_1
    const v0, 0x7f0c02fa

    goto :goto_1

    .line 211
    :cond_2
    const/4 v0, 0x0

    goto :goto_2
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x0

    const/4 v3, 0x0

    .line 111
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 113
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/exsettings/blacklist/BlacklistSettings;->setHasOptionsMenu(Z)V

    .line 115
    invoke-virtual {p0}, Lcom/android/exsettings/blacklist/BlacklistSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$Blacklist;->CONTENT_URI:Landroid/net/Uri;

    .line 116
    sget-object v2, Lcom/android/exsettings/blacklist/BlacklistSettings;->BLACKLIST_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    .line 115
    invoke-virtual/range {v0 .. v5}, Landroid/app/Activity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/blacklist/BlacklistSettings;->mCursor:Landroid/database/Cursor;

    .line 117
    new-instance v0, Lcom/android/exsettings/blacklist/BlacklistSettings$BlacklistAdapter;

    invoke-virtual {p0}, Lcom/android/exsettings/blacklist/BlacklistSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, v3}, Lcom/android/exsettings/blacklist/BlacklistSettings$BlacklistAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    iput-object v0, p0, Lcom/android/exsettings/blacklist/BlacklistSettings;->mAdapter:Lcom/android/exsettings/blacklist/BlacklistSettings$BlacklistAdapter;

    .line 119
    invoke-virtual {p0}, Lcom/android/exsettings/blacklist/BlacklistSettings;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x1020004

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/exsettings/blacklist/BlacklistSettings;->mEmptyView:Landroid/widget/TextView;

    .line 121
    invoke-virtual {p0}, Lcom/android/exsettings/blacklist/BlacklistSettings;->getListView()Landroid/widget/ListView;

    move-result-object v7

    .line 122
    .local v7, "listView":Landroid/widget/ListView;
    iget-object v0, p0, Lcom/android/exsettings/blacklist/BlacklistSettings;->mAdapter:Lcom/android/exsettings/blacklist/BlacklistSettings$BlacklistAdapter;

    invoke-virtual {v7, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 123
    iget-object v0, p0, Lcom/android/exsettings/blacklist/BlacklistSettings;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v7, v0}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 127
    invoke-virtual {p0}, Lcom/android/exsettings/blacklist/BlacklistSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 128
    const v1, 0x7f040067

    .line 127
    invoke-virtual {v0, v1, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    .line 129
    .local v6, "footer":Landroid/view/View;
    invoke-virtual {v7, v6}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 130
    invoke-virtual {v7, v8}, Landroid/widget/ListView;->setFooterDividersEnabled(Z)V

    .line 131
    invoke-virtual {v6, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 87
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 88
    invoke-virtual {p0}, Lcom/android/exsettings/blacklist/BlacklistSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/blacklist/BlacklistSettings;->mContext:Landroid/content/Context;

    .line 86
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 136
    invoke-super {p0, p1, p2}, Landroid/app/ListFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 137
    const v0, 0x7f140002

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 135
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 94
    const v0, 0x7f0400ae

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 187
    invoke-super {p0}, Landroid/app/ListFragment;->onDestroyView()V

    .line 188
    iget-object v0, p0, Lcom/android/exsettings/blacklist/BlacklistSettings;->mEnabledSwitch:Lcom/android/exsettings/cyanogenmod/BaseSystemSettingSwitchBar;

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/android/exsettings/blacklist/BlacklistSettings;->mEnabledSwitch:Lcom/android/exsettings/cyanogenmod/BaseSystemSettingSwitchBar;

    invoke-virtual {v0}, Lcom/android/exsettings/cyanogenmod/BaseSystemSettingSwitchBar;->teardownSwitchBar()V

    .line 186
    :cond_0
    return-void
.end method

.method public onEnablerChanged(Z)V
    .locals 1
    .param p1, "isEnabled"    # Z

    .prologue
    .line 216
    iget-object v0, p0, Lcom/android/exsettings/blacklist/BlacklistSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/telephony/util/BlacklistUtils;->isBlacklistEnabled(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/exsettings/blacklist/BlacklistSettings;->mLastEnabledState:Z

    .line 217
    invoke-direct {p0}, Lcom/android/exsettings/blacklist/BlacklistSettings;->updateEnabledState()V

    .line 215
    return-void
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 0
    .param p1, "l"    # Landroid/widget/ListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 195
    invoke-direct {p0, p4, p5}, Lcom/android/exsettings/blacklist/BlacklistSettings;->showEntryEditDialog(J)V

    .line 194
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 148
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 156
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1

    .line 150
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/exsettings/blacklist/BlacklistSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/exsettings/SettingsActivity;

    .line 151
    .local v0, "pa":Lcom/android/exsettings/SettingsActivity;
    const-class v1, Lcom/android/exsettings/blacklist/BlacklistPreferences;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    move-object v4, v2

    move-object v5, p0

    move v6, v3

    invoke-virtual/range {v0 .. v6}, Lcom/android/exsettings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 153
    const/4 v1, 0x1

    return v1

    .line 148
    :pswitch_data_0
    .packed-switch 0x7f13031c
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 179
    invoke-super {p0}, Landroid/app/ListFragment;->onPause()V

    .line 180
    iget-object v0, p0, Lcom/android/exsettings/blacklist/BlacklistSettings;->mEnabledSwitch:Lcom/android/exsettings/cyanogenmod/BaseSystemSettingSwitchBar;

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/android/exsettings/blacklist/BlacklistSettings;->mEnabledSwitch:Lcom/android/exsettings/cyanogenmod/BaseSystemSettingSwitchBar;

    invoke-virtual {v0}, Lcom/android/exsettings/cyanogenmod/BaseSystemSettingSwitchBar;->pause()V

    .line 178
    :cond_0
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 142
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 143
    const v0, 0x7f13031c

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/exsettings/blacklist/BlacklistSettings;->mLastEnabledState:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 141
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 169
    invoke-super {p0}, Landroid/app/ListFragment;->onResume()V

    .line 171
    invoke-virtual {p0}, Lcom/android/exsettings/blacklist/BlacklistSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/exsettings/SettingsActivity;

    .line 172
    .local v0, "activity":Lcom/android/exsettings/SettingsActivity;
    iget-object v1, p0, Lcom/android/exsettings/blacklist/BlacklistSettings;->mEnabledSwitch:Lcom/android/exsettings/cyanogenmod/BaseSystemSettingSwitchBar;

    if-eqz v1, :cond_0

    .line 173
    iget-object v1, p0, Lcom/android/exsettings/blacklist/BlacklistSettings;->mEnabledSwitch:Lcom/android/exsettings/cyanogenmod/BaseSystemSettingSwitchBar;

    invoke-virtual {v1, v0}, Lcom/android/exsettings/cyanogenmod/BaseSystemSettingSwitchBar;->resume(Landroid/content/Context;)V

    .line 168
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 6

    .prologue
    .line 161
    invoke-super {p0}, Landroid/app/ListFragment;->onStart()V

    .line 162
    invoke-virtual {p0}, Lcom/android/exsettings/blacklist/BlacklistSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/exsettings/SettingsActivity;

    .line 163
    .local v1, "activity":Lcom/android/exsettings/SettingsActivity;
    new-instance v0, Lcom/android/exsettings/cyanogenmod/BaseSystemSettingSwitchBar;

    invoke-virtual {v1}, Lcom/android/exsettings/SettingsActivity;->getSwitchBar()Lcom/android/exsettings/widget/SwitchBar;

    move-result-object v2

    .line 164
    const-string/jumbo v3, "phone_blacklist_enabled"

    const/4 v4, 0x1

    move-object v5, p0

    .line 163
    invoke-direct/range {v0 .. v5}, Lcom/android/exsettings/cyanogenmod/BaseSystemSettingSwitchBar;-><init>(Landroid/content/Context;Lcom/android/exsettings/widget/SwitchBar;Ljava/lang/String;ZLcom/android/exsettings/cyanogenmod/BaseSystemSettingSwitchBar$SwitchBarChangeCallback;)V

    iput-object v0, p0, Lcom/android/exsettings/blacklist/BlacklistSettings;->mEnabledSwitch:Lcom/android/exsettings/cyanogenmod/BaseSystemSettingSwitchBar;

    .line 160
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 99
    invoke-super {p0, p1, p2}, Landroid/app/ListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 100
    const v0, 0x7f130112

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/blacklist/BlacklistSettings;->mFab:Landroid/view/View;

    .line 101
    iget-object v0, p0, Lcom/android/exsettings/blacklist/BlacklistSettings;->mFab:Landroid/view/View;

    new-instance v1, Lcom/android/exsettings/blacklist/BlacklistSettings$1;

    invoke-direct {v1, p0}, Lcom/android/exsettings/blacklist/BlacklistSettings$1;-><init>(Lcom/android/exsettings/blacklist/BlacklistSettings;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    return-void
.end method
