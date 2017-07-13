.class Lcom/android/exsettings/nx/dslv/ActionListViewSettings$1;
.super Ljava/lang/Object;
.source "ActionListViewSettings.java"

# interfaces
.implements Lcom/android/exsettings/nx/dslv/DragSortListView$DropListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/nx/dslv/ActionListViewSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/nx/dslv/ActionListViewSettings;


# direct methods
.method constructor <init>(Lcom/android/exsettings/nx/dslv/ActionListViewSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/exsettings/nx/dslv/ActionListViewSettings;

    .prologue
    .line 134
    iput-object p1, p0, Lcom/android/exsettings/nx/dslv/ActionListViewSettings$1;->this$0:Lcom/android/exsettings/nx/dslv/ActionListViewSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public drop(II)V
    .locals 4
    .param p1, "from"    # I
    .param p2, "to"    # I

    .prologue
    .line 137
    iget-object v1, p0, Lcom/android/exsettings/nx/dslv/ActionListViewSettings$1;->this$0:Lcom/android/exsettings/nx/dslv/ActionListViewSettings;

    invoke-static {v1}, Lcom/android/exsettings/nx/dslv/ActionListViewSettings;->-get1(Lcom/android/exsettings/nx/dslv/ActionListViewSettings;)Lcom/android/exsettings/nx/dslv/ActionListViewSettings$ActionConfigsAdapter;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/exsettings/nx/dslv/ActionListViewSettings$ActionConfigsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/nx/ActionConfig;

    .line 139
    .local v0, "item":Lcom/android/internal/util/nx/ActionConfig;
    iget-object v1, p0, Lcom/android/exsettings/nx/dslv/ActionListViewSettings$1;->this$0:Lcom/android/exsettings/nx/dslv/ActionListViewSettings;

    invoke-static {v1}, Lcom/android/exsettings/nx/dslv/ActionListViewSettings;->-get1(Lcom/android/exsettings/nx/dslv/ActionListViewSettings;)Lcom/android/exsettings/nx/dslv/ActionListViewSettings$ActionConfigsAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/exsettings/nx/dslv/ActionListViewSettings$ActionConfigsAdapter;->remove(Ljava/lang/Object;)V

    .line 140
    iget-object v1, p0, Lcom/android/exsettings/nx/dslv/ActionListViewSettings$1;->this$0:Lcom/android/exsettings/nx/dslv/ActionListViewSettings;

    invoke-static {v1}, Lcom/android/exsettings/nx/dslv/ActionListViewSettings;->-get1(Lcom/android/exsettings/nx/dslv/ActionListViewSettings;)Lcom/android/exsettings/nx/dslv/ActionListViewSettings$ActionConfigsAdapter;

    move-result-object v1

    invoke-virtual {v1, v0, p2}, Lcom/android/exsettings/nx/dslv/ActionListViewSettings$ActionConfigsAdapter;->insert(Ljava/lang/Object;I)V

    .line 142
    iget-object v1, p0, Lcom/android/exsettings/nx/dslv/ActionListViewSettings$1;->this$0:Lcom/android/exsettings/nx/dslv/ActionListViewSettings;

    iget-object v2, p0, Lcom/android/exsettings/nx/dslv/ActionListViewSettings$1;->this$0:Lcom/android/exsettings/nx/dslv/ActionListViewSettings;

    invoke-static {v2}, Lcom/android/exsettings/nx/dslv/ActionListViewSettings;->-get0(Lcom/android/exsettings/nx/dslv/ActionListViewSettings;)Ljava/util/ArrayList;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/exsettings/nx/dslv/ActionListViewSettings;->-wrap3(Lcom/android/exsettings/nx/dslv/ActionListViewSettings;Ljava/util/ArrayList;Z)V

    .line 136
    return-void
.end method
