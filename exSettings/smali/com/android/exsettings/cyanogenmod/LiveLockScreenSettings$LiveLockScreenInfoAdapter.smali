.class Lcom/android/exsettings/cyanogenmod/LiveLockScreenSettings$LiveLockScreenInfoAdapter;
.super Landroid/widget/ArrayAdapter;
.source "LiveLockScreenSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/cyanogenmod/LiveLockScreenSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LiveLockScreenInfoAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/android/exsettings/cyanogenmod/LiveLockScreenSettings$LiveLockScreenBackend$LiveLockScreenInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private final mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/android/exsettings/cyanogenmod/LiveLockScreenSettings;


# direct methods
.method static synthetic -wrap0(Lcom/android/exsettings/cyanogenmod/LiveLockScreenSettings$LiveLockScreenInfoAdapter;Lcom/android/exsettings/cyanogenmod/LiveLockScreenSettings$LiveLockScreenBackend$LiveLockScreenInfo;)V
    .locals 0
    .param p1, "liveLockScreenInfo"    # Lcom/android/exsettings/cyanogenmod/LiveLockScreenSettings$LiveLockScreenBackend$LiveLockScreenInfo;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/exsettings/cyanogenmod/LiveLockScreenSettings$LiveLockScreenInfoAdapter;->activate(Lcom/android/exsettings/cyanogenmod/LiveLockScreenSettings$LiveLockScreenBackend$LiveLockScreenInfo;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/exsettings/cyanogenmod/LiveLockScreenSettings;Landroid/content/Context;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/exsettings/cyanogenmod/LiveLockScreenSettings;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 197
    iput-object p1, p0, Lcom/android/exsettings/cyanogenmod/LiveLockScreenSettings$LiveLockScreenInfoAdapter;->this$0:Lcom/android/exsettings/cyanogenmod/LiveLockScreenSettings;

    .line 198
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 199
    const-string/jumbo v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/exsettings/cyanogenmod/LiveLockScreenSettings$LiveLockScreenInfoAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 197
    return-void
.end method

.method private activate(Lcom/android/exsettings/cyanogenmod/LiveLockScreenSettings$LiveLockScreenBackend$LiveLockScreenInfo;)V
    .locals 3
    .param p1, "liveLockScreenInfo"    # Lcom/android/exsettings/cyanogenmod/LiveLockScreenSettings$LiveLockScreenBackend$LiveLockScreenInfo;

    .prologue
    .line 268
    invoke-direct {p0}, Lcom/android/exsettings/cyanogenmod/LiveLockScreenSettings$LiveLockScreenInfoAdapter;->getCurrentSelection()Lcom/android/exsettings/cyanogenmod/LiveLockScreenSettings$LiveLockScreenBackend$LiveLockScreenInfo;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/exsettings/cyanogenmod/LiveLockScreenSettings$LiveLockScreenBackend$LiveLockScreenInfo;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 269
    return-void

    .line 271
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/exsettings/cyanogenmod/LiveLockScreenSettings$LiveLockScreenInfoAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 272
    invoke-virtual {p0, v0}, Lcom/android/exsettings/cyanogenmod/LiveLockScreenSettings$LiveLockScreenInfoAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/exsettings/cyanogenmod/LiveLockScreenSettings$LiveLockScreenBackend$LiveLockScreenInfo;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/exsettings/cyanogenmod/LiveLockScreenSettings$LiveLockScreenBackend$LiveLockScreenInfo;->isActive:Z

    .line 271
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 274
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/android/exsettings/cyanogenmod/LiveLockScreenSettings$LiveLockScreenBackend$LiveLockScreenInfo;->isActive:Z

    .line 275
    iget-object v1, p0, Lcom/android/exsettings/cyanogenmod/LiveLockScreenSettings$LiveLockScreenInfoAdapter;->this$0:Lcom/android/exsettings/cyanogenmod/LiveLockScreenSettings;

    invoke-static {v1}, Lcom/android/exsettings/cyanogenmod/LiveLockScreenSettings;->-get0(Lcom/android/exsettings/cyanogenmod/LiveLockScreenSettings;)Lcom/android/exsettings/cyanogenmod/LiveLockScreenSettings$LiveLockScreenBackend;

    move-result-object v1

    iget-object v2, p1, Lcom/android/exsettings/cyanogenmod/LiveLockScreenSettings$LiveLockScreenBackend$LiveLockScreenInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Lcom/android/exsettings/cyanogenmod/LiveLockScreenSettings$LiveLockScreenBackend;->setActiveLiveLockScreen(Landroid/content/ComponentName;)V

    .line 276
    iget-object v1, p1, Lcom/android/exsettings/cyanogenmod/LiveLockScreenSettings$LiveLockScreenBackend$LiveLockScreenInfo;->settingsComponentName:Landroid/content/ComponentName;

    if-eqz v1, :cond_2

    .line 277
    iget-object v1, p0, Lcom/android/exsettings/cyanogenmod/LiveLockScreenSettings$LiveLockScreenInfoAdapter;->this$0:Lcom/android/exsettings/cyanogenmod/LiveLockScreenSettings;

    invoke-static {v1}, Lcom/android/exsettings/cyanogenmod/LiveLockScreenSettings;->-get0(Lcom/android/exsettings/cyanogenmod/LiveLockScreenSettings;)Lcom/android/exsettings/cyanogenmod/LiveLockScreenSettings$LiveLockScreenBackend;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/exsettings/cyanogenmod/LiveLockScreenSettings$LiveLockScreenBackend;->launchSettings(Lcom/android/exsettings/cyanogenmod/LiveLockScreenSettings$LiveLockScreenBackend$LiveLockScreenInfo;)V

    .line 279
    :cond_2
    invoke-virtual {p0}, Lcom/android/exsettings/cyanogenmod/LiveLockScreenSettings$LiveLockScreenInfoAdapter;->notifyDataSetChanged()V

    .line 267
    return-void
