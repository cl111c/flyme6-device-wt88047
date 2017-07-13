.class Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment$ViewHolder;
.super Ljava/lang/Object;
.source "ExpandedDesktopPreferenceFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ViewHolder"
.end annotation


# instance fields
.field private icon:Landroid/widget/ImageView;

.field private mode:Landroid/widget/Spinner;

.field private rootView:Landroid/view/View;

.field private stateIcon:Landroid/widget/ImageView;

.field private title:Landroid/widget/TextView;


# direct methods
.method static synthetic -get0(Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment$ViewHolder;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment$ViewHolder;->icon:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment$ViewHolder;)Landroid/widget/Spinner;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment$ViewHolder;->mode:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment$ViewHolder;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment$ViewHolder;->rootView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment$ViewHolder;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment$ViewHolder;->stateIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment$ViewHolder;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment$ViewHolder;->title:Landroid/widget/TextView;

    return-object v0
.end method

.method private constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 514
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 515
    const v0, 0x7f130020

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment$ViewHolder;->title:Landroid/widget/TextView;

    .line 516
    const v0, 0x7f130110

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment$ViewHolder;->mode:Landroid/widget/Spinner;

    .line 517
    const v0, 0x7f13001f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 518
    const v0, 0x7f130111

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment$ViewHolder;->stateIcon:Landroid/widget/ImageView;

    .line 519
    iput-object p1, p0, Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment$ViewHolder;->rootView:Landroid/view/View;

    .line 521
    invoke-virtual {p1, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 514
    return-void
.end method

.method synthetic constructor <init>(Landroid/view/View;Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment$ViewHolder;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/exsettings/applications/ExpandedDesktopPreferenceFragment$ViewHolder;-><init>(Landroid/view/View;)V

    return-void
.end method
