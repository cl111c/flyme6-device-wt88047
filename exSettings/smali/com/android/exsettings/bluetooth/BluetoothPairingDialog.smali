.class public final Lcom/android/exsettings/bluetooth/BluetoothPairingDialog;
.super Lcom/android/internal/app/AlertActivity;
.source "BluetoothPairingDialog.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exsettings/bluetooth/BluetoothPairingDialog$1;
    }
.end annotation


# instance fields
.field private mBluetoothManager:Lcom/android/exsettingslib/bluetooth/LocalBluetoothManager;

.field private mCachedDeviceManager:Lcom/android/exsettingslib/bluetooth/CachedBluetoothDeviceManager;

.field private mDevice:Landroid/bluetooth/BluetoothDevice;

.field private mIsButtonPressed:Z

.field private mOkButton:Landroid/widget/Button;

.field private mPairingKey:Ljava/lang/String;

.field private mPairingView:Landroid/widget/EditText;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mType:I


# direct methods
.method static synthetic -get0(Lcom/android/exsettings/bluetooth/BluetoothPairingDialog;)Landroid/bluetooth/BluetoothDevice;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/bluetooth/BluetoothPairingDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    .line 75
    new-instance v0, Lcom/android/exsettings/bluetooth/BluetoothPairingDialog$1;

    invoke-direct {v0, p0}, Lcom/android/exsettings/bluetooth/BluetoothPairingDialog$1;-><init>(Lcom/android/exsettings/bluetooth/BluetoothPairingDialog;)V

    iput-object v0, p0, Lcom/android/exsettings/bluetooth/BluetoothPairingDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 55
    return-void
.end method

