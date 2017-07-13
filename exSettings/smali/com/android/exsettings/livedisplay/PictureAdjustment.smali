.class public Lcom/android/exsettings/livedisplay/PictureAdjustment;
.super Landroid/preference/DialogPreference;
.source "PictureAdjustment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exsettings/livedisplay/PictureAdjustment$SavedState;,
        Lcom/android/exsettings/livedisplay/PictureAdjustment$ColorSeekBar;
    }
.end annotation


# static fields
.field private static final SEEKBAR_ID:[I

.field private static final SEEKBAR_VALUE_ID:[I


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mCurrentAdj:[F

.field private final mLiveDisplay:Lcyanogenmod/hardware/LiveDisplayManager;

.field private final mOriginalAdj:[F

.field private final mRanges:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Float;",
            ">;>;"
        }
    .end annotation
.end field

.field private mSeekBars:[Lcom/android/exsettings/livedisplay/PictureAdjustment$ColorSeekBar;


# direct methods
.method static synthetic -get0(Lcom/android/exsettings/livedisplay/PictureAdjustment;)[F
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/livedisplay/PictureAdjustment;->mCurrentAdj:[F

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/exsettings/livedisplay/PictureAdjustment;)Lcyanogenmod/hardware/LiveDisplayManager;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/livedisplay/PictureAdjustment;->mLiveDisplay:Lcyanogenmod/hardware/LiveDisplayManager;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/exsettings/livedisplay/PictureAdjustment;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/livedisplay/PictureAdjustment;->mRanges:Ljava/util/List;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/exsettings/livedisplay/PictureAdjustment;[F)V
    .locals 0
    .param p1, "adjustment"    # [F

    .prologue
    invoke-direct {p0, p1}, Lcom/android/exsettings/livedisplay/PictureAdjustment;->updateAdjustment([F)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/exsettings/livedisplay/PictureAdjustment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/exsettings/livedisplay/PictureAdjustment;->updateBars()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 53
    const v0, 0x7f1300eb

    .line 54
    const v1, 0x7f1300ee

    .line 55
    const v2, 0x7f1300f1

    .line 56
    const v3, 0x7f1300f4

    .line 52
    filled-new-array {v0, v1, v2, v3}, [I

    move-result-object v0

    sput-object v0, Lcom/android/exsettings/livedisplay/PictureAdjustment;->SEEKBAR_ID:[I

    .line 60
    const v0, 0x7f1300ea

    .line 61
    const v1, 0x7f1300ed

    .line 62
    const v2, 0x7f1300f0

    .line 63
    const v3, 0x7f1300f3

    .line 59
    filled-new-array {v0, v1, v2, v3}, [I

    move-result-object v0

    sput-object v0, Lcom/android/exsettings/livedisplay/PictureAdjustment;->SEEKBAR_VALUE_ID:[I

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x5

    .line 72
    invoke-direct {p0, p1, p2}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 66
    sget-object v0, Lcom/android/exsettings/livedisplay/PictureAdjustment;->SEEKBAR_ID:[I

    array-length v0, v0

    new-array v0, v0, [Lcom/android/exsettings/livedisplay/PictureAdjustment$ColorSeekBar;

    iput-object v0, p0, Lcom/android/exsettings/livedisplay/PictureAdjustment;->mSeekBars:[Lcom/android/exsettings/livedisplay/PictureAdjustment$ColorSeekBar;

    .line 68
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/android/exsettings/livedisplay/PictureAdjustment;->mCurrentAdj:[F

    .line 69
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/android/exsettings/livedisplay/PictureAdjustment;->mOriginalAdj:[F

    .line 74
    iput-object p1, p0, Lcom/android/exsettings/livedisplay/PictureAdjustment;->mContext:Landroid/content/Context;

    .line 75
    iget-object v0, p0, Lcom/android/exsettings/livedisplay/PictureAdjustment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcyanogenmod/hardware/LiveDisplayManager;->getInstance(Landroid/content/Context;)Lcyanogenmod/hardware/LiveDisplayManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/livedisplay/PictureAdjustment;->mLiveDisplay:Lcyanogenmod/hardware/LiveDisplayManager;

    .line 76
    iget-object v0, p0, Lcom/android/exsettings/livedisplay/PictureAdjustment;->mLiveDisplay:Lcyanogenmod/hardware/LiveDisplayManager;

    invoke-virtual {v0}, Lcyanogenmod/hardware/LiveDisplayManager;->getConfig()Lcyanogenmod/hardware/LiveDisplayConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcyanogenmod/hardware/LiveDisplayConfig;->getPictureAdjustmentRanges()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/livedisplay/PictureAdjustment;->mRanges:Ljava/util/List;

    .line 78
    const v0, 0x7f040061

    invoke-virtual {p0, v0}, Lcom/android/exsettings/livedisplay/PictureAdjustment;->setDialogLayoutResource(I)V

    .line 71
    return-void
.end method

.method private updateAdjustment([F)V
    .locals 2
    .param p1, "adjustment"    # [F

    .prologue
    .line 209
    iget-object v0, p0, Lcom/android/exsettings/livedisplay/PictureAdjustment;->mLiveDisplay:Lcyanogenmod/hardware/LiveDisplayManager;

    invoke-static {p1}, Lcyanogenmod/hardware/HSIC;->fromFloatArray([F)Lcyanogenmod/hardware/HSIC;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcyanogenmod/hardware/LiveDisplayManager;->setPictureAdjustment(Lcyanogenmod/hardware/HSIC;)Z

    .line 208
    return-void
.end method

.method private updateBars()V
    .locals 3

    .prologue
    .line 92
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/android/exsettings/livedisplay/PictureAdjustment;->SEEKBAR_ID:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 93
    iget-object v1, p0, Lcom/android/exsettings/livedisplay/PictureAdjustment;->mSeekBars:[Lcom/android/exsettings/livedisplay/PictureAdjustment$ColorSeekBar;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/android/exsettings/livedisplay/PictureAdjustment;->mCurrentAdj:[F

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Lcom/android/exsettings/livedisplay/PictureAdjustment$ColorSeekBar;->setValue(F)V

    .line 92
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 91
    :cond_0
    return-void
.end method


# virtual methods
.method protected onBindDialogView(Landroid/view/View;)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x0

    .line 99
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onBindDialogView(Landroid/view/View;)V

    .line 101
    iget-object v0, p0, Lcom/android/exsettings/livedisplay/PictureAdjustment;->mLiveDisplay:Lcyanogenmod/hardware/LiveDisplayManager;

    invoke-virtual {v0}, Lcyanogenmod/hardware/LiveDisplayManager;->getPictureAdjustment()Lcyanogenmod/hardware/HSIC;

    move-result-object v0

    invoke-virtual {v0}, Lcyanogenmod/hardware/HSIC;->toFloatArray()[F

    move-result-object v0

    iget-object v1, p0, Lcom/android/exsettings/livedisplay/PictureAdjustment;->mOriginalAdj:[F

    invoke-static {v0, v6, v1, v6, v7}, Ljava/lang/System;->arraycopy([FI[FII)V

    .line 102
    iget-object v0, p0, Lcom/android/exsettings/livedisplay/PictureAdjustment;->mOriginalAdj:[F

    iget-object v1, p0, Lcom/android/exsettings/livedisplay/PictureAdjustment;->mCurrentAdj:[F

    invoke-static {v0, v6, v1, v6, v7}, Ljava/lang/System;->arraycopy([FI[FII)V

    .line 104
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    sget-object v0, Lcom/android/exsettings/livedisplay/PictureAdjustment;->SEEKBAR_ID:[I

    array-length v0, v0

    if-ge v5, v0, :cond_0

    .line 105
    sget-object v0, Lcom/android/exsettings/livedisplay/PictureAdjustment;->SEEKBAR_ID:[I

    aget v0, v0, v5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/exsettings/IntervalSeekBar;

    .line 106
    .local v2, "seekBar":Lcom/android/exsettings/IntervalSeekBar;
    sget-object v0, Lcom/android/exsettings/livedisplay/PictureAdjustment;->SEEKBAR_VALUE_ID:[I

    aget v0, v0, v5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 107
    .local v4, "value":Landroid/widget/TextView;
    iget-object v0, p0, Lcom/android/exsettings/livedisplay/PictureAdjustment;->mRanges:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Range;

    .line 108
    .local v3, "range":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Float;>;"
    iget-object v6, p0, Lcom/android/exsettings/livedisplay/PictureAdjustment;->mSeekBars:[Lcom/android/exsettings/livedisplay/PictureAdjustment$ColorSeekBar;

    new-instance v0, Lcom/android/exsettings/livedisplay/PictureAdjustment$ColorSeekBar;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/exsettings/livedisplay/PictureAdjustment$ColorSeekBar;-><init>(Lcom/android/exsettings/livedisplay/PictureAdjustment;Lcom/android/exsettings/IntervalSeekBar;Landroid/util/Range;Landroid/widget/TextView;I)V

    aput-object v0, v6, v5

    .line 104
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 110
    .end local v2    # "seekBar":Lcom/android/exsettings/IntervalSeekBar;
    .end local v3    # "range":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Float;>;"
    .end local v4    # "value":Landroid/widget/TextView;
    :cond_0
    invoke-direct {p0}, Lcom/android/exsettings/livedisplay/PictureAdjustment;->updateBars()V

    .line 98
    return-void
.end method

.method protected onDialogClosed(Z)V
    .locals 1
    .param p1, "positiveResult"    # Z

    .prologue
    .line 134
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onDialogClosed(Z)V

    .line 135
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/exsettings/livedisplay/PictureAdjustment;->mCurrentAdj:[F

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/exsettings/livedisplay/PictureAdjustment;->updateAdjustment([F)V

    .line 133
    return-void

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/android/exsettings/livedisplay/PictureAdjustment;->mOriginalAdj:[F

    goto :goto_0
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 2
    .param p1, "builder"    # Landroid/app/AlertDialog$Builder;

    .prologue
    .line 84
    new-instance v0, Lcom/android/exsettings/livedisplay/PictureAdjustment$1;

    invoke-direct {v0, p0}, Lcom/android/exsettings/livedisplay/PictureAdjustment$1;-><init>(Lcom/android/exsettings/livedisplay/PictureAdjustment;)V

    .line 83
    const v1, 0x7f0c0086

    invoke-virtual {p1, v1, v0}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 82
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 5
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    const/4 v4, 0x5

    const/4 v3, 0x0

    .line 158
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/android/exsettings/livedisplay/PictureAdjustment$SavedState;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 164
    check-cast v0, Lcom/android/exsettings/livedisplay/PictureAdjustment$SavedState;

    .line 165
    .local v0, "myState":Lcom/android/exsettings/livedisplay/PictureAdjustment$SavedState;
    invoke-virtual {v0}, Lcom/android/exsettings/livedisplay/PictureAdjustment$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/preference/DialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 167
    iget-object v1, v0, Lcom/android/exsettings/livedisplay/PictureAdjustment$SavedState;->originalAdj:[F

    iget-object v2, p0, Lcom/android/exsettings/livedisplay/PictureAdjustment;->mOriginalAdj:[F

    invoke-static {v1, v3, v2, v3, v4}, Ljava/lang/System;->arraycopy([FI[FII)V

    .line 168
    iget-object v1, v0, Lcom/android/exsettings/livedisplay/PictureAdjustment$SavedState;->currentAdj:[F

    iget-object v2, p0, Lcom/android/exsettings/livedisplay/PictureAdjustment;->mCurrentAdj:[F

    invoke-static {v1, v3, v2, v3, v4}, Ljava/lang/System;->arraycopy([FI[FII)V

    .line 170
    invoke-direct {p0}, Lcom/android/exsettings/livedisplay/PictureAdjustment;->updateBars()V

    .line 171
    iget-object v1, p0, Lcom/android/exsettings/livedisplay/PictureAdjustment;->mCurrentAdj:[F

    invoke-direct {p0, v1}, Lcom/android/exsettings/livedisplay/PictureAdjustment;->updateAdjustment([F)V

    .line 157
    return-void

    .line 160
    .end local v0    # "myState":Lcom/android/exsettings/livedisplay/PictureAdjustment$SavedState;
    :cond_0
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 161
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 140
    invoke-super {p0}, Landroid/preference/DialogPreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 141
    .local v1, "superState":Landroid/os/Parcelable;
    invoke-virtual {p0}, Lcom/android/exsettings/livedisplay/PictureAdjustment;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/exsettings/livedisplay/PictureAdjustment;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 146
    new-instance v0, Lcom/android/exsettings/livedisplay/PictureAdjustment$SavedState;

    invoke-direct {v0, v1}, Lcom/android/exsettings/livedisplay/PictureAdjustment$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 147
    .local v0, "myState":Lcom/android/exsettings/livedisplay/PictureAdjustment$SavedState;
    iget-object v2, p0, Lcom/android/exsettings/livedisplay/PictureAdjustment;->mCurrentAdj:[F

    iput-object v2, v0, Lcom/android/exsettings/livedisplay/PictureAdjustment$SavedState;->currentAdj:[F

    .line 148
    iget-object v2, p0, Lcom/android/exsettings/livedisplay/PictureAdjustment;->mOriginalAdj:[F

    iput-object v2, v0, Lcom/android/exsettings/livedisplay/PictureAdjustment$SavedState;->originalAdj:[F

    .line 151
    iget-object v2, p0, Lcom/android/exsettings/livedisplay/PictureAdjustment;->mOriginalAdj:[F

    invoke-direct {p0, v2}, Lcom/android/exsettings/livedisplay/PictureAdjustment;->updateAdjustment([F)V

    .line 153
    return-object v0

    .line 142
    .end local v0    # "myState":Lcom/android/exsettings/livedisplay/PictureAdjustment$SavedState;
    :cond_0
    return-object v1
.end method

.method protected showDialog(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    .line 115
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->showDialog(Landroid/os/Bundle;)V

    .line 119
    invoke-virtual {p0}, Lcom/android/exsettings/livedisplay/PictureAdjustment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    check-cast v0, Landroid/app/AlertDialog;

    .line 120
    .local v0, "d":Landroid/app/AlertDialog;
    const/4 v2, -0x3

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    .line 121
    .local v1, "defaultsButton":Landroid/widget/Button;
    new-instance v2, Lcom/android/exsettings/livedisplay/PictureAdjustment$2;

    invoke-direct {v2, p0}, Lcom/android/exsettings/livedisplay/PictureAdjustment$2;-><init>(Lcom/android/exsettings/livedisplay/PictureAdjustment;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    return-void
.end method
