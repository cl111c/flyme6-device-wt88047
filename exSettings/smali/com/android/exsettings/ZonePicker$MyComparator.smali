.class Lcom/android/exsettings/ZonePicker$MyComparator;
.super Ljava/lang/Object;
.source "ZonePicker.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/ZonePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/util/Map",
        "<**>;>;"
    }
.end annotation


# instance fields
.field private mSortingKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "sortingKey"    # Ljava/lang/String;

    .prologue
    .line 231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 232
    iput-object p1, p0, Lcom/android/exsettings/ZonePicker$MyComparator;->mSortingKey:Ljava/lang/String;

    .line 231
    return-void
.end method

.method private isComparable(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 257
    if-eqz p1, :cond_0

    instance-of v0, p1, Ljava/lang/Comparable;

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "map1"    # Ljava/lang/Object;
    .param p2, "map2"    # Ljava/lang/Object;

    .prologue
    .line 239
    check-cast p1, Ljava/util/Map;

    .end local p1    # "map1":Ljava/lang/Object;
    check-cast p2, Ljava/util/Map;

    .end local p2    # "map2":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/exsettings/ZonePicker$MyComparator;->compare(Ljava/util/Map;Ljava/util/Map;)I

    move-result v0

    return v0
.end method

.method public compare(Ljava/util/Map;Ljava/util/Map;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<**>;",
            "Ljava/util/Map",
            "<**>;)I"
        }
    .end annotation

    .prologue
    .line 240
    .local p1, "map1":Ljava/util/Map;, "Ljava/util/Map<**>;"
    .local p2, "map2":Ljava/util/Map;, "Ljava/util/Map<**>;"
    iget-object v2, p0, Lcom/android/exsettings/ZonePicker$MyComparator;->mSortingKey:Ljava/lang/String;

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 241
    .local v0, "value1":Ljava/lang/Object;
    iget-object v2, p0, Lcom/android/exsettings/ZonePicker$MyComparator;->mSortingKey:Ljava/lang/String;

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 247
    .local v1, "value2":Ljava/lang/Object;
    invoke-direct {p0, v0}, Lcom/android/exsettings/ZonePicker$MyComparator;->isComparable(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 248
    invoke-direct {p0, v1}, Lcom/android/exsettings/ZonePicker$MyComparator;->isComparable(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 249
    :cond_1
    invoke-direct {p0, v1}, Lcom/android/exsettings/ZonePicker$MyComparator;->isComparable(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 250
    const/4 v2, -0x1

    return v2

    .line 253
    :cond_2
    check-cast v0, Ljava/lang/Comparable;

    .end local v0    # "value1":Ljava/lang/Object;
    invoke-interface {v0, v1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v2

    return v2
.end method
