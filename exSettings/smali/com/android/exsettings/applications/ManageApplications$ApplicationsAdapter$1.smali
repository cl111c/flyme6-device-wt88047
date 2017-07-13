.class Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter$1;
.super Landroid/widget/Filter;
.source "ManageApplications.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;


# direct methods
.method constructor <init>(Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;

    .prologue
    .line 736
    iput-object p1, p0, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter$1;->this$1:Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method


# virtual methods
.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 4
    .param p1, "constraint"    # Ljava/lang/CharSequence;

    .prologue
    .line 740
    iget-object v2, p0, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter$1;->this$1:Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;

    iget-object v3, p0, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter$1;->this$1:Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;

    invoke-static {v3}, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->-get0(Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->applyPrefixFilter(Ljava/lang/CharSequence;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    .line 741
    .local v0, "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;>;"
    new-instance v1, Landroid/widget/Filter$FilterResults;

    invoke-direct {v1}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 742
    .local v1, "fr":Landroid/widget/Filter$FilterResults;
    iput-object v0, v1, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 743
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    iput v2, v1, Landroid/widget/Filter$FilterResults;->count:I

    .line 744
    return-object v1
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 2
    .param p1, "constraint"    # Ljava/lang/CharSequence;
    .param p2, "results"    # Landroid/widget/Filter$FilterResults;

    .prologue
    .line 750
    iget-object v0, p0, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter$1;->this$1:Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;

    iput-object p1, v0, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->mCurFilterPrefix:Ljava/lang/CharSequence;

    .line 751
    iget-object v1, p0, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter$1;->this$1:Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;

    iget-object v0, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-static {v1, v0}, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->-set0(Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 752
    iget-object v0, p0, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter$1;->this$1:Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v0}, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->notifyDataSetChanged()V

    .line 749
    return-void
.end method
