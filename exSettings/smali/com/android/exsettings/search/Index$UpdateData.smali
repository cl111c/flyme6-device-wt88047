.class Lcom/android/exsettings/search/Index$UpdateData;
.super Ljava/lang/Object;
.source "Index.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/search/Index;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UpdateData"
.end annotation


# instance fields
.field public dataToDelete:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/provider/SearchIndexableData;",
            ">;"
        }
    .end annotation
.end field

.field public dataToUpdate:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/provider/SearchIndexableData;",
            ">;"
        }
    .end annotation
.end field

.field public forceUpdate:Z

.field public nonIndexableKeys:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 178
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/exsettings/search/Index$UpdateData;->forceUpdate:Z

    .line 181
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/exsettings/search/Index$UpdateData;->dataToUpdate:Ljava/util/List;

    .line 182
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/exsettings/search/Index$UpdateData;->dataToDelete:Ljava/util/List;

    .line 183
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/exsettings/search/Index$UpdateData;->nonIndexableKeys:Ljava/util/Map;

    .line 180
    return-void
.end method

.method public constructor <init>(Lcom/android/exsettings/search/Index$UpdateData;)V
    .locals 2
    .param p1, "other"    # Lcom/android/exsettings/search/Index$UpdateData;

    .prologue
    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 178
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/exsettings/search/Index$UpdateData;->forceUpdate:Z

    .line 187
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/android/exsettings/search/Index$UpdateData;->dataToUpdate:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/exsettings/search/Index$UpdateData;->dataToUpdate:Ljava/util/List;

    .line 188
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/android/exsettings/search/Index$UpdateData;->dataToDelete:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/exsettings/search/Index$UpdateData;->dataToDelete:Ljava/util/List;

    .line 189
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p1, Lcom/android/exsettings/search/Index$UpdateData;->nonIndexableKeys:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/android/exsettings/search/Index$UpdateData;->nonIndexableKeys:Ljava/util/Map;

    .line 190
    iget-boolean v0, p1, Lcom/android/exsettings/search/Index$UpdateData;->forceUpdate:Z

    iput-boolean v0, p0, Lcom/android/exsettings/search/Index$UpdateData;->forceUpdate:Z

    .line 186
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/android/exsettings/search/Index$UpdateData;->dataToUpdate:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 199
    iget-object v0, p0, Lcom/android/exsettings/search/Index$UpdateData;->dataToDelete:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 200
    iget-object v0, p0, Lcom/android/exsettings/search/Index$UpdateData;->nonIndexableKeys:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 201
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/exsettings/search/Index$UpdateData;->forceUpdate:Z

    .line 197
    return-void
.end method

.method public copy()Lcom/android/exsettings/search/Index$UpdateData;
    .locals 1

    .prologue
    .line 194
    new-instance v0, Lcom/android/exsettings/search/Index$UpdateData;

    invoke-direct {v0, p0}, Lcom/android/exsettings/search/Index$UpdateData;-><init>(Lcom/android/exsettings/search/Index$UpdateData;)V

    return-object v0
.end method
