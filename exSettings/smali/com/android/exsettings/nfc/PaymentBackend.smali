.class public Lcom/android/exsettings/nfc/PaymentBackend;
.super Ljava/lang/Object;
.source "PaymentBackend.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exsettings/nfc/PaymentBackend$Callback;,
        Lcom/android/exsettings/nfc/PaymentBackend$PaymentAppInfo;,
        Lcom/android/exsettings/nfc/PaymentBackend$SettingsPackageMonitor;,
        Lcom/android/exsettings/nfc/PaymentBackend$1;
    }
.end annotation


# instance fields
.field private final mAdapter:Landroid/nfc/NfcAdapter;

.field private mAppInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/exsettings/nfc/PaymentBackend$PaymentAppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/exsettings/nfc/PaymentBackend$Callback;",
            ">;"
        }
    .end annotation
.end field

.field private final mCardEmuManager:Landroid/nfc/cardemulation/CardEmulation;

.field private final mContext:Landroid/content/Context;

.field private mDefaultAppInfo:Lcom/android/exsettings/nfc/PaymentBackend$PaymentAppInfo;

.field private final mHandler:Landroid/os/Handler;

.field private final mSettingsPackageMonitor:Lcom/android/internal/content/PackageMonitor;


# direct methods
.method static synthetic -get0(Lcom/android/exsettings/nfc/PaymentBackend;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/nfc/PaymentBackend;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Lcom/android/exsettings/nfc/PaymentBackend$SettingsPackageMonitor;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/exsettings/nfc/PaymentBackend$SettingsPackageMonitor;-><init>(Lcom/android/exsettings/nfc/PaymentBackend;Lcom/android/exsettings/nfc/PaymentBackend$SettingsPackageMonitor;)V

    iput-object v0, p0, Lcom/android/exsettings/nfc/PaymentBackend;->mSettingsPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/exsettings/nfc/PaymentBackend;->mCallbacks:Ljava/util/ArrayList;

    .line 187
    new-instance v0, Lcom/android/exsettings/nfc/PaymentBackend$1;

    invoke-direct {v0, p0}, Lcom/android/exsettings/nfc/PaymentBackend$1;-><init>(Lcom/android/exsettings/nfc/PaymentBackend;)V

    iput-object v0, p0, Lcom/android/exsettings/nfc/PaymentBackend;->mHandler:Landroid/os/Handler;

    .line 66
    iput-object p1, p0, Lcom/android/exsettings/nfc/PaymentBackend;->mContext:Landroid/content/Context;

    .line 68
    invoke-static {p1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/nfc/PaymentBackend;->mAdapter:Landroid/nfc/NfcAdapter;

    .line 69
    iget-object v0, p0, Lcom/android/exsettings/nfc/PaymentBackend;->mAdapter:Landroid/nfc/NfcAdapter;

    invoke-static {v0}, Landroid/nfc/cardemulation/CardEmulation;->getInstance(Landroid/nfc/NfcAdapter;)Landroid/nfc/cardemulation/CardEmulation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/nfc/PaymentBackend;->mCardEmuManager:Landroid/nfc/cardemulation/CardEmulation;

    .line 70
    invoke-virtual {p0}, Lcom/android/exsettings/nfc/PaymentBackend;->refresh()V

    .line 65
    return-void
.end method


# virtual methods
.method public getDefaultApp()Lcom/android/exsettings/nfc/PaymentBackend$PaymentAppInfo;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/exsettings/nfc/PaymentBackend;->mDefaultAppInfo:Lcom/android/exsettings/nfc/PaymentBackend$PaymentAppInfo;

    return-object v0
.end method

.method getDefaultPaymentApp()Landroid/content/ComponentName;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 171
    iget-object v1, p0, Lcom/android/exsettings/nfc/PaymentBackend;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 172
    const-string/jumbo v2, "nfc_payment_default_component"

    .line 171
    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 173
    .local v0, "componentString":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 174
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    return-object v1

    .line 176
    :cond_0
    return-object v3
.end method

.method public getPaymentAppInfos()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/exsettings/nfc/PaymentBackend$PaymentAppInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/exsettings/nfc/PaymentBackend;->mAppInfos:Ljava/util/ArrayList;

    return-object v0
.end method

.method isForegroundMode()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 158
    :try_start_0
    iget-object v2, p0, Lcom/android/exsettings/nfc/PaymentBackend;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 159
    const-string/jumbo v3, "nfc_payment_foreground"

    .line 158
    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 160
    :catch_0
    move-exception v0

    .line 161
    .local v0, "e":Landroid/provider/Settings$SettingNotFoundException;
    return v1
.end method

.method makeCallbacks()V
    .locals 3

    .prologue
    .line 138
    iget-object v2, p0, Lcom/android/exsettings/nfc/PaymentBackend;->mCallbacks:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "callback$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/exsettings/nfc/PaymentBackend$Callback;

    .line 139
    .local v0, "callback":Lcom/android/exsettings/nfc/PaymentBackend$Callback;
    invoke-interface {v0}, Lcom/android/exsettings/nfc/PaymentBackend$Callback;->onPaymentAppsChanged()V

    goto :goto_0

    .line 137
    .end local v0    # "callback":Lcom/android/exsettings/nfc/PaymentBackend$Callback;
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/exsettings/nfc/PaymentBackend;->mSettingsPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {v0}, Lcom/android/internal/content/PackageMonitor;->unregister()V

    .line 73
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/exsettings/nfc/PaymentBackend;->mSettingsPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    iget-object v1, p0, Lcom/android/exsettings/nfc/PaymentBackend;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/exsettings/nfc/PaymentBackend;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Z)V

    .line 77
    return-void
.end method

.method public refresh()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 82
    iget-object v9, p0, Lcom/android/exsettings/nfc/PaymentBackend;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 84
    .local v4, "pm":Landroid/content/pm/PackageManager;
    iget-object v9, p0, Lcom/android/exsettings/nfc/PaymentBackend;->mCardEmuManager:Landroid/nfc/cardemulation/CardEmulation;

    const-string/jumbo v10, "payment"

    invoke-virtual {v9, v10}, Landroid/nfc/cardemulation/CardEmulation;->getServices(Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    .line 85
    .local v7, "serviceInfos":Ljava/util/List;, "Ljava/util/List<Landroid/nfc/cardemulation/ApduServiceInfo;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 87
    .local v1, "appInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/exsettings/nfc/PaymentBackend$PaymentAppInfo;>;"
    if-nez v7, :cond_0

    .line 88
    invoke-virtual {p0}, Lcom/android/exsettings/nfc/PaymentBackend;->makeCallbacks()V

    .line 89
    return-void

    .line 92
    :cond_0
    invoke-virtual {p0}, Lcom/android/exsettings/nfc/PaymentBackend;->getDefaultPaymentApp()Landroid/content/ComponentName;

    move-result-object v2

    .line 93
    .local v2, "defaultAppName":Landroid/content/ComponentName;
    const/4 v3, 0x0

    .line 94
    .local v3, "foundDefaultApp":Lcom/android/exsettings/nfc/PaymentBackend$PaymentAppInfo;
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .end local v3    # "foundDefaultApp":Lcom/android/exsettings/nfc/PaymentBackend$PaymentAppInfo;
    .local v6, "service$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/nfc/cardemulation/ApduServiceInfo;

    .line 95
    .local v5, "service":Landroid/nfc/cardemulation/ApduServiceInfo;
    new-instance v0, Lcom/android/exsettings/nfc/PaymentBackend$PaymentAppInfo;

    invoke-direct {v0}, Lcom/android/exsettings/nfc/PaymentBackend$PaymentAppInfo;-><init>()V

    .line 96
    .local v0, "appInfo":Lcom/android/exsettings/nfc/PaymentBackend$PaymentAppInfo;
    invoke-virtual {v5, v4}, Landroid/nfc/cardemulation/ApduServiceInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v9

    iput-object v9, v0, Lcom/android/exsettings/nfc/PaymentBackend$PaymentAppInfo;->label:Ljava/lang/CharSequence;

    .line 97
    iget-object v9, v0, Lcom/android/exsettings/nfc/PaymentBackend$PaymentAppInfo;->label:Ljava/lang/CharSequence;

    if-nez v9, :cond_1

    .line 98
    invoke-virtual {v5, v4}, Landroid/nfc/cardemulation/ApduServiceInfo;->loadAppLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v9

    iput-object v9, v0, Lcom/android/exsettings/nfc/PaymentBackend$PaymentAppInfo;->label:Ljava/lang/CharSequence;

    .line 100
    :cond_1
    invoke-virtual {v5}, Landroid/nfc/cardemulation/ApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v9

    invoke-virtual {v9, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v9

    iput-boolean v9, v0, Lcom/android/exsettings/nfc/PaymentBackend$PaymentAppInfo;->isDefault:Z

    .line 101
    iget-boolean v9, v0, Lcom/android/exsettings/nfc/PaymentBackend$PaymentAppInfo;->isDefault:Z

    if-eqz v9, :cond_2

    .line 102
    move-object v3, v0

    .line 104
    :cond_2
    invoke-virtual {v5}, Landroid/nfc/cardemulation/ApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v9

    iput-object v9, v0, Lcom/android/exsettings/nfc/PaymentBackend$PaymentAppInfo;->componentName:Landroid/content/ComponentName;

    .line 105
    invoke-virtual {v5}, Landroid/nfc/cardemulation/ApduServiceInfo;->getSettingsActivityName()Ljava/lang/String;

    move-result-object v8

    .line 106
    .local v8, "settingsActivity":Ljava/lang/String;
    if-eqz v8, :cond_3

    .line 107
    new-instance v9, Landroid/content/ComponentName;

    iget-object v10, v0, Lcom/android/exsettings/nfc/PaymentBackend$PaymentAppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v10}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v9, v0, Lcom/android/exsettings/nfc/PaymentBackend$PaymentAppInfo;->settingsComponent:Landroid/content/ComponentName;

    .line 112
    :goto_1
    invoke-virtual {v5}, Landroid/nfc/cardemulation/ApduServiceInfo;->getDescription()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v0, Lcom/android/exsettings/nfc/PaymentBackend$PaymentAppInfo;->description:Ljava/lang/CharSequence;

    .line 113
    invoke-virtual {v5, v4}, Landroid/nfc/cardemulation/ApduServiceInfo;->loadBanner(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    iput-object v9, v0, Lcom/android/exsettings/nfc/PaymentBackend$PaymentAppInfo;->banner:Landroid/graphics/drawable/Drawable;

    .line 114
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 110
    :cond_3
    iput-object v11, v0, Lcom/android/exsettings/nfc/PaymentBackend$PaymentAppInfo;->settingsComponent:Landroid/content/ComponentName;

    goto :goto_1

    .line 116
    .end local v0    # "appInfo":Lcom/android/exsettings/nfc/PaymentBackend$PaymentAppInfo;
    .end local v5    # "service":Landroid/nfc/cardemulation/ApduServiceInfo;
    .end local v8    # "settingsActivity":Ljava/lang/String;
    :cond_4
    iput-object v1, p0, Lcom/android/exsettings/nfc/PaymentBackend;->mAppInfos:Ljava/util/ArrayList;

    .line 117
    iput-object v3, p0, Lcom/android/exsettings/nfc/PaymentBackend;->mDefaultAppInfo:Lcom/android/exsettings/nfc/PaymentBackend$PaymentAppInfo;

    .line 118
    invoke-virtual {p0}, Lcom/android/exsettings/nfc/PaymentBackend;->makeCallbacks()V

    .line 81
    return-void
.end method

.method public registerCallback(Lcom/android/exsettings/nfc/PaymentBackend$Callback;)V
    .locals 1
    .param p1, "callback"    # Lcom/android/exsettings/nfc/PaymentBackend$Callback;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/exsettings/nfc/PaymentBackend;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    return-void
.end method

.method public setDefaultPaymentApp(Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "app"    # Landroid/content/ComponentName;

    .prologue
    const/4 v0, 0x0

    .line 181
    iget-object v1, p0, Lcom/android/exsettings/nfc/PaymentBackend;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 182
    const-string/jumbo v2, "nfc_payment_default_component"

    .line 183
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    .line 181
    :cond_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 184
    invoke-virtual {p0}, Lcom/android/exsettings/nfc/PaymentBackend;->refresh()V

    .line 180
    return-void
.end method

.method setForegroundMode(Z)V
    .locals 3
    .param p1, "foreground"    # Z

    .prologue
    .line 166
    iget-object v0, p0, Lcom/android/exsettings/nfc/PaymentBackend;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 167
    const-string/jumbo v2, "nfc_payment_foreground"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 166
    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 165
    return-void

    .line 167
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
