.class final Lcom/android/exsettings/accessibility/ListDialogPreference$SavedState$1;
.super Ljava/lang/Object;
.source "ListDialogPreference.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/accessibility/ListDialogPreference$SavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/android/exsettings/accessibility/ListDialogPreference$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 312
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/exsettings/accessibility/ListDialogPreference$SavedState;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 315
    new-instance v0, Lcom/android/exsettings/accessibility/ListDialogPreference$SavedState;

    invoke-direct {v0, p1}, Lcom/android/exsettings/accessibility/ListDialogPreference$SavedState;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 314
    invoke-virtual {p0, p1}, Lcom/android/exsettings/accessibility/ListDialogPreference$SavedState$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/exsettings/accessibility/ListDialogPreference$SavedState;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/android/exsettings/accessibility/ListDialogPreference$SavedState;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 320
    new-array v0, p1, [Lcom/android/exsettings/accessibility/ListDialogPreference$SavedState;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 319
    invoke-virtual {p0, p1}, Lcom/android/exsettings/accessibility/ListDialogPreference$SavedState$1;->newArray(I)[Lcom/android/exsettings/accessibility/ListDialogPreference$SavedState;

    move-result-object v0

    return-object v0
.end method
