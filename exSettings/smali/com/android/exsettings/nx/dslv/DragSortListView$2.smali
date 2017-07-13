.class Lcom/android/exsettings/nx/dslv/DragSortListView$2;
.super Landroid/database/DataSetObserver;
.source "DragSortListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exsettings/nx/dslv/DragSortListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/nx/dslv/DragSortListView;


# direct methods
.method constructor <init>(Lcom/android/exsettings/nx/dslv/DragSortListView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/exsettings/nx/dslv/DragSortListView;

    .prologue
    .line 549
    iput-object p1, p0, Lcom/android/exsettings/nx/dslv/DragSortListView$2;->this$0:Lcom/android/exsettings/nx/dslv/DragSortListView;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method private cancel()V
    .locals 2

    .prologue
    .line 551
    iget-object v0, p0, Lcom/android/exsettings/nx/dslv/DragSortListView$2;->this$0:Lcom/android/exsettings/nx/dslv/DragSortListView;

    invoke-static {v0}, Lcom/android/exsettings/nx/dslv/DragSortListView;->-get3(Lcom/android/exsettings/nx/dslv/DragSortListView;)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 552
    iget-object v0, p0, Lcom/android/exsettings/nx/dslv/DragSortListView$2;->this$0:Lcom/android/exsettings/nx/dslv/DragSortListView;

    invoke-virtual {v0}, Lcom/android/exsettings/nx/dslv/DragSortListView;->cancelDrag()V

    .line 550
    :cond_0
    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 0

    .prologue
    .line 558
    invoke-direct {p0}, Lcom/android/exsettings/nx/dslv/DragSortListView$2;->cancel()V

    .line 557
    return-void
.end method

.method public onInvalidated()V
    .locals 0

    .prologue
    .line 563
    invoke-direct {p0}, Lcom/android/exsettings/nx/dslv/DragSortListView$2;->cancel()V

    .line 562
    return-void
.end method
