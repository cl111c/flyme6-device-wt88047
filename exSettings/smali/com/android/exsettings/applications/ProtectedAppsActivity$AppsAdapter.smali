.class public Lcom/android/exsettings/applications/ProtectedAppsActivity$AppsAdapter;
.super Landroid/widget/ArrayAdapter;
.source "ProtectedAppsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/applications/ProtectedAppsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AppsAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exsettings/applications/ProtectedAppsActivity$AppsAdapter$LoadIconsTask;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/android/exsettings/applications/ProtectedAppsActivity$AppEntry;",
        ">;"
    }
.end annotation


# instance fields
.field private mApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/exsettings/applications/ProtectedAppsActivity$AppEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mDefaultImg:Landroid/graphics/drawable/Drawable;

.field private mIcons:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private final mInflator:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/android/exsettings/applications/ProtectedAppsActivity;


# direct methods
.method static synthetic -get0(Lcom/android/exsettings/applications/ProtectedAppsActivity$AppsAdapter;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/applications/ProtectedAppsActivity$AppsAdapter;->mIcons:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method public constructor <init>(Lcom/android/exsettings/applications/ProtectedAppsActivity;Landroid/content/Context;I)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/exsettings/applications/ProtectedAppsActivity;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "textViewResourceId"    # I

    .prologue
    .line 382
    iput-object p1, p0, Lcom/android/exsettings/applications/ProtectedAppsActivity$AppsAdapter;->this$0:Lcom/android/exsettings/applications/ProtectedAppsActivity;

    .line 383
    invoke-direct {p0, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 385
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/exsettings/applications/ProtectedAppsActivity$AppsAdapter;->mApps:Ljava/util/List;

    .line 387
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/applications/ProtectedAppsActivity$AppsAdapter;->mInflator:Landroid/view/LayoutInflater;

    .line 390
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x10d0000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/applications/ProtectedAppsActivity$AppsAdapter;->mDefaultImg:Landroid/graphics/drawable/Drawable;

    .line 391
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/exsettings/applications/ProtectedAppsActivity$AppsAdapter;->mIcons:Ljava/util/concurrent/ConcurrentHashMap;

    .line 382
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v6, 0x0

    .line 398
    if-nez p2, :cond_0

    .line 399
    iget-object v4, p0, Lcom/android/exsettings/applications/ProtectedAppsActivity$AppsAdapter;->mInflator:Landroid/view/LayoutInflater;

    const v5, 0x7f040082

    invoke-virtual {v4, v5, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 400
    new-instance v3, Lcom/android/exsettings/applications/ProtectedAppsActivity$AppViewHolder;

    invoke-direct {v3, p2}, Lcom/android/exsettings/applications/ProtectedAppsActivity$AppViewHolder;-><init>(Landroid/view/View;)V

    .line 401
    .local v3, "viewHolder":Lcom/android/exsettings/applications/ProtectedAppsActivity$AppViewHolder;
    invoke-virtual {p2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 406
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/exsettings/applications/ProtectedAppsActivity$AppsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/exsettings/applications/ProtectedAppsActivity$AppEntry;

    .line 408
    .local v0, "app":Lcom/android/exsettings/applications/ProtectedAppsActivity$AppEntry;
    iget-object v4, v3, Lcom/android/exsettings/applications/ProtectedAppsActivity$AppViewHolder;->title:Landroid/widget/TextView;

    iget-object v5, v0, Lcom/android/exsettings/applications/ProtectedAppsActivity$AppEntry;->title:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 410
    iget-object v4, p0, Lcom/android/exsettings/applications/ProtectedAppsActivity$AppsAdapter;->mIcons:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v5, v0, Lcom/android/exsettings/applications/ProtectedAppsActivity$AppEntry;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable;

    .line 411
    .local v1, "icon":Landroid/graphics/drawable/Drawable;
    iget-object v4, v3, Lcom/android/exsettings/applications/ProtectedAppsActivity$AppViewHolder;->icon:Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    .end local v1    # "icon":Landroid/graphics/drawable/Drawable;
    :goto_1
    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 413
    iget-object v4, p0, Lcom/android/exsettings/applications/ProtectedAppsActivity$AppsAdapter;->this$0:Lcom/android/exsettings/applications/ProtectedAppsActivity;

    iget-object v5, v0, Lcom/android/exsettings/applications/ProtectedAppsActivity$AppEntry;->componentName:Landroid/content/ComponentName;

    invoke-static {v4, v5}, Lcom/android/exsettings/applications/ProtectedAppsActivity;->-wrap0(Lcom/android/exsettings/applications/ProtectedAppsActivity;Landroid/content/ComponentName;)Z

    move-result v2

    .line 414
    .local v2, "state":Z
    iget-object v4, v3, Lcom/android/exsettings/applications/ProtectedAppsActivity$AppViewHolder;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v4, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 415
    if-eqz v2, :cond_2

    .line 416
    iget-object v4, v3, Lcom/android/exsettings/applications/ProtectedAppsActivity$AppViewHolder;->launch:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 417
    iget-object v4, v3, Lcom/android/exsettings/applications/ProtectedAppsActivity$AppViewHolder;->launch:Landroid/view/View;

    invoke-virtual {v4, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 418
    iget-object v4, v3, Lcom/android/exsettings/applications/ProtectedAppsActivity$AppViewHolder;->launch:Landroid/view/View;

    new-instance v5, Lcom/android/exsettings/applications/ProtectedAppsActivity$AppsAdapter$1;

    invoke-direct {v5, p0}, Lcom/android/exsettings/applications/ProtectedAppsActivity$AppsAdapter$1;-><init>(Lcom/android/exsettings/applications/ProtectedAppsActivity$AppsAdapter;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 432
    :goto_2
    iget-object v4, v3, Lcom/android/exsettings/applications/ProtectedAppsActivity$AppViewHolder;->container:Landroid/view/View;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 433
    iget-object v4, v3, Lcom/android/exsettings/applications/ProtectedAppsActivity$AppViewHolder;->container:Landroid/view/View;

    iget-object v5, p0, Lcom/android/exsettings/applications/ProtectedAppsActivity$AppsAdapter;->this$0:Lcom/android/exsettings/applications/ProtectedAppsActivity;

    invoke-static {v5}, Lcom/android/exsettings/applications/ProtectedAppsActivity;->-get0(Lcom/android/exsettings/applications/ProtectedAppsActivity;)Landroid/view/View$OnClickListener;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 434
    return-object p2

    .line 403
    .end local v0    # "app":Lcom/android/exsettings/applications/ProtectedAppsActivity$AppEntry;
    .end local v2    # "state":Z
    .end local v3    # "viewHolder":Lcom/android/exsettings/applications/ProtectedAppsActivity$AppViewHolder;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/exsettings/applications/ProtectedAppsActivity$AppViewHolder;

    .restart local v3    # "viewHolder":Lcom/android/exsettings/applications/ProtectedAppsActivity$AppViewHolder;
    goto :goto_0

    .line 411
    .restart local v0    # "app":Lcom/android/exsettings/applications/ProtectedAppsActivity$AppEntry;
    .restart local v1    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_1
    iget-object v1, p0, Lcom/android/exsettings/applications/ProtectedAppsActivity$AppsAdapter;->mDefaultImg:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 429
    .end local v1    # "icon":Landroid/graphics/drawable/Drawable;
    .restart local v2    # "state":Z
    :cond_2
    iget-object v4, v3, Lcom/android/exsettings/applications/ProtectedAppsActivity$AppViewHolder;->launch:Landroid/view/View;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 439
    const/4 v0, 0x1

    return v0
.end method

.method public notifyDataSetChanged()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 444
    invoke-super {p0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 447
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/exsettings/applications/ProtectedAppsActivity$AppsAdapter;->getCount()I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 448
    .local v2, "newApps":Ljava/util/List;, "Ljava/util/List<Lcom/android/exsettings/applications/ProtectedAppsActivity$AppEntry;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/exsettings/applications/ProtectedAppsActivity$AppsAdapter;->getCount()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 449
    .local v3, "oldApps":Ljava/util/List;, "Ljava/util/List<Lcom/android/exsettings/applications/ProtectedAppsActivity$AppEntry;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/exsettings/applications/ProtectedAppsActivity$AppsAdapter;->getCount()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 450
    invoke-virtual {p0, v1}, Lcom/android/exsettings/applications/ProtectedAppsActivity$AppsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/exsettings/applications/ProtectedAppsActivity$AppEntry;

    .line 451
    .local v0, "app":Lcom/android/exsettings/applications/ProtectedAppsActivity$AppEntry;
    iget-object v4, p0, Lcom/android/exsettings/applications/ProtectedAppsActivity$AppsAdapter;->mApps:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 452
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 449
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 454
    :cond_0
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 458
    .end local v0    # "app":Lcom/android/exsettings/applications/ProtectedAppsActivity$AppEntry;
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 459
    new-instance v5, Lcom/android/exsettings/applications/ProtectedAppsActivity$AppsAdapter$LoadIconsTask;

    const/4 v4, 0x0

    invoke-direct {v5, p0, v4}, Lcom/android/exsettings/applications/ProtectedAppsActivity$AppsAdapter$LoadIconsTask;-><init>(Lcom/android/exsettings/applications/ProtectedAppsActivity$AppsAdapter;Lcom/android/exsettings/applications/ProtectedAppsActivity$AppsAdapter$LoadIconsTask;)V

    new-array v4, v6, [Lcom/android/exsettings/applications/ProtectedAppsActivity$AppEntry;

    invoke-interface {v2, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/android/exsettings/applications/ProtectedAppsActivity$AppEntry;

    invoke-virtual {v5, v4}, Lcom/android/exsettings/applications/ProtectedAppsActivity$AppsAdapter$LoadIconsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 460
    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 461
    iput-object v2, p0, Lcom/android/exsettings/applications/ProtectedAppsActivity$AppsAdapter;->mApps:Ljava/util/List;

    .line 443
    :goto_2
    return-void

    .line 463
    :cond_2
    iput-object v3, p0, Lcom/android/exsettings/applications/ProtectedAppsActivity$AppsAdapter;->mApps:Ljava/util/List;

    goto :goto_2
.end method
