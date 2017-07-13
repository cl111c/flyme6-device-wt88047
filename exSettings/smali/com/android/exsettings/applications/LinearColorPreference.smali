.class public Lcom/android/exsettings/applications/LinearColorPreference;
.super Landroid/preference/Preference;
.source "LinearColorPreference.java"


# instance fields
.field mColoredRegions:I

.field mGreenColor:I

.field mGreenRatio:F

.field mOnRegionTappedListener:Lcom/android/exsettings/applications/LinearColorBar$OnRegionTappedListener;

.field mRedColor:I

.field mRedRatio:F

.field mYellowColor:I

.field mYellowRatio:F


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 65
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 68
    const v1, 0x7f130198

    .line 67
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/exsettings/applications/LinearColorBar;

    .line 69
    .local v0, "colors":Lcom/android/exsettings/applications/LinearColorBar;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/exsettings/applications/LinearColorBar;->setShowIndicator(Z)V

    .line 70
    iget v1, p0, Lcom/android/exsettings/applications/LinearColorPreference;->mRedColor:I

    iget v2, p0, Lcom/android/exsettings/applications/LinearColorPreference;->mYellowColor:I

    iget v3, p0, Lcom/android/exsettings/applications/LinearColorPreference;->mGreenColor:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/exsettings/applications/LinearColorBar;->setColors(III)V

    .line 71
    iget v1, p0, Lcom/android/exsettings/applications/LinearColorPreference;->mRedRatio:F

    iget v2, p0, Lcom/android/exsettings/applications/LinearColorPreference;->mYellowRatio:F

    iget v3, p0, Lcom/android/exsettings/applications/LinearColorPreference;->mGreenRatio:F

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/exsettings/applications/LinearColorBar;->setRatios(FFF)V

    .line 72
    iget v1, p0, Lcom/android/exsettings/applications/LinearColorPreference;->mColoredRegions:I

    invoke-virtual {v0, v1}, Lcom/android/exsettings/applications/LinearColorBar;->setColoredRegions(I)V

    .line 73
    iget-object v1, p0, Lcom/android/exsettings/applications/LinearColorPreference;->mOnRegionTappedListener:Lcom/android/exsettings/applications/LinearColorBar$OnRegionTappedListener;

    invoke-virtual {v0, v1}, Lcom/android/exsettings/applications/LinearColorBar;->setOnRegionTappedListener(Lcom/android/exsettings/applications/LinearColorBar$OnRegionTappedListener;)V

    .line 64
    return-void
.end method
