.class public Lcom/android/setupwizardlib/view/NavigationBar$NavButton;
.super Landroid/widget/Button;
.source "NavigationBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/setupwizardlib/view/NavigationBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NavButton"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 134
    invoke-direct {p0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 133
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 138
    invoke-direct {p0, p1, p2}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 137
    return-void
.end method


# virtual methods
.method protected onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "lengthBefore"    # I
    .param p4, "lengthAfter"    # I

    .prologue
    .line 167
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/Button;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 168
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/setupwizardlib/view/NavigationBar$NavButton;->setCompoundDrawablePadding(I)V

    .line 166
    return-void

    .line 168
    :cond_0
    invoke-virtual {p0}, Lcom/android/setupwizardlib/view/NavigationBar$NavButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 169
    sget v1, Lcom/android/setupwizardlib/R$dimen;->suw_navbar_button_drawable_padding:I

    .line 168
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_0
.end method

.method public setEnabled(Z)V
    .locals 8
    .param p1, "enabled"    # Z

    .prologue
    const/4 v4, 0x0

    .line 143
    invoke-super {p0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 146
    if-eqz p1, :cond_1

    const/16 v0, 0xff

    .line 147
    .local v0, "alpha":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/setupwizardlib/view/NavigationBar$NavButton;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/content/res/ColorStateList;->withAlpha(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/setupwizardlib/view/NavigationBar$NavButton;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 148
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x11

    if-lt v5, v6, :cond_2

    .line 149
    invoke-virtual {p0}, Lcom/android/setupwizardlib/view/NavigationBar$NavButton;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 150
    .local v3, "relativeDrawables":[Landroid/graphics/drawable/Drawable;
    array-length v6, v3

    move v5, v4

    :goto_1
    if-ge v5, v6, :cond_2

    aget-object v2, v3, v5

    .line 151
    .local v2, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_0

    .line 152
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v7, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 150
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 146
    .end local v0    # "alpha":I
    .end local v2    # "d":Landroid/graphics/drawable/Drawable;
    .end local v3    # "relativeDrawables":[Landroid/graphics/drawable/Drawable;
    :cond_1
    const/16 v0, 0x3b

    .restart local v0    # "alpha":I
    goto :goto_0

    .line 156
    :cond_2
    invoke-virtual {p0}, Lcom/android/setupwizardlib/view/NavigationBar$NavButton;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 157
    .local v1, "compoundDrawables":[Landroid/graphics/drawable/Drawable;
    array-length v5, v1

    :goto_2
    if-ge v4, v5, :cond_4

    aget-object v2, v1, v4

    .line 158
    .restart local v2    # "d":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_3

    .line 159
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 157
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 142
    .end local v2    # "d":Landroid/graphics/drawable/Drawable;
    :cond_4
    return-void
.end method
