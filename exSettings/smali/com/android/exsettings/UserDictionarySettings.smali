.class public Lcom/android/exsettings/UserDictionarySettings;
.super Landroid/app/ListFragment;
.source "UserDictionarySettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exsettings/UserDictionarySettings$MyAdapter;
    }
.end annotation


# static fields
.field private static final QUERY_PROJECTION:[Ljava/lang/String;


# instance fields
.field private mCursor:Landroid/database/Cursor;

.field protected mLocale:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 48
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    .line 49
    const-string/jumbo v1, "_id"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "word"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "shortcut"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 48
    sput-object v0, Lcom/android/exsettings/UserDictionarySettings;->QUERY_PROJECTION:[Ljava/lang/String;

    .line 45
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    return-void
.end method

.method private createAdapter()Landroid/widget/ListAdapter;
    .locals 7

    .prologue
    .line 149
    new-instance v0, Lcom/android/exsettings/UserDictionarySettings$MyAdapter;

    invoke-virtual {p0}, Lcom/android/exsettings/UserDictionarySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 150
    iget-object v3, p0, Lcom/android/exsettings/UserDictionarySettings;->mCursor:Landroid/database/Cursor;

    .line 151
    const/4 v2, 0x2

    new-array v4, v2, [Ljava/lang/String;

    const-string/jumbo v2, "word"

    const/4 v5, 0x0

    aput-object v2, v4, v5

    const-string/jumbo v2, "shortcut"

    const/4 v5, 0x1

    aput-object v2, v4, v5

    .line 152
    const v2, 0x1020014

    const v5, 0x1020015

    filled-new-array {v2, v5}, [I

    move-result-object v5

    .line 150
    const v2, 0x7f040142

    move-object v6, p0

    .line 149
    invoke-direct/range {v0 .. v6}, Lcom/android/exsettings/UserDictionarySettings$MyAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[ILcom/android/exsettings/UserDictionarySettings;)V

    return-object v0
.end method

.method private createCursor(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 7
    .param p1, "locale"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 135
    const-string/jumbo v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    invoke-virtual {p0}, Lcom/android/exsettings/UserDictionarySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget-object v1, Landroid/provider/UserDictionary$Words;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/exsettings/UserDictionarySettings;->QUERY_PROJECTION:[Ljava/lang/String;

    .line 138
    const-string/jumbo v3, "locale is null"

    .line 139
    const-string/jumbo v5, "UPPER(word)"

    .line 137
    invoke-virtual/range {v0 .. v5}, Landroid/app/Activity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    .line 141
    :cond_0
    if-eqz p1, :cond_1

    move-object v6, p1

    .line 142
    .local v6, "queryLocale":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Lcom/android/exsettings/UserDictionarySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget-object v1, Landroid/provider/UserDictionary$Words;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/exsettings/UserDictionarySettings;->QUERY_PROJECTION:[Ljava/lang/String;

    .line 143
    const-string/jumbo v3, "locale=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v6, v4, v5

    .line 144
    const-string/jumbo v5, "UPPER(word)"

    .line 142
    invoke-virtual/range {v0 .. v5}, Landroid/app/Activity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    .line 141
    .end local v6    # "queryLocale":Ljava/lang/String;
    :cond_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "queryLocale":Ljava/lang/String;
    goto :goto_0
.end method

.method public static deleteWord(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentResolver;)V
    .locals 5
    .param p0, "word"    # Ljava/lang/String;
    .param p1, "shortcut"    # Ljava/lang/String;
    .param p2, "resolver"    # Landroid/content/ContentResolver;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 223
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 225
    sget-object v0, Landroid/provider/UserDictionary$Words;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v1, "word=? AND shortcut is null OR shortcut=\'\'"

    .line 226
    new-array v2, v4, [Ljava/lang/String;

    aput-object p0, v2, v3

    .line 224
    invoke-virtual {p2, v0, v1, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 222
    :goto_0
    return-void

    .line 229
    :cond_0
    sget-object v0, Landroid/provider/UserDictionary$Words;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v1, "word=? AND shortcut=?"

    .line 230
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    aput-object p0, v2, v3

    aput-object p1, v2, v4

    .line 228
    invoke-virtual {p2, v0, v1, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getShortcut(I)Ljava/lang/String;
    .locals 3
    .param p1, "position"    # I

    .prologue
    const/4 v1, 0x0

    .line 212
    iget-object v0, p0, Lcom/android/exsettings/UserDictionarySettings;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_0

    return-object v1

    .line 213
    :cond_0
    iget-object v0, p0, Lcom/android/exsettings/UserDictionarySettings;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 215
    iget-object v0, p0, Lcom/android/exsettings/UserDictionarySettings;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-eqz v0, :cond_1

    return-object v1

    .line 217
    :cond_1
    iget-object v0, p0, Lcom/android/exsettings/UserDictionarySettings;->mCursor:Landroid/database/Cursor;

    .line 218
    iget-object v1, p0, Lcom/android/exsettings/UserDictionarySettings;->mCursor:Landroid/database/Cursor;

    const-string/jumbo v2, "shortcut"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 217
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getWord(I)Ljava/lang/String;
    .locals 3
    .param p1, "position"    # I

    .prologue
    const/4 v1, 0x0

    .line 202
    iget-object v0, p0, Lcom/android/exsettings/UserDictionarySettings;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_0

    return-object v1

    .line 203
    :cond_0
    iget-object v0, p0, Lcom/android/exsettings/UserDictionarySettings;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 205
    iget-object v0, p0, Lcom/android/exsettings/UserDictionarySettings;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-eqz v0, :cond_1

    return-object v1

    .line 207
    :cond_1
    iget-object v0, p0, Lcom/android/exsettings/UserDictionarySettings;->mCursor:Landroid/database/Cursor;

    .line 208
    iget-object v1, p0, Lcom/android/exsettings/UserDictionarySettings;->mCursor:Landroid/database/Cursor;

    const-string/jumbo v2, "word"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 207
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private showAddOrEditDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "editingWord"    # Ljava/lang/String;
    .param p2, "editingShortcut"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x0

    .line 188
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 189
    .local v2, "args":Landroid/os/Bundle;
    const-string/jumbo v3, "mode"

    if-nez p1, :cond_0

    .line 190
    const/4 v1, 0x1

    .line 189
    :goto_0
    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 192
    const-string/jumbo v1, "word"

    invoke-virtual {v2, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    const-string/jumbo v1, "shortcut"

    invoke-virtual {v2, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    const-string/jumbo v1, "locale"

    iget-object v3, p0, Lcom/android/exsettings/UserDictionarySettings;->mLocale:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    invoke-virtual {p0}, Lcom/android/exsettings/UserDictionarySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/exsettings/SettingsActivity;

    .line 197
    .local v0, "sa":Lcom/android/exsettings/SettingsActivity;
    const-class v1, Lcom/android/exsettings/inputmethod/UserDictionaryAddWordFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 198
    const v3, 0x7f0c0a5a

    move-object v5, v4

    .line 196
    invoke-virtual/range {v0 .. v6}, Lcom/android/exsettings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 187
    return-void

    .end local v0    # "sa":Lcom/android/exsettings/SettingsActivity;
    :cond_0
    move v1, v6

    .line 191
    goto :goto_0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v9, 0x1

    .line 89
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 91
    invoke-virtual {p0}, Lcom/android/exsettings/UserDictionarySettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 93
    .local v2, "intent":Landroid/content/Intent;
    if-nez v2, :cond_0

    const/4 v6, 0x0

    .line 95
    :goto_0
    invoke-virtual {p0}, Lcom/android/exsettings/UserDictionarySettings;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 97
    .local v0, "arguments":Landroid/os/Bundle;
    if-nez v0, :cond_1

    const/4 v5, 0x0

    .line 100
    :goto_1
    if-eqz v5, :cond_2

    .line 101
    move-object v4, v5

    .line 108
    :goto_2
    iput-object v4, p0, Lcom/android/exsettings/UserDictionarySettings;->mLocale:Ljava/lang/String;

    .line 109
    invoke-direct {p0, v4}, Lcom/android/exsettings/UserDictionarySettings;->createCursor(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    iput-object v7, p0, Lcom/android/exsettings/UserDictionarySettings;->mCursor:Landroid/database/Cursor;

    .line 110
    invoke-virtual {p0}, Lcom/android/exsettings/UserDictionarySettings;->getView()Landroid/view/View;

    move-result-object v7

    const v8, 0x1020004

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 111
    .local v1, "emptyView":Landroid/widget/TextView;
    const v7, 0x7f0c0a67

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(I)V

    .line 113
    invoke-virtual {p0}, Lcom/android/exsettings/UserDictionarySettings;->getListView()Landroid/widget/ListView;

    move-result-object v3

    .line 114
    .local v3, "listView":Landroid/widget/ListView;
    invoke-direct {p0}, Lcom/android/exsettings/UserDictionarySettings;->createAdapter()Landroid/widget/ListAdapter;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 115
    invoke-virtual {v3, v9}, Landroid/widget/ListView;->setFastScrollEnabled(Z)V

    .line 116
    invoke-virtual {v3, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 118
    invoke-virtual {p0, v9}, Lcom/android/exsettings/UserDictionarySettings;->setHasOptionsMenu(Z)V

    .line 120
    invoke-virtual {p0}, Lcom/android/exsettings/UserDictionarySettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v7

    .line 121
    invoke-virtual {p0}, Lcom/android/exsettings/UserDictionarySettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    iget-object v9, p0, Lcom/android/exsettings/UserDictionarySettings;->mLocale:Ljava/lang/String;

    invoke-static {v8, v9}, Lcom/android/exsettings/inputmethod/UserDictionarySettingsUtils;->getLocaleDisplayName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 120
    invoke-virtual {v7, v8}, Landroid/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 88
    return-void

    .line 93
    .end local v0    # "arguments":Landroid/os/Bundle;
    .end local v1    # "emptyView":Landroid/widget/TextView;
    .end local v3    # "listView":Landroid/widget/ListView;
    :cond_0
    const-string/jumbo v7, "locale"

    invoke-virtual {v2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .local v6, "localeFromIntent":Ljava/lang/String;
    goto :goto_0

    .line 97
    .end local v6    # "localeFromIntent":Ljava/lang/String;
    .restart local v0    # "arguments":Landroid/os/Bundle;
    :cond_1
    const-string/jumbo v7, "locale"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .local v5, "localeFromArguments":Ljava/lang/String;
    goto :goto_1

    .line 102
    .end local v5    # "localeFromArguments":Ljava/lang/String;
    :cond_2
    if-eqz v6, :cond_3

    .line 103
    move-object v4, v6

    .local v4, "locale":Ljava/lang/String;
    goto :goto_2

    .line 105
    .end local v4    # "locale":Ljava/lang/String;
    :cond_3
    const/4 v4, 0x0

    .local v4, "locale":Ljava/lang/String;
    goto :goto_2
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 76
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 77
    invoke-virtual {p0}, Lcom/android/exsettings/UserDictionarySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const v1, 0x7f0c0a57

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    .line 75
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v3, 0x0

    .line 167
    const/4 v1, 0x1

    const v2, 0x7f0c0a59

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    .line 168
    const v2, 0x7f02015c

    .line 167
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 169
    .local v0, "actionItem":Landroid/view/MenuItem;
    const/4 v1, 0x5

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 165
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 84
    const v0, 0x10900b0

    const/4 v1, 0x0

    .line 83
    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 2
    .param p1, "l"    # Landroid/widget/ListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 157
    invoke-direct {p0, p3}, Lcom/android/exsettings/UserDictionarySettings;->getWord(I)Ljava/lang/String;

    move-result-object v1

    .line 158
    .local v1, "word":Ljava/lang/String;
    invoke-direct {p0, p3}, Lcom/android/exsettings/UserDictionarySettings;->getShortcut(I)Ljava/lang/String;

    move-result-object v0

    .line 159
    .local v0, "shortcut":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 160
    invoke-direct {p0, v1, v0}, Lcom/android/exsettings/UserDictionarySettings;->showAddOrEditDialog(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 175
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 176
    invoke-direct {p0, v2, v2}, Lcom/android/exsettings/UserDictionarySettings;->showAddOrEditDialog(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    return v1

    .line 179
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
