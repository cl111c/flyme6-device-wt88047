.class public Lcom/android/server/input/InputManagerService;
.super Landroid/hardware/input/IInputManager$Stub;
.source "InputManagerService.java"

# interfaces
.implements Lcom/android/server/Watchdog$Monitor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;,
        Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;,
        Lcom/android/server/input/InputManagerService$InputManagerHandler;,
        Lcom/android/server/input/InputManagerService$InputFilterHost;,
        Lcom/android/server/input/InputManagerService$ChainedInputFilterHost;,
        Lcom/android/server/input/InputManagerService$KeyboardLayoutDescriptor;,
        Lcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;,
        Lcom/android/server/input/InputManagerService$InputDevicesChangedListenerRecord;,
        Lcom/android/server/input/InputManagerService$TabletModeChangedListenerRecord;,
        Lcom/android/server/input/InputManagerService$VibratorToken;,
        Lcom/android/server/input/InputManagerService$LocalService;
    }
.end annotation


# static fields
.field public static final BTN_MOUSE:I = 0x110

.field static final DEBUG:Z = false

.field private static final EXCLUDED_DEVICES_PATH:Ljava/lang/String; = "etc/excluded-input-devices.xml"

.field private static final INJECTION_TIMEOUT_MILLIS:I = 0x7530

.field private static final INPUT_EVENT_INJECTION_FAILED:I = 0x2

.field private static final INPUT_EVENT_INJECTION_PERMISSION_DENIED:I = 0x1

.field private static final INPUT_EVENT_INJECTION_SUCCEEDED:I = 0x0

.field private static final INPUT_EVENT_INJECTION_TIMED_OUT:I = 0x3

.field public static final KEY_STATE_DOWN:I = 0x1

.field public static final KEY_STATE_UNKNOWN:I = -0x1

.field public static final KEY_STATE_UP:I = 0x0

.field public static final KEY_STATE_VIRTUAL:I = 0x2

.field private static final MSG_DELIVER_INPUT_DEVICES_CHANGED:I = 0x1

.field private static final MSG_DELIVER_TABLET_MODE_CHANGED:I = 0x6

.field private static final MSG_RELOAD_DEVICE_ALIASES:I = 0x5

.field private static final MSG_RELOAD_KEYBOARD_LAYOUTS:I = 0x3

.field private static final MSG_SWITCH_KEYBOARD_LAYOUT:I = 0x2

.field private static final MSG_UPDATE_KEYBOARD_LAYOUTS:I = 0x4

.field public static final SW_CAMERA_LENS_COVER:I = 0x9

.field public static final SW_CAMERA_LENS_COVER_BIT:I = 0x200

.field public static final SW_HEADPHONE_INSERT:I = 0x2

.field public static final SW_HEADPHONE_INSERT_BIT:I = 0x4

.field public static final SW_JACK_BITS:I = 0xd4

.field public static final SW_JACK_PHYSICAL_INSERT:I = 0x7

.field public static final SW_JACK_PHYSICAL_INSERT_BIT:I = 0x80

.field public static final SW_KEYPAD_SLIDE:I = 0xa

.field public static final SW_KEYPAD_SLIDE_BIT:I = 0x400

.field public static final SW_LID:I = 0x0

.field public static final SW_LID_BIT:I = 0x1

.field public static final SW_LINEOUT_INSERT:I = 0x6

.field public static final SW_LINEOUT_INSERT_BIT:I = 0x40

.field public static final SW_MICROPHONE_INSERT:I = 0x4

.field public static final SW_MICROPHONE_INSERT_BIT:I = 0x10

.field public static final SW_TABLET_MODE:I = 0x1

.field public static final SW_TABLET_MODE_BIT:I = 0x2

.field static final TAG:Ljava/lang/String; = "InputManager"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDataStore:Lcom/android/server/input/PersistentDataStore;

.field private final mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

.field private mInputDevices:[Landroid/view/InputDevice;

.field private final mInputDevicesChangedListeners:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/input/InputManagerService$InputDevicesChangedListenerRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mInputDevicesChangedPending:Z

.field private mInputDevicesLock:Ljava/lang/Object;

.field mInputFilterChain:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/input/InputManagerService$ChainedInputFilterHost;",
            ">;"
        }
    .end annotation
.end field

.field mInputFilterHost:Lcom/android/server/input/InputManagerService$ChainedInputFilterHost;

.field final mInputFilterLock:Ljava/lang/Object;

.field private mKeyboardLayoutIntent:Landroid/app/PendingIntent;

.field private mKeyboardLayoutNotificationShown:Z

.field private mNextVibratorTokenValue:I

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private final mPtr:J

.field private mSwitchedKeyboardLayoutToast:Landroid/widget/Toast;

.field private mSystemReady:Z

.field private final mTabletModeChangedListeners:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/input/InputManagerService$TabletModeChangedListenerRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mTabletModeLock:Ljava/lang/Object;

.field private final mTempFullKeyboards:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/InputDevice;",
            ">;"
        }
    .end annotation
.end field

.field private final mTempInputDevicesChangedListenersToNotify:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/input/InputManagerService$InputDevicesChangedListenerRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mTempTabletModeChangedListenersToNotify:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/input/InputManagerService$TabletModeChangedListenerRecord;",
            ">;"
        }
    .end annotation
.end field

.field final mUseDevInputEventForAudioJack:Z

.field private mVibratorLock:Ljava/lang/Object;

.field private mVibratorTokens:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/input/InputManagerService$VibratorToken;",
            ">;"
        }
    .end annotation
.end field

.field private mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

.field private mWiredAccessoryCallbacks:Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;


# direct methods
.method static synthetic -get0(Lcom/android/server/input/InputManagerService;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    return-wide v0
.end method

.method static synthetic -wrap0(Lcom/android/server/input/InputManagerService;Landroid/view/InputEvent;II)Z
    .locals 1
    .param p1, "event"    # Landroid/view/InputEvent;
    .param p2, "displayId"    # I
    .param p3, "mode"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/input/InputManagerService;->injectInputEventInternal(Landroid/view/InputEvent;II)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(JLandroid/view/InputEvent;IIIIII)I
    .locals 2
    .param p0, "ptr"    # J
    .param p2, "event"    # Landroid/view/InputEvent;
    .param p3, "displayId"    # I
    .param p4, "injectorPid"    # I
    .param p5, "injectorUid"    # I
    .param p6, "syncMode"    # I
    .param p7, "timeoutMillis"    # I
    .param p8, "policyFlags"    # I

    .prologue
    invoke-static/range {p0 .. p8}, Lcom/android/server/input/InputManagerService;->nativeInjectInputEvent(JLandroid/view/InputEvent;IIIIII)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap10(Lcom/android/server/input/InputManagerService;Landroid/hardware/display/DisplayViewport;Landroid/hardware/display/DisplayViewport;)V
    .locals 0
    .param p1, "defaultViewport"    # Landroid/hardware/display/DisplayViewport;
    .param p2, "externalTouchViewport"    # Landroid/hardware/display/DisplayViewport;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/input/InputManagerService;->setDisplayViewportsInternal(Landroid/hardware/display/DisplayViewport;Landroid/hardware/display/DisplayViewport;)V

    return-void
.end method

.method static synthetic -wrap11(Lcom/android/server/input/InputManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/input/InputManagerService;->updateKeyboardLayouts()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/input/InputManagerService;[Landroid/view/InputDevice;)V
    .locals 0
    .param p1, "oldInputDevices"    # [Landroid/view/InputDevice;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/input/InputManagerService;->deliverInputDevicesChanged([Landroid/view/InputDevice;)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/input/InputManagerService;JZ)V
    .locals 1
    .param p1, "whenNanos"    # J
    .param p3, "inTabletMode"    # Z

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/input/InputManagerService;->deliverTabletModeChanged(JZ)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/server/input/InputManagerService;II)V
    .locals 0
    .param p1, "deviceId"    # I
    .param p2, "direction"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/input/InputManagerService;->handleSwitchKeyboardLayout(II)V

    return-void
.end method

.method static synthetic -wrap5(JZ)V
    .locals 0
    .param p0, "ptr"    # J
    .param p2, "interactive"    # Z

    .prologue
    invoke-static {p0, p1, p2}, Lcom/android/server/input/InputManagerService;->nativeSetInteractive(JZ)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/server/input/InputManagerService;I)V
    .locals 0
    .param p1, "pid"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/input/InputManagerService;->onInputDevicesChangedListenerDied(I)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/server/input/InputManagerService;I)V
    .locals 0
    .param p1, "pid"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/input/InputManagerService;->onTabletModeChangedListenerDied(I)V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/server/input/InputManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/input/InputManagerService;->reloadDeviceAliases()V

    return-void
.end method

