.class public Lcom/android/exsettings/CredentialCheckResultTracker;
.super Landroid/app/Fragment;
.source "CredentialCheckResultTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exsettings/CredentialCheckResultTracker$Listener;
    }
.end annotation


# instance fields
.field private mHasResult:Z

.field private mListener:Lcom/android/exsettings/CredentialCheckResultTracker$Listener;

.field private mResultData:Landroid/content/Intent;

.field private mResultEffectiveUserId:I

.field private mResultMatched:Z

.field private mResultTimeoutMs:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/exsettings/CredentialCheckResultTracker;->mHasResult:Z

    .line 26
    return-void
.end method


# virtual methods
.method public clearResult()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 68
    iput-boolean v1, p0, Lcom/android/exsettings/CredentialCheckResultTracker;->mHasResult:Z

    .line 69
    iput-boolean v1, p0, Lcom/android/exsettings/CredentialCheckResultTracker;->mResultMatched:Z

    .line 70
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/exsettings/CredentialCheckResultTracker;->mResultData:Landroid/content/Intent;

    .line 71
    iput v1, p0, Lcom/android/exsettings/CredentialCheckResultTracker;->mResultTimeoutMs:I

    .line 72
    iput v1, p0, Lcom/android/exsettings/CredentialCheckResultTracker;->mResultEffectiveUserId:I

    .line 67
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 38
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 39
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/exsettings/CredentialCheckResultTracker;->setRetainInstance(Z)V

    .line 37
    return-void
.end method

.method public setListener(Lcom/android/exsettings/CredentialCheckResultTracker$Listener;)V
    .locals 5
    .param p1, "listener"    # Lcom/android/exsettings/CredentialCheckResultTracker$Listener;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/exsettings/CredentialCheckResultTracker;->mListener:Lcom/android/exsettings/CredentialCheckResultTracker$Listener;

    if-ne v0, p1, :cond_0

    .line 44
    return-void

    .line 47
    :cond_0
    iput-object p1, p0, Lcom/android/exsettings/CredentialCheckResultTracker;->mListener:Lcom/android/exsettings/CredentialCheckResultTracker$Listener;

    .line 48
    iget-object v0, p0, Lcom/android/exsettings/CredentialCheckResultTracker;->mListener:Lcom/android/exsettings/CredentialCheckResultTracker$Listener;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/exsettings/CredentialCheckResultTracker;->mHasResult:Z

    if-eqz v0, :cond_1

    .line 49
    iget-object v0, p0, Lcom/android/exsettings/CredentialCheckResultTracker;->mListener:Lcom/android/exsettings/CredentialCheckResultTracker$Listener;

    iget-boolean v1, p0, Lcom/android/exsettings/CredentialCheckResultTracker;->mResultMatched:Z

    iget-object v2, p0, Lcom/android/exsettings/CredentialCheckResultTracker;->mResultData:Landroid/content/Intent;

    iget v3, p0, Lcom/android/exsettings/CredentialCheckResultTracker;->mResultTimeoutMs:I

    .line 50
    iget v4, p0, Lcom/android/exsettings/CredentialCheckResultTracker;->mResultEffectiveUserId:I

    .line 49
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/exsettings/CredentialCheckResultTracker$Listener;->onCredentialChecked(ZLandroid/content/Intent;II)V

    .line 42
    :cond_1
    return-void
.end method

.method public setResult(ZLandroid/content/Intent;II)V
    .locals 5
    .param p1, "matched"    # Z
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "timeoutMs"    # I
    .param p4, "effectiveUserId"    # I

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/android/exsettings/CredentialCheckResultTracker;->mResultMatched:Z

    .line 56
    iput-object p2, p0, Lcom/android/exsettings/CredentialCheckResultTracker;->mResultData:Landroid/content/Intent;

    .line 57
    iput p3, p0, Lcom/android/exsettings/CredentialCheckResultTracker;->mResultTimeoutMs:I

    .line 58
    iput p4, p0, Lcom/android/exsettings/CredentialCheckResultTracker;->mResultEffectiveUserId:I

    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/exsettings/CredentialCheckResultTracker;->mHasResult:Z

    .line 61
    iget-object v0, p0, Lcom/android/exsettings/CredentialCheckResultTracker;->mListener:Lcom/android/exsettings/CredentialCheckResultTracker$Listener;

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/android/exsettings/CredentialCheckResultTracker;->mListener:Lcom/android/exsettings/CredentialCheckResultTracker$Listener;

    iget-boolean v1, p0, Lcom/android/exsettings/CredentialCheckResultTracker;->mResultMatched:Z

    iget-object v2, p0, Lcom/android/exsettings/CredentialCheckResultTracker;->mResultData:Landroid/content/Intent;

    iget v3, p0, Lcom/android/exsettings/CredentialCheckResultTracker;->mResultTimeoutMs:I

    .line 63
    iget v4, p0, Lcom/android/exsettings/CredentialCheckResultTracker;->mResultEffectiveUserId:I

    .line 62
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/exsettings/CredentialCheckResultTracker$Listener;->onCredentialChecked(ZLandroid/content/Intent;II)V

    .line 54
    :cond_0
    return-void
.end method
