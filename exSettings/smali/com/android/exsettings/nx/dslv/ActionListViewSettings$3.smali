.class Lcom/android/exsettings/nx/dslv/ActionListViewSettings$3;
.super Ljava/lang/Object;
.source "ActionListViewSettings.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exsettings/nx/dslv/ActionListViewSettings;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
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
    .line 215
    iput-object p1, p0, Lcom/android/exsettings/nx/dslv/ActionListViewSettings$3;->this$0:Lcom/android/exsettings/nx/dslv/ActionListViewSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "arg2"    # I
    .param p4, "arg3"    # J
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
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v1, 0x0

    .line 219
    iget-object v0, p0, Lcom/android/exsettings/nx/dslv/ActionListViewSettings$3;->this$0:Lcom/android/exsettings/nx/dslv/ActionListViewSettings;

    invoke-static {v0}, Lcom/android/exsettings/nx/dslv/ActionListViewSettings;->-get13(Lcom/android/exsettings/nx/dslv/ActionListViewSettings;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 220
    iget-object v0, p0, Lcom/android/exsettings/nx/dslv/ActionListViewSettings$3;->this$0:Lcom/android/exsettings/nx/dslv/ActionListViewSettings;

    invoke-static {v0}, Lcom/android/exsettings/nx/dslv/ActionListViewSettings;->-get11(Lcom/android/exsettings/nx/dslv/ActionListViewSettings;)Lcom/android/exsettings/nx/util/ShortcutPickerHelper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/android/exsettings/nx/dslv/ActionListViewSettings$3;->this$0:Lcom/android/exsettings/nx/dslv/ActionListViewSettings;

    invoke-static {v0, p3}, Lcom/android/exsettings/nx/dslv/ActionListViewSettings;->-set0(Lcom/android/exsettings/nx/dslv/ActionListViewSettings;I)I

    .line 222
    iget-object v0, p0, Lcom/android/exsettings/nx/dslv/ActionListViewSettings$3;->this$0:Lcom/android/exsettings/nx/dslv/ActionListViewSettings;

    invoke-static {v0, v1}, Lcom/android/exsettings/nx/dslv/ActionListViewSettings;->-set1(Lcom/android/exsettings/nx/dslv/ActionListViewSettings;Z)Z

    .line 223
    iget-object v0, p0, Lcom/android/exsettings/nx/dslv/ActionListViewSettings$3;->this$0:Lcom/android/exsettings/nx/dslv/ActionListViewSettings;

    invoke-static {v0, v1}, Lcom/android/exsettings/nx/dslv/ActionListViewSettings;->-set2(Lcom/android/exsettings/nx/dslv/ActionListViewSettings;Z)Z

    .line 224
    iget-object v0, p0, Lcom/android/exsettings/nx/dslv/ActionListViewSettings$3;->this$0:Lcom/android/exsettings/nx/dslv/ActionListViewSettings;

    invoke-static {v0}, Lcom/android/exsettings/nx/dslv/ActionListViewSettings;->-get11(Lcom/android/exsettings/nx/dslv/ActionListViewSettings;)Lcom/android/exsettings/nx/util/ShortcutPickerHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/exsettings/nx/dslv/ActionListViewSettings$3;->this$0:Lcom/android/exsettings/nx/dslv/ActionListViewSettings;

    invoke-virtual {v1}, Lcom/android/exsettings/nx/dslv/ActionListViewSettings;->getId()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/exsettings/nx/util/ShortcutPickerHelper;->pickShortcut(IZ)V

    .line 218
    :cond_0
    :goto_0
    return-void

    .line 226
    :cond_1
    iget-object v0, p0, Lcom/android/exsettings/nx/dslv/ActionListViewSettings$3;->this$0:Lcom/android/exsettings/nx/dslv/ActionListViewSettings;

    invoke-static {v0}, Lcom/android/exsettings/nx/dslv/ActionListViewSettings;->-get12(Lcom/android/exsettings/nx/dslv/ActionListViewSettings;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 227
    iget-object v0, p0, Lcom/android/exsettings/nx/dslv/ActionListViewSettings$3;->this$0:Lcom/android/exsettings/nx/dslv/ActionListViewSettings;

    invoke-static {v0, v1, p3, v1, v1}, Lcom/android/exsettings/nx/dslv/ActionListViewSettings;->-wrap4(Lcom/android/exsettings/nx/dslv/ActionListViewSettings;IIZZ)V

    goto :goto_0

    .line 229
    :cond_2
    iget-object v0, p0, Lcom/android/exsettings/nx/dslv/ActionListViewSettings$3;->this$0:Lcom/android/exsettings/nx/dslv/ActionListViewSettings;

    invoke-static {v0}, Lcom/android/exsettings/nx/dslv/ActionListViewSettings;->-get11(Lcom/android/exsettings/nx/dslv/ActionListViewSettings;)Lcom/android/exsettings/nx/util/ShortcutPickerHelper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/android/exsettings/nx/dslv/ActionListViewSettings$3;->this$0:Lcom/android/exsettings/nx/dslv/ActionListViewSettings;

    invoke-static {v0, p3}, Lcom/android/exsettings/nx/dslv/ActionListViewSettings;->-set0(Lcom/android/exsettings/nx/dslv/ActionListViewSettings;I)I

    .line 231
    iget-object v0, p0, Lcom/android/exsettings/nx/dslv/ActionListViewSettings$3;->this$0:Lcom/android/exsettings/nx/dslv/ActionListViewSettings;

    invoke-static {v0, v1}, Lcom/android/exsettings/nx/dslv/ActionListViewSettings;->-set1(Lcom/android/exsettings/nx/dslv/ActionListViewSettings;Z)Z

    .line 232
    iget-object v0, p0, Lcom/android/exsettings/nx/dslv/ActionListViewSettings$3;->this$0:Lcom/android/exsettings/nx/dslv/ActionListViewSettings;

    invoke-static {v0, v1}, Lcom/android/exsettings/nx/dslv/ActionListViewSettings;->-set2(Lcom/android/exsettings/nx/dslv/ActionListViewSettings;Z)Z

    .line 233
    iget-object v0, p0, Lcom/android/exsettings/nx/dslv/ActionListViewSettings$3;->this$0:Lcom/android/exsettings/nx/dslv/ActionListViewSettings;

    invoke-static {v0}, Lcom/android/exsettings/nx/dslv/ActionListViewSettings;->-get11(Lcom/android/exsettings/nx/dslv/ActionListViewSettings;)Lcom/android/exsettings/nx/util/ShortcutPickerHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/exsettings/nx/dslv/ActionListViewSettings$3;->this$0:Lcom/android/exsettings/nx/dslv/ActionListViewSettings;

    invoke-virtual {v1}, Lcom/android/exsettings/nx/dslv/ActionListViewSettings;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/exsettings/nx/util/ShortcutPickerHelper;->pickShortcut(I)V

    goto :goto_0
.end method
