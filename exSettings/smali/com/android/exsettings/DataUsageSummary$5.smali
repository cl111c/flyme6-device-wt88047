.class Lcom/android/exsettings/DataUsageSummary$5;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/DataUsageSummary;


# direct methods
.method constructor <init>(Lcom/android/exsettings/DataUsageSummary;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/exsettings/DataUsageSummary;

    .prologue
    .line 1527
    iput-object p1, p0, Lcom/android/exsettings/DataUsageSummary$5;->this$0:Lcom/android/exsettings/DataUsageSummary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 1532
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v1, 0x1

    if-ne p3, v1, :cond_0

    .line 1533
    const/4 v0, 0x1

    .line 1540
    .local v0, "backgroundPolicy":I
    :goto_0
    iget-object v1, p0, Lcom/android/exsettings/DataUsageSummary$5;->this$0:Lcom/android/exsettings/DataUsageSummary;

    invoke-static {v1, v0}, Lcom/android/exsettings/DataUsageSummary;->-wrap5(Lcom/android/exsettings/DataUsageSummary;I)V

    .line 1529
    return-void

    .line 1534
    .end local v0    # "backgroundPolicy":I
    :cond_0
    const/4 v1, 0x2

    if-ne p3, v1, :cond_1

    .line 1535
    const v0, 0x20001

    .restart local v0    # "backgroundPolicy":I
    goto :goto_0

    .line 1538
    .end local v0    # "backgroundPolicy":I
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "backgroundPolicy":I
    goto :goto_0
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 1544
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method
