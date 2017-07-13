.class public Lcom/android/exsettings/CryptKeeper;
.super Landroid/app/Activity;
.source "CryptKeeper.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exsettings/CryptKeeper$NonConfigurationInstanceState;,
        Lcom/android/exsettings/CryptKeeper$DecryptTask;,
        Lcom/android/exsettings/CryptKeeper$ValidationTask;,
        Lcom/android/exsettings/CryptKeeper$1;,
        Lcom/android/exsettings/CryptKeeper$2;,
        Lcom/android/exsettings/CryptKeeper$3;,
        Lcom/android/exsettings/CryptKeeper$4;
    }
.end annotation


# static fields
.field private static final LOCK_BUTTON_IDS:[I


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field protected mChooseNewLockPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

.field private final mClearPatternRunnable:Ljava/lang/Runnable;

.field private mCooldown:Z

.field private mCorrupt:Z

.field private mEncryptionGoneBad:Z

.field private final mFakeUnlockAttemptRunnable:Ljava/lang/Runnable;

.field private final mHandler:Landroid/os/Handler;

.field private mLockPatternButtons:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/widget/Button;",
            ">;"
        }
    .end annotation
.end field

.field private mLockPatternView:Lcom/android/internal/widget/LockPatternView;

.field private mMdtpActivated:Z

.field private mNotificationCountdown:I

.field private mPasswordEntry:Landroid/widget/EditText;

.field private mReleaseWakeLockCountdown:I

.field private mStatusBar:Landroid/app/StatusBarManager;

.field private mStatusString:I

.field private mStatusText:Landroid/widget/TextView;

.field private mValidationComplete:Z

.field private mValidationRequested:Z

