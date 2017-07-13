.class public Lcom/android/exsettings/profiles/actions/item/ConnectionOverrideItem;
.super Ljava/lang/Object;
.source "ConnectionOverrideItem.java"

# interfaces
.implements Lcom/android/exsettings/profiles/actions/item/Item;


# instance fields
.field mConnectionId:I

.field mConnectionSettings:Lcyanogenmod/profiles/ConnectionSettings;


# direct methods
.method public constructor <init>(ILcyanogenmod/profiles/ConnectionSettings;)V
    .locals 0
    .param p1, "connectionId"    # I
    .param p2, "settings"    # Lcyanogenmod/profiles/ConnectionSettings;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput p1, p0, Lcom/android/exsettings/profiles/actions/item/ConnectionOverrideItem;->mConnectionId:I

    .line 40
    if-nez p2, :cond_0

    .line 41
    new-instance p2, Lcyanogenmod/profiles/ConnectionSettings;

    .end local p2    # "settings":Lcyanogenmod/profiles/ConnectionSettings;
    invoke-direct {p2, p1}, Lcyanogenmod/profiles/ConnectionSettings;-><init>(I)V

    .line 43
    .restart local p2    # "settings":Lcyanogenmod/profiles/ConnectionSettings;
    :cond_0
    iput-object p2, p0, Lcom/android/exsettings/profiles/actions/item/ConnectionOverrideItem;->mConnectionSettings:Lcyanogenmod/profiles/ConnectionSettings;

    .line 38
    return-void
.end method