.method private createConfirmationDialog()V
    .locals 4

    .prologue
    .line 325
    iget-object v0, p0, Lcom/android/exsettings/bluetooth/BluetoothPairingDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 326
    .local v0, "p":Lcom/android/internal/app/AlertController$AlertParams;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 327
    iget-object v2, p0, Lcom/android/exsettings/bluetooth/BluetoothPairingDialog;->mCachedDeviceManager:Lcom/android/exsettingslib/bluetooth/CachedBluetoothDeviceManager;

    iget-object v3, p0, Lcom/android/exsettings/bluetooth/BluetoothPairingDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2, v3}, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDeviceManager;->getName(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 326
    const v2, 0x7f0c06a6

    invoke-virtual {p0, v2, v1}, Lcom/android/exsettings/bluetooth/BluetoothPairingDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 328
    invoke-direct {p0}, Lcom/android/exsettings/bluetooth/BluetoothPairingDialog;->createView()Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 329
    const v1, 0x7f0c0048

    invoke-virtual {p0, v1}, Lcom/android/exsettings/bluetooth/BluetoothPairingDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 330
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 331
    const v1, 0x7f0c004a

    invoke-virtual {p0, v1}, Lcom/android/exsettings/bluetooth/BluetoothPairingDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 332
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 333
    invoke-virtual {p0}, Lcom/android/exsettings/bluetooth/BluetoothPairingDialog;->setupAlert()V

    .line 324
    return-void
.end method

.method private createConsentDialog()V
    .locals 4

    .prologue
    .line 337
    iget-object v0, p0, Lcom/android/exsettings/bluetooth/BluetoothPairingDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 338
    .local v0, "p":Lcom/android/internal/app/AlertController$AlertParams;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 339
    iget-object v2, p0, Lcom/android/exsettings/bluetooth/BluetoothPairingDialog;->mCachedDeviceManager:Lcom/android/exsettingslib/bluetooth/CachedBluetoothDeviceManager;

    iget-object v3, p0, Lcom/android/exsettings/bluetooth/BluetoothPairingDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2, v3}, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDeviceManager;->getName(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 338
    const v2, 0x7f0c06a6

    invoke-virtual {p0, v2, v1}, Lcom/android/exsettings/bluetooth/BluetoothPairingDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 340
    invoke-direct {p0}, Lcom/android/exsettings/bluetooth/BluetoothPairingDialog;->createView()Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 341
    const v1, 0x7f0c0048

    invoke-virtual {p0, v1}, Lcom/android/exsettings/bluetooth/BluetoothPairingDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 342
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 343
    const v1, 0x7f0c004a

    invoke-virtual {p0, v1}, Lcom/android/exsettings/bluetooth/BluetoothPairingDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 344
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 345
    invoke-virtual {p0}, Lcom/android/exsettings/bluetooth/BluetoothPairingDialog;->setupAlert()V

    .line 336
    return-void
.end method

.method private createDisplayPasskeyOrPinDialog()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 349
    iget-object v0, p0, Lcom/android/exsettings/bluetooth/BluetoothPairingDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 350
    .local v0, "p":Lcom/android/internal/app/AlertController$AlertParams;
    new-array v2, v5, [Ljava/lang/Object;

    .line 351
    iget-object v3, p0, Lcom/android/exsettings/bluetooth/BluetoothPairingDialog;->mCachedDeviceManager:Lcom/android/exsettingslib/bluetooth/CachedBluetoothDeviceManager;

    iget-object v4, p0, Lcom/android/exsettings/bluetooth/BluetoothPairingDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3, v4}, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDeviceManager;->getName(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 350
    const v3, 0x7f0c06a6

    invoke-virtual {p0, v3, v2}, Lcom/android/exsettings/bluetooth/BluetoothPairingDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 352
    invoke-direct {p0}, Lcom/android/exsettings/bluetooth/BluetoothPairingDialog;->createView()Landroid/view/View;

    move-result-object v2

    iput-object v2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 353
    const/high16 v2, 0x1040000

    invoke-virtual {p0, v2}, Lcom/android/exsettings/bluetooth/BluetoothPairingDialog;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 354
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 355
    invoke-virtual {p0}, Lcom/android/exsettings/bluetooth/BluetoothPairingDialog;->setupAlert()V

    .line 359
    iget v2, p0, Lcom/android/exsettings/bluetooth/BluetoothPairingDialog;->mType:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    .line 360
    iget-object v2, p0, Lcom/android/exsettings/bluetooth/BluetoothPairingDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2, v5}, Landroid/bluetooth/BluetoothDevice;->setPairingConfirmation(Z)Z

    .line 348
    :cond_0
    :goto_0
    return-void

    .line 361
    :cond_1
    iget v2, p0, Lcom/android/exsettings/bluetooth/BluetoothPairingDialog;->mType:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_0

    .line 362
    iget-object v2, p0, Lcom/android/exsettings/bluetooth/BluetoothPairingDialog;->mPairingKey:Ljava/lang/String;

    invoke-static {v2}, Landroid/bluetooth/BluetoothDevice;->convertPinToBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 363
    .local v1, "pinBytes":[B
    iget-object v2, p0, Lcom/android/exsettings/bluetooth/BluetoothPairingDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2, v1}, Landroid/bluetooth/BluetoothDevice;->setPin([B)Z

    goto :goto_0
.end method

.method private createPinEntryView()Landroid/view/View;
    .locals 15

    .prologue
    const/4 v14, 0x0

    const/4 v13, 0x2

    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 188
    invoke-virtual {p0}, Lcom/android/exsettings/bluetooth/BluetoothPairingDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v8

    const v9, 0x7f04001f

    invoke-virtual {v8, v9, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 189
    .local v7, "view":Landroid/view/View;
    const v8, 0x7f130043

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 190
    .local v6, "messageViewCaptionHint":Landroid/widget/TextView;
    const v8, 0x7f130045

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 191
    .local v5, "messageView2":Landroid/widget/TextView;
    const v8, 0x7f130044

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 193
    .local v0, "alphanumericPin":Landroid/widget/CheckBox;
    const v8, 0x7f130046

    .line 192
    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 194
    .local v1, "contactSharing":Landroid/widget/CheckBox;
    new-array v8, v11, [Ljava/lang/Object;

    .line 195
    iget-object v9, p0, Lcom/android/exsettings/bluetooth/BluetoothPairingDialog;->mCachedDeviceManager:Lcom/android/exsettingslib/bluetooth/CachedBluetoothDeviceManager;

    iget-object v10, p0, Lcom/android/exsettings/bluetooth/BluetoothPairingDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v9, v10}, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDeviceManager;->getName(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v12

    .line 194
    const v9, 0x7f0c06b1

    invoke-virtual {p0, v9, v8}, Lcom/android/exsettings/bluetooth/BluetoothPairingDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 196
    iget-object v8, p0, Lcom/android/exsettings/bluetooth/BluetoothPairingDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v8}, Landroid/bluetooth/BluetoothDevice;->getPhonebookAccessPermission()I

    move-result v8

    if-ne v8, v11, :cond_0

    .line 197
    invoke-virtual {v1, v11}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 211
    :goto_0
    new-instance v8, Lcom/android/exsettings/bluetooth/BluetoothPairingDialog$2;

    invoke-direct {v8, p0}, Lcom/android/exsettings/bluetooth/BluetoothPairingDialog$2;-><init>(Lcom/android/exsettings/bluetooth/BluetoothPairingDialog;)V

    invoke-virtual {v1, v8}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 222
    const v8, 0x7f130042

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/EditText;

    iput-object v8, p0, Lcom/android/exsettings/bluetooth/BluetoothPairingDialog;->mPairingView:Landroid/widget/EditText;

    .line 223
    iget-object v8, p0, Lcom/android/exsettings/bluetooth/BluetoothPairingDialog;->mPairingView:Landroid/widget/EditText;

    invoke-virtual {v8, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 224
    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 227
    const v4, 0x7f0c06aa

    .line 229
    .local v4, "messageIdHint":I
    iget v8, p0, Lcom/android/exsettings/bluetooth/BluetoothPairingDialog;->mType:I

    sparse-switch v8, :sswitch_data_0

    .line 247
    const-string/jumbo v8, "BluetoothPairingDialog"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Incorrect pairing type for createPinEntryView: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/exsettings/bluetooth/BluetoothPairingDialog;->mType:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    return-object v14

    .line 198
    .end local v4    # "messageIdHint":I
    :cond_0
    iget-object v8, p0, Lcom/android/exsettings/bluetooth/BluetoothPairingDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v8}, Landroid/bluetooth/BluetoothDevice;->getPhonebookAccessPermission()I

    move-result v8

    if-ne v8, v13, :cond_1

    .line 199
    invoke-virtual {v1, v12}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    .line 201
    :cond_1
    iget-object v8, p0, Lcom/android/exsettings/bluetooth/BluetoothPairingDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v8}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v8

    invoke-virtual {v8}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v8

    .line 202
    const/16 v9, 0x408

    .line 201
    if-ne v8, v9, :cond_2

    .line 203
    invoke-virtual {v1, v11}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 204
    iget-object v8, p0, Lcom/android/exsettings/bluetooth/BluetoothPairingDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v8, v11}, Landroid/bluetooth/BluetoothDevice;->setPhonebookAccessPermission(I)Z

    goto :goto_0

    .line 206
    :cond_2
    invoke-virtual {v1, v12}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 207
    iget-object v8, p0, Lcom/android/exsettings/bluetooth/BluetoothPairingDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v8, v13}, Landroid/bluetooth/BluetoothDevice;->setPhonebookAccessPermission(I)Z

    goto :goto_0

    .line 231
    .restart local v4    # "messageIdHint":I
    :sswitch_0
    const v4, 0x7f0c06ab

    .line 234
    :sswitch_1
    const v3, 0x7f0c06ac

    .line 236
    .local v3, "messageId":I
    const/16 v2, 0x10

    .line 251
    .local v2, "maxLength":I
    :goto_1
    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(I)V

    .line 252
    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(I)V

    .line 253
    iget-object v8, p0, Lcom/android/exsettings/bluetooth/BluetoothPairingDialog;->mPairingView:Landroid/widget/EditText;

    invoke-virtual {v8, v13}, Landroid/widget/EditText;->setInputType(I)V

    .line 254
    iget-object v8, p0, Lcom/android/exsettings/bluetooth/BluetoothPairingDialog;->mPairingView:Landroid/widget/EditText;

    new-array v9, v11, [Landroid/text/InputFilter;

    .line 255
    new-instance v10, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v10, v2}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v10, v9, v12

    .line 254
    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 257
    return-object v7

    .line 240
    .end local v2    # "maxLength":I
    .end local v3    # "messageId":I
    :sswitch_2
    const v3, 0x7f0c06ad

    .line 242
    .restart local v3    # "messageId":I
    const/4 v2, 0x6

    .line 243
    .restart local v2    # "maxLength":I
    const/16 v8, 0x8

    invoke-virtual {v0, v8}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto :goto_1

    .line 229
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x1 -> :sswitch_2
        0x7 -> :sswitch_0
    .end sparse-switch
