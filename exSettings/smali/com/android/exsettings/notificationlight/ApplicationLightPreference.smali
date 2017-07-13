.class public Lcom/android/exsettings/notificationlight/ApplicationLightPreference;
.super Landroid/preference/DialogPreference;
.source "ApplicationLightPreference.java"


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private mColorValue:I

.field private mLightColorView:Landroid/widget/ImageView;

.field private mOffValue:I

.field private mOffValueView:Landroid/widget/TextView;

.field private mOnOffChangeable:Z

.field private mOnValue:I

.field private mOnValueView:Landroid/widget/TextView;

.field private mResources:Landroid/content/res/Resources;


# direct methods
.method static synthetic -set0(Lcom/android/exsettings/notificationlight/ApplicationLightPreference;I)I
    .locals 0

    iput p1, p0, Lcom/android/exsettings/notificationlight/ApplicationLightPreference;->mColorValue:I

    return p1
.end method

.method static synthetic -set1(Lcom/android/exsettings/notificationlight/ApplicationLightPreference;I)I
    .locals 0

    iput p1, p0, Lcom/android/exsettings/notificationlight/ApplicationLightPreference;->mOffValue:I

    return p1
.end method

.method static synthetic -set2(Lcom/android/exsettings/notificationlight/ApplicationLightPreference;I)I
    .locals 0

    iput p1, p0, Lcom/android/exsettings/notificationlight/ApplicationLightPreference;->mOnValue:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/exsettings/notificationlight/ApplicationLightPreference;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "newValue"    # Ljava/lang/Object;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/exsettings/notificationlight/ApplicationLightPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/exsettings/notificationlight/ApplicationLightPreference;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/exsettings/notificationlight/ApplicationLightPreference;->updatePreferenceViews()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-string/jumbo v0, "AppLightPreference"

    sput-object v0, Lcom/android/exsettings/notificationlight/ApplicationLightPreference;->TAG:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;III)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "color"    # I
    .param p3, "onValue"    # I
    .param p4, "offValue"    # I

    .prologue
    .line 73
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 74
    iput p2, p0, Lcom/android/exsettings/notificationlight/ApplicationLightPreference;->mColorValue:I

    .line 75
    iput p3, p0, Lcom/android/exsettings/notificationlight/ApplicationLightPreference;->mOnValue:I

    .line 76
    iput p4, p0, Lcom/android/exsettings/notificationlight/ApplicationLightPreference;->mOffValue:I

    .line 77
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 78
    const v1, 0x112004b

    .line 77
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/exsettings/notificationlight/ApplicationLightPreference;->mOnOffChangeable:Z

    .line 79
    invoke-direct {p0}, Lcom/android/exsettings/notificationlight/ApplicationLightPreference;->init()V

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IIIZ)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "color"    # I
    .param p3, "onValue"    # I
    .param p4, "offValue"    # I
    .param p5, "onOffChangeable"    # Z

    .prologue
    .line 89
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 90
    iput p2, p0, Lcom/android/exsettings/notificationlight/ApplicationLightPreference;->mColorValue:I

    .line 91
    iput p3, p0, Lcom/android/exsettings/notificationlight/ApplicationLightPreference;->mOnValue:I

    .line 92
    iput p4, p0, Lcom/android/exsettings/notificationlight/ApplicationLightPreference;->mOffValue:I

    .line 93
    iput-boolean p5, p0, Lcom/android/exsettings/notificationlight/ApplicationLightPreference;->mOnOffChangeable:Z

    .line 94
    invoke-direct {p0}, Lcom/android/exsettings/notificationlight/ApplicationLightPreference;->init()V

    .line 88
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/16 v1, 0x3e8

    .line 57
    invoke-direct {p0, p1, p2}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 58
    const v0, 0xffffff

    iput v0, p0, Lcom/android/exsettings/notificationlight/ApplicationLightPreference;->mColorValue:I

    .line 59
    iput v1, p0, Lcom/android/exsettings/notificationlight/ApplicationLightPreference;->mOnValue:I

    .line 60
    iput v1, p0, Lcom/android/exsettings/notificationlight/ApplicationLightPreference;->mOffValue:I

    .line 61
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 62
    const v1, 0x112004b

    .line 61
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/exsettings/notificationlight/ApplicationLightPreference;->mOnOffChangeable:Z

    .line 63
    invoke-direct {p0}, Lcom/android/exsettings/notificationlight/ApplicationLightPreference;->init()V

    .line 56
    return-void
.end method

.method private static createOvalShape(II)Landroid/graphics/drawable/ShapeDrawable;
    .locals 2
    .param p0, "size"    # I
    .param p1, "color"    # I

    .prologue
    .line 254
    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v1, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {v1}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 255
    .local v0, "shape":Landroid/graphics/drawable/ShapeDrawable;
    invoke-virtual {v0, p0}, Landroid/graphics/drawable/ShapeDrawable;->setIntrinsicHeight(I)V

    .line 256
    invoke-virtual {v0, p0}, Landroid/graphics/drawable/ShapeDrawable;->setIntrinsicWidth(I)V

    .line 257
    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 258
    return-object v0
