.class public Lcom/android/exsettings/profiles/actions/item/RingModeItem;
.super Ljava/lang/Object;
.source "RingModeItem.java"

# interfaces
.implements Lcom/android/exsettings/profiles/actions/item/Item;


# instance fields
.field mSettings:Lcyanogenmod/profiles/RingModeSettings;


# direct methods
.method public constructor <init>(Lcyanogenmod/profiles/RingModeSettings;)V
    .locals 0
    .param p1, "ringModeSettings"    # Lcyanogenmod/profiles/RingModeSettings;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    if-nez p1, :cond_0

    .line 33
    new-instance p1, Lcyanogenmod/profiles/RingModeSettings;

    .end local p1    # "ringModeSettings":Lcyanogenmod/profiles/RingModeSettings;
    invoke-direct {p1}, Lcyanogenmod/profiles/RingModeSettings;-><init>()V

    .line 35
    .restart local p1    # "ringModeSettings":Lcyanogenmod/profiles/RingModeSettings;
    :cond_0
    iput-object p1, p0, Lcom/android/exsettings/profiles/actions/item/RingModeItem;->mSettings:Lcyanogenmod/profiles/RingModeSettings;

    .line 31
    return-void
.end method

.method public static getModeString(Lcyanogenmod/profiles/RingModeSettings;)I
    .locals 3
    .param p0, "settings"    # Lcyanogenmod/profiles/RingModeSettings;

    .prologue
    const v2, 0x7f0c0083

    .line 68
    if-nez p0, :cond_0

    .line 69
    return v2

    .line 71
    :cond_0
    invoke-virtual {p0}, Lcyanogenmod/profiles/RingModeSettings;->isOverride()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 72
    invoke-virtual {p0}, Lcyanogenmod/profiles/RingModeSettings;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "vibrate"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 73
    const v0, 0x7f0c0084

    return v0

    .line 74
    :cond_1
    invoke-virtual {p0}, Lcyanogenmod/profiles/RingModeSettings;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "normal"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 75
    return v2

    .line 77
    :cond_2
    const v0, 0x7f0c0085

    return v0

    .line 80
    :cond_3
    const v0, 0x7f0c00ea

    return v0
.end method


# virtual methods
.method public getRowType()Lcom/android/exsettings/profiles/actions/ItemListAdapter$RowType;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/android/exsettings/profiles/actions/ItemListAdapter$RowType;->RINGMODE_ITEM:Lcom/android/exsettings/profiles/actions/ItemListAdapter$RowType;

    return-object v0
.end method

.method public getSettings()Lcyanogenmod/profiles/RingModeSettings;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/exsettings/profiles/actions/item/RingModeItem;->mSettings:Lcyanogenmod/profiles/RingModeSettings;

    return-object v0
.end method

.method public getView(Landroid/view/LayoutInflater;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 51
    if-nez p2, :cond_0

    .line 52
    const v3, 0x7f04008d

    const/4 v4, 0x0

    invoke-virtual {p1, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 58
    .local v2, "view":Landroid/view/View;
    :goto_0
    const v3, 0x7f13000b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 59
    .local v1, "text":Landroid/widget/TextView;
    const v3, 0x7f0c0082

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    .line 61
    const v3, 0x7f13006a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 62
    .local v0, "desc":Landroid/widget/TextView;
    iget-object v3, p0, Lcom/android/exsettings/profiles/actions/item/RingModeItem;->mSettings:Lcyanogenmod/profiles/RingModeSettings;

    invoke-static {v3}, Lcom/android/exsettings/profiles/actions/item/RingModeItem;->getModeString(Lcyanogenmod/profiles/RingModeSettings;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 64
    return-object v2

    .line 55
    .end local v0    # "desc":Landroid/widget/TextView;
    .end local v1    # "text":Landroid/widget/TextView;
    .end local v2    # "view":Landroid/view/View;
    :cond_0
    move-object v2, p2

    .restart local v2    # "view":Landroid/view/View;
    goto :goto_0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x1

    return v0
.end method
