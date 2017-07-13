.class Lcom/android/exsettings/DeviceAdminSettings$PolicyListAdapter;
.super Landroid/widget/BaseAdapter;
.source "DeviceAdminSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/DeviceAdminSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PolicyListAdapter"
.end annotation


# instance fields
.field final mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/android/exsettings/DeviceAdminSettings;


# direct methods
.method constructor <init>(Lcom/android/exsettings/DeviceAdminSettings;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/exsettings/DeviceAdminSettings;

    .prologue
    .line 182
    iput-object p1, p0, Lcom/android/exsettings/DeviceAdminSettings$PolicyListAdapter;->this$0:Lcom/android/exsettings/DeviceAdminSettings;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 184
    invoke-virtual {p1}, Lcom/android/exsettings/DeviceAdminSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 183
    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/exsettings/DeviceAdminSettings$PolicyListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 182
    return-void
.end method

.method private bindView(Landroid/view/View;Landroid/app/admin/DeviceAdminInfo;)V
    .locals 9
    .param p1, "view"    # Landroid/view/View;
    .param p2, "item"    # Landroid/app/admin/DeviceAdminInfo;

    .prologue
    .line 325
    iget-object v6, p0, Lcom/android/exsettings/DeviceAdminSettings$PolicyListAdapter;->this$0:Lcom/android/exsettings/DeviceAdminSettings;

    invoke-virtual {v6}, Lcom/android/exsettings/DeviceAdminSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 326
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/exsettings/DeviceAdminSettings$ViewHolder;

    .line 327
    .local v5, "vh":Lcom/android/exsettings/DeviceAdminSettings$ViewHolder;
    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {p2, v6}, Landroid/app/admin/DeviceAdminInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 328
    .local v1, "activityIcon":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 329
    new-instance v7, Landroid/os/UserHandle;

    iget-object v8, p0, Lcom/android/exsettings/DeviceAdminSettings$PolicyListAdapter;->this$0:Lcom/android/exsettings/DeviceAdminSettings;

    invoke-static {v8, p2}, Lcom/android/exsettings/DeviceAdminSettings;->-wrap4(Lcom/android/exsettings/DeviceAdminSettings;Landroid/app/admin/DeviceAdminInfo;)I

    move-result v8

    invoke-direct {v7, v8}, Landroid/os/UserHandle;-><init>(I)V

    .line 328
    invoke-virtual {v6, v1, v7}, Landroid/content/pm/PackageManager;->getUserBadgedIcon(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 330
    .local v2, "badgedIcon":Landroid/graphics/drawable/Drawable;
    iget-object v6, v5, Lcom/android/exsettings/DeviceAdminSettings$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v6, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 331
    iget-object v6, v5, Lcom/android/exsettings/DeviceAdminSettings$ViewHolder;->name:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {p2, v7}, Landroid/app/admin/DeviceAdminInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 332
    iget-object v6, v5, Lcom/android/exsettings/DeviceAdminSettings$ViewHolder;->checkbox:Landroid/widget/CheckBox;

    iget-object v7, p0, Lcom/android/exsettings/DeviceAdminSettings$PolicyListAdapter;->this$0:Lcom/android/exsettings/DeviceAdminSettings;

    invoke-static {v7, p2}, Lcom/android/exsettings/DeviceAdminSettings;->-wrap0(Lcom/android/exsettings/DeviceAdminSettings;Landroid/app/admin/DeviceAdminInfo;)Z

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 333
    invoke-direct {p0, p2}, Lcom/android/exsettings/DeviceAdminSettings$PolicyListAdapter;->isEnabled(Ljava/lang/Object;)Z

    move-result v4

    .line 335
    .local v4, "enabled":Z
    :try_start_0
    iget-object v6, v5, Lcom/android/exsettings/DeviceAdminSettings$ViewHolder;->description:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {p2, v7}, Landroid/app/admin/DeviceAdminInfo;->loadDescription(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 338
    :goto_0
    iget-object v6, v5, Lcom/android/exsettings/DeviceAdminSettings$ViewHolder;->checkbox:Landroid/widget/CheckBox;

    invoke-virtual {v6, v4}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 339
    iget-object v6, v5, Lcom/android/exsettings/DeviceAdminSettings$ViewHolder;->name:Landroid/widget/TextView;

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 340
    iget-object v6, v5, Lcom/android/exsettings/DeviceAdminSettings$ViewHolder;->name:Landroid/widget/TextView;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setSelected(Z)V

    .line 341
    iget-object v6, v5, Lcom/android/exsettings/DeviceAdminSettings$ViewHolder;->description:Landroid/widget/TextView;

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 342
    iget-object v6, v5, Lcom/android/exsettings/DeviceAdminSettings$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v6, v4}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 324
    return-void

    .line 336
    :catch_0
    move-exception v3

    .local v3, "e":Landroid/content/res/Resources$NotFoundException;
    goto :goto_0
.end method

.method private isEnabled(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 279
    instance-of v1, p1, Landroid/app/admin/DeviceAdminInfo;

    if-nez v1, :cond_0

    .line 281
    return v3

    :cond_0
    move-object v0, p1

    .line 283
    check-cast v0, Landroid/app/admin/DeviceAdminInfo;

    .line 284
    .local v0, "info":Landroid/app/admin/DeviceAdminInfo;
    iget-object v1, p0, Lcom/android/exsettings/DeviceAdminSettings$PolicyListAdapter;->this$0:Lcom/android/exsettings/DeviceAdminSettings;

    invoke-static {v1, v0}, Lcom/android/exsettings/DeviceAdminSettings;->-wrap0(Lcom/android/exsettings/DeviceAdminSettings;Landroid/app/admin/DeviceAdminInfo;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/exsettings/DeviceAdminSettings$PolicyListAdapter;->this$0:Lcom/android/exsettings/DeviceAdminSettings;

    invoke-static {v1, v0}, Lcom/android/exsettings/DeviceAdminSettings;->-wrap4(Lcom/android/exsettings/DeviceAdminSettings;Landroid/app/admin/DeviceAdminInfo;)I

    move-result v1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    if-ne v1, v2, :cond_2

    .line 285
    iget-object v1, p0, Lcom/android/exsettings/DeviceAdminSettings$PolicyListAdapter;->this$0:Lcom/android/exsettings/DeviceAdminSettings;

    invoke-static {v1, v0}, Lcom/android/exsettings/DeviceAdminSettings;->-wrap1(Lcom/android/exsettings/DeviceAdminSettings;Landroid/app/admin/DeviceAdminInfo;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/exsettings/DeviceAdminSettings$PolicyListAdapter;->this$0:Lcom/android/exsettings/DeviceAdminSettings;

    invoke-static {v1, v0}, Lcom/android/exsettings/DeviceAdminSettings;->-wrap2(Lcom/android/exsettings/DeviceAdminSettings;Landroid/app/admin/DeviceAdminInfo;)Z

    move-result v1

    .line 284
    if-eqz v1, :cond_2

    .line 286
    :cond_1
    return v3

    .line 289
    :cond_2
    iget-object v1, p0, Lcom/android/exsettings/DeviceAdminSettings$PolicyListAdapter;->this$0:Lcom/android/exsettings/DeviceAdminSettings;

    invoke-static {v1, v0}, Lcom/android/exsettings/DeviceAdminSettings;->-wrap3(Lcom/android/exsettings/DeviceAdminSettings;Landroid/app/admin/DeviceAdminInfo;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 290
    return v3

    .line 292
    :cond_3
    const/4 v1, 0x1

    return v1
.end method

.method private newDeviceAdminView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 314
    iget-object v2, p0, Lcom/android/exsettings/DeviceAdminSettings$PolicyListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f040055

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 315
    .local v1, "v":Landroid/view/View;
    new-instance v0, Lcom/android/exsettings/DeviceAdminSettings$ViewHolder;

    invoke-direct {v0}, Lcom/android/exsettings/DeviceAdminSettings$ViewHolder;-><init>()V

    .line 316
    .local v0, "h":Lcom/android/exsettings/DeviceAdminSettings$ViewHolder;
    const v2, 0x7f130009

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lcom/android/exsettings/DeviceAdminSettings$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 317
    const v2, 0x7f130036

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/android/exsettings/DeviceAdminSettings$ViewHolder;->name:Landroid/widget/TextView;

    .line 318
    const v2, 0x7f1300c5

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, v0, Lcom/android/exsettings/DeviceAdminSettings$ViewHolder;->checkbox:Landroid/widget/CheckBox;

    .line 319
    const v2, 0x7f1300c4

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/android/exsettings/DeviceAdminSettings$ViewHolder;->description:Landroid/widget/TextView;

    .line 320
    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 321
    return-object v1
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 252
    const/4 v0, 0x0

    return v0
.end method

.method public getCount()I
    .locals 4

    .prologue
    .line 194
    const/4 v0, 0x0

    .line 195
    .local v0, "adminCount":I
    iget-object v3, p0, Lcom/android/exsettings/DeviceAdminSettings$PolicyListAdapter;->this$0:Lcom/android/exsettings/DeviceAdminSettings;

    invoke-static {v3}, Lcom/android/exsettings/DeviceAdminSettings;->-get0(Lcom/android/exsettings/DeviceAdminSettings;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 196
    .local v2, "profileCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 197
    iget-object v3, p0, Lcom/android/exsettings/DeviceAdminSettings$PolicyListAdapter;->this$0:Lcom/android/exsettings/DeviceAdminSettings;

    invoke-static {v3}, Lcom/android/exsettings/DeviceAdminSettings;->-get0(Lcom/android/exsettings/DeviceAdminSettings;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/2addr v0, v3

    .line 196
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 200
    :cond_0
    add-int v3, v0, v2

    return v3
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 7
    .param p1, "position"    # I

    .prologue
    .line 211
    if-gez p1, :cond_0

    .line 212
    new-instance v5, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v5}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v5

    .line 217
    :cond_0
    move v0, p1

    .line 218
    .local v0, "adminPosition":I
    iget-object v5, p0, Lcom/android/exsettings/DeviceAdminSettings$PolicyListAdapter;->this$0:Lcom/android/exsettings/DeviceAdminSettings;

    invoke-static {v5}, Lcom/android/exsettings/DeviceAdminSettings;->-get0(Lcom/android/exsettings/DeviceAdminSettings;)Landroid/util/SparseArray;

    move-result-object v5

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v3

    .line 219
    .local v3, "n":I
    const/4 v1, 0x0

    .line 220
    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 222
    iget-object v5, p0, Lcom/android/exsettings/DeviceAdminSettings$PolicyListAdapter;->this$0:Lcom/android/exsettings/DeviceAdminSettings;

    invoke-static {v5}, Lcom/android/exsettings/DeviceAdminSettings;->-get0(Lcom/android/exsettings/DeviceAdminSettings;)Landroid/util/SparseArray;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v2, v5, 0x1

    .line 223
    .local v2, "listSize":I
    if-ge v0, v2, :cond_2

    .line 228
    .end local v2    # "listSize":I
    :cond_1
    if-ne v1, v3, :cond_3

    .line 229
    new-instance v5, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v5}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v5

    .line 226
    .restart local v2    # "listSize":I
    :cond_2
    sub-int/2addr v0, v2

    .line 220
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 232
    .end local v2    # "listSize":I
    :cond_3
    if-nez v0, :cond_5

    .line 233
    iget-object v5, p0, Lcom/android/exsettings/DeviceAdminSettings$PolicyListAdapter;->this$0:Lcom/android/exsettings/DeviceAdminSettings;

    invoke-virtual {v5}, Lcom/android/exsettings/DeviceAdminSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 234
    .local v4, "res":Landroid/content/res/Resources;
    iget-object v5, p0, Lcom/android/exsettings/DeviceAdminSettings$PolicyListAdapter;->this$0:Lcom/android/exsettings/DeviceAdminSettings;

    invoke-static {v5}, Lcom/android/exsettings/DeviceAdminSettings;->-get0(Lcom/android/exsettings/DeviceAdminSettings;)Landroid/util/SparseArray;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    if-ne v5, v6, :cond_4

    .line 235
    const v5, 0x7f0c0c45

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 237
    :cond_4
    const v5, 0x7f0c0c46

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 241
    .end local v4    # "res":Landroid/content/res/Resources;
    :cond_5
    iget-object v5, p0, Lcom/android/exsettings/DeviceAdminSettings$PolicyListAdapter;->this$0:Lcom/android/exsettings/DeviceAdminSettings;

    invoke-static {v5}, Lcom/android/exsettings/DeviceAdminSettings;->-get0(Lcom/android/exsettings/DeviceAdminSettings;)Landroid/util/SparseArray;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    add-int/lit8 v6, v0, -0x1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    return-object v5
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 247
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 268
    invoke-virtual {p0, p1}, Lcom/android/exsettings/DeviceAdminSettings$PolicyListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 269
    .local v0, "o":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 297
    invoke-virtual {p0, p1}, Lcom/android/exsettings/DeviceAdminSettings$PolicyListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 298
    .local v0, "o":Ljava/lang/Object;
    instance-of v2, v0, Landroid/app/admin/DeviceAdminInfo;

    if-eqz v2, :cond_1

    .line 299
    if-nez p2, :cond_0

    .line 300
    invoke-direct {p0, p3}, Lcom/android/exsettings/DeviceAdminSettings$PolicyListAdapter;->newDeviceAdminView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 302
    :cond_0
    check-cast v0, Landroid/app/admin/DeviceAdminInfo;

    .end local v0    # "o":Ljava/lang/Object;
    invoke-direct {p0, p2, v0}, Lcom/android/exsettings/DeviceAdminSettings$PolicyListAdapter;->bindView(Landroid/view/View;Landroid/app/admin/DeviceAdminInfo;)V

    .line 310
    :goto_0
    return-object p2

    .line 304
    .restart local v0    # "o":Ljava/lang/Object;
    :cond_1
    if-nez p2, :cond_2

    .line 305
    iget-object v2, p0, Lcom/android/exsettings/DeviceAdminSettings$PolicyListAdapter;->mInflater:Landroid/view/LayoutInflater;

    invoke-static {v2, p3}, Lcom/android/exsettings/Utils;->inflateCategoryHeader(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 307
    :cond_2
    const v2, 0x1020016

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 308
    .local v1, "title":Landroid/widget/TextView;
    check-cast v0, Ljava/lang/String;

    .end local v0    # "o":Ljava/lang/Object;
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 260
    const/4 v0, 0x2

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 189
    const/4 v0, 0x0

    return v0
.end method

.method public isEnabled(I)Z
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 274
    invoke-virtual {p0, p1}, Lcom/android/exsettings/DeviceAdminSettings$PolicyListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 275
    .local v0, "o":Ljava/lang/Object;
    invoke-direct {p0, v0}, Lcom/android/exsettings/DeviceAdminSettings$PolicyListAdapter;->isEnabled(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method