.method public static getConnectionTitle(Landroid/content/Context;Lcyanogenmod/profiles/ConnectionSettings;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "settings"    # Lcyanogenmod/profiles/ConnectionSettings;

    .prologue
    .line 76
    const/4 v1, 0x0

    .line 77
    .local v1, "r":I
    invoke-virtual {p1}, Lcyanogenmod/profiles/ConnectionSettings;->getConnectionId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 110
    :goto_0
    :pswitch_0
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 79
    :pswitch_1
    const v1, 0x7f0c00d3

    .line 80
    goto :goto_0

    .line 82
    :pswitch_2
    const v1, 0x7f0c00d5

    .line 83
    goto :goto_0

    .line 85
    :pswitch_3
    invoke-virtual {p1}, Lcyanogenmod/profiles/ConnectionSettings;->getSubId()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 86
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v2

    .line 87
    invoke-virtual {p1}, Lcyanogenmod/profiles/ConnectionSettings;->getSubId()I

    move-result v3

    .line 86
    invoke-virtual {v2, v3}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 90
    .local v0, "displayName":Ljava/lang/String;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const v3, 0x7f0c00d8

    invoke-virtual {p0, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 92
    .end local v0    # "displayName":Ljava/lang/String;
    :cond_0
    const v1, 0x7f0c00d7

    .line 93
    goto :goto_0

    .line 95
    :pswitch_4
    const v1, 0x7f0c00d4

    .line 96
    goto :goto_0

    .line 98
    :pswitch_5
    const v1, 0x7f0c00d9

    .line 99
    goto :goto_0

    .line 101
    :pswitch_6
    const v1, 0x7f0c00d6

    .line 102
    goto :goto_0

    .line 104
    :pswitch_7
    const v1, 0x7f0c00d1

    .line 105
    goto :goto_0

    .line 107
    :pswitch_8
    const v1, 0x7f0c00d2

    .line 108
    goto :goto_0

    .line 77
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_4
        :pswitch_6
        :pswitch_0
        :pswitch_1
        :pswitch_5
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public getConnectionType()I
    .locals 1

    .prologue
    .line 143
    iget v0, p0, Lcom/android/exsettings/profiles/actions/item/ConnectionOverrideItem;->mConnectionId:I

    return v0
.end method

.method public getRowType()Lcom/android/exsettings/profiles/actions/ItemListAdapter$RowType;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/android/exsettings/profiles/actions/ItemListAdapter$RowType;->CONNECTION_ITEM:Lcom/android/exsettings/profiles/actions/ItemListAdapter$RowType;

    return-object v0
.end method

.method public getSettings()Lcyanogenmod/profiles/ConnectionSettings;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/exsettings/profiles/actions/item/ConnectionOverrideItem;->mConnectionSettings:Lcyanogenmod/profiles/ConnectionSettings;

    return-object v0
.end method

.method public getSummary(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 114
    const/4 v0, -0x1

    .line 115
    .local v0, "resId":I
    iget-object v1, p0, Lcom/android/exsettings/profiles/actions/item/ConnectionOverrideItem;->mConnectionSettings:Lcyanogenmod/profiles/ConnectionSettings;

    if-eqz v1, :cond_4

    .line 116
    iget v1, p0, Lcom/android/exsettings/profiles/actions/item/ConnectionOverrideItem;->mConnectionId:I

    const/16 v2, 0x9

    if-ne v1, v2, :cond_1

    .line 117
    iget-object v1, p0, Lcom/android/exsettings/profiles/actions/item/ConnectionOverrideItem;->mConnectionSettings:Lcyanogenmod/profiles/ConnectionSettings;

    invoke-virtual {v1}, Lcyanogenmod/profiles/ConnectionSettings;->isOverride()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 119
    iget-object v1, p0, Lcom/android/exsettings/profiles/actions/item/ConnectionOverrideItem;->mConnectionSettings:Lcyanogenmod/profiles/ConnectionSettings;

    invoke-virtual {v1}, Lcyanogenmod/profiles/ConnectionSettings;->getValue()I

    move-result v1

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v2

    .line 118
    invoke-static {p1, v1, v2}, Lcom/android/exsettings/utils/TelephonyUtils;->getNetworkModeString(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 121
    :cond_0
    const v0, 0x7f0c00ea

    .line 135
    :goto_0
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 123
    :cond_1
    iget-object v1, p0, Lcom/android/exsettings/profiles/actions/item/ConnectionOverrideItem;->mConnectionSettings:Lcyanogenmod/profiles/ConnectionSettings;

    invoke-virtual {v1}, Lcyanogenmod/profiles/ConnectionSettings;->isOverride()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 124
    iget-object v1, p0, Lcom/android/exsettings/profiles/actions/item/ConnectionOverrideItem;->mConnectionSettings:Lcyanogenmod/profiles/ConnectionSettings;

    invoke-virtual {v1}, Lcyanogenmod/profiles/ConnectionSettings;->getValue()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 125
    const v0, 0x7f0c00ed

    goto :goto_0

    .line 127
    :cond_2
    const v0, 0x7f0c00ec

    goto :goto_0

    .line 130
    :cond_3
    const v0, 0x7f0c00ea

    goto :goto_0

    .line 133
    :cond_4
    const v0, 0x7f0c00ea

    goto :goto_0
.end method

.method public getView(Landroid/view/LayoutInflater;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 54
    if-nez p2, :cond_0

    .line 55
    const v3, 0x7f04008d

    const/4 v4, 0x0

    invoke-virtual {p1, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 61
    .local v2, "view":Landroid/view/View;
    :goto_0
    const v3, 0x7f13000b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 62
    .local v1, "title":Landroid/widget/TextView;
    const v3, 0x7f13006a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 64
    .local v0, "summary":Landroid/widget/TextView;
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/exsettings/profiles/actions/item/ConnectionOverrideItem;->mConnectionSettings:Lcyanogenmod/profiles/ConnectionSettings;

    invoke-static {v3, v4}, Lcom/android/exsettings/profiles/actions/item/ConnectionOverrideItem;->getConnectionTitle(Landroid/content/Context;Lcyanogenmod/profiles/ConnectionSettings;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/exsettings/profiles/actions/item/ConnectionOverrideItem;->getSummary(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    return-object v2

    .line 58
    .end local v0    # "summary":Landroid/widget/TextView;
    .end local v1    # "title":Landroid/widget/TextView;
    .end local v2    # "view":Landroid/view/View;
    :cond_0
    move-object v2, p2

    .restart local v2    # "view":Landroid/view/View;
    goto :goto_0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x1

    return v0
.end method
