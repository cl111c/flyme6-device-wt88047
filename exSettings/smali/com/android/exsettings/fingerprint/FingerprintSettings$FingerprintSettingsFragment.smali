.class public Lcom/android/exsettings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;
.super Lcom/android/exsettings/SettingsPreferenceFragment;
.source "FingerprintSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/fingerprint/FingerprintSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FingerprintSettingsFragment"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exsettings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDeleteDialog;,
        Lcom/android/exsettings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$ConfirmLastDeleteDialog;,
        Lcom/android/exsettings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$1;,
        Lcom/android/exsettings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$2;,
        Lcom/android/exsettings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$3;,
        Lcom/android/exsettings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$4;
    }
.end annotation


# instance fields
.field private mAuthCallback:Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;

.field private mFingerprintCancel:Landroid/os/CancellationSignal;

.field private final mFingerprintLockoutReset:Ljava/lang/Runnable;

.field private mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

.field private final mHandler:Landroid/os/Handler;

.field private mHighlightDrawable:Landroid/graphics/drawable/Drawable;

.field private mInFingerprintLockout:Z

.field private mLaunchedConfirm:Z

.field private mRemoveCallback:Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;

.field private mToken:[B


# direct methods
.method static synthetic -get0(Lcom/android/exsettings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;)Landroid/hardware/fingerprint/FingerprintManager;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/exsettings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/exsettings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;Landroid/os/CancellationSignal;)Landroid/os/CancellationSignal;
    .locals 0

    iput-object p1, p0, Lcom/android/exsettings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mFingerprintCancel:Landroid/os/CancellationSignal;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/exsettings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/exsettings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mInFingerprintLockout:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/exsettings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;Landroid/hardware/fingerprint/Fingerprint;)V
    .locals 0
    .param p1, "fingerPrint"    # Landroid/hardware/fingerprint/Fingerprint;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/exsettings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->deleteFingerPrint(Landroid/hardware/fingerprint/Fingerprint;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/exsettings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;I)V
    .locals 0
    .param p1, "fpId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/exsettings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->highlightFingerprintItem(I)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/exsettings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;ILjava/lang/String;)V
    .locals 0
    .param p1, "fingerId"    # I
    .param p2, "newName"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/exsettings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->renameFingerPrint(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/exsettings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/exsettings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->retryFingerprint()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/exsettings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/exsettings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->updateAddPreference()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;-><init>()V

    .line 152
    new-instance v0, Lcom/android/exsettings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$1;

    invoke-direct {v0, p0}, Lcom/android/exsettings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$1;-><init>(Lcom/android/exsettings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;)V

    iput-object v0, p0, Lcom/android/exsettings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mAuthCallback:Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;

    .line 176
    new-instance v0, Lcom/android/exsettings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$2;

    invoke-direct {v0, p0}, Lcom/android/exsettings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$2;-><init>(Lcom/android/exsettings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;)V

    iput-object v0, p0, Lcom/android/exsettings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mRemoveCallback:Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;

    .line 192
    new-instance v0, Lcom/android/exsettings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$3;

    invoke-direct {v0, p0}, Lcom/android/exsettings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$3;-><init>(Lcom/android/exsettings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;)V

    iput-object v0, p0, Lcom/android/exsettings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mHandler:Landroid/os/Handler;

    .line 542
    new-instance v0, Lcom/android/exsettings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$4;

    invoke-direct {v0, p0}, Lcom/android/exsettings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$4;-><init>(Lcom/android/exsettings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;)V

    iput-object v0, p0, Lcom/android/exsettings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mFingerprintLockoutReset:Ljava/lang/Runnable;

    .line 120
    return-void
.end method

.method private addFingerprintItemPreferences(Landroid/preference/PreferenceGroup;)V
    .locals 7
    .param p1, "root"    # Landroid/preference/PreferenceGroup;

    .prologue
    .line 339
    invoke-virtual {p1}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 340
    iget-object v6, p0, Lcom/android/exsettings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v6}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints()Ljava/util/List;

    move-result-object v4

    .line 341
    .local v4, "items":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/fingerprint/Fingerprint;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    .line 342
    .local v1, "fingerprintCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 343
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/fingerprint/Fingerprint;

    .line 344
    .local v3, "item":Landroid/hardware/fingerprint/Fingerprint;
    new-instance v5, Lcom/android/exsettings/fingerprint/FingerprintSettings$FingerprintPreference;

    invoke-virtual {p1}, Landroid/preference/PreferenceGroup;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/android/exsettings/fingerprint/FingerprintSettings$FingerprintPreference;-><init>(Landroid/content/Context;)V

    .line 345
    .local v5, "pref":Lcom/android/exsettings/fingerprint/FingerprintSettings$FingerprintPreference;
    invoke-virtual {v3}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result v6

    invoke-static {v6}, Lcom/android/exsettings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->genKey(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/exsettings/fingerprint/FingerprintSettings$FingerprintPreference;->setKey(Ljava/lang/String;)V

    .line 346
    invoke-virtual {v3}, Landroid/hardware/fingerprint/Fingerprint;->getName()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/exsettings/fingerprint/FingerprintSettings$FingerprintPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 347
    invoke-virtual {v5, v3}, Lcom/android/exsettings/fingerprint/FingerprintSettings$FingerprintPreference;->setFingerprint(Landroid/hardware/fingerprint/Fingerprint;)V

    .line 348
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/exsettings/fingerprint/FingerprintSettings$FingerprintPreference;->setPersistent(Z)V

    .line 349
    invoke-virtual {p1, v5}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 350
    invoke-virtual {v5, p0}, Lcom/android/exsettings/fingerprint/FingerprintSettings$FingerprintPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 342
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 352
    .end local v3    # "item":Landroid/hardware/fingerprint/Fingerprint;
    .end local v5    # "pref":Lcom/android/exsettings/fingerprint/FingerprintSettings$FingerprintPreference;
    :cond_0
    new-instance v0, Landroid/preference/Preference;

    invoke-virtual {p1}, Landroid/preference/PreferenceGroup;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v0, v6}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 353
    .local v0, "addPreference":Landroid/preference/Preference;
    const-string/jumbo v6, "key_fingerprint_add"

    invoke-virtual {v0, v6}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 354
    const v6, 0x7f0c061e

    invoke-virtual {v0, v6}, Landroid/preference/Preference;->setTitle(I)V

    .line 355
    const v6, 0x7f02003d

    invoke-virtual {v0, v6}, Landroid/preference/Preference;->setIcon(I)V

    .line 356
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 357
    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 358
    invoke-direct {p0}, Lcom/android/exsettings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->updateAddPreference()V

    .line 338
    return-void
