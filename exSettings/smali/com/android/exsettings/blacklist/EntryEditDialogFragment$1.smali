.class Lcom/android/exsettings/blacklist/EntryEditDialogFragment$1;
.super Ljava/lang/Object;
.source "EntryEditDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exsettings/blacklist/EntryEditDialogFragment;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/blacklist/EntryEditDialogFragment;


# direct methods
.method constructor <init>(Lcom/android/exsettings/blacklist/EntryEditDialogFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/exsettings/blacklist/EntryEditDialogFragment;

    .prologue
    .line 131
    iput-object p1, p0, Lcom/android/exsettings/blacklist/EntryEditDialogFragment$1;->this$0:Lcom/android/exsettings/blacklist/EntryEditDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 134
    iget-object v1, p0, Lcom/android/exsettings/blacklist/EntryEditDialogFragment$1;->this$0:Lcom/android/exsettings/blacklist/EntryEditDialogFragment;

    invoke-virtual {v1}, Lcom/android/exsettings/blacklist/EntryEditDialogFragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 135
    .local v0, "fragMan":Landroid/app/FragmentManager;
    const-string/jumbo v1, "delete_confirm"

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    if-nez v1, :cond_0

    .line 136
    invoke-static {}, Lcom/android/exsettings/blacklist/EntryEditDialogFragment$DeleteConfirmationFragment;->newInstance()Landroid/app/DialogFragment;

    move-result-object v1

    .line 137
    const-string/jumbo v2, "delete_confirm"

    .line 136
    invoke-virtual {v1, v0, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 133
    :cond_0
    return-void
.end method
