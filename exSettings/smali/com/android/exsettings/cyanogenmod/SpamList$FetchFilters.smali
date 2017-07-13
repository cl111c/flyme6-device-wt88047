.class Lcom/android/exsettings/cyanogenmod/SpamList$FetchFilters;
.super Landroid/os/AsyncTask;
.source "SpamList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/cyanogenmod/SpamList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FetchFilters"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/List",
        "<",
        "Lcom/android/exsettings/cyanogenmod/SpamList$ItemInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/cyanogenmod/SpamList;


# direct methods
.method private constructor <init>(Lcom/android/exsettings/cyanogenmod/SpamList;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/exsettings/cyanogenmod/SpamList;

    .prologue
    .line 161
    iput-object p1, p0, Lcom/android/exsettings/cyanogenmod/SpamList$FetchFilters;->this$0:Lcom/android/exsettings/cyanogenmod/SpamList;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/exsettings/cyanogenmod/SpamList;Lcom/android/exsettings/cyanogenmod/SpamList$FetchFilters;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/exsettings/cyanogenmod/SpamList;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/exsettings/cyanogenmod/SpamList$FetchFilters;-><init>(Lcom/android/exsettings/cyanogenmod/SpamList;)V

    return-void
.end method

.method private addNotificationsForPackage(Lcom/android/exsettings/cyanogenmod/SpamList$PackageInfo;Ljava/util/List;)V
    .locals 12
    .param p1, "pInfo"    # Lcom/android/exsettings/cyanogenmod/SpamList$PackageInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/exsettings/cyanogenmod/SpamList$PackageInfo;",
            "Ljava/util/List",
            "<",
            "Lcom/android/exsettings/cyanogenmod/SpamList$ItemInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "items":Ljava/util/List;, "Ljava/util/List<Lcom/android/exsettings/cyanogenmod/SpamList$ItemInfo;>;"
    const/4 v2, 0x0

    .line 164
    const-string/jumbo v3, "package_id=?"

    .line 165
    .local v3, "selection":Ljava/lang/String;
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    iget-object v0, p1, Lcom/android/exsettings/cyanogenmod/SpamList$PackageInfo;->id:Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v0, v4, v1

    .line 166
    .local v4, "selectionArgs":[Ljava/lang/String;
    iget-object v0, p0, Lcom/android/exsettings/cyanogenmod/SpamList$FetchFilters;->this$0:Lcom/android/exsettings/cyanogenmod/SpamList;

    invoke-virtual {v0}, Lcom/android/exsettings/cyanogenmod/SpamList;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {}, Lcom/android/exsettings/cyanogenmod/SpamList;->-get0()Landroid/net/Uri;

    move-result-object v1

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 168
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 169
    const-string/jumbo v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 170
    .local v10, "notificationIdIndex":I
    const-string/jumbo v0, "message_text"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 171
    .local v11, "notificationMessageIndex":I
    const-string/jumbo v0, "last_blocked"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 172
    .local v8, "notificationBlockedIndex":I
    const-string/jumbo v0, "count"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 173
    .local v9, "notificationCountIndex":I
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    new-instance v7, Lcom/android/exsettings/cyanogenmod/SpamList$NotificationInfo;

    invoke-direct {v7, v2}, Lcom/android/exsettings/cyanogenmod/SpamList$NotificationInfo;-><init>(Lcom/android/exsettings/cyanogenmod/SpamList$NotificationInfo;)V

    .line 175
    .local v7, "nInfo":Lcom/android/exsettings/cyanogenmod/SpamList$NotificationInfo;
    invoke-interface {v6, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/android/exsettings/cyanogenmod/SpamList$NotificationInfo;->messageText:Ljava/lang/String;

    .line 176
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/android/exsettings/cyanogenmod/SpamList$NotificationInfo;->id:Ljava/lang/String;

    .line 177
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v7, Lcom/android/exsettings/cyanogenmod/SpamList$NotificationInfo;->date:J

    .line 178
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v7, Lcom/android/exsettings/cyanogenmod/SpamList$NotificationInfo;->count:I

    .line 179
    iget-object v0, p1, Lcom/android/exsettings/cyanogenmod/SpamList$PackageInfo;->applicationLabel:Ljava/lang/CharSequence;

    iput-object v0, v7, Lcom/android/exsettings/cyanogenmod/SpamList$NotificationInfo;->appLabel:Ljava/lang/CharSequence;

    .line 180
    invoke-interface {p2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 182
    .end local v7    # "nInfo":Lcom/android/exsettings/cyanogenmod/SpamList$NotificationInfo;
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 163
    .end local v8    # "notificationBlockedIndex":I
    .end local v9    # "notificationCountIndex":I
    .end local v10    # "notificationIdIndex":I
    .end local v11    # "notificationMessageIndex":I
    :cond_1
    return-void
.end method

.method private getAppInfo(Lcom/android/exsettings/cyanogenmod/SpamList$PackageInfo;)V
    .locals 5
    .param p1, "info"    # Lcom/android/exsettings/cyanogenmod/SpamList$PackageInfo;

    .prologue
    .line 208
    const/4 v0, 0x0

    .line 209
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v3, p0, Lcom/android/exsettings/cyanogenmod/SpamList$FetchFilters;->this$0:Lcom/android/exsettings/cyanogenmod/SpamList;

    invoke-virtual {v3}, Lcom/android/exsettings/cyanogenmod/SpamList;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 211
    .local v2, "pm":Landroid/content/pm/PackageManager;
    :try_start_0
    iget-object v3, p1, Lcom/android/exsettings/cyanogenmod/SpamList$PackageInfo;->packageName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 212
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v0, v2}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p1, Lcom/android/exsettings/cyanogenmod/SpamList$PackageInfo;->applicationLabel:Ljava/lang/CharSequence;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 207
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :goto_0
    return-void

    .line 213
    :catch_0
    move-exception v1

    .line 214
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    iget-object v3, p1, Lcom/android/exsettings/cyanogenmod/SpamList$PackageInfo;->packageName:Ljava/lang/String;

    iput-object v3, p1, Lcom/android/exsettings/cyanogenmod/SpamList$PackageInfo;->applicationLabel:Ljava/lang/CharSequence;

    goto :goto_0
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 187
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "params":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/exsettings/cyanogenmod/SpamList$FetchFilters;->doInBackground([Ljava/lang/Void;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/List;
    .locals 11
    .param p1, "params"    # [Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/exsettings/cyanogenmod/SpamList$ItemInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 188
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 189
    .local v7, "items":Ljava/util/List;, "Ljava/util/List<Lcom/android/exsettings/cyanogenmod/SpamList$ItemInfo;>;"
    iget-object v0, p0, Lcom/android/exsettings/cyanogenmod/SpamList$FetchFilters;->this$0:Lcom/android/exsettings/cyanogenmod/SpamList;

    invoke-virtual {v0}, Lcom/android/exsettings/cyanogenmod/SpamList;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 190
    invoke-static {}, Lcom/android/exsettings/cyanogenmod/SpamList;->-get1()Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    .line 189
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 191
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 192
    const-string/jumbo v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 193
    .local v9, "packageIdIndex":I
    const-string/jumbo v0, "package_name"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 194
    .local v10, "packageNameIndex":I
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 195
    new-instance v8, Lcom/android/exsettings/cyanogenmod/SpamList$PackageInfo;

    invoke-direct {v8, v2}, Lcom/android/exsettings/cyanogenmod/SpamList$PackageInfo;-><init>(Lcom/android/exsettings/cyanogenmod/SpamList$PackageInfo;)V

    .line 196
    .local v8, "pInfo":Lcom/android/exsettings/cyanogenmod/SpamList$PackageInfo;
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/android/exsettings/cyanogenmod/SpamList$PackageInfo;->packageName:Ljava/lang/String;

    .line 197
    invoke-direct {p0, v8}, Lcom/android/exsettings/cyanogenmod/SpamList$FetchFilters;->getAppInfo(Lcom/android/exsettings/cyanogenmod/SpamList$PackageInfo;)V

    .line 198
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/android/exsettings/cyanogenmod/SpamList$PackageInfo;->id:Ljava/lang/String;

    .line 199
    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 200
    invoke-direct {p0, v8, v7}, Lcom/android/exsettings/cyanogenmod/SpamList$FetchFilters;->addNotificationsForPackage(Lcom/android/exsettings/cyanogenmod/SpamList$PackageInfo;Ljava/util/List;)V

    goto :goto_0

    .line 202
    .end local v8    # "pInfo":Lcom/android/exsettings/cyanogenmod/SpamList$PackageInfo;
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 204
    .end local v9    # "packageIdIndex":I
    .end local v10    # "packageNameIndex":I
    :cond_1
    return-object v7
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 219
    check-cast p1, Ljava/util/List;

    .end local p1    # "result":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/exsettings/cyanogenmod/SpamList$FetchFilters;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/exsettings/cyanogenmod/SpamList$ItemInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 220
    .local p1, "result":Ljava/util/List;, "Ljava/util/List<Lcom/android/exsettings/cyanogenmod/SpamList$ItemInfo;>;"
    iget-object v0, p0, Lcom/android/exsettings/cyanogenmod/SpamList$FetchFilters;->this$0:Lcom/android/exsettings/cyanogenmod/SpamList;

    new-instance v1, Lcom/android/exsettings/cyanogenmod/SpamList$SpamAdapter;

    iget-object v2, p0, Lcom/android/exsettings/cyanogenmod/SpamList$FetchFilters;->this$0:Lcom/android/exsettings/cyanogenmod/SpamList;

    invoke-direct {v1, v2, p1}, Lcom/android/exsettings/cyanogenmod/SpamList$SpamAdapter;-><init>(Lcom/android/exsettings/cyanogenmod/SpamList;Ljava/util/List;)V

    invoke-static {v0, v1}, Lcom/android/exsettings/cyanogenmod/SpamList;->-set0(Lcom/android/exsettings/cyanogenmod/SpamList;Lcom/android/exsettings/cyanogenmod/SpamList$SpamAdapter;)Lcom/android/exsettings/cyanogenmod/SpamList$SpamAdapter;

    .line 221
    iget-object v0, p0, Lcom/android/exsettings/cyanogenmod/SpamList$FetchFilters;->this$0:Lcom/android/exsettings/cyanogenmod/SpamList;

    iget-object v1, p0, Lcom/android/exsettings/cyanogenmod/SpamList$FetchFilters;->this$0:Lcom/android/exsettings/cyanogenmod/SpamList;

    invoke-static {v1}, Lcom/android/exsettings/cyanogenmod/SpamList;->-get2(Lcom/android/exsettings/cyanogenmod/SpamList;)Lcom/android/exsettings/cyanogenmod/SpamList$SpamAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/exsettings/cyanogenmod/SpamList;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 222
    iget-object v0, p0, Lcom/android/exsettings/cyanogenmod/SpamList$FetchFilters;->this$0:Lcom/android/exsettings/cyanogenmod/SpamList;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/exsettings/cyanogenmod/SpamList;->-set1(Lcom/android/exsettings/cyanogenmod/SpamList;Lcom/android/exsettings/cyanogenmod/SpamList$FetchFilters;)Lcom/android/exsettings/cyanogenmod/SpamList$FetchFilters;

    .line 219
    return-void
.end method
