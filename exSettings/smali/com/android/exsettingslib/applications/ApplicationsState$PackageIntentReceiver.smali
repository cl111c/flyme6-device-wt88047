.class Lcom/android/exsettingslib/applications/ApplicationsState$PackageIntentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ApplicationsState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettingslib/applications/ApplicationsState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PackageIntentReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettingslib/applications/ApplicationsState;


# direct methods
.method private constructor <init>(Lcom/android/exsettingslib/applications/ApplicationsState;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/exsettingslib/applications/ApplicationsState;

    .prologue
    .line 990
    iput-object p1, p0, Lcom/android/exsettingslib/applications/ApplicationsState$PackageIntentReceiver;->this$0:Lcom/android/exsettingslib/applications/ApplicationsState;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/exsettingslib/applications/ApplicationsState;Lcom/android/exsettingslib/applications/ApplicationsState$PackageIntentReceiver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/exsettingslib/applications/ApplicationsState;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/exsettingslib/applications/ApplicationsState$PackageIntentReceiver;-><init>(Lcom/android/exsettingslib/applications/ApplicationsState;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x0

    const/16 v8, -0x2710

    .line 1013
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1014
    .local v0, "actionStr":Ljava/lang/String;
    const-string/jumbo v7, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1015
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 1016
    .local v2, "data":Landroid/net/Uri;
    invoke-virtual {v2}, Landroid/net/Uri;->getEncodedSchemeSpecificPart()Ljava/lang/String;

    move-result-object v5

    .line 1017
    .local v5, "pkgName":Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v6, p0, Lcom/android/exsettingslib/applications/ApplicationsState$PackageIntentReceiver;->this$0:Lcom/android/exsettingslib/applications/ApplicationsState;

    iget-object v6, v6, Lcom/android/exsettingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v3, v6, :cond_8

    .line 1018
    iget-object v6, p0, Lcom/android/exsettingslib/applications/ApplicationsState$PackageIntentReceiver;->this$0:Lcom/android/exsettingslib/applications/ApplicationsState;

    iget-object v7, p0, Lcom/android/exsettingslib/applications/ApplicationsState$PackageIntentReceiver;->this$0:Lcom/android/exsettingslib/applications/ApplicationsState;

    iget-object v7, v7, Lcom/android/exsettingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    invoke-virtual {v7, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v7

    invoke-virtual {v6, v5, v7}, Lcom/android/exsettingslib/applications/ApplicationsState;->addPackage(Ljava/lang/String;I)V

    .line 1017
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1020
    .end local v2    # "data":Landroid/net/Uri;
    .end local v3    # "i":I
    .end local v5    # "pkgName":Ljava/lang/String;
    :cond_0
    const-string/jumbo v7, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1021
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 1022
    .restart local v2    # "data":Landroid/net/Uri;
    invoke-virtual {v2}, Landroid/net/Uri;->getEncodedSchemeSpecificPart()Ljava/lang/String;

    move-result-object v5

    .line 1023
    .restart local v5    # "pkgName":Ljava/lang/String;
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_1
    iget-object v6, p0, Lcom/android/exsettingslib/applications/ApplicationsState$PackageIntentReceiver;->this$0:Lcom/android/exsettingslib/applications/ApplicationsState;

    iget-object v6, v6, Lcom/android/exsettingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v3, v6, :cond_8

    .line 1024
    iget-object v6, p0, Lcom/android/exsettingslib/applications/ApplicationsState$PackageIntentReceiver;->this$0:Lcom/android/exsettingslib/applications/ApplicationsState;

    iget-object v7, p0, Lcom/android/exsettingslib/applications/ApplicationsState$PackageIntentReceiver;->this$0:Lcom/android/exsettingslib/applications/ApplicationsState;

    iget-object v7, v7, Lcom/android/exsettingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    invoke-virtual {v7, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v7

    invoke-virtual {v6, v5, v7}, Lcom/android/exsettingslib/applications/ApplicationsState;->removePackage(Ljava/lang/String;I)V

    .line 1023
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1026
    .end local v2    # "data":Landroid/net/Uri;
    .end local v3    # "i":I
    .end local v5    # "pkgName":Ljava/lang/String;
    :cond_1
    const-string/jumbo v7, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1027
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 1028
    .restart local v2    # "data":Landroid/net/Uri;
    invoke-virtual {v2}, Landroid/net/Uri;->getEncodedSchemeSpecificPart()Ljava/lang/String;

    move-result-object v5

    .line 1029
    .restart local v5    # "pkgName":Ljava/lang/String;
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_2
    iget-object v6, p0, Lcom/android/exsettingslib/applications/ApplicationsState$PackageIntentReceiver;->this$0:Lcom/android/exsettingslib/applications/ApplicationsState;

    iget-object v6, v6, Lcom/android/exsettingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v3, v6, :cond_8

    .line 1030
    iget-object v6, p0, Lcom/android/exsettingslib/applications/ApplicationsState$PackageIntentReceiver;->this$0:Lcom/android/exsettingslib/applications/ApplicationsState;

    iget-object v7, p0, Lcom/android/exsettingslib/applications/ApplicationsState$PackageIntentReceiver;->this$0:Lcom/android/exsettingslib/applications/ApplicationsState;

    iget-object v7, v7, Lcom/android/exsettingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    invoke-virtual {v7, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v7

    invoke-virtual {v6, v5, v7}, Lcom/android/exsettingslib/applications/ApplicationsState;->invalidatePackage(Ljava/lang/String;I)V

    .line 1029
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1032
    .end local v2    # "data":Landroid/net/Uri;
    .end local v3    # "i":I
    .end local v5    # "pkgName":Ljava/lang/String;
    :cond_2
    const-string/jumbo v7, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 1033
    const-string/jumbo v7, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 1032
    if-eqz v7, :cond_7

    .line 1040
    :cond_3
    const-string/jumbo v7, "android.intent.extra.changed_package_list"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 1041
    .local v4, "pkgList":[Ljava/lang/String;
    if-eqz v4, :cond_4

    array-length v7, v4

    if-nez v7, :cond_5

    .line 1043
    :cond_4
    return-void

    .line 1045
    :cond_5
    const-string/jumbo v7, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 1046
    .local v1, "avail":Z
    if-eqz v1, :cond_8

    .line 1047
    array-length v7, v4

    :goto_3
    if-ge v6, v7, :cond_8

    aget-object v5, v4, v6

    .line 1048
    .restart local v5    # "pkgName":Ljava/lang/String;
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_4
    iget-object v8, p0, Lcom/android/exsettingslib/applications/ApplicationsState$PackageIntentReceiver;->this$0:Lcom/android/exsettingslib/applications/ApplicationsState;

    iget-object v8, v8, Lcom/android/exsettingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v8

    if-ge v3, v8, :cond_6

    .line 1049
    iget-object v8, p0, Lcom/android/exsettingslib/applications/ApplicationsState$PackageIntentReceiver;->this$0:Lcom/android/exsettingslib/applications/ApplicationsState;

    iget-object v9, p0, Lcom/android/exsettingslib/applications/ApplicationsState$PackageIntentReceiver;->this$0:Lcom/android/exsettingslib/applications/ApplicationsState;

    iget-object v9, v9, Lcom/android/exsettingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    invoke-virtual {v9, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v9

    invoke-virtual {v8, v5, v9}, Lcom/android/exsettingslib/applications/ApplicationsState;->invalidatePackage(Ljava/lang/String;I)V

    .line 1048
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 1047
    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 1053
    .end local v1    # "avail":Z
    .end local v3    # "i":I
    .end local v4    # "pkgList":[Ljava/lang/String;
    .end local v5    # "pkgName":Ljava/lang/String;
    :cond_7
    const-string/jumbo v6, "android.intent.action.USER_ADDED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 1054
    iget-object v6, p0, Lcom/android/exsettingslib/applications/ApplicationsState$PackageIntentReceiver;->this$0:Lcom/android/exsettingslib/applications/ApplicationsState;

    const-string/jumbo v7, "android.intent.extra.user_handle"

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    invoke-static {v6, v7}, Lcom/android/exsettingslib/applications/ApplicationsState;->-wrap4(Lcom/android/exsettingslib/applications/ApplicationsState;I)V

    .line 1012
    :cond_8
    :goto_5
    return-void

    .line 1055
    :cond_9
    const-string/jumbo v6, "android.intent.action.USER_REMOVED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 1056
    iget-object v6, p0, Lcom/android/exsettingslib/applications/ApplicationsState$PackageIntentReceiver;->this$0:Lcom/android/exsettingslib/applications/ApplicationsState;

    const-string/jumbo v7, "android.intent.extra.user_handle"

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    invoke-static {v6, v7}, Lcom/android/exsettingslib/applications/ApplicationsState;->-wrap5(Lcom/android/exsettingslib/applications/ApplicationsState;I)V

    goto :goto_5
.end method

.method registerReceiver()V
    .locals 4

    .prologue
    .line 992
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v3, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v0, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 993
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v3, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 994
    const-string/jumbo v3, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 995
    const-string/jumbo v3, "package"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 996
    iget-object v3, p0, Lcom/android/exsettingslib/applications/ApplicationsState$PackageIntentReceiver;->this$0:Lcom/android/exsettingslib/applications/ApplicationsState;

    iget-object v3, v3, Lcom/android/exsettingslib/applications/ApplicationsState;->mContext:Landroid/content/Context;

    invoke-virtual {v3, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 998
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 999
    .local v1, "sdFilter":Landroid/content/IntentFilter;
    const-string/jumbo v3, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1000
    const-string/jumbo v3, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1001
    iget-object v3, p0, Lcom/android/exsettingslib/applications/ApplicationsState$PackageIntentReceiver;->this$0:Lcom/android/exsettingslib/applications/ApplicationsState;

    iget-object v3, v3, Lcom/android/exsettingslib/applications/ApplicationsState;->mContext:Landroid/content/Context;

    invoke-virtual {v3, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1003
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 1004
    .local v2, "userFilter":Landroid/content/IntentFilter;
    const-string/jumbo v3, "android.intent.action.USER_ADDED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1005
    const-string/jumbo v3, "android.intent.action.USER_REMOVED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1006
    iget-object v3, p0, Lcom/android/exsettingslib/applications/ApplicationsState$PackageIntentReceiver;->this$0:Lcom/android/exsettingslib/applications/ApplicationsState;

    iget-object v3, v3, Lcom/android/exsettingslib/applications/ApplicationsState;->mContext:Landroid/content/Context;

    invoke-virtual {v3, p0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 991
    return-void
.end method

.method unregisterReceiver()V
    .locals 1

    .prologue
    .line 1009
    iget-object v0, p0, Lcom/android/exsettingslib/applications/ApplicationsState$PackageIntentReceiver;->this$0:Lcom/android/exsettingslib/applications/ApplicationsState;

    iget-object v0, v0, Lcom/android/exsettingslib/applications/ApplicationsState;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1008
    return-void
.end method
