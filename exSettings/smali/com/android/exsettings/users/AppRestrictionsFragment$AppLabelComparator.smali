.class Lcom/android/exsettings/users/AppRestrictionsFragment$AppLabelComparator;
.super Ljava/lang/Object;
.source "AppRestrictionsFragment.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/users/AppRestrictionsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AppLabelComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/exsettings/users/AppRestrictionsFragment$SelectableAppInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/users/AppRestrictionsFragment;


# direct methods
.method private constructor <init>(Lcom/android/exsettings/users/AppRestrictionsFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/exsettings/users/AppRestrictionsFragment;

    .prologue
    .line 749
    iput-object p1, p0, Lcom/android/exsettings/users/AppRestrictionsFragment$AppLabelComparator;->this$0:Lcom/android/exsettings/users/AppRestrictionsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/exsettings/users/AppRestrictionsFragment;Lcom/android/exsettings/users/AppRestrictionsFragment$AppLabelComparator;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/exsettings/users/AppRestrictionsFragment;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/exsettings/users/AppRestrictionsFragment$AppLabelComparator;-><init>(Lcom/android/exsettings/users/AppRestrictionsFragment;)V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/exsettings/users/AppRestrictionsFragment$SelectableAppInfo;Lcom/android/exsettings/users/AppRestrictionsFragment$SelectableAppInfo;)I
    .locals 4
    .param p1, "lhs"    # Lcom/android/exsettings/users/AppRestrictionsFragment$SelectableAppInfo;
    .param p2, "rhs"    # Lcom/android/exsettings/users/AppRestrictionsFragment$SelectableAppInfo;

    .prologue
    .line 753
    iget-object v2, p1, Lcom/android/exsettings/users/AppRestrictionsFragment$SelectableAppInfo;->activityName:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 754
    .local v0, "lhsLabel":Ljava/lang/String;
    iget-object v2, p2, Lcom/android/exsettings/users/AppRestrictionsFragment$SelectableAppInfo;->activityName:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 755
    .local v1, "rhsLabel":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    return v2
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "lhs"    # Ljava/lang/Object;
    .param p2, "rhs"    # Ljava/lang/Object;

    .prologue
    .line 752
    check-cast p1, Lcom/android/exsettings/users/AppRestrictionsFragment$SelectableAppInfo;

    .end local p1    # "lhs":Ljava/lang/Object;
    check-cast p2, Lcom/android/exsettings/users/AppRestrictionsFragment$SelectableAppInfo;

    .end local p2    # "rhs":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/exsettings/users/AppRestrictionsFragment$AppLabelComparator;->compare(Lcom/android/exsettings/users/AppRestrictionsFragment$SelectableAppInfo;Lcom/android/exsettings/users/AppRestrictionsFragment$SelectableAppInfo;)I

    move-result v0

    return v0
.end method
