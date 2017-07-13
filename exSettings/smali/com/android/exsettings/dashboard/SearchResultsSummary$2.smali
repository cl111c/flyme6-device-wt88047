.class Lcom/android/exsettings/dashboard/SearchResultsSummary$2;
.super Ljava/lang/Object;
.source "SearchResultsSummary.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exsettings/dashboard/SearchResultsSummary;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/dashboard/SearchResultsSummary;


# direct methods
.method constructor <init>(Lcom/android/exsettings/dashboard/SearchResultsSummary;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/exsettings/dashboard/SearchResultsSummary;

    .prologue
    .line 224
    iput-object p1, p0, Lcom/android/exsettings/dashboard/SearchResultsSummary$2;->this$0:Lcom/android/exsettings/dashboard/SearchResultsSummary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p2, "view"    # Landroid/view/View;
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
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v3, 0x0

    .line 228
    add-int/lit8 p3, p3, -0x1

    .line 231
    if-gez p3, :cond_0

    .line 232
    return-void

    .line 234
    :cond_0
    iget-object v1, p0, Lcom/android/exsettings/dashboard/SearchResultsSummary$2;->this$0:Lcom/android/exsettings/dashboard/SearchResultsSummary;

    invoke-static {v1}, Lcom/android/exsettings/dashboard/SearchResultsSummary;->-get3(Lcom/android/exsettings/dashboard/SearchResultsSummary;)Lcom/android/exsettings/dashboard/SearchResultsSummary$SuggestionsAdapter;

    move-result-object v1

    invoke-static {v1}, Lcom/android/exsettings/dashboard/SearchResultsSummary$SuggestionsAdapter;->-get0(Lcom/android/exsettings/dashboard/SearchResultsSummary$SuggestionsAdapter;)Landroid/database/Cursor;

    move-result-object v0

    .line 235
    .local v0, "cursor":Landroid/database/Cursor;
    invoke-interface {v0, p3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 237
    iget-object v1, p0, Lcom/android/exsettings/dashboard/SearchResultsSummary$2;->this$0:Lcom/android/exsettings/dashboard/SearchResultsSummary;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/exsettings/dashboard/SearchResultsSummary;->-set1(Lcom/android/exsettings/dashboard/SearchResultsSummary;Z)Z

    .line 238
    iget-object v1, p0, Lcom/android/exsettings/dashboard/SearchResultsSummary$2;->this$0:Lcom/android/exsettings/dashboard/SearchResultsSummary;

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/exsettings/dashboard/SearchResultsSummary;->-set0(Lcom/android/exsettings/dashboard/SearchResultsSummary;Ljava/lang/String;)Ljava/lang/String;

    .line 239
    iget-object v1, p0, Lcom/android/exsettings/dashboard/SearchResultsSummary$2;->this$0:Lcom/android/exsettings/dashboard/SearchResultsSummary;

    invoke-static {v1}, Lcom/android/exsettings/dashboard/SearchResultsSummary;->-get2(Lcom/android/exsettings/dashboard/SearchResultsSummary;)Landroid/widget/SearchView;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 240
    iget-object v1, p0, Lcom/android/exsettings/dashboard/SearchResultsSummary$2;->this$0:Lcom/android/exsettings/dashboard/SearchResultsSummary;

    invoke-static {v1}, Lcom/android/exsettings/dashboard/SearchResultsSummary;->-get2(Lcom/android/exsettings/dashboard/SearchResultsSummary;)Landroid/widget/SearchView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/exsettings/dashboard/SearchResultsSummary$2;->this$0:Lcom/android/exsettings/dashboard/SearchResultsSummary;

    invoke-static {v2}, Lcom/android/exsettings/dashboard/SearchResultsSummary;->-get0(Lcom/android/exsettings/dashboard/SearchResultsSummary;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 226
    :cond_1
    return-void
.end method
