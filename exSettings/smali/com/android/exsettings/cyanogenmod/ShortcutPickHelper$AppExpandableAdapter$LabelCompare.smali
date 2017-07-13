.class public Lcom/android/exsettings/cyanogenmod/ShortcutPickHelper$AppExpandableAdapter$LabelCompare;
.super Ljava/lang/Object;
.source "ShortcutPickHelper.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/cyanogenmod/ShortcutPickHelper$AppExpandableAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LabelCompare"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/exsettings/cyanogenmod/ShortcutPickHelper$AppExpandableAdapter$GroupInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/exsettings/cyanogenmod/ShortcutPickHelper$AppExpandableAdapter;


# direct methods
.method public constructor <init>(Lcom/android/exsettings/cyanogenmod/ShortcutPickHelper$AppExpandableAdapter;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/exsettings/cyanogenmod/ShortcutPickHelper$AppExpandableAdapter;

    .prologue
    .line 178
    iput-object p1, p0, Lcom/android/exsettings/cyanogenmod/ShortcutPickHelper$AppExpandableAdapter$LabelCompare;->this$1:Lcom/android/exsettings/cyanogenmod/ShortcutPickHelper$AppExpandableAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/exsettings/cyanogenmod/ShortcutPickHelper$AppExpandableAdapter$GroupInfo;Lcom/android/exsettings/cyanogenmod/ShortcutPickHelper$AppExpandableAdapter$GroupInfo;)I
    .locals 5
    .param p1, "item1"    # Lcom/android/exsettings/cyanogenmod/ShortcutPickHelper$AppExpandableAdapter$GroupInfo;
    .param p2, "item2"    # Lcom/android/exsettings/cyanogenmod/ShortcutPickHelper$AppExpandableAdapter$GroupInfo;

    .prologue
    const/4 v4, 0x0

    .line 181
    iget-object v3, p1, Lcom/android/exsettings/cyanogenmod/ShortcutPickHelper$AppExpandableAdapter$GroupInfo;->label:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 182
    .local v0, "rank1":Ljava/lang/String;
    iget-object v3, p2, Lcom/android/exsettings/cyanogenmod/ShortcutPickHelper$AppExpandableAdapter$GroupInfo;->label:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 183
    .local v1, "rank2":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    .line 184
    .local v2, "result":I
    if-nez v2, :cond_0

    .line 185
    return v4

    .line 186
    :cond_0
    if-gez v2, :cond_1

    .line 187
    const/4 v3, -0x1

    return v3

    .line 189
    :cond_1
    const/4 v3, 0x1

    return v3
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "item1"    # Ljava/lang/Object;
    .param p2, "item2"    # Ljava/lang/Object;

    .prologue
    .line 180
    check-cast p1, Lcom/android/exsettings/cyanogenmod/ShortcutPickHelper$AppExpandableAdapter$GroupInfo;

    .end local p1    # "item1":Ljava/lang/Object;
    check-cast p2, Lcom/android/exsettings/cyanogenmod/ShortcutPickHelper$AppExpandableAdapter$GroupInfo;

    .end local p2    # "item2":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/exsettings/cyanogenmod/ShortcutPickHelper$AppExpandableAdapter$LabelCompare;->compare(Lcom/android/exsettings/cyanogenmod/ShortcutPickHelper$AppExpandableAdapter$GroupInfo;Lcom/android/exsettings/cyanogenmod/ShortcutPickHelper$AppExpandableAdapter$GroupInfo;)I

    move-result v0

    return v0
.end method
