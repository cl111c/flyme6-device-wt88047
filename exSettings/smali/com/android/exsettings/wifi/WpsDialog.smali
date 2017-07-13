.class public Lcom/android/exsettings/wifi/WpsDialog;
.super Landroid/app/AlertDialog;
.source "WpsDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exsettings/wifi/WpsDialog$DialogState;
    }
.end annotation


# instance fields
.field private mButton:Landroid/widget/Button;

.field private mContext:Landroid/content/Context;

.field mDialogState:Lcom/android/exsettings/wifi/WpsDialog$DialogState;

.field private final mFilter:Landroid/content/IntentFilter;

.field private mHandler:Landroid/os/Handler;

.field private mMsgString:Ljava/lang/String;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mTextView:Landroid/widget/TextView;

.field private mTimeoutBar:Landroid/widget/ProgressBar;

.field private mTimer:Ljava/util/Timer;

.field private mView:Landroid/view/View;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWpsListener:Landroid/net/wifi/WifiManager$WpsCallback;

.field private mWpsSetup:I


# direct methods
.method static synthetic -get0(Lcom/android/exsettings/wifi/WpsDialog;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/wifi/WpsDialog;->mButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/exsettings/wifi/WpsDialog;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/wifi/WpsDialog;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/exsettings/wifi/WpsDialog;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/wifi/WpsDialog;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/exsettings/wifi/WpsDialog;)Landroid/widget/ProgressBar;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/wifi/WpsDialog;->mProgressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/exsettings/wifi/WpsDialog;)Landroid/content/BroadcastReceiver;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/wifi/WpsDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/exsettings/wifi/WpsDialog;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/wifi/WpsDialog;->mTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/exsettings/wifi/WpsDialog;)Landroid/widget/ProgressBar;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/wifi/WpsDialog;->mTimeoutBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/exsettings/wifi/WpsDialog;Landroid/content/BroadcastReceiver;)Landroid/content/BroadcastReceiver;
    .locals 0

    iput-object p1, p0, Lcom/android/exsettings/wifi/WpsDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/exsettings/wifi/WpsDialog;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/exsettings/wifi/WpsDialog;->handleEvent(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/exsettings/wifi/WpsDialog;Lcom/android/exsettings/wifi/WpsDialog$DialogState;Ljava/lang/String;)V
    .locals 0
    .param p1, "state"    # Lcom/android/exsettings/wifi/WpsDialog$DialogState;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/exsettings/wifi/WpsDialog;->updateDialog(Lcom/android/exsettings/wifi/WpsDialog$DialogState;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "wpsSetup"    # I

    .prologue
    .line 80
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 67
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/exsettings/wifi/WpsDialog;->mHandler:Landroid/os/Handler;

    .line 68
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/exsettings/wifi/WpsDialog;->mMsgString:Ljava/lang/String;

    .line 77
    sget-object v0, Lcom/android/exsettings/wifi/WpsDialog$DialogState;->WPS_INIT:Lcom/android/exsettings/wifi/WpsDialog$DialogState;

    iput-object v0, p0, Lcom/android/exsettings/wifi/WpsDialog;->mDialogState:Lcom/android/exsettings/wifi/WpsDialog$DialogState;

    .line 81
    iput-object p1, p0, Lcom/android/exsettings/wifi/WpsDialog;->mContext:Landroid/content/Context;

    .line 82
    iput p2, p0, Lcom/android/exsettings/wifi/WpsDialog;->mWpsSetup:I

    .line 124
    new-instance v0, Lcom/android/exsettings/wifi/WpsDialog$1WpsListener;

    invoke-direct {v0, p0}, Lcom/android/exsettings/wifi/WpsDialog$1WpsListener;-><init>(Lcom/android/exsettings/wifi/WpsDialog;)V

    iput-object v0, p0, Lcom/android/exsettings/wifi/WpsDialog;->mWpsListener:Landroid/net/wifi/WifiManager$WpsCallback;

    .line 127
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/exsettings/wifi/WpsDialog;->mFilter:Landroid/content/IntentFilter;

    .line 128
    iget-object v0, p0, Lcom/android/exsettings/wifi/WpsDialog;->mFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 129
    new-instance v0, Lcom/android/exsettings/wifi/WpsDialog$1;

    invoke-direct {v0, p0}, Lcom/android/exsettings/wifi/WpsDialog$1;-><init>(Lcom/android/exsettings/wifi/WpsDialog;)V

    iput-object v0, p0, Lcom/android/exsettings/wifi/WpsDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 135
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/exsettings/wifi/WpsDialog;->setCanceledOnTouchOutside(Z)V

    .line 79
    return-void
