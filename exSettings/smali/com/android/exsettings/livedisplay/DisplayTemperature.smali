.class public Lcom/android/exsettings/livedisplay/DisplayTemperature;
.super Landroid/preference/DialogPreference;
.source "DisplayTemperature.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exsettings/livedisplay/DisplayTemperature$SavedState;,
        Lcom/android/exsettings/livedisplay/DisplayTemperature$ColorTemperatureSeekBar;
    }
.end annotation


# instance fields
.field private final mConfig:Lcyanogenmod/hardware/LiveDisplayConfig;

.field private final mContext:Landroid/content/Context;

.field private mDayTemperature:Lcom/android/exsettings/livedisplay/DisplayTemperature$ColorTemperatureSeekBar;

.field private final mLiveDisplay:Lcyanogenmod/hardware/LiveDisplayManager;

.field private mNightTemperature:Lcom/android/exsettings/livedisplay/DisplayTemperature$ColorTemperatureSeekBar;

.field private mOriginalDayTemperature:I

.field private mOriginalNightTemperature:I


# direct methods
.method static synthetic -get0(Lcom/android/exsettings/livedisplay/DisplayTemperature;)Lcyanogenmod/hardware/LiveDisplayConfig;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/livedisplay/DisplayTemperature;->mConfig:Lcyanogenmod/hardware/LiveDisplayConfig;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/exsettings/livedisplay/DisplayTemperature;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/livedisplay/DisplayTemperature;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/exsettings/livedisplay/DisplayTemperature;)Lcom/android/exsettings/livedisplay/DisplayTemperature$ColorTemperatureSeekBar;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/livedisplay/DisplayTemperature;->mDayTemperature:Lcom/android/exsettings/livedisplay/DisplayTemperature$ColorTemperatureSeekBar;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/exsettings/livedisplay/DisplayTemperature;)Lcom/android/exsettings/livedisplay/DisplayTemperature$ColorTemperatureSeekBar;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/livedisplay/DisplayTemperature;->mNightTemperature:Lcom/android/exsettings/livedisplay/DisplayTemperature$ColorTemperatureSeekBar;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/exsettings/livedisplay/DisplayTemperature;Z)V
    .locals 0
    .param p1, "accept"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/exsettings/livedisplay/DisplayTemperature;->updateTemperature(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 61
    iput-object p1, p0, Lcom/android/exsettings/livedisplay/DisplayTemperature;->mContext:Landroid/content/Context;

    .line 62
    iget-object v0, p0, Lcom/android/exsettings/livedisplay/DisplayTemperature;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcyanogenmod/hardware/LiveDisplayManager;->getInstance(Landroid/content/Context;)Lcyanogenmod/hardware/LiveDisplayManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/livedisplay/DisplayTemperature;->mLiveDisplay:Lcyanogenmod/hardware/LiveDisplayManager;

    .line 63
    iget-object v0, p0, Lcom/android/exsettings/livedisplay/DisplayTemperature;->mLiveDisplay:Lcyanogenmod/hardware/LiveDisplayManager;

    invoke-virtual {v0}, Lcyanogenmod/hardware/LiveDisplayManager;->getConfig()Lcyanogenmod/hardware/LiveDisplayConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/livedisplay/DisplayTemperature;->mConfig:Lcyanogenmod/hardware/LiveDisplayConfig;

    .line 65
    const v0, 0x7f040062

    invoke-virtual {p0, v0}, Lcom/android/exsettings/livedisplay/DisplayTemperature;->setDialogLayoutResource(I)V

    .line 59
    return-void
.end method

.method private updateTemperature(Z)V
    .locals 5
    .param p1, "accept"    # Z

    .prologue
    .line 201
    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/android/exsettings/livedisplay/DisplayTemperature;->mDayTemperature:Lcom/android/exsettings/livedisplay/DisplayTemperature$ColorTemperatureSeekBar;

    invoke-virtual {v2}, Lcom/android/exsettings/livedisplay/DisplayTemperature$ColorTemperatureSeekBar;->getTemperature()I

    move-result v0

    .line 202
    .local v0, "day":I
    :goto_0
    if-eqz p1, :cond_1

    iget-object v2, p0, Lcom/android/exsettings/livedisplay/DisplayTemperature;->mNightTemperature:Lcom/android/exsettings/livedisplay/DisplayTemperature$ColorTemperatureSeekBar;

    invoke-virtual {v2}, Lcom/android/exsettings/livedisplay/DisplayTemperature$ColorTemperatureSeekBar;->getTemperature()I

    move-result v1

    .line 203
    .local v1, "night":I
    :goto_1
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Integer;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-virtual {p0, v2}, Lcom/android/exsettings/livedisplay/DisplayTemperature;->callChangeListener(Ljava/lang/Object;)Z

    .line 205
    iget-object v2, p0, Lcom/android/exsettings/livedisplay/DisplayTemperature;->mLiveDisplay:Lcyanogenmod/hardware/LiveDisplayManager;

    invoke-virtual {v2, v0}, Lcyanogenmod/hardware/LiveDisplayManager;->setDayColorTemperature(I)Z

    .line 206
    iget-object v2, p0, Lcom/android/exsettings/livedisplay/DisplayTemperature;->mLiveDisplay:Lcyanogenmod/hardware/LiveDisplayManager;

    invoke-virtual {v2, v1}, Lcyanogenmod/hardware/LiveDisplayManager;->setNightColorTemperature(I)Z

    .line 200
    return-void

    .line 201
    .end local v0    # "day":I
    .end local v1    # "night":I
    :cond_0
    iget v0, p0, Lcom/android/exsettings/livedisplay/DisplayTemperature;->mOriginalDayTemperature:I

    .restart local v0    # "day":I
    goto :goto_0

    .line 202
    :cond_1
    iget v1, p0, Lcom/android/exsettings/livedisplay/DisplayTemperature;->mOriginalNightTemperature:I

    .restart local v1    # "night":I
    goto :goto_1
.end method


# virtual methods
.method protected onBindDialogView(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 80
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onBindDialogView(Landroid/view/View;)V

    .line 82
    iget-object v4, p0, Lcom/android/exsettings/livedisplay/DisplayTemperature;->mLiveDisplay:Lcyanogenmod/hardware/LiveDisplayManager;

    invoke-virtual {v4}, Lcyanogenmod/hardware/LiveDisplayManager;->getDayColorTemperature()I

    move-result v4

    iput v4, p0, Lcom/android/exsettings/livedisplay/DisplayTemperature;->mOriginalDayTemperature:I

    .line 83
    iget-object v4, p0, Lcom/android/exsettings/livedisplay/DisplayTemperature;->mLiveDisplay:Lcyanogenmod/hardware/LiveDisplayManager;

    invoke-virtual {v4}, Lcyanogenmod/hardware/LiveDisplayManager;->getNightColorTemperature()I

    move-result v4

    iput v4, p0, Lcom/android/exsettings/livedisplay/DisplayTemperature;->mOriginalNightTemperature:I

    .line 85
    const v4, 0x7f1300f8

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    .line 86
    .local v0, "day":Landroid/widget/SeekBar;
    const v4, 0x7f1300f7

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 87
    .local v1, "dayText":Landroid/widget/TextView;
    new-instance v4, Lcom/android/exsettings/livedisplay/DisplayTemperature$ColorTemperatureSeekBar;

    invoke-direct {v4, p0, v0, v1}, Lcom/android/exsettings/livedisplay/DisplayTemperature$ColorTemperatureSeekBar;-><init>(Lcom/android/exsettings/livedisplay/DisplayTemperature;Landroid/widget/SeekBar;Landroid/widget/TextView;)V

    iput-object v4, p0, Lcom/android/exsettings/livedisplay/DisplayTemperature;->mDayTemperature:Lcom/android/exsettings/livedisplay/DisplayTemperature$ColorTemperatureSeekBar;

    .line 89
    const v4, 0x7f1300fb

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/SeekBar;

    .line 90
    .local v2, "night":Landroid/widget/SeekBar;
    const v4, 0x7f1300fa

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 91
    .local v3, "nightText":Landroid/widget/TextView;
    new-instance v4, Lcom/android/exsettings/livedisplay/DisplayTemperature$ColorTemperatureSeekBar;

    invoke-direct {v4, p0, v2, v3}, Lcom/android/exsettings/livedisplay/DisplayTemperature$ColorTemperatureSeekBar;-><init>(Lcom/android/exsettings/livedisplay/DisplayTemperature;Landroid/widget/SeekBar;Landroid/widget/TextView;)V

    iput-object v4, p0, Lcom/android/exsettings/livedisplay/DisplayTemperature;->mNightTemperature:Lcom/android/exsettings/livedisplay/DisplayTemperature$ColorTemperatureSeekBar;

    .line 93
    iget-object v4, p0, Lcom/android/exsettings/livedisplay/DisplayTemperature;->mDayTemperature:Lcom/android/exsettings/livedisplay/DisplayTemperature$ColorTemperatureSeekBar;

    iget v5, p0, Lcom/android/exsettings/livedisplay/DisplayTemperature;->mOriginalDayTemperature:I

    invoke-virtual {v4, v5}, Lcom/android/exsettings/livedisplay/DisplayTemperature$ColorTemperatureSeekBar;->setTemperature(I)V

    .line 94
    iget-object v4, p0, Lcom/android/exsettings/livedisplay/DisplayTemperature;->mNightTemperature:Lcom/android/exsettings/livedisplay/DisplayTemperature$ColorTemperatureSeekBar;

    iget v5, p0, Lcom/android/exsettings/livedisplay/DisplayTemperature;->mOriginalNightTemperature:I

    invoke-virtual {v4, v5}, Lcom/android/exsettings/livedisplay/DisplayTemperature$ColorTemperatureSeekBar;->setTemperature(I)V

    .line 79
    return-void
.end method

.method protected onDialogClosed(Z)V
    .locals 0
    .param p1, "positiveResult"    # Z

    .prologue
    .line 117
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onDialogClosed(Z)V

    .line 118
    invoke-direct {p0, p1}, Lcom/android/exsettings/livedisplay/DisplayTemperature;->updateTemperature(Z)V

    .line 116
    return-void
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 2
    .param p1, "builder"    # Landroid/app/AlertDialog$Builder;

    .prologue
    .line 71
    new-instance v0, Lcom/android/exsettings/livedisplay/DisplayTemperature$1;

    invoke-direct {v0, p0}, Lcom/android/exsettings/livedisplay/DisplayTemperature$1;-><init>(Lcom/android/exsettings/livedisplay/DisplayTemperature;)V

    .line 70
    const v1, 0x7f0c0086

    invoke-virtual {p1, v1, v0}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 69
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 143
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/android/exsettings/livedisplay/DisplayTemperature$SavedState;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 149
    check-cast v0, Lcom/android/exsettings/livedisplay/DisplayTemperature$SavedState;

    .line 150
    .local v0, "myState":Lcom/android/exsettings/livedisplay/DisplayTemperature$SavedState;
    invoke-virtual {v0}, Lcom/android/exsettings/livedisplay/DisplayTemperature$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/preference/DialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 152
    iget v1, v0, Lcom/android/exsettings/livedisplay/DisplayTemperature$SavedState;->originalDayTemperature:I

    iput v1, p0, Lcom/android/exsettings/livedisplay/DisplayTemperature;->mOriginalDayTemperature:I

    .line 153
    iget v1, v0, Lcom/android/exsettings/livedisplay/DisplayTemperature$SavedState;->originalNightTemperature:I

    iput v1, p0, Lcom/android/exsettings/livedisplay/DisplayTemperature;->mOriginalNightTemperature:I

    .line 154
    iget-object v1, p0, Lcom/android/exsettings/livedisplay/DisplayTemperature;->mDayTemperature:Lcom/android/exsettings/livedisplay/DisplayTemperature$ColorTemperatureSeekBar;

    iget v2, v0, Lcom/android/exsettings/livedisplay/DisplayTemperature$SavedState;->currentDayTemperature:I

    invoke-virtual {v1, v2}, Lcom/android/exsettings/livedisplay/DisplayTemperature$ColorTemperatureSeekBar;->setTemperature(I)V

    .line 155
    iget-object v1, p0, Lcom/android/exsettings/livedisplay/DisplayTemperature;->mNightTemperature:Lcom/android/exsettings/livedisplay/DisplayTemperature$ColorTemperatureSeekBar;

    iget v2, v0, Lcom/android/exsettings/livedisplay/DisplayTemperature$SavedState;->currentNightTemperature:I

    invoke-virtual {v1, v2}, Lcom/android/exsettings/livedisplay/DisplayTemperature$ColorTemperatureSeekBar;->setTemperature(I)V

    .line 157
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/exsettings/livedisplay/DisplayTemperature;->updateTemperature(Z)V

    .line 142
    return-void

    .line 145
    .end local v0    # "myState":Lcom/android/exsettings/livedisplay/DisplayTemperature$SavedState;
    :cond_0
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 146
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 123
    invoke-super {p0}, Landroid/preference/DialogPreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 124
    .local v1, "superState":Landroid/os/Parcelable;
    invoke-virtual {p0}, Lcom/android/exsettings/livedisplay/DisplayTemperature;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/exsettings/livedisplay/DisplayTemperature;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 129
    new-instance v0, Lcom/android/exsettings/livedisplay/DisplayTemperature$SavedState;

    invoke-direct {v0, v1}, Lcom/android/exsettings/livedisplay/DisplayTemperature$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 130
    .local v0, "myState":Lcom/android/exsettings/livedisplay/DisplayTemperature$SavedState;
    iget v2, p0, Lcom/android/exsettings/livedisplay/DisplayTemperature;->mOriginalDayTemperature:I

    iput v2, v0, Lcom/android/exsettings/livedisplay/DisplayTemperature$SavedState;->originalDayTemperature:I

    .line 131
    iget v2, p0, Lcom/android/exsettings/livedisplay/DisplayTemperature;->mOriginalNightTemperature:I

    iput v2, v0, Lcom/android/exsettings/livedisplay/DisplayTemperature$SavedState;->originalNightTemperature:I

    .line 132
    iget-object v2, p0, Lcom/android/exsettings/livedisplay/DisplayTemperature;->mDayTemperature:Lcom/android/exsettings/livedisplay/DisplayTemperature$ColorTemperatureSeekBar;

    invoke-virtual {v2}, Lcom/android/exsettings/livedisplay/DisplayTemperature$ColorTemperatureSeekBar;->getTemperature()I

    move-result v2

    iput v2, v0, Lcom/android/exsettings/livedisplay/DisplayTemperature$SavedState;->currentDayTemperature:I

    .line 133
    iget-object v2, p0, Lcom/android/exsettings/livedisplay/DisplayTemperature;->mNightTemperature:Lcom/android/exsettings/livedisplay/DisplayTemperature$ColorTemperatureSeekBar;

    invoke-virtual {v2}, Lcom/android/exsettings/livedisplay/DisplayTemperature$ColorTemperatureSeekBar;->getTemperature()I

    move-result v2

    iput v2, v0, Lcom/android/exsettings/livedisplay/DisplayTemperature$SavedState;->currentNightTemperature:I

    .line 136
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/exsettings/livedisplay/DisplayTemperature;->updateTemperature(Z)V

    .line 138
    return-object v0

    .line 125
    .end local v0    # "myState":Lcom/android/exsettings/livedisplay/DisplayTemperature$SavedState;
    :cond_0
    return-object v1
.end method

.method roundUp(I)I
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 210
    add-int/lit8 v0, p1, 0x32

    div-int/lit8 v0, v0, 0x64

    mul-int/lit8 v0, v0, 0x64

    return v0
.end method

.method protected showDialog(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    .line 99
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->showDialog(Landroid/os/Bundle;)V

    .line 103
    invoke-virtual {p0}, Lcom/android/exsettings/livedisplay/DisplayTemperature;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    check-cast v0, Landroid/app/AlertDialog;

    .line 104
    .local v0, "d":Landroid/app/AlertDialog;
    const/4 v2, -0x3

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    .line 105
    .local v1, "defaultsButton":Landroid/widget/Button;
    new-instance v2, Lcom/android/exsettings/livedisplay/DisplayTemperature$2;

    invoke-direct {v2, p0}, Lcom/android/exsettings/livedisplay/DisplayTemperature$2;-><init>(Lcom/android/exsettings/livedisplay/DisplayTemperature;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    return-void
.end method
