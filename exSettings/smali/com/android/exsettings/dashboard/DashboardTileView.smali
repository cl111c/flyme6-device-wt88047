.class public Lcom/android/exsettings/dashboard/DashboardTileView;
.super Landroid/widget/FrameLayout;
.source "DashboardTileView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mColSpan:I

.field private mDivider:Landroid/view/View;

.field private mImageView:Landroid/widget/ImageView;

.field private mStatusTextView:Landroid/widget/TextView;

.field private mSwitch:Landroid/widget/Switch;

.field private mSwitchToggle:Lcom/android/exsettings/dashboard/GenericSwitchToggle;

.field private mTile:Lcom/android/exsettings/dashboard/DashboardTile;

.field private mTitleTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 52
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/exsettings/dashboard/DashboardTileView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x1

    .line 56
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    iput v3, p0, Lcom/android/exsettings/dashboard/DashboardTileView;->mColSpan:I

    .line 58
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040043

    invoke-virtual {v1, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 60
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f130009

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/exsettings/dashboard/DashboardTileView;->mImageView:Landroid/widget/ImageView;

    .line 61
    const v1, 0x7f13000b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/exsettings/dashboard/DashboardTileView;->mTitleTextView:Landroid/widget/TextView;

    .line 62
    const v1, 0x7f130080

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/exsettings/dashboard/DashboardTileView;->mStatusTextView:Landroid/widget/TextView;

    .line 63
    const v1, 0x7f130090

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/exsettings/dashboard/DashboardTileView;->mDivider:Landroid/view/View;

    .line 64
    const v1, 0x7f13008f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Switch;

    iput-object v1, p0, Lcom/android/exsettings/dashboard/DashboardTileView;->mSwitch:Landroid/widget/Switch;

    .line 66
    invoke-virtual {p0, p0}, Lcom/android/exsettings/dashboard/DashboardTileView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    const v1, 0x7f020020

    invoke-virtual {p0, v1}, Lcom/android/exsettings/dashboard/DashboardTileView;->setBackgroundResource(I)V

    .line 68
    invoke-virtual {p0, v3}, Lcom/android/exsettings/dashboard/DashboardTileView;->setFocusable(Z)V

    .line 55
    return-void
.end method


# virtual methods
.method getColumnSpan()I
    .locals 1

    .prologue
    .line 129
    iget v0, p0, Lcom/android/exsettings/dashboard/DashboardTileView;->mColSpan:I

    return v0
.end method

.method public getImageView()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/exsettings/dashboard/DashboardTileView;->mImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getStatusTextView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/exsettings/dashboard/DashboardTileView;->mStatusTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getSwitchView()Landroid/widget/Switch;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/exsettings/dashboard/DashboardTileView;->mSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method public getTitleTextView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/exsettings/dashboard/DashboardTileView;->mTitleTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 85
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 86
    iget-object v0, p0, Lcom/android/exsettings/dashboard/DashboardTileView;->mSwitchToggle:Lcom/android/exsettings/dashboard/GenericSwitchToggle;

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/android/exsettings/dashboard/DashboardTileView;->mSwitchToggle:Lcom/android/exsettings/dashboard/GenericSwitchToggle;

    invoke-virtual {p0}, Lcom/android/exsettings/dashboard/DashboardTileView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/exsettings/dashboard/GenericSwitchToggle;->resume(Landroid/content/Context;)V

    .line 84
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 9
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 134
    iget-object v0, p0, Lcom/android/exsettings/dashboard/DashboardTileView;->mTile:Lcom/android/exsettings/dashboard/DashboardTile;

    iget-object v0, v0, Lcom/android/exsettings/dashboard/DashboardTile;->fragment:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 135
    invoke-virtual {p0}, Lcom/android/exsettings/dashboard/DashboardTileView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/exsettings/dashboard/DashboardTileView;->mTile:Lcom/android/exsettings/dashboard/DashboardTile;

    iget-object v1, v1, Lcom/android/exsettings/dashboard/DashboardTile;->fragment:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/exsettings/dashboard/DashboardTileView;->mTile:Lcom/android/exsettings/dashboard/DashboardTile;

    iget-object v2, v2, Lcom/android/exsettings/dashboard/DashboardTile;->fragmentArguments:Landroid/os/Bundle;

    .line 136
    iget-object v5, p0, Lcom/android/exsettings/dashboard/DashboardTileView;->mTile:Lcom/android/exsettings/dashboard/DashboardTile;

    iget v5, v5, Lcom/android/exsettings/dashboard/DashboardTile;->titleRes:I

    iget-object v6, p0, Lcom/android/exsettings/dashboard/DashboardTileView;->mTile:Lcom/android/exsettings/dashboard/DashboardTile;

    invoke-virtual {p0}, Lcom/android/exsettings/dashboard/DashboardTileView;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/android/exsettings/dashboard/DashboardTile;->getTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v6

    .line 135
    invoke-static/range {v0 .. v6}, Lcom/android/exsettings/Utils;->startWithFragment(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;IILjava/lang/CharSequence;)V

    .line 133
    :cond_0
    :goto_0
    return-void

    .line 137
    :cond_1
    iget-object v0, p0, Lcom/android/exsettings/dashboard/DashboardTileView;->mTile:Lcom/android/exsettings/dashboard/DashboardTile;

    iget-object v0, v0, Lcom/android/exsettings/dashboard/DashboardTile;->intent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/android/exsettings/dashboard/DashboardTileView;->mTile:Lcom/android/exsettings/dashboard/DashboardTile;

    iget-object v0, v0, Lcom/android/exsettings/dashboard/DashboardTile;->userHandle:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 139
    .local v7, "numUserHandles":I
    if-le v7, v1, :cond_2

    .line 140
    invoke-virtual {p0}, Lcom/android/exsettings/dashboard/DashboardTileView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/exsettings/dashboard/DashboardTileView;->mTile:Lcom/android/exsettings/dashboard/DashboardTile;

    invoke-static {v0, v1}, Lcom/android/exsettings/ProfileSelectDialog;->show(Landroid/app/FragmentManager;Lcom/android/exsettings/dashboard/DashboardTile;)V

    goto :goto_0

    .line 141
    :cond_2
    if-ne v7, v1, :cond_3

    .line 142
    invoke-virtual {p0}, Lcom/android/exsettings/dashboard/DashboardTileView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v0, p0, Lcom/android/exsettings/dashboard/DashboardTileView;->mTile:Lcom/android/exsettings/dashboard/DashboardTile;

    iget-object v2, v0, Lcom/android/exsettings/dashboard/DashboardTile;->intent:Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/exsettings/dashboard/DashboardTileView;->mTile:Lcom/android/exsettings/dashboard/DashboardTile;

    iget-object v0, v0, Lcom/android/exsettings/dashboard/DashboardTile;->userHandle:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserHandle;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_0

    .line 144
    :cond_3
    invoke-virtual {p0}, Lcom/android/exsettings/dashboard/DashboardTileView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/exsettings/dashboard/DashboardTileView;->mTile:Lcom/android/exsettings/dashboard/DashboardTile;

    iget-object v1, v1, Lcom/android/exsettings/dashboard/DashboardTile;->intent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 93
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 94
    iget-object v0, p0, Lcom/android/exsettings/dashboard/DashboardTileView;->mSwitchToggle:Lcom/android/exsettings/dashboard/GenericSwitchToggle;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/android/exsettings/dashboard/DashboardTileView;->mSwitchToggle:Lcom/android/exsettings/dashboard/GenericSwitchToggle;

    invoke-virtual {v0}, Lcom/android/exsettings/dashboard/GenericSwitchToggle;->pause()V

    .line 92
    :cond_0
    return-void
.end method

.method public setDividerVisibility(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 121
    iget-object v1, p0, Lcom/android/exsettings/dashboard/DashboardTileView;->mDivider:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 120
    return-void

    .line 121
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public setEnabledTile(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 154
    iget-object v1, p0, Lcom/android/exsettings/dashboard/DashboardTileView;->mImageView:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 155
    iget-object v0, p0, Lcom/android/exsettings/dashboard/DashboardTileView;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 156
    iget-object v0, p0, Lcom/android/exsettings/dashboard/DashboardTileView;->mStatusTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 157
    iget-object v0, p0, Lcom/android/exsettings/dashboard/DashboardTileView;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p1}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 158
    iget-object v0, p0, Lcom/android/exsettings/dashboard/DashboardTileView;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p1}, Landroid/widget/Switch;->setClickable(Z)V

    .line 159
    invoke-virtual {p0, p1}, Lcom/android/exsettings/dashboard/DashboardTileView;->setFocusable(Z)V

    .line 160
    invoke-virtual {p0, p1}, Lcom/android/exsettings/dashboard/DashboardTileView;->setEnabled(Z)V

    .line 153
    return-void

    .line 154
    :cond_0
    const v0, 0x3ecccccd    # 0.4f

    goto :goto_0
.end method

.method public setTile(Lcom/android/exsettings/dashboard/DashboardTile;)V
    .locals 7
    .param p1, "tile"    # Lcom/android/exsettings/dashboard/DashboardTile;

    .prologue
    .line 100
    iput-object p1, p0, Lcom/android/exsettings/dashboard/DashboardTileView;->mTile:Lcom/android/exsettings/dashboard/DashboardTile;

    .line 102
    iget-object v4, p0, Lcom/android/exsettings/dashboard/DashboardTileView;->mTile:Lcom/android/exsettings/dashboard/DashboardTile;

    iget-object v4, v4, Lcom/android/exsettings/dashboard/DashboardTile;->switchControl:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 104
    :try_start_0
    invoke-virtual {p0}, Lcom/android/exsettings/dashboard/DashboardTileView;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    iget-object v5, p0, Lcom/android/exsettings/dashboard/DashboardTileView;->mTile:Lcom/android/exsettings/dashboard/DashboardTile;

    iget-object v5, v5, Lcom/android/exsettings/dashboard/DashboardTile;->switchControl:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 105
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-class v5, Landroid/widget/Switch;

    const/4 v6, 0x1

    aput-object v5, v4, v6

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 106
    .local v1, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    .line 107
    invoke-virtual {p0}, Lcom/android/exsettings/dashboard/DashboardTileView;->getContext()Landroid/content/Context;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    iget-object v5, p0, Lcom/android/exsettings/dashboard/DashboardTileView;->mSwitch:Landroid/widget/Switch;

    const/4 v6, 0x1

    aput-object v5, v4, v6

    .line 106
    invoke-virtual {v1, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/exsettings/dashboard/GenericSwitchToggle;

    .line 108
    .local v3, "sw":Lcom/android/exsettings/dashboard/GenericSwitchToggle;
    iput-object v3, p0, Lcom/android/exsettings/dashboard/DashboardTileView;->mSwitchToggle:Lcom/android/exsettings/dashboard/GenericSwitchToggle;

    .line 109
    iget-object v4, p0, Lcom/android/exsettings/dashboard/DashboardTileView;->mSwitchToggle:Lcom/android/exsettings/dashboard/GenericSwitchToggle;

    invoke-virtual {p0}, Lcom/android/exsettings/dashboard/DashboardTileView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/exsettings/dashboard/GenericSwitchToggle;->resume(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v3    # "sw":Lcom/android/exsettings/dashboard/GenericSwitchToggle;
    :cond_0
    :goto_0
    return-void

    .line 114
    :catch_0
    move-exception v2

    .line 115
    .local v2, "e":Ljava/lang/ReflectiveOperationException;
    invoke-virtual {v2}, Ljava/lang/ReflectiveOperationException;->printStackTrace()V

    goto :goto_0
.end method