.end method

.method private createPreferenceHierarchy()Landroid/preference/PreferenceScreen;
    .locals 2

    .prologue
    .line 328
    invoke-virtual {p0}, Lcom/android/exsettings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 329
    .local v0, "root":Landroid/preference/PreferenceScreen;
    if-eqz v0, :cond_0

    .line 330
    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 332
    :cond_0
    const v1, 0x7f080051

    invoke-virtual {p0, v1}, Lcom/android/exsettings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->addPreferencesFromResource(I)V

    .line 333
    invoke-virtual {p0}, Lcom/android/exsettings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 334
    invoke-direct {p0, v0}, Lcom/android/exsettings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->addFingerprintItemPreferences(Landroid/preference/PreferenceGroup;)V

    .line 335
    return-object v0
.end method

.method private deleteFingerPrint(Landroid/hardware/fingerprint/Fingerprint;)V
    .locals 2
    .param p1, "fingerPrint"    # Landroid/hardware/fingerprint/Fingerprint;

    .prologue
    .line 534
    iget-object v0, p0, Lcom/android/exsettings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget-object v1, p0, Lcom/android/exsettings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mRemoveCallback:Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;

    invoke-virtual {v0, p1, v1}, Landroid/hardware/fingerprint/FingerprintManager;->remove(Landroid/hardware/fingerprint/Fingerprint;Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;)V

    .line 533
    return-void
