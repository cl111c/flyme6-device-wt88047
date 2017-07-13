.class final Lcom/android/exsettings/wifi/WifiSettings$1;
.super Lcom/android/exsettings/search/BaseSearchIndexProvider;
.source "WifiSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/wifi/WifiSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 938
    invoke-direct {p0}, Lcom/android/exsettings/search/BaseSearchIndexProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getRawDataToIndex(Landroid/content/Context;Z)Ljava/util/List;
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "enabled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/android/exsettings/search/SearchIndexableRaw;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const v7, 0x7f0c0705

    .line 941
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 942
    .local v5, "result":Ljava/util/List;, "Ljava/util/List<Lcom/android/exsettings/search/SearchIndexableRaw;>;"
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 945
    .local v4, "res":Landroid/content/res/Resources;
    new-instance v3, Lcom/android/exsettings/search/SearchIndexableRaw;

    invoke-direct {v3, p1}, Lcom/android/exsettings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 946
    .local v3, "data":Lcom/android/exsettings/search/SearchIndexableRaw;
    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lcom/android/exsettings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 947
    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lcom/android/exsettings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 948
    const v6, 0x7f0c0e44

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lcom/android/exsettings/search/SearchIndexableRaw;->keywords:Ljava/lang/String;

    .line 949
    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 953
    const/4 v6, 0x1

    invoke-static {p1, v6, v8, v8}, Lcom/android/exsettingslib/wifi/WifiTracker;->getCurrentAccessPoints(Landroid/content/Context;ZZZ)Ljava/util/List;

    move-result-object v2

    .line 954
    .local v2, "accessPoints":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/exsettingslib/wifi/AccessPoint;>;"
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "accessPoint$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/exsettingslib/wifi/AccessPoint;

    .line 955
    .local v0, "accessPoint":Lcom/android/exsettingslib/wifi/AccessPoint;
    new-instance v3, Lcom/android/exsettings/search/SearchIndexableRaw;

    .end local v3    # "data":Lcom/android/exsettings/search/SearchIndexableRaw;
    invoke-direct {v3, p1}, Lcom/android/exsettings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 956
    .restart local v3    # "data":Lcom/android/exsettings/search/SearchIndexableRaw;
    invoke-virtual {v0}, Lcom/android/exsettingslib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lcom/android/exsettings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 957
    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lcom/android/exsettings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 958
    iput-boolean p2, v3, Lcom/android/exsettings/search/SearchIndexableRaw;->enabled:Z

    .line 959
    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 962
    .end local v0    # "accessPoint":Lcom/android/exsettingslib/wifi/AccessPoint;
    :cond_0
    return-object v5
.end method
