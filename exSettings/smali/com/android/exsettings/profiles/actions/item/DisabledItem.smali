.class public Lcom/android/exsettings/profiles/actions/item/DisabledItem;
.super Ljava/lang/Object;
.source "DisabledItem.java"

# interfaces
.implements Lcom/android/exsettings/profiles/actions/item/Item;


# instance fields
.field private final mResSummary:I

.field private final mResTitle:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "resTitle"    # I
    .param p2, "resSummary"    # I

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput p1, p0, Lcom/android/exsettings/profiles/actions/item/DisabledItem;->mResTitle:I

    .line 33
    iput p2, p0, Lcom/android/exsettings/profiles/actions/item/DisabledItem;->mResSummary:I

    .line 31
    return-void
.end method


# virtual methods
.method public getRowType()Lcom/android/exsettings/profiles/actions/ItemListAdapter$RowType;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/android/exsettings/profiles/actions/ItemListAdapter$RowType;->DISABLED_ITEM:Lcom/android/exsettings/profiles/actions/ItemListAdapter$RowType;

    return-object v0
.end method

.method public getView(Landroid/view/LayoutInflater;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v4, 0x0

    .line 49
    if-nez p2, :cond_0

    .line 50
    const v3, 0x7f04008d

    invoke-virtual {p1, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 56
    .local v2, "view":Landroid/view/View;
    :goto_0
    const v3, 0x7f13000b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 57
    .local v1, "text":Landroid/widget/TextView;
    iget v3, p0, Lcom/android/exsettings/profiles/actions/item/DisabledItem;->mResTitle:I

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    .line 58
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 60
    const v3, 0x7f13006a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 61
    .local v0, "desc":Landroid/widget/TextView;
    iget v3, p0, Lcom/android/exsettings/profiles/actions/item/DisabledItem;->mResSummary:I

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 62
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 64
    return-object v2

    .line 53
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
    .line 43
    const/4 v0, 0x0

    return v0
.end method
