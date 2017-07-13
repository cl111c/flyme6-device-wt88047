.class Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment$ModeAdapter;
.super Landroid/widget/BaseAdapter;
.source "ExpandedDesktopPreferenceFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ModeAdapter"
.end annotation


# instance fields
.field private hasNavigationBar:Z

.field private final inflater:Landroid/view/LayoutInflater;

.field private final items:[I


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 532
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 528
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment$ModeAdapter;->hasNavigationBar:Z

    .line 529
    const v1, 0x7f0c02e3

    const v2, 0x7f0c02e4

    .line 530
    const v3, 0x7f0c02e5

    const v4, 0x7f0c02e6

    .line 529
    filled-new-array {v1, v2, v3, v4}, [I

    move-result-object v1

    iput-object v1, p0, Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment$ModeAdapter;->items:[I

    .line 533
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment$ModeAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 536
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/IWindowManager;->hasNavigationBar()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment$ModeAdapter;->hasNavigationBar:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 532
    :goto_0
    return-void

    .line 537
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment$ModeAdapter;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment$ModeAdapter;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 544
    iget-boolean v0, p0, Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment$ModeAdapter;->hasNavigationBar:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 549
    iget-object v0, p0, Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment$ModeAdapter;->items:[I

    aget v0, v0, p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 554
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 560
    if-eqz p2, :cond_0

    move-object v0, p2

    .line 561
    check-cast v0, Landroid/widget/TextView;

    .line 567
    .local v0, "view":Landroid/widget/TextView;
    :goto_0
    iget-object v1, p0, Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment$ModeAdapter;->items:[I

    aget v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 569
    return-object v0

    .line 563
    .end local v0    # "view":Landroid/widget/TextView;
    :cond_0
    iget-object v1, p0, Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment$ModeAdapter;->inflater:Landroid/view/LayoutInflater;

    const v2, 0x1090009

    .line 564
    const/4 v3, 0x0

    .line 563
    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .restart local v0    # "view":Landroid/widget/TextView;
    goto :goto_0
.end method
