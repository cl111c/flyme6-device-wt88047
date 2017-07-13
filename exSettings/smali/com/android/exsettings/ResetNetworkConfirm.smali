.class public Lcom/android/exsettings/ResetNetworkConfirm;
.super Lcom/android/exsettings/InstrumentedFragment;
.source "ResetNetworkConfirm.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exsettings/ResetNetworkConfirm$1;
    }
.end annotation


# instance fields
.field private mContentView:Landroid/view/View;

.field private mFinalClickListener:Landroid/view/View$OnClickListener;

.field private mSubId:I


# direct methods
.method static synthetic -get0(Lcom/android/exsettings/ResetNetworkConfirm;)I
    .locals 1

    iget v0, p0, Lcom/android/exsettings/ResetNetworkConfirm;->mSubId:I

    return v0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/exsettings/InstrumentedFragment;-><init>()V

    .line 57
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/exsettings/ResetNetworkConfirm;->mSubId:I

    .line 63
    new-instance v0, Lcom/android/exsettings/ResetNetworkConfirm$1;

    invoke-direct {v0, p0}, Lcom/android/exsettings/ResetNetworkConfirm$1;-><init>(Lcom/android/exsettings/ResetNetworkConfirm;)V

    iput-object v0, p0, Lcom/android/exsettings/ResetNetworkConfirm;->mFinalClickListener:Landroid/view/View$OnClickListener;

    .line 54
    return-void
.end method

.method private establishFinalConfirmationState()V
    .locals 2

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/exsettings/ResetNetworkConfirm;->mContentView:Landroid/view/View;

    const v1, 0x7f1301fe

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 116
    iget-object v1, p0, Lcom/android/exsettings/ResetNetworkConfirm;->mFinalClickListener:Landroid/view/View$OnClickListener;

    .line 115
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 144
    const/16 v0, 0x54

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 133
    invoke-super {p0, p1}, Lcom/android/exsettings/InstrumentedFragment;->onCreate(Landroid/os/Bundle;)V

    .line 135
    invoke-virtual {p0}, Lcom/android/exsettings/ResetNetworkConfirm;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 136
    .local v0, "args":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 137
    const-string/jumbo v1, "subscription"

    .line 138
    const/4 v2, -0x1

    .line 137
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/exsettings/ResetNetworkConfirm;->mSubId:I

    .line 132
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 122
    invoke-virtual {p0}, Lcom/android/exsettings/ResetNetworkConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    .line 123
    const-string/jumbo v1, "no_network_reset"

    .line 122
    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    const v0, 0x7f04009d

    invoke-virtual {p1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0

    .line 126
    :cond_0
    const v0, 0x7f0400f2

    invoke-virtual {p1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/ResetNetworkConfirm;->mContentView:Landroid/view/View;

    .line 127
    invoke-direct {p0}, Lcom/android/exsettings/ResetNetworkConfirm;->establishFinalConfirmationState()V

    .line 128
    iget-object v0, p0, Lcom/android/exsettings/ResetNetworkConfirm;->mContentView:Landroid/view/View;

    return-object v0
.end method
