.class public Lcom/android/exsettings/vpn2/AppPreference;
.super Lcom/android/exsettings/vpn2/ManageablePreference;
.source "AppPreference.java"


# instance fields
.field private mName:Ljava/lang/String;

.field private mPackageName:Ljava/lang/String;

.field private mState:I

.field private mUid:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View$OnClickListener;Ljava/lang/String;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "onManage"    # Landroid/view/View$OnClickListener;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "uid"    # I

    .prologue
    .line 48
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/android/exsettings/vpn2/ManageablePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/view/View$OnClickListener;)V

    .line 41
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/exsettings/vpn2/AppPreference;->mState:I

    .line 49
    iput-object p3, p0, Lcom/android/exsettings/vpn2/AppPreference;->mPackageName:Ljava/lang/String;

    .line 50
    iput p4, p0, Lcom/android/exsettings/vpn2/AppPreference;->mUid:I

    .line 51
    invoke-direct {p0}, Lcom/android/exsettings/vpn2/AppPreference;->update()V

    .line 47
    return-void
.end method

.method private getUserContext()Landroid/content/Context;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 121
    new-instance v0, Landroid/os/UserHandle;

    iget v1, p0, Lcom/android/exsettings/vpn2/AppPreference;->mUid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    .line 122
    .local v0, "user":Landroid/os/UserHandle;
    invoke-virtual {p0}, Lcom/android/exsettings/vpn2/AppPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 123
    invoke-virtual {p0}, Lcom/android/exsettings/vpn2/AppPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 122
    invoke-virtual {v1, v2, v3, v0}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v1

    return-object v1
.end method

