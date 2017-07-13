.class public Lcom/android/exsettings/deviceinfo/PrivateVolumeForget;
.super Lcom/android/exsettings/InstrumentedFragment;
.source "PrivateVolumeForget.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exsettings/deviceinfo/PrivateVolumeForget$ForgetConfirmFragment;,
        Lcom/android/exsettings/deviceinfo/PrivateVolumeForget$1;
    }
.end annotation


# instance fields
.field private final mConfirmListener:Landroid/view/View$OnClickListener;

.field private mRecord:Landroid/os/storage/VolumeRecord;


# direct methods
.method static synthetic -get0(Lcom/android/exsettings/deviceinfo/PrivateVolumeForget;)Landroid/os/storage/VolumeRecord;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/deviceinfo/PrivateVolumeForget;->mRecord:Landroid/os/storage/VolumeRecord;

    return-object v0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/exsettings/InstrumentedFragment;-><init>()V

    .line 68
    new-instance v0, Lcom/android/exsettings/deviceinfo/PrivateVolumeForget$1;

    invoke-direct {v0, p0}, Lcom/android/exsettings/deviceinfo/PrivateVolumeForget$1;-><init>(Lcom/android/exsettings/deviceinfo/PrivateVolumeForget;)V

    iput-object v0, p0, Lcom/android/exsettings/deviceinfo/PrivateVolumeForget;->mConfirmListener:Landroid/view/View$OnClickListener;

    .line 40
    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 47
    const/16 v0, 0x2a

    return v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 9
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x0

    .line 53
    invoke-virtual {p0}, Lcom/android/exsettings/deviceinfo/PrivateVolumeForget;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-class v6, Landroid/os/storage/StorageManager;

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/storage/StorageManager;

    .line 54
    .local v3, "storage":Landroid/os/storage/StorageManager;
    invoke-virtual {p0}, Lcom/android/exsettings/deviceinfo/PrivateVolumeForget;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    const-string/jumbo v6, "android.os.storage.extra.FS_UUID"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 55
    .local v2, "fsUuid":Ljava/lang/String;
    invoke-virtual {v3, v2}, Landroid/os/storage/StorageManager;->findRecordByUuid(Ljava/lang/String;)Landroid/os/storage/VolumeRecord;

    move-result-object v5

    iput-object v5, p0, Lcom/android/exsettings/deviceinfo/PrivateVolumeForget;->mRecord:Landroid/os/storage/VolumeRecord;

    .line 57
    const v5, 0x7f040116

    invoke-virtual {p1, v5, p2, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 58
    .local v4, "view":Landroid/view/View;
    const v5, 0x7f130229

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 59
    .local v0, "body":Landroid/widget/TextView;
    const v5, 0x7f13022a

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 61
    .local v1, "confirm":Landroid/widget/Button;
    const v5, 0x7f0c08a9

    invoke-virtual {p0, v5}, Lcom/android/exsettings/deviceinfo/PrivateVolumeForget;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/CharSequence;

    .line 62
    iget-object v7, p0, Lcom/android/exsettings/deviceinfo/PrivateVolumeForget;->mRecord:Landroid/os/storage/VolumeRecord;

    invoke-virtual {v7}, Landroid/os/storage/VolumeRecord;->getNickname()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    .line 61
    invoke-static {v5, v6}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    iget-object v5, p0, Lcom/android/exsettings/deviceinfo/PrivateVolumeForget;->mConfirmListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    return-object v4
.end method
