.class public Lcom/android/exsettings/nx/WakeLockBlocker;
.super Lcom/android/exsettings/SettingsPreferenceFragment;
.source "WakeLockBlocker.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exsettings/nx/WakeLockBlocker$WakeLockListAdapter;
    }
.end annotation


# instance fields
.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mAlertShown:Z

.field private mBlockedWakeLocks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mBlockerEnabled:Landroid/preference/SwitchPreference;

.field private mEnabled:Z

.field private mInflater:Landroid/view/LayoutInflater;

.field private mListAdapter:Lcom/android/exsettings/nx/WakeLockBlocker$WakeLockListAdapter;

.field private mPreferenceCategory:Landroid/preference/PreferenceCategory;

.field mPreferenceRoot:Landroid/preference/PreferenceScreen;

.field private mSeenWakeLocks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mWakeLockList:Landroid/widget/ListView;

.field private mWakeLockState:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/android/exsettings/nx/WakeLockBlocker;)Landroid/view/LayoutInflater;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/nx/WakeLockBlocker;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/exsettings/nx/WakeLockBlocker;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/nx/WakeLockBlocker;->mSeenWakeLocks:Ljava/util/List;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/exsettings/nx/WakeLockBlocker;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/nx/WakeLockBlocker;->mWakeLockState:Ljava/util/Map;

    return-object v0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;-><init>()V

    .line 76
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/exsettings/nx/WakeLockBlocker;->mAlertShown:Z

    .line 60
    return-void
.end method

.method private isFirstEnable()Z
    .locals 2

    .prologue
    .line 169
    invoke-virtual {p0}, Lcom/android/exsettings/nx/WakeLockBlocker;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 170
    const-string/jumbo v1, "wakelock_blocking_enabled"

    .line 169
    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private reload()V
    .locals 1

    .prologue
    .line 242
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/exsettings/nx/WakeLockBlocker;->mWakeLockState:Ljava/util/Map;

    .line 243
    invoke-direct {p0}, Lcom/android/exsettings/nx/WakeLockBlocker;->updateSeenWakeLocksList()V

    .line 244
    invoke-direct {p0}, Lcom/android/exsettings/nx/WakeLockBlocker;->updateBlockedWakeLocksList()V

    .line 246
    iget-object v0, p0, Lcom/android/exsettings/nx/WakeLockBlocker;->mListAdapter:Lcom/android/exsettings/nx/WakeLockBlocker$WakeLockListAdapter;

    invoke-virtual {v0}, Lcom/android/exsettings/nx/WakeLockBlocker$WakeLockListAdapter;->notifyDataSetChanged()V

    .line 241
    return-void
.end method

.method private save()V
    .locals 7

    .prologue
    .line 224
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 225
    .local v0, "buffer":Ljava/lang/StringBuffer;
    iget-object v4, p0, Lcom/android/exsettings/nx/WakeLockBlocker;->mWakeLockState:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 226
    .local v2, "nextState":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 227
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 228
    .local v1, "name":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/exsettings/nx/WakeLockBlocker;->mWakeLockState:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    .line 229
    .local v3, "state":Ljava/lang/Boolean;
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 230
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "|"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 233
    .end local v1    # "name":Ljava/lang/String;
    .end local v3    # "state":Ljava/lang/Boolean;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    if-lez v4, :cond_2

    .line 234
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 236
    :cond_2
    const-string/jumbo v4, "maxwen"

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    invoke-virtual {p0}, Lcom/android/exsettings/nx/WakeLockBlocker;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 238
    const-string/jumbo v5, "wakelock_blocking_list"

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    .line 237
    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 223
    return-void
.end method

