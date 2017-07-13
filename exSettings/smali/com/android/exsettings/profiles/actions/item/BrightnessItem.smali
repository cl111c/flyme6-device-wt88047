.class public Lcom/android/exsettings/profiles/actions/item/BrightnessItem;
.super Ljava/lang/Object;
.source "BrightnessItem.java"

# interfaces
.implements Lcom/android/exsettings/profiles/actions/item/Item;


# instance fields
.field mSettings:Lcyanogenmod/profiles/BrightnessSettings;


# direct methods
.method public constructor <init>(Lcyanogenmod/profiles/BrightnessSettings;)V
    .locals 0
    .param p1, "brightnessSettings"    # Lcyanogenmod/profiles/BrightnessSettings;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    if-nez p1, :cond_0

    .line 34
    new-instance p1, Lcyanogenmod/profiles/BrightnessSettings;

    .end local p1    # "brightnessSettings":Lcyanogenmod/profiles/BrightnessSettings;
    invoke-direct {p1}, Lcyanogenmod/profiles/BrightnessSettings;-><init>()V

    .line 36
    .restart local p1    # "brightnessSettings":Lcyanogenmod/profiles/BrightnessSettings;
    :cond_0
    iput-object p1, p0, Lcom/android/exsettings/profiles/actions/item/BrightnessItem;->mSettings:Lcyanogenmod/profiles/BrightnessSettings;

    .line 32
    return-void
.end method


# virtual methods
.method public getRowType()Lcom/android/exsettings/profiles/actions/ItemListAdapter$RowType;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/android/exsettings/profiles/actions/ItemListAdapter$RowType;->BRIGHTNESS_ITEM:Lcom/android/exsettings/profiles/actions/ItemListAdapter$RowType;

    return-object v0
.end method

.method public getSettings()Lcyanogenmod/profiles/BrightnessSettings;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/exsettings/profiles/actions/item/BrightnessItem;->mSettings:Lcyanogenmod/profiles/BrightnessSettings;

    return-object v0
.end method

.method public getView(Landroid/view/LayoutInflater;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v8, 0x0

    .line 52
    if-nez p2, :cond_0

    .line 53
    const v4, 0x7f04008d

    invoke-virtual {p1, v4, p3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 59
    .local v3, "view":Landroid/view/View;
    :goto_0
    const v4, 0x7f13000b

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 60
    .local v2, "text":Landroid/widget/TextView;
    const v4, 0x7f0c00ce

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    .line 62
    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 63
    .local v0, "context":Landroid/content/Context;
    const v4, 0x7f13006a

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 64
    .local v1, "desc":Landroid/widget/TextView;
    iget-object v4, p0, Lcom/android/exsettings/profiles/actions/item/BrightnessItem;->mSettings:Lcyanogenmod/profiles/BrightnessSettings;

    invoke-virtual {v4}, Lcyanogenmod/profiles/BrightnessSettings;->isOverride()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 65
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    .line 67
    iget-object v6, p0, Lcom/android/exsettings/profiles/actions/item/BrightnessItem;->mSettings:Lcyanogenmod/profiles/BrightnessSettings;

    invoke-virtual {v6}, Lcyanogenmod/profiles/BrightnessSettings;->getValue()I

    move-result v6

    int-to-float v6, v6

    const/high16 v7, 0x42c80000    # 100.0f

    mul-float/2addr v6, v7

    const/high16 v7, 0x437f0000    # 255.0f

    div-float/2addr v6, v7

    float-to-int v6, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    .line 66
    const v6, 0x7f0c00cf

    .line 65
    invoke-virtual {v4, v6, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    :goto_1
    return-object v3

    .line 56
    .end local v0    # "context":Landroid/content/Context;
    .end local v1    # "desc":Landroid/widget/TextView;
    .end local v2    # "text":Landroid/widget/TextView;
    .end local v3    # "view":Landroid/view/View;
    :cond_0
    move-object v3, p2

    .restart local v3    # "view":Landroid/view/View;
    goto :goto_0

    .line 69
    .restart local v0    # "context":Landroid/content/Context;
    .restart local v1    # "desc":Landroid/widget/TextView;
    .restart local v2    # "text":Landroid/widget/TextView;
    :cond_1
    const v4, 0x7f0c00ea

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x1

    return v0
.end method
