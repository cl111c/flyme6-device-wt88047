.class public Lcom/android/setupwizardlib/SetupWizardLayout$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "SetupWizardLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/setupwizardlib/SetupWizardLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "SavedState"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/setupwizardlib/SetupWizardLayout$SavedState$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/setupwizardlib/SetupWizardLayout$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field isProgressBarShown:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 498
    new-instance v0, Lcom/android/setupwizardlib/SetupWizardLayout$SavedState$1;

    invoke-direct {v0}, Lcom/android/setupwizardlib/SetupWizardLayout$SavedState$1;-><init>()V

    .line 497
    sput-object v0, Lcom/android/setupwizardlib/SetupWizardLayout$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 478
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    const/4 v0, 0x0

    .line 487
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 480
    iput-boolean v0, p0, Lcom/android/setupwizardlib/SetupWizardLayout$SavedState;->isProgressBarShown:Z

    .line 488
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/android/setupwizardlib/SetupWizardLayout$SavedState;->isProgressBarShown:Z

    .line 486
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .locals 1
    .param p1, "parcelable"    # Landroid/os/Parcelable;

    .prologue
    .line 483
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 480
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/setupwizardlib/SetupWizardLayout$SavedState;->isProgressBarShown:Z

    .line 482
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 493
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 494
    iget-boolean v0, p0, Lcom/android/setupwizardlib/SetupWizardLayout$SavedState;->isProgressBarShown:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 492
    return-void

    .line 494
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
