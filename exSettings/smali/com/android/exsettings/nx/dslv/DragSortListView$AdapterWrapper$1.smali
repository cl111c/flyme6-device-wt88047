.class Lcom/android/exsettings/nx/dslv/DragSortListView$AdapterWrapper$1;
.super Landroid/database/DataSetObserver;
.source "DragSortListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exsettings/nx/dslv/DragSortListView$AdapterWrapper;-><init>(Lcom/android/exsettings/nx/dslv/DragSortListView;Landroid/widget/ListAdapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/exsettings/nx/dslv/DragSortListView$AdapterWrapper;


# direct methods
.method constructor <init>(Lcom/android/exsettings/nx/dslv/DragSortListView$AdapterWrapper;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/exsettings/nx/dslv/DragSortListView$AdapterWrapper;

    .prologue
    .line 645
    iput-object p1, p0, Lcom/android/exsettings/nx/dslv/DragSortListView$AdapterWrapper$1;->this$1:Lcom/android/exsettings/nx/dslv/DragSortListView$AdapterWrapper;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 647
    iget-object v0, p0, Lcom/android/exsettings/nx/dslv/DragSortListView$AdapterWrapper$1;->this$1:Lcom/android/exsettings/nx/dslv/DragSortListView$AdapterWrapper;

    invoke-virtual {v0}, Lcom/android/exsettings/nx/dslv/DragSortListView$AdapterWrapper;->notifyDataSetChanged()V

    .line 646
    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .prologue
    .line 651
    iget-object v0, p0, Lcom/android/exsettings/nx/dslv/DragSortListView$AdapterWrapper$1;->this$1:Lcom/android/exsettings/nx/dslv/DragSortListView$AdapterWrapper;

    invoke-virtual {v0}, Lcom/android/exsettings/nx/dslv/DragSortListView$AdapterWrapper;->notifyDataSetInvalidated()V

    .line 650
    return-void
.end method