.method private showAlert()V
    .locals 4

    .prologue
    .line 283
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/exsettings/nx/WakeLockBlocker;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/nx/WakeLockBlocker;->mAlertDialog:Landroid/app/AlertDialog;

    .line 284
    iget-object v0, p0, Lcom/android/exsettings/nx/WakeLockBlocker;->mAlertDialog:Landroid/app/AlertDialog;

    const v1, 0x7f0c046e

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 285
    iget-object v0, p0, Lcom/android/exsettings/nx/WakeLockBlocker;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Lcom/android/exsettings/nx/WakeLockBlocker;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c046f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 286
    iget-object v0, p0, Lcom/android/exsettings/nx/WakeLockBlocker;->mAlertDialog:Landroid/app/AlertDialog;

    .line 287
    invoke-virtual {p0}, Lcom/android/exsettings/nx/WakeLockBlocker;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x104000a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 288
    new-instance v2, Lcom/android/exsettings/nx/WakeLockBlocker$1;

    invoke-direct {v2, p0}, Lcom/android/exsettings/nx/WakeLockBlocker$1;-><init>(Lcom/android/exsettings/nx/WakeLockBlocker;)V

    .line 286
    const/4 v3, -0x1

    invoke-virtual {v0, v3, v1, v2}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 293
    iget-object v0, p0, Lcom/android/exsettings/nx/WakeLockBlocker;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 281
    return-void
.end method

.method private updateBlockedWakeLocksList()V
    .locals 7

    .prologue
    .line 203
    invoke-virtual {p0}, Lcom/android/exsettings/nx/WakeLockBlocker;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 204
    const-string/jumbo v4, "wakelock_blocking_list"

    .line 203
    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 206
    .local v0, "blockedWakelockList":Ljava/lang/String;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/exsettings/nx/WakeLockBlocker;->mBlockedWakeLocks:Ljava/util/List;

    .line 208
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    .line 209
    const-string/jumbo v3, "\\|"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 210
    .local v2, "parts":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 211
    iget-object v3, p0, Lcom/android/exsettings/nx/WakeLockBlocker;->mBlockedWakeLocks:Ljava/util/List;

    aget-object v4, v2, v1

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 214
    iget-object v3, p0, Lcom/android/exsettings/nx/WakeLockBlocker;->mSeenWakeLocks:Ljava/util/List;

    aget-object v4, v2, v1

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 215
    iget-object v3, p0, Lcom/android/exsettings/nx/WakeLockBlocker;->mSeenWakeLocks:Ljava/util/List;

    aget-object v4, v2, v1

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 217
    :cond_0
    iget-object v3, p0, Lcom/android/exsettings/nx/WakeLockBlocker;->mWakeLockState:Ljava/util/Map;

    aget-object v4, v2, v1

    new-instance v5, Ljava/lang/Boolean;

    const/4 v6, 0x1

    invoke-direct {v5, v6}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 220
    .end local v1    # "i":I
    .end local v2    # "parts":[Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/android/exsettings/nx/WakeLockBlocker;->mSeenWakeLocks:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 202
    return-void
.end method