.end method

.method private createUserEntryDialog()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 173
    iget-object v0, p0, Lcom/android/exsettings/bluetooth/BluetoothPairingDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 174
    .local v0, "p":Lcom/android/internal/app/AlertController$AlertParams;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 175
    iget-object v2, p0, Lcom/android/exsettings/bluetooth/BluetoothPairingDialog;->mCachedDeviceManager:Lcom/android/exsettingslib/bluetooth/CachedBluetoothDeviceManager;

    iget-object v3, p0, Lcom/android/exsettings/bluetooth/BluetoothPairingDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2, v3}, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDeviceManager;->getName(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    .line 174
    const v2, 0x7f0c06a6

    invoke-virtual {p0, v2, v1}, Lcom/android/exsettings/bluetooth/BluetoothPairingDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 176
    invoke-direct {p0}, Lcom/android/exsettings/bluetooth/BluetoothPairingDialog;->createPinEntryView()Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 177
    const v1, 0x104000a

    invoke-virtual {p0, v1}, Lcom/android/exsettings/bluetooth/BluetoothPairingDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 178
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 179
    const/high16 v1, 0x1040000

    invoke-virtual {p0, v1}, Lcom/android/exsettings/bluetooth/BluetoothPairingDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 180
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 181
    invoke-virtual {p0}, Lcom/android/exsettings/bluetooth/BluetoothPairingDialog;->setupAlert()V

    .line 183
    iget-object v1, p0, Lcom/android/exsettings/bluetooth/BluetoothPairingDialog;->mAlert:Lcom/android/internal/app/AlertController;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/android/internal/app/AlertController;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    iput-object v1, p0, Lcom/android/exsettings/bluetooth/BluetoothPairingDialog;->mOkButton:Landroid/widget/Button;

    .line 184
    iget-object v1, p0, Lcom/android/exsettings/bluetooth/BluetoothPairingDialog;->mOkButton:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 172
    return-void
.end method

.method private createView()Landroid/view/View;
    .locals 14

    .prologue
    const/4 v13, 0x2

    const/4 v12, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 261
    invoke-virtual {p0}, Lcom/android/exsettings/bluetooth/BluetoothPairingDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v7

    const v8, 0x7f04001e

    invoke-virtual {v7, v8, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 262
    .local v6, "view":Landroid/view/View;
    const v7, 0x7f13003c

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 263
    .local v4, "pairingViewCaption":Landroid/widget/TextView;
    const v7, 0x7f13003d

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 264
    .local v5, "pairingViewContent":Landroid/widget/TextView;
    const v7, 0x7f13003e

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 266
    .local v2, "messagePairing":Landroid/widget/TextView;
    const v7, 0x7f13003f

    .line 265
    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 267
    .local v0, "contactSharing":Landroid/widget/CheckBox;
    new-array v7, v11, [Ljava/lang/Object;

    .line 268
    iget-object v8, p0, Lcom/android/exsettings/bluetooth/BluetoothPairingDialog;->mCachedDeviceManager:Lcom/android/exsettingslib/bluetooth/CachedBluetoothDeviceManager;

    iget-object v9, p0, Lcom/android/exsettings/bluetooth/BluetoothPairingDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v8, v9}, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDeviceManager;->getName(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v10

    .line 267
    const v8, 0x7f0c06b1

    invoke-virtual {p0, v8, v7}, Lcom/android/exsettings/bluetooth/BluetoothPairingDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 269
    iget-object v7, p0, Lcom/android/exsettings/bluetooth/BluetoothPairingDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v7}, Landroid/bluetooth/BluetoothDevice;->getPhonebookAccessPermission()I

    move-result v7

    if-ne v7, v11, :cond_0

    .line 270
    invoke-virtual {v0, v11}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 284
    :goto_0
    new-instance v7, Lcom/android/exsettings/bluetooth/BluetoothPairingDialog$3;

    invoke-direct {v7, p0}, Lcom/android/exsettings/bluetooth/BluetoothPairingDialog$3;-><init>(Lcom/android/exsettings/bluetooth/BluetoothPairingDialog;)V

    invoke-virtual {v0, v7}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 295
    const/4 v1, 0x0

    .line 296
    .local v1, "messageCaption":Ljava/lang/String;
    const/4 v3, 0x0

    .line 297
    .local v3, "pairingContent":Ljava/lang/String;
    iget v7, p0, Lcom/android/exsettings/bluetooth/BluetoothPairingDialog;->mType:I

    packed-switch v7, :pswitch_data_0

    .line 311
    const-string/jumbo v7, "BluetoothPairingDialog"

    const-string/jumbo v8, "Incorrect pairing type received, not creating view"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    return-object v12

    .line 271
    .end local v1    # "messageCaption":Ljava/lang/String;
    .end local v3    # "pairingContent":Ljava/lang/String;
    :cond_0
    iget-object v7, p0, Lcom/android/exsettings/bluetooth/BluetoothPairingDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v7}, Landroid/bluetooth/BluetoothDevice;->getPhonebookAccessPermission()I

    move-result v7

    if-ne v7, v13, :cond_1

    .line 272
    invoke-virtual {v0, v10}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    .line 274
    :cond_1
    iget-object v7, p0, Lcom/android/exsettings/bluetooth/BluetoothPairingDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v7}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v7

    invoke-virtual {v7}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v7

    .line 275
    const/16 v8, 0x408

    .line 274
    if-ne v7, v8, :cond_2

    .line 276
    invoke-virtual {v0, v11}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 277
    iget-object v7, p0, Lcom/android/exsettings/bluetooth/BluetoothPairingDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v7, v11}, Landroid/bluetooth/BluetoothDevice;->setPhonebookAccessPermission(I)Z

    goto :goto_0

    .line 279
    :cond_2
    invoke-virtual {v0, v10}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 280
    iget-object v7, p0, Lcom/android/exsettings/bluetooth/BluetoothPairingDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v7, v13}, Landroid/bluetooth/BluetoothDevice;->setPhonebookAccessPermission(I)Z

    goto :goto_0

    .line 300
    .restart local v1    # "messageCaption":Ljava/lang/String;
    .restart local v3    # "pairingContent":Ljava/lang/String;
    :pswitch_0
    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 302
    :pswitch_1
    iget-object v3, p0, Lcom/android/exsettings/bluetooth/BluetoothPairingDialog;->mPairingKey:Ljava/lang/String;

    .line 315
    .end local v3    # "pairingContent":Ljava/lang/String;
    :goto_1
    if-eqz v3, :cond_3

    .line 316
    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 317
    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 318
    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 321
    :cond_3
    return-object v6

    .line 307
    .restart local v3    # "pairingContent":Ljava/lang/String;
    :pswitch_2
    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 297
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private onCancel()V
    .locals 1

    .prologue
    .line 421
    iget-object v0, p0, Lcom/android/exsettings/bluetooth/BluetoothPairingDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->cancelPairingUserInput()Z

    .line 420
    return-void
