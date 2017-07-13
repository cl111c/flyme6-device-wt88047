.class public Lcom/android/exsettings/vpn2/ConfigPreference;
.super Lcom/android/exsettings/vpn2/ManageablePreference;
.source "ConfigPreference.java"


# instance fields
.field private mProfile:Lcom/android/internal/net/VpnProfile;

.field private mState:I


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/view/View$OnClickListener;Lcom/android/internal/net/VpnProfile;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "onManage"    # Landroid/view/View$OnClickListener;
    .param p3, "profile"    # Lcom/android/internal/net/VpnProfile;

    .prologue
    .line 38
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/android/exsettings/vpn2/ManageablePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/view/View$OnClickListener;)V

    .line 35
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/exsettings/vpn2/ConfigPreference;->mState:I

    .line 39
    invoke-virtual {p0, p3}, Lcom/android/exsettings/vpn2/ConfigPreference;->setProfile(Lcom/android/internal/net/VpnProfile;)V

    .line 37
    return-void
.end method

.method private update()V
    .locals 3

    .prologue
    .line 57
    iget v1, p0, Lcom/android/exsettings/vpn2/ConfigPreference;->mState:I

    if-gez v1, :cond_0

    .line 58
    const-string/jumbo v1, ""

    invoke-virtual {p0, v1}, Lcom/android/exsettings/vpn2/ConfigPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 64
    :goto_0
    const/high16 v1, 0x7f030000

    invoke-virtual {p0, v1}, Lcom/android/exsettings/vpn2/ConfigPreference;->setIcon(I)V

    .line 65
    iget-object v1, p0, Lcom/android/exsettings/vpn2/ConfigPreference;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v1, v1, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/exsettings/vpn2/ConfigPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 66
    invoke-virtual {p0}, Lcom/android/exsettings/vpn2/ConfigPreference;->notifyHierarchyChanged()V

    .line 56
    return-void

    .line 60
    :cond_0
    invoke-virtual {p0}, Lcom/android/exsettings/vpn2/ConfigPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 61
    const v2, 0x7f0a005e

    .line 60
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 62
    .local v0, "states":[Ljava/lang/String;
    iget v1, p0, Lcom/android/exsettings/vpn2/ConfigPreference;->mState:I

    aget-object v1, v0, v1

    invoke-virtual {p0, v1}, Lcom/android/exsettings/vpn2/ConfigPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public compareTo(Landroid/preference/Preference;)I
    .locals 5
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v4, 0x3

    .line 71
    instance-of v3, p1, Lcom/android/exsettings/vpn2/ConfigPreference;

    if-eqz v3, :cond_1

    move-object v1, p1

    .line 72
    check-cast v1, Lcom/android/exsettings/vpn2/ConfigPreference;

    .line 74
    .local v1, "another":Lcom/android/exsettings/vpn2/ConfigPreference;
    iget v3, v1, Lcom/android/exsettings/vpn2/ConfigPreference;->mState:I

    iget v4, p0, Lcom/android/exsettings/vpn2/ConfigPreference;->mState:I

    sub-int v2, v3, v4

    .local v2, "result":I
    if-nez v2, :cond_0

    .line 75
    iget-object v3, p0, Lcom/android/exsettings/vpn2/ConfigPreference;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v3, v3, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    iget-object v4, v1, Lcom/android/exsettings/vpn2/ConfigPreference;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v4, v4, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    .line 76
    iget-object v3, p0, Lcom/android/exsettings/vpn2/ConfigPreference;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget v3, v3, Lcom/android/internal/net/VpnProfile;->type:I

    iget-object v4, v1, Lcom/android/exsettings/vpn2/ConfigPreference;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget v4, v4, Lcom/android/internal/net/VpnProfile;->type:I

    sub-int v2, v3, v4

    if-nez v2, :cond_0

    .line 77
    iget-object v3, p0, Lcom/android/exsettings/vpn2/ConfigPreference;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v3, v3, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    iget-object v4, v1, Lcom/android/exsettings/vpn2/ConfigPreference;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v4, v4, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    .line 79
    :cond_0
    return v2

    .line 80
    .end local v1    # "another":Lcom/android/exsettings/vpn2/ConfigPreference;
    .end local v2    # "result":I
    :cond_1
    instance-of v3, p1, Lcom/android/exsettings/vpn2/AppPreference;

    if-eqz v3, :cond_3

    move-object v0, p1

    .line 82
    check-cast v0, Lcom/android/exsettings/vpn2/AppPreference;

    .line 83
    .local v0, "another":Lcom/android/exsettings/vpn2/AppPreference;
    iget v3, p0, Lcom/android/exsettings/vpn2/ConfigPreference;->mState:I

    if-eq v3, v4, :cond_2

    invoke-virtual {v0}, Lcom/android/exsettings/vpn2/AppPreference;->getState()I

    move-result v3

    if-ne v3, v4, :cond_2

    .line 84
    const/4 v3, 0x1

    return v3

    .line 87
    :cond_2
    const/4 v3, -0x1

    return v3

    .line 89
    .end local v0    # "another":Lcom/android/exsettings/vpn2/AppPreference;
    :cond_3
    invoke-super {p0, p1}, Lcom/android/exsettings/vpn2/ManageablePreference;->compareTo(Landroid/preference/Preference;)I

    move-result v3

    return v3
.end method

.method public getProfile()Lcom/android/internal/net/VpnProfile;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/exsettings/vpn2/ConfigPreference;->mProfile:Lcom/android/internal/net/VpnProfile;

    return-object v0
.end method

.method public setProfile(Lcom/android/internal/net/VpnProfile;)V
    .locals 0
    .param p1, "profile"    # Lcom/android/internal/net/VpnProfile;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/android/exsettings/vpn2/ConfigPreference;->mProfile:Lcom/android/internal/net/VpnProfile;

    .line 48
    invoke-direct {p0}, Lcom/android/exsettings/vpn2/ConfigPreference;->update()V

    .line 46
    return-void
.end method

.method public setState(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 52
    iput p1, p0, Lcom/android/exsettings/vpn2/ConfigPreference;->mState:I

    .line 53
    invoke-direct {p0}, Lcom/android/exsettings/vpn2/ConfigPreference;->update()V

    .line 51
    return-void
.end method
