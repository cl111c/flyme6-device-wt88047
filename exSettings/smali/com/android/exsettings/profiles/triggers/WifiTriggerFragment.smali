.class public Lcom/android/exsettings/profiles/triggers/WifiTriggerFragment;
.super Landroid/app/ListFragment;
.source "WifiTriggerFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exsettings/profiles/triggers/WifiTriggerFragment$Trigger;,
        Lcom/android/exsettings/profiles/triggers/WifiTriggerFragment$WifiTriggerAdapter;,
        Lcom/android/exsettings/profiles/triggers/WifiTriggerFragment$WifiTrigger;
    }
.end annotation


# instance fields
.field private mEmptyView:Landroid/view/View;

.field private mListAdapter:Lcom/android/exsettings/profiles/triggers/WifiTriggerFragment$WifiTriggerAdapter;

.field mProfile:Lcyanogenmod/app/Profile;

.field private mProfileManager:Lcyanogenmod/app/ProfileManager;

.field private mTriggers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/exsettings/profiles/triggers/WifiTriggerFragment$WifiTrigger;",
            ">;"
        }
    .end annotation
.end field

.field mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static synthetic -get0(Lcom/android/exsettings/profiles/triggers/WifiTriggerFragment;)Lcyanogenmod/app/ProfileManager;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/profiles/triggers/WifiTriggerFragment;->mProfileManager:Lcyanogenmod/app/ProfileManager;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/exsettings/profiles/triggers/WifiTriggerFragment;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/profiles/triggers/WifiTriggerFragment;->mTriggers:Ljava/util/List;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/exsettings/profiles/triggers/WifiTriggerFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/exsettings/profiles/triggers/WifiTriggerFragment;->reloadTriggerListItems()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 65
    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/exsettings/profiles/triggers/WifiTriggerFragment;->mTriggers:Ljava/util/List;

    .line 65
    return-void
.end method

