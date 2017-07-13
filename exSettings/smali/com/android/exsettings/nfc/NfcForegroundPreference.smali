.class public Lcom/android/exsettings/nfc/NfcForegroundPreference;
.super Lcom/android/exsettings/DropDownPreference;
.source "NfcForegroundPreference.java"

# interfaces
.implements Lcom/android/exsettings/DropDownPreference$Callback;
.implements Lcom/android/exsettings/nfc/PaymentBackend$Callback;


# instance fields
.field private final mPaymentBackend:Lcom/android/exsettings/nfc/PaymentBackend;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/exsettings/nfc/PaymentBackend;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "backend"    # Lcom/android/exsettings/nfc/PaymentBackend;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/android/exsettings/DropDownPreference;-><init>(Landroid/content/Context;)V

    .line 28
    iput-object p2, p0, Lcom/android/exsettings/nfc/NfcForegroundPreference;->mPaymentBackend:Lcom/android/exsettings/nfc/PaymentBackend;

    .line 29
    iget-object v0, p0, Lcom/android/exsettings/nfc/NfcForegroundPreference;->mPaymentBackend:Lcom/android/exsettings/nfc/PaymentBackend;

    invoke-virtual {v0, p0}, Lcom/android/exsettings/nfc/PaymentBackend;->registerCallback(Lcom/android/exsettings/nfc/PaymentBackend$Callback;)V

    .line 30
    invoke-virtual {p0, p0}, Lcom/android/exsettings/nfc/NfcForegroundPreference;->setCallback(Lcom/android/exsettings/DropDownPreference$Callback;)V

    .line 31
    invoke-virtual {p0}, Lcom/android/exsettings/nfc/NfcForegroundPreference;->refresh()V

    .line 26
    return-void
.end method


# virtual methods
.method public onItemSelected(ILjava/lang/Object;)Z
    .locals 2
    .param p1, "pos"    # I
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/exsettings/nfc/NfcForegroundPreference;->mPaymentBackend:Lcom/android/exsettings/nfc/PaymentBackend;

    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/exsettings/nfc/PaymentBackend;->setForegroundMode(Z)V

    .line 59
    const/4 v0, 0x1

    return v0
.end method

.method public onPaymentAppsChanged()V
    .locals 0

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/android/exsettings/nfc/NfcForegroundPreference;->refresh()V

    .line 35
    return-void
.end method

.method refresh()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 40
    iget-object v2, p0, Lcom/android/exsettings/nfc/NfcForegroundPreference;->mPaymentBackend:Lcom/android/exsettings/nfc/PaymentBackend;

    invoke-virtual {v2}, Lcom/android/exsettings/nfc/PaymentBackend;->getDefaultApp()Lcom/android/exsettings/nfc/PaymentBackend$PaymentAppInfo;

    move-result-object v0

    .line 41
    .local v0, "defaultApp":Lcom/android/exsettings/nfc/PaymentBackend$PaymentAppInfo;
    iget-object v2, p0, Lcom/android/exsettings/nfc/NfcForegroundPreference;->mPaymentBackend:Lcom/android/exsettings/nfc/PaymentBackend;

    invoke-virtual {v2}, Lcom/android/exsettings/nfc/PaymentBackend;->isForegroundMode()Z

    move-result v1

    .line 42
    .local v1, "foregroundMode":Z
    invoke-virtual {p0, v4}, Lcom/android/exsettings/nfc/NfcForegroundPreference;->setPersistent(Z)V

    .line 43
    invoke-virtual {p0}, Lcom/android/exsettings/nfc/NfcForegroundPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0c0dbe

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/exsettings/nfc/NfcForegroundPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 46
    invoke-virtual {p0}, Lcom/android/exsettings/nfc/NfcForegroundPreference;->clearItems()V

    .line 47
    invoke-virtual {p0}, Lcom/android/exsettings/nfc/NfcForegroundPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0c0dc0

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/android/exsettings/nfc/NfcForegroundPreference;->addItem(Ljava/lang/String;Ljava/lang/Object;)V

    .line 48
    invoke-virtual {p0}, Lcom/android/exsettings/nfc/NfcForegroundPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0c0dbf

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/android/exsettings/nfc/NfcForegroundPreference;->addItem(Ljava/lang/String;Ljava/lang/Object;)V

    .line 49
    if-eqz v1, :cond_0

    .line 50
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/exsettings/nfc/NfcForegroundPreference;->setSelectedValue(Ljava/lang/Object;)V

    .line 39
    :goto_0
    return-void

    .line 52
    :cond_0
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/exsettings/nfc/NfcForegroundPreference;->setSelectedValue(Ljava/lang/Object;)V

    goto :goto_0
.end method
