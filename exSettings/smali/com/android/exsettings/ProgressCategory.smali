.class public Lcom/android/exsettings/ProgressCategory;
.super Lcom/android/exsettings/ProgressCategoryBase;
.source "ProgressCategory.java"


# instance fields
.field private mEmptyTextRes:I

.field private mNoDeviceFoundAdded:Z

.field private mNoDeviceFoundPreference:Landroid/preference/Preference;

.field private mProgress:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/exsettings/ProgressCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 39
    invoke-direct {p0, p1, p2, v0}, Lcom/android/exsettings/ProgressCategoryBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    iput-boolean v0, p0, Lcom/android/exsettings/ProgressCategory;->mProgress:Z

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 44
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/exsettings/ProgressCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 48
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/exsettings/ProgressCategoryBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/exsettings/ProgressCategory;->mProgress:Z

    .line 49
    const v0, 0x7f0400c7

    invoke-virtual {p0, v0}, Lcom/android/exsettings/ProgressCategory;->setLayoutResource(I)V

    .line 47
    return-void
.end method


# virtual methods
.method public onBindView(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 58
    invoke-super {p0, p1}, Lcom/android/exsettings/ProgressCategoryBase;->onBindView(Landroid/view/View;)V

    .line 59
    const v2, 0x7f1301a1

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 61
    .local v1, "progressBar":Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/exsettings/ProgressCategory;->getPreferenceCount()I

    move-result v2

    if-eqz v2, :cond_2

    .line 62
    invoke-virtual {p0}, Lcom/android/exsettings/ProgressCategory;->getPreferenceCount()I

    move-result v2

    if-ne v2, v5, :cond_3

    invoke-virtual {p0, v3}, Lcom/android/exsettings/ProgressCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    iget-object v4, p0, Lcom/android/exsettings/ProgressCategory;->mNoDeviceFoundPreference:Landroid/preference/Preference;

    if-ne v2, v4, :cond_3

    const/4 v0, 0x1

    .line 63
    .local v0, "noDeviceFound":Z
    :goto_0
    iget-boolean v2, p0, Lcom/android/exsettings/ProgressCategory;->mProgress:Z

    if-eqz v2, :cond_4

    move v2, v3

    :goto_1
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 65
    iget-boolean v2, p0, Lcom/android/exsettings/ProgressCategory;->mProgress:Z

    if-nez v2, :cond_5

    if-eqz v0, :cond_5

    .line 71
    iget-boolean v2, p0, Lcom/android/exsettings/ProgressCategory;->mNoDeviceFoundAdded:Z

    if-nez v2, :cond_1

    .line 72
    iget-object v2, p0, Lcom/android/exsettings/ProgressCategory;->mNoDeviceFoundPreference:Landroid/preference/Preference;

    if-nez v2, :cond_0

    .line 73
    new-instance v2, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/exsettings/ProgressCategory;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/exsettings/ProgressCategory;->mNoDeviceFoundPreference:Landroid/preference/Preference;

    .line 74
    iget-object v2, p0, Lcom/android/exsettings/ProgressCategory;->mNoDeviceFoundPreference:Landroid/preference/Preference;

    const v4, 0x7f0400b7

    invoke-virtual {v2, v4}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 75
    iget-object v2, p0, Lcom/android/exsettings/ProgressCategory;->mNoDeviceFoundPreference:Landroid/preference/Preference;

    iget v4, p0, Lcom/android/exsettings/ProgressCategory;->mEmptyTextRes:I

    invoke-virtual {v2, v4}, Landroid/preference/Preference;->setTitle(I)V

    .line 76
    iget-object v2, p0, Lcom/android/exsettings/ProgressCategory;->mNoDeviceFoundPreference:Landroid/preference/Preference;

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSelectable(Z)V

    .line 78
    :cond_0
    iget-object v2, p0, Lcom/android/exsettings/ProgressCategory;->mNoDeviceFoundPreference:Landroid/preference/Preference;

    invoke-virtual {p0, v2}, Lcom/android/exsettings/ProgressCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 79
    iput-boolean v5, p0, Lcom/android/exsettings/ProgressCategory;->mNoDeviceFoundAdded:Z

    .line 57
    :cond_1
    :goto_2
    return-void

    .line 61
    .end local v0    # "noDeviceFound":Z
    :cond_2
    const/4 v0, 0x1

    .restart local v0    # "noDeviceFound":Z
    goto :goto_0

    .line 62
    .end local v0    # "noDeviceFound":Z
    :cond_3
    const/4 v0, 0x0

    .restart local v0    # "noDeviceFound":Z
    goto :goto_0

    .line 63
    :cond_4
    const/16 v2, 0x8

    goto :goto_1

    .line 66
    :cond_5
    iget-boolean v2, p0, Lcom/android/exsettings/ProgressCategory;->mNoDeviceFoundAdded:Z

    if-eqz v2, :cond_1

    .line 67
    iget-object v2, p0, Lcom/android/exsettings/ProgressCategory;->mNoDeviceFoundPreference:Landroid/preference/Preference;

    invoke-virtual {p0, v2}, Lcom/android/exsettings/ProgressCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 68
    iput-boolean v3, p0, Lcom/android/exsettings/ProgressCategory;->mNoDeviceFoundAdded:Z

    goto :goto_2
.end method

.method public setEmptyTextRes(I)V
    .locals 0
    .param p1, "emptyTextRes"    # I

    .prologue
    .line 53
    iput p1, p0, Lcom/android/exsettings/ProgressCategory;->mEmptyTextRes:I

    .line 52
    return-void
.end method

.method public setProgress(Z)V
    .locals 0
    .param p1, "progressOn"    # Z

    .prologue
    .line 86
    iput-boolean p1, p0, Lcom/android/exsettings/ProgressCategory;->mProgress:Z

    .line 87
    invoke-virtual {p0}, Lcom/android/exsettings/ProgressCategory;->notifyChanged()V

    .line 85
    return-void
.end method
