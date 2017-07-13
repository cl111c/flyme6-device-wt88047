.class public Lcom/android/exsettings/deviceinfo/UsbModeChooserActivity;
.super Landroid/app/Activity;
.source "UsbModeChooserActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exsettings/deviceinfo/UsbModeChooserActivity$1;
    }
.end annotation


# static fields
.field public static final DEFAULT_MODES:[I


# instance fields
.field private mBackend:Lcom/android/exsettings/deviceinfo/UsbBackend;

.field private mDialog:Landroid/app/AlertDialog;

.field private mDisconnectedReceiver:Landroid/content/BroadcastReceiver;

.field private mLayoutInflater:Landroid/view/LayoutInflater;


# direct methods
.method static synthetic -get0(Lcom/android/exsettings/deviceinfo/UsbModeChooserActivity;)Lcom/android/exsettings/deviceinfo/UsbBackend;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/deviceinfo/UsbModeChooserActivity;->mBackend:Lcom/android/exsettings/deviceinfo/UsbBackend;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/exsettings/deviceinfo/UsbModeChooserActivity;)Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/deviceinfo/UsbModeChooserActivity;->mDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 46
    const/4 v0, 0x0

    .line 47
    const/4 v1, 0x1

    .line 48
    const/4 v2, 0x2

    .line 49
    const/4 v3, 0x4

    .line 50
    const/4 v4, 0x6

    .line 45
    filled-new-array {v0, v1, v2, v3, v4}, [I

    move-result-object v0

    sput-object v0, Lcom/android/exsettings/deviceinfo/UsbModeChooserActivity;->DEFAULT_MODES:[I

    .line 43
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 57
    new-instance v0, Lcom/android/exsettings/deviceinfo/UsbModeChooserActivity$1;

    invoke-direct {v0, p0}, Lcom/android/exsettings/deviceinfo/UsbModeChooserActivity$1;-><init>(Lcom/android/exsettings/deviceinfo/UsbModeChooserActivity;)V

    iput-object v0, p0, Lcom/android/exsettings/deviceinfo/UsbModeChooserActivity;->mDisconnectedReceiver:Landroid/content/BroadcastReceiver;

    .line 43
    return-void
.end method

.method private static getSummary(I)I
    .locals 1
    .param p0, "mode"    # I

    .prologue
    .line 140
    packed-switch p0, :pswitch_data_0

    .line 152
    :pswitch_0
    const/4 v0, 0x0

    return v0

    .line 142
    :pswitch_1
    const v0, 0x7f0c0f71

    return v0

    .line 144
    :pswitch_2
    const v0, 0x7f0c0f73

    return v0

    .line 146
    :pswitch_3
    const v0, 0x7f0c0f75

    return v0

    .line 148
    :pswitch_4
    const v0, 0x7f0c0f77

    return v0

    .line 150
    :pswitch_5
    const v0, 0x7f0c0f79

    return v0

    .line 140
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method private static getTitle(I)I
    .locals 1
    .param p0, "mode"    # I

    .prologue
    .line 156
    packed-switch p0, :pswitch_data_0

    .line 168
    :pswitch_0
    const/4 v0, 0x0

    return v0

    .line 158
    :pswitch_1
    const v0, 0x7f0c0f70

    return v0

    .line 160
    :pswitch_2
    const v0, 0x7f0c0f72

    return v0

    .line 162
    :pswitch_3
    const v0, 0x7f0c0f74

    return v0

    .line 164
    :pswitch_4
    const v0, 0x7f0c0f76

    return v0

    .line 166
    :pswitch_5
    const v0, 0x7f0c0f78

    return v0

    .line 156
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method private inflateOption(IZLandroid/widget/LinearLayout;)V
    .locals 4
    .param p1, "mode"    # I
    .param p2, "selected"    # Z
    .param p3, "container"    # Landroid/widget/LinearLayout;

    .prologue
    .line 120
    iget-object v1, p0, Lcom/android/exsettings/deviceinfo/UsbModeChooserActivity;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0400ed

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 122
    .local v0, "v":Landroid/view/View;
    const v1, 0x1020016

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {p1}, Lcom/android/exsettings/deviceinfo/UsbModeChooserActivity;->getTitle(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 123
    const v1, 0x1020010

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {p1}, Lcom/android/exsettings/deviceinfo/UsbModeChooserActivity;->getSummary(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 125
    new-instance v1, Lcom/android/exsettings/deviceinfo/UsbModeChooserActivity$4;

    invoke-direct {v1, p0, p1}, Lcom/android/exsettings/deviceinfo/UsbModeChooserActivity$4;-><init>(Lcom/android/exsettings/deviceinfo/UsbModeChooserActivity;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object v1, v0

    .line 135
    check-cast v1, Landroid/widget/Checkable;

    invoke-interface {v1, p2}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 136
    invoke-virtual {p3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 119
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 73
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 75
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    iput-object v3, p0, Lcom/android/exsettings/deviceinfo/UsbModeChooserActivity;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 77
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 78
    const v4, 0x7f0c0f7a

    .line 77
    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 79
    const v4, 0x7f04013f

    .line 77
    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setView(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 80
    new-instance v4, Lcom/android/exsettings/deviceinfo/UsbModeChooserActivity$2;

    invoke-direct {v4, p0}, Lcom/android/exsettings/deviceinfo/UsbModeChooserActivity$2;-><init>(Lcom/android/exsettings/deviceinfo/UsbModeChooserActivity;)V

    .line 77
    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 86
    new-instance v4, Lcom/android/exsettings/deviceinfo/UsbModeChooserActivity$3;

    invoke-direct {v4, p0}, Lcom/android/exsettings/deviceinfo/UsbModeChooserActivity$3;-><init>(Lcom/android/exsettings/deviceinfo/UsbModeChooserActivity;)V

    const v5, 0x7f0c05d6

    .line 77
    invoke-virtual {v3, v5, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/android/exsettings/deviceinfo/UsbModeChooserActivity;->mDialog:Landroid/app/AlertDialog;

    .line 92
    iget-object v3, p0, Lcom/android/exsettings/deviceinfo/UsbModeChooserActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 94
    iget-object v3, p0, Lcom/android/exsettings/deviceinfo/UsbModeChooserActivity;->mDialog:Landroid/app/AlertDialog;

    const v4, 0x7f130179

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 96
    .local v0, "container":Landroid/widget/LinearLayout;
    new-instance v3, Lcom/android/exsettings/deviceinfo/UsbBackend;

    invoke-direct {v3, p0}, Lcom/android/exsettings/deviceinfo/UsbBackend;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/exsettings/deviceinfo/UsbModeChooserActivity;->mBackend:Lcom/android/exsettings/deviceinfo/UsbBackend;

    .line 97
    iget-object v3, p0, Lcom/android/exsettings/deviceinfo/UsbModeChooserActivity;->mBackend:Lcom/android/exsettings/deviceinfo/UsbBackend;

    invoke-virtual {v3}, Lcom/android/exsettings/deviceinfo/UsbBackend;->getCurrentMode()I

    move-result v1

    .line 98
    .local v1, "current":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    sget-object v3, Lcom/android/exsettings/deviceinfo/UsbModeChooserActivity;->DEFAULT_MODES:[I

    array-length v3, v3

    if-ge v2, v3, :cond_2

    .line 99
    iget-object v3, p0, Lcom/android/exsettings/deviceinfo/UsbModeChooserActivity;->mBackend:Lcom/android/exsettings/deviceinfo/UsbBackend;

    sget-object v4, Lcom/android/exsettings/deviceinfo/UsbModeChooserActivity;->DEFAULT_MODES:[I

    aget v4, v4, v2

    invoke-virtual {v3, v4}, Lcom/android/exsettings/deviceinfo/UsbBackend;->isModeSupported(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 100
    sget-object v3, Lcom/android/exsettings/deviceinfo/UsbModeChooserActivity;->DEFAULT_MODES:[I

    aget v4, v3, v2

    sget-object v3, Lcom/android/exsettings/deviceinfo/UsbModeChooserActivity;->DEFAULT_MODES:[I

    aget v3, v3, v2

    if-ne v1, v3, :cond_1

    const/4 v3, 0x1

    :goto_1
    invoke-direct {p0, v4, v3, v0}, Lcom/android/exsettings/deviceinfo/UsbModeChooserActivity;->inflateOption(IZLandroid/widget/LinearLayout;)V

    .line 98
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 100
    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    .line 71
    :cond_2
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 107
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 109
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.hardware.usb.action.USB_STATE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 110
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/exsettings/deviceinfo/UsbModeChooserActivity;->mDisconnectedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/exsettings/deviceinfo/UsbModeChooserActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 106
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/exsettings/deviceinfo/UsbModeChooserActivity;->mDisconnectedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/exsettings/deviceinfo/UsbModeChooserActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 116
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 114
    return-void
.end method
