.class public Lcom/android/exsettings/nx/SeekBarPreference;
.super Landroid/preference/Preference;
.source "SeekBarPreference.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mCurrentValue:I

.field private mInterval:I

.field private mMaxValue:I

.field private mMinValue:I

.field private mSeekBar:Landroid/widget/SeekBar;

.field private mStatusText:Landroid/widget/TextView;

.field private mTitle:Landroid/widget/TextView;

.field private mUnitsLeft:Ljava/lang/String;

.field private mUnitsRight:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    invoke-virtual {p0}, Lcom/android/exsettings/nx/SeekBarPreference;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/nx/SeekBarPreference;->TAG:Ljava/lang/String;

    .line 26
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/exsettings/nx/SeekBarPreference;->mMaxValue:I

    .line 27
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/exsettings/nx/SeekBarPreference;->mMinValue:I

    .line 28
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/exsettings/nx/SeekBarPreference;->mInterval:I

    .line 30
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/exsettings/nx/SeekBarPreference;->mUnitsLeft:Ljava/lang/String;

    .line 31
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/exsettings/nx/SeekBarPreference;->mUnitsRight:Ljava/lang/String;

    .line 39
    invoke-direct {p0, p1, p2}, Lcom/android/exsettings/nx/SeekBarPreference;->initPreference(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 43
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 20
    invoke-virtual {p0}, Lcom/android/exsettings/nx/SeekBarPreference;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/nx/SeekBarPreference;->TAG:Ljava/lang/String;

    .line 26
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/exsettings/nx/SeekBarPreference;->mMaxValue:I

    .line 27
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/exsettings/nx/SeekBarPreference;->mMinValue:I

    .line 28
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/exsettings/nx/SeekBarPreference;->mInterval:I

    .line 30
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/exsettings/nx/SeekBarPreference;->mUnitsLeft:Ljava/lang/String;

    .line 31
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/exsettings/nx/SeekBarPreference;->mUnitsRight:Ljava/lang/String;

    .line 44
    invoke-direct {p0, p1, p2}, Lcom/android/exsettings/nx/SeekBarPreference;->initPreference(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    return-void
.end method

.method private getAttributeStringValue(Landroid/util/AttributeSet;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .param p2, "namespace"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 84
    invoke-interface {p1, p2, p3}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 85
    .local v0, "value":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 86
    move-object v0, p4

    .line 88
    :cond_0
    return-object v0
.end method

.method private initPreference(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 48
    invoke-direct {p0, p2}, Lcom/android/exsettings/nx/SeekBarPreference;->setValuesFromXml(Landroid/util/AttributeSet;)V

    .line 49
    new-instance v0, Landroid/widget/SeekBar;

    invoke-direct {v0, p1, p2}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/android/exsettings/nx/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    .line 50
    iget-object v0, p0, Lcom/android/exsettings/nx/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/android/exsettings/nx/SeekBarPreference;->mMaxValue:I

    iget v2, p0, Lcom/android/exsettings/nx/SeekBarPreference;->mMinValue:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 51
    iget-object v0, p0, Lcom/android/exsettings/nx/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 47
    return-void
.end method

.method private setValuesFromXml(Landroid/util/AttributeSet;)V
    .locals 9
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v8, 0x0

    .line 55
    invoke-virtual {p0}, Lcom/android/exsettings/nx/SeekBarPreference;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 56
    sget-object v6, Lcom/android/exsettings/R$styleable;->SeekBarPreference:[I

    .line 55
    invoke-virtual {v5, p1, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 58
    .local v3, "typedArray":Landroid/content/res/TypedArray;
    const-string/jumbo v5, "http://schemas.android.com/apk/res/android"

    const-string/jumbo v6, "max"

    const/16 v7, 0x64

    invoke-interface {p1, v5, v6, v7}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/android/exsettings/nx/SeekBarPreference;->mMaxValue:I

    .line 59
    const-string/jumbo v5, "http://schemas.android.com/apk/res/com.android.settings"

    const-string/jumbo v6, "minimum"

    invoke-interface {p1, v5, v6, v8}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/android/exsettings/nx/SeekBarPreference;->mMinValue:I

    .line 60
    const-string/jumbo v5, "http://schemas.android.com/apk/res/com.android.settings"

    const-string/jumbo v6, "unitsLeft"

    const-string/jumbo v7, ""

    invoke-direct {p0, p1, v5, v6, v7}, Lcom/android/exsettings/nx/SeekBarPreference;->getAttributeStringValue(Landroid/util/AttributeSet;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/exsettings/nx/SeekBarPreference;->mUnitsLeft:Ljava/lang/String;

    .line 61
    const-string/jumbo v5, "http://schemas.android.com/apk/res/com.android.settings"

    const-string/jumbo v6, "units"

    const-string/jumbo v7, ""

    invoke-direct {p0, p1, v5, v6, v7}, Lcom/android/exsettings/nx/SeekBarPreference;->getAttributeStringValue(Landroid/util/AttributeSet;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 62
    .local v4, "units":Ljava/lang/String;
    const-string/jumbo v5, "http://schemas.android.com/apk/res/com.android.settings"

    const-string/jumbo v6, "unitsRight"

    invoke-direct {p0, p1, v5, v6, v4}, Lcom/android/exsettings/nx/SeekBarPreference;->getAttributeStringValue(Landroid/util/AttributeSet;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/exsettings/nx/SeekBarPreference;->mUnitsRight:Ljava/lang/String;

    .line 64
    const/4 v5, 0x3

    invoke-virtual {v3, v5, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 65
    .local v1, "id":Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-lez v5, :cond_0

    .line 66
    invoke-virtual {p0}, Lcom/android/exsettings/nx/SeekBarPreference;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/exsettings/nx/SeekBarPreference;->mUnitsRight:Ljava/lang/String;

    .line 68
    :cond_0
    const/4 v5, 0x2

    invoke-virtual {v3, v5, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 69
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-lez v5, :cond_1

    .line 70
    invoke-virtual {p0}, Lcom/android/exsettings/nx/SeekBarPreference;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/exsettings/nx/SeekBarPreference;->mUnitsLeft:Ljava/lang/String;

    .line 74
    :cond_1
    :try_start_0
    const-string/jumbo v5, "http://schemas.android.com/apk/res/com.android.settings"

    const-string/jumbo v6, "interval"

    invoke-interface {p1, v5, v6}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 75
    .local v2, "newInterval":Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 76
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/android/exsettings/nx/SeekBarPreference;->mInterval:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    .end local v2    # "newInterval":Ljava/lang/String;
    :cond_2
    :goto_0
    return-void

    .line 78
    :catch_0
    move-exception v0

    .line 79
    .local v0, "e":Ljava/lang/Exception;
    iget-object v5, p0, Lcom/android/exsettings/nx/SeekBarPreference;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "Invalid interval value"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public onBindView(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 119
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 123
    :try_start_0
    iget-object v3, p0, Lcom/android/exsettings/nx/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .line 124
    .local v2, "oldContainer":Landroid/view/ViewParent;
    const v3, 0x7f130215

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 126
    .local v1, "newContainer":Landroid/view/ViewGroup;
    if-eq v2, v1, :cond_1

    .line 128
    if-eqz v2, :cond_0

    .line 129
    check-cast v2, Landroid/view/ViewGroup;

    .end local v2    # "oldContainer":Landroid/view/ViewParent;
    iget-object v3, p0, Lcom/android/exsettings/nx/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 132
    :cond_0
    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 133
    iget-object v3, p0, Lcom/android/exsettings/nx/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    const/4 v4, -0x1

    .line 134
    const/4 v5, -0x2

    .line 133
    invoke-virtual {v1, v3, v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    .end local v1    # "newContainer":Landroid/view/ViewGroup;
    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/exsettings/nx/SeekBarPreference;->updateView(Landroid/view/View;)V

    .line 118
    return-void

    .line 137
    :catch_0
    move-exception v0

    .line 138
    .local v0, "ex":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/android/exsettings/nx/SeekBarPreference;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Error binding view: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 104
    const/4 v2, 0x0

    .line 106
    .local v2, "layout":Landroid/widget/RelativeLayout;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/exsettings/nx/SeekBarPreference;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string/jumbo v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 107
    .local v3, "mInflater":Landroid/view/LayoutInflater;
    const v4, 0x7f0400ff

    const/4 v5, 0x0

    invoke-virtual {v3, v4, p1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Landroid/widget/RelativeLayout;

    move-object v2, v0

    .line 108
    .local v2, "layout":Landroid/widget/RelativeLayout;
    const v4, 0x1020016

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/exsettings/nx/SeekBarPreference;->mTitle:Landroid/widget/TextView;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    .end local v2    # "layout":Landroid/widget/RelativeLayout;
    .end local v3    # "mInflater":Landroid/view/LayoutInflater;
    :goto_0
    return-object v2

    .line 111
    :catch_0
    move-exception v1

    .line 112
    .local v1, "e":Ljava/lang/Exception;
    iget-object v4, p0, Lcom/android/exsettings/nx/SeekBarPreference;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "Error creating seek bar preference"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onDependencyChanged(Landroid/preference/Preference;Z)V
    .locals 4
    .param p1, "dependency"    # Landroid/preference/Preference;
    .param p2, "disableDependent"    # Z

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 93
    invoke-super {p0, p1, p2}, Landroid/preference/Preference;->onDependencyChanged(Landroid/preference/Preference;Z)V

    .line 94
    invoke-virtual {p0, v2}, Lcom/android/exsettings/nx/SeekBarPreference;->setShouldDisableView(Z)V

    .line 95
    iget-object v0, p0, Lcom/android/exsettings/nx/SeekBarPreference;->mTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 96
    iget-object v3, p0, Lcom/android/exsettings/nx/SeekBarPreference;->mTitle:Landroid/widget/TextView;

    if-eqz p2, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/android/exsettings/nx/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_1

    .line 98
    iget-object v0, p0, Lcom/android/exsettings/nx/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz p2, :cond_3

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 92
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 96
    goto :goto_0

    :cond_3
    move v1, v2

    .line 98
    goto :goto_1
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 2
    .param p1, "ta"    # Landroid/content/res/TypedArray;
    .param p2, "index"    # I

    .prologue
    .line 197
    const/16 v1, 0x32

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    .line 198
    .local v0, "defaultValue":I
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 3
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    .line 168
    iget v1, p0, Lcom/android/exsettings/nx/SeekBarPreference;->mMinValue:I

    add-int v0, p2, v1

    .line 169
    .local v0, "newValue":I
    iget v1, p0, Lcom/android/exsettings/nx/SeekBarPreference;->mMaxValue:I

    if-le v0, v1, :cond_1

    .line 170
    iget v0, p0, Lcom/android/exsettings/nx/SeekBarPreference;->mMaxValue:I

    .line 177
    :cond_0
    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/exsettings/nx/SeekBarPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 178
    iget v1, p0, Lcom/android/exsettings/nx/SeekBarPreference;->mCurrentValue:I

    iget v2, p0, Lcom/android/exsettings/nx/SeekBarPreference;->mMinValue:I

    sub-int/2addr v1, v2

    invoke-virtual {p1, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 179
    return-void

    .line 171
    :cond_1
    iget v1, p0, Lcom/android/exsettings/nx/SeekBarPreference;->mMinValue:I

    if-ge v0, v1, :cond_2

    .line 172
    iget v0, p0, Lcom/android/exsettings/nx/SeekBarPreference;->mMinValue:I

    goto :goto_0

    .line 173
    :cond_2
    iget v1, p0, Lcom/android/exsettings/nx/SeekBarPreference;->mInterval:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/android/exsettings/nx/SeekBarPreference;->mInterval:I

    rem-int v1, v0, v1

    if-eqz v1, :cond_0

    .line 174
    int-to-float v1, v0

    iget v2, p0, Lcom/android/exsettings/nx/SeekBarPreference;->mInterval:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget v2, p0, Lcom/android/exsettings/nx/SeekBarPreference;->mInterval:I

    mul-int v0, v1, v2

    goto :goto_0

    .line 182
    :cond_3
    iput v0, p0, Lcom/android/exsettings/nx/SeekBarPreference;->mCurrentValue:I

    .line 183
    iget-object v1, p0, Lcom/android/exsettings/nx/SeekBarPreference;->mStatusText:Landroid/widget/TextView;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 184
    invoke-virtual {p0, v0}, Lcom/android/exsettings/nx/SeekBarPreference;->persistInt(I)Z

    .line 167
    return-void
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 6
    .param p1, "restoreValue"    # Z
    .param p2, "defaultValue"    # Ljava/lang/Object;

    .prologue
    .line 203
    if-eqz p1, :cond_0

    .line 204
    iget v3, p0, Lcom/android/exsettings/nx/SeekBarPreference;->mCurrentValue:I

    invoke-virtual {p0, v3}, Lcom/android/exsettings/nx/SeekBarPreference;->getPersistedInt(I)I

    move-result v3

    iput v3, p0, Lcom/android/exsettings/nx/SeekBarPreference;->mCurrentValue:I

    .line 202
    :goto_0
    return-void

    .line 207
    :cond_0
    const/4 v2, 0x0

    .line 209
    .local v2, "temp":I
    :try_start_0
    move-object v0, p2

    check-cast v0, Ljava/lang/Integer;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 214
    :goto_1
    invoke-virtual {p0, v2}, Lcom/android/exsettings/nx/SeekBarPreference;->persistInt(I)Z

    .line 215
    iput v2, p0, Lcom/android/exsettings/nx/SeekBarPreference;->mCurrentValue:I

    goto :goto_0

    .line 211
    :catch_0
    move-exception v1

    .line 212
    .local v1, "ex":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/android/exsettings/nx/SeekBarPreference;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Invalid default value: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 188
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 192
    invoke-virtual {p0}, Lcom/android/exsettings/nx/SeekBarPreference;->notifyChanged()V

    .line 191
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 225
    iget-object v0, p0, Lcom/android/exsettings/nx/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 226
    invoke-super {p0, p1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 224
    return-void
.end method

.method public setValue(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 220
    iput p1, p0, Lcom/android/exsettings/nx/SeekBarPreference;->mCurrentValue:I

    .line 219
    return-void
.end method

.method protected updateView(Landroid/view/View;)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 150
    :try_start_0
    move-object v0, p1

    check-cast v0, Landroid/widget/RelativeLayout;

    move-object v2, v0

    .line 151
    .local v2, "layout":Landroid/widget/RelativeLayout;
    const v5, 0x7f130213

    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/exsettings/nx/SeekBarPreference;->mStatusText:Landroid/widget/TextView;

    .line 152
    iget-object v5, p0, Lcom/android/exsettings/nx/SeekBarPreference;->mStatusText:Landroid/widget/TextView;

    iget v6, p0, Lcom/android/exsettings/nx/SeekBarPreference;->mCurrentValue:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 153
    iget-object v5, p0, Lcom/android/exsettings/nx/SeekBarPreference;->mStatusText:Landroid/widget/TextView;

    const/16 v6, 0x1e

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setMinimumWidth(I)V

    .line 154
    iget-object v5, p0, Lcom/android/exsettings/nx/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget v6, p0, Lcom/android/exsettings/nx/SeekBarPreference;->mCurrentValue:I

    iget v7, p0, Lcom/android/exsettings/nx/SeekBarPreference;->mMinValue:I

    sub-int/2addr v6, v7

    invoke-virtual {v5, v6}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 156
    const v5, 0x7f130212

    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 157
    .local v4, "unitsRight":Landroid/widget/TextView;
    iget-object v5, p0, Lcom/android/exsettings/nx/SeekBarPreference;->mUnitsRight:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
    const v5, 0x7f130214

    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 159
    .local v3, "unitsLeft":Landroid/widget/TextView;
    iget-object v5, p0, Lcom/android/exsettings/nx/SeekBarPreference;->mUnitsLeft:Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    .end local v2    # "layout":Landroid/widget/RelativeLayout;
    .end local v3    # "unitsLeft":Landroid/widget/TextView;
    .end local v4    # "unitsRight":Landroid/widget/TextView;
    :goto_0
    return-void

    .line 161
    :catch_0
    move-exception v1

    .line 162
    .local v1, "e":Ljava/lang/Exception;
    iget-object v5, p0, Lcom/android/exsettings/nx/SeekBarPreference;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "Error updating seek bar preference"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