.method static synthetic -wrap9(Lcom/android/server/input/InputManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/input/InputManagerService;->reloadKeyboardLayouts()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 283
    invoke-direct {p0}, Landroid/hardware/input/IInputManager$Stub;-><init>()V

    .line 132
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/input/InputManagerService;->mTabletModeLock:Ljava/lang/Object;

    .line 135
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 134
    iput-object v0, p0, Lcom/android/server/input/InputManagerService;->mTabletModeChangedListeners:Landroid/util/SparseArray;

    .line 137
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 136
    iput-object v0, p0, Lcom/android/server/input/InputManagerService;->mTempTabletModeChangedListenersToNotify:Ljava/util/List;

    .line 140
    new-instance v0, Lcom/android/server/input/PersistentDataStore;

    invoke-direct {v0}, Lcom/android/server/input/PersistentDataStore;-><init>()V

    iput-object v0, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    .line 143
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesLock:Ljava/lang/Object;

    .line 145
    const/4 v0, 0x0

    new-array v0, v0, [Landroid/view/InputDevice;

    iput-object v0, p0, Lcom/android/server/input/InputManagerService;->mInputDevices:[Landroid/view/InputDevice;

    .line 147
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 146
    iput-object v0, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesChangedListeners:Landroid/util/SparseArray;

    .line 150
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 149
    iput-object v0, p0, Lcom/android/server/input/InputManagerService;->mTempInputDevicesChangedListenersToNotify:Ljava/util/ArrayList;

    .line 152
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/input/InputManagerService;->mTempFullKeyboards:Ljava/util/ArrayList;

    .line 158
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/input/InputManagerService;->mVibratorLock:Ljava/lang/Object;

    .line 160
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 159
    iput-object v0, p0, Lcom/android/server/input/InputManagerService;->mVibratorTokens:Ljava/util/HashMap;

    .line 164
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/input/InputManagerService;->mInputFilterLock:Ljava/lang/Object;

    .line 167
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 166
    iput-object v0, p0, Lcom/android/server/input/InputManagerService;->mInputFilterChain:Ljava/util/ArrayList;

    .line 284
    iput-object p1, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    .line 285
    new-instance v0, Lcom/android/server/input/InputManagerService$InputManagerHandler;

    invoke-static {}, Lcom/android/server/DisplayThread;->get()Lcom/android/server/DisplayThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/DisplayThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/input/InputManagerService$InputManagerHandler;-><init>(Lcom/android/server/input/InputManagerService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    .line 288
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1120085

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 287
    iput-boolean v0, p0, Lcom/android/server/input/InputManagerService;->mUseDevInputEventForAudioJack:Z

    .line 289
    const-string/jumbo v0, "InputManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Initializing input manager, mUseDevInputEventForAudioJack="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 290
    iget-boolean v2, p0, Lcom/android/server/input/InputManagerService;->mUseDevInputEventForAudioJack:Z

    .line 289
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    invoke-virtual {v1}, Lcom/android/server/input/InputManagerService$InputManagerHandler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/android/server/input/InputManagerService;->nativeInit(Lcom/android/server/input/InputManagerService;Landroid/content/Context;Landroid/os/MessageQueue;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    .line 293
    const-class v0, Landroid/hardware/input/InputManagerInternal;

    new-instance v1, Lcom/android/server/input/InputManagerService$LocalService;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/input/InputManagerService$LocalService;-><init>(Lcom/android/server/input/InputManagerService;Lcom/android/server/input/InputManagerService$LocalService;)V

    invoke-static {v0, v1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 283
    return-void
.end method

.method private cancelVibrateIfNeeded(Lcom/android/server/input/InputManagerService$VibratorToken;)V
    .locals 4
    .param p1, "v"    # Lcom/android/server/input/InputManagerService$VibratorToken;

    .prologue
    .line 1539
    monitor-enter p1

    .line 1540
    :try_start_0
    iget-boolean v0, p1, Lcom/android/server/input/InputManagerService$VibratorToken;->mVibrating:Z

    if-eqz v0, :cond_0

    .line 1541
    iget-wide v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    iget v2, p1, Lcom/android/server/input/InputManagerService$VibratorToken;->mDeviceId:I

    iget v3, p1, Lcom/android/server/input/InputManagerService$VibratorToken;->mTokenValue:I

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/input/InputManagerService;->nativeCancelVibrate(JII)V

    .line 1542
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/server/input/InputManagerService$VibratorToken;->mVibrating:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p1

    .line 1538
    return-void

    .line 1539
    :catchall_0
    move-exception v0

    monitor-exit p1

    throw v0
.end method

.method private checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "func"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1566
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 1567
    return v4

    .line 1570
    :cond_0
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    .line 1571
    return v4

    .line 1573
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Permission Denial: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " from pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1574
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 1573
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1575
    const-string/jumbo v2, ", uid="

    .line 1573
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1575
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 1573
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1576
    const-string/jumbo v2, " requires "

    .line 1573
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1577
    .local v0, "msg":Ljava/lang/String;
    const-string/jumbo v1, "InputManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1578
    return v3
.end method

.method private checkInjectEventsPermission(II)Z
    .locals 3
    .param p1, "injectorPid"    # I
    .param p2, "injectorUid"    # I

    .prologue
    const/4 v0, 0x0

    .line 1698
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "android.permission.INJECT_EVENTS"

    invoke-virtual {v1, v2, p1, p2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private static containsInputDeviceWithDescriptor([Landroid/view/InputDevice;Ljava/lang/String;)Z
    .locals 4
    .param p0, "inputDevices"    # [Landroid/view/InputDevice;
    .param p1, "descriptor"    # Ljava/lang/String;

    .prologue
    .line 971
    array-length v2, p0

    .line 972
    .local v2, "numDevices":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 973
    aget-object v1, p0, v0

    .line 974
    .local v1, "inputDevice":Landroid/view/InputDevice;
    invoke-virtual {v1}, Landroid/view/InputDevice;->getDescriptor()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 975
    const/4 v3, 0x1

    return v3

    .line 972
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 978
    .end local v1    # "inputDevice":Landroid/view/InputDevice;
    :cond_1
    const/4 v3, 0x0

    return v3
.end method

.method private deliverInputDevicesChanged([Landroid/view/InputDevice;)V
    .locals 17
    .param p1, "oldInputDevices"    # [Landroid/view/InputDevice;

    .prologue
    .line 718
    const/4 v11, 0x0

    .line 719
    .local v11, "numFullKeyboardsAdded":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/input/InputManagerService;->mTempInputDevicesChangedListenersToNotify:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->clear()V

    .line 720
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/input/InputManagerService;->mTempFullKeyboards:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->clear()V

    .line 723
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/input/InputManagerService;->mInputDevicesLock:Ljava/lang/Object;

    monitor-enter v15

    .line 724
    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/server/input/InputManagerService;->mInputDevicesChangedPending:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v14, :cond_0

    monitor-exit v15

    .line 725
    return-void

    .line 727
    :cond_0
    const/4 v14, 0x0

    :try_start_1
    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/server/input/InputManagerService;->mInputDevicesChangedPending:Z

    .line 729
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/input/InputManagerService;->mInputDevicesChangedListeners:Landroid/util/SparseArray;

    invoke-virtual {v14}, Landroid/util/SparseArray;->size()I

    move-result v13

    .line 730
    .local v13, "numListeners":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v13, :cond_1

    .line 731
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/input/InputManagerService;->mTempInputDevicesChangedListenersToNotify:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    .line 732
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/input/InputManagerService;->mInputDevicesChangedListeners:Landroid/util/SparseArray;

    invoke-virtual {v14, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/input/InputManagerService$InputDevicesChangedListenerRecord;

    .line 731
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 730
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 735
    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/input/InputManagerService;->mInputDevices:[Landroid/view/InputDevice;

    array-length v9, v14

    .line 736
    .local v9, "numDevices":I
    mul-int/lit8 v14, v9, 0x2

    new-array v1, v14, [I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 737
    .local v1, "deviceIdAndGeneration":[I
    const/4 v2, 0x0

    move v12, v11

    .end local v11    # "numFullKeyboardsAdded":I
    .local v12, "numFullKeyboardsAdded":I
    :goto_1
    if-ge v2, v9, :cond_4

    .line 738
    :try_start_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/input/InputManagerService;->mInputDevices:[Landroid/view/InputDevice;

    aget-object v3, v14, v2

    .line 739
    .local v3, "inputDevice":Landroid/view/InputDevice;
    mul-int/lit8 v14, v2, 0x2

    invoke-virtual {v3}, Landroid/view/InputDevice;->getId()I

    move-result v16

    aput v16, v1, v14

    .line 740
    mul-int/lit8 v14, v2, 0x2

    add-int/lit8 v14, v14, 0x1

    invoke-virtual {v3}, Landroid/view/InputDevice;->getGeneration()I

    move-result v16

    aput v16, v1, v14

    .line 742
    invoke-virtual {v3}, Landroid/view/InputDevice;->isVirtual()Z

    move-result v14

    if-nez v14, :cond_2

    invoke-virtual {v3}, Landroid/view/InputDevice;->isFullKeyboard()Z

    move-result v14

    if-eqz v14, :cond_c

    .line 744
    invoke-virtual {v3}, Landroid/view/InputDevice;->getDescriptor()Ljava/lang/String;

    move-result-object v14

    .line 743
    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lcom/android/server/input/InputManagerService;->containsInputDeviceWithDescriptor([Landroid/view/InputDevice;Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_3

    .line 745
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/input/InputManagerService;->mTempFullKeyboards:Ljava/util/ArrayList;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    add-int/lit8 v11, v12, 0x1

    .end local v12    # "numFullKeyboardsAdded":I
    .restart local v11    # "numFullKeyboardsAdded":I
    :try_start_3
    invoke-virtual {v14, v12, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 737
    :goto_2
    add-int/lit8 v2, v2, 0x1

    move v12, v11

    .end local v11    # "numFullKeyboardsAdded":I
    .restart local v12    # "numFullKeyboardsAdded":I
    goto :goto_1

    :cond_2
    move v11, v12

    .line 742
    .end local v12    # "numFullKeyboardsAdded":I
    .restart local v11    # "numFullKeyboardsAdded":I
    goto :goto_2

    .line 747
    .end local v11    # "numFullKeyboardsAdded":I
    .restart local v12    # "numFullKeyboardsAdded":I
    :cond_3
    :try_start_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/input/InputManagerService;->mTempFullKeyboards:Ljava/util/ArrayList;

    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move v11, v12

    .end local v12    # "numFullKeyboardsAdded":I
    .restart local v11    # "numFullKeyboardsAdded":I
    goto :goto_2

    .end local v3    # "inputDevice":Landroid/view/InputDevice;
    .end local v11    # "numFullKeyboardsAdded":I
    .restart local v12    # "numFullKeyboardsAdded":I
    :cond_4
    monitor-exit v15

    .line 754
    const/4 v2, 0x0

    :goto_3
    if-ge v2, v13, :cond_5

    .line 755
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/input/InputManagerService;->mTempInputDevicesChangedListenersToNotify:Ljava/util/ArrayList;

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/input/InputManagerService$InputDevicesChangedListenerRecord;

    invoke-virtual {v14, v1}, Lcom/android/server/input/InputManagerService$InputDevicesChangedListenerRecord;->notifyInputDevicesChanged([I)V

    .line 754
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 723
    .end local v1    # "deviceIdAndGeneration":[I
    .end local v2    # "i":I
    .end local v9    # "numDevices":I
    .end local v12    # "numFullKeyboardsAdded":I
    .end local v13    # "numListeners":I
    .restart local v11    # "numFullKeyboardsAdded":I
    :catchall_0
    move-exception v14

    :goto_4
    monitor-exit v15

    throw v14

    .line 758
    .end local v11    # "numFullKeyboardsAdded":I
    .restart local v1    # "deviceIdAndGeneration":[I
    .restart local v2    # "i":I
    .restart local v9    # "numDevices":I
    .restart local v12    # "numFullKeyboardsAdded":I
    .restart local v13    # "numListeners":I
    :cond_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/input/InputManagerService;->mTempInputDevicesChangedListenersToNotify:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->clear()V

    .line 761
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/input/InputManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    if-eqz v14, :cond_9

    .line 762
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/input/InputManagerService;->mTempFullKeyboards:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 763
    .local v10, "numFullKeyboards":I
    const/4 v6, 0x0

    .line 764
    .local v6, "missingLayoutForExternalKeyboard":Z
    const/4 v7, 0x0

    .line 765
    .local v7, "missingLayoutForExternalKeyboardAdded":Z
    const/4 v8, 0x0

    .line 766
    .local v8, "multipleMissingLayoutsForExternalKeyboardsAdded":Z
    const/4 v4, 0x0

    .line 767
    .local v4, "keyboardMissingLayout":Landroid/view/InputDevice;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    monitor-enter v15

    .line 768
    const/4 v2, 0x0

    .end local v4    # "keyboardMissingLayout":Landroid/view/InputDevice;
    :goto_5
    if-ge v2, v10, :cond_8

    .line 769
    :try_start_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/input/InputManagerService;->mTempFullKeyboards:Ljava/util/ArrayList;

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/InputDevice;

    .line 771
    .restart local v3    # "inputDevice":Landroid/view/InputDevice;
    invoke-virtual {v3}, Landroid/view/InputDevice;->getIdentifier()Landroid/hardware/input/InputDeviceIdentifier;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/server/input/InputManagerService;->getCurrentKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;)Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result-object v5

    .line 772
    .local v5, "layout":Ljava/lang/String;
    if-nez v5, :cond_6

    .line 773
    const/4 v6, 0x1

    .line 774
    if-ge v2, v12, :cond_6

    .line 775
    const/4 v7, 0x1

    .line 776
    if-nez v4, :cond_7

    .line 777
    move-object v4, v3

    .line 768
    :cond_6
    :goto_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 779
    :cond_7
    const/4 v8, 0x1

    goto :goto_6

    .end local v3    # "inputDevice":Landroid/view/InputDevice;
    .end local v5    # "layout":Ljava/lang/String;
    :cond_8
    monitor-exit v15

    .line 785
    if-eqz v6, :cond_b

    .line 786
    if-eqz v7, :cond_9

    .line 787
    if-eqz v8, :cond_a

    .line 791
    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/server/input/InputManagerService;->showMissingKeyboardLayoutNotification(Landroid/view/InputDevice;)V

    .line 800
    .end local v6    # "missingLayoutForExternalKeyboard":Z
    .end local v7    # "missingLayoutForExternalKeyboardAdded":Z
    .end local v8    # "multipleMissingLayoutsForExternalKeyboardsAdded":Z
    .end local v10    # "numFullKeyboards":I
    :cond_9
    :goto_7
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/input/InputManagerService;->mTempFullKeyboards:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->clear()V

    .line 716
    return-void

    .line 767
    .restart local v6    # "missingLayoutForExternalKeyboard":Z
    .restart local v7    # "missingLayoutForExternalKeyboardAdded":Z
    .restart local v8    # "multipleMissingLayoutsForExternalKeyboardsAdded":Z
    .restart local v10    # "numFullKeyboards":I
    :catchall_1
    move-exception v14

    monitor-exit v15

    throw v14

    .line 793
    :cond_a
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/input/InputManagerService;->showMissingKeyboardLayoutNotification(Landroid/view/InputDevice;)V

    goto :goto_7

    .line 796
    :cond_b
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/server/input/InputManagerService;->mKeyboardLayoutNotificationShown:Z

    if-eqz v14, :cond_9

    .line 797
    invoke-direct/range {p0 .. p0}, Lcom/android/server/input/InputManagerService;->hideMissingKeyboardLayoutNotification()V

    goto :goto_7

    .line 723
    .end local v6    # "missingLayoutForExternalKeyboard":Z
    .end local v7    # "missingLayoutForExternalKeyboardAdded":Z
    .end local v8    # "multipleMissingLayoutsForExternalKeyboardsAdded":Z
    .end local v10    # "numFullKeyboards":I
    :catchall_2
    move-exception v14

    move v11, v12

    .end local v12    # "numFullKeyboardsAdded":I
    .restart local v11    # "numFullKeyboardsAdded":I
    goto :goto_4

    .end local v11    # "numFullKeyboardsAdded":I
    .restart local v3    # "inputDevice":Landroid/view/InputDevice;
    .restart local v12    # "numFullKeyboardsAdded":I
    :cond_c
    move v11, v12

    .end local v12    # "numFullKeyboardsAdded":I
    .restart local v11    # "numFullKeyboardsAdded":I
    goto/16 :goto_2
.end method

.method private deliverTabletModeChanged(JZ)V
    .locals 5
    .param p1, "whenNanos"    # J
    .param p3, "inTabletMode"    # Z

    .prologue
    .line 889
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mTempTabletModeChangedListenersToNotify:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 891
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mTabletModeLock:Ljava/lang/Object;

    monitor-enter v3

    .line 892
    :try_start_0
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mTabletModeChangedListeners:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 893
    .local v1, "numListeners":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 894
    iget-object v4, p0, Lcom/android/server/input/InputManagerService;->mTempTabletModeChangedListenersToNotify:Ljava/util/List;

    .line 895
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mTabletModeChangedListeners:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/input/InputManagerService$TabletModeChangedListenerRecord;

    .line 894
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 893
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    monitor-exit v3

    .line 898
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_1

    .line 899
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mTempTabletModeChangedListenersToNotify:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/input/InputManagerService$TabletModeChangedListenerRecord;

    invoke-virtual {v2, p1, p2, p3}, Lcom/android/server/input/InputManagerService$TabletModeChangedListenerRecord;->notifyTabletModeChanged(JZ)V

    .line 898
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 891
    .end local v0    # "i":I
    .end local v1    # "numListeners":I
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 888
    .restart local v0    # "i":I
    .restart local v1    # "numListeners":I
    :cond_1
    return-void
.end method

.method private dispatchUnhandledKey(Lcom/android/server/input/InputWindowHandle;Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;
    .locals 1
    .param p1, "focus"    # Lcom/android/server/input/InputWindowHandle;
    .param p2, "event"    # Landroid/view/KeyEvent;
    .param p3, "policyFlags"    # I

    .prologue
    .line 1693
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;->dispatchUnhandledKey(Lcom/android/server/input/InputWindowHandle;Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object v0

    return-object v0
.end method

.method private findInputFilterIndexLocked(Landroid/view/IInputFilter;)I
    .locals 2
    .param p1, "filter"    # Landroid/view/IInputFilter;

    .prologue
    .line 587
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mInputFilterChain:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 588
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mInputFilterChain:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/input/InputManagerService$ChainedInputFilterHost;

    invoke-static {v1}, Lcom/android/server/input/InputManagerService$ChainedInputFilterHost;->-get0(Lcom/android/server/input/InputManagerService$ChainedInputFilterHost;)Landroid/view/IInputFilter;

    move-result-object v1

    if-ne v1, p1, :cond_0

    .line 589
    return v0

    .line 587
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 592
    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method private getDeviceAlias(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "uniqueId"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 1819
    invoke-static {p1}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1821
    return-object v1

    .line 1823
    :cond_0
    return-object v1
.end method

.method private getDoubleTapTimeout()I
    .locals 1

    .prologue
    .line 1766
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v0

    return v0
.end method

.method private getExcludedDeviceNames()[Ljava/lang/String;
    .locals 12

    .prologue
    .line 1710
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1713
    .local v7, "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v8, 0x0

    .line 1715
    .local v8, "parser":Lorg/xmlpull/v1/XmlPullParser;
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v9

    const-string/jumbo v10, "etc/excluded-input-devices.xml"

    invoke-direct {v0, v9, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1716
    .local v0, "confFile":Ljava/io/File;
    const/4 v1, 0x0

    .line 1718
    .local v1, "confreader":Ljava/io/FileReader;
    :try_start_0
    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1719
    .end local v1    # "confreader":Ljava/io/FileReader;
    .local v2, "confreader":Ljava/io/FileReader;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v8

    .line 1720
    .local v8, "parser":Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface {v8, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 1721
    const-string/jumbo v9, "devices"

    invoke-static {v8, v9}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 1724
    :cond_0
    :goto_0
    invoke-static {v8}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1725
    const-string/jumbo v9, "device"

    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v9

    if-nez v9, :cond_3

    .line 1738
    if-eqz v2, :cond_1

    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_1
    :goto_1
    move-object v1, v2

    .line 1741
    .end local v2    # "confreader":Ljava/io/FileReader;
    .end local v8    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :cond_2
    :goto_2
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v9

    new-array v9, v9, [Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/String;

    return-object v9

    .line 1728
    .restart local v2    # "confreader":Ljava/io/FileReader;
    .restart local v8    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :cond_3
    :try_start_3
    const-string/jumbo v9, "name"

    const/4 v10, 0x0

    invoke-interface {v8, v10, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1729
    .local v6, "name":Ljava/lang/String;
    if-eqz v6, :cond_0

    .line 1730
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_7
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    .line 1733
    .end local v6    # "name":Ljava/lang/String;
    .end local v8    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_0
    move-exception v3

    .local v3, "e":Ljava/io/FileNotFoundException;
    move-object v1, v2

    .line 1738
    .end local v2    # "confreader":Ljava/io/FileReader;
    :goto_3
    if-eqz v1, :cond_2

    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    :catch_1
    move-exception v4

    .local v4, "e":Ljava/io/IOException;
    goto :goto_2

    .end local v3    # "e":Ljava/io/FileNotFoundException;
    .end local v4    # "e":Ljava/io/IOException;
    .restart local v2    # "confreader":Ljava/io/FileReader;
    .restart local v8    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_2
    move-exception v4

    .restart local v4    # "e":Ljava/io/IOException;
    goto :goto_1

    .line 1735
    .end local v2    # "confreader":Ljava/io/FileReader;
    .end local v4    # "e":Ljava/io/IOException;
    .restart local v1    # "confreader":Ljava/io/FileReader;
    .local v8, "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_3
    move-exception v5

    .line 1736
    .end local v1    # "confreader":Ljava/io/FileReader;
    .end local v8    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .local v5, "e":Ljava/lang/Exception;
    :goto_4
    :try_start_5
    const-string/jumbo v9, "InputManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Exception while parsing \'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "\'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1738
    if-eqz v1, :cond_2

    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_2

    :catch_4
    move-exception v4

    .restart local v4    # "e":Ljava/io/IOException;
    goto :goto_2

    .line 1737
    .end local v4    # "e":Ljava/io/IOException;
    .end local v5    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v9

    .line 1738
    :goto_5
    if-eqz v1, :cond_4

    :try_start_7
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 1737
    :cond_4
    :goto_6
    throw v9

    .line 1738
    :catch_5
    move-exception v4

    .restart local v4    # "e":Ljava/io/IOException;
    goto :goto_6

    .line 1737
    .end local v4    # "e":Ljava/io/IOException;
    .restart local v2    # "confreader":Ljava/io/FileReader;
    :catchall_1
    move-exception v9

    move-object v1, v2

    .end local v2    # "confreader":Ljava/io/FileReader;
    .local v1, "confreader":Ljava/io/FileReader;
    goto :goto_5

    .line 1733
    .local v1, "confreader":Ljava/io/FileReader;
    .restart local v8    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_6
    move-exception v3

    .restart local v3    # "e":Ljava/io/FileNotFoundException;
    goto :goto_3

    .line 1735
    .end local v1    # "confreader":Ljava/io/FileReader;
    .end local v3    # "e":Ljava/io/FileNotFoundException;
    .end local v8    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v2    # "confreader":Ljava/io/FileReader;
    :catch_7
    move-exception v5

    .restart local v5    # "e":Ljava/lang/Exception;
    move-object v1, v2

    .end local v2    # "confreader":Ljava/io/FileReader;
    .local v1, "confreader":Ljava/io/FileReader;
    goto :goto_4
.end method

.method private getHoverTapSlop()I
    .locals 1

    .prologue
    .line 1761
    invoke-static {}, Landroid/view/ViewConfiguration;->getHoverTapSlop()I

    move-result v0

    return v0
.end method

.method private getHoverTapTimeout()I
    .locals 1

    .prologue
    .line 1756
    invoke-static {}, Landroid/view/ViewConfiguration;->getHoverTapTimeout()I

    move-result v0

    return v0
.end method

.method private getKeyRepeatDelay()I
    .locals 1

    .prologue
    .line 1751
    invoke-static {}, Landroid/view/ViewConfiguration;->getKeyRepeatDelay()I

    move-result v0

    return v0
.end method

.method private getKeyRepeatTimeout()I
    .locals 1

    .prologue
    .line 1746
    invoke-static {}, Landroid/view/ViewConfiguration;->getKeyRepeatTimeout()I

    move-result v0

    return v0
.end method

.method private getKeyboardLayoutOverlay(Landroid/hardware/input/InputDeviceIdentifier;)[Ljava/lang/String;
    .locals 6
    .param p1, "identifier"    # Landroid/hardware/input/InputDeviceIdentifier;

    .prologue
    const/4 v5, 0x0

    .line 1786
    iget-boolean v2, p0, Lcom/android/server/input/InputManagerService;->mSystemReady:Z

    if-nez v2, :cond_0

    .line 1787
    return-object v5

    .line 1790
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/input/InputManagerService;->getCurrentKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;)Ljava/lang/String;

    move-result-object v0

    .line 1791
    .local v0, "keyboardLayoutDescriptor":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 1792
    return-object v5

    .line 1795
    :cond_1
    const/4 v2, 0x2

    new-array v1, v2, [Ljava/lang/String;

    .line 1796
    .local v1, "result":[Ljava/lang/String;
    new-instance v2, Lcom/android/server/input/InputManagerService$12;

    invoke-direct {v2, p0, v1}, Lcom/android/server/input/InputManagerService$12;-><init>(Lcom/android/server/input/InputManagerService;[Ljava/lang/String;)V

    invoke-direct {p0, v0, v2}, Lcom/android/server/input/InputManagerService;->visitKeyboardLayout(Ljava/lang/String;Lcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;)V

    .line 1809
    const/4 v2, 0x0

    aget-object v2, v1, v2

    if-nez v2, :cond_2

    .line 1810
    const-string/jumbo v2, "InputManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Could not get keyboard layout with descriptor \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1811
    const-string/jumbo v4, "\'."

    .line 1810
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1812
    return-object v5

    .line 1814
    :cond_2
    return-object v1
.end method

.method private getLayoutDescriptor(Landroid/hardware/input/InputDeviceIdentifier;)Ljava/lang/String;
    .locals 3
    .param p1, "identifier"    # Landroid/hardware/input/InputDeviceIdentifier;

    .prologue
    .line 1123
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/hardware/input/InputDeviceIdentifier;->getDescriptor()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 1124
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "identifier and descriptor must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1127
    :cond_1
    invoke-virtual {p1}, Landroid/hardware/input/InputDeviceIdentifier;->getVendorId()I

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1}, Landroid/hardware/input/InputDeviceIdentifier;->getProductId()I

    move-result v1

    if-nez v1, :cond_2

    .line 1128
    invoke-virtual {p1}, Landroid/hardware/input/InputDeviceIdentifier;->getDescriptor()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1130
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1131
    .local v0, "bob":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "vendor:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/hardware/input/InputDeviceIdentifier;->getVendorId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1132
    const-string/jumbo v1, ",product:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/hardware/input/InputDeviceIdentifier;->getProductId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1133
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getLongPressTimeout()I
    .locals 1

    .prologue
    .line 1771
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    return v0
.end method

.method private getPointerIcon()Landroid/view/PointerIcon;
    .locals 1

    .prologue
    .line 1781
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/PointerIcon;->getDefaultIcon(Landroid/content/Context;)Landroid/view/PointerIcon;

    move-result-object v0

    return-object v0
.end method

.method private getPointerLayer()I
    .locals 1

    .prologue
    .line 1776
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    invoke-interface {v0}, Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;->getPointerLayer()I

    move-result v0

    return v0
.end method

.method private getPointerSpeedSetting()I
    .locals 5

    .prologue
    .line 1375
    const/4 v1, 0x0

    .line 1377
    .local v1, "speed":I
    :try_start_0
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1378
    const-string/jumbo v3, "pointer_speed"

    const/4 v4, -0x2

    .line 1377
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1381
    :goto_0
    return v1

    .line 1379
    :catch_0
    move-exception v0

    .local v0, "snfe":Landroid/provider/Settings$SettingNotFoundException;
    goto :goto_0
.end method

.method private getShowTouchesSetting(I)I
    .locals 5
    .param p1, "defaultValue"    # I

    .prologue
    .line 1401
    move v0, p1

    .line 1403
    .local v0, "result":I
    :try_start_0
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1404
    const-string/jumbo v3, "show_touches"

    const/4 v4, -0x2

    .line 1403
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1407
    :goto_0
    return v0

    .line 1405
    :catch_0
    move-exception v1

    .local v1, "snfe":Landroid/provider/Settings$SettingNotFoundException;
    goto :goto_0
.end method

.method private getStylusIconEnabled(I)I
    .locals 4
    .param p1, "defaultValue"    # I

    .prologue
    .line 1427
    move v0, p1

    .line 1429
    .local v0, "result":I
    :try_start_0
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1430
    const-string/jumbo v3, "stylus_icon_enabled"

    .line 1429
    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1433
    :goto_0
    return v0

    .line 1431
    :catch_0
    move-exception v1

    .local v1, "snfe":Landroid/provider/Settings$SettingNotFoundException;
    goto :goto_0
.end method

.method private getVirtualKeyQuietTimeMillis()I
    .locals 2

    .prologue
    .line 1704
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1705
    const v1, 0x10e0072

    .line 1704
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method private getVolumeKeysRotationSetting(I)I
    .locals 5
    .param p1, "defaultValue"    # I

    .prologue
    .line 1453
    move v0, p1

    .line 1455
    .local v0, "result":I
    :try_start_0
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1456
    const-string/jumbo v3, "swap_volume_keys_on_rotation"

    const/4 v4, -0x2

    .line 1455
    invoke-static {v2, v3, v4}, Lcyanogenmod/providers/CMSettings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catch Lcyanogenmod/providers/CMSettings$CMSettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1459
    :goto_0
    return v0

    .line 1457
    :catch_0
    move-exception v1

    .local v1, "snfe":Lcyanogenmod/providers/CMSettings$CMSettingNotFoundException;
    goto :goto_0
.end method

.method private handleSwitchKeyboardLayout(II)V
    .locals 8
    .param p1, "deviceId"    # I
    .param p2, "direction"    # I

    .prologue
    const/4 v7, 0x0

    .line 1264
    invoke-virtual {p0, p1}, Lcom/android/server/input/InputManagerService;->getInputDevice(I)Landroid/view/InputDevice;

    move-result-object v1

    .line 1265
    .local v1, "device":Landroid/view/InputDevice;
    if-eqz v1, :cond_2

    .line 1269
    invoke-virtual {v1}, Landroid/view/InputDevice;->getIdentifier()Landroid/hardware/input/InputDeviceIdentifier;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/server/input/InputManagerService;->getLayoutDescriptor(Landroid/hardware/input/InputDeviceIdentifier;)Ljava/lang/String;

    move-result-object v2

    .line 1270
    .local v2, "key":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    monitor-enter v6

    .line 1272
    :try_start_0
    iget-object v5, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v5, v2, p2}, Lcom/android/server/input/PersistentDataStore;->switchKeyboardLayout(Ljava/lang/String;I)Z

    move-result v0

    .line 1273
    .local v0, "changed":Z
    iget-object v5, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v5, v2}, Lcom/android/server/input/PersistentDataStore;->getCurrentKeyboardLayout(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    .line 1276
    .local v4, "keyboardLayoutDescriptor":Ljava/lang/String;
    :try_start_1
    iget-object v5, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v5}, Lcom/android/server/input/PersistentDataStore;->saveIfNeeded()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v6

    .line 1280
    if-eqz v0, :cond_2

    .line 1281
    iget-object v5, p0, Lcom/android/server/input/InputManagerService;->mSwitchedKeyboardLayoutToast:Landroid/widget/Toast;

    if-eqz v5, :cond_0

    .line 1282
    iget-object v5, p0, Lcom/android/server/input/InputManagerService;->mSwitchedKeyboardLayoutToast:Landroid/widget/Toast;

    invoke-virtual {v5}, Landroid/widget/Toast;->cancel()V

    .line 1283
    iput-object v7, p0, Lcom/android/server/input/InputManagerService;->mSwitchedKeyboardLayoutToast:Landroid/widget/Toast;

    .line 1285
    :cond_0
    if-eqz v4, :cond_1

    .line 1286
    invoke-virtual {p0, v4}, Lcom/android/server/input/InputManagerService;->getKeyboardLayout(Ljava/lang/String;)Landroid/hardware/input/KeyboardLayout;

    move-result-object v3

    .line 1287
    .local v3, "keyboardLayout":Landroid/hardware/input/KeyboardLayout;
    if-eqz v3, :cond_1

    .line 1289
    iget-object v5, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/hardware/input/KeyboardLayout;->getLabel()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    .line 1288
    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/input/InputManagerService;->mSwitchedKeyboardLayoutToast:Landroid/widget/Toast;

    .line 1290
    iget-object v5, p0, Lcom/android/server/input/InputManagerService;->mSwitchedKeyboardLayoutToast:Landroid/widget/Toast;

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 1294
    .end local v3    # "keyboardLayout":Landroid/hardware/input/KeyboardLayout;
    :cond_1
    invoke-direct {p0}, Lcom/android/server/input/InputManagerService;->reloadKeyboardLayouts()V

    .line 1263
    .end local v0    # "changed":Z
    .end local v2    # "key":Ljava/lang/String;
    .end local v4    # "keyboardLayoutDescriptor":Ljava/lang/String;
    :cond_2
    return-void

    .line 1275
    .restart local v2    # "key":Ljava/lang/String;
    :catchall_0
    move-exception v5

    .line 1276
    :try_start_2
    iget-object v7, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v7}, Lcom/android/server/input/PersistentDataStore;->saveIfNeeded()V

    .line 1275
    throw v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1270
    :catchall_1
    move-exception v5

    monitor-exit v6

    throw v5
.end method

.method private hideMissingKeyboardLayoutNotification()V
    .locals 4

    .prologue
    .line 938
    iget-boolean v0, p0, Lcom/android/server/input/InputManagerService;->mKeyboardLayoutNotificationShown:Z

    if-eqz v0, :cond_0

    .line 939
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/input/InputManagerService;->mKeyboardLayoutNotificationShown:Z

    .line 940
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    .line 942
    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 940
    const/4 v2, 0x0

    .line 941
    const v3, 0x104046c

    .line 940
    invoke-virtual {v0, v2, v3, v1}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 937
    :cond_0
    return-void
.end method

.method private injectInputEventInternal(Landroid/view/InputEvent;II)Z
    .locals 12
    .param p1, "event"    # Landroid/view/InputEvent;
    .param p2, "displayId"    # I
    .param p3, "mode"    # I

    .prologue
    .line 601
    if-nez p1, :cond_0

    .line 602
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "event must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 604
    :cond_0
    if-eqz p3, :cond_1

    .line 605
    const/4 v0, 0x2

    if-eq p3, v0, :cond_1

    .line 606
    const/4 v0, 0x1

    if-eq p3, v0, :cond_1

    .line 607
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "mode is invalid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 610
    :cond_1
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    .line 611
    .local v4, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 612
    .local v5, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 615
    .local v10, "ident":J
    :try_start_0
    iget-wide v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    .line 616
    const/16 v7, 0x7530

    const/high16 v8, 0x8000000

    move-object v2, p1

    move v3, p2

    move v6, p3

    .line 615
    invoke-static/range {v0 .. v8}, Lcom/android/server/input/InputManagerService;->nativeInjectInputEvent(JLandroid/view/InputEvent;IIIIII)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v9

    .line 618
    .local v9, "result":I
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 620
    packed-switch v9, :pswitch_data_0

    .line 632
    :pswitch_0
    const-string/jumbo v0, "InputManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Input event injection from pid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " failed."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    const/4 v0, 0x0

    return v0

    .line 617
    .end local v9    # "result":I
    :catchall_0
    move-exception v0

    .line 618
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 617
    throw v0

    .line 622
    .restart local v9    # "result":I
    :pswitch_1
    const-string/jumbo v0, "InputManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Input event injection from pid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " permission denied."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    new-instance v0, Ljava/lang/SecurityException;

    .line 624
    const-string/jumbo v1, "Injecting to another application requires INJECT_EVENTS permission"

    .line 623
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 626
    :pswitch_2
    const/4 v0, 0x1

    return v0

    .line 628
    :pswitch_3
    const-string/jumbo v0, "InputManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Input event injection from pid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " timed out."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    const/4 v0, 0x0

    return v0

    .line 620
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private interceptKeyBeforeDispatching(Lcom/android/server/input/InputWindowHandle;Landroid/view/KeyEvent;I)J
    .locals 2
    .param p1, "focus"    # Lcom/android/server/input/InputWindowHandle;
    .param p2, "event"    # Landroid/view/KeyEvent;
    .param p3, "policyFlags"    # I

    .prologue
    .line 1687
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;->interceptKeyBeforeDispatching(Lcom/android/server/input/InputWindowHandle;Landroid/view/KeyEvent;I)J

    move-result-wide v0

    return-wide v0
.end method

.method private interceptKeyBeforeQueueing(Landroid/view/KeyEvent;I)I
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "policyFlags"    # I

    .prologue
    .line 1675
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    invoke-interface {v0, p1, p2}, Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;->interceptKeyBeforeQueueing(Landroid/view/KeyEvent;I)I

    move-result v0

    return v0
.end method

.method private interceptMotionBeforeQueueingNonInteractive(JI)I
    .locals 1
    .param p1, "whenNanos"    # J
    .param p3, "policyFlags"    # I

    .prologue
    .line 1680
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;->interceptMotionBeforeQueueingNonInteractive(JI)I

    move-result v0

    return v0
.end method

.method private static native nativeCancelVibrate(JII)V
.end method

.method private static native nativeDump(J)Ljava/lang/String;
.end method

.method private static native nativeGetKeyCodeState(JIII)I
.end method

.method private static native nativeGetScanCodeState(JIII)I
.end method

.method private static native nativeGetSwitchState(JIII)I
.end method

.method private static native nativeHasKeys(JII[I[Z)Z
.end method

.method private static native nativeInit(Lcom/android/server/input/InputManagerService;Landroid/content/Context;Landroid/os/MessageQueue;)J
.end method

.method private static native nativeInjectInputEvent(JLandroid/view/InputEvent;IIIIII)I
.end method

.method private static native nativeMonitor(J)V
.end method

.method private static native nativeRegisterInputChannel(JLandroid/view/InputChannel;Lcom/android/server/input/InputWindowHandle;Z)V
.end method

.method private static native nativeReloadCalibration(J)V
.end method

.method private static native nativeReloadDeviceAliases(J)V
.end method

.method private static native nativeReloadKeyboardLayouts(J)V
.end method

.method private static native nativeSetAppSwitchSwapButtonsEnabled(JZ)V
.end method

.method private static native nativeSetDisplayViewport(JZIIIIIIIIIIII)V
.end method

.method private static native nativeSetFocusedApplication(JLcom/android/server/input/InputApplicationHandle;)V
.end method

.method private static native nativeSetInputDispatchMode(JZZ)V
.end method

.method private static native nativeSetInputFilterEnabled(JZ)V
.end method

.method private static native nativeSetInputWindows(J[Lcom/android/server/input/InputWindowHandle;)V
.end method

.method private static native nativeSetInteractive(JZ)V
.end method

.method private static native nativeSetPointerSpeed(JI)V
.end method

.method private static native nativeSetShowTouches(JZ)V
.end method

.method private static native nativeSetStylusIconEnabled(JZ)V
.end method

.method private static native nativeSetSystemUiVisibility(JI)V
.end method

.method private static native nativeSetVolumeKeysRotation(JI)V
.end method

.method private static native nativeStart(J)V
.end method

.method private static native nativeTransferTouchFocus(JLandroid/view/InputChannel;Landroid/view/InputChannel;)Z
.end method

.method private static native nativeUnregisterInputChannel(JLandroid/view/InputChannel;)V
.end method

.method private static native nativeVibrate(JI[JII)V
.end method

.method private notifyANR(Lcom/android/server/input/InputApplicationHandle;Lcom/android/server/input/InputWindowHandle;Ljava/lang/String;)J
    .locals 2
    .param p1, "inputApplicationHandle"    # Lcom/android/server/input/InputApplicationHandle;
    .param p2, "inputWindowHandle"    # Lcom/android/server/input/InputWindowHandle;
    .param p3, "reason"    # Ljava/lang/String;

    .prologue
    .line 1646
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;->notifyANR(Lcom/android/server/input/InputApplicationHandle;Lcom/android/server/input/InputWindowHandle;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method private notifyConfigurationChanged(J)V
    .locals 1
    .param p1, "whenNanos"    # J

    .prologue
    .line 1590
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    invoke-interface {v0}, Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;->notifyConfigurationChanged()V

    .line 1589
    return-void
.end method

.method private notifyInputChannelBroken(Lcom/android/server/input/InputWindowHandle;)V
    .locals 1
    .param p1, "inputWindowHandle"    # Lcom/android/server/input/InputWindowHandle;

    .prologue
    .line 1640
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    invoke-interface {v0, p1}, Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;->notifyInputChannelBroken(Lcom/android/server/input/InputWindowHandle;)V

    .line 1639
    return-void
.end method

.method private notifyInputDevicesChanged([Landroid/view/InputDevice;)V
    .locals 4
    .param p1, "inputDevices"    # [Landroid/view/InputDevice;

    .prologue
    .line 1595
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1596
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesChangedPending:Z

    if-nez v0, :cond_0

    .line 1597
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesChangedPending:Z

    .line 1598
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    .line 1599
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mInputDevices:[Landroid/view/InputDevice;

    .line 1598
    const/4 v3, 0x1

    invoke-virtual {v0, v3, v2}, Lcom/android/server/input/InputManagerService$InputManagerHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1602
    :cond_0
    iput-object p1, p0, Lcom/android/server/input/InputManagerService;->mInputDevices:[Landroid/view/InputDevice;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 1594
    return-void

    .line 1595
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private notifySwitch(JII)V
    .locals 7
    .param p1, "whenNanos"    # J
    .param p3, "switchValues"    # I
    .param p4, "switchMask"    # I

    .prologue
    const/4 v3, 0x0

    .line 1613
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_0

    .line 1614
    and-int/lit8 v4, p3, 0x1

    if-nez v4, :cond_5

    const/4 v2, 0x1

    .line 1615
    .local v2, "lidOpen":Z
    :goto_0
    iget-object v4, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    invoke-interface {v4, p1, p2, v2}, Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;->notifyLidSwitchChanged(JZ)V

    .line 1618
    .end local v2    # "lidOpen":Z
    :cond_0
    and-int/lit16 v4, p4, 0x200

    if-eqz v4, :cond_1

    .line 1619
    and-int/lit16 v4, p3, 0x200

    if-eqz v4, :cond_6

    const/4 v1, 0x1

    .line 1620
    .local v1, "lensCovered":Z
    :goto_1
    iget-object v4, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    invoke-interface {v4, p1, p2, v1}, Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;->notifyCameraLensCoverSwitchChanged(JZ)V

    .line 1623
    .end local v1    # "lensCovered":Z
    :cond_1
    iget-boolean v4, p0, Lcom/android/server/input/InputManagerService;->mUseDevInputEventForAudioJack:Z

    if-eqz v4, :cond_2

    and-int/lit16 v4, p4, 0xd4

    if-eqz v4, :cond_2

    .line 1624
    iget-object v4, p0, Lcom/android/server/input/InputManagerService;->mWiredAccessoryCallbacks:Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;

    invoke-interface {v4, p1, p2, p3, p4}, Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;->notifyWiredAccessoryChanged(JII)V

    .line 1628
    :cond_2
    and-int/lit8 v4, p4, 0x2

    if-eqz v4, :cond_4

    .line 1629
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 1630
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    const-wide/16 v4, -0x1

    and-long/2addr v4, p1

    long-to-int v4, v4

    iput v4, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 1631
    const/16 v4, 0x20

    shr-long v4, p1, v4

    long-to-int v4, v4

    iput v4, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 1632
    and-int/lit8 v4, p3, 0x2

    if-eqz v4, :cond_3

    const/4 v3, 0x1

    :cond_3
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 1633
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    const/4 v4, 0x6

    invoke-virtual {v3, v4, v0}, Lcom/android/server/input/InputManagerService$InputManagerHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 1607
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :cond_4
    return-void

    .line 1614
    :cond_5
    const/4 v2, 0x0

    .restart local v2    # "lidOpen":Z
    goto :goto_0

    .line 1619
    .end local v2    # "lidOpen":Z
    :cond_6
    const/4 v1, 0x0

    .restart local v1    # "lensCovered":Z
    goto :goto_1
.end method

.method private onInputDevicesChangedListenerDied(I)V
    .locals 2
    .param p1, "pid"    # I

    .prologue
    .line 710
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 711
    :try_start_0
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesChangedListeners:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 709
    return-void

    .line 710
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private onTabletModeChangedListenerDied(I)V
    .locals 2
    .param p1, "pid"    # I

    .prologue
    .line 882
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mTabletModeLock:Ljava/lang/Object;

    monitor-enter v1

    .line 883
    :try_start_0
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mTabletModeChangedListeners:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 881
    return-void

    .line 882
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private registerPointerSpeedSettingObserver()V
    .locals 5

    .prologue
    .line 1364
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1365
    const-string/jumbo v1, "pointer_speed"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1366
    new-instance v2, Lcom/android/server/input/InputManagerService$7;

    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    invoke-direct {v2, p0, v3}, Lcom/android/server/input/InputManagerService$7;-><init>(Lcom/android/server/input/InputManagerService;Landroid/os/Handler;)V

    .line 1365
    const/4 v3, 0x1

    .line 1371
    const/4 v4, -0x1

    .line 1364
    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1363
    return-void
.end method

.method private registerShowTouchesSettingObserver()V
    .locals 5

    .prologue
    .line 1390
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1391
    const-string/jumbo v1, "show_touches"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1392
    new-instance v2, Lcom/android/server/input/InputManagerService$8;

    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    invoke-direct {v2, p0, v3}, Lcom/android/server/input/InputManagerService$8;-><init>(Lcom/android/server/input/InputManagerService;Landroid/os/Handler;)V

    .line 1391
    const/4 v3, 0x1

    .line 1397
    const/4 v4, -0x1

    .line 1390
    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1389
    return-void
.end method

.method private reloadDeviceAliases()V
    .locals 2

    .prologue
    .line 382
    iget-wide v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    invoke-static {v0, v1}, Lcom/android/server/input/InputManagerService;->nativeReloadDeviceAliases(J)V

    .line 378
    return-void
.end method

.method private reloadKeyboardLayouts()V
    .locals 2

    .prologue
    .line 375
    iget-wide v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    invoke-static {v0, v1}, Lcom/android/server/input/InputManagerService;->nativeReloadKeyboardLayouts(J)V

    .line 371
    return-void
.end method

.method private setDisplayViewport(ZLandroid/hardware/display/DisplayViewport;)V
    .locals 17
    .param p1, "external"    # Z
    .param p2, "viewport"    # Landroid/hardware/display/DisplayViewport;

    .prologue
    .line 399
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/android/server/input/InputManagerService;->mPtr:J

    .line 400
    move-object/from16 v0, p2

    iget v5, v0, Landroid/hardware/display/DisplayViewport;->displayId:I

    move-object/from16 v0, p2

    iget v6, v0, Landroid/hardware/display/DisplayViewport;->orientation:I

    .line 401
    move-object/from16 v0, p2

    iget-object v4, v0, Landroid/hardware/display/DisplayViewport;->logicalFrame:Landroid/graphics/Rect;

    iget v7, v4, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p2

    iget-object v4, v0, Landroid/hardware/display/DisplayViewport;->logicalFrame:Landroid/graphics/Rect;

    iget v8, v4, Landroid/graphics/Rect;->top:I

    .line 402
    move-object/from16 v0, p2

    iget-object v4, v0, Landroid/hardware/display/DisplayViewport;->logicalFrame:Landroid/graphics/Rect;

    iget v9, v4, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p2

    iget-object v4, v0, Landroid/hardware/display/DisplayViewport;->logicalFrame:Landroid/graphics/Rect;

    iget v10, v4, Landroid/graphics/Rect;->bottom:I

    .line 403
    move-object/from16 v0, p2

    iget-object v4, v0, Landroid/hardware/display/DisplayViewport;->physicalFrame:Landroid/graphics/Rect;

    iget v11, v4, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p2

    iget-object v4, v0, Landroid/hardware/display/DisplayViewport;->physicalFrame:Landroid/graphics/Rect;

    iget v12, v4, Landroid/graphics/Rect;->top:I

    .line 404
    move-object/from16 v0, p2

    iget-object v4, v0, Landroid/hardware/display/DisplayViewport;->physicalFrame:Landroid/graphics/Rect;

    iget v13, v4, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p2

    iget-object v4, v0, Landroid/hardware/display/DisplayViewport;->physicalFrame:Landroid/graphics/Rect;

    iget v14, v4, Landroid/graphics/Rect;->bottom:I

    .line 405
    move-object/from16 v0, p2

    iget v15, v0, Landroid/hardware/display/DisplayViewport;->deviceWidth:I

    move-object/from16 v0, p2

    iget v0, v0, Landroid/hardware/display/DisplayViewport;->deviceHeight:I

    move/from16 v16, v0

    move/from16 v4, p1

    .line 399
    invoke-static/range {v2 .. v16}, Lcom/android/server/input/InputManagerService;->nativeSetDisplayViewport(JZIIIIIIIIIIII)V

    .line 398
    return-void
.end method

.method private setDisplayViewportsInternal(Landroid/hardware/display/DisplayViewport;Landroid/hardware/display/DisplayViewport;)V
    .locals 2
    .param p1, "defaultViewport"    # Landroid/hardware/display/DisplayViewport;
    .param p2, "externalTouchViewport"    # Landroid/hardware/display/DisplayViewport;

    .prologue
    const/4 v1, 0x1

    .line 387
    iget-boolean v0, p1, Landroid/hardware/display/DisplayViewport;->valid:Z

    if-eqz v0, :cond_0

    .line 388
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/android/server/input/InputManagerService;->setDisplayViewport(ZLandroid/hardware/display/DisplayViewport;)V

    .line 391
    :cond_0
    iget-boolean v0, p2, Landroid/hardware/display/DisplayViewport;->valid:Z

    if-eqz v0, :cond_2

    .line 392
    invoke-direct {p0, v1, p2}, Lcom/android/server/input/InputManagerService;->setDisplayViewport(ZLandroid/hardware/display/DisplayViewport;)V

    .line 386
    :cond_1
    :goto_0
    return-void

    .line 393
    :cond_2
    iget-boolean v0, p1, Landroid/hardware/display/DisplayViewport;->valid:Z

    if-eqz v0, :cond_1

    .line 394
    invoke-direct {p0, v1, p1}, Lcom/android/server/input/InputManagerService;->setDisplayViewport(ZLandroid/hardware/display/DisplayViewport;)V

    goto :goto_0
.end method

.method private setPointerSpeedUnchecked(I)V
    .locals 2
    .param p1, "speed"    # I

    .prologue
    .line 1358
    const/4 v0, -0x7

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1359
    const/4 v1, 0x7

    .line 1358
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 1360
    iget-wide v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    invoke-static {v0, v1, p1}, Lcom/android/server/input/InputManagerService;->nativeSetPointerSpeed(JI)V

    .line 1357
    return-void
.end method

.method private showMissingKeyboardLayoutNotification(Landroid/view/InputDevice;)V
    .locals 10
    .param p1, "device"    # Landroid/view/InputDevice;

    .prologue
    const v9, 0x104046c

    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 906
    iget-boolean v0, p0, Lcom/android/server/input/InputManagerService;->mKeyboardLayoutNotificationShown:Z

    if-nez v0, :cond_1

    .line 907
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v0, "android.settings.INPUT_METHOD_SETTINGS"

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 908
    .local v2, "intent":Landroid/content/Intent;
    if-eqz p1, :cond_0

    .line 909
    const-string/jumbo v0, "input_device_identifier"

    invoke-virtual {p1}, Landroid/view/InputDevice;->getIdentifier()Landroid/hardware/input/InputDeviceIdentifier;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 911
    :cond_0
    const/high16 v0, 0x14200000

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 914
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    .line 915
    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move v3, v1

    .line 914
    invoke-static/range {v0 .. v5}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v6

    .line 917
    .local v6, "keyboardLayoutIntent":Landroid/app/PendingIntent;
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 918
    .local v8, "r":Landroid/content/res/Resources;
    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 919
    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 918
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 922
    const v1, 0x104046d

    .line 921
    invoke-virtual {v8, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 918
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 924
    const v1, 0x108042b

    .line 918
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 925
    const/4 v1, -0x1

    .line 918
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 926
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    .line 927
    const v3, 0x1060070

    .line 926
    invoke-virtual {v1, v3}, Landroid/content/Context;->getColor(I)I

    move-result v1

    .line 918
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v7

    .line 929
    .local v7, "notification":Landroid/app/Notification;
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    .line 931
    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 929
    invoke-virtual {v0, v4, v9, v7, v1}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 932
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/input/InputManagerService;->mKeyboardLayoutNotificationShown:Z

    .line 905
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v6    # "keyboardLayoutIntent":Landroid/app/PendingIntent;
    .end local v7    # "notification":Landroid/app/Notification;
    .end local v8    # "r":Landroid/content/res/Resources;
    :cond_1
    return-void
.end method

.method private updateAppSwitchSwapButtonsFromSettings(I)I
    .locals 5
    .param p1, "defaultValue"    # I

    .prologue
    .line 1479
    move v0, p1

    .line 1481
    .local v0, "result":I
    :try_start_0
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1482
    const-string/jumbo v3, "app_switch_swap_buttons"

    const/4 v4, -0x2

    .line 1481
    invoke-static {v2, v3, v4}, Lcyanogenmod/providers/CMSettings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catch Lcyanogenmod/providers/CMSettings$CMSettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1485
    :goto_0
    return v0

    .line 1483
    :catch_0
    move-exception v1

    .local v1, "snfe":Lcyanogenmod/providers/CMSettings$CMSettingNotFoundException;
    goto :goto_0
.end method

.method private updateKeyboardLayouts()V
    .locals 4

    .prologue
    .line 949
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 950
    .local v0, "availableKeyboardLayouts":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    new-instance v1, Lcom/android/server/input/InputManagerService$4;

    invoke-direct {v1, p0, v0}, Lcom/android/server/input/InputManagerService$4;-><init>(Lcom/android/server/input/InputManagerService;Ljava/util/HashSet;)V

    invoke-direct {p0, v1}, Lcom/android/server/input/InputManagerService;->visitAllKeyboardLayouts(Lcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;)V

    .line 957
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    monitor-enter v2

    .line 959
    :try_start_0
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v1, v0}, Lcom/android/server/input/PersistentDataStore;->removeUninstalledKeyboardLayouts(Ljava/util/Set;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 961
    :try_start_1
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v1}, Lcom/android/server/input/PersistentDataStore;->saveIfNeeded()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v2

    .line 966
    invoke-direct {p0}, Lcom/android/server/input/InputManagerService;->reloadKeyboardLayouts()V

    .line 947
    return-void

    .line 960
    :catchall_0
    move-exception v1

    .line 961
    :try_start_2
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v3}, Lcom/android/server/input/PersistentDataStore;->saveIfNeeded()V

    .line 960
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 957
    :catchall_1
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private visitAllKeyboardLayouts(Lcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;)V
    .locals 9
    .param p1, "visitor"    # Lcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;

    .prologue
    .line 1016
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 1017
    .local v1, "pm":Landroid/content/pm/PackageManager;
    new-instance v6, Landroid/content/Intent;

    const-string/jumbo v0, "android.hardware.input.action.QUERY_KEYBOARD_LAYOUTS"

    invoke-direct {v6, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1019
    .local v6, "intent":Landroid/content/Intent;
    const/16 v0, 0x80

    .line 1018
    invoke-virtual {v1, v6, v0}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "resolveInfo$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    .line 1020
    .local v7, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v2, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 1021
    .local v2, "activityInfo":Landroid/content/pm/ActivityInfo;
    iget v4, v7, Landroid/content/pm/ResolveInfo;->priority:I

    .line 1022
    .local v4, "priority":I
    const/4 v3, 0x0

    move-object v0, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/input/InputManagerService;->visitKeyboardLayoutsInPackage(Landroid/content/pm/PackageManager;Landroid/content/pm/ActivityInfo;Ljava/lang/String;ILcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;)V

    goto :goto_0

    .line 1015
    .end local v2    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .end local v4    # "priority":I
    .end local v7    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_0
    return-void
.end method

.method private visitKeyboardLayout(Ljava/lang/String;Lcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;)V
    .locals 8
    .param p1, "keyboardLayoutDescriptor"    # Ljava/lang/String;
    .param p2, "visitor"    # Lcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;

    .prologue
    .line 1028
    invoke-static {p1}, Lcom/android/server/input/InputManagerService$KeyboardLayoutDescriptor;->parse(Ljava/lang/String;)Lcom/android/server/input/InputManagerService$KeyboardLayoutDescriptor;

    move-result-object v6

    .line 1029
    .local v6, "d":Lcom/android/server/input/InputManagerService$KeyboardLayoutDescriptor;
    if-eqz v6, :cond_0

    .line 1030
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 1033
    .local v1, "pm":Landroid/content/pm/PackageManager;
    :try_start_0
    new-instance v0, Landroid/content/ComponentName;

    iget-object v3, v6, Lcom/android/server/input/InputManagerService$KeyboardLayoutDescriptor;->packageName:Ljava/lang/String;

    iget-object v4, v6, Lcom/android/server/input/InputManagerService$KeyboardLayoutDescriptor;->receiverName:Ljava/lang/String;

    invoke-direct {v0, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1034
    const/16 v3, 0x80

    .line 1032
    invoke-virtual {v1, v0, v3}, Landroid/content/pm/PackageManager;->getReceiverInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v2

    .line 1035
    .local v2, "receiver":Landroid/content/pm/ActivityInfo;
    iget-object v3, v6, Lcom/android/server/input/InputManagerService$KeyboardLayoutDescriptor;->keyboardLayoutName:Ljava/lang/String;

    const/4 v4, 0x0

    move-object v0, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/input/InputManagerService;->visitKeyboardLayoutsInPackage(Landroid/content/pm/PackageManager;Landroid/content/pm/ActivityInfo;Ljava/lang/String;ILcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1027
    .end local v1    # "pm":Landroid/content/pm/PackageManager;
    .end local v2    # "receiver":Landroid/content/pm/ActivityInfo;
    :cond_0
    :goto_0
    return-void

    .line 1036
    .restart local v1    # "pm":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v7

    .local v7, "ex":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method

.method private visitKeyboardLayoutsInPackage(Landroid/content/pm/PackageManager;Landroid/content/pm/ActivityInfo;Ljava/lang/String;ILcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;)V
    .locals 19
    .param p1, "pm"    # Landroid/content/pm/PackageManager;
    .param p2, "receiver"    # Landroid/content/pm/ActivityInfo;
    .param p3, "keyboardName"    # Ljava/lang/String;
    .param p4, "requestedPriority"    # I
    .param p5, "visitor"    # Lcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;

    .prologue
    .line 1043
    move-object/from16 v0, p2

    iget-object v13, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 1044
    .local v13, "metaData":Landroid/os/Bundle;
    if-nez v13, :cond_0

    .line 1045
    return-void

    .line 1048
    :cond_0
    const-string/jumbo v2, "android.hardware.input.metadata.KEYBOARD_LAYOUTS"

    invoke-virtual {v13, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    .line 1049
    .local v10, "configResId":I
    if-nez v10, :cond_1

    .line 1050
    const-string/jumbo v2, "InputManager"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "Missing meta-data \'android.hardware.input.metadata.KEYBOARD_LAYOUTS\' on receiver "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 1051
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    .line 1050
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 1051
    const-string/jumbo v18, "/"

    .line 1050
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 1051
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v18, v0

    .line 1050
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1052
    return-void

    .line 1055
    :cond_1
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v16

    .line 1056
    .local v16, "receiverLabel":Ljava/lang/CharSequence;
    if-eqz v16, :cond_2

    invoke-interface/range {v16 .. v16}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1058
    .local v6, "collection":Ljava/lang/String;
    :goto_0
    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_3

    .line 1059
    move/from16 v8, p4

    .line 1065
    .local v8, "priority":I
    :goto_1
    :try_start_0
    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v3

    .line 1066
    .local v3, "resources":Landroid/content/res/Resources;
    invoke-virtual {v3, v10}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v15

    .line 1068
    .local v15, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_1
    const-string/jumbo v2, "keyboard-layouts"

    invoke-static {v15, v2}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 1071
    :goto_2
    invoke-static {v15}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1072
    invoke-interface {v15}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v11

    .line 1073
    .local v11, "element":Ljava/lang/String;
    if-nez v11, :cond_4

    .line 1110
    :try_start_2
    invoke-interface {v15}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 1042
    .end local v3    # "resources":Landroid/content/res/Resources;
    .end local v11    # "element":Ljava/lang/String;
    .end local v15    # "parser":Landroid/content/res/XmlResourceParser;
    :goto_3
    return-void

    .line 1056
    .end local v6    # "collection":Ljava/lang/String;
    .end local v8    # "priority":I
    :cond_2
    const-string/jumbo v6, ""

    .restart local v6    # "collection":Ljava/lang/String;
    goto :goto_0

    .line 1061
    :cond_3
    const/4 v8, 0x0

    .restart local v8    # "priority":I
    goto :goto_1

    .line 1076
    .restart local v3    # "resources":Landroid/content/res/Resources;
    .restart local v11    # "element":Ljava/lang/String;
    .restart local v15    # "parser":Landroid/content/res/XmlResourceParser;
    :cond_4
    :try_start_3
    const-string/jumbo v2, "keyboard-layout"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1078
    sget-object v2, Lcom/android/internal/R$styleable;->KeyboardLayout:[I

    .line 1077
    invoke-virtual {v3, v15, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v9

    .line 1081
    .local v9, "a":Landroid/content/res/TypedArray;
    const/4 v2, 0x1

    .line 1080
    :try_start_4
    invoke-virtual {v9, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 1083
    .local v14, "name":Ljava/lang/String;
    const/4 v2, 0x0

    .line 1082
    invoke-virtual {v9, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1085
    .local v5, "label":Ljava/lang/String;
    const/4 v2, 0x2

    .line 1086
    const/16 v17, 0x0

    .line 1084
    move/from16 v0, v17

    invoke-virtual {v9, v2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    .line 1087
    .local v7, "keyboardLayoutResId":I
    if-eqz v14, :cond_5

    if-nez v5, :cond_7

    .line 1088
    :cond_5
    const-string/jumbo v2, "InputManager"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "Missing required \'name\', \'label\' or \'keyboardLayout\' attributes in keyboard layout resource from receiver "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 1091
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    .line 1088
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 1091
    const-string/jumbo v18, "/"

    .line 1088
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 1091
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v18, v0

    .line 1088
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1101
    :cond_6
    :goto_4
    :try_start_5
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    .line 1109
    .end local v5    # "label":Ljava/lang/String;
    .end local v7    # "keyboardLayoutResId":I
    .end local v9    # "a":Landroid/content/res/TypedArray;
    .end local v11    # "element":Ljava/lang/String;
    .end local v14    # "name":Ljava/lang/String;
    :catchall_0
    move-exception v2

    .line 1110
    :try_start_6
    invoke-interface {v15}, Landroid/content/res/XmlResourceParser;->close()V

    .line 1109
    throw v2
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 1112
    .end local v3    # "resources":Landroid/content/res/Resources;
    .end local v15    # "parser":Landroid/content/res/XmlResourceParser;
    :catch_0
    move-exception v12

    .line 1113
    .local v12, "ex":Ljava/lang/Exception;
    const-string/jumbo v2, "InputManager"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "Could not parse keyboard layout resource from receiver "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 1114
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    .line 1113
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 1114
    const-string/jumbo v18, "/"

    .line 1113
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 1114
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v18, v0

    .line 1113
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v2, v0, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    .line 1087
    .end local v12    # "ex":Ljava/lang/Exception;
    .restart local v3    # "resources":Landroid/content/res/Resources;
    .restart local v5    # "label":Ljava/lang/String;
    .restart local v7    # "keyboardLayoutResId":I
    .restart local v9    # "a":Landroid/content/res/TypedArray;
    .restart local v11    # "element":Ljava/lang/String;
    .restart local v14    # "name":Ljava/lang/String;
    .restart local v15    # "parser":Landroid/content/res/XmlResourceParser;
    :cond_7
    if-eqz v7, :cond_5

    .line 1094
    :try_start_7
    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v17, v0

    .line 1093
    move-object/from16 v0, v17

    invoke-static {v2, v0, v14}, Lcom/android/server/input/InputManagerService$KeyboardLayoutDescriptor;->format(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1095
    .local v4, "descriptor":Ljava/lang/String;
    if-eqz p3, :cond_8

    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_8
    move-object/from16 v2, p5

    .line 1096
    invoke-interface/range {v2 .. v8}, Lcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;->visitKeyboardLayout(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_4

    .line 1100
    .end local v4    # "descriptor":Ljava/lang/String;
    .end local v5    # "label":Ljava/lang/String;
    .end local v7    # "keyboardLayoutResId":I
    .end local v14    # "name":Ljava/lang/String;
    :catchall_1
    move-exception v2

    .line 1101
    :try_start_8
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    .line 1100
    throw v2

    .line 1104
    .end local v9    # "a":Landroid/content/res/TypedArray;
    :cond_9
    const-string/jumbo v2, "InputManager"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "Skipping unrecognized element \'"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 1105
    const-string/jumbo v18, "\' in keyboard layout resource from receiver "

    .line 1104
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 1106
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    .line 1104
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 1106
    const-string/jumbo v18, "/"

    .line 1104
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 1106
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v18, v0

    .line 1104
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_2
.end method


# virtual methods
.method public addKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;Ljava/lang/String;)V
    .locals 5
    .param p1, "identifier"    # Landroid/hardware/input/InputDeviceIdentifier;
    .param p2, "keyboardLayoutDescriptor"    # Ljava/lang/String;

    .prologue
    .line 1198
    const-string/jumbo v2, "android.permission.SET_KEYBOARD_LAYOUT"

    .line 1199
    const-string/jumbo v3, "addKeyboardLayoutForInputDevice()"

    .line 1198
    invoke-direct {p0, v2, v3}, Lcom/android/server/input/InputManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1200
    new-instance v2, Ljava/lang/SecurityException;

    const-string/jumbo v3, "Requires SET_KEYBOARD_LAYOUT permission"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1202
    :cond_0
    if-nez p2, :cond_1

    .line 1203
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "keyboardLayoutDescriptor must not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1206
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/input/InputManagerService;->getLayoutDescriptor(Landroid/hardware/input/InputDeviceIdentifier;)Ljava/lang/String;

    move-result-object v0

    .line 1207
    .local v0, "key":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    monitor-enter v3

    .line 1209
    :try_start_0
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v2, v0}, Lcom/android/server/input/PersistentDataStore;->getCurrentKeyboardLayout(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1210
    .local v1, "oldLayout":Ljava/lang/String;
    if-nez v1, :cond_2

    invoke-virtual {p1}, Landroid/hardware/input/InputDeviceIdentifier;->getDescriptor()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1213
    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v2, v0, p2}, Lcom/android/server/input/PersistentDataStore;->addKeyboardLayout(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1215
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v2, v0}, Lcom/android/server/input/PersistentDataStore;->getCurrentKeyboardLayout(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1214
    invoke-static {v1, v2}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_5

    .line 1219
    :cond_3
    :goto_1
    :try_start_1
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v2}, Lcom/android/server/input/PersistentDataStore;->saveIfNeeded()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v3

    .line 1197
    return-void

    .line 1211
    :cond_4
    :try_start_2
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {p1}, Landroid/hardware/input/InputDeviceIdentifier;->getDescriptor()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/server/input/PersistentDataStore;->getCurrentKeyboardLayout(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1216
    :cond_5
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    const/4 v4, 0x3

    invoke-virtual {v2, v4}, Lcom/android/server/input/InputManagerService$InputManagerHandler;->sendEmptyMessage(I)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 1218
    .end local v1    # "oldLayout":Ljava/lang/String;
    :catchall_0
    move-exception v2

    .line 1219
    :try_start_3
    iget-object v4, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v4}, Lcom/android/server/input/PersistentDataStore;->saveIfNeeded()V

    .line 1218
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1207
    :catchall_1
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public cancelVibrate(ILandroid/os/IBinder;)V
    .locals 3
    .param p1, "deviceId"    # I
    .param p2, "token"    # Landroid/os/IBinder;

    .prologue
    .line 1520
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mVibratorLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1521
    :try_start_0
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mVibratorTokens:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/input/InputManagerService$VibratorToken;

    .line 1522
    .local v0, "v":Lcom/android/server/input/InputManagerService$VibratorToken;
    if-eqz v0, :cond_0

    iget v1, v0, Lcom/android/server/input/InputManagerService$VibratorToken;->mDeviceId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v1, p1, :cond_1

    :cond_0
    monitor-exit v2

    .line 1523
    return-void

    :cond_1
    monitor-exit v2

    .line 1527
    invoke-direct {p0, v0}, Lcom/android/server/input/InputManagerService;->cancelVibrateIfNeeded(Lcom/android/server/input/InputManagerService$VibratorToken;)V

    .line 1518
    return-void

    .line 1520
    .end local v0    # "v":Lcom/android/server/input/InputManagerService$VibratorToken;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 1549
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "android.permission.DUMP"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 1551
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Permission Denial: can\'t dump InputManager from from pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1552
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 1551
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1553
    const-string/jumbo v2, ", uid="

    .line 1551
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1553
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 1551
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1554
    return-void

    .line 1557
    :cond_0
    const-string/jumbo v1, "INPUT MANAGER (dumpsys input)\n"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1558
    iget-wide v2, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    invoke-static {v2, v3}, Lcom/android/server/input/InputManagerService;->nativeDump(J)Ljava/lang/String;

    move-result-object v0

    .line 1559
    .local v0, "dumpStr":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 1560
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1548
    :cond_1
    return-void
.end method

.method final filterInputEvent(Landroid/view/InputEvent;I)Z
    .locals 6
    .param p1, "event"    # Landroid/view/InputEvent;
    .param p2, "policyFlags"    # I

    .prologue
    const/4 v5, 0x0

    .line 1652
    const/4 v1, 0x0

    .line 1653
    .local v1, "head":Lcom/android/server/input/InputManagerService$ChainedInputFilterHost;
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mInputFilterLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1654
    :try_start_0
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mInputFilterChain:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1655
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mInputFilterChain:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "head":Lcom/android/server/input/InputManagerService$ChainedInputFilterHost;
    check-cast v1, Lcom/android/server/input/InputManagerService$ChainedInputFilterHost;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v3

    .line 1661
    if-eqz v1, :cond_1

    .line 1663
    :try_start_1
    invoke-static {v1}, Lcom/android/server/input/InputManagerService$ChainedInputFilterHost;->-get0(Lcom/android/server/input/InputManagerService$ChainedInputFilterHost;)Landroid/view/IInputFilter;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Landroid/view/IInputFilter;->filterInputEvent(Landroid/view/InputEvent;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1667
    :goto_0
    return v5

    .line 1653
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 1669
    :cond_1
    invoke-virtual {p1}, Landroid/view/InputEvent;->recycle()V

    .line 1670
    const/4 v2, 0x1

    return v2

    .line 1664
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public getCurrentKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;)Ljava/lang/String;
    .locals 5
    .param p1, "identifier"    # Landroid/hardware/input/InputDeviceIdentifier;

    .prologue
    .line 1139
    invoke-direct {p0, p1}, Lcom/android/server/input/InputManagerService;->getLayoutDescriptor(Landroid/hardware/input/InputDeviceIdentifier;)Ljava/lang/String;

    move-result-object v0

    .line 1140
    .local v0, "key":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    monitor-enter v3

    .line 1141
    const/4 v1, 0x0

    .line 1143
    .local v1, "layout":Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v2, v0}, Lcom/android/server/input/PersistentDataStore;->getCurrentKeyboardLayout(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1144
    .local v1, "layout":Ljava/lang/String;
    if-nez v1, :cond_0

    invoke-virtual {p1}, Landroid/hardware/input/InputDeviceIdentifier;->getDescriptor()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    monitor-exit v3

    .line 1152
    return-object v1

    .line 1146
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {p1}, Landroid/hardware/input/InputDeviceIdentifier;->getDescriptor()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/server/input/PersistentDataStore;->getCurrentKeyboardLayout(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    goto :goto_0

    .line 1140
    .end local v1    # "layout":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public getInputDevice(I)Landroid/view/InputDevice;
    .locals 5
    .param p1, "deviceId"    # I

    .prologue
    .line 644
    iget-object v4, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesLock:Ljava/lang/Object;

    monitor-enter v4

    .line 645
    :try_start_0
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mInputDevices:[Landroid/view/InputDevice;

    array-length v0, v3

    .line 646
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 647
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mInputDevices:[Landroid/view/InputDevice;

    aget-object v2, v3, v1

    .line 648
    .local v2, "inputDevice":Landroid/view/InputDevice;
    invoke-virtual {v2}, Landroid/view/InputDevice;->getId()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-ne v3, p1, :cond_0

    monitor-exit v4

    .line 649
    return-object v2

    .line 646
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v2    # "inputDevice":Landroid/view/InputDevice;
    :cond_1
    monitor-exit v4

    .line 653
    const/4 v3, 0x0

    return-object v3

    .line 644
    .end local v0    # "count":I
    .end local v1    # "i":I
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public getInputDeviceIds()[I
    .locals 5

    .prologue
    .line 662
    iget-object v4, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesLock:Ljava/lang/Object;

    monitor-enter v4

    .line 663
    :try_start_0
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mInputDevices:[Landroid/view/InputDevice;

    array-length v0, v3

    .line 664
    .local v0, "count":I
    new-array v2, v0, [I

    .line 665
    .local v2, "ids":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 666
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mInputDevices:[Landroid/view/InputDevice;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Landroid/view/InputDevice;->getId()I

    move-result v3

    aput v3, v2, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 665
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    monitor-exit v4

    .line 668
    return-object v2

    .line 662
    .end local v0    # "count":I
    .end local v1    # "i":I
    .end local v2    # "ids":[I
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public getInputDevices()[Landroid/view/InputDevice;
    .locals 2

    .prologue
    .line 677
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 678
    :try_start_0
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mInputDevices:[Landroid/view/InputDevice;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 677
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public getKeyCodeState(III)I
    .locals 2
    .param p1, "deviceId"    # I
    .param p2, "sourceMask"    # I
    .param p3, "keyCode"    # I

    .prologue
    .line 418
    iget-wide v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    invoke-static {v0, v1, p1, p2, p3}, Lcom/android/server/input/InputManagerService;->nativeGetKeyCodeState(JIII)I

    move-result v0

    return v0
.end method

.method public getKeyboardLayout(Ljava/lang/String;)Landroid/hardware/input/KeyboardLayout;
    .locals 5
    .param p1, "keyboardLayoutDescriptor"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 996
    if-nez p1, :cond_0

    .line 997
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "keyboardLayoutDescriptor must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1000
    :cond_0
    const/4 v1, 0x1

    new-array v0, v1, [Landroid/hardware/input/KeyboardLayout;

    .line 1001
    .local v0, "result":[Landroid/hardware/input/KeyboardLayout;
    new-instance v1, Lcom/android/server/input/InputManagerService$6;

    invoke-direct {v1, p0, v0}, Lcom/android/server/input/InputManagerService$6;-><init>(Lcom/android/server/input/InputManagerService;[Landroid/hardware/input/KeyboardLayout;)V

    invoke-direct {p0, p1, v1}, Lcom/android/server/input/InputManagerService;->visitKeyboardLayout(Ljava/lang/String;Lcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;)V

    .line 1008
    aget-object v1, v0, v4

    if-nez v1, :cond_1

    .line 1009
    const-string/jumbo v1, "InputManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Could not get keyboard layout with descriptor \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1010
    const-string/jumbo v3, "\'."

    .line 1009
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1012
    :cond_1
    aget-object v1, v0, v4

    return-object v1
.end method

.method public getKeyboardLayouts()[Landroid/hardware/input/KeyboardLayout;
    .locals 2

    .prologue
    .line 983
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 984
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/input/KeyboardLayout;>;"
    new-instance v1, Lcom/android/server/input/InputManagerService$5;

    invoke-direct {v1, p0, v0}, Lcom/android/server/input/InputManagerService$5;-><init>(Lcom/android/server/input/InputManagerService;Ljava/util/ArrayList;)V

    invoke-direct {p0, v1}, Lcom/android/server/input/InputManagerService;->visitAllKeyboardLayouts(Lcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;)V

    .line 991
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Landroid/hardware/input/KeyboardLayout;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/hardware/input/KeyboardLayout;

    return-object v1
.end method

.method public getKeyboardLayoutsForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;)[Ljava/lang/String;
    .locals 5
    .param p1, "identifier"    # Landroid/hardware/input/InputDeviceIdentifier;

    .prologue
    .line 1184
    invoke-direct {p0, p1}, Lcom/android/server/input/InputManagerService;->getLayoutDescriptor(Landroid/hardware/input/InputDeviceIdentifier;)Ljava/lang/String;

    move-result-object v0

    .line 1185
    .local v0, "key":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    monitor-enter v3

    .line 1186
    :try_start_0
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v2, v0}, Lcom/android/server/input/PersistentDataStore;->getKeyboardLayouts(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1187
    .local v1, "layouts":[Ljava/lang/String;
    if-eqz v1, :cond_0

    array-length v2, v1

    if-nez v2, :cond_1

    .line 1188
    :cond_0
    invoke-virtual {p1}, Landroid/hardware/input/InputDeviceIdentifier;->getDescriptor()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    :goto_0
    monitor-exit v3

    .line 1191
    return-object v1

    .line 1189
    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {p1}, Landroid/hardware/input/InputDeviceIdentifier;->getDescriptor()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/server/input/PersistentDataStore;->getKeyboardLayouts(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    goto :goto_0

    .line 1185
    .end local v1    # "layouts":[Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public getScanCodeState(III)I
    .locals 2
    .param p1, "deviceId"    # I
    .param p2, "sourceMask"    # I
    .param p3, "scanCode"    # I

    .prologue
    .line 431
    iget-wide v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    invoke-static {v0, v1, p1, p2, p3}, Lcom/android/server/input/InputManagerService;->nativeGetScanCodeState(JIII)I

    move-result v0

    return v0
.end method

.method public getSwitchState(III)I
    .locals 2
    .param p1, "deviceId"    # I
    .param p2, "sourceMask"    # I
    .param p3, "switchCode"    # I

    .prologue
    .line 444
    iget-wide v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    invoke-static {v0, v1, p1, p2, p3}, Lcom/android/server/input/InputManagerService;->nativeGetSwitchState(JIII)I

    move-result v0

    return v0
.end method

.method public getTouchCalibrationForInputDevice(Ljava/lang/String;I)Landroid/hardware/input/TouchCalibration;
    .locals 2
    .param p1, "inputDeviceDescriptor"    # Ljava/lang/String;
    .param p2, "surfaceRotation"    # I

    .prologue
    .line 806
    if-nez p1, :cond_0

    .line 807
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "inputDeviceDescriptor must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 810
    :cond_0
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    monitor-enter v1

    .line 811
    :try_start_0
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/input/PersistentDataStore;->getTouchCalibration(Ljava/lang/String;I)Landroid/hardware/input/TouchCalibration;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 810
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public hasKeys(II[I[Z)Z
    .locals 6
    .param p1, "deviceId"    # I
    .param p2, "sourceMask"    # I
    .param p3, "keyCodes"    # [I
    .param p4, "keyExists"    # [Z

    .prologue
    .line 461
    if-nez p3, :cond_0

    .line 462
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "keyCodes must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 464
    :cond_0
    if-eqz p4, :cond_1

    array-length v0, p4

    array-length v1, p3

    if-ge v0, v1, :cond_2

    .line 465
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "keyExists must not be null and must be at least as large as keyCodes."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 469
    :cond_2
    iget-wide v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/android/server/input/InputManagerService;->nativeHasKeys(JII[I[Z)Z

    move-result v0

    return v0
.end method

.method public injectInputEvent(Landroid/view/InputEvent;I)Z
    .locals 1
    .param p1, "event"    # Landroid/view/InputEvent;
    .param p2, "mode"    # I

    .prologue
    .line 597
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/input/InputManagerService;->injectInputEventInternal(Landroid/view/InputEvent;II)Z

    move-result v0

    return v0
.end method

.method public isInTabletMode()I
    .locals 3

    .prologue
    .line 846
    const-string/jumbo v0, "android.permission.TABLET_MODE"

    .line 847
    const-string/jumbo v1, "isInTabletMode()"

    .line 846
    invoke-direct {p0, v0, v1}, Lcom/android/server/input/InputManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 848
    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "Requires TABLET_MODE permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 850
    :cond_0
    const/4 v0, -0x1

    const/16 v1, -0x100

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/input/InputManagerService;->getSwitchState(III)I

    move-result v0

    return v0
.end method

.method public monitor()V
    .locals 2

    .prologue
    .line 1584
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mInputFilterLock:Ljava/lang/Object;

    monitor-enter v0

    monitor-exit v0

    .line 1585
    iget-wide v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    invoke-static {v0, v1}, Lcom/android/server/input/InputManagerService;->nativeMonitor(J)V

    .line 1583
    return-void
.end method

.method public monitorInput(Ljava/lang/String;)Landroid/view/InputChannel;
    .locals 7
    .param p1, "inputChannelName"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 478
    if-nez p1, :cond_0

    .line 479
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "inputChannelName must not be null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 482
    :cond_0
    invoke-static {p1}, Landroid/view/InputChannel;->openInputChannelPair(Ljava/lang/String;)[Landroid/view/InputChannel;

    move-result-object v0

    .line 483
    .local v0, "inputChannels":[Landroid/view/InputChannel;
    iget-wide v2, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    aget-object v1, v0, v4

    invoke-static {v2, v3, v1, v6, v5}, Lcom/android/server/input/InputManagerService;->nativeRegisterInputChannel(JLandroid/view/InputChannel;Lcom/android/server/input/InputWindowHandle;Z)V

    .line 484
    aget-object v1, v0, v4

    invoke-virtual {v1}, Landroid/view/InputChannel;->dispose()V

    .line 485
    aget-object v1, v0, v5

    return-object v1
.end method

.method onVibratorTokenDied(Lcom/android/server/input/InputManagerService$VibratorToken;)V
    .locals 3
    .param p1, "v"    # Lcom/android/server/input/InputManagerService$VibratorToken;

    .prologue
    .line 1531
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mVibratorLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1532
    :try_start_0
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mVibratorTokens:Ljava/util/HashMap;

    iget-object v2, p1, Lcom/android/server/input/InputManagerService$VibratorToken;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 1535
    invoke-direct {p0, p1}, Lcom/android/server/input/InputManagerService;->cancelVibrateIfNeeded(Lcom/android/server/input/InputManagerService$VibratorToken;)V

    .line 1530
    return-void

    .line 1531
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public registerAppSwitchSwapButtonsSettingObserver()V
    .locals 4

    .prologue
    .line 1468
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1469
    const-string/jumbo v1, "app_switch_swap_buttons"

    invoke-static {v1}, Lcyanogenmod/providers/CMSettings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1470
    new-instance v2, Lcom/android/server/input/InputManagerService$11;

    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    invoke-direct {v2, p0, v3}, Lcom/android/server/input/InputManagerService$11;-><init>(Lcom/android/server/input/InputManagerService;Landroid/os/Handler;)V

    .line 1469
    const/4 v3, 0x0

    .line 1468
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1467
    return-void
.end method

.method public registerInputChannel(Landroid/view/InputChannel;Lcom/android/server/input/InputWindowHandle;)V
    .locals 3
    .param p1, "inputChannel"    # Landroid/view/InputChannel;
    .param p2, "inputWindowHandle"    # Lcom/android/server/input/InputWindowHandle;

    .prologue
    .line 496
    if-nez p1, :cond_0

    .line 497
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "inputChannel must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 500
    :cond_0
    iget-wide v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, p2, v2}, Lcom/android/server/input/InputManagerService;->nativeRegisterInputChannel(JLandroid/view/InputChannel;Lcom/android/server/input/InputWindowHandle;Z)V

    .line 495
    return-void
.end method

.method public registerInputDevicesChangedListener(Landroid/hardware/input/IInputDevicesChangedListener;)V
    .locals 7
    .param p1, "listener"    # Landroid/hardware/input/IInputDevicesChangedListener;

    .prologue
    .line 684
    if-nez p1, :cond_0

    .line 685
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "listener must not be null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 688
    :cond_0
    iget-object v5, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesLock:Ljava/lang/Object;

    monitor-enter v5

    .line 689
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 690
    .local v1, "callingPid":I
    iget-object v4, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesChangedListeners:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 691
    new-instance v4, Ljava/lang/SecurityException;

    const-string/jumbo v6, "The calling process has already registered an InputDevicesChangedListener."

    invoke-direct {v4, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 688
    .end local v1    # "callingPid":I
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 696
    .restart local v1    # "callingPid":I
    :cond_1
    :try_start_1
    new-instance v3, Lcom/android/server/input/InputManagerService$InputDevicesChangedListenerRecord;

    invoke-direct {v3, p0, v1, p1}, Lcom/android/server/input/InputManagerService$InputDevicesChangedListenerRecord;-><init>(Lcom/android/server/input/InputManagerService;ILandroid/hardware/input/IInputDevicesChangedListener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 698
    .local v3, "record":Lcom/android/server/input/InputManagerService$InputDevicesChangedListenerRecord;
    :try_start_2
    invoke-interface {p1}, Landroid/hardware/input/IInputDevicesChangedListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 699
    .local v0, "binder":Landroid/os/IBinder;
    const/4 v4, 0x0

    invoke-interface {v0, v3, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 705
    :try_start_3
    iget-object v4, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesChangedListeners:Landroid/util/SparseArray;

    invoke-virtual {v4, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v5

    .line 683
    return-void

    .line 700
    .end local v0    # "binder":Landroid/os/IBinder;
    :catch_0
    move-exception v2

    .line 702
    .local v2, "ex":Landroid/os/RemoteException;
    :try_start_4
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public registerSecondaryInputFilter(Landroid/view/IInputFilter;)V
    .locals 6
    .param p1, "filter"    # Landroid/view/IInputFilter;

    .prologue
    .line 558
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mInputFilterLock:Ljava/lang/Object;

    monitor-enter v2

    .line 559
    :try_start_0
    new-instance v0, Lcom/android/server/input/InputManagerService$ChainedInputFilterHost;

    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, p0, p1, v1, v3}, Lcom/android/server/input/InputManagerService$ChainedInputFilterHost;-><init>(Lcom/android/server/input/InputManagerService;Landroid/view/IInputFilter;Lcom/android/server/input/InputManagerService$ChainedInputFilterHost;Lcom/android/server/input/InputManagerService$ChainedInputFilterHost;)V

    .line 560
    .local v0, "host":Lcom/android/server/input/InputManagerService$ChainedInputFilterHost;
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mInputFilterChain:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 561
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mInputFilterChain:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mInputFilterChain:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/input/InputManagerService$ChainedInputFilterHost;

    invoke-static {v1, v0}, Lcom/android/server/input/InputManagerService$ChainedInputFilterHost;->-set0(Lcom/android/server/input/InputManagerService$ChainedInputFilterHost;Lcom/android/server/input/InputManagerService$ChainedInputFilterHost;)Lcom/android/server/input/InputManagerService$ChainedInputFilterHost;

    .line 563
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/input/InputManagerService$ChainedInputFilterHost;->connectLocked()V

    .line 564
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mInputFilterChain:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 566
    iget-wide v4, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mInputFilterChain:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    :goto_0
    invoke-static {v4, v5, v1}, Lcom/android/server/input/InputManagerService;->nativeSetInputFilterEnabled(JZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 557
    return-void

    .line 566
    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    .line 558
    .end local v0    # "host":Lcom/android/server/input/InputManagerService$ChainedInputFilterHost;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public registerStylusIconEnabledSettingObserver()V
    .locals 4

    .prologue
    .line 1416
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1417
    const-string/jumbo v1, "stylus_icon_enabled"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1418
    new-instance v2, Lcom/android/server/input/InputManagerService$9;

    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    invoke-direct {v2, p0, v3}, Lcom/android/server/input/InputManagerService$9;-><init>(Lcom/android/server/input/InputManagerService;Landroid/os/Handler;)V

    .line 1417
    const/4 v3, 0x0

    .line 1416
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1415
    return-void
.end method

.method public registerTabletModeChangedListener(Landroid/hardware/input/ITabletModeChangedListener;)V
    .locals 7
    .param p1, "listener"    # Landroid/hardware/input/ITabletModeChangedListener;

    .prologue
    .line 855
    const-string/jumbo v4, "android.permission.TABLET_MODE"

    .line 856
    const-string/jumbo v5, "registerTabletModeChangedListener()"

    .line 855
    invoke-direct {p0, v4, v5}, Lcom/android/server/input/InputManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 857
    new-instance v4, Ljava/lang/SecurityException;

    const-string/jumbo v5, "Requires TABLET_MODE_LISTENER permission"

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 859
    :cond_0
    if-nez p1, :cond_1

    .line 860
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "listener must not be null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 863
    :cond_1
    iget-object v5, p0, Lcom/android/server/input/InputManagerService;->mTabletModeLock:Ljava/lang/Object;

    monitor-enter v5

    .line 864
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 865
    .local v1, "callingPid":I
    iget-object v4, p0, Lcom/android/server/input/InputManagerService;->mTabletModeChangedListeners:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 866
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string/jumbo v6, "The calling process has already registered a TabletModeChangedListener."

    invoke-direct {v4, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 863
    .end local v1    # "callingPid":I
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 870
    .restart local v1    # "callingPid":I
    :cond_2
    :try_start_1
    new-instance v3, Lcom/android/server/input/InputManagerService$TabletModeChangedListenerRecord;

    invoke-direct {v3, p0, v1, p1}, Lcom/android/server/input/InputManagerService$TabletModeChangedListenerRecord;-><init>(Lcom/android/server/input/InputManagerService;ILandroid/hardware/input/ITabletModeChangedListener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 872
    .local v3, "record":Lcom/android/server/input/InputManagerService$TabletModeChangedListenerRecord;
    :try_start_2
    invoke-interface {p1}, Landroid/hardware/input/ITabletModeChangedListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 873
    .local v0, "binder":Landroid/os/IBinder;
    const/4 v4, 0x0

    invoke-interface {v0, v3, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 877
    :try_start_3
    iget-object v4, p0, Lcom/android/server/input/InputManagerService;->mTabletModeChangedListeners:Landroid/util/SparseArray;

    invoke-virtual {v4, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v5

    .line 854
    return-void

    .line 874
    .end local v0    # "binder":Landroid/os/IBinder;
    :catch_0
    move-exception v2

    .line 875
    .local v2, "ex":Landroid/os/RemoteException;
    :try_start_4
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public registerVolumeKeysRotationSettingObserver()V
    .locals 4

    .prologue
    .line 1442
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1443
    const-string/jumbo v1, "swap_volume_keys_on_rotation"

    invoke-static {v1}, Lcyanogenmod/providers/CMSettings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1444
    new-instance v2, Lcom/android/server/input/InputManagerService$10;

    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    invoke-direct {v2, p0, v3}, Lcom/android/server/input/InputManagerService$10;-><init>(Lcom/android/server/input/InputManagerService;Landroid/os/Handler;)V

    .line 1443
    const/4 v3, 0x0

    .line 1442
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1441
    return-void
.end method

.method public removeKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;Ljava/lang/String;)V
    .locals 6
    .param p1, "identifier"    # Landroid/hardware/input/InputDeviceIdentifier;
    .param p2, "keyboardLayoutDescriptor"    # Ljava/lang/String;

    .prologue
    .line 1227
    const-string/jumbo v3, "android.permission.SET_KEYBOARD_LAYOUT"

    .line 1228
    const-string/jumbo v4, "removeKeyboardLayoutForInputDevice()"

    .line 1227
    invoke-direct {p0, v3, v4}, Lcom/android/server/input/InputManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1229
    new-instance v3, Ljava/lang/SecurityException;

    const-string/jumbo v4, "Requires SET_KEYBOARD_LAYOUT permission"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1231
    :cond_0
    if-nez p2, :cond_1

    .line 1232
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "keyboardLayoutDescriptor must not be null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1235
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/input/InputManagerService;->getLayoutDescriptor(Landroid/hardware/input/InputDeviceIdentifier;)Ljava/lang/String;

    move-result-object v0

    .line 1236
    .local v0, "key":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    monitor-enter v4

    .line 1238
    :try_start_0
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v3, v0}, Lcom/android/server/input/PersistentDataStore;->getCurrentKeyboardLayout(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1239
    .local v1, "oldLayout":Ljava/lang/String;
    if-nez v1, :cond_2

    invoke-virtual {p1}, Landroid/hardware/input/InputDeviceIdentifier;->getDescriptor()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1242
    :cond_2
    :goto_0
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v3, v0, p2}, Lcom/android/server/input/PersistentDataStore;->removeKeyboardLayout(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 1243
    .local v2, "removed":Z
    invoke-virtual {p1}, Landroid/hardware/input/InputDeviceIdentifier;->getDescriptor()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 1245
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {p1}, Landroid/hardware/input/InputDeviceIdentifier;->getDescriptor()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5, p2}, Lcom/android/server/input/PersistentDataStore;->removeKeyboardLayout(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    or-int/2addr v2, v3

    .line 1248
    :cond_3
    if-eqz v2, :cond_4

    .line 1249
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v3, v0}, Lcom/android/server/input/PersistentDataStore;->getCurrentKeyboardLayout(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1248
    invoke-static {v1, v3}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_6

    .line 1253
    :cond_4
    :goto_1
    :try_start_1
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v3}, Lcom/android/server/input/PersistentDataStore;->saveIfNeeded()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v4

    .line 1226
    return-void

    .line 1240
    .end local v2    # "removed":Z
    :cond_5
    :try_start_2
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {p1}, Landroid/hardware/input/InputDeviceIdentifier;->getDescriptor()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/server/input/PersistentDataStore;->getCurrentKeyboardLayout(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1250
    .restart local v2    # "removed":Z
    :cond_6
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    const/4 v5, 0x3

    invoke-virtual {v3, v5}, Lcom/android/server/input/InputManagerService$InputManagerHandler;->sendEmptyMessage(I)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 1252
    .end local v1    # "oldLayout":Ljava/lang/String;
    .end local v2    # "removed":Z
    :catchall_0
    move-exception v3

    .line 1253
    :try_start_3
    iget-object v5, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v5}, Lcom/android/server/input/PersistentDataStore;->saveIfNeeded()V

    .line 1252
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1236
    :catchall_1
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public setCurrentKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;Ljava/lang/String;)V
    .locals 4
    .param p1, "identifier"    # Landroid/hardware/input/InputDeviceIdentifier;
    .param p2, "keyboardLayoutDescriptor"    # Ljava/lang/String;

    .prologue
    .line 1159
    const-string/jumbo v1, "android.permission.SET_KEYBOARD_LAYOUT"

    .line 1160
    const-string/jumbo v2, "setCurrentKeyboardLayoutForInputDevice()"

    .line 1159
    invoke-direct {p0, v1, v2}, Lcom/android/server/input/InputManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1161
    new-instance v1, Ljava/lang/SecurityException;

    const-string/jumbo v2, "Requires SET_KEYBOARD_LAYOUT permission"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1163
    :cond_0
    if-nez p2, :cond_1

    .line 1164
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "keyboardLayoutDescriptor must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1167
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/input/InputManagerService;->getLayoutDescriptor(Landroid/hardware/input/InputDeviceIdentifier;)Ljava/lang/String;

    move-result-object v0

    .line 1168
    .local v0, "key":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    monitor-enter v2

    .line 1170
    :try_start_0
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v1, v0, p2}, Lcom/android/server/input/PersistentDataStore;->setCurrentKeyboardLayout(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1174
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Lcom/android/server/input/InputManagerService$InputManagerHandler;->sendEmptyMessage(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1177
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v1}, Lcom/android/server/input/PersistentDataStore;->saveIfNeeded()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v2

    .line 1158
    return-void

    .line 1176
    :catchall_0
    move-exception v1

    .line 1177
    :try_start_2
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v3}, Lcom/android/server/input/PersistentDataStore;->saveIfNeeded()V

    .line 1176
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1168
    :catchall_1
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public setFocusedApplication(Lcom/android/server/input/InputApplicationHandle;)V
    .locals 2
    .param p1, "application"    # Lcom/android/server/input/InputApplicationHandle;

    .prologue
    .line 1304
    iget-wide v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    invoke-static {v0, v1, p1}, Lcom/android/server/input/InputManagerService;->nativeSetFocusedApplication(JLcom/android/server/input/InputApplicationHandle;)V

    .line 1303
    return-void
.end method

.method public setInputDispatchMode(ZZ)V
    .locals 2
    .param p1, "enabled"    # Z
    .param p2, "frozen"    # Z

    .prologue
    .line 1308
    iget-wide v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    invoke-static {v0, v1, p1, p2}, Lcom/android/server/input/InputManagerService;->nativeSetInputDispatchMode(JZZ)V

    .line 1307
    return-void
.end method

.method public setInputFilter(Landroid/view/IInputFilter;)V
    .locals 6
    .param p1, "filter"    # Landroid/view/IInputFilter;

    .prologue
    const/4 v1, 0x0

    .line 527
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mInputFilterLock:Ljava/lang/Object;

    monitor-enter v2

    .line 528
    :try_start_0
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mInputFilterHost:Lcom/android/server/input/InputManagerService$ChainedInputFilterHost;

    if-eqz v3, :cond_0

    .line 529
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mInputFilterHost:Lcom/android/server/input/InputManagerService$ChainedInputFilterHost;

    invoke-virtual {v3}, Lcom/android/server/input/InputManagerService$ChainedInputFilterHost;->disconnectLocked()V

    .line 530
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mInputFilterChain:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/server/input/InputManagerService;->mInputFilterHost:Lcom/android/server/input/InputManagerService$ChainedInputFilterHost;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 531
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/server/input/InputManagerService;->mInputFilterHost:Lcom/android/server/input/InputManagerService$ChainedInputFilterHost;

    .line 534
    :cond_0
    if-eqz p1, :cond_1

    .line 535
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mInputFilterChain:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v0, 0x0

    .line 537
    :goto_0
    new-instance v3, Lcom/android/server/input/InputManagerService$ChainedInputFilterHost;

    const/4 v4, 0x0

    invoke-direct {v3, p0, p1, v0, v4}, Lcom/android/server/input/InputManagerService$ChainedInputFilterHost;-><init>(Lcom/android/server/input/InputManagerService;Landroid/view/IInputFilter;Lcom/android/server/input/InputManagerService$ChainedInputFilterHost;Lcom/android/server/input/InputManagerService$ChainedInputFilterHost;)V

    iput-object v3, p0, Lcom/android/server/input/InputManagerService;->mInputFilterHost:Lcom/android/server/input/InputManagerService$ChainedInputFilterHost;

    .line 538
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mInputFilterHost:Lcom/android/server/input/InputManagerService$ChainedInputFilterHost;

    invoke-virtual {v3}, Lcom/android/server/input/InputManagerService$ChainedInputFilterHost;->connectLocked()V

    .line 539
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mInputFilterChain:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/server/input/InputManagerService;->mInputFilterHost:Lcom/android/server/input/InputManagerService$ChainedInputFilterHost;

    const/4 v5, 0x0

    invoke-virtual {v3, v5, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 542
    :cond_1
    iget-wide v4, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mInputFilterChain:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    :goto_1
    invoke-static {v4, v5, v1}, Lcom/android/server/input/InputManagerService;->nativeSetInputFilterEnabled(JZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 526
    return-void

    .line 536
    :cond_2
    :try_start_1
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mInputFilterChain:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/input/InputManagerService$ChainedInputFilterHost;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .local v0, "head":Lcom/android/server/input/InputManagerService$ChainedInputFilterHost;
    goto :goto_0

    .line 542
    .end local v0    # "head":Lcom/android/server/input/InputManagerService$ChainedInputFilterHost;
    :cond_3
    const/4 v1, 0x1

    goto :goto_1

    .line 527
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public setInputWindows([Lcom/android/server/input/InputWindowHandle;)V
    .locals 2
    .param p1, "windowHandles"    # [Lcom/android/server/input/InputWindowHandle;

    .prologue
    .line 1300
    iget-wide v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    invoke-static {v0, v1, p1}, Lcom/android/server/input/InputManagerService;->nativeSetInputWindows(J[Lcom/android/server/input/InputWindowHandle;)V

    .line 1299
    return-void
.end method

.method public setSystemUiVisibility(I)V
    .locals 2
    .param p1, "visibility"    # I

    .prologue
    .line 1312
    iget-wide v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    invoke-static {v0, v1, p1}, Lcom/android/server/input/InputManagerService;->nativeSetSystemUiVisibility(JI)V

    .line 1311
    return-void
.end method

.method public setTouchCalibrationForInputDevice(Ljava/lang/String;ILandroid/hardware/input/TouchCalibration;)V
    .locals 4
    .param p1, "inputDeviceDescriptor"    # Ljava/lang/String;
    .param p2, "surfaceRotation"    # I
    .param p3, "calibration"    # Landroid/hardware/input/TouchCalibration;

    .prologue
    .line 818
    const-string/jumbo v0, "android.permission.SET_INPUT_CALIBRATION"

    .line 819
    const-string/jumbo v1, "setTouchCalibrationForInputDevice()"

    .line 818
    invoke-direct {p0, v0, v1}, Lcom/android/server/input/InputManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 820
    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "Requires SET_INPUT_CALIBRATION permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 822
    :cond_0
    if-nez p1, :cond_1

    .line 823
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "inputDeviceDescriptor must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 825
    :cond_1
    if-nez p3, :cond_2

    .line 826
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "calibration must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 828
    :cond_2
    if-ltz p2, :cond_3

    const/4 v0, 0x3

    if-le p2, v0, :cond_4

    .line 829
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "surfaceRotation value out of bounds"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 832
    :cond_4
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    monitor-enter v1

    .line 834
    :try_start_0
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/input/PersistentDataStore;->setTouchCalibration(Ljava/lang/String;ILandroid/hardware/input/TouchCalibration;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 836
    iget-wide v2, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    invoke-static {v2, v3}, Lcom/android/server/input/InputManagerService;->nativeReloadCalibration(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 839
    :cond_5
    :try_start_1
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v0}, Lcom/android/server/input/PersistentDataStore;->saveIfNeeded()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v1

    .line 817
    return-void

    .line 838
    :catchall_0
    move-exception v0

    .line 839
    :try_start_2
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v2}, Lcom/android/server/input/PersistentDataStore;->saveIfNeeded()V

    .line 838
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 832
    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setWindowManagerCallbacks(Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;)V
    .locals 0
    .param p1, "callbacks"    # Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    .prologue
    .line 297
    iput-object p1, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    .line 296
    return-void
.end method

.method public setWiredAccessoryCallbacks(Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;)V
    .locals 0
    .param p1, "callbacks"    # Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;

    .prologue
    .line 301
    iput-object p1, p0, Lcom/android/server/input/InputManagerService;->mWiredAccessoryCallbacks:Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;

    .line 300
    return-void
.end method

.method public start()V
    .locals 5

    .prologue
    .line 305
    const-string/jumbo v0, "InputManager"

    const-string/jumbo v1, "Starting input manager"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    iget-wide v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    invoke-static {v0, v1}, Lcom/android/server/input/InputManagerService;->nativeStart(J)V

    .line 309
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/Watchdog;->addMonitor(Lcom/android/server/Watchdog$Monitor;)V

    .line 311
    invoke-direct {p0}, Lcom/android/server/input/InputManagerService;->registerPointerSpeedSettingObserver()V

    .line 312
    invoke-direct {p0}, Lcom/android/server/input/InputManagerService;->registerShowTouchesSettingObserver()V

    .line 313
    invoke-virtual {p0}, Lcom/android/server/input/InputManagerService;->registerStylusIconEnabledSettingObserver()V

    .line 314
    invoke-virtual {p0}, Lcom/android/server/input/InputManagerService;->registerVolumeKeysRotationSettingObserver()V

    .line 315
    invoke-virtual {p0}, Lcom/android/server/input/InputManagerService;->registerAppSwitchSwapButtonsSettingObserver()V

    .line 317
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/server/input/InputManagerService$1;

    invoke-direct {v1, p0}, Lcom/android/server/input/InputManagerService$1;-><init>(Lcom/android/server/input/InputManagerService;)V

    .line 325
    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v3, "android.intent.action.USER_SWITCHED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    const/4 v4, 0x0

    .line 317
    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 327
    invoke-virtual {p0}, Lcom/android/server/input/InputManagerService;->updatePointerSpeedFromSettings()V

    .line 328
    invoke-virtual {p0}, Lcom/android/server/input/InputManagerService;->updateShowTouchesFromSettings()V

    .line 329
    invoke-virtual {p0}, Lcom/android/server/input/InputManagerService;->updateStylusIconEnabledFromSettings()V

    .line 330
    invoke-virtual {p0}, Lcom/android/server/input/InputManagerService;->updateVolumeKeysRotationFromSettings()V

    .line 331
    invoke-virtual {p0}, Lcom/android/server/input/InputManagerService;->updateAppSwitchSwapButtonsFromSettings()V

    .line 304
    return-void
.end method

.method public switchKeyboardLayout(II)V
    .locals 2
    .param p1, "deviceId"    # I
    .param p2, "direction"    # I

    .prologue
    .line 1259
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/server/input/InputManagerService$InputManagerHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1258
    return-void
.end method

.method public systemRunning()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 339
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    .line 340
    const-string/jumbo v2, "notification"

    .line 339
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    iput-object v1, p0, Lcom/android/server/input/InputManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    .line 341
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/input/InputManagerService;->mSystemReady:Z

    .line 343
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 344
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 345
    const-string/jumbo v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 346
    const-string/jumbo v1, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 347
    const-string/jumbo v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 348
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/input/InputManagerService$2;

    invoke-direct {v2, p0}, Lcom/android/server/input/InputManagerService$2;-><init>(Lcom/android/server/input/InputManagerService;)V

    .line 353
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    .line 348
    invoke-virtual {v1, v2, v0, v4, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 355
    new-instance v0, Landroid/content/IntentFilter;

    .end local v0    # "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.bluetooth.device.action.ALIAS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 356
    .restart local v0    # "filter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/input/InputManagerService$3;

    invoke-direct {v2, p0}, Lcom/android/server/input/InputManagerService$3;-><init>(Lcom/android/server/input/InputManagerService;)V

    .line 361
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    .line 356
    invoke-virtual {v1, v2, v0, v4, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 363
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/android/server/input/InputManagerService$InputManagerHandler;->sendEmptyMessage(I)Z

    .line 364
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/android/server/input/InputManagerService$InputManagerHandler;->sendEmptyMessage(I)Z

    .line 366
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mWiredAccessoryCallbacks:Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;

    if-eqz v1, :cond_0

    .line 367
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mWiredAccessoryCallbacks:Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;

    invoke-interface {v1}, Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;->systemReady()V

    .line 335
    :cond_0
    return-void
.end method

.method public transferTouchFocus(Landroid/view/InputChannel;Landroid/view/InputChannel;)Z
    .locals 2
    .param p1, "fromChannel"    # Landroid/view/InputChannel;
    .param p2, "toChannel"    # Landroid/view/InputChannel;

    .prologue
    .line 1329
    if-nez p1, :cond_0

    .line 1330
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "fromChannel must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1332
    :cond_0
    if-nez p2, :cond_1

    .line 1333
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "toChannel must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1335
    :cond_1
    iget-wide v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    invoke-static {v0, v1, p1, p2}, Lcom/android/server/input/InputManagerService;->nativeTransferTouchFocus(JLandroid/view/InputChannel;Landroid/view/InputChannel;)Z

    move-result v0

    return v0
.end method

.method public tryPointerSpeed(I)V
    .locals 2
    .param p1, "speed"    # I

    .prologue
    .line 1340
    const-string/jumbo v0, "android.permission.SET_POINTER_SPEED"

    .line 1341
    const-string/jumbo v1, "tryPointerSpeed()"

    .line 1340
    invoke-direct {p0, v0, v1}, Lcom/android/server/input/InputManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1342
    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "Requires SET_POINTER_SPEED permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1345
    :cond_0
    const/4 v0, -0x7

    if-lt p1, v0, :cond_1

    const/4 v0, 0x7

    if-le p1, v0, :cond_2

    .line 1346
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "speed out of range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1349
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/server/input/InputManagerService;->setPointerSpeedUnchecked(I)V

    .line 1339
    return-void
.end method

.method public unregisterInputChannel(Landroid/view/InputChannel;)V
    .locals 2
    .param p1, "inputChannel"    # Landroid/view/InputChannel;

    .prologue
    .line 508
    if-nez p1, :cond_0

    .line 509
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "inputChannel must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 512
    :cond_0
    iget-wide v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    invoke-static {v0, v1, p1}, Lcom/android/server/input/InputManagerService;->nativeUnregisterInputChannel(JLandroid/view/InputChannel;)V

    .line 507
    return-void
.end method

.method public unregisterSecondaryInputFilter(Landroid/view/IInputFilter;)V
    .locals 8
    .param p1, "filter"    # Landroid/view/IInputFilter;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 571
    iget-object v5, p0, Lcom/android/server/input/InputManagerService;->mInputFilterLock:Ljava/lang/Object;

    monitor-enter v5

    .line 572
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/input/InputManagerService;->findInputFilterIndexLocked(Landroid/view/IInputFilter;)I

    move-result v1

    .line 573
    .local v1, "index":I
    if-ltz v1, :cond_1

    .line 574
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mInputFilterChain:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/input/InputManagerService$ChainedInputFilterHost;

    .line 575
    .local v0, "host":Lcom/android/server/input/InputManagerService$ChainedInputFilterHost;
    invoke-virtual {v0}, Lcom/android/server/input/InputManagerService$ChainedInputFilterHost;->disconnectLocked()V

    .line 576
    if-lt v1, v4, :cond_0

    .line 577
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mInputFilterChain:Ljava/util/ArrayList;

    add-int/lit8 v6, v1, -0x1

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/input/InputManagerService$ChainedInputFilterHost;

    invoke-static {v0}, Lcom/android/server/input/InputManagerService$ChainedInputFilterHost;->-get1(Lcom/android/server/input/InputManagerService$ChainedInputFilterHost;)Lcom/android/server/input/InputManagerService$ChainedInputFilterHost;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/android/server/input/InputManagerService$ChainedInputFilterHost;->-set0(Lcom/android/server/input/InputManagerService$ChainedInputFilterHost;Lcom/android/server/input/InputManagerService$ChainedInputFilterHost;)Lcom/android/server/input/InputManagerService$ChainedInputFilterHost;

    .line 579
    :cond_0
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mInputFilterChain:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 582
    .end local v0    # "host":Lcom/android/server/input/InputManagerService$ChainedInputFilterHost;
    :cond_1
    iget-wide v6, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mInputFilterChain:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v3

    :goto_0
    invoke-static {v6, v7, v2}, Lcom/android/server/input/InputManagerService;->nativeSetInputFilterEnabled(JZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v5

    .line 570
    return-void

    :cond_2
    move v2, v4

    .line 582
    goto :goto_0

    .line 571
    .end local v1    # "index":I
    :catchall_0
    move-exception v2

    monitor-exit v5

    throw v2
.end method

.method public updateAppSwitchSwapButtonsFromSettings()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1463
    invoke-direct {p0, v1}, Lcom/android/server/input/InputManagerService;->updateAppSwitchSwapButtonsFromSettings(I)I

    move-result v0

    .line 1464
    .local v0, "enabled":I
    iget-wide v2, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-static {v2, v3, v1}, Lcom/android/server/input/InputManagerService;->nativeSetAppSwitchSwapButtonsEnabled(JZ)V

    .line 1462
    return-void
.end method

.method public updatePointerSpeedFromSettings()V
    .locals 1

    .prologue
    .line 1353
    invoke-direct {p0}, Lcom/android/server/input/InputManagerService;->getPointerSpeedSetting()I

    move-result v0

    .line 1354
    .local v0, "speed":I
    invoke-direct {p0, v0}, Lcom/android/server/input/InputManagerService;->setPointerSpeedUnchecked(I)V

    .line 1352
    return-void
.end method

.method public updateShowTouchesFromSettings()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1385
    invoke-direct {p0, v1}, Lcom/android/server/input/InputManagerService;->getShowTouchesSetting(I)I

    move-result v0

    .line 1386
    .local v0, "setting":I
    iget-wide v2, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-static {v2, v3, v1}, Lcom/android/server/input/InputManagerService;->nativeSetShowTouches(JZ)V

    .line 1384
    return-void
.end method

.method public updateStylusIconEnabledFromSettings()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1411
    invoke-direct {p0, v1}, Lcom/android/server/input/InputManagerService;->getStylusIconEnabled(I)I

    move-result v0

    .line 1412
    .local v0, "enabled":I
    iget-wide v2, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-static {v2, v3, v1}, Lcom/android/server/input/InputManagerService;->nativeSetStylusIconEnabled(JZ)V

    .line 1410
    return-void
.end method

.method public updateVolumeKeysRotationFromSettings()V
    .locals 4

    .prologue
    .line 1437
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/server/input/InputManagerService;->getVolumeKeysRotationSetting(I)I

    move-result v0

    .line 1438
    .local v0, "mode":I
    iget-wide v2, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    invoke-static {v2, v3, v0}, Lcom/android/server/input/InputManagerService;->nativeSetVolumeKeysRotation(JI)V

    .line 1436
    return-void
.end method

.method public vibrate(I[JILandroid/os/IBinder;)V
    .locals 8
    .param p1, "deviceId"    # I
    .param p2, "pattern"    # [J
    .param p3, "repeat"    # I
    .param p4, "token"    # Landroid/os/IBinder;

    .prologue
    .line 1491
    array-length v0, p2

    if-lt p3, v0, :cond_0

    .line 1492
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 1496
    :cond_0
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mVibratorLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1497
    :try_start_0
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mVibratorTokens:Ljava/util/HashMap;

    invoke-virtual {v0, p4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/input/InputManagerService$VibratorToken;

    .line 1498
    .local v7, "v":Lcom/android/server/input/InputManagerService$VibratorToken;
    if-nez v7, :cond_1

    .line 1499
    new-instance v7, Lcom/android/server/input/InputManagerService$VibratorToken;

    .end local v7    # "v":Lcom/android/server/input/InputManagerService$VibratorToken;
    iget v0, p0, Lcom/android/server/input/InputManagerService;->mNextVibratorTokenValue:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/android/server/input/InputManagerService;->mNextVibratorTokenValue:I

    invoke-direct {v7, p0, p1, p4, v0}, Lcom/android/server/input/InputManagerService$VibratorToken;-><init>(Lcom/android/server/input/InputManagerService;ILandroid/os/IBinder;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1501
    .restart local v7    # "v":Lcom/android/server/input/InputManagerService$VibratorToken;
    const/4 v0, 0x0

    :try_start_1
    invoke-interface {p4, v7, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1506
    :try_start_2
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mVibratorTokens:Ljava/util/HashMap;

    invoke-virtual {v0, p4, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_1
    monitor-exit v1

    .line 1510
    monitor-enter v7

    .line 1511
    const/4 v0, 0x1

    :try_start_3
    iput-boolean v0, v7, Lcom/android/server/input/InputManagerService$VibratorToken;->mVibrating:Z

    .line 1512
    iget-wide v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    iget v5, v7, Lcom/android/server/input/InputManagerService$VibratorToken;->mTokenValue:I

    move v2, p1

    move-object v3, p2

    move v4, p3

    invoke-static/range {v0 .. v5}, Lcom/android/server/input/InputManagerService;->nativeVibrate(JI[JII)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit v7

    .line 1490
    return-void

    .line 1502
    :catch_0
    move-exception v6

    .line 1504
    .local v6, "ex":Landroid/os/RemoteException;
    :try_start_4
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1496
    .end local v6    # "ex":Landroid/os/RemoteException;
    .end local v7    # "v":Lcom/android/server/input/InputManagerService$VibratorToken;
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 1510
    .restart local v7    # "v":Lcom/android/server/input/InputManagerService$VibratorToken;
    :catchall_1
    move-exception v0

    monitor-exit v7

    throw v0
.end method
