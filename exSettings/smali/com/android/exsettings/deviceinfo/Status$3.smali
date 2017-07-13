.class Lcom/android/exsettings/deviceinfo/Status$3;
.super Ljava/lang/Object;
.source "Status.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exsettings/deviceinfo/Status;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/deviceinfo/Status;


# direct methods
.method constructor <init>(Lcom/android/exsettings/deviceinfo/Status;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/exsettings/deviceinfo/Status;

    .prologue
    .line 257
    iput-object p1, p0, Lcom/android/exsettings/deviceinfo/Status$3;->this$0:Lcom/android/exsettings/deviceinfo/Status;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 6
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .line 261
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v1

    check-cast v1, Landroid/widget/ListAdapter;

    .line 262
    .local v1, "listAdapter":Landroid/widget/ListAdapter;
    invoke-interface {v1, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/preference/Preference;

    .line 265
    .local v2, "pref":Landroid/preference/Preference;
    iget-object v3, p0, Lcom/android/exsettings/deviceinfo/Status$3;->this$0:Lcom/android/exsettings/deviceinfo/Status;

    const-string/jumbo v4, "clipboard"

    invoke-virtual {v3, v4}, Lcom/android/exsettings/deviceinfo/Status;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 264
    check-cast v0, Landroid/content/ClipboardManager;

    .line 266
    .local v0, "cm":Landroid/content/ClipboardManager;
    invoke-virtual {v2}, Landroid/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 268
    iget-object v3, p0, Lcom/android/exsettings/deviceinfo/Status$3;->this$0:Lcom/android/exsettings/deviceinfo/Status;

    .line 269
    const v4, 0x1040397

    .line 270
    const/4 v5, 0x0

    .line 267
    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 271
    const/4 v3, 0x1

    return v3
.end method
