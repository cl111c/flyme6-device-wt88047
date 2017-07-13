.class public Lcom/android/exsettings/AppHeader;
.super Ljava/lang/Object;
.source "AppHeader.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createAppHeader(Landroid/app/Activity;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Landroid/content/Intent;Landroid/view/ViewGroup;)V
    .locals 6
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p2, "label"    # Ljava/lang/CharSequence;
    .param p3, "settingsIntent"    # Landroid/content/Intent;
    .param p4, "pinnedHeader"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v4, 0x0

    .line 38
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f04000c

    invoke-virtual {v0, v1, p4, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    .local v5, "bar":Landroid/view/View;
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 40
    invoke-static/range {v0 .. v5}, Lcom/android/exsettings/AppHeader;->setupHeaderView(Landroid/app/Activity;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Landroid/content/Intent;ILandroid/view/View;)Landroid/view/View;

    .line 41
    invoke-virtual {p4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 37
    return-void
.end method

.method public static createAppHeader(Lcom/android/exsettings/SettingsPreferenceFragment;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Landroid/content/Intent;)V
    .locals 1
    .param p0, "fragment"    # Lcom/android/exsettings/SettingsPreferenceFragment;
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p2, "label"    # Ljava/lang/CharSequence;
    .param p3, "settingsIntent"    # Landroid/content/Intent;

    .prologue
    .line 33
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/android/exsettings/AppHeader;->createAppHeader(Lcom/android/exsettings/SettingsPreferenceFragment;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Landroid/content/Intent;I)V

    .line 32
    return-void
.end method

.method public static createAppHeader(Lcom/android/exsettings/SettingsPreferenceFragment;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Landroid/content/Intent;I)V
    .locals 6
    .param p0, "fragment"    # Lcom/android/exsettings/SettingsPreferenceFragment;
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p2, "label"    # Ljava/lang/CharSequence;
    .param p3, "settingsIntent"    # Landroid/content/Intent;
    .param p4, "tintColorRes"    # I

    .prologue
    .line 46
    const v0, 0x7f04000c

    invoke-virtual {p0, v0}, Lcom/android/exsettings/SettingsPreferenceFragment;->setPinnedHeaderView(I)Landroid/view/View;

    move-result-object v5

    .line 47
    .local v5, "bar":Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Lcom/android/exsettings/AppHeader;->setupHeaderView(Landroid/app/Activity;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Landroid/content/Intent;ILandroid/view/View;)Landroid/view/View;

    .line 45
    return-void
.end method

.method private static setupHeaderView(Landroid/app/Activity;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Landroid/content/Intent;ILandroid/view/View;)Landroid/view/View;
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p2, "label"    # Ljava/lang/CharSequence;
    .param p3, "settingsIntent"    # Landroid/content/Intent;
    .param p4, "tintColorRes"    # I
    .param p5, "bar"    # Landroid/view/View;

    .prologue
    .line 52
    const v3, 0x7f13001f

    invoke-virtual {p5, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 53
    .local v0, "appIcon":Landroid/widget/ImageView;
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 54
    if-eqz p4, :cond_0

    .line 55
    invoke-virtual {p0, p4}, Landroid/app/Activity;->getColor(I)I

    move-result v3

    invoke-static {v3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 58
    :cond_0
    const v3, 0x7f130020

    invoke-virtual {p5, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 59
    .local v1, "appName":Landroid/widget/TextView;
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    const v3, 0x7f130021

    invoke-virtual {p5, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 62
    .local v2, "appSettings":Landroid/view/View;
    if-nez p3, :cond_1

    .line 63
    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 74
    :goto_0
    return-object p5

    .line 65
    :cond_1
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/View;->setClickable(Z)V

    .line 66
    new-instance v3, Lcom/android/exsettings/AppHeader$1;

    invoke-direct {v3, p0, p3}, Lcom/android/exsettings/AppHeader$1;-><init>(Landroid/app/Activity;Landroid/content/Intent;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method
