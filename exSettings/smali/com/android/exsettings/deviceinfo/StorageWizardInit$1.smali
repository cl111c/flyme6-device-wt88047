.class Lcom/android/exsettings/deviceinfo/StorageWizardInit$1;
.super Ljava/lang/Object;
.source "StorageWizardInit.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/deviceinfo/StorageWizardInit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/deviceinfo/StorageWizardInit;


# direct methods
.method constructor <init>(Lcom/android/exsettings/deviceinfo/StorageWizardInit;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/exsettings/deviceinfo/StorageWizardInit;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/android/exsettings/deviceinfo/StorageWizardInit$1;->this$0:Lcom/android/exsettings/deviceinfo/StorageWizardInit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 84
    if-eqz p2, :cond_1

    .line 85
    iget-object v0, p0, Lcom/android/exsettings/deviceinfo/StorageWizardInit$1;->this$0:Lcom/android/exsettings/deviceinfo/StorageWizardInit;

    invoke-static {v0}, Lcom/android/exsettings/deviceinfo/StorageWizardInit;->-get0(Lcom/android/exsettings/deviceinfo/StorageWizardInit;)Landroid/widget/RadioButton;

    move-result-object v0

    if-ne p1, v0, :cond_2

    .line 86
    iget-object v0, p0, Lcom/android/exsettings/deviceinfo/StorageWizardInit$1;->this$0:Lcom/android/exsettings/deviceinfo/StorageWizardInit;

    invoke-static {v0}, Lcom/android/exsettings/deviceinfo/StorageWizardInit;->-get1(Lcom/android/exsettings/deviceinfo/StorageWizardInit;)Landroid/widget/RadioButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 87
    iget-object v0, p0, Lcom/android/exsettings/deviceinfo/StorageWizardInit$1;->this$0:Lcom/android/exsettings/deviceinfo/StorageWizardInit;

    invoke-virtual {v0, v1}, Lcom/android/exsettings/deviceinfo/StorageWizardInit;->setIllustrationInternal(Z)V

    .line 92
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/exsettings/deviceinfo/StorageWizardInit$1;->this$0:Lcom/android/exsettings/deviceinfo/StorageWizardInit;

    invoke-virtual {v0}, Lcom/android/exsettings/deviceinfo/StorageWizardInit;->getNextButton()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 83
    :cond_1
    return-void

    .line 88
    :cond_2
    iget-object v0, p0, Lcom/android/exsettings/deviceinfo/StorageWizardInit$1;->this$0:Lcom/android/exsettings/deviceinfo/StorageWizardInit;

    invoke-static {v0}, Lcom/android/exsettings/deviceinfo/StorageWizardInit;->-get1(Lcom/android/exsettings/deviceinfo/StorageWizardInit;)Landroid/widget/RadioButton;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/android/exsettings/deviceinfo/StorageWizardInit$1;->this$0:Lcom/android/exsettings/deviceinfo/StorageWizardInit;

    invoke-static {v0}, Lcom/android/exsettings/deviceinfo/StorageWizardInit;->-get0(Lcom/android/exsettings/deviceinfo/StorageWizardInit;)Landroid/widget/RadioButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 90
    iget-object v0, p0, Lcom/android/exsettings/deviceinfo/StorageWizardInit$1;->this$0:Lcom/android/exsettings/deviceinfo/StorageWizardInit;

    invoke-virtual {v0, v2}, Lcom/android/exsettings/deviceinfo/StorageWizardInit;->setIllustrationInternal(Z)V

    goto :goto_0
.end method
