.class Lcom/android/exsettings/print/PrintServiceSettingsFragment$2;
.super Landroid/database/DataSetObserver;
.source "PrintServiceSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/print/PrintServiceSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/print/PrintServiceSettingsFragment;


# direct methods
.method constructor <init>(Lcom/android/exsettings/print/PrintServiceSettingsFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/exsettings/print/PrintServiceSettingsFragment;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/android/exsettings/print/PrintServiceSettingsFragment$2;->this$0:Lcom/android/exsettings/print/PrintServiceSettingsFragment;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method private invalidateOptionsMenuIfNeeded()V
    .locals 2

    .prologue
    .line 106
    iget-object v1, p0, Lcom/android/exsettings/print/PrintServiceSettingsFragment$2;->this$0:Lcom/android/exsettings/print/PrintServiceSettingsFragment;

    invoke-static {v1}, Lcom/android/exsettings/print/PrintServiceSettingsFragment;->-get4(Lcom/android/exsettings/print/PrintServiceSettingsFragment;)Lcom/android/exsettings/print/PrintServiceSettingsFragment$PrintersAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/exsettings/print/PrintServiceSettingsFragment$PrintersAdapter;->getUnfilteredCount()I

    move-result v0

    .line 107
    .local v0, "unfilteredItemCount":I
    iget-object v1, p0, Lcom/android/exsettings/print/PrintServiceSettingsFragment$2;->this$0:Lcom/android/exsettings/print/PrintServiceSettingsFragment;

    invoke-static {v1}, Lcom/android/exsettings/print/PrintServiceSettingsFragment;->-get2(Lcom/android/exsettings/print/PrintServiceSettingsFragment;)I

    move-result v1

    if-gtz v1, :cond_1

    if-lez v0, :cond_1

    .line 109
    :goto_0
    iget-object v1, p0, Lcom/android/exsettings/print/PrintServiceSettingsFragment$2;->this$0:Lcom/android/exsettings/print/PrintServiceSettingsFragment;

    invoke-virtual {v1}, Lcom/android/exsettings/print/PrintServiceSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 111
    :cond_0
    iget-object v1, p0, Lcom/android/exsettings/print/PrintServiceSettingsFragment$2;->this$0:Lcom/android/exsettings/print/PrintServiceSettingsFragment;

    invoke-static {v1, v0}, Lcom/android/exsettings/print/PrintServiceSettingsFragment;->-set0(Lcom/android/exsettings/print/PrintServiceSettingsFragment;I)I

    .line 105
    return-void

    .line 108
    :cond_1
    iget-object v1, p0, Lcom/android/exsettings/print/PrintServiceSettingsFragment$2;->this$0:Lcom/android/exsettings/print/PrintServiceSettingsFragment;

    invoke-static {v1}, Lcom/android/exsettings/print/PrintServiceSettingsFragment;->-get2(Lcom/android/exsettings/print/PrintServiceSettingsFragment;)I

    move-result v1

    if-lez v1, :cond_0

    if-gtz v0, :cond_0

    goto :goto_0
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/android/exsettings/print/PrintServiceSettingsFragment$2;->invalidateOptionsMenuIfNeeded()V

    .line 97
    iget-object v0, p0, Lcom/android/exsettings/print/PrintServiceSettingsFragment$2;->this$0:Lcom/android/exsettings/print/PrintServiceSettingsFragment;

    invoke-static {v0}, Lcom/android/exsettings/print/PrintServiceSettingsFragment;->-wrap3(Lcom/android/exsettings/print/PrintServiceSettingsFragment;)V

    .line 95
    return-void
.end method

.method public onInvalidated()V
    .locals 0

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/android/exsettings/print/PrintServiceSettingsFragment$2;->invalidateOptionsMenuIfNeeded()V

    .line 101
    return-void
.end method
