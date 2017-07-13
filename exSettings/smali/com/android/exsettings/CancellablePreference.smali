.class public Lcom/android/exsettings/CancellablePreference;
.super Landroid/preference/Preference;
.source "CancellablePreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exsettings/CancellablePreference$OnCancelListener;
    }
.end annotation


# instance fields
.field private mCancellable:Z

.field private mListener:Lcom/android/exsettings/CancellablePreference$OnCancelListener;


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 51
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 53
    const v1, 0x7f130053

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 54
    .local v0, "cancel":Landroid/widget/ImageView;
    iget-boolean v1, p0, Lcom/android/exsettings/CancellablePreference;->mCancellable:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 55
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    return-void

    .line 54
    :cond_0
    const/4 v1, 0x4

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/exsettings/CancellablePreference;->mListener:Lcom/android/exsettings/CancellablePreference$OnCancelListener;

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/android/exsettings/CancellablePreference;->mListener:Lcom/android/exsettings/CancellablePreference$OnCancelListener;

    invoke-interface {v0, p0}, Lcom/android/exsettings/CancellablePreference$OnCancelListener;->onCancel(Lcom/android/exsettings/CancellablePreference;)V

    .line 59
    :cond_0
    return-void
.end method

.method public setCancellable(Z)V
    .locals 0
    .param p1, "isCancellable"    # Z

    .prologue
    .line 41
    iput-boolean p1, p0, Lcom/android/exsettings/CancellablePreference;->mCancellable:Z

    .line 42
    invoke-virtual {p0}, Lcom/android/exsettings/CancellablePreference;->notifyChanged()V

    .line 40
    return-void
.end method

.method public setOnCancelListener(Lcom/android/exsettings/CancellablePreference$OnCancelListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/exsettings/CancellablePreference$OnCancelListener;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/android/exsettings/CancellablePreference;->mListener:Lcom/android/exsettings/CancellablePreference$OnCancelListener;

    .line 45
    return-void
.end method
