.class public final Lcom/android/exsettings/bluetooth/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exsettings/bluetooth/Utils$1;,
        Lcom/android/exsettings/bluetooth/Utils$2;
    }
.end annotation


# static fields
.field private static final mErrorListener:Lcom/android/exsettingslib/bluetooth/Utils$ErrorListener;

.field private static final mOnInitCallback:Lcom/android/exsettingslib/bluetooth/LocalBluetoothManager$BluetoothManagerCallback;


# direct methods
.method static synthetic -get0()Lcom/android/exsettingslib/bluetooth/Utils$ErrorListener;
    .locals 1

    sget-object v0, Lcom/android/exsettings/bluetooth/Utils;->mErrorListener:Lcom/android/exsettingslib/bluetooth/Utils$ErrorListener;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 129
    new-instance v0, Lcom/android/exsettings/bluetooth/Utils$1;

    invoke-direct {v0}, Lcom/android/exsettings/bluetooth/Utils$1;-><init>()V

    sput-object v0, Lcom/android/exsettings/bluetooth/Utils;->mErrorListener:Lcom/android/exsettingslib/bluetooth/Utils$ErrorListener;

    .line 136
    new-instance v0, Lcom/android/exsettings/bluetooth/Utils$2;

    invoke-direct {v0}, Lcom/android/exsettings/bluetooth/Utils$2;-><init>()V

    sput-object v0, Lcom/android/exsettings/bluetooth/Utils;->mOnInitCallback:Lcom/android/exsettingslib/bluetooth/LocalBluetoothManager$BluetoothManagerCallback;

    .line 38
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLocalBtManager(Landroid/content/Context;)Lcom/android/exsettingslib/bluetooth/LocalBluetoothManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 126
    sget-object v0, Lcom/android/exsettings/bluetooth/Utils;->mOnInitCallback:Lcom/android/exsettingslib/bluetooth/LocalBluetoothManager$BluetoothManagerCallback;

    invoke-static {p0, v0}, Lcom/android/exsettingslib/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;Lcom/android/exsettingslib/bluetooth/LocalBluetoothManager$BluetoothManagerCallback;)Lcom/android/exsettingslib/bluetooth/LocalBluetoothManager;

    move-result-object v0

    return-object v0
.end method

.method static showDisconnectDialog(Landroid/content/Context;Landroid/app/AlertDialog;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/AlertDialog;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dialog"    # Landroid/app/AlertDialog;
    .param p2, "disconnectListener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p3, "title"    # Ljava/lang/CharSequence;
    .param p4, "message"    # Ljava/lang/CharSequence;

    .prologue
    const v2, 0x104000a

    .line 65
    if-nez p1, :cond_0

    .line 66
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 68
    const/high16 v2, 0x1040000

    .line 66
    invoke-virtual {v1, v2, p2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 79
    :goto_0
    invoke-virtual {p1, p3}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 80
    invoke-virtual {p1, p4}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 81
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    .line 82
    return-object p1

    .line 71
    :cond_0
    invoke-virtual {p1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 72
    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    .line 75
    :cond_1
    invoke-virtual {p0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 76
    .local v0, "okText":Ljava/lang/CharSequence;
    const/4 v1, -0x1

    invoke-virtual {p1, v1, v0, p2}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0
.end method

.method static showError(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "messageResId"    # I

    .prologue
    const/4 v4, 0x0

    .line 96
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-virtual {p0, p2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 97
    .local v2, "message":Ljava/lang/String;
    invoke-static {p0}, Lcom/android/exsettings/bluetooth/Utils;->getLocalBtManager(Landroid/content/Context;)Lcom/android/exsettingslib/bluetooth/LocalBluetoothManager;

    move-result-object v1

    .line 98
    .local v1, "manager":Lcom/android/exsettingslib/bluetooth/LocalBluetoothManager;
    invoke-virtual {v1}, Lcom/android/exsettingslib/bluetooth/LocalBluetoothManager;->getForegroundActivity()Landroid/content/Context;

    move-result-object v0

    .line 99
    .local v0, "activity":Landroid/content/Context;
    invoke-virtual {v1}, Lcom/android/exsettingslib/bluetooth/LocalBluetoothManager;->isForegroundActivity()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 100
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 101
    const v4, 0x7f0c06b2

    .line 100
    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 103
    const v4, 0x104000a

    const/4 v5, 0x0

    .line 100
    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 95
    :goto_0
    return-void

    .line 106
    :cond_0
    invoke-static {p0, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public static updateSearchIndex(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "screenTitle"    # Ljava/lang/String;
    .param p4, "iconResId"    # I
    .param p5, "enabled"    # Z

    .prologue
    .line 115
    new-instance v0, Lcom/android/exsettings/search/SearchIndexableRaw;

    invoke-direct {v0, p0}, Lcom/android/exsettings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 116
    .local v0, "data":Lcom/android/exsettings/search/SearchIndexableRaw;
    iput-object p1, v0, Lcom/android/exsettings/search/SearchIndexableRaw;->className:Ljava/lang/String;

    .line 117
    iput-object p2, v0, Lcom/android/exsettings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 118
    iput-object p3, v0, Lcom/android/exsettings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 119
    iput p4, v0, Lcom/android/exsettings/search/SearchIndexableRaw;->iconResId:I

    .line 120
    iput-boolean p5, v0, Lcom/android/exsettings/search/SearchIndexableRaw;->enabled:Z

    .line 122
    invoke-static {p0}, Lcom/android/exsettings/search/Index;->getInstance(Landroid/content/Context;)Lcom/android/exsettings/search/Index;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/exsettings/search/Index;->updateFromSearchIndexableData(Landroid/provider/SearchIndexableData;)V

    .line 114
    return-void
.end method
