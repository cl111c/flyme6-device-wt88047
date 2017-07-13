.class public Lcom/android/exsettings/IccLockSettings;
.super Lcom/android/exsettings/InstrumentedPreferenceActivity;
.source "IccLockSettings.java"

# interfaces
.implements Lcom/android/exsettings/EditPinPreference$OnPinEnteredListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exsettings/IccLockSettings$1;,
        Lcom/android/exsettings/IccLockSettings$2;
    }
.end annotation


# instance fields
.field private mDialogState:I

.field private mError:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mNewPin:Ljava/lang/String;

.field private mOldPin:Ljava/lang/String;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPin:Ljava/lang/String;

.field private mPinDialog:Lcom/android/exsettings/EditPinPreference;

.field private mPinToggle:Landroid/preference/SwitchPreference;

.field private mRes:Landroid/content/res/Resources;

.field private final mSimStateReceiver:Landroid/content/BroadcastReceiver;

.field private mToState:Z


# direct methods
.method static synthetic -get0(Lcom/android/exsettings/IccLockSettings;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/IccLockSettings;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/exsettings/IccLockSettings;ZI)V
    .locals 0
    .param p1, "success"    # Z
    .param p2, "attemptsRemaining"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/exsettings/IccLockSettings;->iccLockChanged(ZI)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/exsettings/IccLockSettings;ZI)V
    .locals 0
    .param p1, "success"    # Z
    .param p2, "attemptsRemaining"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/exsettings/IccLockSettings;->iccPinChanged(ZI)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/exsettings/IccLockSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/exsettings/IccLockSettings;->updatePreferences()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/exsettings/InstrumentedPreferenceActivity;-><init>()V

    .line 92
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/exsettings/IccLockSettings;->mDialogState:I

    .line 114
    new-instance v0, Lcom/android/exsettings/IccLockSettings$1;

    invoke-direct {v0, p0}, Lcom/android/exsettings/IccLockSettings$1;-><init>(Lcom/android/exsettings/IccLockSettings;)V

    iput-object v0, p0, Lcom/android/exsettings/IccLockSettings;->mHandler:Landroid/os/Handler;

    .line 133
    new-instance v0, Lcom/android/exsettings/IccLockSettings$2;

    invoke-direct {v0, p0}, Lcom/android/exsettings/IccLockSettings$2;-><init>(Lcom/android/exsettings/IccLockSettings;)V

    iput-object v0, p0, Lcom/android/exsettings/IccLockSettings;->mSimStateReceiver:Landroid/content/BroadcastReceiver;

    .line 57
    return-void
.end method