.end method

.method private static genKey(I)Ljava/lang/String;
    .locals 2
    .param p0, "id"    # I

    .prologue
    .line 374
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "key_fingerprint_item_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getHighlightDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 485
    iget-object v1, p0, Lcom/android/exsettings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mHighlightDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_0

    .line 486
    invoke-virtual {p0}, Lcom/android/exsettings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 487
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 488
    const v1, 0x7f020132

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/exsettings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mHighlightDrawable:Landroid/graphics/drawable/Drawable;

    .line 491
    .end local v0    # "activity":Landroid/app/Activity;
    :cond_0
    iget-object v1, p0, Lcom/android/exsettings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mHighlightDrawable:Landroid/graphics/drawable/Drawable;

    return-object v1
.end method

.method private highlightFingerprintItem(I)V
    .locals 10
    .param p1, "fpId"    # I

    .prologue
    .line 495
    invoke-static {p1}, Lcom/android/exsettings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->genKey(I)Ljava/lang/String;

    move-result-object v4

    .line 496
    .local v4, "prefName":Ljava/lang/String;
    invoke-virtual {p0, v4}, Lcom/android/exsettings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/exsettings/fingerprint/FingerprintSettings$FingerprintPreference;

    .line 497
    .local v2, "fpref":Lcom/android/exsettings/fingerprint/FingerprintSettings$FingerprintPreference;
    invoke-direct {p0}, Lcom/android/exsettings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->getHighlightDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 498
    .local v3, "highlight":Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_0

    .line 499
    invoke-virtual {v2}, Lcom/android/exsettings/fingerprint/FingerprintSettings$FingerprintPreference;->getView()Landroid/view/View;

    move-result-object v5

    .line 500
    .local v5, "view":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v6

    div-int/lit8 v0, v6, 0x2

    .line 501
    .local v0, "centerX":I
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v6

    div-int/lit8 v1, v6, 0x2

    .line 502
    .local v1, "centerY":I
    int-to-float v6, v0

    int-to-float v7, v1

    invoke-virtual {v3, v6, v7}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 503
    invoke-virtual {v5, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 504
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/view/View;->setPressed(Z)V

    .line 505
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setPressed(Z)V

    .line 506
    iget-object v6, p0, Lcom/android/exsettings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mHandler:Landroid/os/Handler;

    new-instance v7, Lcom/android/exsettings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$5;

    invoke-direct {v7, p0, v5}, Lcom/android/exsettings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$5;-><init>(Lcom/android/exsettings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;Landroid/view/View;)V

    .line 511
    const-wide/16 v8, 0x1f4

    .line 506
    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 494
    .end local v0    # "centerX":I
    .end local v1    # "centerY":I
    .end local v5    # "view":Landroid/view/View;
    :cond_0
    return-void
.end method

.method private isFingerprintDisabled()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 304
    const-string/jumbo v2, "device_policy"

    invoke-virtual {p0, v2}, Lcom/android/exsettings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 305
    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0, v3}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;)I

    move-result v2

    and-int/lit8 v2, v2, 0x20

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private launchChooseOrConfirmLock()V
    .locals 9

    .prologue
    const/4 v4, 0x0

    const/4 v8, 0x1

    .line 516
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 517
    .local v0, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/exsettings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v2}, Landroid/hardware/fingerprint/FingerprintManager;->preEnroll()J

    move-result-wide v6

    .line 518
    .local v6, "challenge":J
    new-instance v1, Lcom/android/exsettings/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/exsettings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Lcom/android/exsettings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    .line 520
    .local v1, "helper":Lcom/android/exsettings/ChooseLockSettingsHelper;
    const v2, 0x7f0c061b

    invoke-virtual {p0, v2}, Lcom/android/exsettings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 519
    const/16 v2, 0x65

    move-object v5, v4

    invoke-virtual/range {v1 .. v7}, Lcom/android/exsettings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;J)Z

    move-result v2

    if-nez v2, :cond_0

    .line 522
    const-string/jumbo v2, "com.android.settings"

    const-class v3, Lcom/android/exsettings/ChooseLockGeneric;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 523
    const-string/jumbo v2, "minimum_quality"

    .line 524
    const/high16 v3, 0x10000

    .line 523
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 525
    const-string/jumbo v2, "hide_disabled_prefs"

    invoke-virtual {v0, v2, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 527
    const-string/jumbo v2, "has_challenge"

    invoke-virtual {v0, v2, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 528
    const-string/jumbo v2, "challenge"

    invoke-virtual {v0, v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 529
    const/16 v2, 0x66

    invoke-virtual {p0, v0, v2}, Lcom/android/exsettings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 515
    :cond_0
    return-void
.end method

.method private renameFingerPrint(ILjava/lang/String;)V
    .locals 1
    .param p1, "fingerId"    # I
    .param p2, "newName"    # Ljava/lang/String;

    .prologue
    .line 538
    iget-object v0, p0, Lcom/android/exsettings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/fingerprint/FingerprintManager;->rename(ILjava/lang/String;)V

    .line 539
    invoke-direct {p0}, Lcom/android/exsettings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->updatePreferences()V

    .line 537
    return-void
.end method

.method private retryFingerprint()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 255
    iget-boolean v0, p0, Lcom/android/exsettings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mInFingerprintLockout:Z

    if-nez v0, :cond_0

    .line 256
    new-instance v0, Landroid/os/CancellationSignal;

    invoke-direct {v0}, Landroid/os/CancellationSignal;-><init>()V

    iput-object v0, p0, Lcom/android/exsettings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mFingerprintCancel:Landroid/os/CancellationSignal;

    .line 257
    iget-object v0, p0, Lcom/android/exsettings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget-object v2, p0, Lcom/android/exsettings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mFingerprintCancel:Landroid/os/CancellationSignal;

    .line 258
    iget-object v4, p0, Lcom/android/exsettings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mAuthCallback:Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;

    .line 257
    const/4 v3, 0x0

    move-object v5, v1

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/fingerprint/FingerprintManager;->authenticate(Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;Landroid/os/CancellationSignal;ILandroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;Landroid/os/Handler;)V

    .line 254
    :cond_0
    return-void
.end method

.method private showRenameDeleteDialog(Landroid/hardware/fingerprint/Fingerprint;)V
    .locals 4
    .param p1, "fp"    # Landroid/hardware/fingerprint/Fingerprint;

    .prologue
    .line 422
    new-instance v1, Lcom/android/exsettings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDeleteDialog;

    invoke-direct {v1}, Lcom/android/exsettings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDeleteDialog;-><init>()V

    .line 423
    .local v1, "renameDeleteDialog":Lcom/android/exsettings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDeleteDialog;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 424
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v2, "fingerprint"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 425
    invoke-virtual {v1, v0}, Lcom/android/exsettings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDeleteDialog;->setArguments(Landroid/os/Bundle;)V

    .line 426
    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Lcom/android/exsettings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDeleteDialog;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 427
    invoke-virtual {p0}, Lcom/android/exsettings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-class v3, Lcom/android/exsettings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDeleteDialog;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/exsettings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDeleteDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 421
    return-void
.end method

.method private stopFingerprint()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 221
    iget-object v0, p0, Lcom/android/exsettings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mFingerprintCancel:Landroid/os/CancellationSignal;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/exsettings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mFingerprintCancel:Landroid/os/CancellationSignal;

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 224
    :cond_0
    :goto_0
    iput-object v1, p0, Lcom/android/exsettings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mFingerprintCancel:Landroid/os/CancellationSignal;

    .line 220
    return-void

    .line 222
    :cond_1
    iget-object v0, p0, Lcom/android/exsettings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mFingerprintCancel:Landroid/os/CancellationSignal;

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V

    goto :goto_0
.end method

.method private updateAddPreference()V
    .locals 9

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 363
    invoke-virtual {p0}, Lcom/android/exsettings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 364
    const v7, 0x10e00a4

    .line 363
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 365
    .local v1, "max":I
    iget-object v6, p0, Lcom/android/exsettings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v6}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lt v6, v1, :cond_0

    const/4 v3, 0x1

    .line 366
    .local v3, "tooMany":Z
    :goto_0
    if-eqz v3, :cond_1

    .line 367
    invoke-virtual {p0}, Lcom/android/exsettings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v6

    new-array v7, v5, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v4

    const v8, 0x7f0c0647

    invoke-virtual {v6, v8, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 368
    .local v2, "maxSummary":Ljava/lang/CharSequence;
    :goto_1
    const-string/jumbo v6, "key_fingerprint_add"

    invoke-virtual {p0, v6}, Lcom/android/exsettings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 369
    .local v0, "addPreference":Landroid/preference/Preference;
    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 370
    if-eqz v3, :cond_2

    :goto_2
    invoke-virtual {v0, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 361
    return-void

    .line 365
    .end local v0    # "addPreference":Landroid/preference/Preference;
    .end local v2    # "maxSummary":Ljava/lang/CharSequence;
    .end local v3    # "tooMany":Z
    :cond_0
    const/4 v3, 0x0

    .restart local v3    # "tooMany":Z
    goto :goto_0

    .line 367
    :cond_1
    const-string/jumbo v2, ""

    .restart local v2    # "maxSummary":Ljava/lang/CharSequence;
    goto :goto_1

    .restart local v0    # "addPreference":Landroid/preference/Preference;
    :cond_2
    move v4, v5

    .line 370
    goto :goto_2
.end method

.method private updatePreferences()V
    .locals 0

    .prologue
    .line 386
    invoke-direct {p0}, Lcom/android/exsettings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    .line 387
    invoke-direct {p0}, Lcom/android/exsettings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->retryFingerprint()V

    .line 385
    return-void
.end method


# virtual methods
.method protected getHelpResource()I
    .locals 1

    .prologue
    .line 444
    const v0, 0x7f0c0dec

    return v0
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 264
    const/16 v0, 0x31

    return v0
.end method

.method protected handleError(ILjava/lang/CharSequence;)V
    .locals 6
    .param p1, "errMsgId"    # I
    .param p2, "msg"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v1, 0x0

    .line 231
    iput-object v1, p0, Lcom/android/exsettings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mFingerprintCancel:Landroid/os/CancellationSignal;

    .line 232
    packed-switch p1, :pswitch_data_0

    .line 245
    :cond_0
    :goto_0
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/exsettings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 246
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_1

    .line 247
    const/4 v1, 0x0

    invoke-static {v0, p2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 251
    :cond_1
    invoke-direct {p0}, Lcom/android/exsettings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->retryFingerprint()V

    .line 230
    return-void

    .line 234
    .end local v0    # "activity":Landroid/app/Activity;
    :pswitch_1
    return-void

    .line 236
    :pswitch_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/exsettings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mInFingerprintLockout:Z

    .line 238
    iget-object v1, p0, Lcom/android/exsettings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/exsettings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mFingerprintLockoutReset:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 239
    iget-object v1, p0, Lcom/android/exsettings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/exsettings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mFingerprintLockoutReset:Ljava/lang/Runnable;

    .line 240
    const-wide/16 v4, 0x7530

    .line 239
    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 232
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x3

    .line 449
    invoke-super {p0, p1, p2, p3}, Lcom/android/exsettings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 450
    const/16 v1, 0x66

    if-eq p1, v1, :cond_0

    .line 451
    const/16 v1, 0x65

    if-ne p1, v1, :cond_4

    .line 452
    :cond_0
    const/4 v1, 0x1

    if-eq p2, v1, :cond_1

    const/4 v1, -0x1

    if-ne p2, v1, :cond_2

    .line 454
    :cond_1
    if-eqz p3, :cond_2

    .line 456
    const-string/jumbo v1, "hw_auth_token"

    .line 455
    invoke-virtual {p3, v1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, p0, Lcom/android/exsettings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mToken:[B

    .line 467
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/android/exsettings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mToken:[B

    if-nez v1, :cond_3

    .line 469
    invoke-virtual {p0}, Lcom/android/exsettings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 448
    :cond_3
    return-void

    .line 459
    :cond_4
    const/16 v1, 0xa

    if-ne p1, v1, :cond_2

    .line 460
    if-ne p2, v2, :cond_2

    .line 461
    invoke-virtual {p0}, Lcom/android/exsettings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 462
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {v0, v2}, Landroid/app/Activity;->setResult(I)V

    .line 463
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 269
    invoke-super {p0, p1}, Lcom/android/exsettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 270
    if-eqz p1, :cond_0

    .line 272
    const-string/jumbo v1, "hw_auth_token"

    .line 271
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, p0, Lcom/android/exsettings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mToken:[B

    .line 274
    const-string/jumbo v1, "launched_confirm"

    const/4 v2, 0x0

    .line 273
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/exsettings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mLaunchedConfirm:Z

    .line 277
    :cond_0
    invoke-virtual {p0}, Lcom/android/exsettings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 279
    .local v0, "activity":Landroid/app/Activity;
    const-string/jumbo v1, "fingerprint"

    .line 278
    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/fingerprint/FingerprintManager;

    iput-object v1, p0, Lcom/android/exsettings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    .line 282
    iget-object v1, p0, Lcom/android/exsettings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mToken:[B

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/exsettings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mLaunchedConfirm:Z

    if-nez v1, :cond_1

    .line 283
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/exsettings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mLaunchedConfirm:Z

    .line 284
    invoke-direct {p0}, Lcom/android/exsettings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->launchChooseOrConfirmLock()V

    .line 268
    :cond_1
    return-void
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    .line 475
    invoke-super {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;->onDestroy()V

    .line 476
    invoke-virtual {p0}, Lcom/android/exsettings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 477
    iget-object v1, p0, Lcom/android/exsettings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v1}, Landroid/hardware/fingerprint/FingerprintManager;->postEnroll()I

    move-result v0

    .line 478
    .local v0, "result":I
    if-gez v0, :cond_0

    .line 479
    const-string/jumbo v1, "FingerprintSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "postEnroll failed: result = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    .end local v0    # "result":I
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 392
    invoke-super {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;->onPause()V

    .line 393
    invoke-direct {p0}, Lcom/android/exsettings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->stopFingerprint()V

    .line 391
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 432
    const/4 v1, 0x1

    .line 433
    .local v1, "result":Z
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 434
    .local v0, "key":Ljava/lang/String;
    const-string/jumbo v2, "fingerprint_enable_keyguard_toggle"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 439
    :goto_0
    return v1

    .line 437
    :cond_0
    const-string/jumbo v2, "FingerprintSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unknown key:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 6
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "pref"    # Landroid/preference/Preference;

    .prologue
    .line 405
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    .line 406
    .local v3, "key":Ljava/lang/String;
    const-string/jumbo v4, "key_fingerprint_add"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 407
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 408
    .local v2, "intent":Landroid/content/Intent;
    const-string/jumbo v4, "com.android.settings"

    .line 409
    const-class v5, Lcom/android/exsettings/fingerprint/FingerprintEnrollEnrolling;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    .line 408
    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 410
    const-string/jumbo v4, "hw_auth_token"

    iget-object v5, p0, Lcom/android/exsettings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mToken:[B

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 411
    const/16 v4, 0xa

    invoke-virtual {p0, v2, v4}, Lcom/android/exsettings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 418
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_0
    const/4 v4, 0x1

    return v4

    .line 412
    :cond_1
    instance-of v4, p2, Lcom/android/exsettings/fingerprint/FingerprintSettings$FingerprintPreference;

    if-eqz v4, :cond_0

    move-object v1, p2

    .line 413
    check-cast v1, Lcom/android/exsettings/fingerprint/FingerprintSettings$FingerprintPreference;

    .line 414
    .local v1, "fpref":Lcom/android/exsettings/fingerprint/FingerprintSettings$FingerprintPreference;
    invoke-virtual {v1}, Lcom/android/exsettings/fingerprint/FingerprintSettings$FingerprintPreference;->getFingerprint()Landroid/hardware/fingerprint/Fingerprint;

    move-result-object v0

    .line 415
    .local v0, "fp":Landroid/hardware/fingerprint/Fingerprint;
    invoke-direct {p0, v0}, Lcom/android/exsettings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->showRenameDeleteDialog(Landroid/hardware/fingerprint/Fingerprint;)V

    .line 416
    invoke-super {p0, p1, p2}, Lcom/android/exsettings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v4

    return v4
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 379
    invoke-super {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;->onResume()V

    .line 382
    invoke-direct {p0}, Lcom/android/exsettings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->updatePreferences()V

    .line 378
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 398
    const-string/jumbo v0, "hw_auth_token"

    .line 399
    iget-object v1, p0, Lcom/android/exsettings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mToken:[B

    .line 398
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 400
    const-string/jumbo v0, "launched_confirm"

    iget-boolean v1, p0, Lcom/android/exsettings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mLaunchedConfirm:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 397
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 290
    invoke-super {p0, p1, p2}, Lcom/android/exsettings/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 291
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 292
    const v2, 0x7f04007d

    const/4 v3, 0x0

    .line 291
    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 293
    .local v0, "v":Landroid/widget/TextView;
    invoke-direct {p0}, Lcom/android/exsettings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->isFingerprintDisabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 294
    const v1, 0x7f0c0645

    .line 293
    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/exsettings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 296
    invoke-virtual {p0}, Lcom/android/exsettings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->getHelpResource()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/exsettings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 293
    invoke-static {v1, v2}, Lcom/android/exsettings/fingerprint/FingerprintSettings$LearnMoreSpan;->linkify(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 297
    new-instance v1, Landroid/text/method/LinkMovementMethod;

    invoke-direct {v1}, Landroid/text/method/LinkMovementMethod;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 298
    invoke-virtual {p0}, Lcom/android/exsettings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 299
    invoke-virtual {p0}, Lcom/android/exsettings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setFooterDividersEnabled(Z)V

    .line 289
    return-void

    .line 295
    :cond_0
    const v1, 0x7f0c0644

    goto :goto_0
.end method

.method protected removeFingerprintPreference(I)V
    .locals 5
    .param p1, "fingerprintId"    # I

    .prologue
    .line 310
    invoke-static {p1}, Lcom/android/exsettings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->genKey(I)Ljava/lang/String;

    move-result-object v0

    .line 311
    .local v0, "name":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/exsettings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 312
    .local v1, "prefToRemove":Landroid/preference/Preference;
    if-eqz v1, :cond_1

    .line 313
    invoke-virtual {p0}, Lcom/android/exsettings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 314
    const-string/jumbo v2, "FingerprintSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Failed to remove preference with key "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    :cond_0
    :goto_0
    return-void

    .line 317
    :cond_1
    const-string/jumbo v2, "FingerprintSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Can\'t find preference to remove: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
