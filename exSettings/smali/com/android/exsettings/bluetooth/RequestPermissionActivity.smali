.class public Lcom/android/exsettings/bluetooth/RequestPermissionActivity;
.super Landroid/app/Activity;
.source "RequestPermissionActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exsettings/bluetooth/RequestPermissionActivity$1;
    }
.end annotation


# instance fields
.field private mDialog:Landroid/app/AlertDialog;

.field private mEnableOnly:Z

.field private mLocalAdapter:Lcom/android/exsettingslib/bluetooth/LocalBluetoothAdapter;

.field private mNeededToEnableBluetooth:Z

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mTimeout:I

.field private mUserConfirmed:Z


# direct methods
.method static synthetic -get0(Lcom/android/exsettings/bluetooth/RequestPermissionActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/exsettings/bluetooth/RequestPermissionActivity;->mNeededToEnableBluetooth:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/exsettings/bluetooth/RequestPermissionActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/exsettings/bluetooth/RequestPermissionActivity;->mUserConfirmed:Z

    return v0
.end method

.method static synthetic -wrap0(Lcom/android/exsettings/bluetooth/RequestPermissionActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/exsettings/bluetooth/RequestPermissionActivity;->proceedAndFinish()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 58
    const/16 v0, 0x78

    iput v0, p0, Lcom/android/exsettings/bluetooth/RequestPermissionActivity;->mTimeout:I

    .line 77
    new-instance v0, Lcom/android/exsettings/bluetooth/RequestPermissionActivity$1;

    invoke-direct {v0, p0}, Lcom/android/exsettings/bluetooth/RequestPermissionActivity$1;-><init>(Lcom/android/exsettings/bluetooth/RequestPermissionActivity;)V

    iput-object v0, p0, Lcom/android/exsettings/bluetooth/RequestPermissionActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 40
    return-void
.end method

.method private createDialog()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 154
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 156
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    iget-boolean v1, p0, Lcom/android/exsettings/bluetooth/RequestPermissionActivity;->mNeededToEnableBluetooth:Z

    if-eqz v1, :cond_1

    .line 159
    const v1, 0x7f0c056f

    invoke-virtual {p0, v1}, Lcom/android/exsettings/bluetooth/RequestPermissionActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 160
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 175
    :goto_0
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/exsettings/bluetooth/RequestPermissionActivity;->mDialog:Landroid/app/AlertDialog;

    .line 176
    iget-object v1, p0, Lcom/android/exsettings/bluetooth/RequestPermissionActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 178
    invoke-virtual {p0}, Lcom/android/exsettings/bluetooth/RequestPermissionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100005

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 180
    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-virtual {p0, v1, v2}, Lcom/android/exsettings/bluetooth/RequestPermissionActivity;->onClick(Landroid/content/DialogInterface;I)V

    .line 153
    :cond_0
    return-void

    .line 164
    :cond_1
    iget v1, p0, Lcom/android/exsettings/bluetooth/RequestPermissionActivity;->mTimeout:I

    if-nez v1, :cond_2

    .line 166
    const v1, 0x7f0c0569

    invoke-virtual {p0, v1}, Lcom/android/exsettings/bluetooth/RequestPermissionActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 165
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 171
    :goto_1
    const v1, 0x7f0c0506

    invoke-virtual {p0, v1}, Lcom/android/exsettings/bluetooth/RequestPermissionActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 172
    const v1, 0x7f0c0507

    invoke-virtual {p0, v1}, Lcom/android/exsettings/bluetooth/RequestPermissionActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 169
    :cond_2
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lcom/android/exsettings/bluetooth/RequestPermissionActivity;->mTimeout:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    const v2, 0x7f0c0568

    invoke-virtual {p0, v2, v1}, Lcom/android/exsettings/bluetooth/RequestPermissionActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 168
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_1
.end method

.method private parseIntent()Z
    .locals 8

    .prologue
    const/16 v7, 0x78

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 260
    invoke-virtual {p0}, Lcom/android/exsettings/bluetooth/RequestPermissionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 261
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "android.bluetooth.adapter.action.REQUEST_ENABLE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 262
    iput-boolean v6, p0, Lcom/android/exsettings/bluetooth/RequestPermissionActivity;->mEnableOnly:Z

    .line 281
    :cond_0
    :goto_0
    invoke-static {p0}, Lcom/android/exsettings/bluetooth/Utils;->getLocalBtManager(Landroid/content/Context;)Lcom/android/exsettingslib/bluetooth/LocalBluetoothManager;

    move-result-object v1

    .line 282
    .local v1, "manager":Lcom/android/exsettingslib/bluetooth/LocalBluetoothManager;
    if-nez v1, :cond_4

    .line 283
    const-string/jumbo v2, "RequestPermissionActivity"

    const-string/jumbo v3, "Error: there\'s a problem starting Bluetooth"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    invoke-virtual {p0, v5}, Lcom/android/exsettings/bluetooth/RequestPermissionActivity;->setResult(I)V

    .line 285
    return v6

    .line 263
    .end local v1    # "manager":Lcom/android/exsettingslib/bluetooth/LocalBluetoothManager;
    :cond_1
    if-eqz v0, :cond_3

    .line 264
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "android.bluetooth.adapter.action.REQUEST_DISCOVERABLE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 263
    if-eqz v2, :cond_3

    .line 265
    const-string/jumbo v2, "android.bluetooth.adapter.extra.DISCOVERABLE_DURATION"

    invoke-virtual {v0, v2, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/exsettings/bluetooth/RequestPermissionActivity;->mTimeout:I

    .line 268
    const-string/jumbo v2, "RequestPermissionActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Setting Bluetooth Discoverable Timeout = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/exsettings/bluetooth/RequestPermissionActivity;->mTimeout:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    iget v2, p0, Lcom/android/exsettings/bluetooth/RequestPermissionActivity;->mTimeout:I

    if-ltz v2, :cond_2

    iget v2, p0, Lcom/android/exsettings/bluetooth/RequestPermissionActivity;->mTimeout:I

    const/16 v3, 0xe10

    if-le v2, v3, :cond_0

    .line 271
    :cond_2
    iput v7, p0, Lcom/android/exsettings/bluetooth/RequestPermissionActivity;->mTimeout:I

    goto :goto_0

    .line 274
    :cond_3
    const-string/jumbo v2, "RequestPermissionActivity"

    const-string/jumbo v3, "Error: this activity may be started only with intent android.bluetooth.adapter.action.REQUEST_ENABLE or android.bluetooth.adapter.action.REQUEST_DISCOVERABLE"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    invoke-virtual {p0, v5}, Lcom/android/exsettings/bluetooth/RequestPermissionActivity;->setResult(I)V

    .line 278
    return v6

    .line 287
    .restart local v1    # "manager":Lcom/android/exsettingslib/bluetooth/LocalBluetoothManager;
    :cond_4
    invoke-virtual {v1}, Lcom/android/exsettingslib/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/exsettingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object v2

    iput-object v2, p0, Lcom/android/exsettings/bluetooth/RequestPermissionActivity;->mLocalAdapter:Lcom/android/exsettingslib/bluetooth/LocalBluetoothAdapter;

    .line 289
    return v5
.end method

.method private proceedAndFinish()V
    .locals 10

    .prologue
    .line 226
    iget-boolean v3, p0, Lcom/android/exsettings/bluetooth/RequestPermissionActivity;->mEnableOnly:Z

    if-eqz v3, :cond_2

    .line 228
    const/4 v2, -0x1

    .line 247
    .local v2, "returnCode":I
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/exsettings/bluetooth/RequestPermissionActivity;->mDialog:Landroid/app/AlertDialog;

    if-eqz v3, :cond_1

    .line 248
    iget-object v3, p0, Lcom/android/exsettings/bluetooth/RequestPermissionActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->dismiss()V

    .line 251
    :cond_1
    invoke-virtual {p0, v2}, Lcom/android/exsettings/bluetooth/RequestPermissionActivity;->setResult(I)V

    .line 252
    invoke-virtual {p0}, Lcom/android/exsettings/bluetooth/RequestPermissionActivity;->finish()V

    .line 223
    return-void

    .line 229
    .end local v2    # "returnCode":I
    :cond_2
    iget-object v3, p0, Lcom/android/exsettings/bluetooth/RequestPermissionActivity;->mLocalAdapter:Lcom/android/exsettingslib/bluetooth/LocalBluetoothAdapter;

    .line 230
    iget v4, p0, Lcom/android/exsettings/bluetooth/RequestPermissionActivity;->mTimeout:I

    const/16 v5, 0x17

    .line 229
    invoke-virtual {v3, v5, v4}, Lcom/android/exsettingslib/bluetooth/LocalBluetoothAdapter;->setScanMode(II)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 232
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget v3, p0, Lcom/android/exsettings/bluetooth/RequestPermissionActivity;->mTimeout:I

    int-to-long v6, v3

    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    add-long v0, v4, v6

    .line 233
    .local v0, "endTime":J
    invoke-static {p0, v0, v1}, Lcom/android/exsettings/bluetooth/LocalBluetoothPreferences;->persistDiscoverableEndTimestamp(Landroid/content/Context;J)V

    .line 235
    iget v3, p0, Lcom/android/exsettings/bluetooth/RequestPermissionActivity;->mTimeout:I

    if-lez v3, :cond_3

    .line 236
    invoke-static {p0, v0, v1}, Lcom/android/exsettingslib/bluetooth/BluetoothDiscoverableTimeoutReceiver;->setDiscoverableAlarm(Landroid/content/Context;J)V

    .line 238
    :cond_3
    iget v2, p0, Lcom/android/exsettings/bluetooth/RequestPermissionActivity;->mTimeout:I

    .line 240
    .restart local v2    # "returnCode":I
    const/4 v3, 0x1

    if-ge v2, v3, :cond_0

    .line 241
    const/4 v2, 0x1

    goto :goto_0

    .line 244
    .end local v0    # "endTime":J
    .end local v2    # "returnCode":I
    :cond_4
    const/4 v2, 0x0

    .restart local v2    # "returnCode":I
    goto :goto_0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x1

    .line 186
    if-eq p1, v1, :cond_0

    .line 187
    const-string/jumbo v0, "RequestPermissionActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unexpected onActivityResult "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/exsettings/bluetooth/RequestPermissionActivity;->setResult(I)V

    .line 189
    invoke-virtual {p0}, Lcom/android/exsettings/bluetooth/RequestPermissionActivity;->finish()V

    .line 190
    return-void

    .line 192
    :cond_0
    const/16 v0, -0x3e8

    if-eq p2, v0, :cond_1

    .line 193
    invoke-virtual {p0, p2}, Lcom/android/exsettings/bluetooth/RequestPermissionActivity;->setResult(I)V

    .line 194
    invoke-virtual {p0}, Lcom/android/exsettings/bluetooth/RequestPermissionActivity;->finish()V

    .line 195
    return-void

    .line 200
    :cond_1
    iput-boolean v1, p0, Lcom/android/exsettings/bluetooth/RequestPermissionActivity;->mUserConfirmed:Z

    .line 202
    iget-object v0, p0, Lcom/android/exsettings/bluetooth/RequestPermissionActivity;->mLocalAdapter:Lcom/android/exsettingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/exsettingslib/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_2

    .line 203
    invoke-direct {p0}, Lcom/android/exsettings/bluetooth/RequestPermissionActivity;->proceedAndFinish()V

    .line 185
    :goto_0
    return-void

    .line 206
    :cond_2
    invoke-direct {p0}, Lcom/android/exsettings/bluetooth/RequestPermissionActivity;->createDialog()V

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 302
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/exsettings/bluetooth/RequestPermissionActivity;->setResult(I)V

    .line 303
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 301
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 211
    packed-switch p2, :pswitch_data_0

    .line 210
    :goto_0
    return-void

    .line 213
    :pswitch_0
    invoke-direct {p0}, Lcom/android/exsettings/bluetooth/RequestPermissionActivity;->proceedAndFinish()V

    goto :goto_0

    .line 217
    :pswitch_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/exsettings/bluetooth/RequestPermissionActivity;->setResult(I)V

    .line 218
    invoke-virtual {p0}, Lcom/android/exsettings/bluetooth/RequestPermissionActivity;->finish()V

    goto :goto_0

    .line 211
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x1

    .line 98
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 101
    invoke-direct {p0}, Lcom/android/exsettings/bluetooth/RequestPermissionActivity;->parseIntent()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 102
    invoke-virtual {p0}, Lcom/android/exsettings/bluetooth/RequestPermissionActivity;->finish()V

    .line 103
    return-void

    .line 106
    :cond_0
    iget-object v2, p0, Lcom/android/exsettings/bluetooth/RequestPermissionActivity;->mLocalAdapter:Lcom/android/exsettingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v2}, Lcom/android/exsettingslib/bluetooth/LocalBluetoothAdapter;->getState()I

    move-result v0

    .line 108
    .local v0, "btState":I
    packed-switch v0, :pswitch_data_0

    .line 149
    const-string/jumbo v2, "RequestPermissionActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unknown adapter state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    :goto_0
    return-void

    .line 125
    :pswitch_0
    iget-object v2, p0, Lcom/android/exsettings/bluetooth/RequestPermissionActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 126
    new-instance v3, Landroid/content/IntentFilter;

    const-string/jumbo v4, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 125
    invoke-virtual {p0, v2, v3}, Lcom/android/exsettings/bluetooth/RequestPermissionActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 127
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 128
    .local v1, "intent":Landroid/content/Intent;
    const-class v2, Lcom/android/exsettings/bluetooth/RequestPermissionHelperActivity;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 129
    iget-boolean v2, p0, Lcom/android/exsettings/bluetooth/RequestPermissionActivity;->mEnableOnly:Z

    if-eqz v2, :cond_1

    .line 130
    const-string/jumbo v2, "com.android.settings.bluetooth.ACTION_INTERNAL_REQUEST_BT_ON"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 136
    :goto_1
    invoke-virtual {p0, v1, v5}, Lcom/android/exsettings/bluetooth/RequestPermissionActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 137
    iput-boolean v5, p0, Lcom/android/exsettings/bluetooth/RequestPermissionActivity;->mNeededToEnableBluetooth:Z

    goto :goto_0

    .line 132
    :cond_1
    const-string/jumbo v2, "com.android.settings.bluetooth.ACTION_INTERNAL_REQUEST_BT_ON_AND_DISCOVERABLE"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 134
    const-string/jumbo v2, "android.bluetooth.adapter.extra.DISCOVERABLE_DURATION"

    iget v3, p0, Lcom/android/exsettings/bluetooth/RequestPermissionActivity;->mTimeout:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1

    .line 140
    .end local v1    # "intent":Landroid/content/Intent;
    :pswitch_1
    iget-boolean v2, p0, Lcom/android/exsettings/bluetooth/RequestPermissionActivity;->mEnableOnly:Z

    if-eqz v2, :cond_2

    .line 142
    invoke-direct {p0}, Lcom/android/exsettings/bluetooth/RequestPermissionActivity;->proceedAndFinish()V

    goto :goto_0

    .line 145
    :cond_2
    invoke-direct {p0}, Lcom/android/exsettings/bluetooth/RequestPermissionActivity;->createDialog()V

    goto :goto_0

    .line 108
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 294
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 295
    iget-boolean v0, p0, Lcom/android/exsettings/bluetooth/RequestPermissionActivity;->mNeededToEnableBluetooth:Z

    if-eqz v0, :cond_0

    .line 296
    iget-object v0, p0, Lcom/android/exsettings/bluetooth/RequestPermissionActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/exsettings/bluetooth/RequestPermissionActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 293
    :cond_0
    return-void
.end method
