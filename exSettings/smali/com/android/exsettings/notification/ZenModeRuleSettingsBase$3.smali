.class Lcom/android/exsettings/notification/ZenModeRuleSettingsBase$3;
.super Lcom/android/exsettings/notification/ZenRuleNameDialog;
.source "ZenModeRuleSettingsBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exsettings/notification/ZenModeRuleSettingsBase;->showRuleNameDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/notification/ZenModeRuleSettingsBase;


# direct methods
.method constructor <init>(Lcom/android/exsettings/notification/ZenModeRuleSettingsBase;Landroid/content/Context;Lcom/android/exsettings/notification/ServiceListing;Ljava/lang/String;Landroid/util/ArraySet;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/exsettings/notification/ZenModeRuleSettingsBase;
    .param p2, "$anonymous0"    # Landroid/content/Context;
    .param p3, "$anonymous1"    # Lcom/android/exsettings/notification/ServiceListing;
    .param p4, "$anonymous2"    # Ljava/lang/String;

    .prologue
    .line 213
    .local p5, "$anonymous3":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/android/exsettings/notification/ZenModeRuleSettingsBase$3;->this$0:Lcom/android/exsettings/notification/ZenModeRuleSettingsBase;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/android/exsettings/notification/ZenRuleNameDialog;-><init>(Landroid/content/Context;Lcom/android/exsettings/notification/ServiceListing;Ljava/lang/String;Landroid/util/ArraySet;)V

    return-void
.end method


# virtual methods
.method public onOk(Ljava/lang/String;Lcom/android/exsettings/notification/ZenRuleNameDialog$RuleInfo;)V
    .locals 4
    .param p1, "ruleName"    # Ljava/lang/String;
    .param p2, "type"    # Lcom/android/exsettings/notification/ZenRuleNameDialog$RuleInfo;

    .prologue
    .line 216
    iget-object v2, p0, Lcom/android/exsettings/notification/ZenModeRuleSettingsBase$3;->this$0:Lcom/android/exsettings/notification/ZenModeRuleSettingsBase;

    iget-object v2, v2, Lcom/android/exsettings/notification/ZenModeRuleSettingsBase;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v2}, Landroid/service/notification/ZenModeConfig;->copy()Landroid/service/notification/ZenModeConfig;

    move-result-object v0

    .line 217
    .local v0, "newConfig":Landroid/service/notification/ZenModeConfig;
    iget-object v2, v0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    iget-object v3, p0, Lcom/android/exsettings/notification/ZenModeRuleSettingsBase$3;->this$0:Lcom/android/exsettings/notification/ZenModeRuleSettingsBase;

    invoke-static {v3}, Lcom/android/exsettings/notification/ZenModeRuleSettingsBase;->-get0(Lcom/android/exsettings/notification/ZenModeRuleSettingsBase;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 218
    .local v1, "rule":Landroid/service/notification/ZenModeConfig$ZenRule;
    if-nez v1, :cond_0

    return-void

    .line 219
    :cond_0
    iput-object p1, v1, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    .line 220
    iget-object v2, p0, Lcom/android/exsettings/notification/ZenModeRuleSettingsBase$3;->this$0:Lcom/android/exsettings/notification/ZenModeRuleSettingsBase;

    invoke-virtual {v2, v0}, Lcom/android/exsettings/notification/ZenModeRuleSettingsBase;->setZenModeConfig(Landroid/service/notification/ZenModeConfig;)Z

    .line 215
    return-void
.end method
