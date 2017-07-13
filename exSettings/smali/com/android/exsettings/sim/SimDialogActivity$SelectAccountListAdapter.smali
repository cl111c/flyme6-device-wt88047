.class Lcom/android/exsettings/sim/SimDialogActivity$SelectAccountListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "SimDialogActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/sim/SimDialogActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SelectAccountListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exsettings/sim/SimDialogActivity$SelectAccountListAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final OPACITY:F

.field private mContext:Landroid/content/Context;

.field private mDialogId:I

.field private mResId:I

.field private final mSelectionIndex:I

.field private mSubInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/exsettings/sim/SimDialogActivity;


# direct methods
.method public constructor <init>(Lcom/android/exsettings/sim/SimDialogActivity;Ljava/util/List;Landroid/content/Context;I[Ljava/lang/String;II)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/exsettings/sim/SimDialogActivity;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "resource"    # I
    .param p5, "arr"    # [Ljava/lang/String;
    .param p6, "dialogId"    # I
    .param p7, "selectionIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;",
            "Landroid/content/Context;",
            "I[",
            "Ljava/lang/String;",
            "II)V"
        }
    .end annotation

    .prologue
    .line 386
    .local p2, "subInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    iput-object p1, p0, Lcom/android/exsettings/sim/SimDialogActivity$SelectAccountListAdapter;->this$0:Lcom/android/exsettings/sim/SimDialogActivity;

    .line 388
    invoke-direct {p0, p3, p4, p5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 372
    const v0, 0x3f0a3d71    # 0.54f

    iput v0, p0, Lcom/android/exsettings/sim/SimDialogActivity$SelectAccountListAdapter;->OPACITY:F

    .line 389
    iput-object p3, p0, Lcom/android/exsettings/sim/SimDialogActivity$SelectAccountListAdapter;->mContext:Landroid/content/Context;

    .line 390
    iput p4, p0, Lcom/android/exsettings/sim/SimDialogActivity$SelectAccountListAdapter;->mResId:I

    .line 391
    iput p6, p0, Lcom/android/exsettings/sim/SimDialogActivity$SelectAccountListAdapter;->mDialogId:I

    .line 392
    iput-object p2, p0, Lcom/android/exsettings/sim/SimDialogActivity$SelectAccountListAdapter;->mSubInfoList:Ljava/util/List;

    .line 393
    iput p7, p0, Lcom/android/exsettings/sim/SimDialogActivity$SelectAccountListAdapter;->mSelectionIndex:I

    .line 387
    return-void
.end method

.method private getCurrentSmsAppName()Ljava/lang/String;
    .locals 5

    .prologue
    .line 443
    :try_start_0
    iget-object v2, p0, Lcom/android/exsettings/sim/SimDialogActivity$SelectAccountListAdapter;->this$0:Lcom/android/exsettings/sim/SimDialogActivity;

    invoke-virtual {v2}, Lcom/android/exsettings/sim/SimDialogActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 444
    iget-object v3, p0, Lcom/android/exsettings/sim/SimDialogActivity$SelectAccountListAdapter;->this$0:Lcom/android/exsettings/sim/SimDialogActivity;

    invoke-virtual {v3}, Lcom/android/exsettings/sim/SimDialogActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/android/internal/telephony/SmsApplication;->getDefaultMmsApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 445
    const/4 v4, 0x0

    .line 443
    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 446
    .local v0, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v2, p0, Lcom/android/exsettings/sim/SimDialogActivity$SelectAccountListAdapter;->this$0:Lcom/android/exsettings/sim/SimDialogActivity;

    invoke-virtual {v2}, Lcom/android/exsettings/sim/SimDialogActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 447
    .end local v0    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v1

    .line 448
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 450
    const/4 v2, 0x0

    return-object v2
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 378
    const/4 v0, 0x0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v6, 0x0

    .line 399
    iget-object v5, p0, Lcom/android/exsettings/sim/SimDialogActivity$SelectAccountListAdapter;->mContext:Landroid/content/Context;

    const-string/jumbo v9, "layout_inflater"

    invoke-virtual {v5, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 398
    check-cast v2, Landroid/view/LayoutInflater;

    .line 403
    .local v2, "inflater":Landroid/view/LayoutInflater;
    if-nez p2, :cond_0

    .line 405
    iget v5, p0, Lcom/android/exsettings/sim/SimDialogActivity$SelectAccountListAdapter;->mResId:I

    invoke-virtual {v2, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 406
    .local v3, "rowView":Landroid/view/View;
    new-instance v1, Lcom/android/exsettings/sim/SimDialogActivity$SelectAccountListAdapter$ViewHolder;

    invoke-direct {v1, p0, v6}, Lcom/android/exsettings/sim/SimDialogActivity$SelectAccountListAdapter$ViewHolder;-><init>(Lcom/android/exsettings/sim/SimDialogActivity$SelectAccountListAdapter;Lcom/android/exsettings/sim/SimDialogActivity$SelectAccountListAdapter$ViewHolder;)V

    .line 407
    .local v1, "holder":Lcom/android/exsettings/sim/SimDialogActivity$SelectAccountListAdapter$ViewHolder;
    const v5, 0x7f13000b

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v1, Lcom/android/exsettings/sim/SimDialogActivity$SelectAccountListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    .line 408
    const v5, 0x7f13006a

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v1, Lcom/android/exsettings/sim/SimDialogActivity$SelectAccountListAdapter$ViewHolder;->summary:Landroid/widget/TextView;

    .line 409
    const v5, 0x7f130009

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, v1, Lcom/android/exsettings/sim/SimDialogActivity$SelectAccountListAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 410
    const v5, 0x7f1300fd

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RadioButton;

    iput-object v5, v1, Lcom/android/exsettings/sim/SimDialogActivity$SelectAccountListAdapter$ViewHolder;->radio:Landroid/widget/RadioButton;

    .line 411
    invoke-virtual {v3, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 417
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/exsettings/sim/SimDialogActivity$SelectAccountListAdapter;->isEnabled(I)Z

    move-result v0

    .line 418
    .local v0, "enabled":Z
    iget-object v5, p0, Lcom/android/exsettings/sim/SimDialogActivity$SelectAccountListAdapter;->mSubInfoList:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/SubscriptionInfo;

    .line 419
    .local v4, "sir":Landroid/telephony/SubscriptionInfo;
    if-nez v4, :cond_2

    .line 420
    iget-object v9, v1, Lcom/android/exsettings/sim/SimDialogActivity$SelectAccountListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/android/exsettings/sim/SimDialogActivity$SelectAccountListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v9, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 421
    iget-object v9, v1, Lcom/android/exsettings/sim/SimDialogActivity$SelectAccountListAdapter$ViewHolder;->summary:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/exsettings/sim/SimDialogActivity$SelectAccountListAdapter;->this$0:Lcom/android/exsettings/sim/SimDialogActivity;

    invoke-static {v5}, Lcom/android/exsettings/sim/SimDialogActivity;->-get2(Lcom/android/exsettings/sim/SimDialogActivity;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 422
    iget-object v5, p0, Lcom/android/exsettings/sim/SimDialogActivity$SelectAccountListAdapter;->this$0:Lcom/android/exsettings/sim/SimDialogActivity;

    new-array v6, v7, [Ljava/lang/Object;

    invoke-direct {p0}, Lcom/android/exsettings/sim/SimDialogActivity$SelectAccountListAdapter;->getCurrentSmsAppName()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v6, v8

    const v10, 0x7f0c03bb

    invoke-virtual {v5, v10, v6}, Lcom/android/exsettings/sim/SimDialogActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 421
    :goto_1
    invoke-virtual {v9, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 424
    iget-object v5, v1, Lcom/android/exsettings/sim/SimDialogActivity$SelectAccountListAdapter$ViewHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 425
    iget-object v5, v1, Lcom/android/exsettings/sim/SimDialogActivity$SelectAccountListAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/android/exsettings/sim/SimDialogActivity$SelectAccountListAdapter;->this$0:Lcom/android/exsettings/sim/SimDialogActivity;

    invoke-virtual {v6}, Lcom/android/exsettings/sim/SimDialogActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 426
    const v9, 0x7f02007e

    .line 425
    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 427
    iget-object v5, v1, Lcom/android/exsettings/sim/SimDialogActivity$SelectAccountListAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    const v6, 0x3f0a3d71    # 0.54f

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 434
    :goto_2
    iget-object v6, v1, Lcom/android/exsettings/sim/SimDialogActivity$SelectAccountListAdapter$ViewHolder;->radio:Landroid/widget/RadioButton;

    iget v5, p0, Lcom/android/exsettings/sim/SimDialogActivity$SelectAccountListAdapter;->mSelectionIndex:I

    if-ne p1, v5, :cond_3

    move v5, v7

    :goto_3
    invoke-virtual {v6, v5}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 435
    iget-object v5, v1, Lcom/android/exsettings/sim/SimDialogActivity$SelectAccountListAdapter$ViewHolder;->radio:Landroid/widget/RadioButton;

    invoke-virtual {v5, v0}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 436
    iget-object v5, v1, Lcom/android/exsettings/sim/SimDialogActivity$SelectAccountListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 437
    iget-object v5, v1, Lcom/android/exsettings/sim/SimDialogActivity$SelectAccountListAdapter$ViewHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 438
    return-object v3

    .line 413
    .end local v0    # "enabled":Z
    .end local v1    # "holder":Lcom/android/exsettings/sim/SimDialogActivity$SelectAccountListAdapter$ViewHolder;
    .end local v3    # "rowView":Landroid/view/View;
    .end local v4    # "sir":Landroid/telephony/SubscriptionInfo;
    :cond_0
    move-object v3, p2

    .line 414
    .restart local v3    # "rowView":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/exsettings/sim/SimDialogActivity$SelectAccountListAdapter$ViewHolder;

    .restart local v1    # "holder":Lcom/android/exsettings/sim/SimDialogActivity$SelectAccountListAdapter$ViewHolder;
    goto :goto_0

    .restart local v0    # "enabled":Z
    .restart local v4    # "sir":Landroid/telephony/SubscriptionInfo;
    :cond_1
    move-object v5, v6

    .line 423
    goto :goto_1

    .line 429
    :cond_2
    iget-object v5, v1, Lcom/android/exsettings/sim/SimDialogActivity$SelectAccountListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 430
    iget-object v5, v1, Lcom/android/exsettings/sim/SimDialogActivity$SelectAccountListAdapter$ViewHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getNumber()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 431
    iget-object v5, v1, Lcom/android/exsettings/sim/SimDialogActivity$SelectAccountListAdapter$ViewHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 432
    iget-object v5, v1, Lcom/android/exsettings/sim/SimDialogActivity$SelectAccountListAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/android/exsettings/sim/SimDialogActivity$SelectAccountListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v6}, Landroid/telephony/SubscriptionInfo;->createIconBitmap(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_2

    :cond_3
    move v5, v8

    .line 434
    goto :goto_3
.end method

.method public isEnabled(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 383
    iget-object v0, p0, Lcom/android/exsettings/sim/SimDialogActivity$SelectAccountListAdapter;->this$0:Lcom/android/exsettings/sim/SimDialogActivity;

    invoke-static {v0}, Lcom/android/exsettings/sim/SimDialogActivity;->-get2(Lcom/android/exsettings/sim/SimDialogActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/exsettings/sim/SimDialogActivity$SelectAccountListAdapter;->mSubInfoList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
