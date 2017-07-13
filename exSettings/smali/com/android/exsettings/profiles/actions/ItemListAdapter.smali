.class public Lcom/android/exsettings/profiles/actions/ItemListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "ItemListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exsettings/profiles/actions/ItemListAdapter$RowType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/android/exsettings/profiles/actions/item/Item;",
        ">;"
    }
.end annotation


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/android/exsettings/profiles/actions/item/Item;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 48
    .local p2, "items":Ljava/util/List;, "Ljava/util/List<Lcom/android/exsettings/profiles/actions/item/Item;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 49
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/profiles/actions/ItemListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 47
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 60
    invoke-virtual {p0, p1}, Lcom/android/exsettings/profiles/actions/ItemListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/exsettings/profiles/actions/item/Item;

    invoke-interface {v0}, Lcom/android/exsettings/profiles/actions/item/Item;->getRowType()Lcom/android/exsettings/profiles/actions/ItemListAdapter$RowType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/exsettings/profiles/actions/ItemListAdapter$RowType;->ordinal()I

    move-result v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 65
    invoke-virtual {p0, p1}, Lcom/android/exsettings/profiles/actions/ItemListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/exsettings/profiles/actions/item/Item;

    iget-object v1, p0, Lcom/android/exsettings/profiles/actions/ItemListAdapter;->mInflater:Landroid/view/LayoutInflater;

    invoke-interface {v0, v1, p2, p3}, Lcom/android/exsettings/profiles/actions/item/Item;->getView(Landroid/view/LayoutInflater;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 54
    invoke-static {}, Lcom/android/exsettings/profiles/actions/ItemListAdapter$RowType;->values()[Lcom/android/exsettings/profiles/actions/ItemListAdapter$RowType;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 75
    invoke-virtual {p0, p1}, Lcom/android/exsettings/profiles/actions/ItemListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/exsettings/profiles/actions/item/Item;

    invoke-interface {v0}, Lcom/android/exsettings/profiles/actions/item/Item;->isEnabled()Z

    move-result v0

    return v0
.end method
