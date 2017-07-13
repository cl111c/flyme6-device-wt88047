.class public Lcom/android/exsettings/AnimationScalePreference;
.super Landroid/preference/DialogPreference;
.source "AnimationScalePreference.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field private mScale:F

.field private mScaleText:Landroid/widget/TextView;

.field private mSeekBar:Lcom/android/exsettings/IntervalSeekBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/exsettings/AnimationScalePreference;->mScale:F

    .line 38
    const v0, 0x104000a

    invoke-virtual {p0, v0}, Lcom/android/exsettings/AnimationScalePreference;->setPositiveButtonText(I)V

    .line 39
    const/high16 v0, 0x1040000

    invoke-virtual {p0, v0}, Lcom/android/exsettings/AnimationScalePreference;->setNegativeButtonText(I)V

    .line 41
    const v0, 0x7f0400b5

    invoke-virtual {p0, v0}, Lcom/android/exsettings/AnimationScalePreference;->setDialogLayoutResource(I)V

    .line 35
    return-void
.end method


# virtual methods
.method public click()V
    .locals 0

    .prologue
    .line 78
    invoke-super {p0}, Landroid/preference/DialogPreference;->onClick()V

    .line 77
    return-void
.end method

.method protected onClick()V
    .locals 0

    .prologue
    .line 73
    return-void
.end method

.method protected onCreateDialogView()Landroid/view/View;
    .locals 5

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/android/exsettings/AnimationScalePreference;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 48
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f0400b4

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 50
    .local v1, "view":Landroid/view/View;
    const v2, 0x7f13017a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/exsettings/AnimationScalePreference;->mScaleText:Landroid/widget/TextView;

    .line 51
    iget-object v2, p0, Lcom/android/exsettings/AnimationScalePreference;->mScaleText:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lcom/android/exsettings/AnimationScalePreference;->mScale:F

    invoke-static {v4}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    const v2, 0x7f13017b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/exsettings/IntervalSeekBar;

    iput-object v2, p0, Lcom/android/exsettings/AnimationScalePreference;->mSeekBar:Lcom/android/exsettings/IntervalSeekBar;

    .line 54
    iget-object v2, p0, Lcom/android/exsettings/AnimationScalePreference;->mSeekBar:Lcom/android/exsettings/IntervalSeekBar;

    iget v3, p0, Lcom/android/exsettings/AnimationScalePreference;->mScale:F

    invoke-virtual {v2, v3}, Lcom/android/exsettings/IntervalSeekBar;->setProgressFloat(F)V

    .line 55
    iget-object v2, p0, Lcom/android/exsettings/AnimationScalePreference;->mSeekBar:Lcom/android/exsettings/IntervalSeekBar;

    invoke-virtual {v2, p0}, Lcom/android/exsettings/IntervalSeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 57
    return-object v1
.end method

.method protected onDialogClosed(Z)V
    .locals 1
    .param p1, "positiveResult"    # Z

    .prologue
    .line 67
    if-eqz p1, :cond_0

    .line 68
    iget-object v0, p0, Lcom/android/exsettings/AnimationScalePreference;->mSeekBar:Lcom/android/exsettings/IntervalSeekBar;

    invoke-virtual {v0}, Lcom/android/exsettings/IntervalSeekBar;->getProgressFloat()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/exsettings/AnimationScalePreference;->callChangeListener(Ljava/lang/Object;)Z

    .line 66
    :cond_0
    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 3
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/exsettings/AnimationScalePreference;->mScaleText:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/exsettings/AnimationScalePreference;->mSeekBar:Lcom/android/exsettings/IntervalSeekBar;

    invoke-virtual {v2}, Lcom/android/exsettings/IntervalSeekBar;->getProgressFloat()F

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 88
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 92
    return-void
.end method

.method public setScale(F)V
    .locals 2
    .param p1, "scale"    # F

    .prologue
    .line 61
    iput p1, p0, Lcom/android/exsettings/AnimationScalePreference;->mScale:F

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/exsettings/AnimationScalePreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 60
    return-void
.end method
