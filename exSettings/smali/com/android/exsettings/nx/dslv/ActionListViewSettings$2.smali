.class Lcom/android/exsettings/nx/dslv/ActionListViewSettings$2;
.super Ljava/lang/Object;
.source "ActionListViewSettings.java"

# interfaces
.implements Lcom/android/exsettings/nx/dslv/DragSortListView$RemoveListener;


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
    .line 147
    iput-object p1, p0, Lcom/android/exsettings/nx/dslv/ActionListViewSettings$2;->this$0:Lcom/android/exsettings/nx/dslv/ActionListViewSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public remove(I)V
    .locals 5
    .param p1, "which"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 150
    iget-object v1, p0, Lcom/android/exsettings/nx/dslv/ActionListViewSettings$2;->this$0:Lcom/android/exsettings/nx/dslv/ActionListViewSettings;

    invoke-static {v1}, Lcom/android/exsettings/nx/dslv/ActionListViewSettings;->-get1(Lcom/android/exsettings/nx/dslv/ActionListViewSettings;)Lcom/android/exsettings/nx/dslv/ActionListViewSettings$ActionConfigsAdapter;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/exsettings/nx/dslv/ActionListViewSettings$ActionConfigsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/nx/ActionConfig;

    .line 151
    .local v0, "item":Lcom/android/internal/util/nx/ActionConfig;
    iget-object v1, p0, Lcom/android/exsettings/nx/dslv/ActionListViewSettings$2;->this$0:Lcom/android/exsettings/nx/dslv/ActionListViewSettings;

    invoke-static {v1}, Lcom/android/exsettings/nx/dslv/ActionListViewSettings;->-get1(Lcom/android/exsettings/nx/dslv/ActionListViewSettings;)Lcom/android/exsettings/nx/dslv/ActionListViewSettings$ActionConfigsAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/exsettings/nx/dslv/ActionListViewSettings$ActionConfigsAdapter;->remove(Ljava/lang/Object;)V

    .line 152
    iget-object v1, p0, Lcom/android/exsettings/nx/dslv/ActionListViewSettings$2;->this$0:Lcom/android/exsettings/nx/dslv/ActionListViewSettings;

    invoke-static {v1}, Lcom/android/exsettings/nx/dslv/ActionListViewSettings;->-get6(Lcom/android/exsettings/nx/dslv/ActionListViewSettings;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/exsettings/nx/dslv/ActionListViewSettings$2;->this$0:Lcom/android/exsettings/nx/dslv/ActionListViewSettings;

    invoke-static {v1}, Lcom/android/exsettings/nx/dslv/ActionListViewSettings;->-get0(Lcom/android/exsettings/nx/dslv/ActionListViewSettings;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 153
    iget-object v1, p0, Lcom/android/exsettings/nx/dslv/ActionListViewSettings$2;->this$0:Lcom/android/exsettings/nx/dslv/ActionListViewSettings;

    invoke-static {v1}, Lcom/android/exsettings/nx/dslv/ActionListViewSettings;->-get1(Lcom/android/exsettings/nx/dslv/ActionListViewSettings;)Lcom/android/exsettings/nx/dslv/ActionListViewSettings$ActionConfigsAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/exsettings/nx/dslv/ActionListViewSettings$ActionConfigsAdapter;->add(Ljava/lang/Object;)V

    .line 154
    iget-object v1, p0, Lcom/android/exsettings/nx/dslv/ActionListViewSettings$2;->this$0:Lcom/android/exsettings/nx/dslv/ActionListViewSettings;

    const/4 v2, 0x2

    invoke-static {v1, v2, v3, v3, v3}, Lcom/android/exsettings/nx/dslv/ActionListViewSettings;->-wrap4(Lcom/android/exsettings/nx/dslv/ActionListViewSettings;IIZZ)V

    .line 149
    :cond_0
    :goto_0
    return-void

    .line 156
    :cond_1
    iget-object v1, p0, Lcom/android/exsettings/nx/dslv/ActionListViewSettings$2;->this$0:Lcom/android/exsettings/nx/dslv/ActionListViewSettings;

    invoke-static {v1, v0, v4}, Lcom/android/exsettings/nx/dslv/ActionListViewSettings;->-wrap2(Lcom/android/exsettings/nx/dslv/ActionListViewSettings;Lcom/android/internal/util/nx/ActionConfig;Z)V

    .line 157
    iget-object v1, p0, Lcom/android/exsettings/nx/dslv/ActionListViewSettings$2;->this$0:Lcom/android/exsettings/nx/dslv/ActionListViewSettings;

    iget-object v2, p0, Lcom/android/exsettings/nx/dslv/ActionListViewSettings$2;->this$0:Lcom/android/exsettings/nx/dslv/ActionListViewSettings;

    invoke-static {v2}, Lcom/android/exsettings/nx/dslv/ActionListViewSettings;->-get0(Lcom/android/exsettings/nx/dslv/ActionListViewSettings;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v1, v2, v3}, Lcom/android/exsettings/nx/dslv/ActionListViewSettings;->-wrap3(Lcom/android/exsettings/nx/dslv/ActionListViewSettings;Ljava/util/ArrayList;Z)V

    .line 158
    iget-object v1, p0, Lcom/android/exsettings/nx/dslv/ActionListViewSettings$2;->this$0:Lcom/android/exsettings/nx/dslv/ActionListViewSettings;

    invoke-static {v1}, Lcom/android/exsettings/nx/dslv/ActionListViewSettings;->-get0(Lcom/android/exsettings/nx/dslv/ActionListViewSettings;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 159
    iget-object v1, p0, Lcom/android/exsettings/nx/dslv/ActionListViewSettings$2;->this$0:Lcom/android/exsettings/nx/dslv/ActionListViewSettings;

    invoke-static {v1, v4}, Lcom/android/exsettings/nx/dslv/ActionListViewSettings;->-wrap5(Lcom/android/exsettings/nx/dslv/ActionListViewSettings;Z)V

    goto :goto_0
.end method