.end method

.method private onPair(Ljava/lang/String;)V
    .locals 4
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 386
    iget v2, p0, Lcom/android/exsettings/bluetooth/BluetoothPairingDialog;->mType:I

    packed-switch v2, :pswitch_data_0

    .line 416
    const-string/jumbo v2, "BluetoothPairingDialog"

    const-string/jumbo v3, "Incorrect pairing type received"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    :goto_0
    :pswitch_0
    return-void

    .line 389
    :pswitch_1
    invoke-static {p1}, Landroid/bluetooth/BluetoothDevice;->convertPinToBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 390
    .local v1, "pinBytes":[B
    if-nez v1, :cond_0

    .line 391
    return-void

    .line 393
    :cond_0
    iget-object v2, p0, Lcom/android/exsettings/bluetooth/BluetoothPairingDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2, v1}, Landroid/bluetooth/BluetoothDevice;->setPin([B)Z

    goto :goto_0

    .line 397
    .end local v1    # "pinBytes":[B
    :pswitch_2
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 398
    .local v0, "passkey":I
    iget-object v2, p0, Lcom/android/exsettings/bluetooth/BluetoothPairingDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2, v0}, Landroid/bluetooth/BluetoothDevice;->setPasskey(I)Z

    goto :goto_0

    .line 403
    .end local v0    # "passkey":I
    :pswitch_3
    iget-object v2, p0, Lcom/android/exsettings/bluetooth/BluetoothPairingDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/bluetooth/BluetoothDevice;->setPairingConfirmation(Z)Z

    goto :goto_0

    .line 412
    :pswitch_4
    iget-object v2, p0, Lcom/android/exsettings/bluetooth/BluetoothPairingDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->setRemoteOutOfBandData()Z

    goto :goto_0

    .line 386
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 5
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 376
    iget-object v2, p0, Lcom/android/exsettings/bluetooth/BluetoothPairingDialog;->mOkButton:Landroid/widget/Button;

    if-eqz v2, :cond_0

    .line 377
    iget v2, p0, Lcom/android/exsettings/bluetooth/BluetoothPairingDialog;->mType:I

    const/4 v3, 0x7

    if-ne v2, v3, :cond_2

    .line 378
    iget-object v2, p0, Lcom/android/exsettings/bluetooth/BluetoothPairingDialog;->mOkButton:Landroid/widget/Button;

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v3

    const/16 v4, 0x10

    if-lt v3, v4, :cond_1

    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 375
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v1

    .line 378
    goto :goto_0

    .line 380
    :cond_2
    iget-object v2, p0, Lcom/android/exsettings/bluetooth/BluetoothPairingDialog;->mOkButton:Landroid/widget/Button;

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v3

    if-lez v3, :cond_3

    :goto_2
    invoke-virtual {v2, v0}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 456
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 465
    if-eqz p2, :cond_0

    .line 466
    iget-object v0, p0, Lcom/android/exsettings/bluetooth/BluetoothPairingDialog;->mPairingView:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 463
    :goto_0
    return-void

    .line 468
    :cond_0
    iget-object v0, p0, Lcom/android/exsettings/bluetooth/BluetoothPairingDialog;->mPairingView:Landroid/widget/EditText;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 432
    iget-boolean v0, p0, Lcom/android/exsettings/bluetooth/BluetoothPairingDialog;->mIsButtonPressed:Z

    if-eqz v0, :cond_0

    .line 434
    const-string/jumbo v0, "BluetoothPairingDialog"

    const-string/jumbo v1, "button already pressed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    return-void

    .line 437
    :cond_0
    packed-switch p2, :pswitch_data_0

    .line 450
    :goto_0
    invoke-direct {p0}, Lcom/android/exsettings/bluetooth/BluetoothPairingDialog;->onCancel()V

    .line 431
    :goto_1
    return-void

    .line 439
    :pswitch_0
    iget-object v0, p0, Lcom/android/exsettings/bluetooth/BluetoothPairingDialog;->mPairingView:Landroid/widget/EditText;

    if-eqz v0, :cond_1

    .line 440
    iget-object v0, p0, Lcom/android/exsettings/bluetooth/BluetoothPairingDialog;->mPairingView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/exsettings/bluetooth/BluetoothPairingDialog;->onPair(Ljava/lang/String;)V

    .line 444
    :goto_2
    iput-boolean v1, p0, Lcom/android/exsettings/bluetooth/BluetoothPairingDialog;->mIsButtonPressed:Z

    goto :goto_1

    .line 442
    :cond_1
    invoke-direct {p0, v2}, Lcom/android/exsettings/bluetooth/BluetoothPairingDialog;->onPair(Ljava/lang/String;)V

    goto :goto_2

    .line 448
    :pswitch_1
    iput-boolean v1, p0, Lcom/android/exsettings/bluetooth/BluetoothPairingDialog;->mIsButtonPressed:Z

    goto :goto_0

    .line 437
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    const/high16 v5, -0x80000000

    .line 97
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 99
    iput-boolean v7, p0, Lcom/android/exsettings/bluetooth/BluetoothPairingDialog;->mIsButtonPressed:Z

    .line 101
    invoke-virtual {p0}, Lcom/android/exsettings/bluetooth/BluetoothPairingDialog;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 102
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "android.bluetooth.device.action.PAIRING_REQUEST"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 104
    const-string/jumbo v3, "BluetoothPairingDialog"

    const-string/jumbo v4, "Error: this activity may be started only with intent android.bluetooth.device.action.PAIRING_REQUEST"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    invoke-virtual {p0}, Lcom/android/exsettings/bluetooth/BluetoothPairingDialog;->finish()V

    .line 107
    return-void

    .line 110
    :cond_0
    invoke-static {p0}, Lcom/android/exsettings/bluetooth/Utils;->getLocalBtManager(Landroid/content/Context;)Lcom/android/exsettingslib/bluetooth/LocalBluetoothManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/exsettings/bluetooth/BluetoothPairingDialog;->mBluetoothManager:Lcom/android/exsettingslib/bluetooth/LocalBluetoothManager;

    .line 111
    iget-object v3, p0, Lcom/android/exsettings/bluetooth/BluetoothPairingDialog;->mBluetoothManager:Lcom/android/exsettingslib/bluetooth/LocalBluetoothManager;

    if-nez v3, :cond_1

    .line 112
    const-string/jumbo v3, "BluetoothPairingDialog"

    const-string/jumbo v4, "Error: BluetoothAdapter not supported by system"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    invoke-virtual {p0}, Lcom/android/exsettings/bluetooth/BluetoothPairingDialog;->finish()V

    .line 114
    return-void

    .line 116
    :cond_1
    iget-object v3, p0, Lcom/android/exsettings/bluetooth/BluetoothPairingDialog;->mBluetoothManager:Lcom/android/exsettingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v3}, Lcom/android/exsettingslib/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/exsettingslib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/exsettings/bluetooth/BluetoothPairingDialog;->mCachedDeviceManager:Lcom/android/exsettingslib/bluetooth/CachedBluetoothDeviceManager;

    .line 118
    const-string/jumbo v3, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    iput-object v3, p0, Lcom/android/exsettings/bluetooth/BluetoothPairingDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 119
    const-string/jumbo v3, "android.bluetooth.device.extra.PAIRING_VARIANT"

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/exsettings/bluetooth/BluetoothPairingDialog;->mType:I

    .line 121
    iget v3, p0, Lcom/android/exsettings/bluetooth/BluetoothPairingDialog;->mType:I

    packed-switch v3, :pswitch_data_0

    .line 161
    const-string/jumbo v3, "BluetoothPairingDialog"

    const-string/jumbo v4, "Incorrect pairing type received, not showing any dialog"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    :goto_0
    iget-object v3, p0, Lcom/android/exsettings/bluetooth/BluetoothPairingDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string/jumbo v5, "android.bluetooth.device.action.PAIRING_CANCEL"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3, v4}, Lcom/android/exsettings/bluetooth/BluetoothPairingDialog;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 169
    iget-object v3, p0, Lcom/android/exsettings/bluetooth/BluetoothPairingDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string/jumbo v5, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3, v4}, Lcom/android/exsettings/bluetooth/BluetoothPairingDialog;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 96
    return-void

    .line 125
    :pswitch_0
    invoke-direct {p0}, Lcom/android/exsettings/bluetooth/BluetoothPairingDialog;->createUserEntryDialog()V

    goto :goto_0

    .line 130
    :pswitch_1
    const-string/jumbo v3, "android.bluetooth.device.extra.PAIRING_KEY"

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 131
    .local v2, "passkey":I
    if-ne v2, v5, :cond_2

    .line 132
    const-string/jumbo v3, "BluetoothPairingDialog"

    const-string/jumbo v4, "Invalid Confirmation Passkey received, not showing any dialog"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    return-void

    .line 135
    :cond_2
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v4, "%06d"

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/exsettings/bluetooth/BluetoothPairingDialog;->mPairingKey:Ljava/lang/String;

    .line 136
    invoke-direct {p0}, Lcom/android/exsettings/bluetooth/BluetoothPairingDialog;->createConfirmationDialog()V

    goto :goto_0

    .line 141
    .end local v2    # "passkey":I
    :pswitch_2
    invoke-direct {p0}, Lcom/android/exsettings/bluetooth/BluetoothPairingDialog;->createConsentDialog()V

    goto :goto_0

    .line 147
    :pswitch_3
    const-string/jumbo v3, "android.bluetooth.device.extra.PAIRING_KEY"

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 148
    .local v1, "pairingKey":I
    if-ne v1, v5, :cond_3

    .line 149
    const-string/jumbo v3, "BluetoothPairingDialog"

    const-string/jumbo v4, "Invalid Confirmation Passkey or PIN received, not showing any dialog"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    return-void

    .line 152
    :cond_3
    iget v3, p0, Lcom/android/exsettings/bluetooth/BluetoothPairingDialog;->mType:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_4

    .line 153
    const-string/jumbo v3, "%06d"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/exsettings/bluetooth/BluetoothPairingDialog;->mPairingKey:Ljava/lang/String;

    .line 157
    :goto_1
    invoke-direct {p0}, Lcom/android/exsettings/bluetooth/BluetoothPairingDialog;->createDisplayPasskeyOrPinDialog()V

    goto :goto_0

    .line 155
    :cond_4
    const-string/jumbo v3, "%04d"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/exsettings/bluetooth/BluetoothPairingDialog;->mPairingKey:Ljava/lang/String;

    goto :goto_1

    .line 121
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 369
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onDestroy()V

    .line 370
    iget-object v0, p0, Lcom/android/exsettings/bluetooth/BluetoothPairingDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 371
    iget-object v0, p0, Lcom/android/exsettings/bluetooth/BluetoothPairingDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/exsettings/bluetooth/BluetoothPairingDialog;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 368
    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 425
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 426
    invoke-direct {p0}, Lcom/android/exsettings/bluetooth/BluetoothPairingDialog;->onCancel()V

    .line 428
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/internal/app/AlertActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 460
    return-void
.end method
