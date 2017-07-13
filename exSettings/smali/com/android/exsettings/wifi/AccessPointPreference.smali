.class public Lcom/android/exsettings/wifi/AccessPointPreference;
.super Landroid/preference/Preference;
.source "AccessPointPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exsettings/wifi/AccessPointPreference$UserBadgeCache;,
        Lcom/android/exsettings/wifi/AccessPointPreference$1;
    }
.end annotation


# static fields
.field private static final STATE_NONE:[I

.field private static final STATE_SECURED:[I

.field static final WIFI_CONNECTION_STRENGTH:[I

.field private static wifi_no_signal_attributes:[I

.field private static wifi_signal_attributes:[I


# instance fields
.field private mAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

.field private mBadge:Landroid/graphics/drawable/Drawable;

.field private final mBadgeCache:Lcom/android/exsettings/wifi/AccessPointPreference$UserBadgeCache;

.field private final mBadgePadding:I

.field private mContentDescription:Ljava/lang/CharSequence;

.field private mForSavedNetworks:Z

.field private mLevel:I

.field private mNoSignalLoaded:Z

.field private final mNotifyChanged:Ljava/lang/Runnable;

.field private mShowNoSignalIcon:Z

.field private mTitleView:Landroid/widget/TextView;

.field private final mWifiSld:Landroid/graphics/drawable/StateListDrawable;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 37
    new-array v0, v3, [I

    .line 38
    const v1, 0x7f010016

    aput v1, v0, v2

    .line 37
    sput-object v0, Lcom/android/exsettings/wifi/AccessPointPreference;->STATE_SECURED:[I

    .line 40
    new-array v0, v2, [I

    sput-object v0, Lcom/android/exsettings/wifi/AccessPointPreference;->STATE_NONE:[I

    .line 42
    new-array v0, v3, [I

    const v1, 0x7f01005c

    aput v1, v0, v2

    sput-object v0, Lcom/android/exsettings/wifi/AccessPointPreference;->wifi_signal_attributes:[I

    .line 43
    new-array v0, v3, [I

    const v1, 0x7f01005d

    aput v1, v0, v2

    sput-object v0, Lcom/android/exsettings/wifi/AccessPointPreference;->wifi_no_signal_attributes:[I

    .line 60
    const v0, 0x7f0c0052

    .line 61
    const v1, 0x7f0c0053

    .line 62
    const v2, 0x7f0c0054

    .line 63
    const v3, 0x7f0c0055

    .line 59
    filled-new-array {v0, v1, v2, v3}, [I

    move-result-object v0

    sput-object v0, Lcom/android/exsettings/wifi/AccessPointPreference;->WIFI_CONNECTION_STRENGTH:[I

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 68
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    iput-boolean v1, p0, Lcom/android/exsettings/wifi/AccessPointPreference;->mForSavedNetworks:Z

    .line 219
    new-instance v0, Lcom/android/exsettings/wifi/AccessPointPreference$1;

    invoke-direct {v0, p0}, Lcom/android/exsettings/wifi/AccessPointPreference$1;-><init>(Lcom/android/exsettings/wifi/AccessPointPreference;)V

    iput-object v0, p0, Lcom/android/exsettings/wifi/AccessPointPreference;->mNotifyChanged:Ljava/lang/Runnable;

    .line 69
    iput-object v2, p0, Lcom/android/exsettings/wifi/AccessPointPreference;->mWifiSld:Landroid/graphics/drawable/StateListDrawable;

    .line 70
    iput v1, p0, Lcom/android/exsettings/wifi/AccessPointPreference;->mBadgePadding:I

    .line 71
    iput-object v2, p0, Lcom/android/exsettings/wifi/AccessPointPreference;->mBadgeCache:Lcom/android/exsettings/wifi/AccessPointPreference$UserBadgeCache;

    .line 67
    return-void
.end method

.method public constructor <init>(Lcom/android/exsettingslib/wifi/AccessPoint;Landroid/content/Context;Lcom/android/exsettings/wifi/AccessPointPreference$UserBadgeCache;ZZ)V
    .locals 3
    .param p1, "accessPoint"    # Lcom/android/exsettingslib/wifi/AccessPoint;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cache"    # Lcom/android/exsettings/wifi/AccessPointPreference$UserBadgeCache;
    .param p4, "forSavedNetworks"    # Z
    .param p5, "showNoSignal"    # Z

    .prologue
    const/4 v2, 0x0

    .line 76
    invoke-direct {p0, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 50
    iput-boolean v2, p0, Lcom/android/exsettings/wifi/AccessPointPreference;->mForSavedNetworks:Z

    .line 219
    new-instance v0, Lcom/android/exsettings/wifi/AccessPointPreference$1;

    invoke-direct {v0, p0}, Lcom/android/exsettings/wifi/AccessPointPreference$1;-><init>(Lcom/android/exsettings/wifi/AccessPointPreference;)V

    iput-object v0, p0, Lcom/android/exsettings/wifi/AccessPointPreference;->mNotifyChanged:Ljava/lang/Runnable;

    .line 77
    iput-object p3, p0, Lcom/android/exsettings/wifi/AccessPointPreference;->mBadgeCache:Lcom/android/exsettings/wifi/AccessPointPreference$UserBadgeCache;

    .line 78
    iput-object p1, p0, Lcom/android/exsettings/wifi/AccessPointPreference;->mAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    .line 79
    iput-boolean p4, p0, Lcom/android/exsettings/wifi/AccessPointPreference;->mForSavedNetworks:Z

    .line 80
    iget-object v0, p0, Lcom/android/exsettings/wifi/AccessPointPreference;->mAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    invoke-virtual {v0, p0}, Lcom/android/exsettingslib/wifi/AccessPoint;->setTag(Ljava/lang/Object;)V

    .line 81
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/exsettings/wifi/AccessPointPreference;->mLevel:I

    .line 83
    invoke-virtual {p2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    .line 84
    sget-object v1, Lcom/android/exsettings/wifi/AccessPointPreference;->wifi_signal_attributes:[I

    .line 83
    invoke-virtual {v0, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/StateListDrawable;

    iput-object v0, p0, Lcom/android/exsettings/wifi/AccessPointPreference;->mWifiSld:Landroid/graphics/drawable/StateListDrawable;

    .line 87
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 88
    const v1, 0x7f0b00a4

    .line 87
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/exsettings/wifi/AccessPointPreference;->mBadgePadding:I

    .line 89
    iput-boolean p5, p0, Lcom/android/exsettings/wifi/AccessPointPreference;->mShowNoSignalIcon:Z

    .line 90
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/AccessPointPreference;->refresh()V

    .line 75
    return-void
.end method

.method private postNotifyChanged()V
    .locals 2

    .prologue
    .line 214
    iget-object v0, p0, Lcom/android/exsettings/wifi/AccessPointPreference;->mTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/android/exsettings/wifi/AccessPointPreference;->mTitleView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/exsettings/wifi/AccessPointPreference;->mNotifyChanged:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    .line 213
    :cond_0
    return-void
.end method


# virtual methods
.method public getAccessPoint()Lcom/android/exsettingslib/wifi/AccessPoint;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/exsettings/wifi/AccessPointPreference;->mAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    return-object v0
.end method

.method protected notifyChanged()V
    .locals 2

    .prologue
    .line 201
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 203
    invoke-direct {p0}, Lcom/android/exsettings/wifi/AccessPointPreference;->postNotifyChanged()V

    .line 200
    :goto_0
    return-void

    .line 205
    :cond_0
    invoke-super {p0}, Landroid/preference/Preference;->notifyChanged()V

    goto :goto_0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 99
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 100
    iget-object v1, p0, Lcom/android/exsettings/wifi/AccessPointPreference;->mAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    if-nez v1, :cond_0

    .line 102
    return-void

    .line 104
    :cond_0
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/AccessPointPreference;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 105
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1

    .line 106
    iget v1, p0, Lcom/android/exsettings/wifi/AccessPointPreference;->mLevel:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 109
    :cond_1
    const v1, 0x1020016

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/exsettings/wifi/AccessPointPreference;->mTitleView:Landroid/widget/TextView;

    .line 110
    iget-object v1, p0, Lcom/android/exsettings/wifi/AccessPointPreference;->mTitleView:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    .line 112
    iget-object v1, p0, Lcom/android/exsettings/wifi/AccessPointPreference;->mTitleView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/exsettings/wifi/AccessPointPreference;->mBadge:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v3, v3, v2, v3}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 113
    iget-object v1, p0, Lcom/android/exsettings/wifi/AccessPointPreference;->mTitleView:Landroid/widget/TextView;

    iget v2, p0, Lcom/android/exsettings/wifi/AccessPointPreference;->mBadgePadding:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 115
    :cond_2
    iget-object v1, p0, Lcom/android/exsettings/wifi/AccessPointPreference;->mContentDescription:Ljava/lang/CharSequence;

    invoke-virtual {p1, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 98
    return-void
.end method

.method public onLevelChanged()V
    .locals 0

    .prologue
    .line 210
    invoke-direct {p0}, Lcom/android/exsettings/wifi/AccessPointPreference;->postNotifyChanged()V

    .line 209
    return-void
.end method

.method public refresh()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 171
    iget-boolean v2, p0, Lcom/android/exsettings/wifi/AccessPointPreference;->mForSavedNetworks:Z

    if-eqz v2, :cond_4

    .line 172
    iget-object v2, p0, Lcom/android/exsettings/wifi/AccessPointPreference;->mAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/exsettingslib/wifi/AccessPoint;->getConfigName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/exsettings/wifi/AccessPointPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 177
    :goto_0
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/AccessPointPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 178
    .local v0, "context":Landroid/content/Context;
    iget-object v2, p0, Lcom/android/exsettings/wifi/AccessPointPreference;->mAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/exsettingslib/wifi/AccessPoint;->getLevel()I

    move-result v1

    .line 179
    .local v1, "level":I
    iget v2, p0, Lcom/android/exsettings/wifi/AccessPointPreference;->mLevel:I

    if-ne v1, v2, :cond_0

    iget-boolean v2, p0, Lcom/android/exsettings/wifi/AccessPointPreference;->mShowNoSignalIcon:Z

    if-eqz v2, :cond_1

    .line 180
    :cond_0
    iput v1, p0, Lcom/android/exsettings/wifi/AccessPointPreference;->mLevel:I

    .line 181
    iget v2, p0, Lcom/android/exsettings/wifi/AccessPointPreference;->mLevel:I

    invoke-virtual {p0, v2, v0}, Lcom/android/exsettings/wifi/AccessPointPreference;->updateIcon(ILandroid/content/Context;)V

    .line 182
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/AccessPointPreference;->notifyChanged()V

    .line 184
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/exsettings/wifi/AccessPointPreference;->updateBadge(Landroid/content/Context;)V

    .line 186
    iget-boolean v2, p0, Lcom/android/exsettings/wifi/AccessPointPreference;->mForSavedNetworks:Z

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/exsettings/wifi/AccessPointPreference;->mAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/exsettingslib/wifi/AccessPoint;->getSavedNetworkSummary()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {p0, v2}, Lcom/android/exsettings/wifi/AccessPointPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 189
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/AccessPointPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lcom/android/exsettings/wifi/AccessPointPreference;->mContentDescription:Ljava/lang/CharSequence;

    .line 190
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/AccessPointPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 191
    new-array v2, v7, [Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/android/exsettings/wifi/AccessPointPreference;->mContentDescription:Ljava/lang/CharSequence;

    aput-object v3, v2, v4

    const-string/jumbo v3, ","

    aput-object v3, v2, v5

    invoke-virtual {p0}, Lcom/android/exsettings/wifi/AccessPointPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v2}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lcom/android/exsettings/wifi/AccessPointPreference;->mContentDescription:Ljava/lang/CharSequence;

    .line 193
    :cond_2
    if-ltz v1, :cond_3

    sget-object v2, Lcom/android/exsettings/wifi/AccessPointPreference;->WIFI_CONNECTION_STRENGTH:[I

    array-length v2, v2

    if-ge v1, v2, :cond_3

    .line 194
    new-array v2, v7, [Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/android/exsettings/wifi/AccessPointPreference;->mContentDescription:Ljava/lang/CharSequence;

    aput-object v3, v2, v4

    const-string/jumbo v3, ","

    aput-object v3, v2, v5

    .line 195
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/AccessPointPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    sget-object v4, Lcom/android/exsettings/wifi/AccessPointPreference;->WIFI_CONNECTION_STRENGTH:[I

    aget v4, v4, v1

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    .line 194
    invoke-static {v2}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lcom/android/exsettings/wifi/AccessPointPreference;->mContentDescription:Ljava/lang/CharSequence;

    .line 170
    :cond_3
    return-void

    .line 174
    .end local v0    # "context":Landroid/content/Context;
    .end local v1    # "level":I
    :cond_4
    iget-object v2, p0, Lcom/android/exsettings/wifi/AccessPointPreference;->mAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/exsettingslib/wifi/AccessPoint;->getSsid()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/exsettings/wifi/AccessPointPreference;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 187
    .restart local v0    # "context":Landroid/content/Context;
    .restart local v1    # "level":I
    :cond_5
    iget-object v2, p0, Lcom/android/exsettings/wifi/AccessPointPreference;->mAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/exsettingslib/wifi/AccessPoint;->getSettingsSummary()Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method protected updateBadge(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 158
    iget-object v1, p0, Lcom/android/exsettings/wifi/AccessPointPreference;->mAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/exsettingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 159
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_0

    .line 163
    iget-object v1, p0, Lcom/android/exsettings/wifi/AccessPointPreference;->mBadgeCache:Lcom/android/exsettings/wifi/AccessPointPreference$UserBadgeCache;

    iget v2, v0, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    invoke-static {v1, v2}, Lcom/android/exsettings/wifi/AccessPointPreference$UserBadgeCache;->-wrap0(Lcom/android/exsettings/wifi/AccessPointPreference$UserBadgeCache;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/exsettings/wifi/AccessPointPreference;->mBadge:Landroid/graphics/drawable/Drawable;

    .line 157
    :cond_0
    return-void
.end method

.method protected updateIcon(ILandroid/content/Context;)V
    .locals 6
    .param p1, "level"    # I
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 119
    const/4 v2, -0x1

    if-ne p1, v2, :cond_4

    .line 120
    iget-boolean v2, p0, Lcom/android/exsettings/wifi/AccessPointPreference;->mShowNoSignalIcon:Z

    if-eqz v2, :cond_0

    .line 121
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/AccessPointPreference;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 122
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_2

    iget-boolean v2, p0, Lcom/android/exsettings/wifi/AccessPointPreference;->mNoSignalLoaded:Z

    if-eqz v2, :cond_2

    .line 133
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    :goto_0
    iget-boolean v2, p0, Lcom/android/exsettings/wifi/AccessPointPreference;->mNoSignalLoaded:Z

    if-nez v2, :cond_1

    .line 134
    invoke-virtual {p0, v4}, Lcom/android/exsettings/wifi/AccessPointPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 118
    :cond_1
    :goto_1
    return-void

    .line 123
    .restart local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_2
    invoke-virtual {p2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    .line 124
    sget-object v3, Lcom/android/exsettings/wifi/AccessPointPreference;->wifi_no_signal_attributes:[I

    .line 123
    invoke-virtual {v2, v3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/StateListDrawable;

    .line 125
    .local v1, "sld":Landroid/graphics/drawable/StateListDrawable;
    if-eqz v1, :cond_0

    .line 126
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/AccessPointPreference;->getAccessPoint()Lcom/android/exsettingslib/wifi/AccessPoint;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/exsettingslib/wifi/AccessPoint;->getSecurity()I

    move-result v2

    if-eqz v2, :cond_3

    .line 127
    sget-object v2, Lcom/android/exsettings/wifi/AccessPointPreference;->STATE_SECURED:[I

    .line 126
    :goto_2
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/StateListDrawable;->setState([I)Z

    .line 128
    invoke-virtual {v1}, Landroid/graphics/drawable/StateListDrawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/exsettings/wifi/AccessPointPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 129
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/exsettings/wifi/AccessPointPreference;->mNoSignalLoaded:Z

    goto :goto_0

    .line 127
    :cond_3
    sget-object v2, Lcom/android/exsettings/wifi/AccessPointPreference;->STATE_NONE:[I

    goto :goto_2

    .line 137
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v1    # "sld":Landroid/graphics/drawable/StateListDrawable;
    :cond_4
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/AccessPointPreference;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_5

    iget-boolean v2, p0, Lcom/android/exsettings/wifi/AccessPointPreference;->mNoSignalLoaded:Z

    if-eqz v2, :cond_1

    .line 142
    :cond_5
    iget-object v2, p0, Lcom/android/exsettings/wifi/AccessPointPreference;->mWifiSld:Landroid/graphics/drawable/StateListDrawable;

    if-eqz v2, :cond_1

    .line 143
    iget-object v3, p0, Lcom/android/exsettings/wifi/AccessPointPreference;->mWifiSld:Landroid/graphics/drawable/StateListDrawable;

    iget-object v2, p0, Lcom/android/exsettings/wifi/AccessPointPreference;->mAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/exsettingslib/wifi/AccessPoint;->getSecurity()I

    move-result v2

    if-eqz v2, :cond_7

    .line 144
    sget-object v2, Lcom/android/exsettings/wifi/AccessPointPreference;->STATE_SECURED:[I

    .line 143
    :goto_3
    invoke-virtual {v3, v2}, Landroid/graphics/drawable/StateListDrawable;->setState([I)Z

    .line 146
    iget-object v2, p0, Lcom/android/exsettings/wifi/AccessPointPreference;->mWifiSld:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/StateListDrawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 147
    .restart local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    iget-boolean v2, p0, Lcom/android/exsettings/wifi/AccessPointPreference;->mForSavedNetworks:Z

    if-eqz v2, :cond_6

    iget-boolean v2, p0, Lcom/android/exsettings/wifi/AccessPointPreference;->mShowNoSignalIcon:Z

    if-eqz v2, :cond_8

    .line 148
    :cond_6
    invoke-virtual {p0, v0}, Lcom/android/exsettings/wifi/AccessPointPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 145
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_7
    sget-object v2, Lcom/android/exsettings/wifi/AccessPointPreference;->STATE_NONE:[I

    goto :goto_3

    .line 150
    .restart local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_8
    invoke-virtual {p0, v4}, Lcom/android/exsettings/wifi/AccessPointPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method
