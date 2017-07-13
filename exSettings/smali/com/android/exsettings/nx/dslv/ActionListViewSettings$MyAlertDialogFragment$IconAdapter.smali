.class public Lcom/android/exsettings/nx/dslv/ActionListViewSettings$MyAlertDialogFragment$IconAdapter;
.super Landroid/widget/BaseAdapter;
.source "ActionListViewSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/nx/dslv/ActionListViewSettings$MyAlertDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "IconAdapter"
.end annotation


# instance fields
.field color:I

.field icons:Landroid/content/res/TypedArray;

.field labels:[Ljava/lang/String;

.field final synthetic this$1:Lcom/android/exsettings/nx/dslv/ActionListViewSettings$MyAlertDialogFragment;


# direct methods
.method public constructor <init>(Lcom/android/exsettings/nx/dslv/ActionListViewSettings$MyAlertDialogFragment;)V
    .locals 2
    .param p1, "this$1"    # Lcom/android/exsettings/nx/dslv/ActionListViewSettings$MyAlertDialogFragment;

    .prologue
    .line 912
    iput-object p1, p0, Lcom/android/exsettings/nx/dslv/ActionListViewSettings$MyAlertDialogFragment$IconAdapter;->this$1:Lcom/android/exsettings/nx/dslv/ActionListViewSettings$MyAlertDialogFragment;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 913
    invoke-virtual {p1}, Lcom/android/exsettings/nx/dslv/ActionListViewSettings$MyAlertDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a00af

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/nx/dslv/ActionListViewSettings$MyAlertDialogFragment$IconAdapter;->labels:[Ljava/lang/String;

    .line 914
    invoke-virtual {p1}, Lcom/android/exsettings/nx/dslv/ActionListViewSettings$MyAlertDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a00b0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/nx/dslv/ActionListViewSettings$MyAlertDialogFragment$IconAdapter;->icons:Landroid/content/res/TypedArray;

    .line 915
    invoke-virtual {p1}, Lcom/android/exsettings/nx/dslv/ActionListViewSettings$MyAlertDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e0093

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/exsettings/nx/dslv/ActionListViewSettings$MyAlertDialogFragment$IconAdapter;->color:I

    .line 912
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 930
    iget-object v0, p0, Lcom/android/exsettings/nx/dslv/ActionListViewSettings$MyAlertDialogFragment$IconAdapter;->labels:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 920
    iget-object v0, p0, Lcom/android/exsettings/nx/dslv/ActionListViewSettings$MyAlertDialogFragment$IconAdapter;->icons:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 925
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getItemReference(I)Ljava/lang/String;
    .locals 5
    .param p1, "position"    # I

    .prologue
    .line 934
    iget-object v3, p0, Lcom/android/exsettings/nx/dslv/ActionListViewSettings$MyAlertDialogFragment$IconAdapter;->icons:Landroid/content/res/TypedArray;

    invoke-virtual {v3, p1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 935
    .local v0, "name":Ljava/lang/String;
    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 936
    .local v2, "separatorIndex":I
    const/16 v3, 0x2e

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 937
    .local v1, "periodIndex":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "system_shortcut="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 938
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 937
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v5, 0x0

    .line 943
    move-object v0, p2

    .line 944
    .local v0, "iView":Landroid/view/View;
    if-nez p2, :cond_0

    .line 945
    iget-object v3, p0, Lcom/android/exsettings/nx/dslv/ActionListViewSettings$MyAlertDialogFragment$IconAdapter;->this$1:Lcom/android/exsettings/nx/dslv/ActionListViewSettings$MyAlertDialogFragment;

    invoke-virtual {v3}, Lcom/android/exsettings/nx/dslv/ActionListViewSettings$MyAlertDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x1090003

    invoke-static {v3, v4, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 947
    :cond_0
    const v3, 0x1020014

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 948
    .local v2, "tt":Landroid/widget/TextView;
    iget-object v3, p0, Lcom/android/exsettings/nx/dslv/ActionListViewSettings$MyAlertDialogFragment$IconAdapter;->labels:[Ljava/lang/String;

    aget-object v3, v3, p1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 949
    invoke-virtual {p0, p1}, Lcom/android/exsettings/nx/dslv/ActionListViewSettings$MyAlertDialogFragment$IconAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 950
    .local v1, "ic":Landroid/graphics/drawable/Drawable;
    iget v3, p0, Lcom/android/exsettings/nx/dslv/ActionListViewSettings$MyAlertDialogFragment$IconAdapter;->color:I

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 951
    const/16 v3, 0xf

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 952
    invoke-virtual {v2, v1, v5, v5, v5}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 953
    return-object v0
.end method
