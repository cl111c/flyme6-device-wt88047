.class public Lcom/android/exsettings/profiles/actions/item/ProfileNameItem;
.super Ljava/lang/Object;
.source "ProfileNameItem.java"

# interfaces
.implements Lcom/android/exsettings/profiles/actions/item/Item;


# instance fields
.field mProfile:Lcyanogenmod/app/Profile;


# direct methods
.method public constructor <init>(Lcyanogenmod/app/Profile;)V
    .locals 0
    .param p1, "profile"    # Lcyanogenmod/app/Profile;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/android/exsettings/profiles/actions/item/ProfileNameItem;->mProfile:Lcyanogenmod/app/Profile;

    .line 31
    return-void
.end method


# virtual methods
.method public getRowType()Lcom/android/exsettings/profiles/actions/ItemListAdapter$RowType;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/android/exsettings/profiles/actions/ItemListAdapter$RowType;->NAME_ITEM:Lcom/android/exsettings/profiles/actions/ItemListAdapter$RowType;

    return-object v0
.end method

.method public getView(Landroid/view/LayoutInflater;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 48
    if-nez p2, :cond_0

    .line 49
    const v2, 0x7f0400e5

    const/4 v3, 0x0

    invoke-virtual {p1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 55
    .local v1, "view":Landroid/view/View;
    :goto_0
    const v2, 0x7f13000b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 56
    .local v0, "text":Landroid/widget/TextView;
    iget-object v2, p0, Lcom/android/exsettings/profiles/actions/item/ProfileNameItem;->mProfile:Lcyanogenmod/app/Profile;

    invoke-virtual {v2}, Lcyanogenmod/app/Profile;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    return-object v1

    .line 52
    .end local v0    # "text":Landroid/widget/TextView;
    .end local v1    # "view":Landroid/view/View;
    :cond_0
    move-object v1, p2

    .restart local v1    # "view":Landroid/view/View;
    goto :goto_0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x1

    return v0
.end method