.end method

.method private init()V
    .locals 1

    .prologue
    .line 98
    const v0, 0x7f0400ad

    invoke-virtual {p0, v0}, Lcom/android/exsettings/notificationlight/ApplicationLightPreference;->setLayoutResource(I)V

    .line 99
    invoke-virtual {p0}, Lcom/android/exsettings/notificationlight/ApplicationLightPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/notificationlight/ApplicationLightPreference;->mResources:Landroid/content/res/Resources;

    .line 97
    return-void
.end method

.method private mapLengthValue(Ljava/lang/Integer;)Ljava/lang/String;
    .locals 5
    .param p1, "time"    # Ljava/lang/Integer;

    .prologue
    .line 262
    iget-boolean v3, p0, Lcom/android/exsettings/notificationlight/ApplicationLightPreference;->mOnOffChangeable:Z

    if-nez v3, :cond_0

    .line 263
    invoke-virtual {p0}, Lcom/android/exsettings/notificationlight/ApplicationLightPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0c0110

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 265
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v4, 0x3e8

    if-ne v3, v4, :cond_1

    .line 266
    invoke-virtual {p0}, Lcom/android/exsettings/notificationlight/ApplicationLightPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0c010c

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 269
    :cond_1
    iget-object v3, p0, Lcom/android/exsettings/notificationlight/ApplicationLightPreference;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f0a0080

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 270
    .local v1, "timeNames":[Ljava/lang/String;
    iget-object v3, p0, Lcom/android/exsettings/notificationlight/ApplicationLightPreference;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f0a0081

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 272
    .local v2, "timeValues":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_3

    .line 273
    aget-object v3, v2, v0

    invoke-static {v3}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 274
    aget-object v3, v1, v0

    return-object v3

    .line 272
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 278
    :cond_3
    invoke-virtual {p0}, Lcom/android/exsettings/notificationlight/ApplicationLightPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0c010d

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private mapSpeedValue(Ljava/lang/Integer;)Ljava/lang/String;
    .locals 5
    .param p1, "time"    # Ljava/lang/Integer;

    .prologue
    .line 282
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v4, 0x3e8

    if-ne v3, v4, :cond_0

    .line 283
    invoke-virtual {p0}, Lcom/android/exsettings/notificationlight/ApplicationLightPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0c010c

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 286
    :cond_0
    iget-object v3, p0, Lcom/android/exsettings/notificationlight/ApplicationLightPreference;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f0a0082

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 287
    .local v1, "timeNames":[Ljava/lang/String;
    iget-object v3, p0, Lcom/android/exsettings/notificationlight/ApplicationLightPreference;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f0a0083

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 289
    .local v2, "timeValues":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_2

    .line 290
    aget-object v3, v2, v0

    invoke-static {v3}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 291
    aget-object v3, v1, v0

    return-object v3

    .line 289
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 295
    :cond_2
    invoke-virtual {p0}, Lcom/android/exsettings/notificationlight/ApplicationLightPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0c010d

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private updatePreferenceViews()V
    .locals 6

    .prologue
    const v5, 0xf0f0f0

    const/4 v4, 0x1

    .line 137
    iget-object v2, p0, Lcom/android/exsettings/notificationlight/ApplicationLightPreference;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0b0036

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v1, v2

    .line 139
    .local v1, "size":I
    iget-object v2, p0, Lcom/android/exsettings/notificationlight/ApplicationLightPreference;->mLightColorView:Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    .line 140
    iget-object v2, p0, Lcom/android/exsettings/notificationlight/ApplicationLightPreference;->mLightColorView:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 142
    iget v2, p0, Lcom/android/exsettings/notificationlight/ApplicationLightPreference;->mColorValue:I

    and-int/2addr v2, v5

    if-ne v2, v5, :cond_3

    .line 143
    iget v2, p0, Lcom/android/exsettings/notificationlight/ApplicationLightPreference;->mColorValue:I

    const v3, 0x101010

    sub-int v0, v2, v3

    .line 144
    .local v0, "imageColor":I
    :goto_0
    iget-object v2, p0, Lcom/android/exsettings/notificationlight/ApplicationLightPreference;->mLightColorView:Landroid/widget/ImageView;

    .line 145
    const/high16 v3, -0x1000000

    add-int/2addr v3, v0

    .line 144
    invoke-static {v1, v3}, Lcom/android/exsettings/notificationlight/ApplicationLightPreference;->createOvalShape(II)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 147
    .end local v0    # "imageColor":I
    :cond_0
    iget-object v2, p0, Lcom/android/exsettings/notificationlight/ApplicationLightPreference;->mOnValueView:Landroid/widget/TextView;

    if-eqz v2, :cond_1

    .line 148
    iget-object v2, p0, Lcom/android/exsettings/notificationlight/ApplicationLightPreference;->mOnValueView:Landroid/widget/TextView;

    iget v3, p0, Lcom/android/exsettings/notificationlight/ApplicationLightPreference;->mOnValue:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/exsettings/notificationlight/ApplicationLightPreference;->mapLengthValue(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    :cond_1
    iget-object v2, p0, Lcom/android/exsettings/notificationlight/ApplicationLightPreference;->mOffValueView:Landroid/widget/TextView;

    if-eqz v2, :cond_2

    .line 151
    iget v2, p0, Lcom/android/exsettings/notificationlight/ApplicationLightPreference;->mOnValue:I

    if-eq v2, v4, :cond_4

    iget-boolean v2, p0, Lcom/android/exsettings/notificationlight/ApplicationLightPreference;->mOnOffChangeable:Z

    if-eqz v2, :cond_4

    .line 154
    iget-object v2, p0, Lcom/android/exsettings/notificationlight/ApplicationLightPreference;->mOffValueView:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 156
    :goto_1
    iget-object v2, p0, Lcom/android/exsettings/notificationlight/ApplicationLightPreference;->mOffValueView:Landroid/widget/TextView;

    iget v3, p0, Lcom/android/exsettings/notificationlight/ApplicationLightPreference;->mOffValue:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/exsettings/notificationlight/ApplicationLightPreference;->mapSpeedValue(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    :cond_2
    return-void

    .line 143
    :cond_3
    iget v0, p0, Lcom/android/exsettings/notificationlight/ApplicationLightPreference;->mColorValue:I

    .restart local v0    # "imageColor":I
    goto :goto_0

    .line 152
    .end local v0    # "imageColor":I
    :cond_4
    iget-object v2, p0, Lcom/android/exsettings/notificationlight/ApplicationLightPreference;->mOffValueView:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method


# virtual methods
.method protected createDialog()Landroid/app/Dialog;
    .locals 6

    .prologue
    .line 169
    new-instance v0, Lcom/android/exsettings/notificationlight/LightSettingsDialog;

    invoke-virtual {p0}, Lcom/android/exsettings/notificationlight/ApplicationLightPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 170
    iget v2, p0, Lcom/android/exsettings/notificationlight/ApplicationLightPreference;->mColorValue:I

    const/high16 v3, -0x1000000

    add-int/2addr v2, v3

    iget v3, p0, Lcom/android/exsettings/notificationlight/ApplicationLightPreference;->mOnValue:I

    iget v4, p0, Lcom/android/exsettings/notificationlight/ApplicationLightPreference;->mOffValue:I

    iget-boolean v5, p0, Lcom/android/exsettings/notificationlight/ApplicationLightPreference;->mOnOffChangeable:Z

    .line 169
    invoke-direct/range {v0 .. v5}, Lcom/android/exsettings/notificationlight/LightSettingsDialog;-><init>(Landroid/content/Context;IIIZ)V

    .line 171
    .local v0, "d":Lcom/android/exsettings/notificationlight/LightSettingsDialog;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/exsettings/notificationlight/LightSettingsDialog;->setAlphaSliderVisible(Z)V

    .line 173
    iget-object v1, p0, Lcom/android/exsettings/notificationlight/ApplicationLightPreference;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f0c09e2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 174
    new-instance v2, Lcom/android/exsettings/notificationlight/ApplicationLightPreference$1;

    invoke-direct {v2, p0, v0}, Lcom/android/exsettings/notificationlight/ApplicationLightPreference$1;-><init>(Lcom/android/exsettings/notificationlight/ApplicationLightPreference;Lcom/android/exsettings/notificationlight/LightSettingsDialog;)V

    .line 173
    const/4 v3, -0x1

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/exsettings/notificationlight/LightSettingsDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 184
    iget-object v1, p0, Lcom/android/exsettings/notificationlight/ApplicationLightPreference;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f0c05d6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 185
    new-instance v2, Lcom/android/exsettings/notificationlight/ApplicationLightPreference$2;

    invoke-direct {v2, p0}, Lcom/android/exsettings/notificationlight/ApplicationLightPreference$2;-><init>(Lcom/android/exsettings/notificationlight/ApplicationLightPreference;)V

    .line 184
    const/4 v3, -0x2

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/exsettings/notificationlight/LightSettingsDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 191
    return-object v0
.end method

.method public getColor()I
    .locals 1

    .prologue
    .line 199
    iget v0, p0, Lcom/android/exsettings/notificationlight/ApplicationLightPreference;->mColorValue:I

    return v0
.end method

.method public getOffValue()I
    .locals 1

    .prologue
    .line 222
    iget v0, p0, Lcom/android/exsettings/notificationlight/ApplicationLightPreference;->mOffValue:I

    return v0
.end method

.method public getOnValue()I
    .locals 1

    .prologue
    .line 213
    iget v0, p0, Lcom/android/exsettings/notificationlight/ApplicationLightPreference;->mOnValue:I

    return v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/16 v3, 0x8

    .line 118
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onBindView(Landroid/view/View;)V

    .line 120
    const v1, 0x7f130175

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/exsettings/notificationlight/ApplicationLightPreference;->mLightColorView:Landroid/widget/ImageView;

    .line 121
    const v1, 0x7f130173

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/exsettings/notificationlight/ApplicationLightPreference;->mOnValueView:Landroid/widget/TextView;

    .line 122
    const v1, 0x7f130174

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/exsettings/notificationlight/ApplicationLightPreference;->mOffValueView:Landroid/widget/TextView;

    .line 126
    const v1, 0x1020010

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 127
    .local v0, "tView":Landroid/widget/TextView;
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 129
    iget-object v1, p0, Lcom/android/exsettings/notificationlight/ApplicationLightPreference;->mResources:Landroid/content/res/Resources;

    const v2, 0x1120048

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 130
    iget-object v1, p0, Lcom/android/exsettings/notificationlight/ApplicationLightPreference;->mLightColorView:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 133
    :cond_0
    invoke-direct {p0}, Lcom/android/exsettings/notificationlight/ApplicationLightPreference;->updatePreferenceViews()V

    .line 117
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 103
    invoke-virtual {p0}, Lcom/android/exsettings/notificationlight/ApplicationLightPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    check-cast v0, Lcom/android/exsettings/notificationlight/LightSettingsDialog;

    .line 104
    .local v0, "d":Lcom/android/exsettings/notificationlight/LightSettingsDialog;
    if-eqz v0, :cond_0

    .line 105
    invoke-virtual {v0}, Lcom/android/exsettings/notificationlight/LightSettingsDialog;->onStart()V

    .line 102
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 110
    invoke-virtual {p0}, Lcom/android/exsettings/notificationlight/ApplicationLightPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    check-cast v0, Lcom/android/exsettings/notificationlight/LightSettingsDialog;

    .line 111
    .local v0, "d":Lcom/android/exsettings/notificationlight/LightSettingsDialog;
    if-eqz v0, :cond_0

    .line 112
    invoke-virtual {v0}, Lcom/android/exsettings/notificationlight/LightSettingsDialog;->onStop()V

    .line 109
    :cond_0
    return-void
.end method

.method public setAllValues(III)V
    .locals 0
    .param p1, "color"    # I
    .param p2, "onValue"    # I
    .param p3, "offValue"    # I

    .prologue
    .line 226
    iput p1, p0, Lcom/android/exsettings/notificationlight/ApplicationLightPreference;->mColorValue:I

    .line 227
    iput p2, p0, Lcom/android/exsettings/notificationlight/ApplicationLightPreference;->mOnValue:I

    .line 228
    iput p3, p0, Lcom/android/exsettings/notificationlight/ApplicationLightPreference;->mOffValue:I

    .line 229
    invoke-direct {p0}, Lcom/android/exsettings/notificationlight/ApplicationLightPreference;->updatePreferenceViews()V

    .line 225
    return-void
.end method

.method public setAllValues(IIIZ)V
    .locals 0
    .param p1, "color"    # I
    .param p2, "onValue"    # I
    .param p3, "offValue"    # I
    .param p4, "onOffChangeable"    # Z

    .prologue
    .line 233
    iput p1, p0, Lcom/android/exsettings/notificationlight/ApplicationLightPreference;->mColorValue:I

    .line 234
    iput p2, p0, Lcom/android/exsettings/notificationlight/ApplicationLightPreference;->mOnValue:I

    .line 235
    iput p3, p0, Lcom/android/exsettings/notificationlight/ApplicationLightPreference;->mOffValue:I

    .line 236
    iput-boolean p4, p0, Lcom/android/exsettings/notificationlight/ApplicationLightPreference;->mOnOffChangeable:Z

    .line 237
    invoke-direct {p0}, Lcom/android/exsettings/notificationlight/ApplicationLightPreference;->updatePreferenceViews()V

    .line 232
    return-void
.end method

.method protected showDialog(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    .line 162
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->showDialog(Landroid/os/Bundle;)V

    .line 164
    invoke-virtual {p0}, Lcom/android/exsettings/notificationlight/ApplicationLightPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    check-cast v0, Lcom/android/exsettings/notificationlight/LightSettingsDialog;

    .line 161
    .local v0, "d":Lcom/android/exsettings/notificationlight/LightSettingsDialog;
    return-void
.end method
