.class Lcom/android/exsettings/print/PrintServiceSettingsFragment$3;
.super Ljava/lang/Object;
.source "PrintServiceSettingsFragment.java"

# interfaces
.implements Lcom/android/exsettings/widget/ToggleSwitch$OnBeforeCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exsettings/print/PrintServiceSettingsFragment;->initComponents()V
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
    .line 318
    iput-object p1, p0, Lcom/android/exsettings/print/PrintServiceSettingsFragment$3;->this$0:Lcom/android/exsettings/print/PrintServiceSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBeforeCheckedChanged(Lcom/android/exsettings/widget/ToggleSwitch;Z)Z
    .locals 4
    .param p1, "toggleSwitch"    # Lcom/android/exsettings/widget/ToggleSwitch;
    .param p2, "checked"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 321
    if-eqz p2, :cond_1

    .line 322
    iget-object v0, p0, Lcom/android/exsettings/print/PrintServiceSettingsFragment$3;->this$0:Lcom/android/exsettings/print/PrintServiceSettingsFragment;

    invoke-static {v0}, Lcom/android/exsettings/print/PrintServiceSettingsFragment;->-get1(Lcom/android/exsettings/print/PrintServiceSettingsFragment;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 323
    iget-object v0, p0, Lcom/android/exsettings/print/PrintServiceSettingsFragment$3;->this$0:Lcom/android/exsettings/print/PrintServiceSettingsFragment;

    invoke-static {v0}, Lcom/android/exsettings/print/PrintServiceSettingsFragment;->-get5(Lcom/android/exsettings/print/PrintServiceSettingsFragment;)Lcom/android/exsettings/widget/SwitchBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/exsettings/widget/SwitchBar;->setCheckedInternal(Z)V

    .line 324
    iget-object v0, p0, Lcom/android/exsettings/print/PrintServiceSettingsFragment$3;->this$0:Lcom/android/exsettings/print/PrintServiceSettingsFragment;

    invoke-virtual {v0}, Lcom/android/exsettings/print/PrintServiceSettingsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "EXTRA_CHECKED"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 325
    iget-object v0, p0, Lcom/android/exsettings/print/PrintServiceSettingsFragment$3;->this$0:Lcom/android/exsettings/print/PrintServiceSettingsFragment;

    invoke-static {v0, v3}, Lcom/android/exsettings/print/PrintServiceSettingsFragment;->-wrap2(Lcom/android/exsettings/print/PrintServiceSettingsFragment;I)V

    .line 326
    return v3

    .line 328
    :cond_0
    iget-object v0, p0, Lcom/android/exsettings/print/PrintServiceSettingsFragment$3;->this$0:Lcom/android/exsettings/print/PrintServiceSettingsFragment;

    iget-object v1, p0, Lcom/android/exsettings/print/PrintServiceSettingsFragment$3;->this$0:Lcom/android/exsettings/print/PrintServiceSettingsFragment;

    invoke-static {v1}, Lcom/android/exsettings/print/PrintServiceSettingsFragment;->-get3(Lcom/android/exsettings/print/PrintServiceSettingsFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lcom/android/exsettings/print/PrintServiceSettingsFragment;->-wrap1(Lcom/android/exsettings/print/PrintServiceSettingsFragment;Ljava/lang/String;Z)V

    .line 332
    :goto_0
    return v2

    .line 330
    :cond_1
    iget-object v0, p0, Lcom/android/exsettings/print/PrintServiceSettingsFragment$3;->this$0:Lcom/android/exsettings/print/PrintServiceSettingsFragment;

    iget-object v1, p0, Lcom/android/exsettings/print/PrintServiceSettingsFragment$3;->this$0:Lcom/android/exsettings/print/PrintServiceSettingsFragment;

    invoke-static {v1}, Lcom/android/exsettings/print/PrintServiceSettingsFragment;->-get3(Lcom/android/exsettings/print/PrintServiceSettingsFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcom/android/exsettings/print/PrintServiceSettingsFragment;->-wrap1(Lcom/android/exsettings/print/PrintServiceSettingsFragment;Ljava/lang/String;Z)V

    goto :goto_0
.end method