.method private getPinPasswordErrorMessage(I)Ljava/lang/String;
    .locals 5
    .param p1, "attemptsRemaining"    # I

    .prologue
    const/4 v4, 0x0

    .line 446
    if-nez p1, :cond_0

    .line 447
    iget-object v1, p0, Lcom/android/exsettings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f0c083a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 455
    .local v0, "displayMessage":Ljava/lang/String;
    :goto_0
    const-string/jumbo v1, "IccLockSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getPinPasswordErrorMessage: attemptsRemaining="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 456
    const-string/jumbo v3, " displayMessage="

    .line 455
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    return-object v0

    .line 448
    .end local v0    # "displayMessage":Ljava/lang/String;
    :cond_0
    if-lez p1, :cond_1

    .line 449
    iget-object v1, p0, Lcom/android/exsettings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 451
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    .line 450
    const v3, 0x7f11000c

    .line 449
    invoke-virtual {v1, v3, p1, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "displayMessage":Ljava/lang/String;
    goto :goto_0

    .line 453
    .end local v0    # "displayMessage":Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/android/exsettings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f0c083b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "displayMessage":Ljava/lang/String;
    goto :goto_0
.end method

.method private iccLockChanged(ZI)V
    .locals 3
    .param p1, "success"    # Z
    .param p2, "attemptsRemaining"    # I

    .prologue
    const/4 v2, 0x1

    .line 413
    if-eqz p1, :cond_0

    .line 414
    iget-object v0, p0, Lcom/android/exsettings/IccLockSettings;->mPinToggle:Landroid/preference/SwitchPreference;

    iget-boolean v1, p0, Lcom/android/exsettings/IccLockSettings;->mToState:Z

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 419
    :goto_0
    iget-object v0, p0, Lcom/android/exsettings/IccLockSettings;->mPinToggle:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 420
    invoke-direct {p0}, Lcom/android/exsettings/IccLockSettings;->resetDialogState()V

    .line 412
    return-void

    .line 416
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/exsettings/IccLockSettings;->getPinPasswordErrorMessage(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private iccPinChanged(ZI)V
    .locals 2
    .param p1, "success"    # Z
    .param p2, "attemptsRemaining"    # I

    .prologue
    .line 424
    if-nez p1, :cond_0

    .line 425
    invoke-direct {p0, p2}, Lcom/android/exsettings/IccLockSettings;->getPinPasswordErrorMessage(I)Ljava/lang/String;

    move-result-object v0

    .line 426
    const/4 v1, 0x1

    .line 425
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 434
    :goto_0
    invoke-direct {p0}, Lcom/android/exsettings/IccLockSettings;->resetDialogState()V

    .line 423
    return-void

    .line 429
    :cond_0
    iget-object v0, p0, Lcom/android/exsettings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f0c0830

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 430
    const/4 v1, 0x0

    .line 429
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private reasonablePin(Ljava/lang/String;)Z
    .locals 2
    .param p1, "pin"    # Ljava/lang/String;

    .prologue
    .line 461
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_1

    .line 462
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 461
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x8

    if-gt v0, v1, :cond_0

    .line 464
    const/4 v0, 0x1

    return v0
.end method

.method private resetDialogState()V
    .locals 1

    .prologue
    .line 469
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/exsettings/IccLockSettings;->mError:Ljava/lang/String;

    .line 470
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/exsettings/IccLockSettings;->mDialogState:I

    .line 471
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/exsettings/IccLockSettings;->mPin:Ljava/lang/String;

    .line 472
    invoke-direct {p0}, Lcom/android/exsettings/IccLockSettings;->setDialogValues()V

    .line 473
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/exsettings/IccLockSettings;->mDialogState:I

    .line 468
    return-void
.end method

.method private setDialogValues()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const v3, 0x7f0c082c

    .line 315
    iget-object v1, p0, Lcom/android/exsettings/IccLockSettings;->mPinDialog:Lcom/android/exsettings/EditPinPreference;

    iget-object v2, p0, Lcom/android/exsettings/IccLockSettings;->mPin:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/exsettings/EditPinPreference;->setText(Ljava/lang/String;)V

    .line 316
    const-string/jumbo v0, ""

    .line 317
    .local v0, "message":Ljava/lang/String;
    iget v1, p0, Lcom/android/exsettings/IccLockSettings;->mDialogState:I

    packed-switch v1, :pswitch_data_0

    .line 337
    :goto_0
    iget-object v1, p0, Lcom/android/exsettings/IccLockSettings;->mError:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 338
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/exsettings/IccLockSettings;->mError:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 339
    iput-object v4, p0, Lcom/android/exsettings/IccLockSettings;->mError:Ljava/lang/String;

    .line 341
    :cond_0
    iget-object v1, p0, Lcom/android/exsettings/IccLockSettings;->mPinDialog:Lcom/android/exsettings/EditPinPreference;

    invoke-virtual {v1, v0}, Lcom/android/exsettings/EditPinPreference;->setDialogMessage(Ljava/lang/CharSequence;)V

    .line 314
    return-void

    .line 319
    :pswitch_0
    iget-object v1, p0, Lcom/android/exsettings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f0c0826

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 320
    iget-object v2, p0, Lcom/android/exsettings/IccLockSettings;->mPinDialog:Lcom/android/exsettings/EditPinPreference;

    iget-boolean v1, p0, Lcom/android/exsettings/IccLockSettings;->mToState:Z

    if-eqz v1, :cond_1

    .line 321
    iget-object v1, p0, Lcom/android/exsettings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f0c0827

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 320
    :goto_1
    invoke-virtual {v2, v1}, Lcom/android/exsettings/EditPinPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 322
    :cond_1
    iget-object v1, p0, Lcom/android/exsettings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f0c0828

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 325
    :pswitch_1
    iget-object v1, p0, Lcom/android/exsettings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f0c0829

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 326
    iget-object v1, p0, Lcom/android/exsettings/IccLockSettings;->mPinDialog:Lcom/android/exsettings/EditPinPreference;

    iget-object v2, p0, Lcom/android/exsettings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/exsettings/EditPinPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 329
    :pswitch_2
    iget-object v1, p0, Lcom/android/exsettings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f0c082a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 330
    iget-object v1, p0, Lcom/android/exsettings/IccLockSettings;->mPinDialog:Lcom/android/exsettings/EditPinPreference;

    iget-object v2, p0, Lcom/android/exsettings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/exsettings/EditPinPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 333
    :pswitch_3
    iget-object v1, p0, Lcom/android/exsettings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f0c082b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 334
    iget-object v1, p0, Lcom/android/exsettings/IccLockSettings;->mPinDialog:Lcom/android/exsettings/EditPinPreference;

    iget-object v2, p0, Lcom/android/exsettings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/exsettings/EditPinPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 317
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private showPinDialog()V
    .locals 1

    .prologue
    .line 306
    iget v0, p0, Lcom/android/exsettings/IccLockSettings;->mDialogState:I

    if-nez v0, :cond_0

    .line 307
    return-void

    .line 309
    :cond_0
    invoke-direct {p0}, Lcom/android/exsettings/IccLockSettings;->setDialogValues()V

    .line 311
    iget-object v0, p0, Lcom/android/exsettings/IccLockSettings;->mPinDialog:Lcom/android/exsettings/EditPinPreference;

    invoke-virtual {v0}, Lcom/android/exsettings/EditPinPreference;->showPinDialog()V

    .line 305
    return-void
.end method

.method private tryChangeIccLockState()V
    .locals 4

    .prologue
    .line 406
    iget-object v1, p0, Lcom/android/exsettings/IccLockSettings;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x64

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 407
    .local v0, "callback":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/exsettings/IccLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/exsettings/IccLockSettings;->mToState:Z

    iget-object v3, p0, Lcom/android/exsettings/IccLockSettings;->mPin:Ljava/lang/String;

    invoke-interface {v1, v2, v3, v0}, Lcom/android/internal/telephony/IccCard;->setIccLockEnabled(ZLjava/lang/String;Landroid/os/Message;)V

    .line 409
    iget-object v1, p0, Lcom/android/exsettings/IccLockSettings;->mPinToggle:Landroid/preference/SwitchPreference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 403
    return-void
.end method

.method private tryChangePin()V
    .locals 4

    .prologue
    .line 438
    iget-object v1, p0, Lcom/android/exsettings/IccLockSettings;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x65

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 439
    .local v0, "callback":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/exsettings/IccLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    iget-object v2, p0, Lcom/android/exsettings/IccLockSettings;->mOldPin:Ljava/lang/String;

    .line 440
    iget-object v3, p0, Lcom/android/exsettings/IccLockSettings;->mNewPin:Ljava/lang/String;

    .line 439
    invoke-interface {v1, v2, v3, v0}, Lcom/android/internal/telephony/IccCard;->changeIccLockPassword(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 437
    return-void
.end method

.method private updatePreferences()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 226
    iget-object v0, p0, Lcom/android/exsettings/IccLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v0, :cond_1

    .line 227
    iget-object v0, p0, Lcom/android/exsettings/IccLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/IccCard;->getState()Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v0, v1, :cond_0

    .line 230
    iget-object v0, p0, Lcom/android/exsettings/IccLockSettings;->mPinToggle:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 231
    iget-object v0, p0, Lcom/android/exsettings/IccLockSettings;->mPinDialog:Lcom/android/exsettings/EditPinPreference;

    invoke-virtual {v0, v2}, Lcom/android/exsettings/EditPinPreference;->setEnabled(Z)V

    .line 236
    :goto_0
    iget-object v0, p0, Lcom/android/exsettings/IccLockSettings;->mPinToggle:Landroid/preference/SwitchPreference;

    iget-object v1, p0, Lcom/android/exsettings/IccLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/IccCard;->getIccLockEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 225
    :goto_1
    return-void

    .line 233
    :cond_0
    iget-object v0, p0, Lcom/android/exsettings/IccLockSettings;->mPinToggle:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v3}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 234
    iget-object v0, p0, Lcom/android/exsettings/IccLockSettings;->mPinDialog:Lcom/android/exsettings/EditPinPreference;

    invoke-virtual {v0, v3}, Lcom/android/exsettings/EditPinPreference;->setEnabled(Z)V

    goto :goto_0

    .line 238
    :cond_1
    iget-object v0, p0, Lcom/android/exsettings/IccLockSettings;->mPinDialog:Lcom/android/exsettings/EditPinPreference;

    invoke-virtual {v0, v2}, Lcom/android/exsettings/EditPinPreference;->setEnabled(Z)V

    .line 239
    iget-object v0, p0, Lcom/android/exsettings/IccLockSettings;->mPinToggle:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_1
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 245
    const/16 v0, 0x38

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 157
    invoke-super {p0, p1}, Lcom/android/exsettings/InstrumentedPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 158
    invoke-virtual {p0}, Lcom/android/exsettings/IccLockSettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 160
    .local v1, "context":Landroid/content/Context;
    const-string/jumbo v7, "phone"

    invoke-virtual {v1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/TelephonyManager;

    .line 161
    .local v6, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v3

    .line 163
    .local v3, "numSims":I
    invoke-static {}, Lcom/android/exsettings/Utils;->isMonkeyRunning()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 164
    invoke-virtual {p0}, Lcom/android/exsettings/IccLockSettings;->finish()V

    .line 165
    return-void

    .line 168
    :cond_0
    const v7, 0x7f08005a

    invoke-virtual {p0, v7}, Lcom/android/exsettings/IccLockSettings;->addPreferencesFromResource(I)V

    .line 170
    const-string/jumbo v7, "sim_pin"

    invoke-virtual {p0, v7}, Lcom/android/exsettings/IccLockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Lcom/android/exsettings/EditPinPreference;

    iput-object v7, p0, Lcom/android/exsettings/IccLockSettings;->mPinDialog:Lcom/android/exsettings/EditPinPreference;

    .line 171
    const-string/jumbo v7, "sim_toggle"

    invoke-virtual {p0, v7}, Lcom/android/exsettings/IccLockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/SwitchPreference;

    iput-object v7, p0, Lcom/android/exsettings/IccLockSettings;->mPinToggle:Landroid/preference/SwitchPreference;

    .line 172
    if-eqz p1, :cond_1

    const-string/jumbo v7, "dialogState"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 173
    const-string/jumbo v7, "dialogState"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Lcom/android/exsettings/IccLockSettings;->mDialogState:I

    .line 174
    const-string/jumbo v7, "dialogPin"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/exsettings/IccLockSettings;->mPin:Ljava/lang/String;

    .line 175
    const-string/jumbo v7, "dialogError"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/exsettings/IccLockSettings;->mError:Ljava/lang/String;

    .line 176
    const-string/jumbo v7, "enableState"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/exsettings/IccLockSettings;->mToState:Z

    .line 179
    iget v7, p0, Lcom/android/exsettings/IccLockSettings;->mDialogState:I

    packed-switch v7, :pswitch_data_0

    .line 196
    :cond_1
    :goto_0
    iget-object v7, p0, Lcom/android/exsettings/IccLockSettings;->mPinDialog:Lcom/android/exsettings/EditPinPreference;

    invoke-virtual {v7, p0}, Lcom/android/exsettings/EditPinPreference;->setOnPinEnteredListener(Lcom/android/exsettings/EditPinPreference$OnPinEnteredListener;)V

    .line 199
    invoke-virtual {p0}, Lcom/android/exsettings/IccLockSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceScreen;->setPersistent(Z)V

    .line 201
    invoke-virtual {p0}, Lcom/android/exsettings/IccLockSettings;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 202
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/exsettings/IccLockSettings;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 203
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_2

    .line 204
    const/4 v7, 0x1

    invoke-virtual {v0, v7}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 205
    const-string/jumbo v7, "sub_display_name"

    invoke-virtual {v2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 208
    :cond_2
    const-string/jumbo v7, "slot_id"

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubId()I

    move-result v8

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 209
    .local v5, "subId":I
    invoke-static {v5}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v4

    .line 210
    .local v4, "phoneId":I
    invoke-static {v4}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v7

    iput-object v7, p0, Lcom/android/exsettings/IccLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 211
    invoke-virtual {p0}, Lcom/android/exsettings/IccLockSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    iput-object v7, p0, Lcom/android/exsettings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    .line 212
    invoke-direct {p0}, Lcom/android/exsettings/IccLockSettings;->updatePreferences()V

    .line 156
    return-void

    .line 181
    .end local v0    # "actionBar":Landroid/app/ActionBar;
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v4    # "phoneId":I
    .end local v5    # "subId":I
    :pswitch_0
    const-string/jumbo v7, "oldPinCode"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/exsettings/IccLockSettings;->mOldPin:Ljava/lang/String;

    goto :goto_0

    .line 185
    :pswitch_1
    const-string/jumbo v7, "oldPinCode"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/exsettings/IccLockSettings;->mOldPin:Ljava/lang/String;

    .line 186
    const-string/jumbo v7, "newPinCode"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/exsettings/IccLockSettings;->mNewPin:Ljava/lang/String;

    goto :goto_0

    .line 179
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 217
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 218
    invoke-virtual {p0}, Lcom/android/exsettings/IccLockSettings;->finish()V

    .line 219
    const/4 v0, 0x1

    return v0

    .line 221
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 267
    invoke-super {p0}, Lcom/android/exsettings/InstrumentedPreferenceActivity;->onPause()V

    .line 268
    iget-object v0, p0, Lcom/android/exsettings/IccLockSettings;->mSimStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/exsettings/IccLockSettings;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 266
    return-void
.end method

.method public onPinEntered(Lcom/android/exsettings/EditPinPreference;Z)V
    .locals 4
    .param p1, "preference"    # Lcom/android/exsettings/EditPinPreference;
    .param p2, "positiveResult"    # Z

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x0

    .line 345
    if-nez p2, :cond_0

    .line 346
    invoke-direct {p0}, Lcom/android/exsettings/IccLockSettings;->resetDialogState()V

    .line 347
    return-void

    .line 350
    :cond_0
    invoke-virtual {p1}, Lcom/android/exsettings/EditPinPreference;->getText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/IccLockSettings;->mPin:Ljava/lang/String;

    .line 351
    iget-object v0, p0, Lcom/android/exsettings/IccLockSettings;->mPin:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/exsettings/IccLockSettings;->reasonablePin(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 353
    iget-object v0, p0, Lcom/android/exsettings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f0c082d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/IccLockSettings;->mError:Ljava/lang/String;

    .line 354
    invoke-direct {p0}, Lcom/android/exsettings/IccLockSettings;->showPinDialog()V

    .line 355
    return-void

    .line 357
    :cond_1
    iget v0, p0, Lcom/android/exsettings/IccLockSettings;->mDialogState:I

    packed-switch v0, :pswitch_data_0

    .line 344
    :goto_0
    return-void

    .line 359
    :pswitch_0
    invoke-direct {p0}, Lcom/android/exsettings/IccLockSettings;->tryChangeIccLockState()V

    goto :goto_0

    .line 362
    :pswitch_1
    iget-object v0, p0, Lcom/android/exsettings/IccLockSettings;->mPin:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/exsettings/IccLockSettings;->mOldPin:Ljava/lang/String;

    .line 363
    iput v3, p0, Lcom/android/exsettings/IccLockSettings;->mDialogState:I

    .line 364
    iput-object v2, p0, Lcom/android/exsettings/IccLockSettings;->mError:Ljava/lang/String;

    .line 365
    iput-object v2, p0, Lcom/android/exsettings/IccLockSettings;->mPin:Ljava/lang/String;

    .line 366
    invoke-direct {p0}, Lcom/android/exsettings/IccLockSettings;->showPinDialog()V

    goto :goto_0

    .line 369
    :pswitch_2
    iget-object v0, p0, Lcom/android/exsettings/IccLockSettings;->mPin:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/exsettings/IccLockSettings;->mNewPin:Ljava/lang/String;

    .line 370
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/exsettings/IccLockSettings;->mDialogState:I

    .line 371
    iput-object v2, p0, Lcom/android/exsettings/IccLockSettings;->mPin:Ljava/lang/String;

    .line 372
    invoke-direct {p0}, Lcom/android/exsettings/IccLockSettings;->showPinDialog()V

    goto :goto_0

    .line 375
    :pswitch_3
    iget-object v0, p0, Lcom/android/exsettings/IccLockSettings;->mPin:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/exsettings/IccLockSettings;->mNewPin:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 376
    iget-object v0, p0, Lcom/android/exsettings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f0c082e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/IccLockSettings;->mError:Ljava/lang/String;

    .line 377
    iput v3, p0, Lcom/android/exsettings/IccLockSettings;->mDialogState:I

    .line 378
    iput-object v2, p0, Lcom/android/exsettings/IccLockSettings;->mPin:Ljava/lang/String;

    .line 379
    invoke-direct {p0}, Lcom/android/exsettings/IccLockSettings;->showPinDialog()V

    goto :goto_0

    .line 381
    :cond_2
    iput-object v2, p0, Lcom/android/exsettings/IccLockSettings;->mError:Ljava/lang/String;

    .line 382
    invoke-direct {p0}, Lcom/android/exsettings/IccLockSettings;->tryChangePin()V

    goto :goto_0

    .line 357
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 389
    iget-object v2, p0, Lcom/android/exsettings/IccLockSettings;->mPinToggle:Landroid/preference/SwitchPreference;

    if-ne p2, v2, :cond_2

    .line 391
    iget-object v2, p0, Lcom/android/exsettings/IccLockSettings;->mPinToggle:Landroid/preference/SwitchPreference;

    invoke-virtual {v2}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/exsettings/IccLockSettings;->mToState:Z

    .line 393
    iget-object v2, p0, Lcom/android/exsettings/IccLockSettings;->mPinToggle:Landroid/preference/SwitchPreference;

    iget-boolean v3, p0, Lcom/android/exsettings/IccLockSettings;->mToState:Z

    if-eqz v3, :cond_1

    :goto_0
    invoke-virtual {v2, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 394
    iput v1, p0, Lcom/android/exsettings/IccLockSettings;->mDialogState:I

    .line 395
    invoke-direct {p0}, Lcom/android/exsettings/IccLockSettings;->showPinDialog()V

    .line 400
    :cond_0
    return v1

    :cond_1
    move v0, v1

    .line 393
    goto :goto_0

    .line 396
    :cond_2
    iget-object v2, p0, Lcom/android/exsettings/IccLockSettings;->mPinDialog:Lcom/android/exsettings/EditPinPreference;

    if-ne p2, v2, :cond_0

    .line 397
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/exsettings/IccLockSettings;->mDialogState:I

    .line 398
    return v0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 250
    invoke-super {p0}, Lcom/android/exsettings/InstrumentedPreferenceActivity;->onResume()V

    .line 254
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 255
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/exsettings/IccLockSettings;->mSimStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/exsettings/IccLockSettings;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 257
    iget v1, p0, Lcom/android/exsettings/IccLockSettings;->mDialogState:I

    if-eqz v1, :cond_0

    .line 258
    invoke-direct {p0}, Lcom/android/exsettings/IccLockSettings;->showPinDialog()V

    .line 249
    :goto_0
    return-void

    .line 261
    :cond_0
    invoke-direct {p0}, Lcom/android/exsettings/IccLockSettings;->resetDialogState()V

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "out"    # Landroid/os/Bundle;

    .prologue
    .line 278
    iget-object v0, p0, Lcom/android/exsettings/IccLockSettings;->mPinDialog:Lcom/android/exsettings/EditPinPreference;

    invoke-virtual {v0}, Lcom/android/exsettings/EditPinPreference;->isDialogOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 279
    const-string/jumbo v0, "dialogState"

    iget v1, p0, Lcom/android/exsettings/IccLockSettings;->mDialogState:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 280
    const-string/jumbo v0, "dialogPin"

    iget-object v1, p0, Lcom/android/exsettings/IccLockSettings;->mPinDialog:Lcom/android/exsettings/EditPinPreference;

    invoke-virtual {v1}, Lcom/android/exsettings/EditPinPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    const-string/jumbo v0, "dialogError"

    iget-object v1, p0, Lcom/android/exsettings/IccLockSettings;->mError:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    const-string/jumbo v0, "enableState"

    iget-boolean v1, p0, Lcom/android/exsettings/IccLockSettings;->mToState:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 285
    iget v0, p0, Lcom/android/exsettings/IccLockSettings;->mDialogState:I

    packed-switch v0, :pswitch_data_0

    .line 272
    :goto_0
    return-void

    .line 287
    :pswitch_0
    const-string/jumbo v0, "oldPinCode"

    iget-object v1, p0, Lcom/android/exsettings/IccLockSettings;->mOldPin:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 291
    :pswitch_1
    const-string/jumbo v0, "oldPinCode"

    iget-object v1, p0, Lcom/android/exsettings/IccLockSettings;->mOldPin:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    const-string/jumbo v0, "newPinCode"

    iget-object v1, p0, Lcom/android/exsettings/IccLockSettings;->mNewPin:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 301
    :cond_0
    invoke-super {p0, p1}, Lcom/android/exsettings/InstrumentedPreferenceActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    goto :goto_0

    .line 285
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
