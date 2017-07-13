.class public Lcom/android/exsettings/BandMode;
.super Landroid/app/Activity;
.source "BandMode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exsettings/BandMode$BandListItem;,
        Lcom/android/exsettings/BandMode$1;,
        Lcom/android/exsettings/BandMode$2;
    }
.end annotation


# static fields
.field private static final BAND_NAMES:[Ljava/lang/String;


# instance fields
.field private mBandList:Landroid/widget/ListView;

.field private mBandListAdapter:Landroid/widget/ArrayAdapter;

.field private mBandSelectionHandler:Landroid/widget/AdapterView$OnItemClickListener;

.field private mHandler:Landroid/os/Handler;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mProgressPanel:Landroid/content/DialogInterface;

.field private mTargetBand:Lcom/android/exsettings/BandMode$BandListItem;


# direct methods
.method static synthetic -get0()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/exsettings/BandMode;->BAND_NAMES:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/exsettings/BandMode;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/BandMode;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/exsettings/BandMode;)Lcom/android/internal/telephony/Phone;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/BandMode;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/exsettings/BandMode;)Lcom/android/exsettings/BandMode$BandListItem;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/BandMode;->mTargetBand:Lcom/android/exsettings/BandMode$BandListItem;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/exsettings/BandMode;Lcom/android/exsettings/BandMode$BandListItem;)Lcom/android/exsettings/BandMode$BandListItem;
    .locals 0

    iput-object p1, p0, Lcom/android/exsettings/BandMode;->mTargetBand:Lcom/android/exsettings/BandMode$BandListItem;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/exsettings/BandMode;Landroid/os/AsyncResult;)V
    .locals 0
    .param p1, "result"    # Landroid/os/AsyncResult;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/exsettings/BandMode;->bandListLoaded(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/exsettings/BandMode;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/exsettings/BandMode;->displayBandSelectionResult(Ljava/lang/Throwable;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 40
    const/16 v0, 0x13

    new-array v0, v0, [Ljava/lang/String;

    .line 41
    const-string/jumbo v1, "Automatic"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 42
    const-string/jumbo v1, "EURO Band     (GSM-900/DCS-1800/WCDMA-IMT-2000)"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 43
    const-string/jumbo v1, "USA Band      (GSM-850/PCS-1900/WCDMA-850/WCDMA-PCS-1900)"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 44
    const-string/jumbo v1, "JAPAN Band    (WCDMA-800/WCDMA-IMT-2000)"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 45
    const-string/jumbo v1, "AUS Band      (GSM-900/DCS-1800/WCDMA-850/WCDMA-IMT-2000)"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 46
    const-string/jumbo v1, "AUS2 Band     (GSM-900/DCS-1800/WCDMA-850)"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 47
    const-string/jumbo v1, "Cellular      (800-MHz)"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 48
    const-string/jumbo v1, "PCS           (1900-MHz)"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 49
    const-string/jumbo v1, "Band Class 3  (JTACS Band)"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 50
    const-string/jumbo v1, "Band Class 4  (Korean PCS Band)"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 51
    const-string/jumbo v1, "Band Class 5  (450-MHz Band)"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 52
    const-string/jumbo v1, "Band Class 6  (2-GMHz IMT2000 Band)"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 53
    const-string/jumbo v1, "Band Class 7  (Upper 700-MHz Band)"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    .line 54
    const-string/jumbo v1, "Band Class 8  (1800-MHz Band)"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    .line 55
    const-string/jumbo v1, "Band Class 9  (900-MHz Band)"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    .line 56
    const-string/jumbo v1, "Band Class 10 (Secondary 800-MHz Band)"

    const/16 v2, 0xf

    aput-object v1, v0, v2

    .line 57
    const-string/jumbo v1, "Band Class 11 (400-MHz European PAMR Band)"

    const/16 v2, 0x10

    aput-object v1, v0, v2

    .line 58
    const-string/jumbo v1, "Band Class 15 (AWS Band)"

    const/16 v2, 0x11

    aput-object v1, v0, v2

    .line 59
    const-string/jumbo v1, "Band Class 16 (US 2.5-GHz Band)"

    const/16 v2, 0x12

    aput-object v1, v0, v2

    .line 40
    sput-object v0, Lcom/android/exsettings/BandMode;->BAND_NAMES:[Ljava/lang/String;

    .line 29
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 29
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 64
    iput-object v0, p0, Lcom/android/exsettings/BandMode;->mTargetBand:Lcom/android/exsettings/BandMode$BandListItem;

    .line 67
    iput-object v0, p0, Lcom/android/exsettings/BandMode;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 93
    new-instance v0, Lcom/android/exsettings/BandMode$1;

    invoke-direct {v0, p0}, Lcom/android/exsettings/BandMode$1;-><init>(Lcom/android/exsettings/BandMode;)V

    .line 92
    iput-object v0, p0, Lcom/android/exsettings/BandMode;->mBandSelectionHandler:Landroid/widget/AdapterView$OnItemClickListener;

    .line 205
    new-instance v0, Lcom/android/exsettings/BandMode$2;

    invoke-direct {v0, p0}, Lcom/android/exsettings/BandMode$2;-><init>(Lcom/android/exsettings/BandMode;)V

    iput-object v0, p0, Lcom/android/exsettings/BandMode;->mHandler:Landroid/os/Handler;

    .line 29
    return-void
.end method

.method private bandListLoaded(Landroid/os/AsyncResult;)V
    .locals 5
    .param p1, "result"    # Landroid/os/AsyncResult;

    .prologue
    .line 147
    iget-object v4, p0, Lcom/android/exsettings/BandMode;->mProgressPanel:Landroid/content/DialogInterface;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/exsettings/BandMode;->mProgressPanel:Landroid/content/DialogInterface;

    invoke-interface {v4}, Landroid/content/DialogInterface;->dismiss()V

    .line 149
    :cond_0
    invoke-direct {p0}, Lcom/android/exsettings/BandMode;->clearList()V

    .line 151
    const/4 v0, 0x0

    .line 154
    .local v0, "addBandSuccess":Z
    iget-object v4, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v4, :cond_2

    .line 155
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [I

    .line 157
    .local v1, "bands":[I
    new-instance v3, Lcom/android/exsettings/BandMode$BandListItem;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/android/exsettings/BandMode$BandListItem;-><init>(I)V

    .line 158
    .local v3, "item":Lcom/android/exsettings/BandMode$BandListItem;
    iget-object v4, p0, Lcom/android/exsettings/BandMode;->mBandListAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v4, v3}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 160
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v4, v1

    if-ge v2, v4, :cond_1

    .line 161
    new-instance v3, Lcom/android/exsettings/BandMode$BandListItem;

    .end local v3    # "item":Lcom/android/exsettings/BandMode$BandListItem;
    aget v4, v1, v2

    invoke-direct {v3, v4}, Lcom/android/exsettings/BandMode$BandListItem;-><init>(I)V

    .line 162
    .restart local v3    # "item":Lcom/android/exsettings/BandMode$BandListItem;
    iget-object v4, p0, Lcom/android/exsettings/BandMode;->mBandListAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v4, v3}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 160
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 165
    :cond_1
    const/4 v0, 0x1

    .line 168
    .end local v1    # "bands":[I
    .end local v2    # "i":I
    .end local v3    # "item":Lcom/android/exsettings/BandMode$BandListItem;
    :cond_2
    if-nez v0, :cond_3

    .line 170
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1
    sget-object v4, Lcom/android/exsettings/BandMode;->BAND_NAMES:[Ljava/lang/String;

    array-length v4, v4

    if-ge v2, v4, :cond_3

    .line 171
    new-instance v3, Lcom/android/exsettings/BandMode$BandListItem;

    invoke-direct {v3, v2}, Lcom/android/exsettings/BandMode$BandListItem;-><init>(I)V

    .line 172
    .restart local v3    # "item":Lcom/android/exsettings/BandMode$BandListItem;
    iget-object v4, p0, Lcom/android/exsettings/BandMode;->mBandListAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v4, v3}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 170
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 176
    .end local v2    # "i":I
    .end local v3    # "item":Lcom/android/exsettings/BandMode$BandListItem;
    :cond_3
    iget-object v4, p0, Lcom/android/exsettings/BandMode;->mBandList:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->requestFocus()Z

    .line 144
    return-void
.end method

.method private clearList()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 195
    :goto_0
    iget-object v0, p0, Lcom/android/exsettings/BandMode;->mBandListAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/android/exsettings/BandMode;->mBandListAdapter:Landroid/widget/ArrayAdapter;

    .line 197
    iget-object v1, p0, Lcom/android/exsettings/BandMode;->mBandListAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    .line 196
    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->remove(Ljava/lang/Object;)V

    goto :goto_0

    .line 194
    :cond_0
    return-void
.end method

.method private displayBandSelectionResult(Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    const/4 v3, 0x0

    .line 180
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0c05be

    invoke-virtual {p0, v2}, Lcom/android/exsettings/BandMode;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 181
    const-string/jumbo v2, " ["

    .line 180
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 181
    iget-object v2, p0, Lcom/android/exsettings/BandMode;->mTargetBand:Lcom/android/exsettings/BandMode$BandListItem;

    invoke-virtual {v2}, Lcom/android/exsettings/BandMode$BandListItem;->toString()Ljava/lang/String;

    move-result-object v2

    .line 180
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 181
    const-string/jumbo v2, "] "

    .line 180
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 183
    .local v0, "status":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 184
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f0c05bf

    invoke-virtual {p0, v2}, Lcom/android/exsettings/BandMode;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 189
    :goto_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 191
    const v2, 0x104000a

    .line 189
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/exsettings/BandMode;->mProgressPanel:Landroid/content/DialogInterface;

    .line 179
    return-void

    .line 186
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f0c05c0

    invoke-virtual {p0, v2}, Lcom/android/exsettings/BandMode;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private loadBandList()V
    .locals 4

    .prologue
    .line 129
    const v2, 0x7f0c05bd

    invoke-virtual {p0, v2}, Lcom/android/exsettings/BandMode;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 135
    .local v1, "str":Ljava/lang/String;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/exsettings/BandMode;->mProgressPanel:Landroid/content/DialogInterface;

    .line 139
    iget-object v2, p0, Lcom/android/exsettings/BandMode;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x64

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 140
    .local v0, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/exsettings/BandMode;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2, v0}, Lcom/android/internal/telephony/Phone;->queryAvailableBandMode(Landroid/os/Message;)V

    .line 128
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 71
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 73
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/android/exsettings/BandMode;->requestWindowFeature(I)Z

    .line 75
    const v0, 0x7f040017

    invoke-virtual {p0, v0}, Lcom/android/exsettings/BandMode;->setContentView(I)V

    .line 77
    const v0, 0x7f0c05bc

    invoke-virtual {p0, v0}, Lcom/android/exsettings/BandMode;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/exsettings/BandMode;->setTitle(Ljava/lang/CharSequence;)V

    .line 78
    invoke-virtual {p0}, Lcom/android/exsettings/BandMode;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, -0x1

    .line 79
    const/4 v2, -0x2

    .line 78
    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setLayout(II)V

    .line 81
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/BandMode;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 83
    const v0, 0x7f130033

    invoke-virtual {p0, v0}, Lcom/android/exsettings/BandMode;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/exsettings/BandMode;->mBandList:Landroid/widget/ListView;

    .line 84
    new-instance v0, Landroid/widget/ArrayAdapter;

    .line 85
    const v1, 0x1090003

    .line 84
    invoke-direct {v0, p0, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/exsettings/BandMode;->mBandListAdapter:Landroid/widget/ArrayAdapter;

    .line 86
    iget-object v0, p0, Lcom/android/exsettings/BandMode;->mBandList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/exsettings/BandMode;->mBandListAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 87
    iget-object v0, p0, Lcom/android/exsettings/BandMode;->mBandList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/exsettings/BandMode;->mBandSelectionHandler:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 89
    invoke-direct {p0}, Lcom/android/exsettings/BandMode;->loadBandList()V

    .line 70
    return-void
.end method
