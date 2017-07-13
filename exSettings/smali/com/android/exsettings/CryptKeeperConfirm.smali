.class public Lcom/android/exsettings/CryptKeeperConfirm;
.super Lcom/android/exsettings/InstrumentedFragment;
.source "CryptKeeperConfirm.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exsettings/CryptKeeperConfirm$Blank;,
        Lcom/android/exsettings/CryptKeeperConfirm$1;
    }
.end annotation


# instance fields
.field private mContentView:Landroid/view/View;

.field private mFinalButton:Landroid/widget/Button;

.field private mFinalClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/exsettings/InstrumentedFragment;-><init>()V

    .line 100
    new-instance v0, Lcom/android/exsettings/CryptKeeperConfirm$1;

    invoke-direct {v0, p0}, Lcom/android/exsettings/CryptKeeperConfirm$1;-><init>(Lcom/android/exsettings/CryptKeeperConfirm;)V

    iput-object v0, p0, Lcom/android/exsettings/CryptKeeperConfirm;->mFinalClickListener:Landroid/view/View$OnClickListener;

    .line 42
    return-void
.end method

.method private establishFinalConfirmationState()V
    .locals 2

    .prologue
    .line 152
    iget-object v0, p0, Lcom/android/exsettings/CryptKeeperConfirm;->mContentView:Landroid/view/View;

    const v1, 0x7f130076

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/exsettings/CryptKeeperConfirm;->mFinalButton:Landroid/widget/Button;

    .line 153
    iget-object v0, p0, Lcom/android/exsettings/CryptKeeperConfirm;->mFinalButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/exsettings/CryptKeeperConfirm;->mFinalClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 48
    const/16 v0, 0x21

    return v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 159
    const v0, 0x7f040031

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/CryptKeeperConfirm;->mContentView:Landroid/view/View;

    .line 160
    invoke-direct {p0}, Lcom/android/exsettings/CryptKeeperConfirm;->establishFinalConfirmationState()V

    .line 161
    iget-object v0, p0, Lcom/android/exsettings/CryptKeeperConfirm;->mContentView:Landroid/view/View;

    return-object v0
.end method
