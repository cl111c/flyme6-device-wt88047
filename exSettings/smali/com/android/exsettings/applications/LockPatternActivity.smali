.class public Lcom/android/exsettings/applications/LockPatternActivity;
.super Landroid/app/Activity;
.source "LockPatternActivity.java"

# interfaces
.implements Lcom/android/exsettings/cyanogenmod/ProtectedAccountView$OnNotifyAccountReset;
.implements Lcom/android/exsettings/fingerprint/FingerprintUiHelper$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exsettings/applications/LockPatternActivity$UnlockPatternListener;,
        Lcom/android/exsettings/applications/LockPatternActivity$1;,
        Lcom/android/exsettings/applications/LockPatternActivity$2;,
        Lcom/android/exsettings/applications/LockPatternActivity$3;
    }
.end annotation


# static fields
.field private static TIMEOUT_PREF_KEY:Ljava/lang/String;


# instance fields
.field mAccountView:Lcom/android/exsettings/cyanogenmod/ProtectedAccountView;

.field mCancel:Landroid/widget/Button;

.field mCancelOnClickListener:Landroid/view/View$OnClickListener;

.field mCancelPatternRunnable:Ljava/lang/Runnable;

.field mConfirming:Z

.field mContinue:Landroid/widget/Button;

.field mContinueOnClickListener:Landroid/view/View$OnClickListener;

.field mCreate:Z

.field mFingerPrintSetUp:Z

.field private mFingerPrintUiHelper:Lcom/android/exsettings/fingerprint/FingerprintUiHelper;

.field mFingerprintIconView:Landroid/widget/ImageView;

.field private mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

.field mItem:Landroid/view/MenuItem;

.field mLockPatternView:Lcom/android/internal/widget/LockPatternView;