.end method

.method private createLiveLockScreenInfoRow(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 248
    iget-object v1, p0, Lcom/android/exsettings/cyanogenmod/LiveLockScreenSettings$LiveLockScreenInfoAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f04008e

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 249
    .local v0, "row":Landroid/view/View;
    new-instance v1, Lcom/android/exsettings/cyanogenmod/LiveLockScreenSettings$LiveLockScreenInfoAdapter$3;

    invoke-direct {v1, p0, v0}, Lcom/android/exsettings/cyanogenmod/LiveLockScreenSettings$LiveLockScreenInfoAdapter$3;-><init>(Lcom/android/exsettings/cyanogenmod/LiveLockScreenSettings$LiveLockScreenInfoAdapter;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 255
    return-object v0
.end method

.method private getCurrentSelection()Lcom/android/exsettings/cyanogenmod/LiveLockScreenSettings$LiveLockScreenBackend$LiveLockScreenInfo;
    .locals 3

    .prologue
    .line 259
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/exsettings/cyanogenmod/LiveLockScreenSettings$LiveLockScreenInfoAdapter;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 260
    invoke-virtual {p0, v0}, Lcom/android/exsettings/cyanogenmod/LiveLockScreenSettings$LiveLockScreenInfoAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/exsettings/cyanogenmod/LiveLockScreenSettings$LiveLockScreenBackend$LiveLockScreenInfo;

    .line 261
    .local v1, "liveLockScreenInfo":Lcom/android/exsettings/cyanogenmod/LiveLockScreenSettings$LiveLockScreenBackend$LiveLockScreenInfo;
    iget-boolean v2, v1, Lcom/android/exsettings/cyanogenmod/LiveLockScreenSettings$LiveLockScreenBackend$LiveLockScreenInfo;->isActive:Z

    if-eqz v2, :cond_0

    .line 262
    return-object v1

    .line 259
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 265
    .end local v1    # "liveLockScreenInfo":Lcom/android/exsettings/cyanogenmod/LiveLockScreenSettings$LiveLockScreenBackend$LiveLockScreenInfo;
    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x0

    .line 204
    invoke-virtual {p0, p1}, Lcom/android/exsettings/cyanogenmod/LiveLockScreenSettings$LiveLockScreenInfoAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/exsettings/cyanogenmod/LiveLockScreenSettings$LiveLockScreenBackend$LiveLockScreenInfo;

    .line 205
    .local v0, "liveLockScreenInfo":Lcom/android/exsettings/cyanogenmod/LiveLockScreenSettings$LiveLockScreenBackend$LiveLockScreenInfo;
    const-string/jumbo v6, "getView(%s)"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    iget-object v10, v0, Lcom/android/exsettings/cyanogenmod/LiveLockScreenSettings$LiveLockScreenBackend$LiveLockScreenInfo;->caption:Ljava/lang/CharSequence;

    aput-object v10, v9, v7

    invoke-static {v6, v9}, Lcom/android/exsettings/cyanogenmod/LiveLockScreenSettings;->-wrap0(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 206
    if-eqz p2, :cond_0

    move-object v2, p2

    .line 208
    .local v2, "row":Landroid/view/View;
    :goto_0
    invoke-virtual {v2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 211
    const v6, 0x1020006

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 212
    iget-object v9, v0, Lcom/android/exsettings/cyanogenmod/LiveLockScreenSettings$LiveLockScreenBackend$LiveLockScreenInfo;->icon:Landroid/graphics/drawable/Drawable;

    .line 211
    invoke-virtual {v6, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 215
    const v6, 0x1020016

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iget-object v9, v0, Lcom/android/exsettings/cyanogenmod/LiveLockScreenSettings$LiveLockScreenBackend$LiveLockScreenInfo;->caption:Ljava/lang/CharSequence;

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 218
    const v6, 0x7f1300fd

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    .line 219
    .local v1, "radioButton":Landroid/widget/RadioButton;
    iget-boolean v6, v0, Lcom/android/exsettings/cyanogenmod/LiveLockScreenSettings$LiveLockScreenBackend$LiveLockScreenInfo;->isActive:Z

    invoke-virtual {v1, v6}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 220
    new-instance v6, Lcom/android/exsettings/cyanogenmod/LiveLockScreenSettings$LiveLockScreenInfoAdapter$1;

    invoke-direct {v6, p0, v2}, Lcom/android/exsettings/cyanogenmod/LiveLockScreenSettings$LiveLockScreenInfoAdapter$1;-><init>(Lcom/android/exsettings/cyanogenmod/LiveLockScreenSettings$LiveLockScreenInfoAdapter;Landroid/view/View;)V

    invoke-virtual {v1, v6}, Landroid/widget/RadioButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 228
    iget-object v6, v0, Lcom/android/exsettings/cyanogenmod/LiveLockScreenSettings$LiveLockScreenBackend$LiveLockScreenInfo;->settingsComponentName:Landroid/content/ComponentName;

    if-eqz v6, :cond_1

    const/4 v5, 0x1

    .line 229
    .local v5, "showSettings":Z
    :goto_1
    const v6, 0x7f130014

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 230
    .local v4, "settingsDivider":Landroid/view/View;
    if-eqz v5, :cond_2

    move v6, v7

    :goto_2
    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 232
    const v6, 0x7f1300fe

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 233
    .local v3, "settingsButton":Landroid/widget/ImageView;
    if-eqz v5, :cond_3

    :goto_3
    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 234
    iget-boolean v6, v0, Lcom/android/exsettings/cyanogenmod/LiveLockScreenSettings$LiveLockScreenBackend$LiveLockScreenInfo;->isActive:Z

    if-eqz v6, :cond_4

    const/high16 v6, 0x3f800000    # 1.0f

    :goto_4
    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 235
    iget-boolean v6, v0, Lcom/android/exsettings/cyanogenmod/LiveLockScreenSettings$LiveLockScreenBackend$LiveLockScreenInfo;->isActive:Z

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 236
    iget-boolean v6, v0, Lcom/android/exsettings/cyanogenmod/LiveLockScreenSettings$LiveLockScreenBackend$LiveLockScreenInfo;->isActive:Z

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 237
    new-instance v6, Lcom/android/exsettings/cyanogenmod/LiveLockScreenSettings$LiveLockScreenInfoAdapter$2;

    invoke-direct {v6, p0, v2}, Lcom/android/exsettings/cyanogenmod/LiveLockScreenSettings$LiveLockScreenInfoAdapter$2;-><init>(Lcom/android/exsettings/cyanogenmod/LiveLockScreenSettings$LiveLockScreenInfoAdapter;Landroid/view/View;)V

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 244
    return-object v2

    .line 207
    .end local v1    # "radioButton":Landroid/widget/RadioButton;
    .end local v2    # "row":Landroid/view/View;
    .end local v3    # "settingsButton":Landroid/widget/ImageView;
    .end local v4    # "settingsDivider":Landroid/view/View;
    .end local v5    # "showSettings":Z
    :cond_0
    invoke-direct {p0, p3}, Lcom/android/exsettings/cyanogenmod/LiveLockScreenSettings$LiveLockScreenInfoAdapter;->createLiveLockScreenInfoRow(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .restart local v2    # "row":Landroid/view/View;
    goto :goto_0

    .line 228
    .restart local v1    # "radioButton":Landroid/widget/RadioButton;
    :cond_1
    const/4 v5, 0x0

    .restart local v5    # "showSettings":Z
    goto :goto_1

    .restart local v4    # "settingsDivider":Landroid/view/View;
    :cond_2
    move v6, v8

    .line 230
    goto :goto_2

    .restart local v3    # "settingsButton":Landroid/widget/ImageView;
    :cond_3
    move v7, v8

    .line 233
    goto :goto_3

    .line 234
    :cond_4
    const v6, 0x3ecccccd    # 0.4f

    goto :goto_4
.end method