.method private initPreference(Lcom/android/exsettings/profiles/triggers/AbstractTriggerItem;ILandroid/content/res/Resources;I)V
    .locals 3
    .param p1, "pref"    # Lcom/android/exsettings/profiles/triggers/AbstractTriggerItem;
    .param p2, "state"    # I
    .param p3, "res"    # Landroid/content/res/Resources;
    .param p4, "icon"    # I

    .prologue
    .line 113
    const v2, 0x7f0a0078

    invoke-virtual {p3, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 114
    .local v1, "values":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 115
    aget-object v2, v1, v0

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-ne v2, p2, :cond_1

    .line 116
    const v2, 0x7f0a0077

    invoke-virtual {p3, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Lcom/android/exsettings/profiles/triggers/AbstractTriggerItem;->setSummary(Ljava/lang/String;)V

    .line 120
    :cond_0
    invoke-virtual {p1, p2}, Lcom/android/exsettings/profiles/triggers/AbstractTriggerItem;->setTriggerState(I)V

    .line 121
    invoke-virtual {p1, p4}, Lcom/android/exsettings/profiles/triggers/AbstractTriggerItem;->setIcon(I)V

    .line 112
    return-void

    .line 114
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private reloadTriggerListItems()V
    .locals 13

    .prologue
    const v12, 0x7f020114

    const/4 v11, 0x0

    .line 196
    iget-object v9, p0, Lcom/android/exsettings/profiles/triggers/WifiTriggerFragment;->mTriggers:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->clear()V

    .line 197
    invoke-virtual {p0}, Lcom/android/exsettings/profiles/triggers/WifiTriggerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 198
    .local v4, "res":Landroid/content/res/Resources;
    iget-object v9, p0, Lcom/android/exsettings/profiles/triggers/WifiTriggerFragment;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v9}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v3

    .line 200
    .local v3, "configs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-eqz v3, :cond_0

    .line 201
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "config$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    .line 202
    .local v1, "config":Landroid/net/wifi/WifiConfiguration;
    new-instance v0, Lcom/android/exsettings/profiles/triggers/WifiTriggerFragment$WifiTrigger;

    invoke-direct {v0, v1}, Lcom/android/exsettings/profiles/triggers/WifiTriggerFragment$WifiTrigger;-><init>(Landroid/net/wifi/WifiConfiguration;)V

    .line 203
    .local v0, "accessPoint":Lcom/android/exsettings/profiles/triggers/WifiTriggerFragment$WifiTrigger;
    iget-object v9, p0, Lcom/android/exsettings/profiles/triggers/WifiTriggerFragment;->mProfile:Lcyanogenmod/app/Profile;

    .line 204
    invoke-virtual {v0}, Lcom/android/exsettings/profiles/triggers/WifiTriggerFragment$WifiTrigger;->getSSID()Ljava/lang/String;

    move-result-object v10

    .line 203
    invoke-virtual {v9, v11, v10}, Lcyanogenmod/app/Profile;->getTriggerState(ILjava/lang/String;)I

    move-result v5

    .line 205
    .local v5, "state":I
    invoke-direct {p0, v0, v5, v4, v12}, Lcom/android/exsettings/profiles/triggers/WifiTriggerFragment;->initPreference(Lcom/android/exsettings/profiles/triggers/AbstractTriggerItem;ILandroid/content/res/Resources;I)V

    .line 206
    iget-object v9, p0, Lcom/android/exsettings/profiles/triggers/WifiTriggerFragment;->mTriggers:Ljava/util/List;

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 210
    .end local v0    # "accessPoint":Lcom/android/exsettings/profiles/triggers/WifiTriggerFragment$WifiTrigger;
    .end local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v2    # "config$iterator":Ljava/util/Iterator;
    .end local v5    # "state":I
    :cond_0
    iget-object v9, p0, Lcom/android/exsettings/profiles/triggers/WifiTriggerFragment;->mProfile:Lcyanogenmod/app/Profile;

    invoke-virtual {v9, v11}, Lcyanogenmod/app/Profile;->getTriggersFromType(I)Ljava/util/ArrayList;

    move-result-object v8

    .line 211
    .local v8, "triggers":Ljava/util/List;, "Ljava/util/List<Lcyanogenmod/app/Profile$ProfileTrigger;>;"
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "trigger$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcyanogenmod/app/Profile$ProfileTrigger;

    .line 212
    .local v6, "trigger":Lcyanogenmod/app/Profile$ProfileTrigger;
    new-instance v0, Lcom/android/exsettings/profiles/triggers/WifiTriggerFragment$WifiTrigger;

    invoke-virtual {v6}, Lcyanogenmod/app/Profile$ProfileTrigger;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v0, v9}, Lcom/android/exsettings/profiles/triggers/WifiTriggerFragment$WifiTrigger;-><init>(Ljava/lang/String;)V

    .line 213
    .restart local v0    # "accessPoint":Lcom/android/exsettings/profiles/triggers/WifiTriggerFragment$WifiTrigger;
    invoke-virtual {v6}, Lcyanogenmod/app/Profile$ProfileTrigger;->getState()I

    move-result v9

    invoke-direct {p0, v0, v9, v4, v12}, Lcom/android/exsettings/profiles/triggers/WifiTriggerFragment;->initPreference(Lcom/android/exsettings/profiles/triggers/AbstractTriggerItem;ILandroid/content/res/Resources;I)V

    .line 215
    iget-object v9, p0, Lcom/android/exsettings/profiles/triggers/WifiTriggerFragment;->mTriggers:Ljava/util/List;

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 218
    .end local v0    # "accessPoint":Lcom/android/exsettings/profiles/triggers/WifiTriggerFragment$WifiTrigger;
    .end local v6    # "trigger":Lcyanogenmod/app/Profile$ProfileTrigger;
    .end local v7    # "trigger$iterator":Ljava/util/Iterator;
    .end local v8    # "triggers":Ljava/util/List;, "Ljava/util/List<Lcyanogenmod/app/Profile$ProfileTrigger;>;"
    :cond_1
    iget-object v9, p0, Lcom/android/exsettings/profiles/triggers/WifiTriggerFragment;->mListAdapter:Lcom/android/exsettings/profiles/triggers/WifiTriggerFragment$WifiTriggerAdapter;

    if-eqz v9, :cond_2

    .line 219
    iget-object v9, p0, Lcom/android/exsettings/profiles/triggers/WifiTriggerFragment;->mListAdapter:Lcom/android/exsettings/profiles/triggers/WifiTriggerFragment$WifiTriggerAdapter;

    invoke-virtual {v9}, Lcom/android/exsettings/profiles/triggers/WifiTriggerFragment$WifiTriggerAdapter;->notifyDataSetChanged()V

    .line 195
    :cond_2
    return-void
.end method

