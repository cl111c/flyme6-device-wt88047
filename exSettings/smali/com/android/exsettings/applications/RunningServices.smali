.class public Lcom/android/exsettings/applications/RunningServices;
.super Landroid/app/Fragment;
.source "RunningServices.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exsettings/applications/RunningServices$1;
    }
.end annotation


# instance fields
.field private mLoadingContainer:Landroid/view/View;

.field private mOptionsMenu:Landroid/view/Menu;

.field private final mRunningProcessesAvail:Ljava/lang/Runnable;

.field private mRunningProcessesView:Lcom/android/exsettings/applications/RunningProcessesView;


# direct methods
.method static synthetic -get0(Lcom/android/exsettings/applications/RunningServices;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/applications/RunningServices;->mLoadingContainer:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/exsettings/applications/RunningServices;)Lcom/android/exsettings/applications/RunningProcessesView;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/applications/RunningServices;->mRunningProcessesView:Lcom/android/exsettings/applications/RunningProcessesView;

    return-object v0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 108
    new-instance v0, Lcom/android/exsettings/applications/RunningServices$1;

    invoke-direct {v0, p0}, Lcom/android/exsettings/applications/RunningServices$1;-><init>(Lcom/android/exsettings/applications/RunningServices;)V

    iput-object v0, p0, Lcom/android/exsettings/applications/RunningServices;->mRunningProcessesAvail:Ljava/lang/Runnable;

    .line 30
    return-void
.end method

.method private updateOptionsMenu()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 103
    iget-object v2, p0, Lcom/android/exsettings/applications/RunningServices;->mRunningProcessesView:Lcom/android/exsettings/applications/RunningProcessesView;

    iget-object v2, v2, Lcom/android/exsettings/applications/RunningProcessesView;->mAdapter:Lcom/android/exsettings/applications/RunningProcessesView$ServiceListAdapter;

    invoke-virtual {v2}, Lcom/android/exsettings/applications/RunningProcessesView$ServiceListAdapter;->getShowBackground()Z

    move-result v0

    .line 104
    .local v0, "showingBackground":Z
    iget-object v2, p0, Lcom/android/exsettings/applications/RunningServices;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v2, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 105
    iget-object v2, p0, Lcom/android/exsettings/applications/RunningServices;->mOptionsMenu:Landroid/view/Menu;

    const/4 v3, 0x2

    invoke-interface {v2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    :cond_0
    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 102
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 41
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 43
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/exsettings/applications/RunningServices;->setHasOptionsMenu(Z)V

    .line 40
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 60
    iput-object p1, p0, Lcom/android/exsettings/applications/RunningServices;->mOptionsMenu:Landroid/view/Menu;

    .line 61
    const v0, 0x7f0c09ca

    invoke-interface {p1, v2, v1, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 63
    const v0, 0x7f0c09cb

    invoke-interface {p1, v2, v3, v3, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 65
    invoke-direct {p0}, Lcom/android/exsettings/applications/RunningServices;->updateOptionsMenu()V

    .line 59
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 49
    const v1, 0x7f040094

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 51
    .local v0, "rootView":Landroid/view/View;
    const v1, 0x7f13013b

    .line 50
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/exsettings/applications/RunningProcessesView;

    iput-object v1, p0, Lcom/android/exsettings/applications/RunningServices;->mRunningProcessesView:Lcom/android/exsettings/applications/RunningProcessesView;

    .line 52
    iget-object v1, p0, Lcom/android/exsettings/applications/RunningServices;->mRunningProcessesView:Lcom/android/exsettings/applications/RunningProcessesView;

    invoke-virtual {v1}, Lcom/android/exsettings/applications/RunningProcessesView;->doCreate()V

    .line 53
    const v1, 0x7f130138

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/exsettings/applications/RunningServices;->mLoadingContainer:Landroid/view/View;

    .line 55
    return-object v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 83
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 91
    return v1

    .line 85
    :pswitch_0
    iget-object v0, p0, Lcom/android/exsettings/applications/RunningServices;->mRunningProcessesView:Lcom/android/exsettings/applications/RunningProcessesView;

    iget-object v0, v0, Lcom/android/exsettings/applications/RunningProcessesView;->mAdapter:Lcom/android/exsettings/applications/RunningProcessesView$ServiceListAdapter;

    invoke-virtual {v0, v1}, Lcom/android/exsettings/applications/RunningProcessesView$ServiceListAdapter;->setShowBackground(Z)V

    .line 93
    :goto_0
    invoke-direct {p0}, Lcom/android/exsettings/applications/RunningServices;->updateOptionsMenu()V

    .line 94
    return v2

    .line 88
    :pswitch_1
    iget-object v0, p0, Lcom/android/exsettings/applications/RunningServices;->mRunningProcessesView:Lcom/android/exsettings/applications/RunningProcessesView;

    iget-object v0, v0, Lcom/android/exsettings/applications/RunningProcessesView;->mAdapter:Lcom/android/exsettings/applications/RunningProcessesView$ServiceListAdapter;

    invoke-virtual {v0, v2}, Lcom/android/exsettings/applications/RunningProcessesView$ServiceListAdapter;->setShowBackground(Z)V

    goto :goto_0

    .line 83
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 77
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 78
    iget-object v0, p0, Lcom/android/exsettings/applications/RunningServices;->mRunningProcessesView:Lcom/android/exsettings/applications/RunningProcessesView;

    invoke-virtual {v0}, Lcom/android/exsettings/applications/RunningProcessesView;->doPause()V

    .line 76
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 0
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/android/exsettings/applications/RunningServices;->updateOptionsMenu()V

    .line 98
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 70
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 71
    iget-object v1, p0, Lcom/android/exsettings/applications/RunningServices;->mRunningProcessesView:Lcom/android/exsettings/applications/RunningProcessesView;

    iget-object v2, p0, Lcom/android/exsettings/applications/RunningServices;->mRunningProcessesAvail:Ljava/lang/Runnable;

    invoke-virtual {v1, p0, v2}, Lcom/android/exsettings/applications/RunningProcessesView;->doResume(Landroid/app/Fragment;Ljava/lang/Runnable;)Z

    move-result v0

    .line 72
    .local v0, "haveData":Z
    iget-object v1, p0, Lcom/android/exsettings/applications/RunningServices;->mLoadingContainer:Landroid/view/View;

    iget-object v2, p0, Lcom/android/exsettings/applications/RunningServices;->mRunningProcessesView:Lcom/android/exsettings/applications/RunningProcessesView;

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3}, Lcom/android/exsettings/Utils;->handleLoadingContainer(Landroid/view/View;Landroid/view/View;ZZ)V

    .line 69
    return-void
.end method
