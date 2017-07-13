.class public Lcom/android/exsettings/profiles/TriggerPagerAdapter;
.super Landroid/support/v13/app/FragmentPagerAdapter;
.source "TriggerPagerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exsettings/profiles/TriggerPagerAdapter$TriggerFragments;,
        Lcom/android/exsettings/profiles/TriggerPagerAdapter$Holder;
    }
.end annotation


# instance fields
.field private final mFragmentActivity:Landroid/app/Activity;

.field private final mFragmentArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Fragment;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mHolderList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/exsettings/profiles/TriggerPagerAdapter$Holder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/app/FragmentManager;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "fm"    # Landroid/app/FragmentManager;

    .prologue
    .line 58
    invoke-direct {p0, p2}, Landroid/support/v13/app/FragmentPagerAdapter;-><init>(Landroid/app/FragmentManager;)V

    .line 42
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 41
    iput-object v0, p0, Lcom/android/exsettings/profiles/TriggerPagerAdapter;->mFragmentArray:Landroid/util/SparseArray;

    .line 44
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/profiles/TriggerPagerAdapter;->mHolderList:Ljava/util/List;

    .line 59
    iput-object p1, p0, Lcom/android/exsettings/profiles/TriggerPagerAdapter;->mFragmentActivity:Landroid/app/Activity;

    .line 57
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Class;Landroid/os/Bundle;I)V
    .locals 3
    .param p2, "params"    # Landroid/os/Bundle;
    .param p3, "titleResId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Fragment;",
            ">;",
            "Landroid/os/Bundle;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 72
    .local p1, "className":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Fragment;>;"
    new-instance v0, Lcom/android/exsettings/profiles/TriggerPagerAdapter$Holder;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/android/exsettings/profiles/TriggerPagerAdapter$Holder;-><init>(Lcom/android/exsettings/profiles/TriggerPagerAdapter$Holder;)V

    .line 73
    .local v0, "mHolder":Lcom/android/exsettings/profiles/TriggerPagerAdapter$Holder;
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/exsettings/profiles/TriggerPagerAdapter$Holder;->mClassName:Ljava/lang/String;

    .line 74
    iput-object p2, v0, Lcom/android/exsettings/profiles/TriggerPagerAdapter$Holder;->mParams:Landroid/os/Bundle;

    .line 75
    iput p3, v0, Lcom/android/exsettings/profiles/TriggerPagerAdapter$Holder;->mTitleResId:I

    .line 77
    iget-object v2, p0, Lcom/android/exsettings/profiles/TriggerPagerAdapter;->mHolderList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .line 78
    .local v1, "mPosition":I
    iget-object v2, p0, Lcom/android/exsettings/profiles/TriggerPagerAdapter;->mHolderList:Ljava/util/List;

    invoke-interface {v2, v1, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 79
    invoke-virtual {p0}, Lcom/android/exsettings/profiles/TriggerPagerAdapter;->notifyDataSetChanged()V

    .line 71
    return-void
.end method

.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 2
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    .line 127
    invoke-super {p0, p1, p2, p3}, Landroid/support/v13/app/FragmentPagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 128
    iget-object v1, p0, Lcom/android/exsettings/profiles/TriggerPagerAdapter;->mFragmentArray:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 129
    .local v0, "mWeakFragment":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/Fragment;>;"
    if-eqz v0, :cond_0

    .line 130
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 126
    :cond_0
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/exsettings/profiles/TriggerPagerAdapter;->mHolderList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Landroid/app/Fragment;
    .locals 5
    .param p1, "position"    # I

    .prologue
    .line 116
    iget-object v2, p0, Lcom/android/exsettings/profiles/TriggerPagerAdapter;->mHolderList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/exsettings/profiles/TriggerPagerAdapter$Holder;

    .line 117
    .local v0, "mCurrentHolder":Lcom/android/exsettings/profiles/TriggerPagerAdapter$Holder;
    iget-object v2, p0, Lcom/android/exsettings/profiles/TriggerPagerAdapter;->mFragmentActivity:Landroid/app/Activity;

    .line 118
    iget-object v3, v0, Lcom/android/exsettings/profiles/TriggerPagerAdapter$Holder;->mClassName:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/exsettings/profiles/TriggerPagerAdapter$Holder;->mParams:Landroid/os/Bundle;

    .line 117
    invoke-static {v2, v3, v4}, Landroid/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/Fragment;

    move-result-object v1

    .line 119
    .local v1, "mFragment":Landroid/app/Fragment;
    return-object v1
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 147
    iget-object v1, p0, Lcom/android/exsettings/profiles/TriggerPagerAdapter;->mFragmentActivity:Landroid/app/Activity;

    iget-object v0, p0, Lcom/android/exsettings/profiles/TriggerPagerAdapter;->mHolderList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/exsettings/profiles/TriggerPagerAdapter$Holder;

    iget v0, v0, Lcom/android/exsettings/profiles/TriggerPagerAdapter$Holder;->mTitleResId:I

    invoke-virtual {v1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 4
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I

    .prologue
    .line 102
    invoke-super {p0, p1, p2}, Landroid/support/v13/app/FragmentPagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Fragment;

    .line 103
    .local v0, "mFragment":Landroid/app/Fragment;
    iget-object v2, p0, Lcom/android/exsettings/profiles/TriggerPagerAdapter;->mFragmentArray:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 104
    .local v1, "mWeakFragment":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/Fragment;>;"
    if-eqz v1, :cond_0

    .line 105
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->clear()V

    .line 107
    :cond_0
    iget-object v2, p0, Lcom/android/exsettings/profiles/TriggerPagerAdapter;->mFragmentArray:Landroid/util/SparseArray;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, p2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 108
    return-object v0
.end method