.field mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static synthetic -get0(Lcom/android/exsettings/CryptKeeper;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/CryptKeeper;->mClearPatternRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/exsettings/CryptKeeper;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/exsettings/CryptKeeper;->mCooldown:Z

    return v0
.end method

.method static synthetic -get2(Lcom/android/exsettings/CryptKeeper;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/CryptKeeper;->mFakeUnlockAttemptRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/exsettings/CryptKeeper;)Lcom/android/internal/widget/LockPatternView;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/CryptKeeper;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/exsettings/CryptKeeper;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/exsettings/CryptKeeper;->mMdtpActivated:Z

    return v0
.end method

.method static synthetic -get5(Lcom/android/exsettings/CryptKeeper;)I
    .locals 1

    iget v0, p0, Lcom/android/exsettings/CryptKeeper;->mStatusString:I

    return v0
.end method

.method static synthetic -get6(Lcom/android/exsettings/CryptKeeper;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/CryptKeeper;->mStatusText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/exsettings/CryptKeeper;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/exsettings/CryptKeeper;->mCorrupt:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/exsettings/CryptKeeper;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/exsettings/CryptKeeper;->mEncryptionGoneBad:Z

    return p1
.end method

.method static synthetic -set2(Lcom/android/exsettings/CryptKeeper;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/exsettings/CryptKeeper;->mMdtpActivated:Z

    return p1
.end method

.method static synthetic -set3(Lcom/android/exsettings/CryptKeeper;I)I
    .locals 0

    iput p1, p0, Lcom/android/exsettings/CryptKeeper;->mStatusString:I

    return p1
.end method

.method static synthetic -set4(Lcom/android/exsettings/CryptKeeper;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/exsettings/CryptKeeper;->mValidationComplete:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/exsettings/CryptKeeper;)Landroid/os/storage/IMountService;
    .locals 1

    invoke-direct {p0}, Lcom/android/exsettings/CryptKeeper;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/exsettings/CryptKeeper;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/exsettings/CryptKeeper;->beginAttempt()V

    return-void
.end method

.method static synthetic -wrap10(Lcom/android/exsettings/CryptKeeper;ZZ)V
    .locals 0
    .param p1, "corrupt"    # Z
    .param p2, "mdtp_activated"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/exsettings/CryptKeeper;->showFactoryReset(ZZ)V

    return-void
.end method

.method static synthetic -wrap11(Lcom/android/exsettings/CryptKeeper;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/exsettings/CryptKeeper;->takeEmergencyCallAction()V

    return-void
.end method

.method static synthetic -wrap12(Lcom/android/exsettings/CryptKeeper;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/exsettings/CryptKeeper;->updateProgress()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/exsettings/CryptKeeper;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/exsettings/CryptKeeper;->cooldown()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/exsettings/CryptKeeper;Landroid/view/View;)V
    .locals 0
    .param p1, "postingView"    # Landroid/view/View;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/exsettings/CryptKeeper;->fakeUnlockAttempt(Landroid/view/View;)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/exsettings/CryptKeeper;Ljava/lang/Integer;)V
    .locals 0
    .param p1, "failedAttempts"    # Ljava/lang/Integer;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/exsettings/CryptKeeper;->handleBadAttempt(Ljava/lang/Integer;)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/exsettings/CryptKeeper;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/exsettings/CryptKeeper;->notifyUser()V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/exsettings/CryptKeeper;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/exsettings/CryptKeeper;->passwordEntryInit()V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/exsettings/CryptKeeper;Z)V
    .locals 0
    .param p1, "isEnabled"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/exsettings/CryptKeeper;->setBackFunctionality(Z)V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/exsettings/CryptKeeper;Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/exsettings/CryptKeeper;->setPatternButtonsEnabled(Z)V

    return-void
.end method

.method static synthetic -wrap9(Lcom/android/exsettings/CryptKeeper;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/exsettings/CryptKeeper;->setupUi()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 134
    const v0, 0x7f13007a

    .line 135
    const v1, 0x7f13007b

    .line 136
    const v2, 0x7f13007c

    .line 137
    const v3, 0x7f13007d

    .line 133
    filled-new-array {v0, v1, v2, v3}, [I

    move-result-object v0

    sput-object v0, Lcom/android/exsettings/CryptKeeper;->LOCK_BUTTON_IDS:[I

    .line 89
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 89
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 126
    iput-boolean v1, p0, Lcom/android/exsettings/CryptKeeper;->mCooldown:Z

    .line 132
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/exsettings/CryptKeeper;->mLockPatternButtons:Ljava/util/List;

    .line 141
    iput v1, p0, Lcom/android/exsettings/CryptKeeper;->mNotificationCountdown:I

    .line 143
    iput v1, p0, Lcom/android/exsettings/CryptKeeper;->mReleaseWakeLockCountdown:I

    .line 144
    const v0, 0x7f0c0c9f

    iput v0, p0, Lcom/android/exsettings/CryptKeeper;->mStatusString:I

    .line 154
    new-instance v0, Lcom/android/exsettings/CryptKeeper$1;

    invoke-direct {v0, p0}, Lcom/android/exsettings/CryptKeeper$1;-><init>(Lcom/android/exsettings/CryptKeeper;)V

    iput-object v0, p0, Lcom/android/exsettings/CryptKeeper;->mFakeUnlockAttemptRunnable:Ljava/lang/Runnable;

    .line 164
    new-instance v0, Lcom/android/exsettings/CryptKeeper$2;

    invoke-direct {v0, p0}, Lcom/android/exsettings/CryptKeeper$2;-><init>(Lcom/android/exsettings/CryptKeeper;)V

    iput-object v0, p0, Lcom/android/exsettings/CryptKeeper;->mClearPatternRunnable:Ljava/lang/Runnable;

    .line 351
    new-instance v0, Lcom/android/exsettings/CryptKeeper$3;

    invoke-direct {v0, p0}, Lcom/android/exsettings/CryptKeeper$3;-><init>(Lcom/android/exsettings/CryptKeeper;)V

    iput-object v0, p0, Lcom/android/exsettings/CryptKeeper;->mHandler:Landroid/os/Handler;

    .line 764
    new-instance v0, Lcom/android/exsettings/CryptKeeper$4;

    invoke-direct {v0, p0}, Lcom/android/exsettings/CryptKeeper$4;-><init>(Lcom/android/exsettings/CryptKeeper;)V

    .line 763
    iput-object v0, p0, Lcom/android/exsettings/CryptKeeper;->mChooseNewLockPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

    .line 89
    return-void
.end method

.method private beginAttempt()V
    .locals 2

    .prologue
    .line 257
    iget-object v0, p0, Lcom/android/exsettings/CryptKeeper;->mStatusText:Landroid/widget/TextView;

    const v1, 0x7f0c0ca5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 256
    return-void
.end method

.method private cooldown()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 734
    iget-object v0, p0, Lcom/android/exsettings/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 735
    iget-object v0, p0, Lcom/android/exsettings/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 738
    :cond_0
    iget-object v0, p0, Lcom/android/exsettings/CryptKeeper;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    if-eqz v0, :cond_1

    .line 739
    iget-object v0, p0, Lcom/android/exsettings/CryptKeeper;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setEnabled(Z)V

    .line 740
    invoke-direct {p0, v1}, Lcom/android/exsettings/CryptKeeper;->setPatternButtonsEnabled(Z)V

    .line 743
    :cond_1
    iget-object v0, p0, Lcom/android/exsettings/CryptKeeper;->mStatusText:Landroid/widget/TextView;

    const v1, 0x7f0c065a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 732
    return-void
.end method

.method private delayAudioNotification()V
    .locals 1

    .prologue
    .line 1060
    const/16 v0, 0x14

    iput v0, p0, Lcom/android/exsettings/CryptKeeper;->mNotificationCountdown:I

    .line 1059
    return-void
.end method

.method private static disableCryptKeeperComponent(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1091
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 1092
    .local v1, "pm":Landroid/content/pm/PackageManager;
    new-instance v0, Landroid/content/ComponentName;

    const-class v2, Lcom/android/exsettings/CryptKeeper;

    invoke-direct {v0, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1093
    .local v0, "name":Landroid/content/ComponentName;
    const-string/jumbo v2, "CryptKeeper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Disabling component "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1094
    const/4 v2, 0x2

    .line 1095
    const/4 v3, 0x1

    .line 1094
    invoke-virtual {v1, v0, v2, v3}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 1090
    return-void
.end method

.method private encryptionProgressInit()V
    .locals 3

    .prologue
    .line 615
    const-string/jumbo v1, "CryptKeeper"

    const-string/jumbo v2, "Encryption progress screen initializing."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    iget-object v1, p0, Lcom/android/exsettings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v1, :cond_0

    .line 617
    const-string/jumbo v1, "CryptKeeper"

    const-string/jumbo v2, "Acquiring wakelock."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    const-string/jumbo v1, "power"

    invoke-virtual {p0, v1}, Lcom/android/exsettings/CryptKeeper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 619
    .local v0, "pm":Landroid/os/PowerManager;
    const-string/jumbo v1, "CryptKeeper"

    const/16 v2, 0x1a

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/exsettings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 620
    iget-object v1, p0, Lcom/android/exsettings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 623
    .end local v0    # "pm":Landroid/os/PowerManager;
    :cond_0
    const v1, 0x7f13007f

    invoke-virtual {p0, v1}, Lcom/android/exsettings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 625
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/exsettings/CryptKeeper;->setBackFunctionality(Z)V

    .line 628
    invoke-direct {p0}, Lcom/android/exsettings/CryptKeeper;->updateProgress()V

    .line 611
    return-void
.end method

.method private fakeUnlockAttempt(Landroid/view/View;)V
    .locals 4
    .param p1, "postingView"    # Landroid/view/View;

    .prologue
    .line 759
    invoke-direct {p0}, Lcom/android/exsettings/CryptKeeper;->beginAttempt()V

    .line 760
    iget-object v0, p0, Lcom/android/exsettings/CryptKeeper;->mFakeUnlockAttemptRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {p1, v0, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 758
    return-void
.end method

.method private getMountService()Landroid/os/storage/IMountService;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 926
    const-string/jumbo v1, "mount"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 927
    .local v0, "service":Landroid/os/IBinder;
    if-eqz v0, :cond_0

    .line 928
    invoke-static {v0}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v1

    return-object v1

    .line 930
    :cond_0
    return-object v2
.end method

.method private getTelecomManager()Landroid/telecom/TelecomManager;
    .locals 1

    .prologue
    .line 1053
    const-string/jumbo v0, "telecom"

    invoke-virtual {p0, v0}, Lcom/android/exsettings/CryptKeeper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    return-object v0
.end method

.method private getTelephonyManager()Landroid/telephony/TelephonyManager;
    .locals 1

    .prologue
    .line 1049
    const-string/jumbo v0, "phone"

    invoke-virtual {p0, v0}, Lcom/android/exsettings/CryptKeeper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method private handleBadAttempt(Ljava/lang/Integer;)V
    .locals 14
    .param p1, "failedAttempts"    # Ljava/lang/Integer;

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x1

    .line 262
    iget-object v7, p0, Lcom/android/exsettings/CryptKeeper;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    if-eqz v7, :cond_0

    .line 263
    iget-object v7, p0, Lcom/android/exsettings/CryptKeeper;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    sget-object v8, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Wrong:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    invoke-virtual {v7, v8}, Lcom/android/internal/widget/LockPatternView;->setDisplayMode(Lcom/android/internal/widget/LockPatternView$DisplayMode;)V

    .line 264
    iget-object v7, p0, Lcom/android/exsettings/CryptKeeper;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v8, p0, Lcom/android/exsettings/CryptKeeper;->mClearPatternRunnable:Ljava/lang/Runnable;

    invoke-virtual {v7, v8}, Lcom/android/internal/widget/LockPatternView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 265
    iget-object v7, p0, Lcom/android/exsettings/CryptKeeper;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v8, p0, Lcom/android/exsettings/CryptKeeper;->mClearPatternRunnable:Ljava/lang/Runnable;

    const-wide/16 v10, 0x5dc

    invoke-virtual {v7, v8, v10, v11}, Lcom/android/internal/widget/LockPatternView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 267
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    rem-int/lit8 v7, v7, 0xa

    if-nez v7, :cond_2

    .line 268
    iput-boolean v12, p0, Lcom/android/exsettings/CryptKeeper;->mCooldown:Z

    .line 271
    invoke-direct {p0}, Lcom/android/exsettings/CryptKeeper;->cooldown()V

    .line 260
    :cond_1
    :goto_0
    return-void

    .line 273
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    rsub-int/lit8 v3, v7, 0x1e

    .line 274
    .local v3, "remainingAttempts":I
    const/16 v7, 0xa

    if-ge v3, v7, :cond_4

    .line 275
    const v7, 0x7f0c065b

    invoke-virtual {p0, v7}, Lcom/android/exsettings/CryptKeeper;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    .line 276
    .local v6, "warningTemplate":Ljava/lang/CharSequence;
    new-array v7, v12, [Ljava/lang/CharSequence;

    .line 277
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v13

    .line 276
    invoke-static {v6, v7}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    .line 278
    .local v5, "warning":Ljava/lang/CharSequence;
    iget-object v7, p0, Lcom/android/exsettings/CryptKeeper;->mStatusText:Landroid/widget/TextView;

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 297
    .end local v5    # "warning":Ljava/lang/CharSequence;
    .end local v6    # "warningTemplate":Ljava/lang/CharSequence;
    :goto_1
    iget-object v7, p0, Lcom/android/exsettings/CryptKeeper;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    if-eqz v7, :cond_3

    .line 298
    iget-object v7, p0, Lcom/android/exsettings/CryptKeeper;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    sget-object v8, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Wrong:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    invoke-virtual {v7, v8}, Lcom/android/internal/widget/LockPatternView;->setDisplayMode(Lcom/android/internal/widget/LockPatternView$DisplayMode;)V

    .line 299
    iget-object v7, p0, Lcom/android/exsettings/CryptKeeper;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v7, v12}, Lcom/android/internal/widget/LockPatternView;->setEnabled(Z)V

    .line 300
    invoke-direct {p0, v12}, Lcom/android/exsettings/CryptKeeper;->setPatternButtonsEnabled(Z)V

    .line 304
    :cond_3
    iget-object v7, p0, Lcom/android/exsettings/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;

    if-eqz v7, :cond_1

    .line 305
    iget-object v7, p0, Lcom/android/exsettings/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v7, v12}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 307
    const-string/jumbo v7, "input_method"

    .line 306
    invoke-virtual {p0, v7}, Lcom/android/exsettings/CryptKeeper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 308
    .local v1, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v7, p0, Lcom/android/exsettings/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v1, v7, v13}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 309
    invoke-direct {p0, v12}, Lcom/android/exsettings/CryptKeeper;->setBackFunctionality(Z)V

    goto :goto_0

    .line 280
    .end local v1    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_4
    const/4 v2, 0x0

    .line 282
    .local v2, "passwordType":I
    :try_start_0
    invoke-direct {p0}, Lcom/android/exsettings/CryptKeeper;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v4

    .line 283
    .local v4, "service":Landroid/os/storage/IMountService;
    invoke-interface {v4}, Landroid/os/storage/IMountService;->getPasswordType()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 288
    .end local v4    # "service":Landroid/os/storage/IMountService;
    :goto_2
    const/4 v7, 0x3

    if-ne v2, v7, :cond_5

    .line 289
    iget-object v7, p0, Lcom/android/exsettings/CryptKeeper;->mStatusText:Landroid/widget/TextView;

    const v8, 0x7f0c0ca4

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 284
    :catch_0
    move-exception v0

    .line 285
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v7, "CryptKeeper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Error calling mount service "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 290
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_5
    const/4 v7, 0x2

    if-ne v2, v7, :cond_6

    .line 291
    iget-object v7, p0, Lcom/android/exsettings/CryptKeeper;->mStatusText:Landroid/widget/TextView;

    const v8, 0x7f0c0ca2

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 293
    :cond_6
    iget-object v7, p0, Lcom/android/exsettings/CryptKeeper;->mStatusText:Landroid/widget/TextView;

    const v8, 0x7f0c0ca3

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1
.end method

.method private hasMultipleEnabledIMEsOrSubtypes(Landroid/view/inputmethod/InputMethodManager;Z)Z
    .locals 12
    .param p1, "imm"    # Landroid/view/inputmethod/InputMethodManager;
    .param p2, "shouldIncludeAuxiliarySubtypes"    # Z

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 886
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodList()Ljava/util/List;

    move-result-object v1

    .line 889
    .local v1, "enabledImis":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    const/4 v2, 0x0

    .line 891
    .local v2, "filteredImisCount":I
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "imi$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodInfo;

    .line 893
    .local v3, "imi":Landroid/view/inputmethod/InputMethodInfo;
    if-le v2, v9, :cond_1

    return v9

    .line 895
    :cond_1
    invoke-virtual {p1, v3, v9}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodSubtypeList(Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v8

    .line 897
    .local v8, "subtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 898
    add-int/lit8 v2, v2, 0x1

    .line 899
    goto :goto_0

    .line 902
    :cond_2
    const/4 v0, 0x0

    .line 903
    .local v0, "auxCount":I
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "subtype$iterator":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/inputmethod/InputMethodSubtype;

    .line 904
    .local v6, "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual {v6}, Landroid/view/inputmethod/InputMethodSubtype;->isAuxiliary()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 905
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 908
    .end local v6    # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    :cond_4
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v11

    sub-int v5, v11, v0

    .line 913
    .local v5, "nonAuxCount":I
    if-gtz v5, :cond_5

    if-eqz p2, :cond_0

    if-le v0, v9, :cond_0

    .line 914
    :cond_5
    add-int/lit8 v2, v2, 0x1

    .line 915
    goto :goto_0

    .line 919
    .end local v0    # "auxCount":I
    .end local v3    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    .end local v5    # "nonAuxCount":I
    .end local v7    # "subtype$iterator":Ljava/util/Iterator;
    .end local v8    # "subtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    :cond_6
    if-gt v2, v9, :cond_7

    .line 922
    const/4 v11, 0x0

    invoke-virtual {p1, v11, v10}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodSubtypeList(Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-le v11, v9, :cond_8

    .line 919
    :cond_7
    :goto_2
    return v9

    :cond_8
    move v9, v10

    .line 922
    goto :goto_2
.end method

.method private isDebugView()Z
    .locals 2

    .prologue
    .line 383
    invoke-virtual {p0}, Lcom/android/exsettings/CryptKeeper;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "com.android.settings.CryptKeeper.DEBUG_FORCE_VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private isDebugView(Ljava/lang/String;)Z
    .locals 2
    .param p1, "viewType"    # Ljava/lang/String;

    .prologue
    .line 388
    invoke-virtual {p0}, Lcom/android/exsettings/CryptKeeper;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "com.android.settings.CryptKeeper.DEBUG_FORCE_VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isEmergencyCallCapable()Z
    .locals 2

    .prologue
    .line 1027
    invoke-virtual {p0}, Lcom/android/exsettings/CryptKeeper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1120065

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method private launchEmergencyDialer()V
    .locals 2

    .prologue
    .line 1041
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.android.phone.EmergencyDialer.DIAL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1042
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10800000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1044
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/exsettings/CryptKeeper;->setBackFunctionality(Z)V

    .line 1045
    invoke-virtual {p0, v0}, Lcom/android/exsettings/CryptKeeper;->startActivity(Landroid/content/Intent;)V

    .line 1040
    return-void
.end method

.method private notifyUser()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    .line 395
    iget v1, p0, Lcom/android/exsettings/CryptKeeper;->mNotificationCountdown:I

    if-lez v1, :cond_2

    .line 396
    iget v1, p0, Lcom/android/exsettings/CryptKeeper;->mNotificationCountdown:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/exsettings/CryptKeeper;->mNotificationCountdown:I

    .line 410
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/exsettings/CryptKeeper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 411
    iget-object v1, p0, Lcom/android/exsettings/CryptKeeper;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 413
    iget-object v1, p0, Lcom/android/exsettings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 414
    iget v1, p0, Lcom/android/exsettings/CryptKeeper;->mReleaseWakeLockCountdown:I

    if-lez v1, :cond_3

    .line 415
    iget v1, p0, Lcom/android/exsettings/CryptKeeper;->mReleaseWakeLockCountdown:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/exsettings/CryptKeeper;->mReleaseWakeLockCountdown:I

    .line 394
    :cond_1
    :goto_1
    return-void

    .line 397
    :cond_2
    iget-object v1, p0, Lcom/android/exsettings/CryptKeeper;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v1, :cond_0

    .line 404
    :try_start_0
    iget-object v1, p0, Lcom/android/exsettings/CryptKeeper;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x5

    const/16 v3, 0x64

    invoke-virtual {v1, v2, v3}, Landroid/media/AudioManager;->playSoundEffect(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 405
    :catch_0
    move-exception v0

    .line 406
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "CryptKeeper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "notifyUser: Exception while playing sound: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 417
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    iget-object v1, p0, Lcom/android/exsettings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_1
.end method

.method private passwordEntryInit()V
    .locals 12

    .prologue
    const/4 v11, 0x2

    const/4 v7, 0x0

    .line 796
    const v6, 0x7f130078

    invoke-virtual {p0, v6}, Lcom/android/exsettings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    iput-object v6, p0, Lcom/android/exsettings/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;

    .line 797
    iget-object v6, p0, Lcom/android/exsettings/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;

    if-eqz v6, :cond_0

    .line 798
    iget-object v6, p0, Lcom/android/exsettings/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v6, p0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 799
    iget-object v6, p0, Lcom/android/exsettings/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->requestFocus()Z

    .line 801
    iget-object v6, p0, Lcom/android/exsettings/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v6, p0}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 802
    iget-object v6, p0, Lcom/android/exsettings/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v6, p0}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 803
    iget-object v6, p0, Lcom/android/exsettings/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v6, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 806
    :cond_0
    iget-object v6, p0, Lcom/android/exsettings/CryptKeeper;->mLockPatternButtons:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 808
    const v6, 0x7f13005e

    invoke-virtual {p0, v6}, Lcom/android/exsettings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/internal/widget/LockPatternView;

    iput-object v6, p0, Lcom/android/exsettings/CryptKeeper;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    .line 809
    iget-object v6, p0, Lcom/android/exsettings/CryptKeeper;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    if-eqz v6, :cond_2

    .line 810
    iget-object v6, p0, Lcom/android/exsettings/CryptKeeper;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v8, p0, Lcom/android/exsettings/CryptKeeper;->mChooseNewLockPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

    invoke-virtual {v6, v8}, Lcom/android/internal/widget/LockPatternView;->setOnPatternListener(Lcom/android/internal/widget/LockPatternView$OnPatternListener;)V

    .line 811
    sget-object v8, Lcom/android/exsettings/CryptKeeper;->LOCK_BUTTON_IDS:[I

    array-length v9, v8

    move v6, v7

    :goto_0
    if-ge v6, v9, :cond_2

    aget v2, v8, v6

    .line 812
    .local v2, "id":I
    invoke-virtual {p0, v2}, Lcom/android/exsettings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 813
    .local v0, "btn":Landroid/widget/Button;
    if-eqz v0, :cond_1

    .line 814
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 815
    iget-object v10, p0, Lcom/android/exsettings/CryptKeeper;->mLockPatternButtons:Ljava/util/List;

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 811
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 821
    .end local v0    # "btn":Landroid/widget/Button;
    .end local v2    # "id":I
    :cond_2
    invoke-direct {p0}, Lcom/android/exsettings/CryptKeeper;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v6

    if-nez v6, :cond_3

    .line 822
    const v6, 0x7f130077

    invoke-virtual {p0, v6}, Lcom/android/exsettings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 823
    .local v1, "emergencyCall":Landroid/view/View;
    if-eqz v1, :cond_3

    .line 824
    const-string/jumbo v6, "CryptKeeper"

    const-string/jumbo v8, "Removing the emergency Call button"

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 825
    const/16 v6, 0x8

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 829
    .end local v1    # "emergencyCall":Landroid/view/View;
    :cond_3
    const v6, 0x7f130088

    invoke-virtual {p0, v6}, Lcom/android/exsettings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 831
    .local v3, "imeSwitcher":Landroid/view/View;
    const-string/jumbo v6, "input_method"

    .line 830
    invoke-virtual {p0, v6}, Lcom/android/exsettings/CryptKeeper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/inputmethod/InputMethodManager;

    .line 832
    .local v4, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v3, :cond_4

    invoke-direct {p0, v4, v7}, Lcom/android/exsettings/CryptKeeper;->hasMultipleEnabledIMEsOrSubtypes(Landroid/view/inputmethod/InputMethodManager;Z)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 833
    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 834
    new-instance v6, Lcom/android/exsettings/CryptKeeper$7;

    invoke-direct {v6, p0, v4}, Lcom/android/exsettings/CryptKeeper$7;-><init>(Lcom/android/exsettings/CryptKeeper;Landroid/view/inputmethod/InputMethodManager;)V

    invoke-virtual {v3, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 845
    :cond_4
    iget-object v6, p0, Lcom/android/exsettings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v6, :cond_5

    .line 846
    const-string/jumbo v6, "CryptKeeper"

    const-string/jumbo v7, "Acquiring wakelock."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 847
    const-string/jumbo v6, "power"

    invoke-virtual {p0, v6}, Lcom/android/exsettings/CryptKeeper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/PowerManager;

    .line 848
    .local v5, "pm":Landroid/os/PowerManager;
    if-eqz v5, :cond_5

    .line 849
    const-string/jumbo v6, "CryptKeeper"

    const/16 v7, 0x1a

    invoke-virtual {v5, v7, v6}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v6

    iput-object v6, p0, Lcom/android/exsettings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 850
    iget-object v6, p0, Lcom/android/exsettings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v6}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 853
    const/16 v6, 0x60

    iput v6, p0, Lcom/android/exsettings/CryptKeeper;->mReleaseWakeLockCountdown:I

    .line 859
    .end local v5    # "pm":Landroid/os/PowerManager;
    :cond_5
    iget-object v6, p0, Lcom/android/exsettings/CryptKeeper;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    if-nez v6, :cond_6

    iget-boolean v6, p0, Lcom/android/exsettings/CryptKeeper;->mCooldown:Z

    if-eqz v6, :cond_7

    .line 867
    :cond_6
    :goto_1
    invoke-direct {p0}, Lcom/android/exsettings/CryptKeeper;->updateEmergencyCallButtonState()V

    .line 869
    iget-object v6, p0, Lcom/android/exsettings/CryptKeeper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v11}, Landroid/os/Handler;->removeMessages(I)V

    .line 870
    iget-object v6, p0, Lcom/android/exsettings/CryptKeeper;->mHandler:Landroid/os/Handler;

    const-wide/32 v8, 0x1d4c0

    invoke-virtual {v6, v11, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 873
    invoke-virtual {p0}, Lcom/android/exsettings/CryptKeeper;->getWindow()Landroid/view/Window;

    move-result-object v6

    const/high16 v7, 0x480000

    invoke-virtual {v6, v7}, Landroid/view/Window;->addFlags(I)V

    .line 794
    return-void

    .line 860
    :cond_7
    iget-object v6, p0, Lcom/android/exsettings/CryptKeeper;->mHandler:Landroid/os/Handler;

    new-instance v7, Lcom/android/exsettings/CryptKeeper$8;

    invoke-direct {v7, p0, v4}, Lcom/android/exsettings/CryptKeeper$8;-><init>(Lcom/android/exsettings/CryptKeeper;Landroid/view/inputmethod/InputMethodManager;)V

    .line 864
    const-wide/16 v8, 0x0

    .line 860
    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1
.end method

.method private final setAirplaneModeIfNecessary()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 980
    invoke-direct {p0}, Lcom/android/exsettings/CryptKeeper;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getLteOnCdmaMode()I

    move-result v2

    if-ne v2, v4, :cond_1

    const/4 v1, 0x1

    .line 981
    .local v1, "isLteDevice":Z
    :goto_0
    if-nez v1, :cond_0

    .line 982
    const-string/jumbo v2, "CryptKeeper"

    const-string/jumbo v3, "Going into airplane mode."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 983
    invoke-virtual {p0}, Lcom/android/exsettings/CryptKeeper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "airplane_mode_on"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 984
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 985
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "state"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 986
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v2}, Lcom/android/exsettings/CryptKeeper;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 978
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void

    .line 980
    .end local v1    # "isLteDevice":Z
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "isLteDevice":Z
    goto :goto_0
.end method

.method private final setBackFunctionality(Z)V
    .locals 2
    .param p1, "isEnabled"    # Z

    .prologue
    .line 751
    if-eqz p1, :cond_0

    .line 752
    iget-object v0, p0, Lcom/android/exsettings/CryptKeeper;->mStatusBar:Landroid/app/StatusBarManager;

    const/high16 v1, 0x3370000

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    .line 750
    :goto_0
    return-void

    .line 754
    :cond_0
    iget-object v0, p0, Lcom/android/exsettings/CryptKeeper;->mStatusBar:Landroid/app/StatusBarManager;

    const/high16 v1, 0x3770000

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    goto :goto_0
.end method

.method private setPatternButtonsEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 1128
    iget-object v2, p0, Lcom/android/exsettings/CryptKeeper;->mLockPatternButtons:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "btn$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 1129
    .local v0, "btn":Landroid/widget/Button;
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 1127
    .end local v0    # "btn":Landroid/widget/Button;
    :cond_0
    return-void
.end method

.method private setupUi()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const v3, 0x7f04003a

    .line 495
    iget-boolean v2, p0, Lcom/android/exsettings/CryptKeeper;->mEncryptionGoneBad:Z

    if-nez v2, :cond_0

    const-string/jumbo v2, "error"

    invoke-direct {p0, v2}, Lcom/android/exsettings/CryptKeeper;->isDebugView(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 496
    :cond_0
    invoke-virtual {p0, v3}, Lcom/android/exsettings/CryptKeeper;->setContentView(I)V

    .line 497
    iget-boolean v1, p0, Lcom/android/exsettings/CryptKeeper;->mCorrupt:Z

    iget-boolean v2, p0, Lcom/android/exsettings/CryptKeeper;->mMdtpActivated:Z

    invoke-direct {p0, v1, v2}, Lcom/android/exsettings/CryptKeeper;->showFactoryReset(ZZ)V

    .line 498
    return-void

    .line 501
    :cond_1
    const-string/jumbo v2, "vold.encrypt_progress"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 502
    .local v0, "progress":Ljava/lang/String;
    const-string/jumbo v2, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v2, "progress"

    invoke-direct {p0, v2}, Lcom/android/exsettings/CryptKeeper;->isDebugView(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 503
    :cond_2
    invoke-virtual {p0, v3}, Lcom/android/exsettings/CryptKeeper;->setContentView(I)V

    .line 504
    invoke-direct {p0}, Lcom/android/exsettings/CryptKeeper;->encryptionProgressInit()V

    .line 494
    :cond_3
    :goto_0
    return-void

    .line 505
    :cond_4
    iget-boolean v2, p0, Lcom/android/exsettings/CryptKeeper;->mValidationComplete:Z

    if-nez v2, :cond_5

    const-string/jumbo v2, "password"

    invoke-direct {p0, v2}, Lcom/android/exsettings/CryptKeeper;->isDebugView(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 506
    :cond_5
    new-instance v1, Lcom/android/exsettings/CryptKeeper$5;

    invoke-direct {v1, p0}, Lcom/android/exsettings/CryptKeeper$5;-><init>(Lcom/android/exsettings/CryptKeeper;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/android/exsettings/CryptKeeper$5;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 564
    :cond_6
    iget-boolean v2, p0, Lcom/android/exsettings/CryptKeeper;->mValidationRequested:Z

    if-nez v2, :cond_3

    .line 566
    new-instance v2, Lcom/android/exsettings/CryptKeeper$ValidationTask;

    invoke-direct {v2, p0, v1}, Lcom/android/exsettings/CryptKeeper$ValidationTask;-><init>(Lcom/android/exsettings/CryptKeeper;Lcom/android/exsettings/CryptKeeper$ValidationTask;)V

    check-cast v1, [Ljava/lang/Void;

    invoke-virtual {v2, v1}, Lcom/android/exsettings/CryptKeeper$ValidationTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 567
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/exsettings/CryptKeeper;->mValidationRequested:Z

    goto :goto_0
.end method

.method private showFactoryReset(ZZ)V
    .locals 7
    .param p1, "corrupt"    # Z
    .param p2, "mdtp_activated"    # Z

    .prologue
    const v6, 0x7f130080

    const v5, 0x7f13000b

    const/4 v4, 0x0

    .line 641
    const v2, 0x7f130081

    invoke-virtual {p0, v2}, Lcom/android/exsettings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 644
    const v2, 0x7f130082

    invoke-virtual {p0, v2}, Lcom/android/exsettings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 645
    .local v0, "button":Landroid/widget/Button;
    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 646
    new-instance v2, Lcom/android/exsettings/CryptKeeper$6;

    invoke-direct {v2, p0, p2, p1}, Lcom/android/exsettings/CryptKeeper$6;-><init>(Lcom/android/exsettings/CryptKeeper;ZZ)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 671
    if-eqz p1, :cond_1

    .line 672
    invoke-virtual {p0, v5}, Lcom/android/exsettings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0c065f

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 673
    invoke-virtual {p0, v6}, Lcom/android/exsettings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0c0660

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 679
    :goto_0
    const v2, 0x7f130083

    invoke-virtual {p0, v2}, Lcom/android/exsettings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 681
    .local v1, "view":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 682
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 639
    :cond_0
    return-void

    .line 675
    .end local v1    # "view":Landroid/view/View;
    :cond_1
    invoke-virtual {p0, v5}, Lcom/android/exsettings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0c065d

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 676
    invoke-virtual {p0, v6}, Lcom/android/exsettings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0c065e

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method private takeEmergencyCallAction()V
    .locals 2

    .prologue
    .line 1031
    invoke-direct {p0}, Lcom/android/exsettings/CryptKeeper;->getTelecomManager()Landroid/telecom/TelecomManager;

    move-result-object v0

    .line 1032
    .local v0, "telecomManager":Landroid/telecom/TelecomManager;
    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->isInCall()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1033
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/telecom/TelecomManager;->showInCallScreen(Z)V

    .line 1030
    :goto_0
    return-void

    .line 1035
    :cond_0
    invoke-direct {p0}, Lcom/android/exsettings/CryptKeeper;->launchEmergencyDialer()V

    goto :goto_0
.end method

.method private updateEmergencyCallButtonState()V
    .locals 3

    .prologue
    .line 997
    const v2, 0x7f130077

    invoke-virtual {p0, v2}, Lcom/android/exsettings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 999
    .local v0, "emergencyCall":Landroid/widget/Button;
    if-nez v0, :cond_0

    .line 1000
    return-void

    .line 1002
    :cond_0
    invoke-direct {p0}, Lcom/android/exsettings/CryptKeeper;->isEmergencyCallCapable()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1003
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 1004
    new-instance v2, Lcom/android/exsettings/CryptKeeper$9;

    invoke-direct {v2, p0}, Lcom/android/exsettings/CryptKeeper$9;-><init>(Lcom/android/exsettings/CryptKeeper;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1017
    invoke-direct {p0}, Lcom/android/exsettings/CryptKeeper;->getTelecomManager()Landroid/telecom/TelecomManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telecom/TelecomManager;->isInCall()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1019
    const v1, 0x7f0c0d38

    .line 1023
    .local v1, "textId":I
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 996
    return-void

    .line 1012
    .end local v1    # "textId":I
    :cond_1
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 1013
    return-void

    .line 1021
    :cond_2
    const v1, 0x7f0c0d37

    .restart local v1    # "textId":I
    goto :goto_0
.end method

.method private updateProgress()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 687
    const-string/jumbo v7, "vold.encrypt_progress"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 689
    .local v3, "state":Ljava/lang/String;
    const-string/jumbo v7, "error_partially_encrypted"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 690
    invoke-direct {p0, v10, v10}, Lcom/android/exsettings/CryptKeeper;->showFactoryReset(ZZ)V

    .line 691
    return-void

    .line 695
    :cond_0
    const v7, 0x7f0c0658

    invoke-virtual {p0, v7}, Lcom/android/exsettings/CryptKeeper;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    .line 696
    .local v4, "status":Ljava/lang/CharSequence;
    const/4 v1, 0x0

    .line 699
    .local v1, "percent":I
    :try_start_0
    invoke-direct {p0}, Lcom/android/exsettings/CryptKeeper;->isDebugView()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    if-eqz v7, :cond_3

    const/16 v1, 0x32

    .line 703
    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 706
    .local v2, "progress":Ljava/lang/String;
    const-string/jumbo v7, "CryptKeeper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Encryption progress: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    :try_start_1
    const-string/jumbo v7, "vold.encrypt_time_remaining"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 709
    .local v6, "timeProperty":Ljava/lang/String;
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 710
    .local v5, "time":I
    if-ltz v5, :cond_1

    .line 712
    add-int/lit8 v7, v5, 0x9

    div-int/lit8 v7, v7, 0xa

    mul-int/lit8 v5, v7, 0xa

    .line 713
    int-to-long v8, v5

    invoke-static {v8, v9}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v2

    .line 714
    const v7, 0x7f0c0659

    invoke-virtual {p0, v7}, Lcom/android/exsettings/CryptKeeper;->getText(I)Ljava/lang/CharSequence;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v4

    .line 720
    .end local v5    # "time":I
    .end local v6    # "timeProperty":Ljava/lang/String;
    :cond_1
    :goto_1
    iget-object v7, p0, Lcom/android/exsettings/CryptKeeper;->mStatusText:Landroid/widget/TextView;

    if-eqz v7, :cond_2

    .line 721
    iget-object v7, p0, Lcom/android/exsettings/CryptKeeper;->mStatusText:Landroid/widget/TextView;

    new-array v8, v11, [Ljava/lang/CharSequence;

    aput-object v2, v8, v10

    invoke-static {v4, v8}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 725
    :cond_2
    iget-object v7, p0, Lcom/android/exsettings/CryptKeeper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7, v11}, Landroid/os/Handler;->removeMessages(I)V

    .line 726
    iget-object v7, p0, Lcom/android/exsettings/CryptKeeper;->mHandler:Landroid/os/Handler;

    const-wide/16 v8, 0x3e8

    invoke-virtual {v7, v11, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 686
    return-void

    .line 699
    .end local v2    # "progress":Ljava/lang/String;
    :cond_3
    :try_start_2
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result v1

    goto :goto_0

    .line 700
    :catch_0
    move-exception v0

    .line 701
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v7, "CryptKeeper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Error parsing progress: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 716
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "progress":Ljava/lang/String;
    :catch_1
    move-exception v0

    .restart local v0    # "e":Ljava/lang/Exception;
    goto :goto_1
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 1087
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 1077
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 427
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const v2, 0x7f0c0ca1

    .line 1100
    iget-object v1, p0, Lcom/android/exsettings/CryptKeeper;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/exsettings/CryptKeeper;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternView;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1104
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1107
    :pswitch_0
    const/4 v0, 0x3

    .line 1119
    .local v0, "size":B
    :goto_0
    const v1, 0x7f040035

    invoke-virtual {p0, v1}, Lcom/android/exsettings/CryptKeeper;->setContentView(I)V

    .line 1120
    invoke-direct {p0}, Lcom/android/exsettings/CryptKeeper;->passwordEntryInit()V

    .line 1122
    iget-object v1, p0, Lcom/android/exsettings/CryptKeeper;->mStatusText:Landroid/widget/TextView;

    iput v2, p0, Lcom/android/exsettings/CryptKeeper;->mStatusString:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 1123
    iget-object v1, p0, Lcom/android/exsettings/CryptKeeper;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/LockPatternView;->setLockPatternSize(B)V

    .line 1124
    iget-object v1, p0, Lcom/android/exsettings/CryptKeeper;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternView;->postInvalidate()V

    .line 1099
    return-void

    .line 1101
    .end local v0    # "size":B
    :cond_0
    return-void

    .line 1110
    :pswitch_1
    const/4 v0, 0x4

    .line 1111
    .restart local v0    # "size":B
    goto :goto_0

    .line 1113
    .end local v0    # "size":B
    :pswitch_2
    const/4 v0, 0x5

    .line 1114
    .restart local v0    # "size":B
    goto :goto_0

    .line 1116
    .end local v0    # "size":B
    :pswitch_3
    const/4 v0, 0x6

    .line 1117
    .restart local v0    # "size":B
    goto :goto_0

    .line 1104
    nop

    :pswitch_data_0
    .packed-switch 0x7f13007a
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 432
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 434
    invoke-virtual {p0}, Lcom/android/exsettings/CryptKeeper;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    .line 435
    const/16 v5, 0xd06

    .line 434
    invoke-virtual {v4, v5}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 442
    const-string/jumbo v4, "vold.decrypt"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 443
    .local v3, "state":Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/exsettings/CryptKeeper;->isDebugView()Z

    move-result v4

    if-nez v4, :cond_1

    const-string/jumbo v4, ""

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string/jumbo v4, "trigger_restart_framework"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 444
    :cond_0
    invoke-static {p0}, Lcom/android/exsettings/CryptKeeper;->disableCryptKeeperComponent(Landroid/content/Context;)V

    .line 452
    invoke-virtual {p0}, Lcom/android/exsettings/CryptKeeper;->finish()V

    .line 453
    return-void

    .line 457
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/android/exsettings/CryptKeeper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f10000c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 458
    const/4 v4, -0x1

    invoke-virtual {p0, v4}, Lcom/android/exsettings/CryptKeeper;->setRequestedOrientation(I)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 465
    :cond_2
    :goto_0
    const-string/jumbo v4, "statusbar"

    invoke-virtual {p0, v4}, Lcom/android/exsettings/CryptKeeper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/StatusBarManager;

    iput-object v4, p0, Lcom/android/exsettings/CryptKeeper;->mStatusBar:Landroid/app/StatusBarManager;

    .line 466
    iget-object v4, p0, Lcom/android/exsettings/CryptKeeper;->mStatusBar:Landroid/app/StatusBarManager;

    const/high16 v5, 0x3370000

    invoke-virtual {v4, v5}, Landroid/app/StatusBarManager;->disable(I)V

    .line 468
    invoke-direct {p0}, Lcom/android/exsettings/CryptKeeper;->setAirplaneModeIfNecessary()V

    .line 469
    const-string/jumbo v4, "audio"

    invoke-virtual {p0, v4}, Lcom/android/exsettings/CryptKeeper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/AudioManager;

    iput-object v4, p0, Lcom/android/exsettings/CryptKeeper;->mAudioManager:Landroid/media/AudioManager;

    .line 471
    invoke-virtual {p0}, Lcom/android/exsettings/CryptKeeper;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v1

    .line 472
    .local v1, "lastInstance":Ljava/lang/Object;
    instance-of v4, v1, Lcom/android/exsettings/CryptKeeper$NonConfigurationInstanceState;

    if-eqz v4, :cond_3

    move-object v2, v1

    .line 473
    check-cast v2, Lcom/android/exsettings/CryptKeeper$NonConfigurationInstanceState;

    .line 474
    .local v2, "retained":Lcom/android/exsettings/CryptKeeper$NonConfigurationInstanceState;
    iget-object v4, v2, Lcom/android/exsettings/CryptKeeper$NonConfigurationInstanceState;->wakelock:Landroid/os/PowerManager$WakeLock;

    iput-object v4, p0, Lcom/android/exsettings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 475
    const-string/jumbo v4, "CryptKeeper"

    const-string/jumbo v5, "Restoring wakelock from NonConfigurationInstanceState"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    .end local v2    # "retained":Lcom/android/exsettings/CryptKeeper$NonConfigurationInstanceState;
    :cond_3
    return-void

    .line 460
    .end local v1    # "lastInstance":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    goto :goto_0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 593
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 595
    iget-object v0, p0, Lcom/android/exsettings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 596
    const-string/jumbo v0, "CryptKeeper"

    const-string/jumbo v1, "Releasing and destroying wakelock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    iget-object v0, p0, Lcom/android/exsettings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 598
    iput-object v2, p0, Lcom/android/exsettings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 592
    :cond_0
    return-void
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 6
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 935
    if-eqz p2, :cond_0

    const/4 v1, 0x6

    if-ne p2, v1, :cond_3

    .line 937
    :cond_0
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 939
    .local v0, "password":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 940
    return v4

    .line 944
    :cond_1
    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 948
    iget-object v1, p0, Lcom/android/exsettings/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 949
    invoke-direct {p0, v3}, Lcom/android/exsettings/CryptKeeper;->setBackFunctionality(Z)V

    .line 951
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x4

    if-lt v1, v2, :cond_2

    .line 952
    new-instance v1, Lcom/android/exsettings/CryptKeeper$DecryptTask;

    invoke-direct {v1, p0, v5}, Lcom/android/exsettings/CryptKeeper$DecryptTask;-><init>(Lcom/android/exsettings/CryptKeeper;Lcom/android/exsettings/CryptKeeper$DecryptTask;)V

    new-array v2, v4, [Ljava/lang/String;

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/android/exsettings/CryptKeeper$DecryptTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 958
    :goto_0
    return v4

    .line 955
    :cond_2
    iget-object v1, p0, Lcom/android/exsettings/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;

    invoke-direct {p0, v1}, Lcom/android/exsettings/CryptKeeper;->fakeUnlockAttempt(Landroid/view/View;)V

    goto :goto_0

    .line 960
    .end local v0    # "password":Ljava/lang/String;
    :cond_3
    return v3
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1065
    invoke-direct {p0}, Lcom/android/exsettings/CryptKeeper;->delayAudioNotification()V

    .line 1066
    const/4 v0, 0x0

    return v0
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 585
    new-instance v0, Lcom/android/exsettings/CryptKeeper$NonConfigurationInstanceState;

    iget-object v1, p0, Lcom/android/exsettings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, v1}, Lcom/android/exsettings/CryptKeeper$NonConfigurationInstanceState;-><init>(Landroid/os/PowerManager$WakeLock;)V

    .line 586
    .local v0, "state":Lcom/android/exsettings/CryptKeeper$NonConfigurationInstanceState;
    const-string/jumbo v1, "CryptKeeper"

    const-string/jumbo v2, "Handing wakelock off to NonConfigurationInstanceState"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/exsettings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 588
    return-object v0
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 486
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 487
    invoke-direct {p0}, Lcom/android/exsettings/CryptKeeper;->setupUi()V

    .line 485
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 573
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 574
    iget-object v0, p0, Lcom/android/exsettings/CryptKeeper;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 575
    iget-object v0, p0, Lcom/android/exsettings/CryptKeeper;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 572
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 1082
    invoke-direct {p0}, Lcom/android/exsettings/CryptKeeper;->delayAudioNotification()V

    .line 1081
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1071
    invoke-direct {p0}, Lcom/android/exsettings/CryptKeeper;->delayAudioNotification()V

    .line 1072
    const/4 v0, 0x0

    return v0
.end method

.method public setContentView(I)V
    .locals 1
    .param p1, "layoutResID"    # I

    .prologue
    .line 604
    invoke-super {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    .line 605
    const v0, 0x7f130080

    invoke-virtual {p0, v0}, Lcom/android/exsettings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/exsettings/CryptKeeper;->mStatusText:Landroid/widget/TextView;

    .line 603
    return-void
.end method
