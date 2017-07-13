.class public Lcom/android/exsettings/livedisplay/DisplayColor;
.super Landroid/preference/DialogPreference;
.source "DisplayColor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exsettings/livedisplay/DisplayColor$SavedState;,
        Lcom/android/exsettings/livedisplay/DisplayColor$ColorSeekBar;
    }
.end annotation


# static fields
.field private static final SEEKBAR_ID:[I

.field private static final SEEKBAR_VALUE_ID:[I


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mCurrentColors:[F

.field private final mLiveDisplay:Lcyanogenmod/hardware/LiveDisplayManager;

.field private final mOriginalColors:[F

.field private mSeekBars:[Lcom/android/exsettings/livedisplay/DisplayColor$ColorSeekBar;


# direct methods
.method static synthetic -get0(Lcom/android/exsettings/livedisplay/DisplayColor;)[F
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/livedisplay/DisplayColor;->mCurrentColors:[F

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/exsettings/livedisplay/DisplayColor;)[Lcom/android/exsettings/livedisplay/DisplayColor$ColorSeekBar;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/livedisplay/DisplayColor;->mSeekBars:[Lcom/android/exsettings/livedisplay/DisplayColor$ColorSeekBar;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/exsettings/livedisplay/DisplayColor;[F)V
    .locals 0
    .param p1, "colors"    # [F

    .prologue
    invoke-direct {p0, p1}, Lcom/android/exsettings/livedisplay/DisplayColor;->updateColors([F)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 48
    const v0, 0x7f1300de

    .line 49
    const v1, 0x7f1300e1

    .line 50
    const v2, 0x7f1300e4

    .line 47
    filled-new-array {v0, v1, v2}, [I

    move-result-object v0

    sput-object v0, Lcom/android/exsettings/livedisplay/DisplayColor;->SEEKBAR_ID:[I

    .line 54
    const v0, 0x7f1300dd

    .line 55
    const v1, 0x7f1300e0

    .line 56
    const v2, 0x7f1300e3

    .line 53
    filled-new-array {v0, v1, v2}, [I

    move-result-object v0

    sput-object v0, Lcom/android/exsettings/livedisplay/DisplayColor;->SEEKBAR_VALUE_ID:[I

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x3

    .line 65
    invoke-direct {p0, p1, p2}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 59
    sget-object v0, Lcom/android/exsettings/livedisplay/DisplayColor;->SEEKBAR_ID:[I

    array-length v0, v0

    new-array v0, v0, [Lcom/android/exsettings/livedisplay/DisplayColor$ColorSeekBar;

    iput-object v0, p0, Lcom/android/exsettings/livedisplay/DisplayColor;->mSeekBars:[Lcom/android/exsettings/livedisplay/DisplayColor$ColorSeekBar;

    .line 61
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/android/exsettings/livedisplay/DisplayColor;->mCurrentColors:[F

    .line 62
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/android/exsettings/livedisplay/DisplayColor;->mOriginalColors:[F

    .line 67
    iput-object p1, p0, Lcom/android/exsettings/livedisplay/DisplayColor;->mContext:Landroid/content/Context;

    .line 68
    iget-object v0, p0, Lcom/android/exsettings/livedisplay/DisplayColor;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcyanogenmod/hardware/LiveDisplayManager;->getInstance(Landroid/content/Context;)Lcyanogenmod/hardware/LiveDisplayManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/livedisplay/DisplayColor;->mLiveDisplay:Lcyanogenmod/hardware/LiveDisplayManager;

    .line 70
    const v0, 0x7f04005e

    invoke-virtual {p0, v0}, Lcom/android/exsettings/livedisplay/DisplayColor;->setDialogLayoutResource(I)V

    .line 64
    return-void
.end method

.method private updateColors([F)V
    .locals 1
    .param p1, "colors"    # [F

    .prologue
    .line 201
    iget-object v0, p0, Lcom/android/exsettings/livedisplay/DisplayColor;->mLiveDisplay:Lcyanogenmod/hardware/LiveDisplayManager;

    invoke-virtual {v0, p1}, Lcyanogenmod/hardware/LiveDisplayManager;->setColorAdjustment([F)Z

    .line 200
    return-void
.end method


# virtual methods
.method protected onBindDialogView(Landroid/view/View;)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x3

    const/4 v7, 0x0

    .line 85
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onBindDialogView(Landroid/view/View;)V

    .line 87
    iget-object v4, p0, Lcom/android/exsettings/livedisplay/DisplayColor;->mLiveDisplay:Lcyanogenmod/hardware/LiveDisplayManager;

    invoke-virtual {v4}, Lcyanogenmod/hardware/LiveDisplayManager;->getColorAdjustment()[F

    move-result-object v4

    iget-object v5, p0, Lcom/android/exsettings/livedisplay/DisplayColor;->mOriginalColors:[F

    invoke-static {v4, v7, v5, v7, v6}, Ljava/lang/System;->arraycopy([FI[FII)V

    .line 88
    iget-object v4, p0, Lcom/android/exsettings/livedisplay/DisplayColor;->mOriginalColors:[F

    iget-object v5, p0, Lcom/android/exsettings/livedisplay/DisplayColor;->mCurrentColors:[F

    invoke-static {v4, v7, v5, v7, v6}, Ljava/lang/System;->arraycopy([FI[FII)V

    .line 90
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v4, Lcom/android/exsettings/livedisplay/DisplayColor;->SEEKBAR_ID:[I

    array-length v4, v4

    if-ge v0, v4, :cond_0

    .line 91
    sget-object v4, Lcom/android/exsettings/livedisplay/DisplayColor;->SEEKBAR_ID:[I

    aget v4, v4, v0

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/exsettings/IntervalSeekBar;

    .line 92
    .local v2, "seekBar":Lcom/android/exsettings/IntervalSeekBar;
    sget-object v4, Lcom/android/exsettings/livedisplay/DisplayColor;->SEEKBAR_VALUE_ID:[I

    aget v4, v4, v0

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 93
    .local v3, "value":Landroid/widget/TextView;
    iget-object v4, p0, Lcom/android/exsettings/livedisplay/DisplayColor;->mSeekBars:[Lcom/android/exsettings/livedisplay/DisplayColor$ColorSeekBar;

    new-instance v5, Lcom/android/exsettings/livedisplay/DisplayColor$ColorSeekBar;

    invoke-direct {v5, p0, v2, v3, v0}, Lcom/android/exsettings/livedisplay/DisplayColor$ColorSeekBar;-><init>(Lcom/android/exsettings/livedisplay/DisplayColor;Lcom/android/exsettings/IntervalSeekBar;Landroid/widget/TextView;I)V

    aput-object v5, v4, v0

    .line 94
    iget-object v4, p0, Lcom/android/exsettings/livedisplay/DisplayColor;->mSeekBars:[Lcom/android/exsettings/livedisplay/DisplayColor$ColorSeekBar;

    aget-object v4, v4, v0

    invoke-static {v4}, Lcom/android/exsettings/livedisplay/DisplayColor$ColorSeekBar;->-get0(Lcom/android/exsettings/livedisplay/DisplayColor$ColorSeekBar;)Lcom/android/exsettings/IntervalSeekBar;

    move-result-object v4

    const v5, 0x3dcccccd    # 0.1f

    invoke-virtual {v4, v5}, Lcom/android/exsettings/IntervalSeekBar;->setMinimum(F)V

    .line 95
    iget-object v4, p0, Lcom/android/exsettings/livedisplay/DisplayColor;->mSeekBars:[Lcom/android/exsettings/livedisplay/DisplayColor$ColorSeekBar;

    aget-object v4, v4, v0

    invoke-static {v4}, Lcom/android/exsettings/livedisplay/DisplayColor$ColorSeekBar;->-get0(Lcom/android/exsettings/livedisplay/DisplayColor$ColorSeekBar;)Lcom/android/exsettings/IntervalSeekBar;

    move-result-object v4

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v4, v5}, Lcom/android/exsettings/IntervalSeekBar;->setMaximum(F)V

    .line 97
    iget-object v4, p0, Lcom/android/exsettings/livedisplay/DisplayColor;->mSeekBars:[Lcom/android/exsettings/livedisplay/DisplayColor$ColorSeekBar;

    aget-object v4, v4, v0

    invoke-static {v4}, Lcom/android/exsettings/livedisplay/DisplayColor$ColorSeekBar;->-get0(Lcom/android/exsettings/livedisplay/DisplayColor$ColorSeekBar;)Lcom/android/exsettings/IntervalSeekBar;

    move-result-object v4

    iget-object v5, p0, Lcom/android/exsettings/livedisplay/DisplayColor;->mCurrentColors:[F

    aget v5, v5, v0

    invoke-virtual {v4, v5}, Lcom/android/exsettings/IntervalSeekBar;->setProgressFloat(F)V

    .line 98
    iget-object v4, p0, Lcom/android/exsettings/livedisplay/DisplayColor;->mCurrentColors:[F

    aget v4, v4, v0

    const/high16 v5, 0x42c80000    # 100.0f

    mul-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 99
    .local v1, "percent":I
    const-string/jumbo v4, "%d%%"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 84
    .end local v1    # "percent":I
    .end local v2    # "seekBar":Lcom/android/exsettings/IntervalSeekBar;
    .end local v3    # "value":Landroid/widget/TextView;
    :cond_0
    return-void
.end method

.method protected onDialogClosed(Z)V
    .locals 1
    .param p1, "positiveResult"    # Z

    .prologue
    .line 125
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onDialogClosed(Z)V

    .line 126
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/exsettings/livedisplay/DisplayColor;->mCurrentColors:[F

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/exsettings/livedisplay/DisplayColor;->updateColors([F)V

    .line 124
    return-void

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/android/exsettings/livedisplay/DisplayColor;->mOriginalColors:[F

    goto :goto_0
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 2
    .param p1, "builder"    # Landroid/app/AlertDialog$Builder;

    .prologue
    .line 76
    new-instance v0, Lcom/android/exsettings/livedisplay/DisplayColor$1;

    invoke-direct {v0, p0}, Lcom/android/exsettings/livedisplay/DisplayColor$1;-><init>(Lcom/android/exsettings/livedisplay/DisplayColor;)V

    .line 75
    const v1, 0x7f0c0086

    invoke-virtual {p1, v1, v0}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 74
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 6
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x0

    .line 149
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/android/exsettings/livedisplay/DisplayColor$SavedState;

    invoke-virtual {v2, v3}, Ljava/lang/Class;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v1, p1

    .line 155
    check-cast v1, Lcom/android/exsettings/livedisplay/DisplayColor$SavedState;

    .line 156
    .local v1, "myState":Lcom/android/exsettings/livedisplay/DisplayColor$SavedState;
    invoke-virtual {v1}, Lcom/android/exsettings/livedisplay/DisplayColor$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-super {p0, v2}, Landroid/preference/DialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 158
    iget-object v2, v1, Lcom/android/exsettings/livedisplay/DisplayColor$SavedState;->originalColors:[F

    iget-object v3, p0, Lcom/android/exsettings/livedisplay/DisplayColor;->mOriginalColors:[F

    invoke-static {v2, v4, v3, v4, v5}, Ljava/lang/System;->arraycopy([FI[FII)V

    .line 159
    iget-object v2, v1, Lcom/android/exsettings/livedisplay/DisplayColor$SavedState;->currentColors:[F

    iget-object v3, p0, Lcom/android/exsettings/livedisplay/DisplayColor;->mCurrentColors:[F

    invoke-static {v2, v4, v3, v4, v5}, Ljava/lang/System;->arraycopy([FI[FII)V

    .line 160
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/exsettings/livedisplay/DisplayColor;->mSeekBars:[Lcom/android/exsettings/livedisplay/DisplayColor$ColorSeekBar;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 161
    iget-object v2, p0, Lcom/android/exsettings/livedisplay/DisplayColor;->mSeekBars:[Lcom/android/exsettings/livedisplay/DisplayColor$ColorSeekBar;

    aget-object v2, v2, v0

    invoke-static {v2}, Lcom/android/exsettings/livedisplay/DisplayColor$ColorSeekBar;->-get0(Lcom/android/exsettings/livedisplay/DisplayColor$ColorSeekBar;)Lcom/android/exsettings/IntervalSeekBar;

    move-result-object v2

    iget-object v3, p0, Lcom/android/exsettings/livedisplay/DisplayColor;->mCurrentColors:[F

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Lcom/android/exsettings/IntervalSeekBar;->setProgressFloat(F)V

    .line 160
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 151
    .end local v0    # "i":I
    .end local v1    # "myState":Lcom/android/exsettings/livedisplay/DisplayColor$SavedState;
    :cond_0
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 152
    return-void

    .line 163
    .restart local v0    # "i":I
    .restart local v1    # "myState":Lcom/android/exsettings/livedisplay/DisplayColor$SavedState;
    :cond_1
    iget-object v2, p0, Lcom/android/exsettings/livedisplay/DisplayColor;->mCurrentColors:[F

    invoke-direct {p0, v2}, Lcom/android/exsettings/livedisplay/DisplayColor;->updateColors([F)V

    .line 148
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 131
    invoke-super {p0}, Landroid/preference/DialogPreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 132
    .local v1, "superState":Landroid/os/Parcelable;
    invoke-virtual {p0}, Lcom/android/exsettings/livedisplay/DisplayColor;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/exsettings/livedisplay/DisplayColor;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 137
    new-instance v0, Lcom/android/exsettings/livedisplay/DisplayColor$SavedState;

    invoke-direct {v0, v1}, Lcom/android/exsettings/livedisplay/DisplayColor$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 138
    .local v0, "myState":Lcom/android/exsettings/livedisplay/DisplayColor$SavedState;
    iget-object v2, p0, Lcom/android/exsettings/livedisplay/DisplayColor;->mCurrentColors:[F

    iput-object v2, v0, Lcom/android/exsettings/livedisplay/DisplayColor$SavedState;->currentColors:[F

    .line 139
    iget-object v2, p0, Lcom/android/exsettings/livedisplay/DisplayColor;->mOriginalColors:[F

    iput-object v2, v0, Lcom/android/exsettings/livedisplay/DisplayColor$SavedState;->originalColors:[F

    .line 142
    iget-object v2, p0, Lcom/android/exsettings/livedisplay/DisplayColor;->mOriginalColors:[F

    invoke-direct {p0, v2}, Lcom/android/exsettings/livedisplay/DisplayColor;->updateColors([F)V

    .line 144
    return-object v0

    .line 133
    .end local v0    # "myState":Lcom/android/exsettings/livedisplay/DisplayColor$SavedState;
    :cond_0
    return-object v1
.end method

.method protected showDialog(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    .line 105
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->showDialog(Landroid/os/Bundle;)V

    .line 109
    invoke-virtual {p0}, Lcom/android/exsettings/livedisplay/DisplayColor;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    check-cast v0, Landroid/app/AlertDialog;

    .line 110
    .local v0, "d":Landroid/app/AlertDialog;
    const/4 v2, -0x3

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    .line 111
    .local v1, "defaultsButton":Landroid/widget/Button;
    new-instance v2, Lcom/android/exsettings/livedisplay/DisplayColor$2;

    invoke-direct {v2, p0}, Lcom/android/exsettings/livedisplay/DisplayColor$2;-><init>(Lcom/android/exsettings/livedisplay/DisplayColor;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    return-void
.end method
