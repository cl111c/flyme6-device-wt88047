.class public Lcom/android/exsettings/profiles/actions/item/TriggerItem;
.super Ljava/lang/Object;
.source "TriggerItem.java"

# interfaces
.implements Lcom/android/exsettings/profiles/actions/item/Item;


# instance fields
.field mProfile:Lcyanogenmod/app/Profile;

.field mTriggerType:I


# direct methods
.method public constructor <init>(Lcyanogenmod/app/Profile;I)V
    .locals 0
    .param p1, "profile"    # Lcyanogenmod/app/Profile;
    .param p2, "whichTrigger"    # I

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/android/exsettings/profiles/actions/item/TriggerItem;->mProfile:Lcyanogenmod/app/Profile;

    .line 44
    iput p2, p0, Lcom/android/exsettings/profiles/actions/item/TriggerItem;->mTriggerType:I

    .line 42
    return-void
.end method

.method public static getTitleString(I)I
    .locals 1
    .param p0, "triggerType"    # I

    .prologue
    .line 100
    packed-switch p0, :pswitch_data_0

    .line 107
    const/4 v0, 0x0

    return v0

    .line 102
    :pswitch_0
    const v0, 0x7f0c00f0

    return v0

    .line 104
    :pswitch_1
    const v0, 0x7f0c00f1

    return v0

    .line 106
    :pswitch_2
    const v0, 0x7f0c00f2

    return v0

    .line 100
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public getRowType()Lcom/android/exsettings/profiles/actions/ItemListAdapter$RowType;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/android/exsettings/profiles/actions/ItemListAdapter$RowType;->TRIGGER_ITEM:Lcom/android/exsettings/profiles/actions/ItemListAdapter$RowType;

    return-object v0
.end method

.method public getTriggerType()I
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lcom/android/exsettings/profiles/actions/item/TriggerItem;->mTriggerType:I

    return v0
.end method

.method public getView(Landroid/view/LayoutInflater;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v7, 0x0

    .line 64
    if-nez p2, :cond_1

    .line 65
    const v6, 0x7f04008d

    invoke-virtual {p1, v6, p3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    .line 71
    .local v5, "view":Landroid/view/View;
    :goto_0
    const v6, 0x7f13000b

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 72
    .local v3, "text":Landroid/widget/TextView;
    iget v6, p0, Lcom/android/exsettings/profiles/actions/item/TriggerItem;->mTriggerType:I

    invoke-static {v6}, Lcom/android/exsettings/profiles/actions/item/TriggerItem;->getTitleString(I)I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(I)V

    .line 75
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 76
    .local v2, "sb":Ljava/lang/StringBuilder;
    iget-object v6, p0, Lcom/android/exsettings/profiles/actions/item/TriggerItem;->mProfile:Lcyanogenmod/app/Profile;

    iget v7, p0, Lcom/android/exsettings/profiles/actions/item/TriggerItem;->mTriggerType:I

    invoke-virtual {v6, v7}, Lcyanogenmod/app/Profile;->getTriggersFromType(I)Ljava/util/ArrayList;

    move-result-object v4

    .line 78
    .local v4, "triggers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcyanogenmod/app/Profile$ProfileTrigger;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v1, v6, :cond_2

    .line 79
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcyanogenmod/app/Profile$ProfileTrigger;

    invoke-virtual {v6}, Lcyanogenmod/app/Profile$ProfileTrigger;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ge v1, v6, :cond_0

    .line 81
    const-string/jumbo v6, "\n"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 68
    .end local v1    # "i":I
    .end local v2    # "sb":Ljava/lang/StringBuilder;
    .end local v3    # "text":Landroid/widget/TextView;
    .end local v4    # "triggers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcyanogenmod/app/Profile$ProfileTrigger;>;"
    .end local v5    # "view":Landroid/view/View;
    :cond_1
    move-object v5, p2

    .restart local v5    # "view":Landroid/view/View;
    goto :goto_0

    .line 85
    .restart local v1    # "i":I
    .restart local v2    # "sb":Ljava/lang/StringBuilder;
    .restart local v3    # "text":Landroid/widget/TextView;
    .restart local v4    # "triggers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcyanogenmod/app/Profile$ProfileTrigger;>;"
    :cond_2
    const v6, 0x7f13006a

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 86
    .local v0, "desc":Landroid/widget/TextView;
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-nez v6, :cond_4

    .line 87
    iget v6, p0, Lcom/android/exsettings/profiles/actions/item/TriggerItem;->mTriggerType:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_3

    .line 88
    const v6, 0x7f0c00fb

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(I)V

    .line 96
    :goto_2
    return-object v5

    .line 90
    :cond_3
    const v6, 0x7f0c00fa

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    .line 93
    :cond_4
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x1

    return v0
.end method
