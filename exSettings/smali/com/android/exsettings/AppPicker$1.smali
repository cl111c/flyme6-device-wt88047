.class final Lcom/android/exsettings/AppPicker$1;
.super Ljava/lang/Object;
.source "AppPicker.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/AppPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/exsettings/AppPicker$MyApplicationInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private final collator:Ljava/text/Collator;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 178
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/AppPicker$1;->collator:Ljava/text/Collator;

    .line 172
    return-void
.end method


# virtual methods
.method public final compare(Lcom/android/exsettings/AppPicker$MyApplicationInfo;Lcom/android/exsettings/AppPicker$MyApplicationInfo;)I
    .locals 3
    .param p1, "a"    # Lcom/android/exsettings/AppPicker$MyApplicationInfo;
    .param p2, "b"    # Lcom/android/exsettings/AppPicker$MyApplicationInfo;

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/exsettings/AppPicker$1;->collator:Ljava/text/Collator;

    iget-object v1, p1, Lcom/android/exsettings/AppPicker$MyApplicationInfo;->label:Ljava/lang/CharSequence;

    iget-object v2, p2, Lcom/android/exsettings/AppPicker$MyApplicationInfo;->label:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2}, Ljava/text/Collator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "a"    # Ljava/lang/Object;
    .param p2, "b"    # Ljava/lang/Object;

    .prologue
    .line 174
    check-cast p1, Lcom/android/exsettings/AppPicker$MyApplicationInfo;

    .end local p1    # "a":Ljava/lang/Object;
    check-cast p2, Lcom/android/exsettings/AppPicker$MyApplicationInfo;

    .end local p2    # "b":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/exsettings/AppPicker$1;->compare(Lcom/android/exsettings/AppPicker$MyApplicationInfo;Lcom/android/exsettings/AppPicker$MyApplicationInfo;)I

    move-result v0

    return v0
.end method
