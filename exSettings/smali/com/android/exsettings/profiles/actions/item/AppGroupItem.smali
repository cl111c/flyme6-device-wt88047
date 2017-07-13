.class public Lcom/android/exsettings/profiles/actions/item/AppGroupItem;
.super Ljava/lang/Object;
.source "AppGroupItem.java"

# interfaces
.implements Lcom/android/exsettings/profiles/actions/item/Item;


# instance fields
.field mGroup:Lcyanogenmod/app/ProfileGroup;

.field mNotifGroup:Landroid/app/NotificationGroup;

.field mProfile:Lcyanogenmod/app/Profile;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcyanogenmod/app/Profile;Lcyanogenmod/app/ProfileGroup;Landroid/app/NotificationGroup;)V
    .locals 2
    .param p1, "profile"    # Lcyanogenmod/app/Profile;
    .param p2, "group"    # Lcyanogenmod/app/ProfileGroup;
    .param p3, "nGroup"    # Landroid/app/NotificationGroup;

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/android/exsettings/profiles/actions/item/AppGroupItem;->mProfile:Lcyanogenmod/app/Profile;

    .line 45
    if-nez p2, :cond_0

    .line 46
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "profile group can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 48
    :cond_0
    iput-object p2, p0, Lcom/android/exsettings/profiles/actions/item/AppGroupItem;->mGroup:Lcyanogenmod/app/ProfileGroup;

    .line 49
    iput-object p3, p0, Lcom/android/exsettings/profiles/actions/item/AppGroupItem;->mNotifGroup:Landroid/app/NotificationGroup;

    .line 43
    return-void
.end method


# virtual methods
.method public getGroupUuid()Ljava/util/UUID;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 63
    iget-object v0, p0, Lcom/android/exsettings/profiles/actions/item/AppGroupItem;->mGroup:Lcyanogenmod/app/ProfileGroup;

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/android/exsettings/profiles/actions/item/AppGroupItem;->mGroup:Lcyanogenmod/app/ProfileGroup;

    invoke-virtual {v0}, Lcyanogenmod/app/ProfileGroup;->getUuid()Ljava/util/UUID;

    move-result-object v0

    return-object v0

    .line 66
    :cond_0
    return-object v1
.end method

.method public getRowType()Lcom/android/exsettings/profiles/actions/ItemListAdapter$RowType;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcom/android/exsettings/profiles/actions/ItemListAdapter$RowType;->APP_GROUP_ITEM:Lcom/android/exsettings/profiles/actions/ItemListAdapter$RowType;

    return-object v0
.end method

.method public getView(Landroid/view/LayoutInflater;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v4, 0x0

    .line 72
    if-nez p2, :cond_0

    .line 73
    const v3, 0x7f04008d

    invoke-virtual {p1, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 77
    .local v2, "view":Landroid/view/View;
    :goto_0
    const v3, 0x7f13000b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 78
    .local v1, "text":Landroid/widget/TextView;
    const v3, 0x7f13006a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 80
    .local v0, "desc":Landroid/widget/TextView;
    iget-object v3, p0, Lcom/android/exsettings/profiles/actions/item/AppGroupItem;->mGroup:Lcyanogenmod/app/ProfileGroup;

    if-eqz v3, :cond_2

    .line 81
    iget-object v3, p0, Lcom/android/exsettings/profiles/actions/item/AppGroupItem;->mNotifGroup:Landroid/app/NotificationGroup;

    if-eqz v3, :cond_1

    .line 82
    iget-object v3, p0, Lcom/android/exsettings/profiles/actions/item/AppGroupItem;->mNotifGroup:Landroid/app/NotificationGroup;

    invoke-virtual {v3}, Landroid/app/NotificationGroup;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    :goto_1
    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 94
    :goto_2
    return-object v2

    .line 75
    .end local v0    # "desc":Landroid/widget/TextView;
    .end local v1    # "text":Landroid/widget/TextView;
    .end local v2    # "view":Landroid/view/View;
    :cond_0
    move-object v2, p2

    .restart local v2    # "view":Landroid/view/View;
    goto :goto_0

    .line 84
    .restart local v0    # "desc":Landroid/widget/TextView;
    .restart local v1    # "text":Landroid/widget/TextView;
    :cond_1
    const-string/jumbo v3, "<unknown>"

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 88
    :cond_2
    const v3, 0x7f0c009b

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    .line 89
    const v3, 0x7f0c009c

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 91
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x1

    return v0
.end method
