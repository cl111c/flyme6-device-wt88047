.class public Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;
.super Ljava/lang/Object;
.source "DpmNsrmBackgroundEventHdlr.java"


# static fields
.field private static final DBG:Z = false

.field private static final DOZE_SM_STATE_ACTIVE:I = 0x0

.field private static final DOZE_SM_STATE_IDLE:I = 0x5

.field private static final DOZE_SM_STATE_IDLE_MAINTENANCE:I = 0x6

.field private static final DOZE_SM_STATE_IDLE_PENDING:I = 0x2

.field private static final DOZE_SM_STATE_INACTIVE:I = 0x1

.field private static final DOZE_SM_STATE_LOCATING:I = 0x4

.field private static final DOZE_SM_STATE_SENSING:I = 0x3

.field public static final DPM_NSRM_BLUETOOTH_STATE_EVT:I = 0x5

.field public static final DPM_NSRM_EMERGENCY_ALERT_STATE_EVT:I = 0xb

.field public static final DPM_NSRM_GPS_STATE_EVT:I = 0x2

.field public static final DPM_NSRM_HDMI_STATE_EVT:I = 0x8

.field public static final DPM_NSRM_HEADSET_STATE_EVT:I = 0x4

.field public static final DPM_NSRM_MICROPHONE_MUTE_STATE_EVT:I = 0x7

.field public static final DPM_NSRM_MUSIC_ACTIVE_STATE_EVT:I = 0x6

.field public static final DPM_NSRM_SCREEN_STATE_EVT:I = 0x1

.field public static final DPM_NSRM_SPEAKER_STATE_EVT:I = 0xa

.field public static final DPM_NSRM_USB_STATE_EVT:I = 0x3

.field public static final DPM_NSRM_VENDOR_TRIGGER_STATE_EVT:I = 0xc

.field public static final DPM_NSRM_WLAN_P2P_STATE_EVT:I = 0xd

.field public static final DPM_NSRM_WLAN_STATE_EVT:I = 0x9

.field public static final DPM_NSRM_WWAN_DATA_CONN_STATE_EVT:I = 0x0

.field private static final INTENT_FILTER_PRIORITY_HIGH:I = 0x3e7

.field public static final Nsrm_EVENT_STATE_OFF:Z = false

.field public static final Nsrm_EVENT_STATE_ON:Z = true

.field private static final SUB_TYPE:Ljava/lang/String; = "DPM:NSRM"

.field public static final TIMERPERIOD:I = 0x1388

.field public static final TIMERTIME:I = 0x1f4


# instance fields
.field private NsrmPollTimer:Ljava/util/Timer;

.field private bluetoothConnected:Z

.field private bluetoothConnected_shadow:Z

.field private dic:Landroid/os/IDeviceIdleController;

.field private dozeTrigger:Lcom/qti/dpmapi/DpmApi$DpmNsrmTrigger;

.field private dpmApi:Lcom/qti/dpmapi/DpmApi;

.field private gpsOn:Z

.field private gpsOn_shadow:Z

.field private hdmiConnected:Z

.field private mContext:Landroid/content/Context;

.field private mDpm:Lcom/qti/dpm/DpmService;

.field private mFilter1:Landroid/content/IntentFilter;

.field private mFilter2:Landroid/content/IntentFilter;

.field private mFilter3:Landroid/content/IntentFilter;

.field mGpsListener:Landroid/location/GpsStatus$Listener;

.field mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mLocManager:Landroid/location/LocationManager;

.field private microphoneMuted:Z

.field private microphoneMuted_shadow:Z

.field private musicActive:Z

.field private musicActive_shadow:Z

.field private speakerOn:Z

.field private speakerOn_shadow:Z

.field private usbConnected:Z

.field private usbConnected_shadow:Z

.field private wifip2pOn:Z

.field private wiredHeadsetOn:Z

.field private wiredHeadsetOn_shadow:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/qti/dpm/DpmService;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dpm"    # Lcom/qti/dpm/DpmService;

    .prologue
    const/4 v0, 0x0

    .line 296
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    iput-object v0, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->dic:Landroid/os/IDeviceIdleController;

    .line 111
    iput-object v0, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->dpmApi:Lcom/qti/dpmapi/DpmApi;

    .line 112
    iput-object v0, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->dozeTrigger:Lcom/qti/dpmapi/DpmApi$DpmNsrmTrigger;

    .line 114
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->NsrmPollTimer:Ljava/util/Timer;

    .line 116
    new-instance v0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr$1;

    invoke-direct {v0, p0}, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr$1;-><init>(Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;)V

    iput-object v0, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 274
    new-instance v0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr$2;

    invoke-direct {v0, p0}, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr$2;-><init>(Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;)V

    iput-object v0, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->mGpsListener:Landroid/location/GpsStatus$Listener;

    .line 297
    iput-object p1, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->mContext:Landroid/content/Context;

    .line 298
    iput-object p2, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->mDpm:Lcom/qti/dpm/DpmService;

    .line 299
    invoke-direct {p0}, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->initialize()V

    .line 300
    return-void
