.class Lcom/android/exsettings/print/PrintServiceSettingsFragment$PrintersAdapter$1;
.super Landroid/widget/Filter;
.source "PrintServiceSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exsettings/print/PrintServiceSettingsFragment$PrintersAdapter;->getFilter()Landroid/widget/Filter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/exsettings/print/PrintServiceSettingsFragment$PrintersAdapter;


# direct methods
.method constructor <init>(Lcom/android/exsettings/print/PrintServiceSettingsFragment$PrintersAdapter;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/exsettings/print/PrintServiceSettingsFragment$PrintersAdapter;

    .prologue
    .line 512
    iput-object p1, p0, Lcom/android/exsettings/print/PrintServiceSettingsFragment$PrintersAdapter$1;->this$1:Lcom/android/exsettings/print/PrintServiceSettingsFragment$PrintersAdapter;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method


# virtual methods
.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 8
    .param p1, "constraint"    # Ljava/lang/CharSequence;

    .prologue
    .line 515
    iget-object v6, p0, Lcom/android/exsettings/print/PrintServiceSettingsFragment$PrintersAdapter$1;->this$1:Lcom/android/exsettings/print/PrintServiceSettingsFragment$PrintersAdapter;

    invoke-static {v6}, Lcom/android/exsettings/print/PrintServiceSettingsFragment$PrintersAdapter;->-get1(Lcom/android/exsettings/print/PrintServiceSettingsFragment$PrintersAdapter;)Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    .line 516
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-eqz v6, :cond_0

    .line 517
    const/4 v6, 0x0

    monitor-exit v7

    return-object v6

    .line 519
    :cond_0
    :try_start_1
    new-instance v5, Landroid/widget/Filter$FilterResults;

    invoke-direct {v5}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 520
    .local v5, "results":Landroid/widget/Filter$FilterResults;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 521
    .local v1, "filteredPrinters":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterInfo;>;"
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 522
    .local v0, "constraintLowerCase":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/exsettings/print/PrintServiceSettingsFragment$PrintersAdapter$1;->this$1:Lcom/android/exsettings/print/PrintServiceSettingsFragment$PrintersAdapter;

    invoke-static {v6}, Lcom/android/exsettings/print/PrintServiceSettingsFragment$PrintersAdapter;->-get2(Lcom/android/exsettings/print/PrintServiceSettingsFragment$PrintersAdapter;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v4

    .line 523
    .local v4, "printerCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v4, :cond_2

    .line 524
    iget-object v6, p0, Lcom/android/exsettings/print/PrintServiceSettingsFragment$PrintersAdapter$1;->this$1:Lcom/android/exsettings/print/PrintServiceSettingsFragment$PrintersAdapter;

    invoke-static {v6}, Lcom/android/exsettings/print/PrintServiceSettingsFragment$PrintersAdapter;->-get2(Lcom/android/exsettings/print/PrintServiceSettingsFragment$PrintersAdapter;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/print/PrinterInfo;

    .line 525
    .local v3, "printer":Landroid/print/PrinterInfo;
    invoke-virtual {v3}, Landroid/print/PrinterInfo;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 526
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 523
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 529
    .end local v3    # "printer":Landroid/print/PrinterInfo;
    :cond_2
    iput-object v1, v5, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 530
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    iput v6, v5, Landroid/widget/Filter$FilterResults;->count:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v7

    .line 531
    return-object v5

    .line 515
    .end local v0    # "constraintLowerCase":Ljava/lang/String;
    .end local v1    # "filteredPrinters":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterInfo;>;"
    .end local v2    # "i":I
    .end local v4    # "printerCount":I
    .end local v5    # "results":Landroid/widget/Filter$FilterResults;
    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 4
    .param p1, "constraint"    # Ljava/lang/CharSequence;
    .param p2, "results"    # Landroid/widget/Filter$FilterResults;

    .prologue
    .line 538
    iget-object v1, p0, Lcom/android/exsettings/print/PrintServiceSettingsFragment$PrintersAdapter$1;->this$1:Lcom/android/exsettings/print/PrintServiceSettingsFragment$PrintersAdapter;

    invoke-static {v1}, Lcom/android/exsettings/print/PrintServiceSettingsFragment$PrintersAdapter;->-get1(Lcom/android/exsettings/print/PrintServiceSettingsFragment$PrintersAdapter;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 539
    :try_start_0
    iget-object v1, p0, Lcom/android/exsettings/print/PrintServiceSettingsFragment$PrintersAdapter$1;->this$1:Lcom/android/exsettings/print/PrintServiceSettingsFragment$PrintersAdapter;

    invoke-static {v1, p1}, Lcom/android/exsettings/print/PrintServiceSettingsFragment$PrintersAdapter;->-set0(Lcom/android/exsettings/print/PrintServiceSettingsFragment$PrintersAdapter;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 540
    iget-object v1, p0, Lcom/android/exsettings/print/PrintServiceSettingsFragment$PrintersAdapter$1;->this$1:Lcom/android/exsettings/print/PrintServiceSettingsFragment$PrintersAdapter;

    invoke-static {v1}, Lcom/android/exsettings/print/PrintServiceSettingsFragment$PrintersAdapter;->-get0(Lcom/android/exsettings/print/PrintServiceSettingsFragment$PrintersAdapter;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 541
    if-nez p2, :cond_0

    .line 542
    iget-object v1, p0, Lcom/android/exsettings/print/PrintServiceSettingsFragment$PrintersAdapter$1;->this$1:Lcom/android/exsettings/print/PrintServiceSettingsFragment$PrintersAdapter;

    invoke-static {v1}, Lcom/android/exsettings/print/PrintServiceSettingsFragment$PrintersAdapter;->-get0(Lcom/android/exsettings/print/PrintServiceSettingsFragment$PrintersAdapter;)Ljava/util/List;

    move-result-object v1

    iget-object v3, p0, Lcom/android/exsettings/print/PrintServiceSettingsFragment$PrintersAdapter$1;->this$1:Lcom/android/exsettings/print/PrintServiceSettingsFragment$PrintersAdapter;

    invoke-static {v3}, Lcom/android/exsettings/print/PrintServiceSettingsFragment$PrintersAdapter;->-get2(Lcom/android/exsettings/print/PrintServiceSettingsFragment$PrintersAdapter;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v2

    .line 548
    iget-object v1, p0, Lcom/android/exsettings/print/PrintServiceSettingsFragment$PrintersAdapter$1;->this$1:Lcom/android/exsettings/print/PrintServiceSettingsFragment$PrintersAdapter;

    invoke-virtual {v1}, Lcom/android/exsettings/print/PrintServiceSettingsFragment$PrintersAdapter;->notifyDataSetChanged()V

    .line 537
    return-void

    .line 544
    :cond_0
    :try_start_1
    iget-object v0, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    .line 545
    .local v0, "printers":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterInfo;>;"
    iget-object v1, p0, Lcom/android/exsettings/print/PrintServiceSettingsFragment$PrintersAdapter$1;->this$1:Lcom/android/exsettings/print/PrintServiceSettingsFragment$PrintersAdapter;

    invoke-static {v1}, Lcom/android/exsettings/print/PrintServiceSettingsFragment$PrintersAdapter;->-get0(Lcom/android/exsettings/print/PrintServiceSettingsFragment$PrintersAdapter;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 538
    .end local v0    # "printers":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterInfo;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method
