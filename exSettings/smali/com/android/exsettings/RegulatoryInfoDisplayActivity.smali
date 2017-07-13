.class public Lcom/android/exsettings/RegulatoryInfoDisplayActivity;
.super Landroid/app/Activity;
.source "RegulatoryInfoDisplayActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field private final REGULATORY_INFO_RESOURCE:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 47
    const-string/jumbo v0, "regulatory_info"

    iput-object v0, p0, Lcom/android/exsettings/RegulatoryInfoDisplayActivity;->REGULATORY_INFO_RESOURCE:Ljava/lang/String;

    .line 45
    return-void
.end method

.method private getResourceId()I
    .locals 8

    .prologue
    .line 108
    invoke-virtual {p0}, Lcom/android/exsettings/RegulatoryInfoDisplayActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 109
    const-string/jumbo v5, "regulatory_info"

    const-string/jumbo v6, "drawable"

    invoke-virtual {p0}, Lcom/android/exsettings/RegulatoryInfoDisplayActivity;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 108
    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 112
    .local v2, "resId":I
    const-string/jumbo v4, "ro.boot.hardware.sku"

    const-string/jumbo v5, ""

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 113
    .local v3, "sku":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 114
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "regulatory_info_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 115
    .local v1, "regulatory_info_res":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/exsettings/RegulatoryInfoDisplayActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 116
    const-string/jumbo v5, "drawable"

    invoke-virtual {p0}, Lcom/android/exsettings/RegulatoryInfoDisplayActivity;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 115
    invoke-virtual {v4, v1, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 117
    .local v0, "id":I
    if-eqz v0, :cond_0

    .line 118
    move v2, v0

    .line 121
    .end local v0    # "id":I
    .end local v1    # "regulatory_info_res":Ljava/lang/String;
    :cond_0
    return v2
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 15
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 54
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 55
    invoke-virtual {p0}, Lcom/android/exsettings/RegulatoryInfoDisplayActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 57
    .local v8, "resources":Landroid/content/res/Resources;
    const v12, 0x7f100007

    invoke-virtual {v8, v12}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v12

    if-nez v12, :cond_0

    .line 58
    invoke-virtual {p0}, Lcom/android/exsettings/RegulatoryInfoDisplayActivity;->finish()V

    .line 61
    :cond_0
    new-instance v12, Landroid/app/AlertDialog$Builder;

    invoke-direct {v12, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 62
    const v13, 0x7f0c035e

    .line 61
    invoke-virtual {v12, v13}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v12

    invoke-virtual {v12, p0}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 65
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/android/exsettings/RegulatoryInfoDisplayActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v12

    const v13, 0x7f0400ef

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v11

    .line 67
    .local v11, "view":Landroid/view/View;
    const/4 v6, 0x0

    .line 68
    .local v6, "regulatoryInfoDrawableExists":Z
    invoke-direct {p0}, Lcom/android/exsettings/RegulatoryInfoDisplayActivity;->getResourceId()I

    move-result v7

    .line 69
    .local v7, "resId":I
    if-eqz v7, :cond_1

    .line 71
    :try_start_0
    invoke-virtual {p0, v7}, Lcom/android/exsettings/RegulatoryInfoDisplayActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 74
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v12

    const/16 v13, 0x20

    if-le v12, v13, :cond_6

    .line 75
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v12

    const/16 v13, 0x20

    if-le v12, v13, :cond_5

    const/4 v6, 0x1

    .line 81
    .end local v1    # "d":Landroid/graphics/drawable/Drawable;
    :cond_1
    :goto_0
    if-eqz v6, :cond_2

    .line 82
    const v12, 0x7f1301fa

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 83
    .local v5, "image":Landroid/widget/ImageView;
    const/4 v12, 0x0

    invoke-virtual {v5, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 84
    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 87
    .end local v5    # "image":Landroid/widget/ImageView;
    :cond_2
    invoke-virtual {p0}, Lcom/android/exsettings/RegulatoryInfoDisplayActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-static {v12}, Lcom/android/exsettings/deviceinfo/Status;->getSarValues(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v10

    .line 88
    .local v10, "sarValues":Ljava/lang/String;
    const v12, 0x7f1301f8

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 89
    .local v9, "sarText":Landroid/widget/TextView;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_3

    .line 90
    const v12, 0x7f100015

    invoke-virtual {v8, v12}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 91
    const/4 v12, 0x0

    .line 90
    :goto_1
    invoke-virtual {v9, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 92
    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    :cond_3
    invoke-virtual {p0}, Lcom/android/exsettings/RegulatoryInfoDisplayActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-static {v12}, Lcom/android/exsettings/deviceinfo/Status;->getIcCodes(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v3

    .line 96
    .local v3, "icCodes":Ljava/lang/String;
    const v12, 0x7f1301f9

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 97
    .local v2, "icCode":Landroid/widget/TextView;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_4

    .line 98
    const v12, 0x7f100016

    invoke-virtual {v8, v12}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 99
    const/4 v12, 0x0

    .line 98
    :goto_2
    invoke-virtual {v2, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 100
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    :cond_4
    invoke-virtual {v0, v11}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 103
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 53
    return-void

    .line 75
    .end local v2    # "icCode":Landroid/widget/TextView;
    .end local v3    # "icCodes":Ljava/lang/String;
    .end local v9    # "sarText":Landroid/widget/TextView;
    .end local v10    # "sarValues":Ljava/lang/String;
    .restart local v1    # "d":Landroid/graphics/drawable/Drawable;
    :cond_5
    const/4 v6, 0x0

    goto :goto_0

    .line 74
    :cond_6
    const/4 v6, 0x0

    goto :goto_0

    .line 76
    .end local v1    # "d":Landroid/graphics/drawable/Drawable;
    :catch_0
    move-exception v4

    .line 77
    .local v4, "ignored":Landroid/content/res/Resources$NotFoundException;
    const/4 v6, 0x0

    goto :goto_0

    .line 91
    .end local v4    # "ignored":Landroid/content/res/Resources$NotFoundException;
    .restart local v9    # "sarText":Landroid/widget/TextView;
    .restart local v10    # "sarValues":Ljava/lang/String;
    :cond_7
    const/16 v12, 0x8

    goto :goto_1

    .line 99
    .restart local v2    # "icCode":Landroid/widget/TextView;
    .restart local v3    # "icCodes":Ljava/lang/String;
    :cond_8
    const/16 v12, 0x8

    goto :goto_2
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 126
    invoke-virtual {p0}, Lcom/android/exsettings/RegulatoryInfoDisplayActivity;->finish()V

    .line 125
    return-void
.end method