.end method

.method private handleEvent(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 262
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 263
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v5, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 265
    const-string/jumbo v5, "networkInfo"

    .line 264
    invoke-virtual {p2, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkInfo;

    .line 266
    .local v1, "info":Landroid/net/NetworkInfo;
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v3

    .line 267
    .local v3, "state":Landroid/net/NetworkInfo$DetailedState;
    sget-object v5, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v3, v5, :cond_0

    .line 268
    iget-object v5, p0, Lcom/android/exsettings/wifi/WpsDialog;->mDialogState:Lcom/android/exsettings/wifi/WpsDialog$DialogState;

    sget-object v6, Lcom/android/exsettings/wifi/WpsDialog$DialogState;->WPS_COMPLETE:Lcom/android/exsettings/wifi/WpsDialog$DialogState;

    if-ne v5, v6, :cond_0

    .line 269
    iget-object v5, p0, Lcom/android/exsettings/wifi/WpsDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v4

    .line 270
    .local v4, "wifiInfo":Landroid/net/wifi/WifiInfo;
    if-eqz v4, :cond_0

    .line 271
    iget-object v5, p0, Lcom/android/exsettings/wifi/WpsDialog;->mContext:Landroid/content/Context;

    .line 272
    const v6, 0x7f0c073c

    .line 271
    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    .line 272
    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    .line 271
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 273
    .local v2, "msg":Ljava/lang/String;
    sget-object v5, Lcom/android/exsettings/wifi/WpsDialog$DialogState;->CONNECTED:Lcom/android/exsettings/wifi/WpsDialog$DialogState;

    invoke-direct {p0, v5, v2}, Lcom/android/exsettings/wifi/WpsDialog;->updateDialog(Lcom/android/exsettings/wifi/WpsDialog$DialogState;Ljava/lang/String;)V

    .line 261
    .end local v1    # "info":Landroid/net/NetworkInfo;
    .end local v2    # "msg":Ljava/lang/String;
    .end local v3    # "state":Landroid/net/NetworkInfo$DetailedState;
    .end local v4    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    :cond_0
    return-void
.end method

.method private updateDialog(Lcom/android/exsettings/wifi/WpsDialog$DialogState;Ljava/lang/String;)V
    .locals 2
    .param p1, "state"    # Lcom/android/exsettings/wifi/WpsDialog$DialogState;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 230
    iget-object v0, p0, Lcom/android/exsettings/wifi/WpsDialog;->mDialogState:Lcom/android/exsettings/wifi/WpsDialog$DialogState;

    invoke-virtual {v0}, Lcom/android/exsettings/wifi/WpsDialog$DialogState;->ordinal()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/exsettings/wifi/WpsDialog$DialogState;->ordinal()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 232
    return-void

    .line 234
    :cond_0
    iput-object p1, p0, Lcom/android/exsettings/wifi/WpsDialog;->mDialogState:Lcom/android/exsettings/wifi/WpsDialog$DialogState;

    .line 235
    iput-object p2, p0, Lcom/android/exsettings/wifi/WpsDialog;->mMsgString:Ljava/lang/String;

    .line 237
    iget-object v0, p0, Lcom/android/exsettings/wifi/WpsDialog;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/exsettings/wifi/WpsDialog$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/exsettings/wifi/WpsDialog$4;-><init>(Lcom/android/exsettings/wifi/WpsDialog;Lcom/android/exsettings/wifi/WpsDialog$DialogState;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 229
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 158
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/WpsDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f04015c

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/exsettings/wifi/WpsDialog;->mView:Landroid/view/View;

    .line 160
    iget-object v1, p0, Lcom/android/exsettings/wifi/WpsDialog;->mView:Landroid/view/View;

    const v2, 0x7f1302e5

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/exsettings/wifi/WpsDialog;->mTextView:Landroid/widget/TextView;

    .line 161
    iget-object v1, p0, Lcom/android/exsettings/wifi/WpsDialog;->mTextView:Landroid/widget/TextView;

    const v2, 0x7f0c0738

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 163
    iget-object v1, p0, Lcom/android/exsettings/wifi/WpsDialog;->mView:Landroid/view/View;

    const v2, 0x7f1302e6

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/android/exsettings/wifi/WpsDialog;->mTimeoutBar:Landroid/widget/ProgressBar;

    .line 164
    iget-object v1, p0, Lcom/android/exsettings/wifi/WpsDialog;->mTimeoutBar:Landroid/widget/ProgressBar;

    const/16 v2, 0x78

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 165
    iget-object v1, p0, Lcom/android/exsettings/wifi/WpsDialog;->mTimeoutBar:Landroid/widget/ProgressBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 167
    iget-object v1, p0, Lcom/android/exsettings/wifi/WpsDialog;->mView:Landroid/view/View;

    const v2, 0x7f1302e7

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/android/exsettings/wifi/WpsDialog;->mProgressBar:Landroid/widget/ProgressBar;

    .line 168
    iget-object v1, p0, Lcom/android/exsettings/wifi/WpsDialog;->mProgressBar:Landroid/widget/ProgressBar;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 170
    iget-object v1, p0, Lcom/android/exsettings/wifi/WpsDialog;->mView:Landroid/view/View;

    const v2, 0x7f1302e8

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/exsettings/wifi/WpsDialog;->mButton:Landroid/widget/Button;

    .line 171
    iget-object v1, p0, Lcom/android/exsettings/wifi/WpsDialog;->mButton:Landroid/widget/Button;

    const v2, 0x7f0c076e

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 172
    iget-object v1, p0, Lcom/android/exsettings/wifi/WpsDialog;->mButton:Landroid/widget/Button;

    new-instance v2, Lcom/android/exsettings/wifi/WpsDialog$2;

    invoke-direct {v2, p0}, Lcom/android/exsettings/wifi/WpsDialog$2;-><init>(Lcom/android/exsettings/wifi/WpsDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 179
    iget-object v1, p0, Lcom/android/exsettings/wifi/WpsDialog;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    iput-object v1, p0, Lcom/android/exsettings/wifi/WpsDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 181
    iget-object v1, p0, Lcom/android/exsettings/wifi/WpsDialog;->mView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/android/exsettings/wifi/WpsDialog;->setView(Landroid/view/View;)V

    .line 182
    if-nez p1, :cond_0

    .line 183
    new-instance v0, Landroid/net/wifi/WpsInfo;

    invoke-direct {v0}, Landroid/net/wifi/WpsInfo;-><init>()V

    .line 184
    .local v0, "wpsConfig":Landroid/net/wifi/WpsInfo;
    iget v1, p0, Lcom/android/exsettings/wifi/WpsDialog;->mWpsSetup:I

    iput v1, v0, Landroid/net/wifi/WpsInfo;->setup:I

    .line 185
    iget-object v1, p0, Lcom/android/exsettings/wifi/WpsDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/android/exsettings/wifi/WpsDialog;->mWpsListener:Landroid/net/wifi/WifiManager$WpsCallback;

    invoke-virtual {v1, v0, v2}, Landroid/net/wifi/WifiManager;->startWps(Landroid/net/wifi/WpsInfo;Landroid/net/wifi/WifiManager$WpsCallback;)V

    .line 187
    .end local v0    # "wpsConfig":Landroid/net/wifi/WpsInfo;
    :cond_0
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 157
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 148
    if-eqz p1, :cond_0

    .line 149
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 150
    iget-object v2, p0, Lcom/android/exsettings/wifi/WpsDialog;->mDialogState:Lcom/android/exsettings/wifi/WpsDialog$DialogState;

    const-string/jumbo v2, "android:dialogState"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/exsettings/wifi/WpsDialog$DialogState;->valueOf(Ljava/lang/String;)Lcom/android/exsettings/wifi/WpsDialog$DialogState;

    move-result-object v0

    .line 151
    .local v0, "dialogState":Lcom/android/exsettings/wifi/WpsDialog$DialogState;
    const-string/jumbo v2, "android:dialogMsg"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 152
    .local v1, "msg":Ljava/lang/String;
    invoke-direct {p0, v0, v1}, Lcom/android/exsettings/wifi/WpsDialog;->updateDialog(Lcom/android/exsettings/wifi/WpsDialog$DialogState;Ljava/lang/String;)V

    .line 147
    .end local v0    # "dialogState":Lcom/android/exsettings/wifi/WpsDialog$DialogState;
    .end local v1    # "msg":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 140
    invoke-super {p0}, Landroid/app/AlertDialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    .line 141
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "android:dialogState"

    iget-object v2, p0, Lcom/android/exsettings/wifi/WpsDialog;->mDialogState:Lcom/android/exsettings/wifi/WpsDialog$DialogState;

    invoke-virtual {v2}, Lcom/android/exsettings/wifi/WpsDialog$DialogState;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    const-string/jumbo v1, "android:dialogMsg"

    iget-object v2, p0, Lcom/android/exsettings/wifi/WpsDialog;->mMsgString:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    return-object v0
.end method

.method protected onStart()V
    .locals 6

    .prologue
    const-wide/16 v2, 0x3e8

    .line 195
    new-instance v0, Ljava/util/Timer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Z)V

    iput-object v0, p0, Lcom/android/exsettings/wifi/WpsDialog;->mTimer:Ljava/util/Timer;

    .line 196
    iget-object v0, p0, Lcom/android/exsettings/wifi/WpsDialog;->mTimer:Ljava/util/Timer;

    new-instance v1, Lcom/android/exsettings/wifi/WpsDialog$3;

    invoke-direct {v1, p0}, Lcom/android/exsettings/wifi/WpsDialog$3;-><init>(Lcom/android/exsettings/wifi/WpsDialog;)V

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 209
    iget-object v0, p0, Lcom/android/exsettings/wifi/WpsDialog;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/exsettings/wifi/WpsDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/exsettings/wifi/WpsDialog;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 191
    return-void
.end method

.method protected onStop()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 215
    iget-object v0, p0, Lcom/android/exsettings/wifi/WpsDialog;->mDialogState:Lcom/android/exsettings/wifi/WpsDialog$DialogState;

    sget-object v1, Lcom/android/exsettings/wifi/WpsDialog$DialogState;->WPS_COMPLETE:Lcom/android/exsettings/wifi/WpsDialog$DialogState;

    if-eq v0, v1, :cond_0

    .line 216
    iget-object v0, p0, Lcom/android/exsettings/wifi/WpsDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiManager;->cancelWps(Landroid/net/wifi/WifiManager$WpsCallback;)V

    .line 219
    :cond_0
    iget-object v0, p0, Lcom/android/exsettings/wifi/WpsDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    .line 220
    iget-object v0, p0, Lcom/android/exsettings/wifi/WpsDialog;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/exsettings/wifi/WpsDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 221
    iput-object v2, p0, Lcom/android/exsettings/wifi/WpsDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 224
    :cond_1
    iget-object v0, p0, Lcom/android/exsettings/wifi/WpsDialog;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_2

    .line 225
    iget-object v0, p0, Lcom/android/exsettings/wifi/WpsDialog;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 214
    :cond_2
    return-void
.end method