.method private removeTrigger(Ljava/util/List;I)V
    .locals 3
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/exsettings/profiles/triggers/WifiTriggerFragment$Trigger;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 179
    .local p1, "triggers":Ljava/util/List;, "Ljava/util/List<Lcom/android/exsettings/profiles/triggers/WifiTriggerFragment$Trigger;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "t$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/exsettings/profiles/triggers/WifiTriggerFragment$Trigger;

    .line 180
    .local v0, "t":Lcom/android/exsettings/profiles/triggers/WifiTriggerFragment$Trigger;
    iget v2, v0, Lcom/android/exsettings/profiles/triggers/WifiTriggerFragment$Trigger;->value:I

    if-ne v2, p2, :cond_0

    .line 181
    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 182
    return-void

    .line 178
    .end local v0    # "t":Lcom/android/exsettings/profiles/triggers/WifiTriggerFragment$Trigger;
    :cond_1
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 189
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 190
    invoke-direct {p0}, Lcom/android/exsettings/profiles/triggers/WifiTriggerFragment;->reloadTriggerListItems()V

    .line 191
    new-instance v0, Lcom/android/exsettings/profiles/triggers/WifiTriggerFragment$WifiTriggerAdapter;

    invoke-virtual {p0}, Lcom/android/exsettings/profiles/triggers/WifiTriggerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/exsettings/profiles/triggers/WifiTriggerFragment$WifiTriggerAdapter;-><init>(Lcom/android/exsettings/profiles/triggers/WifiTriggerFragment;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/exsettings/profiles/triggers/WifiTriggerFragment;->mListAdapter:Lcom/android/exsettings/profiles/triggers/WifiTriggerFragment$WifiTriggerAdapter;

    .line 192
    iget-object v0, p0, Lcom/android/exsettings/profiles/triggers/WifiTriggerFragment;->mListAdapter:Lcom/android/exsettings/profiles/triggers/WifiTriggerFragment$WifiTriggerAdapter;

    invoke-virtual {p0, v0}, Lcom/android/exsettings/profiles/triggers/WifiTriggerFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 188
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 71
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 72
    invoke-virtual {p0}, Lcom/android/exsettings/profiles/triggers/WifiTriggerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 73
    invoke-virtual {p0}, Lcom/android/exsettings/profiles/triggers/WifiTriggerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "Profile"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcyanogenmod/app/Profile;

    iput-object v0, p0, Lcom/android/exsettings/profiles/triggers/WifiTriggerFragment;->mProfile:Lcyanogenmod/app/Profile;

    .line 77
    invoke-virtual {p0}, Lcom/android/exsettings/profiles/triggers/WifiTriggerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcyanogenmod/app/ProfileManager;->getInstance(Landroid/content/Context;)Lcyanogenmod/app/ProfileManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/profiles/triggers/WifiTriggerFragment;->mProfileManager:Lcyanogenmod/app/ProfileManager;

    .line 78
    invoke-virtual {p0}, Lcom/android/exsettings/profiles/triggers/WifiTriggerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/exsettings/profiles/triggers/WifiTriggerFragment;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 70
    return-void

    .line 75
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "no profile!"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 90
    const v1, 0x7f0400e7

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/exsettings/profiles/triggers/WifiTriggerFragment;->mEmptyView:Landroid/view/View;

    .line 91
    iget-object v1, p0, Lcom/android/exsettings/profiles/triggers/WifiTriggerFragment;->mEmptyView:Landroid/view/View;

    new-instance v2, Lcom/android/exsettings/profiles/triggers/WifiTriggerFragment$1;

    invoke-direct {v2, p0}, Lcom/android/exsettings/profiles/triggers/WifiTriggerFragment$1;-><init>(Lcom/android/exsettings/profiles/triggers/WifiTriggerFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    invoke-super {p0, p1, p2, p3}, Landroid/app/ListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 102
    .local v0, "view":Landroid/view/ViewGroup;
    iget-object v1, p0, Lcom/android/exsettings/profiles/triggers/WifiTriggerFragment;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 103
    return-object v0
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 18
    .param p1, "l"    # Landroid/widget/ListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 126
    invoke-super/range {p0 .. p5}, Landroid/app/ListFragment;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    .line 132
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/profiles/triggers/WifiTriggerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0077

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v9

    .line 134
    .local v9, "entries":[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/profiles/triggers/WifiTriggerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0078

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v15

    .line 136
    .local v15, "values":[Ljava/lang/String;
    new-instance v14, Ljava/util/ArrayList;

    array-length v1, v9

    invoke-direct {v14, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 137
    .local v14, "triggers":Ljava/util/List;, "Ljava/util/List<Lcom/android/exsettings/profiles/triggers/WifiTriggerFragment$Trigger;>;"
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    array-length v1, v9

    if-ge v10, v1, :cond_0

    .line 138
    new-instance v13, Lcom/android/exsettings/profiles/triggers/WifiTriggerFragment$Trigger;

    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v1}, Lcom/android/exsettings/profiles/triggers/WifiTriggerFragment$Trigger;-><init>(Lcom/android/exsettings/profiles/triggers/WifiTriggerFragment;Lcom/android/exsettings/profiles/triggers/WifiTriggerFragment$Trigger;)V

    .line 139
    .local v13, "toAdd":Lcom/android/exsettings/profiles/triggers/WifiTriggerFragment$Trigger;
    aget-object v1, v15, v10

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v13, Lcom/android/exsettings/profiles/triggers/WifiTriggerFragment$Trigger;->value:I

    .line 140
    aget-object v1, v9, v10

    iput-object v1, v13, Lcom/android/exsettings/profiles/triggers/WifiTriggerFragment$Trigger;->name:Ljava/lang/String;

    .line 141
    invoke-interface {v14, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 144
    .end local v13    # "toAdd":Lcom/android/exsettings/profiles/triggers/WifiTriggerFragment$Trigger;
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    move/from16 v0, p3

    invoke-interface {v1, v0}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/exsettings/profiles/triggers/WifiTriggerFragment$WifiTrigger;

    .line 145
    .local v11, "pref":Lcom/android/exsettings/profiles/triggers/WifiTriggerFragment$WifiTrigger;
    invoke-virtual {v11}, Lcom/android/exsettings/profiles/triggers/WifiTriggerFragment$WifiTrigger;->getTitle()Ljava/lang/String;

    move-result-object v6

    .line 146
    .local v6, "triggerName":Ljava/lang/String;
    invoke-virtual {v11}, Lcom/android/exsettings/profiles/triggers/WifiTriggerFragment$WifiTrigger;->getSSID()Ljava/lang/String;

    move-result-object v4

    .line 147
    .local v4, "triggerId":Ljava/lang/String;
    const/4 v3, 0x0

    .line 148
    .local v3, "triggerType":I
    const/4 v1, 0x3

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v1}, Lcom/android/exsettings/profiles/triggers/WifiTriggerFragment;->removeTrigger(Ljava/util/List;I)V

    .line 149
    const/4 v1, 0x4

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v1}, Lcom/android/exsettings/profiles/triggers/WifiTriggerFragment;->removeTrigger(Ljava/util/List;I)V

    .line 151
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    new-array v9, v1, [Ljava/lang/String;

    .line 152
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    new-array v5, v1, [I

    .line 153
    .local v5, "valueInts":[I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/exsettings/profiles/triggers/WifiTriggerFragment;->mProfile:Lcyanogenmod/app/Profile;

    invoke-virtual {v1, v3, v4}, Lcyanogenmod/app/Profile;->getTriggerState(ILjava/lang/String;)I

    move-result v8

    .line 154
    .local v8, "currentTriggerState":I
    const/4 v7, -0x1

    .line 155
    .local v7, "currentItem":I
    const/4 v10, 0x0

    :goto_1
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    if-ge v10, v1, :cond_2

    .line 156
    invoke-interface {v14, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/exsettings/profiles/triggers/WifiTriggerFragment$Trigger;

    .line 157
    .local v12, "t":Lcom/android/exsettings/profiles/triggers/WifiTriggerFragment$Trigger;
    iget-object v1, v12, Lcom/android/exsettings/profiles/triggers/WifiTriggerFragment$Trigger;->name:Ljava/lang/String;

    aput-object v1, v9, v10

    .line 158
    iget v1, v12, Lcom/android/exsettings/profiles/triggers/WifiTriggerFragment$Trigger;->value:I

    aput v1, v5, v10

    .line 159
    aget v1, v5, v10

    if-ne v1, v8, :cond_1

    .line 160
    move v7, v10

    .line 155
    :cond_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 164
    .end local v12    # "t":Lcom/android/exsettings/profiles/triggers/WifiTriggerFragment$Trigger;
    :cond_2
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/profiles/triggers/WifiTriggerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 165
    const v2, 0x7f0c008c

    .line 164
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v16

    .line 166
    new-instance v1, Lcom/android/exsettings/profiles/triggers/WifiTriggerFragment$2;

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/exsettings/profiles/triggers/WifiTriggerFragment$2;-><init>(Lcom/android/exsettings/profiles/triggers/WifiTriggerFragment;ILjava/lang/String;[ILjava/lang/String;)V

    .line 164
    move-object/from16 v0, v16

    invoke-virtual {v0, v9, v7, v1}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 125
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 108
    invoke-super {p0}, Landroid/app/ListFragment;->onResume()V

    .line 109
    invoke-direct {p0}, Lcom/android/exsettings/profiles/triggers/WifiTriggerFragment;->reloadTriggerListItems()V

    .line 107
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 84
    invoke-super {p0}, Landroid/app/ListFragment;->onStart()V

    .line 85
    invoke-virtual {p0}, Lcom/android/exsettings/profiles/triggers/WifiTriggerFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/exsettings/profiles/triggers/WifiTriggerFragment;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 83
    return-void
.end method
