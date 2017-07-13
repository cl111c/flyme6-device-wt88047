.class Lcom/android/exsettings/livedisplay/PictureAdjustment$SavedState;
.super Landroid/preference/Preference$BaseSavedState;
.source "PictureAdjustment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/livedisplay/PictureAdjustment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SavedState"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exsettings/livedisplay/PictureAdjustment$SavedState$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/exsettings/livedisplay/PictureAdjustment$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field currentAdj:[F

.field originalAdj:[F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 196
    new-instance v0, Lcom/android/exsettings/livedisplay/PictureAdjustment$SavedState$1;

    invoke-direct {v0}, Lcom/android/exsettings/livedisplay/PictureAdjustment$SavedState$1;-><init>()V

    .line 195
    sput-object v0, Lcom/android/exsettings/livedisplay/PictureAdjustment$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 174
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 183
    invoke-direct {p0, p1}, Landroid/preference/Preference$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 184
    invoke-virtual {p1}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/livedisplay/PictureAdjustment$SavedState;->originalAdj:[F

    .line 185
    invoke-virtual {p1}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/livedisplay/PictureAdjustment$SavedState;->currentAdj:[F

    .line 182
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .locals 0
    .param p1, "superState"    # Landroid/os/Parcelable;

    .prologue
    .line 179
    invoke-direct {p0, p1}, Landroid/preference/Preference$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 178
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 190
    invoke-super {p0, p1, p2}, Landroid/preference/Preference$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 191
    iget-object v0, p0, Lcom/android/exsettings/livedisplay/PictureAdjustment$SavedState;->originalAdj:[F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloatArray([F)V

    .line 192
    iget-object v0, p0, Lcom/android/exsettings/livedisplay/PictureAdjustment$SavedState;->currentAdj:[F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloatArray([F)V

    .line 189
    return-void
.end method
