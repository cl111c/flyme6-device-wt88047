.class public Lcom/android/exsettings/SetFullBackupPassword;
.super Landroid/app/Activity;
.source "SetFullBackupPassword.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exsettings/SetFullBackupPassword$1;
    }
.end annotation


# instance fields
.field mBackupManager:Landroid/app/backup/IBackupManager;

.field mButtonListener:Landroid/view/View$OnClickListener;

.field mCancel:Landroid/widget/Button;

.field mConfirmNewPw:Landroid/widget/TextView;

.field mCurrentPw:Landroid/widget/TextView;

.field mNewPw:Landroid/widget/TextView;

.field mSet:Landroid/widget/Button;


# direct methods
.method static synthetic -wrap0(Lcom/android/exsettings/SetFullBackupPassword;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "currentPw"    # Ljava/lang/String;
    .param p2, "newPw"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/exsettings/SetFullBackupPassword;->setBackupPassword(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 38
    new-instance v0, Lcom/android/exsettings/SetFullBackupPassword$1;

    invoke-direct {v0, p0}, Lcom/android/exsettings/SetFullBackupPassword$1;-><init>(Lcom/android/exsettings/SetFullBackupPassword;)V

    iput-object v0, p0, Lcom/android/exsettings/SetFullBackupPassword;->mButtonListener:Landroid/view/View$OnClickListener;

    .line 31
    return-void
.end method

.method private setBackupPassword(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "currentPw"    # Ljava/lang/String;
    .param p2, "newPw"    # Ljava/lang/String;

    .prologue
    .line 100
    :try_start_0
    iget-object v1, p0, Lcom/android/exsettings/SetFullBackupPassword;->mBackupManager:Landroid/app/backup/IBackupManager;

    invoke-interface {v1, p1, p2}, Landroid/app/backup/IBackupManager;->setBackupPassword(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 101
    :catch_0
    move-exception v0

    .line 102
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "SetFullBackupPassword"

    const-string/jumbo v2, "Unable to communicate with backup manager"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    const/4 v1, 0x0

    return v1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 81
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 83
    const-string/jumbo v0, "backup"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/SetFullBackupPassword;->mBackupManager:Landroid/app/backup/IBackupManager;

    .line 85
    const v0, 0x7f040102

    invoke-virtual {p0, v0}, Lcom/android/exsettings/SetFullBackupPassword;->setContentView(I)V

    .line 87
    const v0, 0x7f130217

    invoke-virtual {p0, v0}, Lcom/android/exsettings/SetFullBackupPassword;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/exsettings/SetFullBackupPassword;->mCurrentPw:Landroid/widget/TextView;

    .line 88
    const v0, 0x7f130219

    invoke-virtual {p0, v0}, Lcom/android/exsettings/SetFullBackupPassword;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/exsettings/SetFullBackupPassword;->mNewPw:Landroid/widget/TextView;

    .line 89
    const v0, 0x7f13021b

    invoke-virtual {p0, v0}, Lcom/android/exsettings/SetFullBackupPassword;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/exsettings/SetFullBackupPassword;->mConfirmNewPw:Landroid/widget/TextView;

    .line 91
    const v0, 0x7f13021c

    invoke-virtual {p0, v0}, Lcom/android/exsettings/SetFullBackupPassword;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/exsettings/SetFullBackupPassword;->mCancel:Landroid/widget/Button;

    .line 92
    const v0, 0x7f13021d

    invoke-virtual {p0, v0}, Lcom/android/exsettings/SetFullBackupPassword;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/exsettings/SetFullBackupPassword;->mSet:Landroid/widget/Button;

    .line 94
    iget-object v0, p0, Lcom/android/exsettings/SetFullBackupPassword;->mCancel:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/exsettings/SetFullBackupPassword;->mButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    iget-object v0, p0, Lcom/android/exsettings/SetFullBackupPassword;->mSet:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/exsettings/SetFullBackupPassword;->mButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    return-void
.end method
