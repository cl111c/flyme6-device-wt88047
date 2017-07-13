.class Lcom/android/exsettings/notification/ZenModeRuleSettingsBase$2;
.super Ljava/lang/Object;
.source "ZenModeRuleSettingsBase.java"

# interfaces
.implements Lcom/android/exsettings/DropDownPreference$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exsettings/notification/ZenModeRuleSettingsBase;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/notification/ZenModeRuleSettingsBase;


# direct methods
.method constructor <init>(Lcom/android/exsettings/notification/ZenModeRuleSettingsBase;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/exsettings/notification/ZenModeRuleSettingsBase;

    .prologue
    .line 113
    iput-object p1, p0, Lcom/android/exsettings/notification/ZenModeRuleSettingsBase$2;->this$0:Lcom/android/exsettings/notification/ZenModeRuleSettingsBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(ILjava/lang/Object;)Z
    .locals 5
    .param p1, "pos"    # I
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x1

    .line 116
    iget-object v1, p0, Lcom/android/exsettings/notification/ZenModeRuleSettingsBase$2;->this$0:Lcom/android/exsettings/notification/ZenModeRuleSettingsBase;

    iget-boolean v1, v1, Lcom/android/exsettings/notification/ZenModeRuleSettingsBase;->mDisableListeners:Z

    if-eqz v1, :cond_0

    return v4

    .line 117
    :cond_0
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 118
    .local v0, "zenMode":I
    iget-object v1, p0, Lcom/android/exsettings/notification/ZenModeRuleSettingsBase$2;->this$0:Lcom/android/exsettings/notification/ZenModeRuleSettingsBase;

    iget-object v1, v1, Lcom/android/exsettings/notification/ZenModeRuleSettingsBase;->mRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget v1, v1, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    if-ne v0, v1, :cond_1

    return v4

    .line 119
    :cond_1
    sget-boolean v1, Lcom/android/exsettings/notification/ZenModeRuleSettingsBase;->DEBUG:Z

    if-eqz v1, :cond_2

    const-string/jumbo v1, "ZenModeSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onPrefChange zenMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    :cond_2
    iget-object v1, p0, Lcom/android/exsettings/notification/ZenModeRuleSettingsBase$2;->this$0:Lcom/android/exsettings/notification/ZenModeRuleSettingsBase;

    iget-object v1, v1, Lcom/android/exsettings/notification/ZenModeRuleSettingsBase;->mRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iput v0, v1, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    .line 121
    iget-object v1, p0, Lcom/android/exsettings/notification/ZenModeRuleSettingsBase$2;->this$0:Lcom/android/exsettings/notification/ZenModeRuleSettingsBase;

    iget-object v2, p0, Lcom/android/exsettings/notification/ZenModeRuleSettingsBase$2;->this$0:Lcom/android/exsettings/notification/ZenModeRuleSettingsBase;

    iget-object v2, v2, Lcom/android/exsettings/notification/ZenModeRuleSettingsBase;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v1, v2}, Lcom/android/exsettings/notification/ZenModeRuleSettingsBase;->setZenModeConfig(Landroid/service/notification/ZenModeConfig;)Z

    .line 122
    return v4
.end method
