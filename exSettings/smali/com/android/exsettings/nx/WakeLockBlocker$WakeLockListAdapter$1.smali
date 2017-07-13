.class Lcom/android/exsettings/nx/WakeLockBlocker$WakeLockListAdapter$1;
.super Ljava/lang/Object;
.source "WakeLockBlocker.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exsettings/nx/WakeLockBlocker$WakeLockListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/exsettings/nx/WakeLockBlocker$WakeLockListAdapter;

.field final synthetic val$checkedTextView:Landroid/widget/CheckedTextView;


# direct methods
.method constructor <init>(Lcom/android/exsettings/nx/WakeLockBlocker$WakeLockListAdapter;Landroid/widget/CheckedTextView;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/exsettings/nx/WakeLockBlocker$WakeLockListAdapter;
    .param p2, "val$checkedTextView"    # Landroid/widget/CheckedTextView;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/android/exsettings/nx/WakeLockBlocker$WakeLockListAdapter$1;->this$1:Lcom/android/exsettings/nx/WakeLockBlocker$WakeLockListAdapter;

    iput-object p2, p0, Lcom/android/exsettings/nx/WakeLockBlocker$WakeLockListAdapter$1;->val$checkedTextView:Landroid/widget/CheckedTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 99
    iget-object v1, p0, Lcom/android/exsettings/nx/WakeLockBlocker$WakeLockListAdapter$1;->val$checkedTextView:Landroid/widget/CheckedTextView;

    invoke-virtual {v1}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    .line 100
    .local v0, "isChecked":Z
    :goto_0
    iget-object v1, p0, Lcom/android/exsettings/nx/WakeLockBlocker$WakeLockListAdapter$1;->this$1:Lcom/android/exsettings/nx/WakeLockBlocker$WakeLockListAdapter;

    iget-object v1, v1, Lcom/android/exsettings/nx/WakeLockBlocker$WakeLockListAdapter;->this$0:Lcom/android/exsettings/nx/WakeLockBlocker;

    invoke-static {v1}, Lcom/android/exsettings/nx/WakeLockBlocker;->-get2(Lcom/android/exsettings/nx/WakeLockBlocker;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/android/exsettings/nx/WakeLockBlocker$WakeLockListAdapter$1;->val$checkedTextView:Landroid/widget/CheckedTextView;

    invoke-virtual {v2}, Landroid/widget/CheckedTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    iget-object v1, p0, Lcom/android/exsettings/nx/WakeLockBlocker$WakeLockListAdapter$1;->val$checkedTextView:Landroid/widget/CheckedTextView;

    invoke-virtual {v1, v0}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 98
    return-void

    .line 99
    .end local v0    # "isChecked":Z
    :cond_0
    const/4 v0, 0x1

    .restart local v0    # "isChecked":Z
    goto :goto_0
.end method
