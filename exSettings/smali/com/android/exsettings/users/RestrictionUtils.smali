.class public Lcom/android/exsettings/users/RestrictionUtils;
.super Ljava/lang/Object;
.source "RestrictionUtils.java"


# static fields
.field public static final sRestrictionDescriptions:[I

.field public static final sRestrictionKeys:[Ljava/lang/String;

.field public static final sRestrictionTitles:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 33
    new-array v0, v3, [Ljava/lang/String;

    .line 36
    const-string/jumbo v1, "no_share_location"

    aput-object v1, v0, v2

    .line 33
    sput-object v0, Lcom/android/exsettings/users/RestrictionUtils;->sRestrictionKeys:[Ljava/lang/String;

    .line 40
    new-array v0, v3, [I

    .line 43
    const v1, 0x7f0c0e0f

    aput v1, v0, v2

    .line 40
    sput-object v0, Lcom/android/exsettings/users/RestrictionUtils;->sRestrictionTitles:[I

    .line 47
    new-array v0, v3, [I

    .line 50
    const v1, 0x7f0c0e10

    aput v1, v0, v2

    .line 47
    sput-object v0, Lcom/android/exsettings/users/RestrictionUtils;->sRestrictionDescriptions:[I

    .line 31
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getRestrictions(Landroid/content/Context;Landroid/os/UserHandle;)Ljava/util/ArrayList;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "user"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/UserHandle;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/RestrictionEntry;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 60
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 61
    .local v3, "res":Landroid/content/res/Resources;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 62
    .local v0, "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/RestrictionEntry;>;"
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v4

    .line 63
    .local v4, "um":Landroid/os/UserManager;
    invoke-virtual {v4, p1}, Landroid/os/UserManager;->getUserRestrictions(Landroid/os/UserHandle;)Landroid/os/Bundle;

    move-result-object v5

    .line 65
    .local v5, "userRestrictions":Landroid/os/Bundle;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    sget-object v6, Lcom/android/exsettings/users/RestrictionUtils;->sRestrictionKeys:[Ljava/lang/String;

    array-length v6, v6

    if-ge v2, v6, :cond_1

    .line 66
    new-instance v1, Landroid/content/RestrictionEntry;

    .line 67
    sget-object v6, Lcom/android/exsettings/users/RestrictionUtils;->sRestrictionKeys:[Ljava/lang/String;

    aget-object v9, v6, v2

    .line 68
    sget-object v6, Lcom/android/exsettings/users/RestrictionUtils;->sRestrictionKeys:[Ljava/lang/String;

    aget-object v6, v6, v2

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_0

    move v6, v7

    .line 66
    :goto_1
    invoke-direct {v1, v9, v6}, Landroid/content/RestrictionEntry;-><init>(Ljava/lang/String;Z)V

    .line 69
    .local v1, "entry":Landroid/content/RestrictionEntry;
    sget-object v6, Lcom/android/exsettings/users/RestrictionUtils;->sRestrictionTitles:[I

    aget v6, v6, v2

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/content/RestrictionEntry;->setTitle(Ljava/lang/String;)V

    .line 70
    sget-object v6, Lcom/android/exsettings/users/RestrictionUtils;->sRestrictionDescriptions:[I

    aget v6, v6, v2

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/content/RestrictionEntry;->setDescription(Ljava/lang/String;)V

    .line 71
    invoke-virtual {v1, v8}, Landroid/content/RestrictionEntry;->setType(I)V

    .line 72
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v1    # "entry":Landroid/content/RestrictionEntry;
    :cond_0
    move v6, v8

    .line 68
    goto :goto_1

    .line 75
    :cond_1
    return-object v0
.end method

.method public static setRestrictions(Landroid/content/Context;Ljava/util/ArrayList;Landroid/os/UserHandle;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "user"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/RestrictionEntry;",
            ">;",
            "Landroid/os/UserHandle;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/RestrictionEntry;>;"
    const/4 v5, 0x0

    .line 80
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v2

    .line 81
    .local v2, "um":Landroid/os/UserManager;
    invoke-virtual {v2, p2}, Landroid/os/UserManager;->getUserRestrictions(Landroid/os/UserHandle;)Landroid/os/Bundle;

    move-result-object v3

    .line 83
    .local v3, "userRestrictions":Landroid/os/Bundle;
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "entry$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/RestrictionEntry;

    .line 84
    .local v0, "entry":Landroid/content/RestrictionEntry;
    invoke-virtual {v0}, Landroid/content/RestrictionEntry;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Landroid/content/RestrictionEntry;->getSelectedState()Z

    move-result v4

    if-eqz v4, :cond_1

    move v4, v5

    :goto_1
    invoke-virtual {v3, v6, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 85
    invoke-virtual {v0}, Landroid/content/RestrictionEntry;->getKey()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v6, "no_share_location"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 86
    invoke-virtual {v0}, Landroid/content/RestrictionEntry;->getSelectedState()Z

    move-result v4

    if-nez v4, :cond_0

    .line 87
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 88
    const-string/jumbo v6, "location_mode"

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v7

    .line 87
    invoke-static {v4, v6, v5, v7}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_0

    .line 84
    :cond_1
    const/4 v4, 0x1

    goto :goto_1

    .line 91
    .end local v0    # "entry":Landroid/content/RestrictionEntry;
    :cond_2
    invoke-virtual {v2, v3, p2}, Landroid/os/UserManager;->setUserRestrictions(Landroid/os/Bundle;Landroid/os/UserHandle;)V

    .line 79
    return-void
.end method
