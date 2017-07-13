.class public Lcom/android/exsettings/cyanogenmod/PackageListAdapter$PackageItem;
.super Ljava/lang/Object;
.source "PackageListAdapter.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/cyanogenmod/PackageListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PackageItem"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/exsettings/cyanogenmod/PackageListAdapter$PackageItem;",
        ">;"
    }
.end annotation


# instance fields
.field private final activityTitles:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field public final icon:Landroid/graphics/drawable/Drawable;

.field public final packageName:Ljava/lang/String;

.field public final title:Ljava/lang/CharSequence;


# direct methods
.method static synthetic -get0(Lcom/android/exsettings/cyanogenmod/PackageListAdapter$PackageItem;)Ljava/util/TreeSet;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/cyanogenmod/PackageListAdapter$PackageItem;->activityTitles:Ljava/util/TreeSet;

    return-object v0
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/CharSequence;
    .param p3, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lcom/android/exsettings/cyanogenmod/PackageListAdapter$PackageItem;->activityTitles:Ljava/util/TreeSet;

    .line 75
    iput-object p1, p0, Lcom/android/exsettings/cyanogenmod/PackageListAdapter$PackageItem;->packageName:Ljava/lang/String;

    .line 76
    iput-object p2, p0, Lcom/android/exsettings/cyanogenmod/PackageListAdapter$PackageItem;->title:Ljava/lang/CharSequence;

    .line 77
    iput-object p3, p0, Lcom/android/exsettings/cyanogenmod/PackageListAdapter$PackageItem;->icon:Landroid/graphics/drawable/Drawable;

    .line 74
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/android/exsettings/cyanogenmod/PackageListAdapter$PackageItem;)I
    .locals 3
    .param p1, "another"    # Lcom/android/exsettings/cyanogenmod/PackageListAdapter$PackageItem;

    .prologue
    .line 82
    iget-object v1, p0, Lcom/android/exsettings/cyanogenmod/PackageListAdapter$PackageItem;->title:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/android/exsettings/cyanogenmod/PackageListAdapter$PackageItem;->title:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    .line 83
    .local v0, "result":I
    if-eqz v0, :cond_0

    .end local v0    # "result":I
    :goto_0
    return v0

    .restart local v0    # "result":I
    :cond_0
    iget-object v1, p0, Lcom/android/exsettings/cyanogenmod/PackageListAdapter$PackageItem;->packageName:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/exsettings/cyanogenmod/PackageListAdapter$PackageItem;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "another"    # Ljava/lang/Object;

    .prologue
    .line 81
    check-cast p1, Lcom/android/exsettings/cyanogenmod/PackageListAdapter$PackageItem;

    .end local p1    # "another":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/exsettings/cyanogenmod/PackageListAdapter$PackageItem;->compareTo(Lcom/android/exsettings/cyanogenmod/PackageListAdapter$PackageItem;)I

    move-result v0

    return v0
.end method
