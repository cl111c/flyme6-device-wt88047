.class public Lcom/android/exsettings/profiles/actions/item/VolumeStreamItem;
.super Ljava/lang/Object;
.source "VolumeStreamItem.java"

# interfaces
.implements Lcom/android/exsettings/profiles/actions/item/Item;


# instance fields
.field private mEnabled:Z

.field private mStreamId:I

.field private mStreamSettings:Lcyanogenmod/profiles/StreamSettings;


# direct methods
.method public constructor <init>(ILcyanogenmod/profiles/StreamSettings;)V
    .locals 0
    .param p1, "streamId"    # I
    .param p2, "streamSettings"    # Lcyanogenmod/profiles/StreamSettings;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput p1, p0, Lcom/android/exsettings/profiles/actions/item/VolumeStreamItem;->mStreamId:I

    .line 38
    iput-object p2, p0, Lcom/android/exsettings/profiles/actions/item/VolumeStreamItem;->mStreamSettings:Lcyanogenmod/profiles/StreamSettings;

    .line 36
    return-void
.end method

.method public static getNameForStream(I)I
    .locals 1
    .param p0, "stream"    # I

    .prologue
    .line 90
    packed-switch p0, :pswitch_data_0

    .line 99
    const/4 v0, 0x0

    return v0

    .line 92
    :pswitch_0
    const v0, 0x7f0c07d7

    return v0

    .line 94
    :pswitch_1
    const v0, 0x7f0c07d5

    return v0

    .line 96
    :pswitch_2
    const v0, 0x7f0c07d0

    return v0

    .line 98
    :pswitch_3
    const v0, 0x7f0c07d1

    return v0

    .line 90
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public getRowType()Lcom/android/exsettings/profiles/actions/ItemListAdapter$RowType;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/android/exsettings/profiles/actions/ItemListAdapter$RowType;->VOLUME_STREAM_ITEM:Lcom/android/exsettings/profiles/actions/ItemListAdapter$RowType;

    return-object v0
.end method

.method public getSettings()Lcyanogenmod/profiles/StreamSettings;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/exsettings/profiles/actions/item/VolumeStreamItem;->mStreamSettings:Lcyanogenmod/profiles/StreamSettings;

    return-object v0
.end method

.method public getStreamType()I
    .locals 1

    .prologue
    .line 104
    iget v0, p0, Lcom/android/exsettings/profiles/actions/item/VolumeStreamItem;->mStreamId:I

    return v0
.end method

.method public getView(Landroid/view/LayoutInflater;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 54
    if-nez p2, :cond_1

    .line 55
    const v8, 0x7f04008d

    const/4 v9, 0x0

    invoke-virtual {p1, v8, p3, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    .line 61
    .local v6, "view":Landroid/view/View;
    :goto_0
    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 62
    .local v1, "context":Landroid/content/Context;
    const-string/jumbo v8, "audio"

    invoke-virtual {v1, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 64
    .local v0, "am":Landroid/media/AudioManager;
    const v8, 0x7f13000b

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 65
    .local v5, "text":Landroid/widget/TextView;
    iget v8, p0, Lcom/android/exsettings/profiles/actions/item/VolumeStreamItem;->mStreamId:I

    invoke-static {v8}, Lcom/android/exsettings/profiles/actions/item/VolumeStreamItem;->getNameForStream(I)I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(I)V

    .line 67
    const v8, 0x7f13006a

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 68
    .local v3, "desc":Landroid/widget/TextView;
    iget-object v8, p0, Lcom/android/exsettings/profiles/actions/item/VolumeStreamItem;->mStreamSettings:Lcyanogenmod/profiles/StreamSettings;

    invoke-virtual {v8}, Lcyanogenmod/profiles/StreamSettings;->getValue()I

    move-result v2

    .line 69
    .local v2, "denominator":I
    iget v8, p0, Lcom/android/exsettings/profiles/actions/item/VolumeStreamItem;->mStreamId:I

    invoke-virtual {v0, v8}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v4

    .line 70
    .local v4, "numerator":I
    iget-object v8, p0, Lcom/android/exsettings/profiles/actions/item/VolumeStreamItem;->mStreamSettings:Lcyanogenmod/profiles/StreamSettings;

    invoke-virtual {v8}, Lcyanogenmod/profiles/StreamSettings;->isOverride()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 71
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    .line 72
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x1

    aput-object v10, v9, v11

    .line 71
    const v10, 0x7f0c00b0

    invoke-virtual {v8, v10, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    :goto_1
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    .line 78
    const-string/jumbo v9, "volume_link_notification"

    const/4 v10, 0x1

    .line 77
    invoke-static {v8, v9, v10}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    .line 78
    const/4 v9, 0x1

    .line 77
    if-ne v8, v9, :cond_3

    const/4 v7, 0x1

    .line 79
    .local v7, "volumeLinkNotification":Z
    :goto_2
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/exsettings/profiles/actions/item/VolumeStreamItem;->mEnabled:Z

    .line 80
    iget v8, p0, Lcom/android/exsettings/profiles/actions/item/VolumeStreamItem;->mStreamId:I

    const/4 v9, 0x5

    if-ne v8, v9, :cond_0

    if-eqz v7, :cond_0

    .line 81
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/exsettings/profiles/actions/item/VolumeStreamItem;->mEnabled:Z

    .line 82
    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 83
    const/4 v8, 0x0

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 86
    :cond_0
    return-object v6

    .line 58
    .end local v0    # "am":Landroid/media/AudioManager;
    .end local v1    # "context":Landroid/content/Context;
    .end local v2    # "denominator":I
    .end local v3    # "desc":Landroid/widget/TextView;
    .end local v4    # "numerator":I
    .end local v5    # "text":Landroid/widget/TextView;
    .end local v6    # "view":Landroid/view/View;
    .end local v7    # "volumeLinkNotification":Z
    :cond_1
    move-object v6, p2

    .restart local v6    # "view":Landroid/view/View;
    goto/16 :goto_0

    .line 74
    .restart local v0    # "am":Landroid/media/AudioManager;
    .restart local v1    # "context":Landroid/content/Context;
    .restart local v2    # "denominator":I
    .restart local v3    # "desc":Landroid/widget/TextView;
    .restart local v4    # "numerator":I
    .restart local v5    # "text":Landroid/widget/TextView;
    :cond_2
    const v8, 0x7f0c00ea

    invoke-virtual {v1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 77
    :cond_3
    const/4 v7, 0x0

    .restart local v7    # "volumeLinkNotification":Z
    goto :goto_2
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/android/exsettings/profiles/actions/item/VolumeStreamItem;->mEnabled:Z

    return v0
.end method
