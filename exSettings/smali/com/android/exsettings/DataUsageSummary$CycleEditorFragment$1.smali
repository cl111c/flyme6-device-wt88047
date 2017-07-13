.class Lcom/android/exsettings/DataUsageSummary$CycleEditorFragment$1;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exsettings/DataUsageSummary$CycleEditorFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/exsettings/DataUsageSummary$CycleEditorFragment;

.field final synthetic val$cycleDayPicker:Landroid/widget/NumberPicker;

.field final synthetic val$editor:Lcom/android/exsettingslib/NetworkPolicyEditor;

.field final synthetic val$target:Lcom/android/exsettings/DataUsageSummary;

.field final synthetic val$template:Landroid/net/NetworkTemplate;


# direct methods
.method constructor <init>(Lcom/android/exsettings/DataUsageSummary$CycleEditorFragment;Landroid/widget/NumberPicker;Lcom/android/exsettingslib/NetworkPolicyEditor;Landroid/net/NetworkTemplate;Lcom/android/exsettings/DataUsageSummary;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/exsettings/DataUsageSummary$CycleEditorFragment;
    .param p2, "val$cycleDayPicker"    # Landroid/widget/NumberPicker;
    .param p3, "val$editor"    # Lcom/android/exsettingslib/NetworkPolicyEditor;
    .param p4, "val$template"    # Landroid/net/NetworkTemplate;
    .param p5, "val$target"    # Lcom/android/exsettings/DataUsageSummary;

    .prologue
    .line 2278
    iput-object p1, p0, Lcom/android/exsettings/DataUsageSummary$CycleEditorFragment$1;->this$1:Lcom/android/exsettings/DataUsageSummary$CycleEditorFragment;

    iput-object p2, p0, Lcom/android/exsettings/DataUsageSummary$CycleEditorFragment$1;->val$cycleDayPicker:Landroid/widget/NumberPicker;

    iput-object p3, p0, Lcom/android/exsettings/DataUsageSummary$CycleEditorFragment$1;->val$editor:Lcom/android/exsettingslib/NetworkPolicyEditor;

    iput-object p4, p0, Lcom/android/exsettings/DataUsageSummary$CycleEditorFragment$1;->val$template:Landroid/net/NetworkTemplate;

    iput-object p5, p0, Lcom/android/exsettings/DataUsageSummary$CycleEditorFragment$1;->val$target:Lcom/android/exsettings/DataUsageSummary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 2282
    iget-object v2, p0, Lcom/android/exsettings/DataUsageSummary$CycleEditorFragment$1;->val$cycleDayPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v2}, Landroid/widget/NumberPicker;->clearFocus()V

    .line 2284
    iget-object v2, p0, Lcom/android/exsettings/DataUsageSummary$CycleEditorFragment$1;->val$cycleDayPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v2}, Landroid/widget/NumberPicker;->getValue()I

    move-result v0

    .line 2285
    .local v0, "cycleDay":I
    new-instance v2, Landroid/text/format/Time;

    invoke-direct {v2}, Landroid/text/format/Time;-><init>()V

    iget-object v1, v2, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 2286
    .local v1, "cycleTimezone":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/exsettings/DataUsageSummary$CycleEditorFragment$1;->val$editor:Lcom/android/exsettingslib/NetworkPolicyEditor;

    iget-object v3, p0, Lcom/android/exsettings/DataUsageSummary$CycleEditorFragment$1;->val$template:Landroid/net/NetworkTemplate;

    invoke-virtual {v2, v3, v0, v1}, Lcom/android/exsettingslib/NetworkPolicyEditor;->setPolicyCycleDay(Landroid/net/NetworkTemplate;ILjava/lang/String;)V

    .line 2287
    iget-object v2, p0, Lcom/android/exsettings/DataUsageSummary$CycleEditorFragment$1;->val$target:Lcom/android/exsettings/DataUsageSummary;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/exsettings/DataUsageSummary;->-wrap13(Lcom/android/exsettings/DataUsageSummary;Z)V

    .line 2280
    return-void
.end method