.method private updateSeenWakeLocksList()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 187
    invoke-virtual {p0}, Lcom/android/exsettings/nx/WakeLockBlocker;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string/jumbo v5, "power"

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    .line 188
    .local v2, "pm":Landroid/os/PowerManager;
    const-string/jumbo v4, "maxwen"

    invoke-virtual {v2}, Landroid/os/PowerManager;->getSeenWakeLocks()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    invoke-virtual {v2}, Landroid/os/PowerManager;->getSeenWakeLocks()Ljava/lang/String;

    move-result-object v3

    .line 191
    .local v3, "seenWakeLocks":Ljava/lang/String;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/exsettings/nx/WakeLockBlocker;->mSeenWakeLocks:Ljava/util/List;

    .line 193
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_0

    .line 194
    const-string/jumbo v4, "\\|"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 195
    .local v1, "parts":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, v1

    if-ge v0, v4, :cond_0

    .line 196
    iget-object v4, p0, Lcom/android/exsettings/nx/WakeLockBlocker;->mSeenWakeLocks:Ljava/util/List;

    aget-object v5, v1, v0

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 197
    iget-object v4, p0, Lcom/android/exsettings/nx/WakeLockBlocker;->mWakeLockState:Ljava/util/Map;

    aget-object v5, v1, v0

    new-instance v6, Ljava/lang/Boolean;

    invoke-direct {v6, v7}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 186
    .end local v0    # "i":I
    .end local v1    # "parts":[Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private updateSwitches()V
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 174
    iget-object v2, p0, Lcom/android/exsettings/nx/WakeLockBlocker;->mBlockerEnabled:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/exsettings/nx/WakeLockBlocker;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 175
    const-string/jumbo v4, "wakelock_blocking_enabled"

    .line 174
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v0, :cond_0

    :goto_0
    invoke-virtual {v2, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 176
    iget-object v0, p0, Lcom/android/exsettings/nx/WakeLockBlocker;->mBlockerEnabled:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/exsettings/nx/WakeLockBlocker;->mEnabled:Z

    .line 178
    iget-boolean v0, p0, Lcom/android/exsettings/nx/WakeLockBlocker;->mEnabled:Z

    if-eqz v0, :cond_1

    .line 179
    iget-object v0, p0, Lcom/android/exsettings/nx/WakeLockBlocker;->mPreferenceRoot:Landroid/preference/PreferenceScreen;

    iget-object v2, p0, Lcom/android/exsettings/nx/WakeLockBlocker;->mPreferenceCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 183
    :goto_1
    iget-object v0, p0, Lcom/android/exsettings/nx/WakeLockBlocker;->mWakeLockList:Landroid/widget/ListView;

    iget-boolean v2, p0, Lcom/android/exsettings/nx/WakeLockBlocker;->mEnabled:Z

    if-eqz v2, :cond_2

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 173
    return-void

    :cond_0
    move v0, v1

    .line 175
    goto :goto_0

    .line 181
    :cond_1
    iget-object v0, p0, Lcom/android/exsettings/nx/WakeLockBlocker;->mPreferenceRoot:Landroid/preference/PreferenceScreen;

    iget-object v2, p0, Lcom/android/exsettings/nx/WakeLockBlocker;->mPreferenceCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_1

    .line 183
    :cond_2
    const/4 v1, 0x4

    goto :goto_2
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 130
    const v0, -0x7ffffffe

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 152
    invoke-super {p0, p1}, Lcom/android/exsettings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 154
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/exsettings/nx/WakeLockBlocker;->mWakeLockState:Ljava/util/Map;

    .line 155
    invoke-direct {p0}, Lcom/android/exsettings/nx/WakeLockBlocker;->updateSeenWakeLocksList()V

    .line 156
    invoke-direct {p0}, Lcom/android/exsettings/nx/WakeLockBlocker;->updateBlockedWakeLocksList()V

    .line 158
    invoke-virtual {p0}, Lcom/android/exsettings/nx/WakeLockBlocker;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f130283

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/exsettings/nx/WakeLockBlocker;->mWakeLockList:Landroid/widget/ListView;

    .line 160
    new-instance v0, Lcom/android/exsettings/nx/WakeLockBlocker$WakeLockListAdapter;

    invoke-virtual {p0}, Lcom/android/exsettings/nx/WakeLockBlocker;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 162
    iget-object v2, p0, Lcom/android/exsettings/nx/WakeLockBlocker;->mSeenWakeLocks:Ljava/util/List;

    .line 161
    const v3, 0x1090010

    .line 160
    invoke-direct {v0, p0, v1, v3, v2}, Lcom/android/exsettings/nx/WakeLockBlocker$WakeLockListAdapter;-><init>(Lcom/android/exsettings/nx/WakeLockBlocker;Landroid/content/Context;ILjava/util/List;)V

    iput-object v0, p0, Lcom/android/exsettings/nx/WakeLockBlocker;->mListAdapter:Lcom/android/exsettings/nx/WakeLockBlocker$WakeLockListAdapter;

    .line 163
    iget-object v0, p0, Lcom/android/exsettings/nx/WakeLockBlocker;->mWakeLockList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/exsettings/nx/WakeLockBlocker;->mListAdapter:Lcom/android/exsettings/nx/WakeLockBlocker$WakeLockListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 165
    invoke-direct {p0}, Lcom/android/exsettings/nx/WakeLockBlocker;->updateSwitches()V

    .line 151
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 109
    invoke-super {p0, p1}, Lcom/android/exsettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 110
    const-string/jumbo v0, "maxwen"

    const-string/jumbo v1, "running"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    const v0, 0x7f08006e

    invoke-virtual {p0, v0}, Lcom/android/exsettings/nx/WakeLockBlocker;->addPreferencesFromResource(I)V

    .line 112
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/exsettings/nx/WakeLockBlocker;->setHasOptionsMenu(Z)V

    .line 114
    invoke-virtual {p0}, Lcom/android/exsettings/nx/WakeLockBlocker;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/nx/WakeLockBlocker;->mPreferenceRoot:Landroid/preference/PreferenceScreen;

    .line 115
    iget-object v0, p0, Lcom/android/exsettings/nx/WakeLockBlocker;->mPreferenceRoot:Landroid/preference/PreferenceScreen;

    const-string/jumbo v1, "wakelock_blocking_enabled"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/android/exsettings/nx/WakeLockBlocker;->mBlockerEnabled:Landroid/preference/SwitchPreference;

    .line 116
    iget-object v0, p0, Lcom/android/exsettings/nx/WakeLockBlocker;->mBlockerEnabled:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 117
    new-instance v0, Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/exsettings/nx/WakeLockBlocker;->mPreferenceRoot:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/exsettings/nx/WakeLockBlocker;->mPreferenceCategory:Landroid/preference/PreferenceCategory;

    .line 118
    iget-object v0, p0, Lcom/android/exsettings/nx/WakeLockBlocker;->mPreferenceCategory:Landroid/preference/PreferenceCategory;

    const v1, 0x7f0c046c

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    .line 108
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v3, 0x5

    const/4 v2, 0x0

    .line 251
    const/4 v0, 0x1

    const v1, 0x7f0c046d

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 252
    const v1, 0x10803ea

    .line 251
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 253
    const/16 v1, 0x72

    .line 251
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 256
    const/4 v0, 0x2

    const v1, 0x7f0c046b

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 257
    const v1, 0x108004e

    .line 256
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 258
    const/16 v1, 0x73

    .line 256
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 250
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 124
    iput-object p1, p0, Lcom/android/exsettings/nx/WakeLockBlocker;->mInflater:Landroid/view/LayoutInflater;

    .line 125
    const v0, 0x7f040149

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v1, 0x1

    .line 265
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 277
    const/4 v0, 0x0

    return v0

    .line 267
    :pswitch_0
    iget-boolean v0, p0, Lcom/android/exsettings/nx/WakeLockBlocker;->mEnabled:Z

    if-eqz v0, :cond_0

    .line 268
    invoke-direct {p0}, Lcom/android/exsettings/nx/WakeLockBlocker;->reload()V

    .line 270
    :cond_0
    return v1

    .line 272
    :pswitch_1
    iget-boolean v0, p0, Lcom/android/exsettings/nx/WakeLockBlocker;->mEnabled:Z

    if-eqz v0, :cond_1

    .line 273
    invoke-direct {p0}, Lcom/android/exsettings/nx/WakeLockBlocker;->save()V

    .line 275
    :cond_1
    return v1

    .line 265
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "objValue"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 135
    iget-object v3, p0, Lcom/android/exsettings/nx/WakeLockBlocker;->mBlockerEnabled:Landroid/preference/SwitchPreference;

    if-ne p1, v3, :cond_3

    .line 136
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 137
    .local v0, "checked":Z
    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/exsettings/nx/WakeLockBlocker;->isFirstEnable()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/android/exsettings/nx/WakeLockBlocker;->mAlertShown:Z

    if-eqz v3, :cond_2

    .line 141
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/exsettings/nx/WakeLockBlocker;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 142
    const-string/jumbo v4, "wakelock_blocking_enabled"

    if-eqz v0, :cond_1

    move v1, v2

    .line 141
    :cond_1
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 143
    invoke-direct {p0}, Lcom/android/exsettings/nx/WakeLockBlocker;->updateSwitches()V

    .line 144
    return v2

    .line 138
    :cond_2
    invoke-direct {p0}, Lcom/android/exsettings/nx/WakeLockBlocker;->showAlert()V

    .line 139
    iput-boolean v2, p0, Lcom/android/exsettings/nx/WakeLockBlocker;->mAlertShown:Z

    goto :goto_0

    .line 146
    .end local v0    # "checked":Z
    .restart local p2    # "objValue":Ljava/lang/Object;
    :cond_3
    return v1
.end method
