.class Lcom/android/exsettings/notification/ZenModeAutomationSettings$1;
.super Ljava/lang/Object;
.source "ZenModeAutomationSettings.java"

# interfaces
.implements Lcom/android/exsettings/notification/ServiceListing$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/notification/ZenModeAutomationSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/notification/ZenModeAutomationSettings;


# direct methods
.method constructor <init>(Lcom/android/exsettings/notification/ZenModeAutomationSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/exsettings/notification/ZenModeAutomationSettings;

    .prologue
    .line 301
    iput-object p1, p0, Lcom/android/exsettings/notification/ZenModeAutomationSettings$1;->this$0:Lcom/android/exsettings/notification/ZenModeAutomationSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServicesReloaded(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ServiceInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 304
    .local p1, "services":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ServiceInfo;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "service$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ServiceInfo;

    .line 305
    .local v1, "service":Landroid/content/pm/ServiceInfo;
    invoke-static {v1}, Lcom/android/exsettings/notification/ZenModeExternalRuleSettings;->getRuleInfo(Landroid/content/pm/ServiceInfo;)Lcom/android/exsettings/notification/ZenRuleNameDialog$RuleInfo;

    move-result-object v0

    .line 306
    .local v0, "ri":Lcom/android/exsettings/notification/ZenRuleNameDialog$RuleInfo;
    if-eqz v0, :cond_0

    iget-object v3, v0, Lcom/android/exsettings/notification/ZenRuleNameDialog$RuleInfo;->serviceComponent:Landroid/content/ComponentName;

    if-eqz v3, :cond_0

    .line 307
    iget-object v3, v0, Lcom/android/exsettings/notification/ZenRuleNameDialog$RuleInfo;->settingsAction:Ljava/lang/String;

    const-string/jumbo v4, "android.settings.ZEN_MODE_EXTERNAL_RULE_SETTINGS"

    if-ne v3, v4, :cond_0

    .line 308
    iget-object v3, p0, Lcom/android/exsettings/notification/ZenModeAutomationSettings$1;->this$0:Lcom/android/exsettings/notification/ZenModeAutomationSettings;

    invoke-static {v3}, Lcom/android/exsettings/notification/ZenModeAutomationSettings;->-get0(Lcom/android/exsettings/notification/ZenModeAutomationSettings;)Lcom/android/exsettings/notification/ServiceListing;

    move-result-object v3

    iget-object v4, v0, Lcom/android/exsettings/notification/ZenRuleNameDialog$RuleInfo;->serviceComponent:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Lcom/android/exsettings/notification/ServiceListing;->isEnabled(Landroid/content/ComponentName;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 309
    const-string/jumbo v3, "ZenModeSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Enabling external condition provider: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/android/exsettings/notification/ZenRuleNameDialog$RuleInfo;->serviceComponent:Landroid/content/ComponentName;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    iget-object v3, p0, Lcom/android/exsettings/notification/ZenModeAutomationSettings$1;->this$0:Lcom/android/exsettings/notification/ZenModeAutomationSettings;

    invoke-static {v3}, Lcom/android/exsettings/notification/ZenModeAutomationSettings;->-get0(Lcom/android/exsettings/notification/ZenModeAutomationSettings;)Lcom/android/exsettings/notification/ServiceListing;

    move-result-object v3

    iget-object v4, v0, Lcom/android/exsettings/notification/ZenRuleNameDialog$RuleInfo;->serviceComponent:Landroid/content/ComponentName;

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lcom/android/exsettings/notification/ServiceListing;->setEnabled(Landroid/content/ComponentName;Z)V

    goto :goto_0

    .line 303
    .end local v0    # "ri":Lcom/android/exsettings/notification/ZenRuleNameDialog$RuleInfo;
    .end local v1    # "service":Landroid/content/pm/ServiceInfo;
    :cond_1
    return-void
.end method
