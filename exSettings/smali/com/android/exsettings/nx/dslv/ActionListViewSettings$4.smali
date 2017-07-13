.class Lcom/android/exsettings/nx/dslv/ActionListViewSettings$4;
.super Ljava/lang/Object;
.source "ActionListViewSettings.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


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
    .line 240
    iput-object p1, p0, Lcom/android/exsettings/nx/dslv/ActionListViewSettings$4;->this$0:Lcom/android/exsettings/nx/dslv/ActionListViewSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
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
            "IJ)Z"
        }
    .end annotation

    .prologue
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 244
    iget-object v0, p0, Lcom/android/exsettings/nx/dslv/ActionListViewSettings$4;->this$0:Lcom/android/exsettings/nx/dslv/ActionListViewSettings;

    invoke-static {v0}, Lcom/android/exsettings/nx/dslv/ActionListViewSettings;->-get13(Lcom/android/exsettings/nx/dslv/ActionListViewSettings;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 245
    iget-object v0, p0, Lcom/android/exsettings/nx/dslv/ActionListViewSettings$4;->this$0:Lcom/android/exsettings/nx/dslv/ActionListViewSettings;

    invoke-static {v0}, Lcom/android/exsettings/nx/dslv/ActionListViewSettings;->-get11(Lcom/android/exsettings/nx/dslv/ActionListViewSettings;)Lcom/android/exsettings/nx/util/ShortcutPickerHelper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/android/exsettings/nx/dslv/ActionListViewSettings$4;->this$0:Lcom/android/exsettings/nx/dslv/ActionListViewSettings;

    invoke-static {v0, p3}, Lcom/android/exsettings/nx/dslv/ActionListViewSettings;->-set0(Lcom/android/exsettings/nx/dslv/ActionListViewSettings;I)I

    .line 247
    iget-object v0, p0, Lcom/android/exsettings/nx/dslv/ActionListViewSettings$4;->this$0:Lcom/android/exsettings/nx/dslv/ActionListViewSettings;

    invoke-static {v0, v2}, Lcom/android/exsettings/nx/dslv/ActionListViewSettings;->-set1(Lcom/android/exsettings/nx/dslv/ActionListViewSettings;Z)Z

    .line 248
    iget-object v0, p0, Lcom/android/exsettings/nx/dslv/ActionListViewSettings$4;->this$0:Lcom/android/exsettings/nx/dslv/ActionListViewSettings;

    invoke-static {v0, v1}, Lcom/android/exsettings/nx/dslv/ActionListViewSettings;->-set2(Lcom/android/exsettings/nx/dslv/ActionListViewSettings;Z)Z

    .line 249
    iget-object v0, p0, Lcom/android/exsettings/nx/dslv/ActionListViewSettings$4;->this$0:Lcom/android/exsettings/nx/dslv/ActionListViewSettings;

    invoke-static {v0}, Lcom/android/exsettings/nx/dslv/ActionListViewSettings;->-get11(Lcom/android/exsettings/nx/dslv/ActionListViewSettings;)Lcom/android/exsettings/nx/util/ShortcutPickerHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/exsettings/nx/dslv/ActionListViewSettings$4;->this$0:Lcom/android/exsettings/nx/dslv/ActionListViewSettings;

    invoke-virtual {v1}, Lcom/android/exsettings/nx/dslv/ActionListViewSettings;->getId()I

    move-result v1

    invoke-virtual {v0, v1, v2}, Lcom/android/exsettings/nx/util/ShortcutPickerHelper;->pickShortcut(IZ)V

    .line 261
    :cond_0
    :goto_0
    return v2

    .line 251
    :cond_1
    iget-object v0, p0, Lcom/android/exsettings/nx/dslv/ActionListViewSettings$4;->this$0:Lcom/android/exsettings/nx/dslv/ActionListViewSettings;

    invoke-static {v0}, Lcom/android/exsettings/nx/dslv/ActionListViewSettings;->-get12(Lcom/android/exsettings/nx/dslv/ActionListViewSettings;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 252
    iget-object v0, p0, Lcom/android/exsettings/nx/dslv/ActionListViewSettings$4;->this$0:Lcom/android/exsettings/nx/dslv/ActionListViewSettings;

    invoke-static {v0, v1, p3, v2, v1}, Lcom/android/exsettings/nx/dslv/ActionListViewSettings;->-wrap4(Lcom/android/exsettings/nx/dslv/ActionListViewSettings;IIZZ)V

    goto :goto_0

    .line 254
    :cond_2
    iget-object v0, p0, Lcom/android/exsettings/nx/dslv/ActionListViewSettings$4;->this$0:Lcom/android/exsettings/nx/dslv/ActionListViewSettings;

    invoke-static {v0}, Lcom/android/exsettings/nx/dslv/ActionListViewSettings;->-get11(Lcom/android/exsettings/nx/dslv/ActionListViewSettings;)Lcom/android/exsettings/nx/util/ShortcutPickerHelper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 255
    iget-object v0, p0, Lcom/android/exsettings/nx/dslv/ActionListViewSettings$4;->this$0:Lcom/android/exsettings/nx/dslv/ActionListViewSettings;

    invoke-static {v0, p3}, Lcom/android/exsettings/nx/dslv/ActionListViewSettings;->-set0(Lcom/android/exsettings/nx/dslv/ActionListViewSettings;I)I

    .line 256
    iget-object v0, p0, Lcom/android/exsettings/nx/dslv/ActionListViewSettings$4;->this$0:Lcom/android/exsettings/nx/dslv/ActionListViewSettings;

    invoke-static {v0, v2}, Lcom/android/exsettings/nx/dslv/ActionListViewSettings;->-set1(Lcom/android/exsettings/nx/dslv/ActionListViewSettings;Z)Z

    .line 257
    iget-object v0, p0, Lcom/android/exsettings/nx/dslv/ActionListViewSettings$4;->this$0:Lcom/android/exsettings/nx/dslv/ActionListViewSettings;

    invoke-static {v0, v1}, Lcom/android/exsettings/nx/dslv/ActionListViewSettings;->-set2(Lcom/android/exsettings/nx/dslv/ActionListViewSettings;Z)Z

    .line 258
    iget-object v0, p0, Lcom/android/exsettings/nx/dslv/ActionListViewSettings$4;->this$0:Lcom/android/exsettings/nx/dslv/ActionListViewSettings;

    invoke-static {v0}, Lcom/android/exsettings/nx/dslv/ActionListViewSettings;->-get11(Lcom/android/exsettings/nx/dslv/ActionListViewSettings;)Lcom/android/exsettings/nx/util/ShortcutPickerHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/exsettings/nx/dslv/ActionListViewSettings$4;->this$0:Lcom/android/exsettings/nx/dslv/ActionListViewSettings;

    invoke-virtual {v1}, Lcom/android/exsettings/nx/dslv/ActionListViewSettings;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/exsettings/nx/util/ShortcutPickerHelper;->pickShortcut(I)V

    goto :goto_0
.end method