.method private update()V
    .locals 9

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/android/exsettings/vpn2/AppPreference;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a005e

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 87
    .local v4, "states":[Ljava/lang/String;
    iget v7, p0, Lcom/android/exsettings/vpn2/AppPreference;->mState:I

    if-eqz v7, :cond_2

    iget v7, p0, Lcom/android/exsettings/vpn2/AppPreference;->mState:I

    aget-object v7, v4, v7

    :goto_0
    invoke-virtual {p0, v7}, Lcom/android/exsettings/vpn2/AppPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 89
    iget-object v7, p0, Lcom/android/exsettings/vpn2/AppPreference;->mPackageName:Ljava/lang/String;

    iput-object v7, p0, Lcom/android/exsettings/vpn2/AppPreference;->mName:Ljava/lang/String;

    .line 90
    const/4 v0, 0x0

    .line 94
    .local v0, "icon":Landroid/graphics/drawable/Drawable;
    :try_start_0
    invoke-direct {p0}, Lcom/android/exsettings/vpn2/AppPreference;->getUserContext()Landroid/content/Context;

    move-result-object v5

    .line 95
    .local v5, "userContext":Landroid/content/Context;
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 100
    .local v3, "pm":Landroid/content/pm/PackageManager;
    :try_start_1
    iget-object v7, p0, Lcom/android/exsettings/vpn2/AppPreference;->mPackageName:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-virtual {v3, v7, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 101
    .local v1, "pkgInfo":Landroid/content/pm/PackageInfo;
    if-eqz v1, :cond_0

    .line 102
    iget-object v7, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v7, v3}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 103
    .local v0, "icon":Landroid/graphics/drawable/Drawable;
    iget-object v7, p0, Lcom/android/exsettings/vpn2/AppPreference;->mPackageName:Ljava/lang/String;

    invoke-static {v5, v7}, Lcom/android/internal/net/VpnConfig;->getVpnLabel(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/exsettings/vpn2/AppPreference;->mName:Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 108
    .end local v0    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v1    # "pkgInfo":Landroid/content/pm/PackageInfo;
    :cond_0
    :goto_1
    if-nez v0, :cond_1

    .line 109
    :try_start_2
    invoke-virtual {v3}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v0

    .line 114
    .end local v3    # "pm":Landroid/content/pm/PackageManager;
    .end local v5    # "userContext":Landroid/content/Context;
    :cond_1
    :goto_2
    iget-object v7, p0, Lcom/android/exsettings/vpn2/AppPreference;->mName:Ljava/lang/String;

    invoke-virtual {p0, v7}, Lcom/android/exsettings/vpn2/AppPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 115
    invoke-virtual {p0, v0}, Lcom/android/exsettings/vpn2/AppPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 117
    invoke-virtual {p0}, Lcom/android/exsettings/vpn2/AppPreference;->notifyHierarchyChanged()V

    .line 85
    return-void

    .line 87
    :cond_2
    const-string/jumbo v7, ""

    goto :goto_0

    .line 111
    :catch_0
    move-exception v6

    .local v6, "userNotFound":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_2

    .line 105
    .end local v6    # "userNotFound":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v3    # "pm":Landroid/content/pm/PackageManager;
    .restart local v5    # "userContext":Landroid/content/Context;
    :catch_1
    move-exception v2

    .local v2, "pkgNotFound":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_1
.end method


# virtual methods
.method public compareTo(Landroid/preference/Preference;)I
    .locals 5
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 127
    instance-of v3, p1, Lcom/android/exsettings/vpn2/AppPreference;

    if-eqz v3, :cond_1

    move-object v0, p1

    .line 128
    check-cast v0, Lcom/android/exsettings/vpn2/AppPreference;

    .line 130
    .local v0, "another":Lcom/android/exsettings/vpn2/AppPreference;
    iget v3, v0, Lcom/android/exsettings/vpn2/AppPreference;->mState:I

    iget v4, p0, Lcom/android/exsettings/vpn2/AppPreference;->mState:I

    sub-int v2, v3, v4

    .local v2, "result":I
    if-nez v2, :cond_0

    .line 131
    iget-object v3, p0, Lcom/android/exsettings/vpn2/AppPreference;->mName:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/exsettings/vpn2/AppPreference;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    .line 132
    iget-object v3, p0, Lcom/android/exsettings/vpn2/AppPreference;->mPackageName:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/exsettings/vpn2/AppPreference;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    .line 133
    iget v3, p0, Lcom/android/exsettings/vpn2/AppPreference;->mUid:I

    iget v4, v0, Lcom/android/exsettings/vpn2/AppPreference;->mUid:I

    sub-int v2, v3, v4

    .line 135
    :cond_0
    return v2

    .line 136
    .end local v0    # "another":Lcom/android/exsettings/vpn2/AppPreference;
    .end local v2    # "result":I
    :cond_1
    instance-of v3, p1, Lcom/android/exsettings/vpn2/ConfigPreference;

    if-eqz v3, :cond_2

    move-object v1, p1

    .line 138
    check-cast v1, Lcom/android/exsettings/vpn2/ConfigPreference;

    .line 139
    .local v1, "another":Lcom/android/exsettings/vpn2/ConfigPreference;
    invoke-virtual {v1, p0}, Lcom/android/exsettings/vpn2/ConfigPreference;->compareTo(Landroid/preference/Preference;)I

    move-result v3

    neg-int v3, v3

    return v3

    .line 141
    .end local v1    # "another":Lcom/android/exsettings/vpn2/ConfigPreference;
    :cond_2
    invoke-super {p0, p1}, Lcom/android/exsettings/vpn2/ManageablePreference;->compareTo(Landroid/preference/Preference;)I

    move-result v3

    return v3
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/exsettings/vpn2/AppPreference;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageInfo()Landroid/content/pm/PackageInfo;
    .locals 5

    .prologue
    .line 55
    new-instance v2, Landroid/os/UserHandle;

    iget v3, p0, Lcom/android/exsettings/vpn2/AppPreference;->mUid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    .line 57
    .local v2, "user":Landroid/os/UserHandle;
    :try_start_0
    invoke-direct {p0}, Lcom/android/exsettings/vpn2/AppPreference;->getUserContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 58
    .local v1, "pm":Landroid/content/pm/PackageManager;
    iget-object v3, p0, Lcom/android/exsettings/vpn2/AppPreference;->mPackageName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 59
    .end local v1    # "pm":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v0

    .line 60
    .local v0, "nnfe":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v3, 0x0

    return-object v3
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/exsettings/vpn2/AppPreference;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 77
    iget v0, p0, Lcom/android/exsettings/vpn2/AppPreference;->mState:I

    return v0
.end method

.method public getUid()I
    .locals 1

    .prologue
    .line 73
    iget v0, p0, Lcom/android/exsettings/vpn2/AppPreference;->mUid:I

    return v0
.end method

.method public setState(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 81
    iput p1, p0, Lcom/android/exsettings/vpn2/AppPreference;->mState:I

    .line 82
    invoke-direct {p0}, Lcom/android/exsettings/vpn2/AppPreference;->update()V

    .line 80
    return-void
.end method
