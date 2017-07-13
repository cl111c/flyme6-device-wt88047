.class public Lcom/android/exsettings/deviceinfo/StorageSummaryPreference;
.super Landroid/preference/Preference;
.source "StorageSummaryPreference.java"


# instance fields
.field private mPercent:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 30
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/exsettings/deviceinfo/StorageSummaryPreference;->mPercent:I

    .line 35
    const v0, 0x7f040119

    invoke-virtual {p0, v0}, Lcom/android/exsettings/deviceinfo/StorageSummaryPreference;->setLayoutResource(I)V

    .line 36
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/exsettings/deviceinfo/StorageSummaryPreference;->setEnabled(Z)V

    .line 32
    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/android/exsettings/deviceinfo/StorageSummaryPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 46
    .local v1, "res":Landroid/content/res/Resources;
    const v3, 0x102000d

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    .line 47
    .local v0, "progress":Landroid/widget/ProgressBar;
    iget v3, p0, Lcom/android/exsettings/deviceinfo/StorageSummaryPreference;->mPercent:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 48
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 49
    iget v3, p0, Lcom/android/exsettings/deviceinfo/StorageSummaryPreference;->mPercent:I

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 54
    :goto_0
    const v3, 0x1020010

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 55
    .local v2, "summary":Landroid/widget/TextView;
    const v3, 0x7f0e0034

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 57
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 44
    return-void

    .line 51
    .end local v2    # "summary":Landroid/widget/TextView;
    :cond_0
    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0
.end method

.method public setPercent(I)V
    .locals 0
    .param p1, "percent"    # I

    .prologue
    .line 40
    iput p1, p0, Lcom/android/exsettings/deviceinfo/StorageSummaryPreference;->mPercent:I

    .line 39
    return-void
.end method