.field mPatternHash:[B

.field mPatternLockHeader:Landroid/widget/TextView;

.field mRetry:I

.field mRetryLocked:Z

.field mRetryPattern:Z


# direct methods
.method static synthetic -wrap0(Lcom/android/exsettings/applications/LockPatternActivity;Z)V
    .locals 0
    .param p1, "clear"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/exsettings/applications/LockPatternActivity;->resetPatternState(Z)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/exsettings/applications/LockPatternActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/exsettings/applications/LockPatternActivity;->setPatternTimeout()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/exsettings/applications/LockPatternActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/exsettings/applications/LockPatternActivity;->switchToAccount()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    const-string/jumbo v0, "retry_timeout"

    sput-object v0, Lcom/android/exsettings/applications/LockPatternActivity;->TIMEOUT_PREF_KEY:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 45
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 76
    iput v1, p0, Lcom/android/exsettings/applications/LockPatternActivity;->mRetry:I

    .line 79
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/exsettings/applications/LockPatternActivity;->mRetryPattern:Z

    .line 80
    iput-boolean v1, p0, Lcom/android/exsettings/applications/LockPatternActivity;->mConfirming:Z

    .line 81
    iput-boolean v1, p0, Lcom/android/exsettings/applications/LockPatternActivity;->mFingerPrintSetUp:Z

    .line 82
    iput-boolean v1, p0, Lcom/android/exsettings/applications/LockPatternActivity;->mRetryLocked:Z

    .line 87
    new-instance v0, Lcom/android/exsettings/applications/LockPatternActivity$1;

    invoke-direct {v0, p0}, Lcom/android/exsettings/applications/LockPatternActivity$1;-><init>(Lcom/android/exsettings/applications/LockPatternActivity;)V

    iput-object v0, p0, Lcom/android/exsettings/applications/LockPatternActivity;->mCancelPatternRunnable:Ljava/lang/Runnable;

    .line 109
    new-instance v0, Lcom/android/exsettings/applications/LockPatternActivity$2;

    invoke-direct {v0, p0}, Lcom/android/exsettings/applications/LockPatternActivity$2;-><init>(Lcom/android/exsettings/applications/LockPatternActivity;)V

    iput-object v0, p0, Lcom/android/exsettings/applications/LockPatternActivity;->mCancelOnClickListener:Landroid/view/View$OnClickListener;

    .line 123
    new-instance v0, Lcom/android/exsettings/applications/LockPatternActivity$3;

    invoke-direct {v0, p0}, Lcom/android/exsettings/applications/LockPatternActivity$3;-><init>(Lcom/android/exsettings/applications/LockPatternActivity;)V

    iput-object v0, p0, Lcom/android/exsettings/applications/LockPatternActivity;->mContinueOnClickListener:Landroid/view/View$OnClickListener;

    .line 45
    return-void
.end method

.method private isRetryLocked()Z
    .locals 10

    .prologue
    const/4 v1, 0x0

    .line 455
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 456
    .local v4, "time":J
    invoke-virtual {p0}, Lcom/android/exsettings/applications/LockPatternActivity;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6, v1}, Lcom/android/exsettings/applications/LockPatternActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 457
    .local v0, "prefs":Landroid/content/SharedPreferences;
    sget-object v6, Lcom/android/exsettings/applications/LockPatternActivity;->TIMEOUT_PREF_KEY:Ljava/lang/String;

    const-wide/16 v8, 0x0

    invoke-interface {v0, v6, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 458
    .local v2, "retryTime":J
    sub-long v6, v4, v2

    const-wide/16 v8, 0x7530

    cmp-long v6, v6, v8

    if-gez v6, :cond_0

    const/4 v1, 0x1

    :cond_0
    iput-boolean v1, p0, Lcom/android/exsettings/applications/LockPatternActivity;->mRetryLocked:Z

    .line 459
    iget-boolean v1, p0, Lcom/android/exsettings/applications/LockPatternActivity;->mRetryLocked:Z

    return v1
.end method

.method private resetPatternState(Z)V
    .locals 8
    .param p1, "clear"    # Z

    .prologue
    const/16 v4, 0x8

    const/4 v2, 0x1

    const/4 v7, 0x0

    const/4 v3, 0x0

    .line 284
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 285
    .local v1, "prefs":Landroid/content/SharedPreferences;
    const-string/jumbo v5, "pattern_lock_protected_apps"

    invoke-interface {v1, v5, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 286
    .local v0, "pattern":Ljava/lang/String;
    if-eqz v0, :cond_2

    const-string/jumbo v5, "recreate_pattern_lock"

    invoke-virtual {p0}, Lcom/android/exsettings/applications/LockPatternActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .end local p1    # "clear":Z
    :goto_0
    iput-boolean p1, p0, Lcom/android/exsettings/applications/LockPatternActivity;->mCreate:Z

    .line 289
    iput-object v7, p0, Lcom/android/exsettings/applications/LockPatternActivity;->mPatternHash:[B

    .line 290
    if-eqz v0, :cond_0

    .line 291
    invoke-static {v0, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v5

    iput-object v5, p0, Lcom/android/exsettings/applications/LockPatternActivity;->mPatternHash:[B

    .line 294
    :cond_0
    iget-object v5, p0, Lcom/android/exsettings/applications/LockPatternActivity;->mContinue:Landroid/widget/Button;

    iget-boolean v6, p0, Lcom/android/exsettings/applications/LockPatternActivity;->mCreate:Z

    if-eqz v6, :cond_1

    move v2, v3

    :cond_1
    invoke-virtual {v5, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 295
    iget-object v5, p0, Lcom/android/exsettings/applications/LockPatternActivity;->mCancel:Landroid/widget/Button;

    iget-boolean v2, p0, Lcom/android/exsettings/applications/LockPatternActivity;->mCreate:Z

    if-eqz v2, :cond_3

    move v2, v3

    :goto_1
    invoke-virtual {v5, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 296
    iget-object v2, p0, Lcom/android/exsettings/applications/LockPatternActivity;->mCancel:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/exsettings/applications/LockPatternActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c05d6

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 297
    iget-object v2, p0, Lcom/android/exsettings/applications/LockPatternActivity;->mContinue:Landroid/widget/Button;

    iget-boolean v5, p0, Lcom/android/exsettings/applications/LockPatternActivity;->mCreate:Z

    if-eqz v5, :cond_4

    :goto_2
    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 298
    iget-object v3, p0, Lcom/android/exsettings/applications/LockPatternActivity;->mPatternLockHeader:Landroid/widget/TextView;

    iget-boolean v2, p0, Lcom/android/exsettings/applications/LockPatternActivity;->mCreate:Z

    if-eqz v2, :cond_5

    .line 299
    invoke-virtual {p0}, Lcom/android/exsettings/applications/LockPatternActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0c0987

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 298
    :goto_3
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 303
    iget-object v2, p0, Lcom/android/exsettings/applications/LockPatternActivity;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternView;->clearPattern()V

    .line 305
    invoke-virtual {p0}, Lcom/android/exsettings/applications/LockPatternActivity;->invalidateOptionsMenu()V

    .line 283
    return-void

    .restart local p1    # "clear":Z
    :cond_2
    move p1, v2

    .line 286
    goto :goto_0

    .end local p1    # "clear":Z
    :cond_3
    move v2, v4

    .line 295
    goto :goto_1

    :cond_4
    move v3, v4

    .line 297
    goto :goto_2

    .line 300
    :cond_5
    iget-boolean v2, p0, Lcom/android/exsettings/applications/LockPatternActivity;->mFingerPrintSetUp:Z

    if-eqz v2, :cond_6

    .line 301
    invoke-virtual {p0}, Lcom/android/exsettings/applications/LockPatternActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0c0334

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    .line 302
    :cond_6
    invoke-virtual {p0}, Lcom/android/exsettings/applications/LockPatternActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0c0994

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_3
.end method

.method private setPatternTimeout()V
    .locals 6

    .prologue
    .line 463
    invoke-virtual {p0}, Lcom/android/exsettings/applications/LockPatternActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/exsettings/applications/LockPatternActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 464
    .local v0, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    sget-object v2, Lcom/android/exsettings/applications/LockPatternActivity;->TIMEOUT_PREF_KEY:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-interface {v1, v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 462
    return-void
.end method

.method private switchToAccount()V
    .locals 3

    .prologue
    .line 235
    iget-object v0, p0, Lcom/android/exsettings/applications/LockPatternActivity;->mPatternLockHeader:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/exsettings/applications/LockPatternActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 236
    const v2, 0x7f0c0329

    .line 235
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 237
    iget-object v0, p0, Lcom/android/exsettings/applications/LockPatternActivity;->mItem:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/android/exsettings/applications/LockPatternActivity;->mItem:Landroid/view/MenuItem;

    const v1, 0x7f0200c8

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 240
    :cond_0
    iget-object v0, p0, Lcom/android/exsettings/applications/LockPatternActivity;->mAccountView:Lcom/android/exsettings/cyanogenmod/ProtectedAccountView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/exsettings/cyanogenmod/ProtectedAccountView;->setVisibility(I)V

    .line 241
    iget-object v0, p0, Lcom/android/exsettings/applications/LockPatternActivity;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setVisibility(I)V

    .line 234
    return-void
.end method

.method private switchToPattern(Z)V
    .locals 4
    .param p1, "reset"    # Z

    .prologue
    const/4 v3, 0x0

    .line 219
    invoke-direct {p0}, Lcom/android/exsettings/applications/LockPatternActivity;->isRetryLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 220
    return-void

    .line 222
    :cond_0
    if-eqz p1, :cond_1

    .line 223
    invoke-direct {p0, v3}, Lcom/android/exsettings/applications/LockPatternActivity;->resetPatternState(Z)V

    .line 225
    :cond_1
    iget-object v1, p0, Lcom/android/exsettings/applications/LockPatternActivity;->mPatternLockHeader:Landroid/widget/TextView;

    iget-boolean v0, p0, Lcom/android/exsettings/applications/LockPatternActivity;->mFingerPrintSetUp:Z

    if-eqz v0, :cond_2

    .line 226
    invoke-virtual {p0}, Lcom/android/exsettings/applications/LockPatternActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0c0334

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 225
    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 228
    iget-object v0, p0, Lcom/android/exsettings/applications/LockPatternActivity;->mItem:Landroid/view/MenuItem;

    const v1, 0x7f020082

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 229
    iget-object v0, p0, Lcom/android/exsettings/applications/LockPatternActivity;->mAccountView:Lcom/android/exsettings/cyanogenmod/ProtectedAccountView;

    invoke-virtual {v0}, Lcom/android/exsettings/cyanogenmod/ProtectedAccountView;->clearFocusOnInput()V

    .line 230
    iget-object v0, p0, Lcom/android/exsettings/applications/LockPatternActivity;->mAccountView:Lcom/android/exsettings/cyanogenmod/ProtectedAccountView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/exsettings/cyanogenmod/ProtectedAccountView;->setVisibility(I)V

    .line 231
    iget-object v0, p0, Lcom/android/exsettings/applications/LockPatternActivity;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0, v3}, Lcom/android/internal/widget/LockPatternView;->setVisibility(I)V

    .line 218
    return-void

    .line 227
    :cond_2
    invoke-virtual {p0}, Lcom/android/exsettings/applications/LockPatternActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0c0994

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public onAuthenticated()V
    .locals 1

    .prologue
    .line 310
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/exsettings/applications/LockPatternActivity;->setResult(I)V

    .line 311
    invoke-virtual {p0}, Lcom/android/exsettings/applications/LockPatternActivity;->finish()V

    .line 309
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 245
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 246
    const v0, 0x7f0400a7

    invoke-virtual {p0, v0}, Lcom/android/exsettings/applications/LockPatternActivity;->setContentView(I)V

    .line 248
    invoke-virtual {p0}, Lcom/android/exsettings/applications/LockPatternActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 250
    const v0, 0x7f130163

    invoke-virtual {p0, v0}, Lcom/android/exsettings/applications/LockPatternActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/exsettings/applications/LockPatternActivity;->mPatternLockHeader:Landroid/widget/TextView;

    .line 251
    const v0, 0x7f130166

    invoke-virtual {p0, v0}, Lcom/android/exsettings/applications/LockPatternActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/exsettings/applications/LockPatternActivity;->mCancel:Landroid/widget/Button;

    .line 252
    iget-object v0, p0, Lcom/android/exsettings/applications/LockPatternActivity;->mCancel:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/exsettings/applications/LockPatternActivity;->mCancelOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 253
    const v0, 0x7f130167

    invoke-virtual {p0, v0}, Lcom/android/exsettings/applications/LockPatternActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/exsettings/applications/LockPatternActivity;->mContinue:Landroid/widget/Button;

    .line 254
    iget-object v0, p0, Lcom/android/exsettings/applications/LockPatternActivity;->mContinue:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/exsettings/applications/LockPatternActivity;->mContinueOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 256
    const v0, 0x7f130165

    invoke-virtual {p0, v0}, Lcom/android/exsettings/applications/LockPatternActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/exsettings/cyanogenmod/ProtectedAccountView;

    iput-object v0, p0, Lcom/android/exsettings/applications/LockPatternActivity;->mAccountView:Lcom/android/exsettings/cyanogenmod/ProtectedAccountView;

    .line 257
    iget-object v0, p0, Lcom/android/exsettings/applications/LockPatternActivity;->mAccountView:Lcom/android/exsettings/cyanogenmod/ProtectedAccountView;

    invoke-virtual {v0, p0}, Lcom/android/exsettings/cyanogenmod/ProtectedAccountView;->setOnNotifyAccountResetCb(Lcom/android/exsettings/cyanogenmod/ProtectedAccountView$OnNotifyAccountReset;)V

    .line 258
    const v0, 0x7f130164

    invoke-virtual {p0, v0}, Lcom/android/exsettings/applications/LockPatternActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/LockPatternView;

    iput-object v0, p0, Lcom/android/exsettings/applications/LockPatternActivity;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    .line 259
    const v0, 0x7f130168

    invoke-virtual {p0, v0}, Lcom/android/exsettings/applications/LockPatternActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/exsettings/applications/LockPatternActivity;->mFingerprintIconView:Landroid/widget/ImageView;

    .line 261
    invoke-direct {p0, v3}, Lcom/android/exsettings/applications/LockPatternActivity;->resetPatternState(Z)V

    .line 264
    iget-object v0, p0, Lcom/android/exsettings/applications/LockPatternActivity;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0, v3}, Lcom/android/internal/widget/LockPatternView;->setFocusable(Z)V

    .line 265
    iget-object v0, p0, Lcom/android/exsettings/applications/LockPatternActivity;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    new-instance v1, Lcom/android/exsettings/applications/LockPatternActivity$UnlockPatternListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/exsettings/applications/LockPatternActivity$UnlockPatternListener;-><init>(Lcom/android/exsettings/applications/LockPatternActivity;Lcom/android/exsettings/applications/LockPatternActivity$UnlockPatternListener;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setOnPatternListener(Lcom/android/internal/widget/LockPatternView$OnPatternListener;)V

    .line 267
    const-class v0, Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {p0, v0}, Lcom/android/exsettings/applications/LockPatternActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/FingerprintManager;

    iput-object v0, p0, Lcom/android/exsettings/applications/LockPatternActivity;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    .line 269
    iget-object v0, p0, Lcom/android/exsettings/applications/LockPatternActivity;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->isHardwareDetected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 270
    iget-object v0, p0, Lcom/android/exsettings/applications/LockPatternActivity;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/exsettings/applications/LockPatternActivity;->mCreate:Z

    if-eqz v0, :cond_2

    .line 278
    :cond_0
    iput-boolean v3, p0, Lcom/android/exsettings/applications/LockPatternActivity;->mFingerPrintSetUp:Z

    .line 244
    :cond_1
    :goto_0
    return-void

    .line 271
    :cond_2
    iput-boolean v4, p0, Lcom/android/exsettings/applications/LockPatternActivity;->mFingerPrintSetUp:Z

    .line 273
    new-instance v0, Lcom/android/exsettings/fingerprint/FingerprintUiHelper;

    iget-object v1, p0, Lcom/android/exsettings/applications/LockPatternActivity;->mFingerprintIconView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/exsettings/applications/LockPatternActivity;->mPatternLockHeader:Landroid/widget/TextView;

    invoke-direct {v0, v1, v2, p0}, Lcom/android/exsettings/fingerprint/FingerprintUiHelper;-><init>(Landroid/widget/ImageView;Landroid/widget/TextView;Lcom/android/exsettings/fingerprint/FingerprintUiHelper$Callback;)V

    .line 272
    iput-object v0, p0, Lcom/android/exsettings/applications/LockPatternActivity;->mFingerPrintUiHelper:Lcom/android/exsettings/fingerprint/FingerprintUiHelper;

    .line 274
    iget-object v0, p0, Lcom/android/exsettings/applications/LockPatternActivity;->mFingerPrintUiHelper:Lcom/android/exsettings/fingerprint/FingerprintUiHelper;

    invoke-virtual {v0, v4}, Lcom/android/exsettings/fingerprint/FingerprintUiHelper;->setDarkIconography(Z)V

    .line 275
    iget-object v0, p0, Lcom/android/exsettings/applications/LockPatternActivity;->mFingerPrintUiHelper:Lcom/android/exsettings/fingerprint/FingerprintUiHelper;

    .line 276
    const v1, 0x7f0c0334

    .line 275
    invoke-virtual {p0, v1}, Lcom/android/exsettings/applications/LockPatternActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/exsettings/fingerprint/FingerprintUiHelper;->setIdleText(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v2, 0x0

    .line 151
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 152
    const v0, 0x7f0c0328

    invoke-interface {p1, v2, v2, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 153
    const v1, 0x7f020082

    .line 152
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 154
    const/16 v1, 0x72

    .line 152
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v0

    .line 155
    const/4 v1, 0x5

    .line 152
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 157
    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/applications/LockPatternActivity;->mItem:Landroid/view/MenuItem;

    .line 158
    iget-boolean v0, p0, Lcom/android/exsettings/applications/LockPatternActivity;->mRetryLocked:Z

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/android/exsettings/applications/LockPatternActivity;->mItem:Landroid/view/MenuItem;

    const v1, 0x7f0200c8

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 162
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onFingerprintIconVisibilityChanged(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 315
    return-void
.end method

.method public onNotifyAccountReset()V
    .locals 1

    .prologue
    .line 215
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/exsettings/applications/LockPatternActivity;->switchToPattern(Z)V

    .line 214
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 196
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 209
    return v1

    .line 198
    :sswitch_0
    iget-object v0, p0, Lcom/android/exsettings/applications/LockPatternActivity;->mAccountView:Lcom/android/exsettings/cyanogenmod/ProtectedAccountView;

    invoke-virtual {v0}, Lcom/android/exsettings/cyanogenmod/ProtectedAccountView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 199
    invoke-direct {p0, v1}, Lcom/android/exsettings/applications/LockPatternActivity;->switchToPattern(Z)V

    .line 203
    :goto_0
    return v2

    .line 201
    :cond_0
    invoke-direct {p0}, Lcom/android/exsettings/applications/LockPatternActivity;->switchToAccount()V

    goto :goto_0

    .line 205
    :sswitch_1
    invoke-virtual {p0, v1}, Lcom/android/exsettings/applications/LockPatternActivity;->setResult(I)V

    .line 206
    invoke-virtual {p0}, Lcom/android/exsettings/applications/LockPatternActivity;->finish()V

    .line 207
    return v2

    .line 196
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x102002c -> :sswitch_1
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 435
    iget-boolean v0, p0, Lcom/android/exsettings/applications/LockPatternActivity;->mFingerPrintSetUp:Z

    if-eqz v0, :cond_0

    .line 436
    iget-object v0, p0, Lcom/android/exsettings/applications/LockPatternActivity;->mFingerPrintUiHelper:Lcom/android/exsettings/fingerprint/FingerprintUiHelper;

    invoke-virtual {v0}, Lcom/android/exsettings/fingerprint/FingerprintUiHelper;->stopListening()V

    .line 438
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 434
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 179
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 180
    const-string/jumbo v0, "isAccountView"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 181
    invoke-direct {p0}, Lcom/android/exsettings/applications/LockPatternActivity;->switchToAccount()V

    .line 178
    :goto_0
    return-void

    .line 183
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/exsettings/applications/LockPatternActivity;->switchToPattern(Z)V

    .line 184
    const-string/jumbo v0, "pattern_hash"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/applications/LockPatternActivity;->mPatternHash:[B

    .line 185
    const-string/jumbo v0, "confirming"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/exsettings/applications/LockPatternActivity;->mConfirming:Z

    .line 186
    const-string/jumbo v0, "retrypattern"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/exsettings/applications/LockPatternActivity;->mRetryPattern:Z

    .line 187
    const-string/jumbo v0, "retry"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/exsettings/applications/LockPatternActivity;->mRetry:I

    .line 188
    const-string/jumbo v0, "create"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/exsettings/applications/LockPatternActivity;->mCreate:Z

    .line 189
    iget-object v0, p0, Lcom/android/exsettings/applications/LockPatternActivity;->mContinue:Landroid/widget/Button;

    const-string/jumbo v1, "continueEnabled"

    .line 190
    iget-object v2, p0, Lcom/android/exsettings/applications/LockPatternActivity;->mContinue:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->isEnabled()Z

    move-result v2

    .line 189
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 443
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 444
    iget-boolean v0, p0, Lcom/android/exsettings/applications/LockPatternActivity;->mFingerPrintSetUp:Z

    if-eqz v0, :cond_0

    .line 445
    iget-object v0, p0, Lcom/android/exsettings/applications/LockPatternActivity;->mPatternLockHeader:Landroid/widget/TextView;

    const v1, 0x7f0c0334

    invoke-virtual {p0, v1}, Lcom/android/exsettings/applications/LockPatternActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 446
    iget-object v0, p0, Lcom/android/exsettings/applications/LockPatternActivity;->mFingerPrintUiHelper:Lcom/android/exsettings/fingerprint/FingerprintUiHelper;

    invoke-virtual {v0}, Lcom/android/exsettings/fingerprint/FingerprintUiHelper;->startListening()V

    .line 448
    :cond_0
    invoke-direct {p0}, Lcom/android/exsettings/applications/LockPatternActivity;->isRetryLocked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 449
    invoke-virtual {p0}, Lcom/android/exsettings/applications/LockPatternActivity;->invalidateOptionsMenu()V

    .line 450
    invoke-direct {p0}, Lcom/android/exsettings/applications/LockPatternActivity;->switchToAccount()V

    .line 442
    :cond_1
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    const/4 v0, 0x0

    .line 167
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 168
    const-string/jumbo v1, "isAccountView"

    iget-object v2, p0, Lcom/android/exsettings/applications/LockPatternActivity;->mAccountView:Lcom/android/exsettings/cyanogenmod/ProtectedAccountView;

    invoke-virtual {v2}, Lcom/android/exsettings/cyanogenmod/ProtectedAccountView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 169
    const-string/jumbo v0, "continueEnabled"

    iget-object v1, p0, Lcom/android/exsettings/applications/LockPatternActivity;->mContinue:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->isEnabled()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 170
    const-string/jumbo v0, "confirming"

    iget-boolean v1, p0, Lcom/android/exsettings/applications/LockPatternActivity;->mConfirming:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 171
    const-string/jumbo v0, "retrypattern"

    iget-boolean v1, p0, Lcom/android/exsettings/applications/LockPatternActivity;->mRetryPattern:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 172
    const-string/jumbo v0, "retry"

    iget v1, p0, Lcom/android/exsettings/applications/LockPatternActivity;->mRetry:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 173
    const-string/jumbo v0, "pattern_hash"

    iget-object v1, p0, Lcom/android/exsettings/applications/LockPatternActivity;->mPatternHash:[B

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 174
    const-string/jumbo v0, "create"

    iget-boolean v1, p0, Lcom/android/exsettings/applications/LockPatternActivity;->mCreate:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 166
    return-void
.end method

.method public patternToHash(Ljava/util/List;)[B
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)[B"
        }
    .end annotation

    .prologue
    .local p1, "pattern":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    const/4 v7, 0x0

    .line 414
    if-nez p1, :cond_0

    .line 415
    return-object v7

    .line 418
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    .line 419
    .local v5, "patternSize":I
    new-array v6, v5, [B

    .line 420
    .local v6, "res":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v5, :cond_1

    .line 421
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/LockPatternView$Cell;

    .line 422
    .local v0, "cell":Lcom/android/internal/widget/LockPatternView$Cell;
    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v7

    mul-int/lit8 v7, v7, 0x3

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v8

    add-int/2addr v7, v8

    int-to-byte v7, v7

    aput-byte v7, v6, v2

    .line 420
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 425
    .end local v0    # "cell":Lcom/android/internal/widget/LockPatternView$Cell;
    :cond_1
    :try_start_0
    const-string/jumbo v7, "SHA-1"

    invoke-static {v7}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    .line 426
    .local v3, "md":Ljava/security/MessageDigest;
    invoke-virtual {v3, v6}, Ljava/security/MessageDigest;->digest([B)[B
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 427
    .local v1, "hash":[B
    return-object v1

    .line 428
    .end local v1    # "hash":[B
    .end local v3    # "md":Ljava/security/MessageDigest;
    :catch_0
    move-exception v4

    .line 429
    .local v4, "nsa":Ljava/security/NoSuchAlgorithmException;
    return-object v6
.end method