.end method

.method static synthetic access$000(Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;)Ljava/util/Timer;
    .locals 1
    .param p0, "x0"    # Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->NsrmPollTimer:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic access$002(Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;Ljava/util/Timer;)Ljava/util/Timer;
    .locals 0
    .param p0, "x0"    # Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;
    .param p1, "x1"    # Ljava/util/Timer;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->NsrmPollTimer:Ljava/util/Timer;

    return-object p1
.end method

.method static synthetic access$100(Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;)V
    .locals 0
    .param p0, "x0"    # Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->pollBackgroundEvents()V

    return-void
.end method

.method static synthetic access$1000(Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;)Z
    .locals 1
    .param p0, "x0"    # Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->gpsOn:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;
    .param p1, "x1"    # Z

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->gpsOn:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;)Z
    .locals 1
    .param p0, "x0"    # Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->gpsOn_shadow:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;
    .param p1, "x1"    # Z

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->gpsOn_shadow:Z

    return p1
.end method

.method static synthetic access$200(Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->sendNsrmState(IZ)V

    return-void
.end method

.method static synthetic access$300(Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;)Z
    .locals 1
    .param p0, "x0"    # Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->hdmiConnected:Z

    return v0
.end method

.method static synthetic access$302(Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;
    .param p1, "x1"    # Z

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->hdmiConnected:Z

    return p1
.end method

.method static synthetic access$400(Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;)Z
    .locals 1
    .param p0, "x0"    # Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->usbConnected:Z

    return v0
.end method

.method static synthetic access$402(Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;
    .param p1, "x1"    # Z

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->usbConnected:Z

    return p1
.end method

.method static synthetic access$500(Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;)Z
    .locals 1
    .param p0, "x0"    # Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->usbConnected_shadow:Z

    return v0
.end method

.method static synthetic access$502(Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;
    .param p1, "x1"    # Z

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->usbConnected_shadow:Z

    return p1
.end method

.method static synthetic access$600(Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;)Z
    .locals 1
    .param p0, "x0"    # Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->bluetoothConnected:Z

    return v0
.end method

.method static synthetic access$602(Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;
    .param p1, "x1"    # Z

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->bluetoothConnected:Z

    return p1
.end method

.method static synthetic access$700(Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;)Z
    .locals 1
    .param p0, "x0"    # Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->bluetoothConnected_shadow:Z

    return v0
.end method

.method static synthetic access$702(Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;
    .param p1, "x1"    # Z

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->bluetoothConnected_shadow:Z

    return p1
.end method

.method static synthetic access$800(Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;)Z
    .locals 1
    .param p0, "x0"    # Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->wifip2pOn:Z

    return v0
.end method

.method static synthetic access$802(Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;
    .param p1, "x1"    # Z

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->wifip2pOn:Z

    return p1
.end method

.method static synthetic access$900(Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;)V
    .locals 0
    .param p0, "x0"    # Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->updateDozeTriggerStatus()V

    return-void
.end method

.method private createDozeTrigger()V
    .locals 4

    .prologue
    .line 373
    :try_start_0
    new-instance v1, Lcom/qti/dpmapi/DpmApi;

    iget-object v2, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/qti/dpmapi/DpmApi;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->dpmApi:Lcom/qti/dpmapi/DpmApi;

    .line 374
    iget-object v1, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->dpmApi:Lcom/qti/dpmapi/DpmApi;

    const-string v2, "DOZE_NSRM_COEX"

    sget-object v3, Lcom/qti/dpmapi/DpmApi$DpmNsrmTriggerType;->DPM_VENDOR_TRIGGER:Lcom/qti/dpmapi/DpmApi$DpmNsrmTriggerType;

    invoke-virtual {v1, v2, v3}, Lcom/qti/dpmapi/DpmApi;->getNsrmTrigger(Ljava/lang/String;Lcom/qti/dpmapi/DpmApi$DpmNsrmTriggerType;)Lcom/qti/dpmapi/DpmApi$DpmNsrmTrigger;

    move-result-object v1

    iput-object v1, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->dozeTrigger:Lcom/qti/dpmapi/DpmApi$DpmNsrmTrigger;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 380
    :goto_0
    return-void

    .line 376
    :catch_0
    move-exception v0

    .line 378
    .local v0, "ex":Ljava/lang/Exception;
    const-string v1, "DPM:NSRM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "could not create doze Vendor trigger"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qti/dpm/DpmMsg;->logw(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private initialize()V
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 304
    const-string v0, "deviceidle"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IDeviceIdleController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IDeviceIdleController;

    move-result-object v0

    iput-object v0, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->dic:Landroid/os/IDeviceIdleController;

    .line 307
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->mFilter1:Landroid/content/IntentFilter;

    .line 308
    iget-object v0, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->mFilter1:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 309
    iget-object v0, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->mFilter1:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 310
    iget-object v0, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->mFilter1:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 311
    iget-object v0, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->mFilter1:Landroid/content/IntentFilter;

    const-string v1, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 312
    iget-object v0, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->mFilter1:Landroid/content/IntentFilter;

    const-string v1, "android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 313
    iget-object v0, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->mFilter1:Landroid/content/IntentFilter;

    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 314
    iget-object v0, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->mFilter1:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 315
    iget-object v0, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->mFilter1:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.DATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 316
    iget-object v0, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->mFilter1:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.HDMI_PLUGGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 317
    iget-object v0, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->mFilter1:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 318
    iget-object v0, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->mFilter1:Landroid/content/IntentFilter;

    const-string v1, "android.os.action.DEVICE_IDLE_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 319
    iget-object v0, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->mFilter1:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 321
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->mFilter3:Landroid/content/IntentFilter;

    .line 322
    iget-object v0, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->mFilter3:Landroid/content/IntentFilter;

    const/16 v1, 0x3e7

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 323
    iget-object v0, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->mFilter3:Landroid/content/IntentFilter;

    const-string v1, "android.provider.Telephony.SMS_EMERGENCY_CB_RECEIVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 324
    iget-object v0, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->mFilter3:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 326
    iput-boolean v4, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->microphoneMuted:Z

    .line 327
    iput-boolean v4, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->microphoneMuted_shadow:Z

    .line 328
    iput-boolean v3, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->musicActive:Z

    .line 329
    iput-boolean v3, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->musicActive_shadow:Z

    .line 330
    iput-boolean v3, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->wiredHeadsetOn:Z

    .line 331
    iput-boolean v3, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->wiredHeadsetOn_shadow:Z

    .line 332
    iput-boolean v3, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->speakerOn:Z

    .line 333
    iput-boolean v3, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->speakerOn_shadow:Z

    .line 334
    iput-boolean v3, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->gpsOn:Z

    .line 335
    iput-boolean v3, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->gpsOn_shadow:Z

    .line 336
    iput-boolean v3, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->bluetoothConnected:Z

    .line 337
    iput-boolean v3, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->bluetoothConnected_shadow:Z

    .line 338
    iput-boolean v3, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->wifip2pOn:Z

    .line 340
    iget-object v0, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->mContext:Landroid/content/Context;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->mLocManager:Landroid/location/LocationManager;

    .line 341
    iget-object v0, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->mLocManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->mGpsListener:Landroid/location/GpsStatus$Listener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->addGpsStatusListener(Landroid/location/GpsStatus$Listener;)Z

    .line 342
    iget-object v0, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->NsrmPollTimer:Ljava/util/Timer;

    new-instance v1, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr$3;

    invoke-direct {v1, p0}, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr$3;-><init>(Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;)V

    const-wide/16 v2, 0x1f4

    const-wide/16 v4, 0x1388

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 349
    iget-object v0, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.hardware.usb.action.USB_STATE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v7

    .line 351
    .local v7, "usbIntent":Landroid/content/Intent;
    if-eqz v7, :cond_1

    .line 352
    invoke-virtual {v7}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    .line 353
    .local v6, "extras":Landroid/os/Bundle;
    if-nez v6, :cond_0

    .line 367
    .end local v6    # "extras":Landroid/os/Bundle;
    :goto_0
    return-void

    .line 358
    .restart local v6    # "extras":Landroid/os/Bundle;
    :cond_0
    const-string v0, "connected"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->usbConnected:Z

    .line 359
    iget-boolean v0, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->usbConnected:Z

    iget-boolean v1, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->usbConnected_shadow:Z

    if-eq v0, v1, :cond_1

    .line 360
    const/4 v0, 0x3

    iget-boolean v1, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->usbConnected:Z

    invoke-direct {p0, v0, v1}, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->sendNsrmState(IZ)V

    .line 361
    iget-boolean v0, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->usbConnected:Z

    iput-boolean v0, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->usbConnected_shadow:Z

    .line 365
    .end local v6    # "extras":Landroid/os/Bundle;
    :cond_1
    invoke-direct {p0}, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->createDozeTrigger()V

    .line 366
    invoke-direct {p0}, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->updateDozeTriggerStatus()V

    goto :goto_0
.end method

.method private pollBackgroundEvents()V
    .locals 7

    .prologue
    const/4 v6, 0x6

    const/4 v5, 0x4

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 399
    iget-object v1, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 402
    .local v0, "audioManager":Landroid/media/AudioManager;
    invoke-static {v3, v3}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v4, v3}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x2

    invoke-static {v1, v3}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x3

    invoke-static {v1, v3}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v5, v3}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x5

    invoke-static {v1, v3}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v6, v3}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x7

    invoke-static {v1, v3}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x8

    invoke-static {v1, v3}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x9

    invoke-static {v1, v3}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 417
    :cond_0
    iput-boolean v4, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->speakerOn:Z

    .line 444
    :goto_0
    invoke-virtual {v0}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v1

    iput-boolean v1, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->musicActive:Z

    .line 445
    invoke-virtual {v0}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v1

    iput-boolean v1, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->wiredHeadsetOn:Z

    .line 447
    iget-boolean v1, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->musicActive_shadow:Z

    iget-boolean v2, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->musicActive:Z

    if-eq v1, v2, :cond_1

    .line 449
    iget-boolean v1, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->musicActive:Z

    invoke-direct {p0, v6, v1}, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->sendNsrmState(IZ)V

    .line 451
    :cond_1
    iget-boolean v1, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->wiredHeadsetOn:Z

    iget-boolean v2, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->wiredHeadsetOn_shadow:Z

    if-eq v1, v2, :cond_2

    .line 453
    iget-boolean v1, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->wiredHeadsetOn:Z

    invoke-direct {p0, v5, v1}, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->sendNsrmState(IZ)V

    .line 456
    :cond_2
    iget-boolean v1, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->speakerOn:Z

    iget-boolean v2, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->speakerOn_shadow:Z

    if-eq v1, v2, :cond_3

    .line 457
    const/16 v1, 0xa

    iget-boolean v2, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->speakerOn:Z

    invoke-direct {p0, v1, v2}, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->sendNsrmState(IZ)V

    .line 460
    :cond_3
    iget-boolean v1, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->microphoneMuted:Z

    iput-boolean v1, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->microphoneMuted_shadow:Z

    .line 461
    iget-boolean v1, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->musicActive:Z

    iput-boolean v1, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->musicActive_shadow:Z

    .line 462
    iget-boolean v1, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->wiredHeadsetOn:Z

    iput-boolean v1, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->wiredHeadsetOn_shadow:Z

    .line 463
    iget-boolean v1, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->speakerOn:Z

    iput-boolean v1, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->speakerOn_shadow:Z

    .line 464
    return-void

    .line 420
    :cond_4
    iput-boolean v3, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->speakerOn:Z

    goto :goto_0
.end method

.method private sendNsrmState(IZ)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "state"    # Z

    .prologue
    const/4 v1, 0x1

    .line 384
    const/16 v2, 0xc

    invoke-static {v2}, Lcom/qti/dpm/DpmRequest;->obtain(I)Lcom/qti/dpm/DpmRequest;

    move-result-object v0

    .line 385
    .local v0, "rr":Lcom/qti/dpm/DpmRequest;
    if-nez v0, :cond_0

    .line 386
    const-string v1, "DPM:NSRM"

    const-string v2, "sendNsrmState: rr=NULL"

    invoke-static {v1, v2}, Lcom/qti/dpm/DpmMsg;->logw(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    :goto_0
    return-void

    .line 389
    :cond_0
    iget-object v2, v0, Lcom/qti/dpm/DpmRequest;->mp:Landroid/os/Parcel;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 390
    iget-object v2, v0, Lcom/qti/dpm/DpmRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v2, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 391
    iget-object v2, v0, Lcom/qti/dpm/DpmRequest;->mp:Landroid/os/Parcel;

    if-ne p2, v1, :cond_1

    :goto_1
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 393
    const-string v1, "DPM:NSRM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendNsrmState: type:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " state:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qti/dpm/DpmMsg;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    iget-object v1, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->mDpm:Lcom/qti/dpm/DpmService;

    invoke-virtual {v1, v0}, Lcom/qti/dpm/DpmService;->send(Lcom/qti/dpm/DpmRequest;)V

    goto :goto_0

    .line 391
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private updateDozeTriggerStatus()V
    .locals 6

    .prologue
    .line 249
    iget-object v3, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->dic:Landroid/os/IDeviceIdleController;

    if-eqz v3, :cond_1

    .line 253
    :try_start_0
    const-string v3, "DPM:NSRM"

    const-string v4, "updateDozeTriggerStatus"

    invoke-static {v3, v4}, Lcom/qti/dpm/DpmMsg;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    iget-object v3, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->dic:Landroid/os/IDeviceIdleController;

    invoke-interface {v3}, Landroid/os/IDeviceIdleController;->getIdleStateDetailed()I

    move-result v0

    .line 255
    .local v0, "dicState":I
    const-string v3, "DPM:NSRM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "doze detailed state: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qti/dpm/DpmMsg;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    const/4 v3, 0x5

    if-eq v0, v3, :cond_0

    const/4 v3, 0x6

    if-ne v0, v3, :cond_2

    .line 258
    :cond_0
    iget-object v3, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->dozeTrigger:Lcom/qti/dpmapi/DpmApi$DpmNsrmTrigger;

    invoke-virtual {v3}, Lcom/qti/dpmapi/DpmApi$DpmNsrmTrigger;->enable()Z

    .line 272
    .end local v0    # "dicState":I
    :cond_1
    :goto_0
    return-void

    .line 262
    .restart local v0    # "dicState":I
    :cond_2
    iget-object v3, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->dozeTrigger:Lcom/qti/dpmapi/DpmApi$DpmNsrmTrigger;

    invoke-virtual {v3}, Lcom/qti/dpmapi/DpmApi$DpmNsrmTrigger;->disable()Z
    :try_end_0
    .catch Lcom/qti/dpmapi/DpmApiException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 264
    .end local v0    # "dicState":I
    :catch_0
    move-exception v1

    .line 266
    .local v1, "ex":Lcom/qti/dpmapi/DpmApiException;
    const-string v3, "DPM:NSRM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "could not enable/disable dozeVendor trigger"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qti/dpm/DpmMsg;->logw(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 267
    .end local v1    # "ex":Lcom/qti/dpmapi/DpmApiException;
    :catch_1
    move-exception v2

    .line 269
    .local v2, "rex":Landroid/os/RemoteException;
    const-string v3, "DPM:NSRM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "could not getIdleStateDetailed "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qti/dpm/DpmMsg;->logw(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method protected recoverNSRMEventStates()V
    .locals 2

    .prologue
    .line 467
    const-string v0, "DPM:NSRM"

    const-string v1, "Recover NSRM Event States"

    invoke-static {v0, v1}, Lcom/qti/dpm/DpmMsg;->rlog(Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    const/4 v0, 0x2

    iget-boolean v1, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->gpsOn:Z

    invoke-direct {p0, v0, v1}, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->sendNsrmState(IZ)V

    .line 470
    const/4 v0, 0x3

    iget-boolean v1, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->usbConnected:Z

    invoke-direct {p0, v0, v1}, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->sendNsrmState(IZ)V

    .line 471
    const/4 v0, 0x4

    iget-boolean v1, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->wiredHeadsetOn:Z

    invoke-direct {p0, v0, v1}, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->sendNsrmState(IZ)V

    .line 472
    const/4 v0, 0x5

    iget-boolean v1, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->bluetoothConnected:Z

    invoke-direct {p0, v0, v1}, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->sendNsrmState(IZ)V

    .line 473
    const/4 v0, 0x6

    iget-boolean v1, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->musicActive:Z

    invoke-direct {p0, v0, v1}, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->sendNsrmState(IZ)V

    .line 476
    const/16 v0, 0x8

    iget-boolean v1, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->hdmiConnected:Z

    invoke-direct {p0, v0, v1}, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->sendNsrmState(IZ)V

    .line 477
    const/16 v0, 0xa

    iget-boolean v1, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->speakerOn:Z

    invoke-direct {p0, v0, v1}, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->sendNsrmState(IZ)V

    .line 478
    const/16 v0, 0xd

    iget-boolean v1, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->wifip2pOn:Z

    invoke-direct {p0, v0, v1}, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->sendNsrmState(IZ)V

    .line 479
    return-void
.end method
