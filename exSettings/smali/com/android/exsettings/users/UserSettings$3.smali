.class final Lcom/android/exsettings/users/UserSettings$3;
.super Lcom/android/exsettings/search/BaseSearchIndexProvider;
.source "UserSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/users/UserSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1078
    invoke-direct {p0}, Lcom/android/exsettings/search/BaseSearchIndexProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getRawDataToIndex(Landroid/content/Context;Z)Ljava/util/List;
    .locals 6
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
    const v5, 0x7f0c0d79

    .line 1082
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1083
    .local v2, "result":Ljava/util/List;, "Ljava/util/List<Lcom/android/exsettings/search/SearchIndexableRaw;>;"
    invoke-static {p1}, Lcom/android/exsettings/users/UserSettings$UserCapabilities;->create(Landroid/content/Context;)Lcom/android/exsettings/users/UserSettings$UserCapabilities;

    move-result-object v3

    .line 1084
    .local v3, "userCaps":Lcom/android/exsettings/users/UserSettings$UserCapabilities;
    iget-boolean v4, v3, Lcom/android/exsettings/users/UserSettings$UserCapabilities;->mEnabled:Z

    if-nez v4, :cond_0

    .line 1085
    return-object v2

    .line 1087
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1088
    .local v1, "res":Landroid/content/res/Resources;
    new-instance v0, Lcom/android/exsettings/search/SearchIndexableRaw;

    invoke-direct {v0, p1}, Lcom/android/exsettings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 1089
    .local v0, "data":Lcom/android/exsettings/search/SearchIndexableRaw;
    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/android/exsettings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 1090
    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/android/exsettings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 1091
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1093
    iget-boolean v4, v3, Lcom/android/exsettings/users/UserSettings$UserCapabilities;->mCanAddUser:Z

    if-eqz v4, :cond_1

    .line 1094
    new-instance v0, Lcom/android/exsettings/search/SearchIndexableRaw;

    .end local v0    # "data":Lcom/android/exsettings/search/SearchIndexableRaw;
    invoke-direct {v0, p1}, Lcom/android/exsettings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 1095
    .restart local v0    # "data":Lcom/android/exsettings/search/SearchIndexableRaw;
    iget-boolean v4, v3, Lcom/android/exsettings/users/UserSettings$UserCapabilities;->mCanAddRestrictedProfile:Z

    if-eqz v4, :cond_2

    .line 1096
    const v4, 0x7f0c0d7b

    .line 1095
    :goto_0
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/android/exsettings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 1098
    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/android/exsettings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 1099
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1101
    :cond_1
    return-object v2

    .line 1097
    :cond_2
    const v4, 0x7f0c0d7c

    goto :goto_0
.end method
